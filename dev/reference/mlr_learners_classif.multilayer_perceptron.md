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
#>     Threshold    -0.32290553546203404
#>     Node 2    2.2584809664285714
#>     Node 3    2.3396854949774144
#>     Node 4    1.0759903613021007
#>     Node 5    -3.8388639938667537
#>     Node 6    0.4067481050855265
#>     Node 7    2.899533134790197
#>     Node 8    0.786404648458696
#>     Node 9    2.5067933497372
#>     Node 10    -2.547676815825256
#>     Node 11    1.223709470833951
#>     Node 12    1.4920102878176502
#>     Node 13    0.5942819659160715
#>     Node 14    1.9135980775048673
#>     Node 15    -1.967025110825411
#>     Node 16    0.2909854998347649
#>     Node 17    -0.1153193982251525
#>     Node 18    -1.401609178727659
#>     Node 19    2.612386437332718
#>     Node 20    1.1550621652254047
#>     Node 21    -1.5758187975982785
#>     Node 22    1.631054084943964
#>     Node 23    2.0069926979015946
#>     Node 24    -0.25981502532220846
#>     Node 25    5.187724205136359
#>     Node 26    -0.44908228907692616
#>     Node 27    2.690264466375898
#>     Node 28    -3.0129259233667596
#>     Node 29    1.1993700076421872
#>     Node 30    0.33443228801470704
#>     Node 31    1.1843080009887044
#>     Node 32    -0.6287868970746723
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.3215827509408439
#>     Node 2    -2.3088313203876374
#>     Node 3    -2.33967734008965
#>     Node 4    -1.0313351721269033
#>     Node 5    3.810454171629104
#>     Node 6    -0.3817428559593305
#>     Node 7    -2.8796839475990748
#>     Node 8    -0.8185307471586832
#>     Node 9    -2.500515658080416
#>     Node 10    2.5014764902023936
#>     Node 11    -1.1849315963994145
#>     Node 12    -1.5655368002842578
#>     Node 13    -0.536243516947164
#>     Node 14    -1.8866370995360524
#>     Node 15    1.948324544072421
#>     Node 16    -0.3054302569104425
#>     Node 17    0.15591427039919883
#>     Node 18    1.4585777011830565
#>     Node 19    -2.6168126105320733
#>     Node 20    -1.1395676106472439
#>     Node 21    1.632707642760822
#>     Node 22    -1.6748338065070036
#>     Node 23    -2.0382741400096305
#>     Node 24    0.25143703467095074
#>     Node 25    -5.188478009463274
#>     Node 26    0.378125766642626
#>     Node 27    -2.7338142405310117
#>     Node 28    2.993678291819404
#>     Node 29    -1.2259573839979083
#>     Node 30    -0.25518262690661947
#>     Node 31    -1.1214363829375553
#>     Node 32    0.6232556084553261
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.06729032641752297
#>     Attrib V1    -0.29417728920864333
#>     Attrib V10    0.1237705244458417
#>     Attrib V11    0.6213899846982381
#>     Attrib V12    0.4544086289457902
#>     Attrib V13    0.21762121076786728
#>     Attrib V14    -0.34268367326496035
#>     Attrib V15    -0.3465553755482474
#>     Attrib V16    -0.27501272983441327
#>     Attrib V17    -0.06306312411490643
#>     Attrib V18    0.25536780007965915
#>     Attrib V19    0.21232122070186768
#>     Attrib V2    -0.21090743821652153
#>     Attrib V20    -0.23799828170835086
#>     Attrib V21    0.30186398004096643
#>     Attrib V22    0.686329475694428
#>     Attrib V23    0.6056654957270532
#>     Attrib V24    0.6535043587689515
#>     Attrib V25    0.2427576642966115
#>     Attrib V26    -0.3932035114568841
#>     Attrib V27    -0.32873208420309585
#>     Attrib V28    0.2277644336942235
#>     Attrib V29    -0.12864267012676858
#>     Attrib V3    -0.4879321016076858
#>     Attrib V30    0.2397045581592191
#>     Attrib V31    -1.4651275299932314
#>     Attrib V32    -0.11317400960643981
#>     Attrib V33    0.9296516168515649
#>     Attrib V34    0.14339429712720841
#>     Attrib V35    -0.11419013981844392
#>     Attrib V36    -1.0014128674336968
#>     Attrib V37    -0.7902539635396109
#>     Attrib V38    0.3257951520669621
#>     Attrib V39    0.34185336147052436
#>     Attrib V4    -0.06510873674938676
#>     Attrib V40    -0.22037552321732207
#>     Attrib V41    0.32162976339809674
#>     Attrib V42    0.3906783192406423
#>     Attrib V43    0.21267346435551868
#>     Attrib V44    0.09856775282653893
#>     Attrib V45    -0.01410437490149064
#>     Attrib V46    0.35394217491144614
#>     Attrib V47    -0.13225232108987944
#>     Attrib V48    0.004888601226131177
#>     Attrib V49    0.3870147176801934
#>     Attrib V5    0.20190081918395258
#>     Attrib V50    -1.358457806800582
#>     Attrib V51    0.3546736467048371
#>     Attrib V52    0.37658132869228217
#>     Attrib V53    0.6657818809188304
#>     Attrib V54    0.5357942269161817
#>     Attrib V55    0.13827406025231687
#>     Attrib V56    -0.3229431731028292
#>     Attrib V57    -0.35519448775395973
#>     Attrib V58    0.7014439730950248
#>     Attrib V59    0.473414653548895
#>     Attrib V6    -0.25228896336423473
#>     Attrib V60    0.2856019996463206
#>     Attrib V7    -0.6152014668114193
#>     Attrib V8    -0.48554675813965426
#>     Attrib V9    0.9697611707127893
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.022407727044760347
#>     Attrib V1    0.07680938194850398
#>     Attrib V10    0.06703435491135187
#>     Attrib V11    0.39665837528740816
#>     Attrib V12    0.3895472860693667
#>     Attrib V13    0.3357862318905864
#>     Attrib V14    -0.1846923463978707
#>     Attrib V15    -0.11371149675588847
#>     Attrib V16    -0.3137026992170541
#>     Attrib V17    -0.333053415175947
#>     Attrib V18    -0.1471755408840501
#>     Attrib V19    -0.042638028748528664
#>     Attrib V2    0.009767490367130522
#>     Attrib V20    -0.3049314900181429
#>     Attrib V21    0.15095547633880488
#>     Attrib V22    0.3803250598877724
#>     Attrib V23    0.19604591617438183
#>     Attrib V24    0.686842191439178
#>     Attrib V25    0.625590584483748
#>     Attrib V26    -0.13517964247742623
#>     Attrib V27    -0.6295445116796784
#>     Attrib V28    -0.644594046813175
#>     Attrib V29    -0.946230409710465
#>     Attrib V3    -0.28899001653068324
#>     Attrib V30    -0.037528410909357546
#>     Attrib V31    -0.7532869939390721
#>     Attrib V32    0.1661045054056893
#>     Attrib V33    0.9859835118079389
#>     Attrib V34    0.09265294987933391
#>     Attrib V35    -0.4418437472953014
#>     Attrib V36    -1.2751639448546763
#>     Attrib V37    -1.1837982325092162
#>     Attrib V38    -0.22060534171675508
#>     Attrib V39    0.14698115050546795
#>     Attrib V4    0.03034989823171166
#>     Attrib V40    -0.07056046016361053
#>     Attrib V41    0.39372176683219623
#>     Attrib V42    0.3962152027331939
#>     Attrib V43    -0.13047823223161542
#>     Attrib V44    -0.3636153175158592
#>     Attrib V45    -0.2929655411868004
#>     Attrib V46    0.06375937185218372
#>     Attrib V47    -0.12715732748578584
#>     Attrib V48    0.16097763281073918
#>     Attrib V49    0.3380670397716515
#>     Attrib V5    0.2639388251705791
#>     Attrib V50    -1.0790953085944783
#>     Attrib V51    0.2682259539776074
#>     Attrib V52    0.17240738357174146
#>     Attrib V53    0.6378999632423055
#>     Attrib V54    0.8274439142349254
#>     Attrib V55    0.31721166273237444
#>     Attrib V56    -0.030511946609136954
#>     Attrib V57    -0.06540528376745211
#>     Attrib V58    0.7519887122677312
#>     Attrib V59    0.7517590885959882
#>     Attrib V6    -0.10264937035943153
#>     Attrib V60    0.27420592070839644
#>     Attrib V7    -0.2501112381683441
#>     Attrib V8    -0.11747080478889388
#>     Attrib V9    0.8301322914487538
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.03349312519558767
#>     Attrib V1    0.20888192715479564
#>     Attrib V10    -0.24144277013767593
#>     Attrib V11    0.03628514430611083
#>     Attrib V12    0.07184912640428329
#>     Attrib V13    0.20074661071473657
#>     Attrib V14    0.19587409370642733
#>     Attrib V15    0.16094108762313947
#>     Attrib V16    0.049015195390775784
#>     Attrib V17    -0.015501798517120493
#>     Attrib V18    0.057594026013118554
#>     Attrib V19    -0.016764804313542842
#>     Attrib V2    -0.024251201916411003
#>     Attrib V20    0.07534334326684337
#>     Attrib V21    0.32908702232048065
#>     Attrib V22    0.12906653195653192
#>     Attrib V23    0.031255611863568795
#>     Attrib V24    0.18411309914147764
#>     Attrib V25    0.03591059171685041
#>     Attrib V26    -0.30517637546473697
#>     Attrib V27    -0.5011474075786806
#>     Attrib V28    -0.28899987350085454
#>     Attrib V29    -0.28367719070466896
#>     Attrib V3    -0.04184690737048939
#>     Attrib V30    -0.17760091920134694
#>     Attrib V31    -0.7214714685809521
#>     Attrib V32    -0.22827542101935827
#>     Attrib V33    0.4094235311034603
#>     Attrib V34    0.06104083061769703
#>     Attrib V35    -0.13332527563099753
#>     Attrib V36    -0.41094124106507046
#>     Attrib V37    -0.38191631983915053
#>     Attrib V38    0.13449064429155094
#>     Attrib V39    0.16778620783049936
#>     Attrib V4    0.28060447335838196
#>     Attrib V40    -0.07361133480417457
#>     Attrib V41    0.07401486501995727
#>     Attrib V42    0.27526058440190226
#>     Attrib V43    0.06990373408681669
#>     Attrib V44    -0.007287215087038653
#>     Attrib V45    0.07900406165476209
#>     Attrib V46    0.013237685227265747
#>     Attrib V47    -0.19593962456020228
#>     Attrib V48    0.052073632308612394
#>     Attrib V49    0.1346114681454695
#>     Attrib V5    0.11972680314074079
#>     Attrib V50    -0.42717705751043017
#>     Attrib V51    0.04029951322437065
#>     Attrib V52    0.048526035077969064
#>     Attrib V53    0.4000622977623315
#>     Attrib V54    0.4531082810067664
#>     Attrib V55    0.18873127569768391
#>     Attrib V56    0.0430309498599456
#>     Attrib V57    0.2221375901410294
#>     Attrib V58    0.3590308991193541
#>     Attrib V59    0.5232438249404511
#>     Attrib V6    -0.13759783450632931
#>     Attrib V60    0.16557528846606667
#>     Attrib V7    -0.09773167361758453
#>     Attrib V8    -0.05024693783886945
#>     Attrib V9    0.2667188263150855
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.9967825951834632
#>     Attrib V1    -0.060214126154425875
#>     Attrib V10    0.4115725573763745
#>     Attrib V11    -0.2634353256098467
#>     Attrib V12    -0.4558993360386406
#>     Attrib V13    -0.3928581799354292
#>     Attrib V14    1.1020281283186517
#>     Attrib V15    0.8149442217719114
#>     Attrib V16    0.8216319528108608
#>     Attrib V17    1.019038399384374
#>     Attrib V18    0.028937324932623264
#>     Attrib V19    0.48733337956101525
#>     Attrib V2    0.05865710550027156
#>     Attrib V20    0.750671243188942
#>     Attrib V21    -0.620208863402227
#>     Attrib V22    -1.3716593637204715
#>     Attrib V23    -1.0503109727594035
#>     Attrib V24    -0.8126797095401201
#>     Attrib V25    0.5854795448266682
#>     Attrib V26    1.4690762827005062
#>     Attrib V27    0.9381982419102998
#>     Attrib V28    -0.2163445096094416
#>     Attrib V29    -0.11477451750740356
#>     Attrib V3    0.6176805275750776
#>     Attrib V30    -0.6830223143328185
#>     Attrib V31    1.4252092808601315
#>     Attrib V32    -0.1668269837173377
#>     Attrib V33    -1.5494868718630013
#>     Attrib V34    -0.3449426272156474
#>     Attrib V35    -0.13087119159392047
#>     Attrib V36    1.4326448279245039
#>     Attrib V37    0.5240702548911232
#>     Attrib V38    -0.8143777121307705
#>     Attrib V39    -0.258553890621114
#>     Attrib V4    0.04188620233827512
#>     Attrib V40    -0.2003317913128532
#>     Attrib V41    -1.5364783158624273
#>     Attrib V42    -1.1473537059914423
#>     Attrib V43    -0.950781508942353
#>     Attrib V44    -0.41287720238902825
#>     Attrib V45    -0.8055960320279145
#>     Attrib V46    -1.121205202509769
#>     Attrib V47    0.09314051435082885
#>     Attrib V48    0.007002442257786586
#>     Attrib V49    -0.41519814206813505
#>     Attrib V5    0.03058843482257647
#>     Attrib V50    1.786640031926561
#>     Attrib V51    0.0015215101023136157
#>     Attrib V52    -0.14081350838512996
#>     Attrib V53    -0.9803711693513765
#>     Attrib V54    -0.2763439001457862
#>     Attrib V55    0.7167162298424028
#>     Attrib V56    0.953460089156365
#>     Attrib V57    0.4509531551554929
#>     Attrib V58    -0.45688182932925603
#>     Attrib V59    -0.10731671640803005
#>     Attrib V6    0.6561083900674227
#>     Attrib V60    0.10937953572614874
#>     Attrib V7    0.8936129747331536
#>     Attrib V8    0.5255223414598877
#>     Attrib V9    -1.3061709758492246
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.06651510998838439
#>     Attrib V1    0.14668206754030164
#>     Attrib V10    -0.05462462486298702
#>     Attrib V11    0.06909886715893701
#>     Attrib V12    0.09871457958046398
#>     Attrib V13    0.029340342186847675
#>     Attrib V14    0.08751451514744843
#>     Attrib V15    0.06568837384385556
#>     Attrib V16    0.09588899733467685
#>     Attrib V17    -0.015933609290237353
#>     Attrib V18    0.0586760576748448
#>     Attrib V19    -0.0036473091748119323
#>     Attrib V2    0.06482623840697331
#>     Attrib V20    0.019172701366393173
#>     Attrib V21    0.08601857633837395
#>     Attrib V22    -0.009725656101804248
#>     Attrib V23    -0.02456498831552202
#>     Attrib V24    0.10025615876737973
#>     Attrib V25    0.10247289269637123
#>     Attrib V26    -0.07225130146212941
#>     Attrib V27    -0.11430129103269995
#>     Attrib V28    -0.13619418099422098
#>     Attrib V29    -0.1745946461051775
#>     Attrib V3    0.02675695069522232
#>     Attrib V30    -0.09186524350684312
#>     Attrib V31    -0.3097422057831999
#>     Attrib V32    -0.05772914652939313
#>     Attrib V33    0.18072344743320304
#>     Attrib V34    0.03438137749173868
#>     Attrib V35    0.027645784937251283
#>     Attrib V36    -0.1515301334071613
#>     Attrib V37    -0.13988577470526473
#>     Attrib V38    0.02323477622199605
#>     Attrib V39    0.05271382528975202
#>     Attrib V4    0.12388078240347744
#>     Attrib V40    -0.046750092731899034
#>     Attrib V41    0.09486380918018066
#>     Attrib V42    0.12496387524729559
#>     Attrib V43    0.04126548221005117
#>     Attrib V44    0.025050519558527846
#>     Attrib V45    0.05936051775367927
#>     Attrib V46    0.07138269348217555
#>     Attrib V47    -0.035466075428158585
#>     Attrib V48    0.006759153626129539
#>     Attrib V49    0.04618008038813159
#>     Attrib V5    0.0609751148791694
#>     Attrib V50    -0.12475268424118323
#>     Attrib V51    0.0789770297367095
#>     Attrib V52    0.06381190633174721
#>     Attrib V53    0.2084777643528875
#>     Attrib V54    0.18438778498829203
#>     Attrib V55    0.10064307049372237
#>     Attrib V56    0.07318312876351138
#>     Attrib V57    0.1658276922377842
#>     Attrib V58    0.2154349902081205
#>     Attrib V59    0.2718323648763595
#>     Attrib V6    0.05687305608910422
#>     Attrib V60    0.19659348088432047
#>     Attrib V7    -0.017339458396817317
#>     Attrib V8    0.05874278470965556
#>     Attrib V9    0.20641848893157005
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.5163515448831205
#>     Attrib V1    0.7910094042472908
#>     Attrib V10    0.591631417945661
#>     Attrib V11    1.1557697757406
#>     Attrib V12    1.0090363537054445
#>     Attrib V13    0.12167843768707735
#>     Attrib V14    -0.5570691626247486
#>     Attrib V15    -0.5055581613190623
#>     Attrib V16    -0.6868057215031853
#>     Attrib V17    -0.9285906243263525
#>     Attrib V18    -0.4728969220603914
#>     Attrib V19    -0.7190305214962135
#>     Attrib V2    0.5955588360292495
#>     Attrib V20    -0.7026622063669049
#>     Attrib V21    0.08533574504861223
#>     Attrib V22    0.17048520211023396
#>     Attrib V23    -0.022280028731382514
#>     Attrib V24    -0.1437438309127801
#>     Attrib V25    0.09902827917094584
#>     Attrib V26    0.7942579447312634
#>     Attrib V27    0.9327604161000639
#>     Attrib V28    1.4660751972862953
#>     Attrib V29    1.0499726786136694
#>     Attrib V3    -0.19879629322912667
#>     Attrib V30    0.5787276987827268
#>     Attrib V31    -1.0154660532963495
#>     Attrib V32    -0.5047058262200039
#>     Attrib V33    -0.21339889860208572
#>     Attrib V34    -0.13017305778551944
#>     Attrib V35    0.507435895800759
#>     Attrib V36    -0.2539225962260969
#>     Attrib V37    0.44333175994671065
#>     Attrib V38    0.4019159092643838
#>     Attrib V39    0.3001401642020094
#>     Attrib V4    1.0311743375648792
#>     Attrib V40    -0.2831984699207482
#>     Attrib V41    0.0957949556766471
#>     Attrib V42    -0.5531408592709757
#>     Attrib V43    -0.10780357969389781
#>     Attrib V44    0.4551035433004157
#>     Attrib V45    0.8653660518128166
#>     Attrib V46    0.8224423090357124
#>     Attrib V47    0.17034835322810496
#>     Attrib V48    0.3020155922305761
#>     Attrib V49    0.5637988199486242
#>     Attrib V5    0.6066582565266783
#>     Attrib V50    -0.37505761522491843
#>     Attrib V51    0.4495519866185579
#>     Attrib V52    0.6123332731720853
#>     Attrib V53    0.3444866765811242
#>     Attrib V54    0.5282632243548017
#>     Attrib V55    -0.08490065594663375
#>     Attrib V56    -0.7225905762592602
#>     Attrib V57    0.026323600197856956
#>     Attrib V58    0.24967162801482695
#>     Attrib V59    0.049622480978513205
#>     Attrib V6    0.032791528595406766
#>     Attrib V60    0.4397835365002078
#>     Attrib V7    -0.5406953109003734
#>     Attrib V8    -0.4327078693246039
#>     Attrib V9    0.9256292302125433
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.08752433647153328
#>     Attrib V1    0.24402159371262436
#>     Attrib V10    -0.06502563445671763
#>     Attrib V11    0.158711144907307
#>     Attrib V12    0.11778080311884581
#>     Attrib V13    0.12208286178650318
#>     Attrib V14    0.088199531435853
#>     Attrib V15    0.08953046991760379
#>     Attrib V16    0.09904309835956257
#>     Attrib V17    -0.08136926275170311
#>     Attrib V18    -0.028606787732145773
#>     Attrib V19    -0.05171861868055823
#>     Attrib V2    0.034394308444417696
#>     Attrib V20    -0.06567816297980482
#>     Attrib V21    0.1281619055255257
#>     Attrib V22    -0.03900286561869838
#>     Attrib V23    -0.13125780419463592
#>     Attrib V24    0.06678209404908195
#>     Attrib V25    0.03441609656965456
#>     Attrib V26    -0.0983209954107002
#>     Attrib V27    -0.17911121045080633
#>     Attrib V28    -0.025307131609834346
#>     Attrib V29    -0.08857622847410648
#>     Attrib V3    -0.08069010985954314
#>     Attrib V30    -0.0422102990046995
#>     Attrib V31    -0.5585468848640556
#>     Attrib V32    -0.19653524532326144
#>     Attrib V33    0.2465817718728108
#>     Attrib V34    0.03758538544688326
#>     Attrib V35    -0.03497050436239164
#>     Attrib V36    -0.22959349871937276
#>     Attrib V37    -0.26009576563206144
#>     Attrib V38    0.1814532929720315
#>     Attrib V39    0.11377445508011973
#>     Attrib V4    0.4067080785520603
#>     Attrib V40    -0.114277763761553
#>     Attrib V41    0.01698864373815008
#>     Attrib V42    0.03036872534138458
#>     Attrib V43    0.031083375092162135
#>     Attrib V44    0.07084500745559434
#>     Attrib V45    0.1253859814330512
#>     Attrib V46    0.09496491651798436
#>     Attrib V47    -0.08898670822476443
#>     Attrib V48    0.14443419044634753
#>     Attrib V49    0.15029207018702942
#>     Attrib V5    0.07505513591726556
#>     Attrib V50    -0.32487409253062255
#>     Attrib V51    0.04381255321685321
#>     Attrib V52    0.09181953631336988
#>     Attrib V53    0.3154799293581409
#>     Attrib V54    0.43348302964977325
#>     Attrib V55    0.16561153258072825
#>     Attrib V56    -0.049069858085884016
#>     Attrib V57    0.26815644394383864
#>     Attrib V58    0.2657201000193433
#>     Attrib V59    0.4519861634585806
#>     Attrib V6    -0.12139083284173037
#>     Attrib V60    0.2706470491527526
#>     Attrib V7    -0.09064549382220217
#>     Attrib V8    -0.012973382426605905
#>     Attrib V9    0.23974905971644075
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.45709744736145036
#>     Attrib V1    0.6048276793795961
#>     Attrib V10    0.5947106905434826
#>     Attrib V11    1.0472382920369812
#>     Attrib V12    0.9659348012565041
#>     Attrib V13    0.18734748681777172
#>     Attrib V14    -0.5704998073213684
#>     Attrib V15    -0.4243476540428049
#>     Attrib V16    -0.5666577213603626
#>     Attrib V17    -0.7804773458605021
#>     Attrib V18    -0.3268642489908738
#>     Attrib V19    -0.5431430887824353
#>     Attrib V2    0.6204805527539613
#>     Attrib V20    -0.6380527747557848
#>     Attrib V21    0.10095380573292649
#>     Attrib V22    0.26136303060563426
#>     Attrib V23    0.07078417274906304
#>     Attrib V24    -0.057811456417308144
#>     Attrib V25    0.07042726849139008
#>     Attrib V26    0.6752329510436085
#>     Attrib V27    0.8851291885936965
#>     Attrib V28    1.4248427482731447
#>     Attrib V29    1.007145233387066
#>     Attrib V3    -0.2414939147221031
#>     Attrib V30    0.6666625920046042
#>     Attrib V31    -0.8985644160268262
#>     Attrib V32    -0.40633337373239675
#>     Attrib V33    -0.09994785824042197
#>     Attrib V34    -0.02232308960320445
#>     Attrib V35    0.45784230298110856
#>     Attrib V36    -0.3784284296246731
#>     Attrib V37    0.18087893979481742
#>     Attrib V38    0.25481672854043297
#>     Attrib V39    0.38716538643412846
#>     Attrib V4    0.7672347615321538
#>     Attrib V40    -0.1435108257383646
#>     Attrib V41    0.18785495672889282
#>     Attrib V42    -0.5431949497915095
#>     Attrib V43    -0.05572464883397559
#>     Attrib V44    0.32846455223891013
#>     Attrib V45    0.7240426493206008
#>     Attrib V46    0.7558228676260833
#>     Attrib V47    0.1227599695326864
#>     Attrib V48    0.2379198212684652
#>     Attrib V49    0.6161859213359332
#>     Attrib V5    0.5356398747839622
#>     Attrib V50    -0.4242606250415116
#>     Attrib V51    0.46503143703702116
#>     Attrib V52    0.6132354143656389
#>     Attrib V53    0.5617952269580645
#>     Attrib V54    0.42788123096234043
#>     Attrib V55    0.04106657168042499
#>     Attrib V56    -0.6834304118061952
#>     Attrib V57    -0.14410721830585616
#>     Attrib V58    0.26232364346617987
#>     Attrib V59    -0.014937686971155877
#>     Attrib V6    0.02100534378928825
#>     Attrib V60    0.28927265540118224
#>     Attrib V7    -0.576337079972244
#>     Attrib V8    -0.3894974520148286
#>     Attrib V9    0.8674234594610247
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    0.1544445331211829
#>     Attrib V1    0.38324753782251386
#>     Attrib V10    -0.14834745907642746
#>     Attrib V11    -0.6815092040476025
#>     Attrib V12    -0.5691972735231513
#>     Attrib V13    -0.2772042908650265
#>     Attrib V14    0.4552174356283612
#>     Attrib V15    -0.003968703834363605
#>     Attrib V16    -0.030703045547914896
#>     Attrib V17    -0.26332875020343277
#>     Attrib V18    -0.35917640993383004
#>     Attrib V19    -0.27296890163249915
#>     Attrib V2    -0.04776871137566476
#>     Attrib V20    0.4770257180770668
#>     Attrib V21    -0.05642172953040808
#>     Attrib V22    -0.838718114651806
#>     Attrib V23    -0.6639655531990514
#>     Attrib V24    -0.6492896031562884
#>     Attrib V25    -0.13799753459070194
#>     Attrib V26    0.46162780230050865
#>     Attrib V27    0.5643224721773592
#>     Attrib V28    0.24979229649915355
#>     Attrib V29    0.2404386306756715
#>     Attrib V3    0.44146438732150034
#>     Attrib V30    -0.358593042547218
#>     Attrib V31    0.8552057201728374
#>     Attrib V32    -0.3543661747820458
#>     Attrib V33    -1.0810197068926657
#>     Attrib V34    0.0234869477456569
#>     Attrib V35    0.8329977405532468
#>     Attrib V36    1.9694573024545552
#>     Attrib V37    1.3508003733425393
#>     Attrib V38    0.33546911519133005
#>     Attrib V39    -0.05498338898708242
#>     Attrib V4    0.47679390468225974
#>     Attrib V40    0.17975470547293798
#>     Attrib V41    -0.3630987894026098
#>     Attrib V42    -0.36667482808735435
#>     Attrib V43    -0.03997151974085497
#>     Attrib V44    0.17516406729304704
#>     Attrib V45    0.13960710695547623
#>     Attrib V46    -0.6879731923175413
#>     Attrib V47    -0.28256066409715347
#>     Attrib V48    -0.34152469954975817
#>     Attrib V49    -0.5736198991903924
#>     Attrib V5    -0.2127342521603605
#>     Attrib V50    1.4142647151375038
#>     Attrib V51    -0.5120298594917242
#>     Attrib V52    -0.6319450692401027
#>     Attrib V53    -0.6950483097686816
#>     Attrib V54    -0.24449480144213998
#>     Attrib V55    -0.0907442158592553
#>     Attrib V56    0.14589270259272538
#>     Attrib V57    0.2631007702805052
#>     Attrib V58    -0.6962408980023348
#>     Attrib V59    -0.19520718229603334
#>     Attrib V6    0.2177620006205978
#>     Attrib V60    -0.09740690479057029
#>     Attrib V7    0.5910314557161455
#>     Attrib V8    0.5972460626268608
#>     Attrib V9    -1.058881600613462
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.13836228699248487
#>     Attrib V1    0.24255107953637764
#>     Attrib V10    -0.2829091225790215
#>     Attrib V11    0.06527129354126641
#>     Attrib V12    0.14241450740751965
#>     Attrib V13    0.16213945905725638
#>     Attrib V14    0.14412692349301878
#>     Attrib V15    0.12150480251056742
#>     Attrib V16    0.07737616707146146
#>     Attrib V17    0.010727899163247824
#>     Attrib V18    0.10596212675403752
#>     Attrib V19    -0.04752634675474361
#>     Attrib V2    -0.05940662960190191
#>     Attrib V20    0.09668494814661403
#>     Attrib V21    0.2806171320332136
#>     Attrib V22    0.11757567242770565
#>     Attrib V23    0.008319030303000428
#>     Attrib V24    0.2321672376461791
#>     Attrib V25    0.1312105081129605
#>     Attrib V26    -0.32626772708947505
#>     Attrib V27    -0.4897456758425524
#>     Attrib V28    -0.3176758043792327
#>     Attrib V29    -0.38148735738900086
#>     Attrib V3    -0.17083206195587014
#>     Attrib V30    -0.20381488181689955
#>     Attrib V31    -0.8797278294835645
#>     Attrib V32    -0.32678296465234746
#>     Attrib V33    0.38090778569622746
#>     Attrib V34    0.0915935046892291
#>     Attrib V35    -0.07692549448729999
#>     Attrib V36    -0.3680972597239837
#>     Attrib V37    -0.3724374213524695
#>     Attrib V38    0.31189059032685607
#>     Attrib V39    0.15142055858815864
#>     Attrib V4    0.31918831657373087
#>     Attrib V40    -0.15546974920832352
#>     Attrib V41    0.0035398593108325626
#>     Attrib V42    0.23846295101412598
#>     Attrib V43    0.11261382365370493
#>     Attrib V44    0.042456381000596774
#>     Attrib V45    0.13857123112843345
#>     Attrib V46    0.05148289876660223
#>     Attrib V47    -0.16617139874038087
#>     Attrib V48    0.08771181424018436
#>     Attrib V49    0.09873012090856792
#>     Attrib V5    0.09748940978770732
#>     Attrib V50    -0.4679932767883698
#>     Attrib V51    0.044582883735840385
#>     Attrib V52    0.03289492563174357
#>     Attrib V53    0.4408954897116049
#>     Attrib V54    0.669418657398044
#>     Attrib V55    0.2115872135686627
#>     Attrib V56    0.018006487319823263
#>     Attrib V57    0.27112674205075865
#>     Attrib V58    0.39587698837327623
#>     Attrib V59    0.5325220009761199
#>     Attrib V6    -0.1320667086583839
#>     Attrib V60    0.18331005998956035
#>     Attrib V7    -0.12126986587814756
#>     Attrib V8    -0.002531166528618671
#>     Attrib V9    0.25454012311239044
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.34223780838323375
#>     Attrib V1    0.35844412673540377
#>     Attrib V10    -0.4299923987456934
#>     Attrib V11    0.10883442973233945
#>     Attrib V12    0.0881973231304821
#>     Attrib V13    0.23093798431891122
#>     Attrib V14    0.23193270130511448
#>     Attrib V15    0.15841913666084717
#>     Attrib V16    0.1036727720368314
#>     Attrib V17    -0.0385521726137317
#>     Attrib V18    0.13848854915900685
#>     Attrib V19    -0.021506392283487052
#>     Attrib V2    0.021660001661656356
#>     Attrib V20    0.008245528619884285
#>     Attrib V21    0.4143651250114893
#>     Attrib V22    0.27447425418685834
#>     Attrib V23    0.010527947762971038
#>     Attrib V24    0.2006721837582889
#>     Attrib V25    0.040701086548816975
#>     Attrib V26    -0.36853932836398706
#>     Attrib V27    -0.4331056504901542
#>     Attrib V28    -0.14143079568656078
#>     Attrib V29    -0.0703344648869411
#>     Attrib V3    -0.20186822469772225
#>     Attrib V30    -0.06854876555946923
#>     Attrib V31    -1.0907350680490528
#>     Attrib V32    -0.43329007390799834
#>     Attrib V33    0.4460236629901999
#>     Attrib V34    -0.06356859077120483
#>     Attrib V35    -0.2743885809698839
#>     Attrib V36    -0.5996961172837139
#>     Attrib V37    -0.4944885240572976
#>     Attrib V38    0.36965043052935476
#>     Attrib V39    0.20711768181857612
#>     Attrib V4    0.6428008475654379
#>     Attrib V40    -0.1308907257013438
#>     Attrib V41    0.11781702122625673
#>     Attrib V42    0.3414114404402664
#>     Attrib V43    0.1891691084217592
#>     Attrib V44    -0.025300446585476866
#>     Attrib V45    0.11719382955284348
#>     Attrib V46    0.15210241370218108
#>     Attrib V47    -0.2474128881249839
#>     Attrib V48    0.10353754182420757
#>     Attrib V49    0.1601491528043797
#>     Attrib V5    0.22958508605648728
#>     Attrib V50    -0.6395341187433768
#>     Attrib V51    -0.018147509424415106
#>     Attrib V52    0.11498889227243604
#>     Attrib V53    0.6979490434369732
#>     Attrib V54    0.7503671429144838
#>     Attrib V55    0.1382301843341753
#>     Attrib V56    -0.05932615478859605
#>     Attrib V57    0.3223205617659029
#>     Attrib V58    0.4886256454168429
#>     Attrib V59    0.7494095648721872
#>     Attrib V6    -0.20179897467730254
#>     Attrib V60    0.2205193092469458
#>     Attrib V7    -0.11792647958041029
#>     Attrib V8    -0.054730900360854894
#>     Attrib V9    0.2793855335910018
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.11678761700995245
#>     Attrib V1    0.09067883024511822
#>     Attrib V10    -0.0996180120840956
#>     Attrib V11    0.06731432870028177
#>     Attrib V12    0.07216916969645645
#>     Attrib V13    0.13920115669356667
#>     Attrib V14    0.06999905358992138
#>     Attrib V15    0.012856562931432093
#>     Attrib V16    -0.012562547901893822
#>     Attrib V17    0.014480761182357292
#>     Attrib V18    0.0652962475355711
#>     Attrib V19    0.03295371419837474
#>     Attrib V2    -0.014901885470732214
#>     Attrib V20    0.06691414540214752
#>     Attrib V21    0.14173848451422819
#>     Attrib V22    0.06679574409153127
#>     Attrib V23    0.09278339176331314
#>     Attrib V24    0.18068657333181967
#>     Attrib V25    0.16796066814909855
#>     Attrib V26    -0.11935950875192143
#>     Attrib V27    -0.15937540973598674
#>     Attrib V28    -0.18148802840973569
#>     Attrib V29    -0.21133069470184684
#>     Attrib V3    -0.002617627513983744
#>     Attrib V30    -0.11733330449494712
#>     Attrib V31    -0.4553869804540986
#>     Attrib V32    -0.10054816323577982
#>     Attrib V33    0.2317202964955375
#>     Attrib V34    0.11600460047177986
#>     Attrib V35    -0.004779065390610212
#>     Attrib V36    -0.19540173854501067
#>     Attrib V37    -0.19940985671981554
#>     Attrib V38    0.054908165632156475
#>     Attrib V39    0.1333146053752672
#>     Attrib V4    0.09935224132482022
#>     Attrib V40    -0.010764753520441577
#>     Attrib V41    0.07245477418546578
#>     Attrib V42    0.12884041222865059
#>     Attrib V43    0.00885321521744657
#>     Attrib V44    0.00611428587824842
#>     Attrib V45    -0.0018115881118728565
#>     Attrib V46    0.08042299204940875
#>     Attrib V47    -0.023822624337212373
#>     Attrib V48    0.014483077441870341
#>     Attrib V49    0.10312431858827811
#>     Attrib V5    0.07460571133813439
#>     Attrib V50    -0.2699230997796046
#>     Attrib V51    0.04085421461332805
#>     Attrib V52    0.0411411516871039
#>     Attrib V53    0.21268484508584143
#>     Attrib V54    0.22450604511744504
#>     Attrib V55    0.08858990702756829
#>     Attrib V56    0.018605463171896083
#>     Attrib V57    0.12095125170906874
#>     Attrib V58    0.20104110126431388
#>     Attrib V59    0.30629173786705877
#>     Attrib V6    -4.046841756477035E-4
#>     Attrib V60    0.20466155970434885
#>     Attrib V7    -0.02723842437251036
#>     Attrib V8    -0.0676741824258565
#>     Attrib V9    0.18569406150968065
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.5234817385050415
#>     Attrib V1    0.6156624043859937
#>     Attrib V10    0.2986579613865885
#>     Attrib V11    0.6819158369972937
#>     Attrib V12    0.6662975327592614
#>     Attrib V13    0.16282776891008302
#>     Attrib V14    -0.18821206212582312
#>     Attrib V15    -0.07904841082892318
#>     Attrib V16    -0.291729108341347
#>     Attrib V17    -0.6634449613774058
#>     Attrib V18    -0.40707995848578915
#>     Attrib V19    -0.515701115583693
#>     Attrib V2    0.310763839578162
#>     Attrib V20    -0.7072317854681394
#>     Attrib V21    -0.2941363775755142
#>     Attrib V22    -0.5250098300535895
#>     Attrib V23    -0.6412563710639868
#>     Attrib V24    -0.2476355859305984
#>     Attrib V25    -0.030081888069790078
#>     Attrib V26    0.19002451693191869
#>     Attrib V27    0.10418523272069881
#>     Attrib V28    0.3604572302260162
#>     Attrib V29    0.17093590240767348
#>     Attrib V3    -0.2249688541681388
#>     Attrib V30    0.43657318130828215
#>     Attrib V31    -0.08815796401782772
#>     Attrib V32    0.3671259957543543
#>     Attrib V33    0.5935663098735279
#>     Attrib V34    0.20876947840701718
#>     Attrib V35    -0.024631274623903878
#>     Attrib V36    -1.002600503895836
#>     Attrib V37    -0.7635824008701042
#>     Attrib V38    -0.29057564901322885
#>     Attrib V39    0.17772315446243725
#>     Attrib V4    0.7152949228721613
#>     Attrib V40    0.05147162338711473
#>     Attrib V41    0.27174716924910847
#>     Attrib V42    -0.194656198363351
#>     Attrib V43    -0.33818201978863993
#>     Attrib V44    -0.2964589499237349
#>     Attrib V45    -0.06382801959921522
#>     Attrib V46    0.1200574882859051
#>     Attrib V47    -0.21138959301274052
#>     Attrib V48    0.4805660082724427
#>     Attrib V49    0.5624395507665139
#>     Attrib V5    0.2947094537961121
#>     Attrib V50    -0.496887286377266
#>     Attrib V51    0.13594146023609702
#>     Attrib V52    0.2391762824268913
#>     Attrib V53    0.403843962154097
#>     Attrib V54    0.5517333625017519
#>     Attrib V55    0.32074882853515707
#>     Attrib V56    -0.3590320137892737
#>     Attrib V57    -0.05673271430519094
#>     Attrib V58    0.4402449851989443
#>     Attrib V59    0.39921569700235926
#>     Attrib V6    -0.14314333613512925
#>     Attrib V60    0.2756029087528031
#>     Attrib V7    -0.391382924946665
#>     Attrib V8    -0.04057792744990363
#>     Attrib V9    0.7134901321233458
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    0.039985163868639526
#>     Attrib V1    0.05111114692691208
#>     Attrib V10    -0.18319551942285037
#>     Attrib V11    -0.5765256307575811
#>     Attrib V12    -0.3798916232675855
#>     Attrib V13    -0.22711111331831782
#>     Attrib V14    0.48324865610300344
#>     Attrib V15    0.37673283187493173
#>     Attrib V16    0.3171797441302655
#>     Attrib V17    0.22790852277269585
#>     Attrib V18    -0.13803699746853215
#>     Attrib V19    -0.039807792818769006
#>     Attrib V2    -0.12866457129041223
#>     Attrib V20    0.37405668221627775
#>     Attrib V21    -0.2456782311565802
#>     Attrib V22    -0.7300127562450999
#>     Attrib V23    -0.7504814281774109
#>     Attrib V24    -0.6144296540159248
#>     Attrib V25    -0.02393697092130706
#>     Attrib V26    0.7053808187409327
#>     Attrib V27    0.4820530725565303
#>     Attrib V28    -0.03938807433977318
#>     Attrib V29    0.2097897764541316
#>     Attrib V3    0.45240999942726207
#>     Attrib V30    -0.1718091536458364
#>     Attrib V31    1.0089300534247556
#>     Attrib V32    -0.12528759878248577
#>     Attrib V33    -0.8766310884418431
#>     Attrib V34    0.08607460715636946
#>     Attrib V35    0.3663513623174734
#>     Attrib V36    1.2157928674845628
#>     Attrib V37    0.8226336935290742
#>     Attrib V38    -0.14963702916634675
#>     Attrib V39    -0.32297992557803007
#>     Attrib V4    0.22823066280313647
#>     Attrib V40    0.10087560570364171
#>     Attrib V41    -0.4169669937251948
#>     Attrib V42    -0.2736992622159947
#>     Attrib V43    -0.2129178169739791
#>     Attrib V44    -0.11828713325880696
#>     Attrib V45    -0.028070157474407702
#>     Attrib V46    -0.4940749799384583
#>     Attrib V47    -0.04774549687493522
#>     Attrib V48    -0.04859545847438586
#>     Attrib V49    -0.4169149057505236
#>     Attrib V5    -0.049532747548019854
#>     Attrib V50    1.1190377600138852
#>     Attrib V51    -0.3229877645474687
#>     Attrib V52    -0.4523452769068284
#>     Attrib V53    -0.45736314364993313
#>     Attrib V54    -0.16694046594662165
#>     Attrib V55    0.03357533362796735
#>     Attrib V56    0.3502430793544545
#>     Attrib V57    0.25738134898127885
#>     Attrib V58    -0.621080715749634
#>     Attrib V59    -0.11994574725594064
#>     Attrib V6    0.1323230371572137
#>     Attrib V60    -0.09505480345749467
#>     Attrib V7    0.39664245737142617
#>     Attrib V8    0.45596679886966934
#>     Attrib V9    -0.9638979157507213
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.15294578936302275
#>     Attrib V1    0.09841679657114036
#>     Attrib V10    -0.005654874722270625
#>     Attrib V11    0.04880471080676769
#>     Attrib V12    0.0468154866679756
#>     Attrib V13    0.06685082557814245
#>     Attrib V14    0.04798281877479206
#>     Attrib V15    0.04163991203896111
#>     Attrib V16    0.0946818370808146
#>     Attrib V17    0.052210358140864783
#>     Attrib V18    0.07175728032119662
#>     Attrib V19    0.033982434179431135
#>     Attrib V2    0.012637129212375467
#>     Attrib V20    -0.031496583358528334
#>     Attrib V21    0.002981778720798147
#>     Attrib V22    -0.02217451658933007
#>     Attrib V23    -0.06916698801530564
#>     Attrib V24    0.06517243486666237
#>     Attrib V25    0.057715250654937905
#>     Attrib V26    -0.0940548005823024
#>     Attrib V27    -0.12414532497418697
#>     Attrib V28    -0.07005725417254764
#>     Attrib V29    -0.13063001581762373
#>     Attrib V3    0.047191283374675264
#>     Attrib V30    -0.11093160347586614
#>     Attrib V31    -0.2701404799312265
#>     Attrib V32    -0.06091370273712237
#>     Attrib V33    0.10480397156076142
#>     Attrib V34    0.069626916459416
#>     Attrib V35    0.01390490391441231
#>     Attrib V36    -0.09384957817013002
#>     Attrib V37    -0.06194754043964848
#>     Attrib V38    0.06667801230910099
#>     Attrib V39    0.07911396457810273
#>     Attrib V4    0.09452756738506526
#>     Attrib V40    -0.031162694725989232
#>     Attrib V41    0.05513586465361874
#>     Attrib V42    0.10913781640563691
#>     Attrib V43    0.033395074140609465
#>     Attrib V44    0.010772622649728796
#>     Attrib V45    0.06687104857188923
#>     Attrib V46    0.08429163524088625
#>     Attrib V47    0.002850707423137824
#>     Attrib V48    0.0316305669352921
#>     Attrib V49    0.02661613507229389
#>     Attrib V5    0.06604086597590061
#>     Attrib V50    -0.06589087530361196
#>     Attrib V51    0.12656112260729246
#>     Attrib V52    0.11552351323334469
#>     Attrib V53    0.1974365790036781
#>     Attrib V54    0.1615472463123135
#>     Attrib V55    0.12743347412156641
#>     Attrib V56    0.07253409726545834
#>     Attrib V57    0.1600558907977331
#>     Attrib V58    0.20582158713727466
#>     Attrib V59    0.15104124693245793
#>     Attrib V6    0.04227863162152626
#>     Attrib V60    0.1732625205232741
#>     Attrib V7    -0.03129136764685919
#>     Attrib V8    -0.021904740493657513
#>     Attrib V9    0.1704074925674072
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.13141438138343314
#>     Attrib V1    0.07028920871060965
#>     Attrib V10    0.08870285273506086
#>     Attrib V11    0.035453368088532375
#>     Attrib V12    -0.026433466202327727
#>     Attrib V13    -0.04570306696766958
#>     Attrib V14    0.051553743354681845
#>     Attrib V15    0.13391292095372134
#>     Attrib V16    0.059199301313799635
#>     Attrib V17    0.042471893798302324
#>     Attrib V18    0.008734211736453069
#>     Attrib V19    0.010317280193368741
#>     Attrib V2    0.13779787154328724
#>     Attrib V20    -0.06440629759794372
#>     Attrib V21    -0.07341171892572748
#>     Attrib V22    0.00242813764162332
#>     Attrib V23    -0.0714994481043416
#>     Attrib V24    -0.028351120627000615
#>     Attrib V25    -0.05414493922155242
#>     Attrib V26    -0.07713682552422273
#>     Attrib V27    -0.05232271842631377
#>     Attrib V28    -0.06155298986604743
#>     Attrib V29    -0.04526778273221563
#>     Attrib V3    0.10610010262910094
#>     Attrib V30    0.02940626040693166
#>     Attrib V31    0.09689774491024464
#>     Attrib V32    -0.027688334980856343
#>     Attrib V33    0.035188075301112405
#>     Attrib V34    0.005193401854065307
#>     Attrib V35    0.1135689203359573
#>     Attrib V36    0.08552472327520474
#>     Attrib V37    0.0603149630297801
#>     Attrib V38    0.07500120105695558
#>     Attrib V39    0.08821040824705162
#>     Attrib V4    0.029749326904912055
#>     Attrib V40    0.09813384189997955
#>     Attrib V41    0.1463793687986534
#>     Attrib V42    0.10909795210140864
#>     Attrib V43    0.1488171625055025
#>     Attrib V44    0.1305247551187375
#>     Attrib V45    0.11318385858173506
#>     Attrib V46    0.0468726250830885
#>     Attrib V47    0.05769704094701681
#>     Attrib V48    0.06857373480544512
#>     Attrib V49    -0.034012217787557184
#>     Attrib V5    0.090980474543665
#>     Attrib V50    0.11796021220159084
#>     Attrib V51    0.08153159721394747
#>     Attrib V52    0.023941124170893217
#>     Attrib V53    0.04269942944638692
#>     Attrib V54    0.029666675846307777
#>     Attrib V55    0.09108550096307876
#>     Attrib V56    0.1415882341917608
#>     Attrib V57    0.17490122619011034
#>     Attrib V58    0.03718373788831395
#>     Attrib V59    0.03154205293984018
#>     Attrib V6    0.13815490150610815
#>     Attrib V60    0.12218521895165688
#>     Attrib V7    0.06185607617253558
#>     Attrib V8    0.1443821417570989
#>     Attrib V9    0.033759273500531116
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.07467371426320424
#>     Attrib V1    0.14475292468271564
#>     Attrib V10    -0.18708695650664847
#>     Attrib V11    -0.5954495519697239
#>     Attrib V12    -0.5482633789808745
#>     Attrib V13    -0.2937390294395035
#>     Attrib V14    0.29586878971213965
#>     Attrib V15    0.03319376028996022
#>     Attrib V16    -0.026863822824099336
#>     Attrib V17    -0.17597648235463426
#>     Attrib V18    -0.24166696737388063
#>     Attrib V19    -0.2800402101084794
#>     Attrib V2    -0.024651811058164323
#>     Attrib V20    0.18710053002174554
#>     Attrib V21    -0.16313313846284677
#>     Attrib V22    -0.597861983735717
#>     Attrib V23    -0.41111042333514897
#>     Attrib V24    -0.35237835662557826
#>     Attrib V25    -0.043569158195774324
#>     Attrib V26    0.2906978472044968
#>     Attrib V27    0.4540862134506862
#>     Attrib V28    0.18912218118814605
#>     Attrib V29    0.22071869319140475
#>     Attrib V3    0.4763860004749046
#>     Attrib V30    -0.3045241816337468
#>     Attrib V31    0.5945366600988465
#>     Attrib V32    -0.11525468652622242
#>     Attrib V33    -0.7088085414654473
#>     Attrib V34    -0.0864200598504598
#>     Attrib V35    0.29707098891980976
#>     Attrib V36    1.0851932618131015
#>     Attrib V37    0.6422309944250827
#>     Attrib V38    0.014729972966053217
#>     Attrib V39    -0.08716413943014897
#>     Attrib V4    0.1869343801661093
#>     Attrib V40    0.0905982052362972
#>     Attrib V41    -0.21148715258836695
#>     Attrib V42    -0.011604892497717236
#>     Attrib V43    0.09624566818155844
#>     Attrib V44    0.10247326415358704
#>     Attrib V45    -0.13061026837655848
#>     Attrib V46    -0.4653010992936224
#>     Attrib V47    -0.09812618060983516
#>     Attrib V48    -0.2886627740213329
#>     Attrib V49    -0.4371359200110559
#>     Attrib V5    -0.08498364818366103
#>     Attrib V50    0.8227122393338259
#>     Attrib V51    -0.22619144541361333
#>     Attrib V52    -0.3675883544143975
#>     Attrib V53    -0.3273646351475243
#>     Attrib V54    -0.18933147673748027
#>     Attrib V55    -0.016589975633529656
#>     Attrib V56    0.2662253886727444
#>     Attrib V57    0.19899309889578917
#>     Attrib V58    -0.34829334307639803
#>     Attrib V59    -0.031134245125079098
#>     Attrib V6    0.1165620162575259
#>     Attrib V60    0.03977538328240187
#>     Attrib V7    0.35200735079703294
#>     Attrib V8    0.31792327279928567
#>     Attrib V9    -0.7834374344631712
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.6351598002801186
#>     Attrib V1    0.6047023304921042
#>     Attrib V10    0.4046827313050158
#>     Attrib V11    0.9586592234540774
#>     Attrib V12    1.111185123718075
#>     Attrib V13    0.21889084860594088
#>     Attrib V14    -0.4562097809151751
#>     Attrib V15    -0.3349427369017226
#>     Attrib V16    -0.6620867410156679
#>     Attrib V17    -0.8369138449547493
#>     Attrib V18    -0.35604833455127166
#>     Attrib V19    -0.5711326960000941
#>     Attrib V2    0.6398937698041653
#>     Attrib V20    -0.8457896327591263
#>     Attrib V21    -0.09479818827144826
#>     Attrib V22    0.1815032458800996
#>     Attrib V23    -0.09422853172317525
#>     Attrib V24    -0.11589946928642476
#>     Attrib V25    0.055628650320750136
#>     Attrib V26    0.6401564211960317
#>     Attrib V27    0.9229408706001674
#>     Attrib V28    1.4911939306746582
#>     Attrib V29    0.9940365191528856
#>     Attrib V3    -0.23125506218808134
#>     Attrib V30    0.5704263834229508
#>     Attrib V31    -1.0088588885293706
#>     Attrib V32    -0.4715166245399024
#>     Attrib V33    -0.05911486567822926
#>     Attrib V34    -0.052954939502017774
#>     Attrib V35    0.5078401779054693
#>     Attrib V36    -0.4257761781816806
#>     Attrib V37    0.1388755724354126
#>     Attrib V38    0.24040833208618548
#>     Attrib V39    0.3663718078468198
#>     Attrib V4    1.071288771511595
#>     Attrib V40    -0.0405243719356585
#>     Attrib V41    0.2876081100845441
#>     Attrib V42    -0.46125311569592686
#>     Attrib V43    -0.18514148408245984
#>     Attrib V44    0.23050453515671168
#>     Attrib V45    0.7370939160479526
#>     Attrib V46    0.6992924278414177
#>     Attrib V47    -0.01682848380147872
#>     Attrib V48    0.2900181881756535
#>     Attrib V49    0.6496265507924948
#>     Attrib V5    0.7512383740479812
#>     Attrib V50    -0.601464727490564
#>     Attrib V51    0.34820159794277666
#>     Attrib V52    0.5680946641152246
#>     Attrib V53    0.6272891533261752
#>     Attrib V54    0.46819872323824496
#>     Attrib V55    -0.005811006308208926
#>     Attrib V56    -0.844720480492311
#>     Attrib V57    -0.04035563731528885
#>     Attrib V58    0.30521482785902454
#>     Attrib V59    0.10904302795018964
#>     Attrib V6    0.023416038452226222
#>     Attrib V60    0.4300047458825725
#>     Attrib V7    -0.5394178818451054
#>     Attrib V8    -0.5516669505533985
#>     Attrib V9    0.7511370961840437
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.22076569270482307
#>     Attrib V1    0.3507713460045728
#>     Attrib V10    -0.2656412396221343
#>     Attrib V11    0.07945213991623039
#>     Attrib V12    0.18582058733264198
#>     Attrib V13    0.21690432786701896
#>     Attrib V14    0.2240359651209912
#>     Attrib V15    0.14792837845731194
#>     Attrib V16    0.023510668753617417
#>     Attrib V17    -0.04496066649897463
#>     Attrib V18    0.11715010330717296
#>     Attrib V19    -0.0380904859904277
#>     Attrib V2    9.072659387579691E-4
#>     Attrib V20    0.04639341659926239
#>     Attrib V21    0.34607776763454373
#>     Attrib V22    0.18651152036672905
#>     Attrib V23    0.033777764890373325
#>     Attrib V24    0.20150332574628613
#>     Attrib V25    0.10079470735415001
#>     Attrib V26    -0.1661132688597183
#>     Attrib V27    -0.27092612928567145
#>     Attrib V28    -0.1290993373944397
#>     Attrib V29    -0.09387707542538329
#>     Attrib V3    -0.1596557889359103
#>     Attrib V30    -0.08042789442302738
#>     Attrib V31    -0.8500108149144988
#>     Attrib V32    -0.4415509286760429
#>     Attrib V33    0.2332907542029879
#>     Attrib V34    -0.06289234764006778
#>     Attrib V35    -0.11532537903767863
#>     Attrib V36    -0.2942537981682239
#>     Attrib V37    -0.2461429086103857
#>     Attrib V38    0.3287300361830387
#>     Attrib V39    0.16174282809276005
#>     Attrib V4    0.4677282237894929
#>     Attrib V40    -0.14620880393677327
#>     Attrib V41    0.05974227224678623
#>     Attrib V42    0.1864990701723976
#>     Attrib V43    0.16739363770886337
#>     Attrib V44    0.08866263626939809
#>     Attrib V45    0.12486009587987427
#>     Attrib V46    0.045266431708360644
#>     Attrib V47    -0.23167312528609738
#>     Attrib V48    0.08013859064415822
#>     Attrib V49    0.1326144945437853
#>     Attrib V5    0.18864124827291698
#>     Attrib V50    -0.44821342382355617
#>     Attrib V51    0.06770691865040857
#>     Attrib V52    0.12118491964898465
#>     Attrib V53    0.49877819410303764
#>     Attrib V54    0.6366056184519722
#>     Attrib V55    0.2038322444592465
#>     Attrib V56    -0.02767223718522175
#>     Attrib V57    0.20952137402206567
#>     Attrib V58    0.37818593487599084
#>     Attrib V59    0.6074864940851875
#>     Attrib V6    -0.1269419960967825
#>     Attrib V60    0.23043683804660775
#>     Attrib V7    -0.07165208773442856
#>     Attrib V8    -0.11556550413036439
#>     Attrib V9    0.20296955897547092
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.09720730077344812
#>     Attrib V1    0.12365260249224762
#>     Attrib V10    -0.18800162245532762
#>     Attrib V11    -0.5284231393482439
#>     Attrib V12    -0.38352982033541133
#>     Attrib V13    -0.21409871255293475
#>     Attrib V14    0.39605758575087724
#>     Attrib V15    0.28386732658883757
#>     Attrib V16    0.2492135767477694
#>     Attrib V17    0.2052805090246582
#>     Attrib V18    -0.06074435450911115
#>     Attrib V19    -0.14236688591372648
#>     Attrib V2    -0.09047286242816036
#>     Attrib V20    0.23969941327237845
#>     Attrib V21    -0.15525588257813322
#>     Attrib V22    -0.6465030919024757
#>     Attrib V23    -0.5841459352514872
#>     Attrib V24    -0.44285994301951687
#>     Attrib V25    0.02132804148377843
#>     Attrib V26    0.4951964249373256
#>     Attrib V27    0.40100171299165915
#>     Attrib V28    -0.02386684020207248
#>     Attrib V29    0.2439218958804996
#>     Attrib V3    0.33981781937810046
#>     Attrib V30    -0.06794405869248853
#>     Attrib V31    0.9128423057427559
#>     Attrib V32    -0.0883327210895429
#>     Attrib V33    -0.7063455008463441
#>     Attrib V34    -0.0238043121515788
#>     Attrib V35    0.24170863601854709
#>     Attrib V36    1.0036005299464623
#>     Attrib V37    0.7094212247755541
#>     Attrib V38    -0.11018540687571701
#>     Attrib V39    -0.25596651411087695
#>     Attrib V4    0.24661509830709932
#>     Attrib V40    0.1563196934471847
#>     Attrib V41    -0.2268494257914711
#>     Attrib V42    -0.13650970334931667
#>     Attrib V43    -0.03971522933245109
#>     Attrib V44    -0.018353938820848213
#>     Attrib V45    -0.09370785787846148
#>     Attrib V46    -0.4731918941761881
#>     Attrib V47    -0.11672051289811075
#>     Attrib V48    -0.1391254840102865
#>     Attrib V49    -0.47229518509520135
#>     Attrib V5    -0.026197735198617334
#>     Attrib V50    0.9142861430100676
#>     Attrib V51    -0.3122853028356324
#>     Attrib V52    -0.3863659447801768
#>     Attrib V53    -0.3536433018068391
#>     Attrib V54    -0.1275854019467532
#>     Attrib V55    -0.08053880164808497
#>     Attrib V56    0.20444353653836128
#>     Attrib V57    0.30269822048451556
#>     Attrib V58    -0.5478678945329564
#>     Attrib V59    -0.08587413016971121
#>     Attrib V6    0.15014682830710444
#>     Attrib V60    -0.016459642573016128
#>     Attrib V7    0.4567194785554319
#>     Attrib V8    0.3520693381331551
#>     Attrib V9    -0.7923860298262247
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.15873596310368368
#>     Attrib V1    0.451709753031675
#>     Attrib V10    -0.4329451312673279
#>     Attrib V11    -0.051699501181345586
#>     Attrib V12    0.08605431168173182
#>     Attrib V13    0.26039479575605956
#>     Attrib V14    0.2975000104211184
#>     Attrib V15    0.2692026314568673
#>     Attrib V16    0.21526680312251723
#>     Attrib V17    -0.0072332365236555405
#>     Attrib V18    0.02042803339547849
#>     Attrib V19    -0.1749426728742309
#>     Attrib V2    0.10583529025458045
#>     Attrib V20    0.0773511596170891
#>     Attrib V21    0.3361836857763128
#>     Attrib V22    0.0933530781440538
#>     Attrib V23    -0.13608594875720204
#>     Attrib V24    0.2506822555023329
#>     Attrib V25    0.00549294874060116
#>     Attrib V26    -0.5303835283099313
#>     Attrib V27    -0.8669263007916911
#>     Attrib V28    -0.8860298311561594
#>     Attrib V29    -0.6779011441418159
#>     Attrib V3    -0.0682415883376091
#>     Attrib V30    -0.4440252513802332
#>     Attrib V31    -0.8571840830950772
#>     Attrib V32    -0.2837556955408144
#>     Attrib V33    0.4597372144380866
#>     Attrib V34    0.034967439679736895
#>     Attrib V35    -0.2728809088450586
#>     Attrib V36    -0.45215849358407983
#>     Attrib V37    -0.32116824510526176
#>     Attrib V38    0.28628014956620706
#>     Attrib V39    0.1335828488741308
#>     Attrib V4    0.3976411158778581
#>     Attrib V40    -0.12421023426920078
#>     Attrib V41    0.006883974982712175
#>     Attrib V42    0.2687665132597439
#>     Attrib V43    0.16512242953288458
#>     Attrib V44    -0.06900184712274669
#>     Attrib V45    -0.03235171616500818
#>     Attrib V46    0.03898242321191683
#>     Attrib V47    -0.29931746593308545
#>     Attrib V48    0.09139465981205179
#>     Attrib V49    0.06826007349173675
#>     Attrib V5    0.11083362901779388
#>     Attrib V50    -0.5368309778488725
#>     Attrib V51    -0.07618515693501429
#>     Attrib V52    0.016238761187932573
#>     Attrib V53    0.5057846156766133
#>     Attrib V54    0.7749293963809534
#>     Attrib V55    0.32885010951782506
#>     Attrib V56    0.14374387335016042
#>     Attrib V57    0.4096515310735299
#>     Attrib V58    0.4787629331225903
#>     Attrib V59    0.7494400045632146
#>     Attrib V6    -0.07996305936250223
#>     Attrib V60    0.27482731954871187
#>     Attrib V7    0.07842993681775287
#>     Attrib V8    -0.0688240318945766
#>     Attrib V9    0.1765806209182478
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.19751993285447447
#>     Attrib V1    0.4666314210941862
#>     Attrib V10    -0.6268130535476046
#>     Attrib V11    -0.0875758552686257
#>     Attrib V12    0.12711091904348085
#>     Attrib V13    0.3883527421000114
#>     Attrib V14    0.3690604115434623
#>     Attrib V15    0.3591256217554225
#>     Attrib V16    0.15245382366572371
#>     Attrib V17    0.04793033440028865
#>     Attrib V18    0.06230363991300561
#>     Attrib V19    -0.1892812434140427
#>     Attrib V2    0.07812877344744018
#>     Attrib V20    0.07052180675154307
#>     Attrib V21    0.39976199959611863
#>     Attrib V22    0.2442651741023155
#>     Attrib V23    0.004148387853268853
#>     Attrib V24    0.27922123341643706
#>     Attrib V25    0.024367024974318332
#>     Attrib V26    -0.6321614834817202
#>     Attrib V27    -1.0717436250714734
#>     Attrib V28    -1.0243066269117171
#>     Attrib V29    -0.8050312208083177
#>     Attrib V3    -0.013873451776961861
#>     Attrib V30    -0.5218921489812066
#>     Attrib V31    -1.14005499911398
#>     Attrib V32    -0.42054483823937266
#>     Attrib V33    0.5135531442597926
#>     Attrib V34    -0.09278674244345936
#>     Attrib V35    -0.39999912693749906
#>     Attrib V36    -0.5165293303292706
#>     Attrib V37    -0.24625582387654774
#>     Attrib V38    0.4596349408824184
#>     Attrib V39    0.21225978761206304
#>     Attrib V4    0.37919089886958657
#>     Attrib V40    -0.209997388879345
#>     Attrib V41    0.07486794995100834
#>     Attrib V42    0.39271990878609525
#>     Attrib V43    0.19663765711450196
#>     Attrib V44    -0.0927498848071668
#>     Attrib V45    0.04329558993257946
#>     Attrib V46    0.043450699883680347
#>     Attrib V47    -0.2556782778791687
#>     Attrib V48    0.012659946686571381
#>     Attrib V49    0.05306631350768151
#>     Attrib V5    0.09819067822997601
#>     Attrib V50    -0.6342230338377788
#>     Attrib V51    -0.04642619091711623
#>     Attrib V52    0.11947148399608089
#>     Attrib V53    0.7552223813532877
#>     Attrib V54    0.9648835842500745
#>     Attrib V55    0.3056525233084952
#>     Attrib V56    0.1470649928528756
#>     Attrib V57    0.4574620128508389
#>     Attrib V58    0.500231591995407
#>     Attrib V59    0.9112301796513623
#>     Attrib V6    -0.07073125112004675
#>     Attrib V60    0.24893918550480834
#>     Attrib V7    0.10028964688355488
#>     Attrib V8    -0.030898665524303277
#>     Attrib V9    0.16640011471360458
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.1416492010112208
#>     Attrib V1    0.025586182450853805
#>     Attrib V10    0.0032913228375867514
#>     Attrib V11    -0.056958739349280765
#>     Attrib V12    -0.037939801416931096
#>     Attrib V13    -0.060382316194617265
#>     Attrib V14    0.06568743257027215
#>     Attrib V15    0.11816349615739286
#>     Attrib V16    0.0496279783730307
#>     Attrib V17    0.10598157170813093
#>     Attrib V18    0.0034229841569199636
#>     Attrib V19    -0.028788680493084386
#>     Attrib V2    0.062429212135755204
#>     Attrib V20    -0.05654080194077697
#>     Attrib V21    -0.08237146608927687
#>     Attrib V22    -0.0889902313362409
#>     Attrib V23    -0.023847825500717613
#>     Attrib V24    -0.10196105064840834
#>     Attrib V25    -0.05911950896112325
#>     Attrib V26    -0.02593259992307964
#>     Attrib V27    -0.08970405506230027
#>     Attrib V28    -0.059729434643591456
#>     Attrib V29    -0.007678458156972377
#>     Attrib V3    0.11922519813415478
#>     Attrib V30    0.001934549431680998
#>     Attrib V31    0.1142373838150911
#>     Attrib V32    0.06235642150816192
#>     Attrib V33    -0.0839023081275912
#>     Attrib V34    0.012846927703201054
#>     Attrib V35    0.07282263650210431
#>     Attrib V36    0.19989853459510593
#>     Attrib V37    0.09781278050605967
#>     Attrib V38    -0.0037578306032178973
#>     Attrib V39    0.011186295014712161
#>     Attrib V4    0.036076919486006095
#>     Attrib V40    0.17436404252044593
#>     Attrib V41    0.1547276858758494
#>     Attrib V42    0.10020468573645916
#>     Attrib V43    0.16001046093076532
#>     Attrib V44    0.07713952698623516
#>     Attrib V45    0.0064916007876823865
#>     Attrib V46    0.053302278275252815
#>     Attrib V47    0.14067588084791435
#>     Attrib V48    0.0038489126365419133
#>     Attrib V49    -0.07122841174056557
#>     Attrib V5    0.042386924725384106
#>     Attrib V50    0.21574877247251953
#>     Attrib V51    0.09568430762502546
#>     Attrib V52    0.08009515953863215
#>     Attrib V53    0.015218987796835353
#>     Attrib V54    -0.0021438085643448353
#>     Attrib V55    0.04885928787197697
#>     Attrib V56    0.1687978115799031
#>     Attrib V57    0.16199908517775732
#>     Attrib V58    0.04936679508160621
#>     Attrib V59    0.04292993596619729
#>     Attrib V6    0.1687867264222412
#>     Attrib V60    0.07240380838731181
#>     Attrib V7    0.10475963553246367
#>     Attrib V8    0.14104585459668692
#>     Attrib V9    0.004931050707193532
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    -0.38161799810836977
#>     Attrib V1    0.17373579094547334
#>     Attrib V10    0.7070556070744926
#>     Attrib V11    1.062057104529911
#>     Attrib V12    0.6501476131695958
#>     Attrib V13    -0.23223224284305471
#>     Attrib V14    -0.3558370638448461
#>     Attrib V15    -0.7564734553719168
#>     Attrib V16    -0.7113374809908812
#>     Attrib V17    -0.36093866773291855
#>     Attrib V18    0.6228680666106353
#>     Attrib V19    0.0984623641750236
#>     Attrib V2    0.49191508752078716
#>     Attrib V20    -0.82872589847077
#>     Attrib V21    0.37832308530689723
#>     Attrib V22    1.3564684991039992
#>     Attrib V23    0.856693159617103
#>     Attrib V24    -0.09446623900050369
#>     Attrib V25    0.20724816459234968
#>     Attrib V26    0.5267462952752764
#>     Attrib V27    1.6978252369069748
#>     Attrib V28    3.2003398373890097
#>     Attrib V29    2.6126393333129725
#>     Attrib V3    -0.15170124429667092
#>     Attrib V30    1.482275175169492
#>     Attrib V31    -1.649250651148954
#>     Attrib V32    -0.496905874663725
#>     Attrib V33    -0.3911437812470415
#>     Attrib V34    -1.3211504405303596
#>     Attrib V35    -0.9288921963536588
#>     Attrib V36    -1.4240508651796413
#>     Attrib V37    -0.5361897575992722
#>     Attrib V38    0.2128280408290671
#>     Attrib V39    1.153687194818629
#>     Attrib V4    1.3453039415404207
#>     Attrib V40    0.16266047441224218
#>     Attrib V41    0.5194018033609494
#>     Attrib V42    0.4641111675930688
#>     Attrib V43    0.5114286090587452
#>     Attrib V44    1.1480758778331546
#>     Attrib V45    0.6784289055255814
#>     Attrib V46    1.2118966564253797
#>     Attrib V47    0.5616025439017843
#>     Attrib V48    0.5094594579402613
#>     Attrib V49    1.2975904635003317
#>     Attrib V5    0.5795251066268089
#>     Attrib V50    -0.5821852246159873
#>     Attrib V51    0.9346311754489426
#>     Attrib V52    1.2125993766571816
#>     Attrib V53    0.897954752407668
#>     Attrib V54    0.0810345555976198
#>     Attrib V55    -0.8690479431844744
#>     Attrib V56    -1.0143879211199291
#>     Attrib V57    -0.4949536967114795
#>     Attrib V58    0.33226521015697
#>     Attrib V59    -0.7906387268889437
#>     Attrib V6    0.028812634978301974
#>     Attrib V60    0.6971228419527282
#>     Attrib V7    -0.9536207400364027
#>     Attrib V8    -1.1006865607860468
#>     Attrib V9    1.051759948584652
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.19859487266872347
#>     Attrib V1    0.03086406480869923
#>     Attrib V10    -0.02646794505472582
#>     Attrib V11    -0.16958562911744424
#>     Attrib V12    -0.10548900824340769
#>     Attrib V13    -0.09307463522618852
#>     Attrib V14    0.10275071809264752
#>     Attrib V15    0.02881904208166693
#>     Attrib V16    0.012334970543949126
#>     Attrib V17    0.04056358455849777
#>     Attrib V18    -0.04725987003777224
#>     Attrib V19    -0.041216191202098
#>     Attrib V2    0.08789180350184754
#>     Attrib V20    -0.09365629053618435
#>     Attrib V21    -0.10509457591489256
#>     Attrib V22    -0.07060779930694909
#>     Attrib V23    -0.016882842303945246
#>     Attrib V24    -0.07035657968410267
#>     Attrib V25    -0.04278662431376957
#>     Attrib V26    -0.08688664236175617
#>     Attrib V27    -0.04200763268625517
#>     Attrib V28    -0.06900795760429627
#>     Attrib V29    0.04924269052597367
#>     Attrib V3    0.13191350217063036
#>     Attrib V30    0.010378615771402599
#>     Attrib V31    0.23153062147404788
#>     Attrib V32    0.05814082191659904
#>     Attrib V33    -0.028226811160473885
#>     Attrib V34    0.0027062921850454047
#>     Attrib V35    0.14479501560198946
#>     Attrib V36    0.29289476223201283
#>     Attrib V37    0.18797363172344403
#>     Attrib V38    -0.09123433307184423
#>     Attrib V39    -0.029831358342173583
#>     Attrib V4    0.012860511883123068
#>     Attrib V40    0.17496600710069835
#>     Attrib V41    0.15947111358234367
#>     Attrib V42    0.2018177213849279
#>     Attrib V43    0.1879050013412547
#>     Attrib V44    0.11398878219905549
#>     Attrib V45    -0.002907366557777193
#>     Attrib V46    -0.040911691136445036
#>     Attrib V47    0.054620863882627164
#>     Attrib V48    -0.029683903836558875
#>     Attrib V49    -0.14211819331445488
#>     Attrib V5    0.002196582636159752
#>     Attrib V50    0.280034759710159
#>     Attrib V51    0.01172648431560581
#>     Attrib V52    -0.05046986785554662
#>     Attrib V53    0.011201331197885873
#>     Attrib V54    -0.005784922662918849
#>     Attrib V55    0.011835052145384026
#>     Attrib V56    0.18680714819500188
#>     Attrib V57    0.16378454248057184
#>     Attrib V58    0.026796009659791002
#>     Attrib V59    0.03685345882445773
#>     Attrib V6    0.19468598529822256
#>     Attrib V60    0.13761840977460155
#>     Attrib V7    0.15305607077234928
#>     Attrib V8    0.18956183857448883
#>     Attrib V9    -0.15430346130940673
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.5901832256104107
#>     Attrib V1    0.723104453621754
#>     Attrib V10    0.4334552308606121
#>     Attrib V11    0.9921721682315474
#>     Attrib V12    1.0522504672312911
#>     Attrib V13    0.1897401160834796
#>     Attrib V14    -0.48205698733677554
#>     Attrib V15    -0.40902206232027416
#>     Attrib V16    -0.6886266240560639
#>     Attrib V17    -0.9812345756528865
#>     Attrib V18    -0.5054419708057387
#>     Attrib V19    -0.8269425797027674
#>     Attrib V2    0.549024422903895
#>     Attrib V20    -0.9116020174552847
#>     Attrib V21    -0.06275397878107666
#>     Attrib V22    -0.04992349329282304
#>     Attrib V23    -0.4096883503063603
#>     Attrib V24    -0.2764184289143194
#>     Attrib V25    7.525237689733726E-4
#>     Attrib V26    0.7366486873870344
#>     Attrib V27    0.8746587008222912
#>     Attrib V28    1.2408121699315264
#>     Attrib V29    0.8127762290138623
#>     Attrib V3    -0.1551553789326237
#>     Attrib V30    0.44390978242345835
#>     Attrib V31    -1.0270071169452366
#>     Attrib V32    -0.4924634785890501
#>     Attrib V33    -0.1624594174998189
#>     Attrib V34    -0.03702637376412557
#>     Attrib V35    0.48840674390440797
#>     Attrib V36    -0.21536543996919968
#>     Attrib V37    0.3591970713843568
#>     Attrib V38    0.3781107511073967
#>     Attrib V39    0.3391362032187701
#>     Attrib V4    1.1552975707859796
#>     Attrib V40    -0.33146115680614757
#>     Attrib V41    0.07029540367953607
#>     Attrib V42    -0.570929061820236
#>     Attrib V43    -0.1894092000097636
#>     Attrib V44    0.37731863383857667
#>     Attrib V45    0.8321319046063744
#>     Attrib V46    0.6391958187738437
#>     Attrib V47    -0.0016209586086851204
#>     Attrib V48    0.3968101645553644
#>     Attrib V49    0.5109996999827292
#>     Attrib V5    0.5248842735339906
#>     Attrib V50    -0.4231900076528148
#>     Attrib V51    0.29258305779012567
#>     Attrib V52    0.46574450834194875
#>     Attrib V53    0.37367289537835846
#>     Attrib V54    0.5920718053066273
#>     Attrib V55    0.06170404848038757
#>     Attrib V56    -0.7275094065529873
#>     Attrib V57    0.1319821383735916
#>     Attrib V58    0.2578230457462948
#>     Attrib V59    0.19345905080348896
#>     Attrib V6    -0.025524732789073395
#>     Attrib V60    0.3734301093154949
#>     Attrib V7    -0.5981116143332422
#>     Attrib V8    -0.4066969739232769
#>     Attrib V9    0.7519730317429458
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    0.18199452702187047
#>     Attrib V1    0.4292624838171873
#>     Attrib V10    -8.164047354941072E-4
#>     Attrib V11    -0.7254546134058192
#>     Attrib V12    -0.720913175325126
#>     Attrib V13    -0.4050963041691279
#>     Attrib V14    0.31788534207142244
#>     Attrib V15    -0.23829349499825153
#>     Attrib V16    -0.36723512973101924
#>     Attrib V17    -0.7127642421258543
#>     Attrib V18    -0.6083752666227102
#>     Attrib V19    -0.35770595199790967
#>     Attrib V2    -0.14112025270327594
#>     Attrib V20    0.5349325118533342
#>     Attrib V21    -0.005836313571232703
#>     Attrib V22    -0.924911304761528
#>     Attrib V23    -0.768107021346004
#>     Attrib V24    -0.6562071169344463
#>     Attrib V25    -0.22240422335877802
#>     Attrib V26    0.2499732042587939
#>     Attrib V27    0.6510029120946993
#>     Attrib V28    0.5320098356060673
#>     Attrib V29    0.26813730148656606
#>     Attrib V3    0.4528794302576296
#>     Attrib V30    -0.6139018655555596
#>     Attrib V31    0.6377716684094279
#>     Attrib V32    -0.3477506611923596
#>     Attrib V33    -1.2837650981020379
#>     Attrib V34    -0.08386384153079417
#>     Attrib V35    1.075120114567783
#>     Attrib V36    2.3890931879875468
#>     Attrib V37    1.5026925701069394
#>     Attrib V38    0.5546023331112255
#>     Attrib V39    0.25443993880234655
#>     Attrib V4    0.6864414966218586
#>     Attrib V40    0.23090022049109557
#>     Attrib V41    -0.33435112968317976
#>     Attrib V42    -0.33627941530285893
#>     Attrib V43    0.12689579024409214
#>     Attrib V44    0.2721290876770707
#>     Attrib V45    0.09998057360304574
#>     Attrib V46    -0.8159711893586044
#>     Attrib V47    -0.4623971685507181
#>     Attrib V48    -0.5088318651723704
#>     Attrib V49    -0.6408028409131626
#>     Attrib V5    -0.29722670665330714
#>     Attrib V50    1.5090719757414075
#>     Attrib V51    -0.5902126014154263
#>     Attrib V52    -0.6574570089331998
#>     Attrib V53    -0.8646500457874322
#>     Attrib V54    -0.18436551617330818
#>     Attrib V55    -0.03648856250583674
#>     Attrib V56    0.11043411718120341
#>     Attrib V57    0.22205010321411964
#>     Attrib V58    -0.5254702800261966
#>     Attrib V59    -0.1299549955576123
#>     Attrib V6    0.24327547183648657
#>     Attrib V60    -0.014899478825008805
#>     Attrib V7    0.6372957059483666
#>     Attrib V8    0.7547668789788191
#>     Attrib V9    -0.9104786632482558
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.041673928886815835
#>     Attrib V1    0.10150723268868589
#>     Attrib V10    -0.17309536679900875
#>     Attrib V11    0.1854818108749047
#>     Attrib V12    0.1694232746431984
#>     Attrib V13    0.1706516027118622
#>     Attrib V14    0.06708969841136889
#>     Attrib V15    4.240881643486722E-4
#>     Attrib V16    -0.04545959081560562
#>     Attrib V17    -0.0709466459262453
#>     Attrib V18    0.0450866773287583
#>     Attrib V19    -0.03883336285424916
#>     Attrib V2    -0.09274244835220327
#>     Attrib V20    0.07288670010914956
#>     Attrib V21    0.2844066873295179
#>     Attrib V22    0.22954965610945519
#>     Attrib V23    0.07617323777681201
#>     Attrib V24    0.38389547884346487
#>     Attrib V25    0.3005534514155905
#>     Attrib V26    -0.2371849767377508
#>     Attrib V27    -0.5359854406101968
#>     Attrib V28    -0.545923197373212
#>     Attrib V29    -0.5834780548720524
#>     Attrib V3    -0.17806350469240026
#>     Attrib V30    -0.3130813216830592
#>     Attrib V31    -0.7385597023565224
#>     Attrib V32    -0.13622718522269345
#>     Attrib V33    0.5512936363570993
#>     Attrib V34    0.18704053202303625
#>     Attrib V35    -0.04532855295514461
#>     Attrib V36    -0.4028930716872829
#>     Attrib V37    -0.397263235854101
#>     Attrib V38    0.14578066846910648
#>     Attrib V39    0.15131826010414304
#>     Attrib V4    0.09037892940900574
#>     Attrib V40    -0.09593065324014885
#>     Attrib V41    0.10382381850607614
#>     Attrib V42    0.1940598733573724
#>     Attrib V43    0.09889232704038652
#>     Attrib V44    -0.10263894502963414
#>     Attrib V45    0.048895923388964924
#>     Attrib V46    0.05736988463068204
#>     Attrib V47    -0.13040127986541133
#>     Attrib V48    0.07228861376823793
#>     Attrib V49    0.11523313969541613
#>     Attrib V5    -0.0014810317791571683
#>     Attrib V50    -0.504832623502097
#>     Attrib V51    0.0659538139541694
#>     Attrib V52    0.08010393357429785
#>     Attrib V53    0.3172557458713558
#>     Attrib V54    0.531778583891602
#>     Attrib V55    0.23890394946520113
#>     Attrib V56    0.0019204397073879014
#>     Attrib V57    0.13587221671910943
#>     Attrib V58    0.3534092880141306
#>     Attrib V59    0.4520759184544429
#>     Attrib V6    -0.0945581686014998
#>     Attrib V60    0.17353565813153363
#>     Attrib V7    -0.08829581123952991
#>     Attrib V8    -0.0020465304438542255
#>     Attrib V9    0.3720337073153976
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.13625605666664392
#>     Attrib V1    0.16870676372724877
#>     Attrib V10    0.05344306490931344
#>     Attrib V11    0.09418940997312833
#>     Attrib V12    0.110542264947248
#>     Attrib V13    0.09259325354627308
#>     Attrib V14    0.09751095490247882
#>     Attrib V15    0.08372854944176603
#>     Attrib V16    0.04391667985692018
#>     Attrib V17    0.02898904090263794
#>     Attrib V18    0.004267463677413766
#>     Attrib V19    -0.032062140847987995
#>     Attrib V2    0.09386357962668636
#>     Attrib V20    -0.034365182966038944
#>     Attrib V21    0.050340321543858584
#>     Attrib V22    -0.02468098130677251
#>     Attrib V23    -0.05148660754916341
#>     Attrib V24    -0.009272547021925122
#>     Attrib V25    0.057520981675941135
#>     Attrib V26    -0.0217973492423926
#>     Attrib V27    -0.10058109307619954
#>     Attrib V28    -0.042529560284345125
#>     Attrib V29    -0.13702325586452235
#>     Attrib V3    0.019540854523545214
#>     Attrib V30    -0.04101120543435965
#>     Attrib V31    -0.1935187407866216
#>     Attrib V32    -0.11336328831194747
#>     Attrib V33    0.0789700003033266
#>     Attrib V34    0.031006218220338732
#>     Attrib V35    0.06971829967988874
#>     Attrib V36    -0.0790304639525704
#>     Attrib V37    -0.03979858200383776
#>     Attrib V38    0.04703546490407832
#>     Attrib V39    0.14277243789750338
#>     Attrib V4    0.15787548343768892
#>     Attrib V40    0.013664395988592908
#>     Attrib V41    0.04704727663253555
#>     Attrib V42    0.09557613156473649
#>     Attrib V43    0.027483647979652526
#>     Attrib V44    0.013249361042988711
#>     Attrib V45    0.07698822323154476
#>     Attrib V46    0.07003743040843775
#>     Attrib V47    -0.020131788632619958
#>     Attrib V48    0.08551944267565326
#>     Attrib V49    0.04858580649425567
#>     Attrib V5    0.031187458823137976
#>     Attrib V50    -0.10128295862391908
#>     Attrib V51    0.081009523250013
#>     Attrib V52    0.10982106838898113
#>     Attrib V53    0.17161223223941388
#>     Attrib V54    0.20643863148295497
#>     Attrib V55    0.10704958802837972
#>     Attrib V56    0.11217569305695023
#>     Attrib V57    0.13255587903365731
#>     Attrib V58    0.20821360636521
#>     Attrib V59    0.24676777798350857
#>     Attrib V6    0.043842873559768944
#>     Attrib V60    0.2084660677776887
#>     Attrib V7    -0.06342493040753877
#>     Attrib V8    0.009852032793479626
#>     Attrib V9    0.1418944277542666
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.008423697334163998
#>     Attrib V1    0.1869368836454242
#>     Attrib V10    -0.21134172030666817
#>     Attrib V11    0.0784270612993025
#>     Attrib V12    0.04907846825066009
#>     Attrib V13    0.1882137848882118
#>     Attrib V14    0.118933213224064
#>     Attrib V15    0.10615681813559343
#>     Attrib V16    0.052474067865039234
#>     Attrib V17    0.0023554893915734673
#>     Attrib V18    0.044588790951916445
#>     Attrib V19    -0.04171211880086004
#>     Attrib V2    0.035098926830024295
#>     Attrib V20    0.07975653443839129
#>     Attrib V21    0.1562337312401768
#>     Attrib V22    0.13319134088429024
#>     Attrib V23    0.06679748678130276
#>     Attrib V24    0.31872608778014877
#>     Attrib V25    0.15621949536614232
#>     Attrib V26    -0.23370038714001518
#>     Attrib V27    -0.578557364935837
#>     Attrib V28    -0.6595815950402633
#>     Attrib V29    -0.7106151296415179
#>     Attrib V3    -0.15822846503996285
#>     Attrib V30    -0.3953253568265845
#>     Attrib V31    -0.6694858330603689
#>     Attrib V32    -0.2079541101281364
#>     Attrib V33    0.4523210111401373
#>     Attrib V34    0.16186198220745737
#>     Attrib V35    -0.021890598115728025
#>     Attrib V36    -0.29215501325798604
#>     Attrib V37    -0.2607936368482157
#>     Attrib V38    0.2152185770705152
#>     Attrib V39    0.07534021539703596
#>     Attrib V4    0.08882131496543809
#>     Attrib V40    -0.1072550620722806
#>     Attrib V41    0.011581376652758399
#>     Attrib V42    0.17727842195322294
#>     Attrib V43    0.09920057100957144
#>     Attrib V44    -0.0030033415998472588
#>     Attrib V45    -0.007218081272788465
#>     Attrib V46    0.0312794787998012
#>     Attrib V47    -0.1480441008599299
#>     Attrib V48    0.055795090299996485
#>     Attrib V49    0.06525028953805108
#>     Attrib V5    -0.022266321420899668
#>     Attrib V50    -0.4386794911470316
#>     Attrib V51    -0.0028567824665066276
#>     Attrib V52    0.039521290812853806
#>     Attrib V53    0.36190968430870624
#>     Attrib V54    0.5675831920644052
#>     Attrib V55    0.23680980089344741
#>     Attrib V56    0.022559949493408303
#>     Attrib V57    0.2094156662710849
#>     Attrib V58    0.28983411530499265
#>     Attrib V59    0.4710940850615702
#>     Attrib V6    -0.0844841368726313
#>     Attrib V60    0.19340814516532848
#>     Attrib V7    0.007951008302312193
#>     Attrib V8    -0.005818254276588231
#>     Attrib V9    0.28098070046001744
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.14655128838614076
#>     Attrib V1    0.07521725176496893
#>     Attrib V10    -0.06919239014726943
#>     Attrib V11    -0.1907120412606696
#>     Attrib V12    -0.185794429356769
#>     Attrib V13    -0.16297438346259838
#>     Attrib V14    0.08311087513641317
#>     Attrib V15    0.02771868041783383
#>     Attrib V16    -0.003101916301759309
#>     Attrib V17    -0.04463810964433811
#>     Attrib V18    0.01186182972772508
#>     Attrib V19    -0.2135890148752205
#>     Attrib V2    0.05513024968762711
#>     Attrib V20    -0.1415026456025931
#>     Attrib V21    -0.1628470460589488
#>     Attrib V22    -0.08728312230171731
#>     Attrib V23    0.10993602685192679
#>     Attrib V24    -0.01718491008980863
#>     Attrib V25    -0.1365291937002092
#>     Attrib V26    -0.18176721600468926
#>     Attrib V27    -0.13535811172558748
#>     Attrib V28    -0.08790500621684624
#>     Attrib V29    0.07026696782633597
#>     Attrib V3    0.24354640089506602
#>     Attrib V30    0.07734298830636012
#>     Attrib V31    0.3816835709876359
#>     Attrib V32    0.14035128822097892
#>     Attrib V33    -0.038836622594722474
#>     Attrib V34    0.07208368333781709
#>     Attrib V35    0.1916346778093708
#>     Attrib V36    0.4515133209219312
#>     Attrib V37    0.216536529792345
#>     Attrib V38    -0.1335516884378414
#>     Attrib V39    -0.07942179290752134
#>     Attrib V4    -0.01914323119376827
#>     Attrib V40    0.20460865949878648
#>     Attrib V41    0.18250939670327926
#>     Attrib V42    0.23397999067024544
#>     Attrib V43    0.19752074416799156
#>     Attrib V44    0.14280895341933586
#>     Attrib V45    -0.01369703192354928
#>     Attrib V46    -0.07500376453198108
#>     Attrib V47    0.03725912248094754
#>     Attrib V48    -0.2086622994160114
#>     Attrib V49    -0.2054082409039672
#>     Attrib V5    0.049015371632403035
#>     Attrib V50    0.3283137359044271
#>     Attrib V51    0.04484981339703714
#>     Attrib V52    -0.002464569924627773
#>     Attrib V53    0.04576310979337596
#>     Attrib V54    -0.060307664584320894
#>     Attrib V55    -0.04521061899780264
#>     Attrib V56    0.1947337174028754
#>     Attrib V57    0.14072655764782535
#>     Attrib V58    0.058064978388169944
#>     Attrib V59    -0.020366846847721175
#>     Attrib V6    0.2636533601628647
#>     Attrib V60    0.07952422379741664
#>     Attrib V7    0.2952006478693039
#>     Attrib V8    0.2956682247707458
#>     Attrib V9    -0.17283909354325605
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
