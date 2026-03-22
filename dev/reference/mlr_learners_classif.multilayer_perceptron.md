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
#>     Threshold    0.09044733736019082
#>     Node 2    2.052807558550924
#>     Node 3    1.818559006285338
#>     Node 4    1.541292933319102
#>     Node 5    -1.6023580800196588
#>     Node 6    1.9818924911503584
#>     Node 7    2.0430054824478794
#>     Node 8    1.774400774114805
#>     Node 9    2.17694987563014
#>     Node 10    -1.6193756330471474
#>     Node 11    1.700833569735842
#>     Node 12    1.9606270873076876
#>     Node 13    0.3584834062776075
#>     Node 14    1.9642710382661943
#>     Node 15    -2.503207695089914
#>     Node 16    0.5225959688449735
#>     Node 17    1.0743016680400892
#>     Node 18    -0.3408805972720404
#>     Node 19    2.1330803586271463
#>     Node 20    2.0934615366075673
#>     Node 21    -1.859484575897024
#>     Node 22    0.9870746432835557
#>     Node 23    1.1900588864103088
#>     Node 24    -1.7109567939122357
#>     Node 25    4.747325775239618
#>     Node 26    0.10988191989080268
#>     Node 27    1.8631913678666927
#>     Node 28    -4.561067700445776
#>     Node 29    1.2050185320642262
#>     Node 30    -0.44525410369563323
#>     Node 31    1.4593484829342755
#>     Node 32    1.2863389230398752
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.07317073478714702
#>     Node 2    -2.1090212426612895
#>     Node 3    -1.8007796024148148
#>     Node 4    -1.500237374721244
#>     Node 5    1.6088846718435763
#>     Node 6    -1.9613069460789498
#>     Node 7    -2.025398481053173
#>     Node 8    -1.8044892212591968
#>     Node 9    -2.159605130868462
#>     Node 10    1.5510810666175407
#>     Node 11    -1.6678689665588087
#>     Node 12    -2.0382922546725997
#>     Node 13    -0.30692937037156875
#>     Node 14    -1.898521293739649
#>     Node 15    2.5051200135889102
#>     Node 16    -0.5385323087578571
#>     Node 17    -1.0400266884728113
#>     Node 18    0.36781224136573565
#>     Node 19    -2.129879117460092
#>     Node 20    -2.084743087458939
#>     Node 21    1.9120363221413663
#>     Node 22    -1.0344879381856888
#>     Node 23    -1.234027250973776
#>     Node 24    1.6982728954068802
#>     Node 25    -4.759622891206462
#>     Node 26    -0.1983044370149484
#>     Node 27    -1.9044071779087157
#>     Node 28    4.538248919250249
#>     Node 29    -1.2356275765203102
#>     Node 30    0.5075224904369317
#>     Node 31    -1.4011330187876927
#>     Node 32    -1.3011317167957248
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.08888974328578271
#>     Attrib V1    -0.11867828168213755
#>     Attrib V10    -0.06548255507634614
#>     Attrib V11    0.26580761491518184
#>     Attrib V12    0.046836862724039946
#>     Attrib V13    -0.24607528047966026
#>     Attrib V14    -0.18070297417317085
#>     Attrib V15    0.10688228916625504
#>     Attrib V16    0.3994721133640819
#>     Attrib V17    0.13086598248475959
#>     Attrib V18    0.16171750909162638
#>     Attrib V19    0.20505155674698186
#>     Attrib V2    -0.10955025174615453
#>     Attrib V20    0.42449864485359723
#>     Attrib V21    1.0123914972336023
#>     Attrib V22    0.5319678348114067
#>     Attrib V23    0.39018724787772135
#>     Attrib V24    0.34114571566284135
#>     Attrib V25    -0.1222822998062806
#>     Attrib V26    -0.3793018563174994
#>     Attrib V27    -0.5621091274029205
#>     Attrib V28    -0.12099354590238985
#>     Attrib V29    -0.9408832269046448
#>     Attrib V3    -0.36534151605227044
#>     Attrib V30    0.0068605881093243785
#>     Attrib V31    -1.1550520061174097
#>     Attrib V32    0.09364731469778506
#>     Attrib V33    0.872595232908892
#>     Attrib V34    0.1954843518709619
#>     Attrib V35    0.22138214805172726
#>     Attrib V36    -0.580383908452813
#>     Attrib V37    -0.9252718985783243
#>     Attrib V38    -0.18915030609169411
#>     Attrib V39    0.23938395351728692
#>     Attrib V4    0.24170631922961627
#>     Attrib V40    -0.2914991192952366
#>     Attrib V41    0.2947418117598948
#>     Attrib V42    0.710063798983841
#>     Attrib V43    0.6399828594532097
#>     Attrib V44    1.2968523924965898
#>     Attrib V45    0.7340503600325826
#>     Attrib V46    -0.16448227477567293
#>     Attrib V47    -0.2903933721958365
#>     Attrib V48    0.36937588773509067
#>     Attrib V49    0.3102175927965849
#>     Attrib V5    -0.04503847505430969
#>     Attrib V50    -0.6964967112777835
#>     Attrib V51    0.19878358815971872
#>     Attrib V52    0.2207819548770986
#>     Attrib V53    0.10609711151447376
#>     Attrib V54    0.5137951184024522
#>     Attrib V55    0.3233559237540395
#>     Attrib V56    0.34820860077861476
#>     Attrib V57    -0.13499745669732058
#>     Attrib V58    0.5152146644425767
#>     Attrib V59    0.6588646525432552
#>     Attrib V6    -0.30734581782957376
#>     Attrib V60    -0.3136041240268588
#>     Attrib V7    -0.3650662302184588
#>     Attrib V8    0.325071769165515
#>     Attrib V9    0.7227761801098598
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.17387843213855114
#>     Attrib V1    0.04401704267804525
#>     Attrib V10    -0.2095424077171076
#>     Attrib V11    0.04857974084260313
#>     Attrib V12    -0.03329283400824633
#>     Attrib V13    -0.17106083282339068
#>     Attrib V14    -0.005957399850142048
#>     Attrib V15    0.3302776368880437
#>     Attrib V16    0.29462349171588315
#>     Attrib V17    -0.04200499074512767
#>     Attrib V18    -0.03129708165349926
#>     Attrib V19    0.06991709520920866
#>     Attrib V2    0.0835375899337164
#>     Attrib V20    0.3562638518688077
#>     Attrib V21    0.8190050544145757
#>     Attrib V22    0.3893402847756061
#>     Attrib V23    0.1658367325526852
#>     Attrib V24    0.13873961908394275
#>     Attrib V25    -0.251842560398475
#>     Attrib V26    -0.5088724884132084
#>     Attrib V27    -0.6256305880393305
#>     Attrib V28    -0.24520559684060902
#>     Attrib V29    -0.8221594247536246
#>     Attrib V3    -0.17863648772875787
#>     Attrib V30    0.06593369170176296
#>     Attrib V31    -0.8012519175168061
#>     Attrib V32    0.06289916013392698
#>     Attrib V33    0.7258149231733698
#>     Attrib V34    0.0075178257606874155
#>     Attrib V35    -0.06811794627956226
#>     Attrib V36    -0.6965448644295569
#>     Attrib V37    -0.8842925682924374
#>     Attrib V38    -0.3134615988874671
#>     Attrib V39    0.11303812841968808
#>     Attrib V4    0.32089042988926597
#>     Attrib V40    -0.2573057207959298
#>     Attrib V41    0.17550830401825127
#>     Attrib V42    0.5904192411362535
#>     Attrib V43    0.40057232740098203
#>     Attrib V44    0.9291793556961078
#>     Attrib V45    0.5603556836244786
#>     Attrib V46    -0.1941648312841353
#>     Attrib V47    -0.30529359636956505
#>     Attrib V48    0.1753637823666498
#>     Attrib V49    0.19210753788689108
#>     Attrib V5    0.026962593165456458
#>     Attrib V50    -0.6230487302363493
#>     Attrib V51    -0.03175420604619959
#>     Attrib V52    0.13650564378804167
#>     Attrib V53    0.12955868844890073
#>     Attrib V54    0.5830703493705619
#>     Attrib V55    0.37193001205498066
#>     Attrib V56    0.25935691075246714
#>     Attrib V57    0.06456145483590352
#>     Attrib V58    0.5178080575719547
#>     Attrib V59    0.5715613591302077
#>     Attrib V6    -0.17692697635344382
#>     Attrib V60    -0.14473493663469691
#>     Attrib V7    -0.15281733394932728
#>     Attrib V8    0.37740281666829606
#>     Attrib V9    0.4815524279848728
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.15482746715014872
#>     Attrib V1    -0.15451548957510836
#>     Attrib V10    -0.08932565411768587
#>     Attrib V11    0.23857676522370128
#>     Attrib V12    0.0883870996878045
#>     Attrib V13    -0.19839358582414207
#>     Attrib V14    -0.20341765335035583
#>     Attrib V15    0.03938869524640859
#>     Attrib V16    0.19516653077491716
#>     Attrib V17    0.045974289807797705
#>     Attrib V18    0.09245758374210875
#>     Attrib V19    0.10777051940992925
#>     Attrib V2    -0.07303526620630445
#>     Attrib V20    0.23671308224421075
#>     Attrib V21    0.7965334269548714
#>     Attrib V22    0.4132345416809738
#>     Attrib V23    0.2839171377583945
#>     Attrib V24    0.17768894732696136
#>     Attrib V25    -0.18621143355383285
#>     Attrib V26    -0.22650498417177783
#>     Attrib V27    -0.2574186129827048
#>     Attrib V28    0.20001000352545728
#>     Attrib V29    -0.4361633570580022
#>     Attrib V3    -0.3066111296512434
#>     Attrib V30    0.15099715546252243
#>     Attrib V31    -0.851823094017144
#>     Attrib V32    -0.1110210282905725
#>     Attrib V33    0.47813161652949904
#>     Attrib V34    0.05646053951908286
#>     Attrib V35    0.28376266049460813
#>     Attrib V36    -0.33631943529846775
#>     Attrib V37    -0.4423055816641427
#>     Attrib V38    -0.06404613761426456
#>     Attrib V39    0.3320036727518684
#>     Attrib V4    0.1491684121951566
#>     Attrib V40    -0.1774996259602891
#>     Attrib V41    0.1845941669384263
#>     Attrib V42    0.4178097581210711
#>     Attrib V43    0.4208119314973677
#>     Attrib V44    1.1259169464369716
#>     Attrib V45    0.7347237400419658
#>     Attrib V46    -0.08828799761806667
#>     Attrib V47    -0.20104543260667215
#>     Attrib V48    0.3582017234739162
#>     Attrib V49    0.297068383793627
#>     Attrib V5    -0.03459053759206843
#>     Attrib V50    -0.611824761531533
#>     Attrib V51    0.1610076382115471
#>     Attrib V52    0.14494432416580033
#>     Attrib V53    0.1617256431143997
#>     Attrib V54    0.18094071795831232
#>     Attrib V55    0.09854615781582632
#>     Attrib V56    0.20223763935189396
#>     Attrib V57    -0.1065349891002291
#>     Attrib V58    0.3294786742977312
#>     Attrib V59    0.4108843658573459
#>     Attrib V6    -0.2815078132525593
#>     Attrib V60    -0.2971337905996623
#>     Attrib V7    -0.43933343175770007
#>     Attrib V8    0.05220992776802022
#>     Attrib V9    0.6110098790124902
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.5307495727285688
#>     Attrib V1    0.09620551264397996
#>     Attrib V10    -0.186919386979847
#>     Attrib V11    -0.5881125861744894
#>     Attrib V12    -0.6636040842456479
#>     Attrib V13    -0.041036288628009454
#>     Attrib V14    0.322529260960912
#>     Attrib V15    0.21009232541317768
#>     Attrib V16    0.17858625691301058
#>     Attrib V17    0.474279217769072
#>     Attrib V18    0.15877934631221152
#>     Attrib V19    0.3100502678677762
#>     Attrib V2    -0.09904410599330561
#>     Attrib V20    0.4967087736607558
#>     Attrib V21    -0.18790834938360038
#>     Attrib V22    -0.11208864391250117
#>     Attrib V23    -0.171902896570174
#>     Attrib V24    -0.2939803122455869
#>     Attrib V25    0.3490013389603478
#>     Attrib V26    0.23194121663274517
#>     Attrib V27    -0.20046312354816753
#>     Attrib V28    -0.70700953897113
#>     Attrib V29    -0.10963144214334096
#>     Attrib V3    0.2489045727977317
#>     Attrib V30    -0.316083390285998
#>     Attrib V31    0.32967222050155554
#>     Attrib V32    -0.09125178522723588
#>     Attrib V33    -0.1390198771949596
#>     Attrib V34    0.08649688625404853
#>     Attrib V35    -0.03708139772823396
#>     Attrib V36    1.0353177204903627
#>     Attrib V37    0.7529860470682743
#>     Attrib V38    0.5860187283660805
#>     Attrib V39    -0.12591255303525678
#>     Attrib V4    -0.21707572891647997
#>     Attrib V40    -0.01609902308823277
#>     Attrib V41    -0.7196207178863617
#>     Attrib V42    -0.1764424206530549
#>     Attrib V43    -0.067033749726736
#>     Attrib V44    -0.5183078426749341
#>     Attrib V45    -0.4121684590752738
#>     Attrib V46    -0.250868403926521
#>     Attrib V47    -0.2100379086428399
#>     Attrib V48    -0.6820663035920534
#>     Attrib V49    -0.42483189288539125
#>     Attrib V5    -0.09568139237276736
#>     Attrib V50    0.7023025983650014
#>     Attrib V51    -0.3639347753513009
#>     Attrib V52    -0.4056722473754552
#>     Attrib V53    -0.48130733497037353
#>     Attrib V54    0.18230796923422576
#>     Attrib V55    0.2205852587875469
#>     Attrib V56    0.29743602370147937
#>     Attrib V57    0.14341344901001493
#>     Attrib V58    -0.4886452774593255
#>     Attrib V59    -0.12292531369059771
#>     Attrib V6    0.036202979922902064
#>     Attrib V60    0.07539617521783432
#>     Attrib V7    0.6237792052153552
#>     Attrib V8    0.05480074470092422
#>     Attrib V9    -0.818468351527821
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.10803889101615505
#>     Attrib V1    -0.024212428545353156
#>     Attrib V10    -0.18946862973818146
#>     Attrib V11    0.11666438648114907
#>     Attrib V12    -0.01735152021077952
#>     Attrib V13    -0.27680722865618657
#>     Attrib V14    -0.1488699354721157
#>     Attrib V15    0.20653588233037995
#>     Attrib V16    0.4512898896659465
#>     Attrib V17    0.03166391025013918
#>     Attrib V18    0.06435708365762287
#>     Attrib V19    0.0974517526745843
#>     Attrib V2    -0.022382924255816325
#>     Attrib V20    0.35636487416622814
#>     Attrib V21    0.8607862605157313
#>     Attrib V22    0.38257403519341526
#>     Attrib V23    0.23698967668289697
#>     Attrib V24    0.3242785665646017
#>     Attrib V25    -0.030913844100294494
#>     Attrib V26    -0.3949343185411704
#>     Attrib V27    -0.6673492738499504
#>     Attrib V28    -0.4502973064655745
#>     Attrib V29    -1.1264111020812433
#>     Attrib V3    -0.3034424119390575
#>     Attrib V30    -0.1627219356503898
#>     Attrib V31    -0.9077203586217665
#>     Attrib V32    0.19083596018041887
#>     Attrib V33    0.9400886578007353
#>     Attrib V34    0.253544475466924
#>     Attrib V35    0.13818378556906596
#>     Attrib V36    -0.6664596686602965
#>     Attrib V37    -0.986082934696223
#>     Attrib V38    -0.3683009054053201
#>     Attrib V39    0.08084907628295285
#>     Attrib V4    0.3022086442243276
#>     Attrib V40    -0.2855444456945269
#>     Attrib V41    0.2849607526281241
#>     Attrib V42    0.6534801257606898
#>     Attrib V43    0.4391146212095749
#>     Attrib V44    0.9160592601335454
#>     Attrib V45    0.6234315756868727
#>     Attrib V46    -0.14831224376177057
#>     Attrib V47    -0.2998849161228635
#>     Attrib V48    0.2719076030396456
#>     Attrib V49    0.26386181009792437
#>     Attrib V5    -0.046069370857736734
#>     Attrib V50    -0.5430408946834698
#>     Attrib V51    0.09606485490329542
#>     Attrib V52    0.10040692303501035
#>     Attrib V53    0.08793477811020767
#>     Attrib V54    0.6040916093263515
#>     Attrib V55    0.40652650339112567
#>     Attrib V56    0.3466408237120135
#>     Attrib V57    0.07041187657352249
#>     Attrib V58    0.5454083877029013
#>     Attrib V59    0.6451031099765965
#>     Attrib V6    -0.15749828836433488
#>     Attrib V60    -0.2038499588121538
#>     Attrib V7    -0.15158920120723876
#>     Attrib V8    0.4226821083732891
#>     Attrib V9    0.6376295488333461
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.33288831736539126
#>     Attrib V1    -0.1402446850713199
#>     Attrib V10    0.28751609904470754
#>     Attrib V11    0.7558737863660456
#>     Attrib V12    0.37755819348689595
#>     Attrib V13    -0.17055428523242505
#>     Attrib V14    -0.5852686344125761
#>     Attrib V15    -0.2873651339697889
#>     Attrib V16    0.11215938481810735
#>     Attrib V17    -0.02681608533262045
#>     Attrib V18    0.18781752665264528
#>     Attrib V19    0.16652493293555218
#>     Attrib V2    -0.049099325081888384
#>     Attrib V20    0.17005089566467402
#>     Attrib V21    0.8932828961615576
#>     Attrib V22    0.7109705704073601
#>     Attrib V23    0.7269365000530208
#>     Attrib V24    0.5973963511299133
#>     Attrib V25    0.22379828515888064
#>     Attrib V26    0.2621359174801205
#>     Attrib V27    0.168282909214988
#>     Attrib V28    0.6291372305690605
#>     Attrib V29    -0.16705794044432878
#>     Attrib V3    -0.4969128868602767
#>     Attrib V30    0.25481536870076993
#>     Attrib V31    -0.8539588551878216
#>     Attrib V32    -0.1668130163703825
#>     Attrib V33    0.19827367368054333
#>     Attrib V34    -0.02821225947692194
#>     Attrib V35    0.5668682875997924
#>     Attrib V36    -0.26366302609947384
#>     Attrib V37    -0.1508407798399777
#>     Attrib V38    0.01743678884727424
#>     Attrib V39    0.45525753483465936
#>     Attrib V4    0.0355389519930309
#>     Attrib V40    -0.06764585621884245
#>     Attrib V41    0.4851460139227567
#>     Attrib V42    0.25787117514876734
#>     Attrib V43    0.4224224194795298
#>     Attrib V44    1.4176830420663384
#>     Attrib V45    0.8820267911535334
#>     Attrib V46    0.2585930923830907
#>     Attrib V47    0.23828653611647638
#>     Attrib V48    0.6411504013836741
#>     Attrib V49    0.4434928990583574
#>     Attrib V5    -0.10966239166906848
#>     Attrib V50    -0.6233714259706282
#>     Attrib V51    0.4479876303107093
#>     Attrib V52    0.3698812246100832
#>     Attrib V53    0.21834355703311137
#>     Attrib V54    0.16899153174584194
#>     Attrib V55    -0.13116562633819562
#>     Attrib V56    0.1577922935483839
#>     Attrib V57    -0.3559385549476709
#>     Attrib V58    0.3964220287234143
#>     Attrib V59    0.29745202807088883
#>     Attrib V6    -0.30544553778882305
#>     Attrib V60    -0.2076762115907692
#>     Attrib V7    -0.6345434242777532
#>     Attrib V8    0.03450351607082542
#>     Attrib V9    1.0817485604582502
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.4441280846576941
#>     Attrib V1    0.04947063686160392
#>     Attrib V10    0.35122090478365603
#>     Attrib V11    0.7248696244575904
#>     Attrib V12    0.4977599180379527
#>     Attrib V13    -0.0055918729319903385
#>     Attrib V14    -0.4574088079918296
#>     Attrib V15    -0.1731059396456513
#>     Attrib V16    -0.06157321602754511
#>     Attrib V17    -0.39535747524497283
#>     Attrib V18    -0.21150646714903704
#>     Attrib V19    -0.19801499602666953
#>     Attrib V2    0.15963455389717582
#>     Attrib V20    -0.3157434231383031
#>     Attrib V21    0.3343941780764183
#>     Attrib V22    0.1294372540048373
#>     Attrib V23    0.17036861666948477
#>     Attrib V24    0.21239291192914117
#>     Attrib V25    -0.14914303465533918
#>     Attrib V26    0.12906330341380678
#>     Attrib V27    0.42159239049702857
#>     Attrib V28    0.9530119971928862
#>     Attrib V29    0.3769731527251373
#>     Attrib V3    -0.25910510752504795
#>     Attrib V30    0.5046768296014855
#>     Attrib V31    -0.4222909192953223
#>     Attrib V32    -0.08599733657025391
#>     Attrib V33    0.032453046886502225
#>     Attrib V34    -0.0845846299673142
#>     Attrib V35    0.31667752831832013
#>     Attrib V36    -0.48753561367908443
#>     Attrib V37    -0.24879043644837656
#>     Attrib V38    -0.2294756084435337
#>     Attrib V39    0.28378575751738266
#>     Attrib V4    0.10649239095595324
#>     Attrib V40    -0.03974614274963445
#>     Attrib V41    0.3777675326059069
#>     Attrib V42    -0.08270652503103892
#>     Attrib V43    0.08198091889036022
#>     Attrib V44    0.7325948608754432
#>     Attrib V45    0.4537396071907571
#>     Attrib V46    0.20811466682761182
#>     Attrib V47    0.2187051740654926
#>     Attrib V48    0.5637202014142667
#>     Attrib V49    0.24282064577023688
#>     Attrib V5    0.006998061294810916
#>     Attrib V50    -0.6893513035916299
#>     Attrib V51    0.32261806093856726
#>     Attrib V52    0.3403922107863193
#>     Attrib V53    0.4933244932568652
#>     Attrib V54    -0.01185069939382324
#>     Attrib V55    -0.09277613790968312
#>     Attrib V56    -0.21193143169071965
#>     Attrib V57    -0.15417788644602975
#>     Attrib V58    0.36685849682515115
#>     Attrib V59    0.12270237773575104
#>     Attrib V6    -0.23274494571878113
#>     Attrib V60    0.02050361057231546
#>     Attrib V7    -0.5705044031041813
#>     Attrib V8    -0.033168507371222955
#>     Attrib V9    0.8591727562405987
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.34806178999106874
#>     Attrib V1    -0.1154192570014592
#>     Attrib V10    0.5059085388819684
#>     Attrib V11    0.8984599266562621
#>     Attrib V12    0.7578078324389469
#>     Attrib V13    0.03807094582639574
#>     Attrib V14    -0.704483118833809
#>     Attrib V15    -0.4194379270497739
#>     Attrib V16    -0.23350893288389657
#>     Attrib V17    -0.4332099568450731
#>     Attrib V18    -0.1652774506541777
#>     Attrib V19    -0.3097643988672984
#>     Attrib V2    0.0230008624047664
#>     Attrib V20    -0.5387218211336959
#>     Attrib V21    0.21348144379999362
#>     Attrib V22    0.17634673031397793
#>     Attrib V23    0.44479863097372063
#>     Attrib V24    0.6625462576608177
#>     Attrib V25    0.378399576185742
#>     Attrib V26    0.4857038251059086
#>     Attrib V27    0.536659940379475
#>     Attrib V28    0.8308025144067819
#>     Attrib V29    -0.03035341108832638
#>     Attrib V3    -0.41092413215471985
#>     Attrib V30    0.28468996489250853
#>     Attrib V31    -0.32350420986179484
#>     Attrib V32    0.22948522140656966
#>     Attrib V33    0.38326329860404773
#>     Attrib V34    0.3683782326294799
#>     Attrib V35    0.6890295102710421
#>     Attrib V36    -0.5384982193785924
#>     Attrib V37    -0.3862355686110278
#>     Attrib V38    -0.49853410633918765
#>     Attrib V39    0.30195831037899434
#>     Attrib V4    -0.08267681700106347
#>     Attrib V40    0.14256838819139012
#>     Attrib V41    0.7777359540123469
#>     Attrib V42    0.10839426483594286
#>     Attrib V43    0.23684396256300952
#>     Attrib V44    0.7177782817086987
#>     Attrib V45    0.4305559509792658
#>     Attrib V46    0.3063901812570773
#>     Attrib V47    0.4055126625296346
#>     Attrib V48    0.7717301896479634
#>     Attrib V49    0.3775721375222998
#>     Attrib V5    -0.10435496835028238
#>     Attrib V50    -0.7224293349678694
#>     Attrib V51    0.5757417054536694
#>     Attrib V52    0.44127034387385394
#>     Attrib V53    0.4626908216830676
#>     Attrib V54    -0.002576991319088537
#>     Attrib V55    -0.11146222092838268
#>     Attrib V56    -0.07617722256394563
#>     Attrib V57    -0.35513833304237236
#>     Attrib V58    0.4290701655722181
#>     Attrib V59    0.15367751319587253
#>     Attrib V6    -0.26407739457888213
#>     Attrib V60    -0.11789470776101553
#>     Attrib V7    -0.7775072541854732
#>     Attrib V8    -0.1846085072651252
#>     Attrib V9    0.9782164935913273
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.528285783836785
#>     Attrib V1    0.037296365543279295
#>     Attrib V10    -0.24393207527249225
#>     Attrib V11    -0.6159157448167732
#>     Attrib V12    -0.6284215330042437
#>     Attrib V13    -0.06736876610716779
#>     Attrib V14    0.24989410759576003
#>     Attrib V15    0.045296477134271144
#>     Attrib V16    0.1832280901239894
#>     Attrib V17    0.4386174632648309
#>     Attrib V18    0.24610249194334322
#>     Attrib V19    0.36194757446700226
#>     Attrib V2    -0.17950814508509166
#>     Attrib V20    0.5218977580054465
#>     Attrib V21    -0.13458504361728213
#>     Attrib V22    -0.020171672333814575
#>     Attrib V23    -0.07761156746924963
#>     Attrib V24    -0.19518076424170522
#>     Attrib V25    0.39951573504022564
#>     Attrib V26    0.34765344063546494
#>     Attrib V27    -0.14189913419849234
#>     Attrib V28    -0.6397161111511525
#>     Attrib V29    -0.21600615661680467
#>     Attrib V3    0.1373806807227827
#>     Attrib V30    -0.3485364151433113
#>     Attrib V31    0.20255179284961106
#>     Attrib V32    -0.22774785836598269
#>     Attrib V33    -0.1088780720523633
#>     Attrib V34    0.17998127486946255
#>     Attrib V35    0.10947569961991448
#>     Attrib V36    1.1503417541041936
#>     Attrib V37    0.8726167619471707
#>     Attrib V38    0.6979968866831754
#>     Attrib V39    -0.04637491111782482
#>     Attrib V4    -0.2306804236888726
#>     Attrib V40    0.04749389047844353
#>     Attrib V41    -0.5896499608192848
#>     Attrib V42    -0.21503771043225348
#>     Attrib V43    -0.04098156722458569
#>     Attrib V44    -0.35980901563665646
#>     Attrib V45    -0.24759985124583264
#>     Attrib V46    -0.19324300310688197
#>     Attrib V47    -0.17903712096108776
#>     Attrib V48    -0.6274767589085272
#>     Attrib V49    -0.36346205184522745
#>     Attrib V5    -0.15681582260612087
#>     Attrib V50    0.6573117995649903
#>     Attrib V51    -0.37949385202706226
#>     Attrib V52    -0.418387545412571
#>     Attrib V53    -0.4431006590739236
#>     Attrib V54    0.15850216922998742
#>     Attrib V55    0.099237434933785
#>     Attrib V56    0.20497117701958478
#>     Attrib V57    0.10706907491034907
#>     Attrib V58    -0.4793289741322947
#>     Attrib V59    -0.15919326250592067
#>     Attrib V6    -0.023230183206402282
#>     Attrib V60    -0.05347371338080394
#>     Attrib V7    0.48689211927875153
#>     Attrib V8    -0.047362580507442256
#>     Attrib V9    -0.7947947568450547
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.07725543036299683
#>     Attrib V1    -0.19305824558086926
#>     Attrib V10    -0.1059018024396775
#>     Attrib V11    0.21499834429179046
#>     Attrib V12    0.059172626034301644
#>     Attrib V13    -0.298882477855034
#>     Attrib V14    -0.24453448394499377
#>     Attrib V15    0.02209209484067735
#>     Attrib V16    0.33361560096514853
#>     Attrib V17    0.1662916087028021
#>     Attrib V18    0.178461541719485
#>     Attrib V19    0.204411881468037
#>     Attrib V2    -0.14155621710084026
#>     Attrib V20    0.37167588610884805
#>     Attrib V21    0.7792703105999355
#>     Attrib V22    0.42852612711866206
#>     Attrib V23    0.2976012518566039
#>     Attrib V24    0.24254201880763226
#>     Attrib V25    -0.049589268309704344
#>     Attrib V26    -0.28419783759681083
#>     Attrib V27    -0.35621469953071677
#>     Attrib V28    0.032686071914353965
#>     Attrib V29    -0.6793384350081619
#>     Attrib V3    -0.4146777241301634
#>     Attrib V30    0.03157759332037392
#>     Attrib V31    -0.98956019688399
#>     Attrib V32    -0.055803033383861146
#>     Attrib V33    0.6205238707576985
#>     Attrib V34    0.19526136346203518
#>     Attrib V35    0.370994455828535
#>     Attrib V36    -0.28043876960908787
#>     Attrib V37    -0.564555660229463
#>     Attrib V38    -0.0056398696891522
#>     Attrib V39    0.26583593153503343
#>     Attrib V4    0.16277065284788905
#>     Attrib V40    -0.2520750580052575
#>     Attrib V41    0.13677688814630418
#>     Attrib V42    0.4439564309113472
#>     Attrib V43    0.471604422572567
#>     Attrib V44    1.1886696677795998
#>     Attrib V45    0.7838576035816436
#>     Attrib V46    -0.061559817529548866
#>     Attrib V47    -0.15769258116582002
#>     Attrib V48    0.3704063483127384
#>     Attrib V49    0.26972105952713754
#>     Attrib V5    -0.050363342711027555
#>     Attrib V50    -0.557332994771429
#>     Attrib V51    0.20358600568623827
#>     Attrib V52    0.1232037366394432
#>     Attrib V53    0.05299338589128676
#>     Attrib V54    0.4521420381941609
#>     Attrib V55    0.25285656428937997
#>     Attrib V56    0.27871445169831083
#>     Attrib V57    -0.05441536524701049
#>     Attrib V58    0.403889756078544
#>     Attrib V59    0.43681305478881494
#>     Attrib V6    -0.2269871638316994
#>     Attrib V60    -0.31410469520024004
#>     Attrib V7    -0.40010276478032586
#>     Attrib V8    0.19305263475371973
#>     Attrib V9    0.6163063605813747
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.20566946857982868
#>     Attrib V1    -0.09971532099450084
#>     Attrib V10    -0.21774209665121683
#>     Attrib V11    0.19774275462114907
#>     Attrib V12    -0.05692655057511195
#>     Attrib V13    -0.2810269254709015
#>     Attrib V14    -0.1363535544501795
#>     Attrib V15    0.17815431281689123
#>     Attrib V16    0.40565294369635213
#>     Attrib V17    0.028633194675866086
#>     Attrib V18    0.040965794944841365
#>     Attrib V19    0.1528043463881545
#>     Attrib V2    0.0010032432191233913
#>     Attrib V20    0.34687062559567955
#>     Attrib V21    0.9118262517860695
#>     Attrib V22    0.4907762370345353
#>     Attrib V23    0.2966976532083403
#>     Attrib V24    0.25491156648358676
#>     Attrib V25    -0.19045239815338103
#>     Attrib V26    -0.47013558459009286
#>     Attrib V27    -0.5891176348704793
#>     Attrib V28    -0.25704137842777014
#>     Attrib V29    -0.9227666887148466
#>     Attrib V3    -0.3636926357329913
#>     Attrib V30    -0.04367067718515021
#>     Attrib V31    -1.0060636684934685
#>     Attrib V32    0.05902190691382214
#>     Attrib V33    0.8951736478821674
#>     Attrib V34    0.19615514791321456
#>     Attrib V35    0.10280262725179781
#>     Attrib V36    -0.6568018620783952
#>     Attrib V37    -0.9684138511117429
#>     Attrib V38    -0.2541356614374404
#>     Attrib V39    0.11307368631256877
#>     Attrib V4    0.31274741787029847
#>     Attrib V40    -0.26523660459737686
#>     Attrib V41    0.2097866298628904
#>     Attrib V42    0.6303905979132504
#>     Attrib V43    0.566106265092616
#>     Attrib V44    1.079570848930052
#>     Attrib V45    0.7207706327114939
#>     Attrib V46    -0.08258173949529647
#>     Attrib V47    -0.29830549685338004
#>     Attrib V48    0.32881230922271093
#>     Attrib V49    0.25880430012829403
#>     Attrib V5    -0.015920213108603396
#>     Attrib V50    -0.6901100631382139
#>     Attrib V51    0.0811114669093864
#>     Attrib V52    0.1498645330858895
#>     Attrib V53    0.13270944071635873
#>     Attrib V54    0.6033518251305194
#>     Attrib V55    0.3560652654152218
#>     Attrib V56    0.3322026699441154
#>     Attrib V57    0.054554436752713605
#>     Attrib V58    0.5451984957307167
#>     Attrib V59    0.6253866275309495
#>     Attrib V6    -0.2596387926096008
#>     Attrib V60    -0.22263041293783098
#>     Attrib V7    -0.20889700764263677
#>     Attrib V8    0.3932121580320257
#>     Attrib V9    0.6494109701720232
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.14014167259595683
#>     Attrib V1    0.059881561821964475
#>     Attrib V10    -0.025612217230060356
#>     Attrib V11    0.07172600433804643
#>     Attrib V12    0.035375157832243646
#>     Attrib V13    0.030420975451607463
#>     Attrib V14    0.029109975309610497
#>     Attrib V15    0.03200939115313919
#>     Attrib V16    0.01703478293187681
#>     Attrib V17    0.005769890408093026
#>     Attrib V18    -0.010315138888686922
#>     Attrib V19    -0.03202563226448633
#>     Attrib V2    0.059819618396475545
#>     Attrib V20    0.013495226520518709
#>     Attrib V21    0.06249719592070119
#>     Attrib V22    -0.08108756755655697
#>     Attrib V23    -0.024477555196028764
#>     Attrib V24    -0.005738436354911628
#>     Attrib V25    -0.011452696039096046
#>     Attrib V26    -0.07690880961727137
#>     Attrib V27    -1.3703672782353554E-4
#>     Attrib V28    -0.006850034518793337
#>     Attrib V29    -0.07759229246776059
#>     Attrib V3    0.07944635573149073
#>     Attrib V30    0.011658881522075032
#>     Attrib V31    -0.1755235387645006
#>     Attrib V32    -0.0032369056857903156
#>     Attrib V33    0.09283658785910426
#>     Attrib V34    0.09849703634893002
#>     Attrib V35    0.07650592575472703
#>     Attrib V36    -0.051337536827453005
#>     Attrib V37    0.008650977795494046
#>     Attrib V38    0.03060851232273714
#>     Attrib V39    0.1657893262969866
#>     Attrib V4    0.12977343417429812
#>     Attrib V40    0.047991004670685684
#>     Attrib V41    0.062226306046398214
#>     Attrib V42    0.07105836777159037
#>     Attrib V43    0.02748208033068756
#>     Attrib V44    0.1414950411932365
#>     Attrib V45    0.08096886404313189
#>     Attrib V46    0.034946089794837674
#>     Attrib V47    0.03425498448316362
#>     Attrib V48    0.08921388670904357
#>     Attrib V49    0.07536047767497446
#>     Attrib V5    0.07577063939092056
#>     Attrib V50    -0.13826694952147459
#>     Attrib V51    0.042185629640678526
#>     Attrib V52    0.05201799509926046
#>     Attrib V53    0.08165938152834543
#>     Attrib V54    0.07043959970270751
#>     Attrib V55    0.12352945681890437
#>     Attrib V56    0.08513216978989764
#>     Attrib V57    0.08601279589548493
#>     Attrib V58    0.12292892105025054
#>     Attrib V59    0.17842265236475854
#>     Attrib V6    -0.004192278804170849
#>     Attrib V60    0.05160166810100774
#>     Attrib V7    -0.031351755994218494
#>     Attrib V8    0.007541531672050522
#>     Attrib V9    0.12697189995087235
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.19870515164952873
#>     Attrib V1    0.029188329523902243
#>     Attrib V10    -0.11198678822431027
#>     Attrib V11    0.2659160949045433
#>     Attrib V12    0.07898381095270327
#>     Attrib V13    -0.24297445512752844
#>     Attrib V14    -0.19009726203738517
#>     Attrib V15    0.22865996056291438
#>     Attrib V16    0.30726349938048214
#>     Attrib V17    -0.013024721214516729
#>     Attrib V18    0.0151870134414613
#>     Attrib V19    0.044141136803393745
#>     Attrib V2    0.003753995862735845
#>     Attrib V20    0.3030160196904612
#>     Attrib V21    0.8413815952530472
#>     Attrib V22    0.40152119044773754
#>     Attrib V23    0.27905033386304245
#>     Attrib V24    0.26424984410064456
#>     Attrib V25    -0.12060684415235202
#>     Attrib V26    -0.37707979055222807
#>     Attrib V27    -0.6364045220214406
#>     Attrib V28    -0.3622345642180617
#>     Attrib V29    -1.057975495479202
#>     Attrib V3    -0.3717403053871807
#>     Attrib V30    -0.0392284827184818
#>     Attrib V31    -0.8108434976430223
#>     Attrib V32    0.15287982813516995
#>     Attrib V33    0.8854135434453626
#>     Attrib V34    0.15532654316548053
#>     Attrib V35    0.07828819571519136
#>     Attrib V36    -0.7628905345317165
#>     Attrib V37    -1.0056680758986918
#>     Attrib V38    -0.40802137294380414
#>     Attrib V39    0.09666459635984857
#>     Attrib V4    0.25890118481992846
#>     Attrib V40    -0.29163816163603157
#>     Attrib V41    0.18806786888593507
#>     Attrib V42    0.5472451002869512
#>     Attrib V43    0.40223395887600155
#>     Attrib V44    1.0003301834560485
#>     Attrib V45    0.573582504573321
#>     Attrib V46    -0.13559727109003786
#>     Attrib V47    -0.28241474247740767
#>     Attrib V48    0.3598367767336337
#>     Attrib V49    0.3395824945999699
#>     Attrib V5    -0.04445871083846119
#>     Attrib V50    -0.6125117242855297
#>     Attrib V51    0.05867741303512822
#>     Attrib V52    0.10870754359025493
#>     Attrib V53    0.08656070884351966
#>     Attrib V54    0.6159048513077711
#>     Attrib V55    0.38826441193270805
#>     Attrib V56    0.3009165607227622
#>     Attrib V57    0.022608277646538718
#>     Attrib V58    0.5496249432931217
#>     Attrib V59    0.5829816097773224
#>     Attrib V6    -0.18666654004457903
#>     Attrib V60    -0.13346989362986414
#>     Attrib V7    -0.18132053962265576
#>     Attrib V8    0.3438570364074694
#>     Attrib V9    0.6451131821470766
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.7226227637525208
#>     Attrib V1    -0.2970449157730449
#>     Attrib V10    -0.42489962535207265
#>     Attrib V11    -1.0353613848370111
#>     Attrib V12    -1.0785390171004015
#>     Attrib V13    -0.31771865467298577
#>     Attrib V14    0.1461453531303872
#>     Attrib V15    0.1571913238839136
#>     Attrib V16    0.408045274582646
#>     Attrib V17    0.7574769997404543
#>     Attrib V18    0.3911018348772032
#>     Attrib V19    0.6090653868536278
#>     Attrib V2    -0.4847271431653801
#>     Attrib V20    0.7432396532121159
#>     Attrib V21    -0.08459113608187675
#>     Attrib V22    0.1609771329040078
#>     Attrib V23    6.192182058348048E-4
#>     Attrib V24    -0.0421391727015962
#>     Attrib V25    0.649077657518358
#>     Attrib V26    0.268246514653848
#>     Attrib V27    -0.6765387632099783
#>     Attrib V28    -1.2290170896467683
#>     Attrib V29    -0.7919695428845634
#>     Attrib V3    -0.03534004755127958
#>     Attrib V30    -0.6921468304322453
#>     Attrib V31    0.004482002640091933
#>     Attrib V32    -0.02069042410778326
#>     Attrib V33    0.24953861769556349
#>     Attrib V34    0.3220373677759514
#>     Attrib V35    0.04730346909280414
#>     Attrib V36    1.3087655778707712
#>     Attrib V37    0.6962169596300356
#>     Attrib V38    0.6658225038015163
#>     Attrib V39    -0.1561604401784209
#>     Attrib V4    -0.27472422255661755
#>     Attrib V40    -0.17221829464499963
#>     Attrib V41    -0.8066941235754217
#>     Attrib V42    -0.11086587553380264
#>     Attrib V43    -0.0014949034048828253
#>     Attrib V44    -0.3557307148494127
#>     Attrib V45    -0.2533944138913207
#>     Attrib V46    -0.34429222150983213
#>     Attrib V47    -0.35875754112754316
#>     Attrib V48    -0.7209144656308165
#>     Attrib V49    -0.4022180838071595
#>     Attrib V5    -0.29143812044093237
#>     Attrib V50    0.7688223925439892
#>     Attrib V51    -0.407290756306049
#>     Attrib V52    -0.5710853703203794
#>     Attrib V53    -0.8166816455789611
#>     Attrib V54    0.34649281293001993
#>     Attrib V55    0.1830139121248436
#>     Attrib V56    0.3405706782575555
#>     Attrib V57    0.031186616272251947
#>     Attrib V58    -0.5883487963961904
#>     Attrib V59    -0.10510252049735896
#>     Attrib V6    -0.09310157832543753
#>     Attrib V60    -0.3803005804995814
#>     Attrib V7    0.676021225587457
#>     Attrib V8    0.042718514828508025
#>     Attrib V9    -0.9499308767890181
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.050933944357582694
#>     Attrib V1    0.07777095991073565
#>     Attrib V10    -0.025770346494862924
#>     Attrib V11    0.08900339658478744
#>     Attrib V12    0.06307189821135425
#>     Attrib V13    -0.004787161569318344
#>     Attrib V14    -1.925175866343955E-4
#>     Attrib V15    0.07273138744698655
#>     Attrib V16    0.12858831579738514
#>     Attrib V17    0.0038133642168343518
#>     Attrib V18    0.012476634864336238
#>     Attrib V19    -0.00653008226975164
#>     Attrib V2    0.03809120312032063
#>     Attrib V20    -0.03224044007707924
#>     Attrib V21    0.05867899079947874
#>     Attrib V22    -0.09568462161852685
#>     Attrib V23    -0.13645124463181488
#>     Attrib V24    -0.011541003826340364
#>     Attrib V25    -0.0765722569642837
#>     Attrib V26    -0.1334721924247977
#>     Attrib V27    -0.09346457991141353
#>     Attrib V28    0.04072011308630565
#>     Attrib V29    -0.1343268442130526
#>     Attrib V3    0.014108620416648164
#>     Attrib V30    -0.02128167227103667
#>     Attrib V31    -0.23519480561729483
#>     Attrib V32    -0.006528409242129012
#>     Attrib V33    0.10990375111120684
#>     Attrib V34    0.046739141768125006
#>     Attrib V35    0.03192758707772098
#>     Attrib V36    -0.1591124845062617
#>     Attrib V37    -0.0849168217760581
#>     Attrib V38    0.006776527063210338
#>     Attrib V39    0.1186698214752497
#>     Attrib V4    0.14763784051145115
#>     Attrib V40    -0.061967140696962644
#>     Attrib V41    0.035276870007043035
#>     Attrib V42    0.10639943118608693
#>     Attrib V43    0.06125877939459325
#>     Attrib V44    0.1765892565201111
#>     Attrib V45    0.16326124981674298
#>     Attrib V46    -0.012330242110269554
#>     Attrib V47    -0.06023174162892153
#>     Attrib V48    0.09380419005593395
#>     Attrib V49    0.006277833400643696
#>     Attrib V5    0.0573350798546582
#>     Attrib V50    -0.1551494965057298
#>     Attrib V51    0.07899592783231657
#>     Attrib V52    0.1264475620228394
#>     Attrib V53    0.19158415841868626
#>     Attrib V54    0.12727631347754956
#>     Attrib V55    0.20264364439955643
#>     Attrib V56    0.09787722007048413
#>     Attrib V57    0.12106498726331404
#>     Attrib V58    0.21703267513195704
#>     Attrib V59    0.14612657261623352
#>     Attrib V6    -0.03957161394847533
#>     Attrib V60    0.026017406838223393
#>     Attrib V7    -0.11106074325016559
#>     Attrib V8    0.023986724013213914
#>     Attrib V9    0.19733038346928206
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.13091180492297524
#>     Attrib V1    0.04986097892814054
#>     Attrib V10    -0.09619199601291116
#>     Attrib V11    0.1245350515525902
#>     Attrib V12    0.005260749403562645
#>     Attrib V13    -0.16148022252180078
#>     Attrib V14    -0.06736741563093637
#>     Attrib V15    0.19313062157910718
#>     Attrib V16    0.19818147303195108
#>     Attrib V17    -0.0076802137414667595
#>     Attrib V18    0.022749278791096048
#>     Attrib V19    0.054441298350595725
#>     Attrib V2    0.09711786677223128
#>     Attrib V20    0.1249398704364472
#>     Attrib V21    0.41327162534497475
#>     Attrib V22    0.19733532110041463
#>     Attrib V23    0.01107024061147267
#>     Attrib V24    0.03995585173650826
#>     Attrib V25    -0.24132605035521132
#>     Attrib V26    -0.30447407539763505
#>     Attrib V27    -0.2702708105262584
#>     Attrib V28    -0.02359938881227447
#>     Attrib V29    -0.37117469240183915
#>     Attrib V3    -0.16571680781929787
#>     Attrib V30    0.09809128031921065
#>     Attrib V31    -0.4613165964231045
#>     Attrib V32    -0.07573958732972111
#>     Attrib V33    0.3516729391333183
#>     Attrib V34    -0.030567590207294073
#>     Attrib V35    0.08131009157329938
#>     Attrib V36    -0.38934849525721116
#>     Attrib V37    -0.4348561089512404
#>     Attrib V38    -0.06889425053090878
#>     Attrib V39    0.15473399077477568
#>     Attrib V4    0.18367443898544167
#>     Attrib V40    -0.20844451180079843
#>     Attrib V41    0.07094133922095885
#>     Attrib V42    0.20694986709106034
#>     Attrib V43    0.27623554865272987
#>     Attrib V44    0.627557599663471
#>     Attrib V45    0.41530745376921874
#>     Attrib V46    -0.12263672587183079
#>     Attrib V47    -0.2302118243389419
#>     Attrib V48    0.21336899666358256
#>     Attrib V49    0.08201938914967428
#>     Attrib V5    0.004116769893380675
#>     Attrib V50    -0.4230618114921886
#>     Attrib V51    0.03112264157560071
#>     Attrib V52    0.09645644274166153
#>     Attrib V53    0.14318203659859252
#>     Attrib V54    0.21588852966411762
#>     Attrib V55    0.22616684864051703
#>     Attrib V56    0.15479149607854692
#>     Attrib V57    0.08131382044787121
#>     Attrib V58    0.24868245482496829
#>     Attrib V59    0.29157467702530127
#>     Attrib V6    -0.12980400132400796
#>     Attrib V60    -0.09152519402081032
#>     Attrib V7    -0.26025279906666543
#>     Attrib V8    0.12767668613852054
#>     Attrib V9    0.3361614918718697
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.28447154779527234
#>     Attrib V1    0.028079761378694484
#>     Attrib V10    0.013225270143648453
#>     Attrib V11    -0.19630489211680652
#>     Attrib V12    -0.2353208062100776
#>     Attrib V13    -0.0721405775196597
#>     Attrib V14    0.04910569400263142
#>     Attrib V15    -0.061764548170547925
#>     Attrib V16    -0.04595831600075098
#>     Attrib V17    0.02802886142672984
#>     Attrib V18    0.10804559219700371
#>     Attrib V19    -0.026553470433633892
#>     Attrib V2    0.031158575146673015
#>     Attrib V20    0.025951616756645913
#>     Attrib V21    -0.07730341434118577
#>     Attrib V22    -0.027222361262513345
#>     Attrib V23    0.050571944672284624
#>     Attrib V24    -0.01804873503381589
#>     Attrib V25    0.03273879342465557
#>     Attrib V26    -0.03684075770395666
#>     Attrib V27    -0.08990658404555786
#>     Attrib V28    -0.2200976545842714
#>     Attrib V29    -0.07608277545343708
#>     Attrib V3    0.1947146179364292
#>     Attrib V30    -0.08881609948352148
#>     Attrib V31    0.18481795762855716
#>     Attrib V32    0.05499095922073057
#>     Attrib V33    0.016870588712773617
#>     Attrib V34    0.09416828636571715
#>     Attrib V35    0.04937520239895368
#>     Attrib V36    0.41272613476987263
#>     Attrib V37    0.2760850625274441
#>     Attrib V38    0.14614873289259622
#>     Attrib V39    0.018767674915136447
#>     Attrib V4    0.007595392822738564
#>     Attrib V40    0.09209221500735845
#>     Attrib V41    -0.05621717595088265
#>     Attrib V42    -0.01721314706891553
#>     Attrib V43    0.008126454125384427
#>     Attrib V44    -0.12556006951715326
#>     Attrib V45    -0.21211694568619155
#>     Attrib V46    -0.06526731658379217
#>     Attrib V47    0.024857340705222743
#>     Attrib V48    -0.15357469953472475
#>     Attrib V49    -0.0407752289004419
#>     Attrib V5    0.01707750794101382
#>     Attrib V50    0.20043542927676716
#>     Attrib V51    0.07735124578284254
#>     Attrib V52    -0.04810080372092629
#>     Attrib V53    -0.03166455610753805
#>     Attrib V54    0.005136773832225195
#>     Attrib V55    0.03904871676210368
#>     Attrib V56    0.08270503800390705
#>     Attrib V57    0.05372380358327428
#>     Attrib V58    -0.010195025320487563
#>     Attrib V59    0.03496032605999095
#>     Attrib V6    0.0831546618573366
#>     Attrib V60    0.19630963177955005
#>     Attrib V7    0.26006287570628833
#>     Attrib V8    0.12890342676421854
#>     Attrib V9    -0.12632302936524784
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.1887978839553639
#>     Attrib V1    -0.11177118414379507
#>     Attrib V10    -0.1314852516305751
#>     Attrib V11    0.24339926343721713
#>     Attrib V12    0.1390486378236342
#>     Attrib V13    -0.2275421797886111
#>     Attrib V14    -0.17532755057953145
#>     Attrib V15    0.18525381152351103
#>     Attrib V16    0.3444019221887164
#>     Attrib V17    0.06053111866623108
#>     Attrib V18    0.06977043711038029
#>     Attrib V19    0.1707682614853386
#>     Attrib V2    -0.04187124390306677
#>     Attrib V20    0.33223256297982323
#>     Attrib V21    0.9276655159567945
#>     Attrib V22    0.5306848944297349
#>     Attrib V23    0.3758318971946368
#>     Attrib V24    0.41681514669037306
#>     Attrib V25    -0.05616591891684815
#>     Attrib V26    -0.42359726483973686
#>     Attrib V27    -0.6404596731874336
#>     Attrib V28    -0.2719725089332641
#>     Attrib V29    -1.0889285826898598
#>     Attrib V3    -0.3958455020861487
#>     Attrib V30    -0.10706278333923332
#>     Attrib V31    -0.9962290847994076
#>     Attrib V32    0.14374785504144014
#>     Attrib V33    0.9948472493882805
#>     Attrib V34    0.21557931793134896
#>     Attrib V35    0.1507027691363113
#>     Attrib V36    -0.7705475322964415
#>     Attrib V37    -1.1573266340700896
#>     Attrib V38    -0.4127501878726887
#>     Attrib V39    0.12501913612888244
#>     Attrib V4    0.3273796360556737
#>     Attrib V40    -0.2787776007330678
#>     Attrib V41    0.30393475809638
#>     Attrib V42    0.7126006352551724
#>     Attrib V43    0.4743790213803952
#>     Attrib V44    1.061811288627286
#>     Attrib V45    0.7449173433599866
#>     Attrib V46    -0.12470310652473213
#>     Attrib V47    -0.30560874157191004
#>     Attrib V48    0.39681502943652663
#>     Attrib V49    0.43307939577647653
#>     Attrib V5    -0.0114672291711869
#>     Attrib V50    -0.7064510508169765
#>     Attrib V51    0.15234799099154206
#>     Attrib V52    0.2158503701657863
#>     Attrib V53    0.12837765105933668
#>     Attrib V54    0.6174056844512381
#>     Attrib V55    0.4185156077775991
#>     Attrib V56    0.32670560216509986
#>     Attrib V57    -0.06372242901620616
#>     Attrib V58    0.6443596273894903
#>     Attrib V59    0.6505467904285127
#>     Attrib V6    -0.1928879848800354
#>     Attrib V60    -0.23711688800068673
#>     Attrib V7    -0.23518064772733768
#>     Attrib V8    0.3429937372790918
#>     Attrib V9    0.7139972287505898
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.08027363109108565
#>     Attrib V1    -0.22240132718852307
#>     Attrib V10    -0.0180609383947773
#>     Attrib V11    0.2685249436457373
#>     Attrib V12    0.048883961075565724
#>     Attrib V13    -0.31254016865803874
#>     Attrib V14    -0.347651930987309
#>     Attrib V15    -0.07638274994929437
#>     Attrib V16    0.26626033407987004
#>     Attrib V17    0.16753816345627046
#>     Attrib V18    0.24220672987220246
#>     Attrib V19    0.3121880752112509
#>     Attrib V2    -0.160656240829918
#>     Attrib V20    0.42552002916116355
#>     Attrib V21    1.052422945326402
#>     Attrib V22    0.7708194201205085
#>     Attrib V23    0.5511673566375469
#>     Attrib V24    0.2959807167883169
#>     Attrib V25    -0.04926331674857032
#>     Attrib V26    -0.05964436061599955
#>     Attrib V27    -0.14458874685617448
#>     Attrib V28    0.28512912517621786
#>     Attrib V29    -0.43341146479098525
#>     Attrib V3    -0.5462770016192388
#>     Attrib V30    0.22486601997430616
#>     Attrib V31    -1.1759516598706239
#>     Attrib V32    -0.26926238798276525
#>     Attrib V33    0.5177576332815199
#>     Attrib V34    0.08155496002499481
#>     Attrib V35    0.550691874199791
#>     Attrib V36    -0.015611574710923113
#>     Attrib V37    -0.22114827431801742
#>     Attrib V38    0.25641870848430537
#>     Attrib V39    0.5235336658850829
#>     Attrib V4    0.15607280580794797
#>     Attrib V40    -0.23812801795590677
#>     Attrib V41    0.24504411052651623
#>     Attrib V42    0.4171208901829271
#>     Attrib V43    0.6742471933544227
#>     Attrib V44    1.662467816041463
#>     Attrib V45    1.0492027168334759
#>     Attrib V46    0.03893968886031552
#>     Attrib V47    -0.12526654410340696
#>     Attrib V48    0.4823474816264621
#>     Attrib V49    0.4092258299995126
#>     Attrib V5    -0.06042092447069044
#>     Attrib V50    -0.6235032292655432
#>     Attrib V51    0.3399647819046795
#>     Attrib V52    0.2487611794814638
#>     Attrib V53    -0.06640797820736546
#>     Attrib V54    0.3087649053067533
#>     Attrib V55    0.09533859514953133
#>     Attrib V56    0.32767446782296666
#>     Attrib V57    -0.33964663156720903
#>     Attrib V58    0.3304668977801743
#>     Attrib V59    0.4980182847275422
#>     Attrib V6    -0.31670259192729344
#>     Attrib V60    -0.45907891944439644
#>     Attrib V7    -0.5189251591852313
#>     Attrib V8    -0.0022129552267914987
#>     Attrib V9    0.7705048425468931
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.5076666583630085
#>     Attrib V1    0.16617722778430907
#>     Attrib V10    -0.33580951355229216
#>     Attrib V11    -0.7860382616155552
#>     Attrib V12    -0.7572501242995557
#>     Attrib V13    -0.02054969131537623
#>     Attrib V14    0.4799585291155787
#>     Attrib V15    0.34985421988844295
#>     Attrib V16    0.30223174790231394
#>     Attrib V17    0.4882745964150921
#>     Attrib V18    0.15895089955701325
#>     Attrib V19    0.32197167447268943
#>     Attrib V2    -0.14620277479873522
#>     Attrib V20    0.6612895102523682
#>     Attrib V21    -0.16959007863879097
#>     Attrib V22    -0.21975583492292874
#>     Attrib V23    -0.3913183249872633
#>     Attrib V24    -0.46628662788287306
#>     Attrib V25    0.20959316815111775
#>     Attrib V26    0.1265617569053474
#>     Attrib V27    -0.3126511324705871
#>     Attrib V28    -0.7043722204381941
#>     Attrib V29    0.06865088033738052
#>     Attrib V3    0.2272650398178209
#>     Attrib V30    -0.26341580971905
#>     Attrib V31    0.3521986715075703
#>     Attrib V32    -0.22431789854338666
#>     Attrib V33    -0.23131002271014692
#>     Attrib V34    -0.06468605859216642
#>     Attrib V35    -0.2768993424009867
#>     Attrib V36    1.038149243093776
#>     Attrib V37    0.8994511117738716
#>     Attrib V38    0.7498379429732295
#>     Attrib V39    -0.08894274806463365
#>     Attrib V4    -0.13932256180513916
#>     Attrib V40    -0.06592530112777827
#>     Attrib V41    -0.8297706556538343
#>     Attrib V42    -0.2788576925693575
#>     Attrib V43    -0.1260872256696392
#>     Attrib V44    -0.6634520364255674
#>     Attrib V45    -0.474796367930762
#>     Attrib V46    -0.3262876228007821
#>     Attrib V47    -0.3512892169485609
#>     Attrib V48    -0.8146572988217309
#>     Attrib V49    -0.5411126813677157
#>     Attrib V5    -0.0968056853280353
#>     Attrib V50    0.7374415545081409
#>     Attrib V51    -0.4515766248587759
#>     Attrib V52    -0.39179177831293344
#>     Attrib V53    -0.4325101477533871
#>     Attrib V54    0.2612433389336479
#>     Attrib V55    0.3216016087729992
#>     Attrib V56    0.3115293987572685
#>     Attrib V57    0.3318943693125074
#>     Attrib V58    -0.5188740654916691
#>     Attrib V59    -0.09865604749164666
#>     Attrib V6    0.0527146407366043
#>     Attrib V60    0.14773196195448
#>     Attrib V7    0.7660121795244312
#>     Attrib V8    0.11715569669084736
#>     Attrib V9    -0.9055652640484161
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.08103773628618528
#>     Attrib V1    0.2117425802516987
#>     Attrib V10    -0.11513691181589868
#>     Attrib V11    0.10637942794766211
#>     Attrib V12    0.06505370463956206
#>     Attrib V13    -0.06348526036896925
#>     Attrib V14    0.14765079016374646
#>     Attrib V15    0.23721553700934364
#>     Attrib V16    0.24447186228330756
#>     Attrib V17    -0.02238432846335362
#>     Attrib V18    -0.006014849765151581
#>     Attrib V19    -0.007906593911697778
#>     Attrib V2    0.1532778549147866
#>     Attrib V20    0.16171158284869477
#>     Attrib V21    0.3024329624503861
#>     Attrib V22    -0.040178659078692884
#>     Attrib V23    -0.17711662025136662
#>     Attrib V24    -0.10877175680892244
#>     Attrib V25    -0.3633135802413332
#>     Attrib V26    -0.4172178242003677
#>     Attrib V27    -0.3367156779890663
#>     Attrib V28    -0.12941552296404837
#>     Attrib V29    -0.1904298011356064
#>     Attrib V3    -0.033880827691415615
#>     Attrib V30    0.039601762668221734
#>     Attrib V31    -0.37083508359285583
#>     Attrib V32    -0.11434350843049518
#>     Attrib V33    0.1536146328898642
#>     Attrib V34    -0.09803609066524563
#>     Attrib V35    -0.10933480643318448
#>     Attrib V36    -0.38057686312465794
#>     Attrib V37    -0.3354111586598871
#>     Attrib V38    -0.08130315220772903
#>     Attrib V39    0.0646036091989955
#>     Attrib V4    0.2623976058784515
#>     Attrib V40    -0.1550237443896112
#>     Attrib V41    -0.08542743469047767
#>     Attrib V42    0.13786907473845975
#>     Attrib V43    0.1952635903225792
#>     Attrib V44    0.3603465070755993
#>     Attrib V45    0.2103770029412499
#>     Attrib V46    -0.07699848839479329
#>     Attrib V47    -0.23141545779137654
#>     Attrib V48    0.11280050886441374
#>     Attrib V49    0.042520351411975
#>     Attrib V5    0.1294477269058485
#>     Attrib V50    -0.3084890556809939
#>     Attrib V51    -0.03458316218359359
#>     Attrib V52    0.14185664526002667
#>     Attrib V53    0.2321647652994804
#>     Attrib V54    0.3514641613069051
#>     Attrib V55    0.3606692547233529
#>     Attrib V56    0.17908229572379467
#>     Attrib V57    0.17352915295650626
#>     Attrib V58    0.3498245199323949
#>     Attrib V59    0.3470244948290418
#>     Attrib V6    -0.03904399167533069
#>     Attrib V60    0.09264571072568552
#>     Attrib V7    -0.06915211323833423
#>     Attrib V8    0.12660473894358376
#>     Attrib V9    0.2452783855542222
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.1126624729777873
#>     Attrib V1    0.08418575138897881
#>     Attrib V10    -0.2296172891303451
#>     Attrib V11    0.09323597317197987
#>     Attrib V12    0.04999288095142544
#>     Attrib V13    -0.11595540844176416
#>     Attrib V14    0.008315117139541021
#>     Attrib V15    0.20955459660332684
#>     Attrib V16    0.2387974573062146
#>     Attrib V17    0.08962146987938333
#>     Attrib V18    0.0872144724688407
#>     Attrib V19    0.11025918350563411
#>     Attrib V2    0.03276398948070971
#>     Attrib V20    0.23470389551127926
#>     Attrib V21    0.498700644689068
#>     Attrib V22    0.20410788950067457
#>     Attrib V23    0.08863513391572814
#>     Attrib V24    0.05884376232729741
#>     Attrib V25    -0.1591863632271091
#>     Attrib V26    -0.3069127615977002
#>     Attrib V27    -0.4758738825395005
#>     Attrib V28    -0.25563172871246637
#>     Attrib V29    -0.5861241493940718
#>     Attrib V3    -0.1191604017816148
#>     Attrib V30    -0.06335411660822296
#>     Attrib V31    -0.615695206566626
#>     Attrib V32    -0.034917692695457386
#>     Attrib V33    0.425458085360951
#>     Attrib V34    0.028310513866001905
#>     Attrib V35    0.07790688138239238
#>     Attrib V36    -0.36063050875597974
#>     Attrib V37    -0.446427465625766
#>     Attrib V38    -0.12236712528384248
#>     Attrib V39    0.11495273090601563
#>     Attrib V4    0.2796304595883955
#>     Attrib V40    -0.22064447499207052
#>     Attrib V41    0.04678136715110872
#>     Attrib V42    0.2835961770219964
#>     Attrib V43    0.309773600550444
#>     Attrib V44    0.6341977671047269
#>     Attrib V45    0.43630999851035174
#>     Attrib V46    -0.1275247283389186
#>     Attrib V47    -0.20128344389394726
#>     Attrib V48    0.10915788532642196
#>     Attrib V49    0.11363229637021846
#>     Attrib V5    0.05352233205878634
#>     Attrib V50    -0.44001252249333045
#>     Attrib V51    -0.023883326086714115
#>     Attrib V52    0.1732541268303414
#>     Attrib V53    0.2123625773827783
#>     Attrib V54    0.43102875857150735
#>     Attrib V55    0.32324335753171773
#>     Attrib V56    0.25038217000643487
#>     Attrib V57    0.05818116077543386
#>     Attrib V58    0.32558241863611787
#>     Attrib V59    0.45683083901055177
#>     Attrib V6    -0.09496565974020924
#>     Attrib V60    -0.10328165300373728
#>     Attrib V7    -0.1147880230957553
#>     Attrib V8    0.14961661192789133
#>     Attrib V9    0.31670939904615353
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.5294001557143744
#>     Attrib V1    -0.0924639674268373
#>     Attrib V10    -0.3143461539529499
#>     Attrib V11    -0.7442142978520435
#>     Attrib V12    -0.73931002779799
#>     Attrib V13    -0.16268079889997775
#>     Attrib V14    0.2249143505700798
#>     Attrib V15    0.16511227714433402
#>     Attrib V16    0.23495472144882423
#>     Attrib V17    0.6057483683975714
#>     Attrib V18    0.2704421145903506
#>     Attrib V19    0.4159674637351144
#>     Attrib V2    -0.27418206858003985
#>     Attrib V20    0.5877706839239853
#>     Attrib V21    -0.1294205165369567
#>     Attrib V22    -0.02607058458011213
#>     Attrib V23    -0.042524206398700866
#>     Attrib V24    -0.12435726193080841
#>     Attrib V25    0.44227341234363654
#>     Attrib V26    0.2199756530705787
#>     Attrib V27    -0.4044009106040982
#>     Attrib V28    -0.900831535983465
#>     Attrib V29    -0.4589973862591005
#>     Attrib V3    0.09814043461120356
#>     Attrib V30    -0.467260333443168
#>     Attrib V31    0.21196523968621378
#>     Attrib V32    0.01438325793514156
#>     Attrib V33    -1.386041660544288E-5
#>     Attrib V34    0.16107553357156465
#>     Attrib V35    -0.06245578933652883
#>     Attrib V36    0.9952198178852997
#>     Attrib V37    0.572064092728895
#>     Attrib V38    0.5152273190430741
#>     Attrib V39    -0.1921050173884845
#>     Attrib V4    -0.17735447414586697
#>     Attrib V40    -0.04036522703258017
#>     Attrib V41    -0.6261912195135668
#>     Attrib V42    -0.1511435505302564
#>     Attrib V43    0.02359902699888606
#>     Attrib V44    -0.45389700321481063
#>     Attrib V45    -0.3905696662869018
#>     Attrib V46    -0.26839337903956495
#>     Attrib V47    -0.2520951968318919
#>     Attrib V48    -0.669624644114868
#>     Attrib V49    -0.4186362003412237
#>     Attrib V5    -0.19586975177196764
#>     Attrib V50    0.6498802151818636
#>     Attrib V51    -0.3582204720099061
#>     Attrib V52    -0.3595616447385422
#>     Attrib V53    -0.5463070485529266
#>     Attrib V54    0.19390401330320242
#>     Attrib V55    0.156350813694999
#>     Attrib V56    0.2995358602909087
#>     Attrib V57    0.19935600911492782
#>     Attrib V58    -0.46399313839585404
#>     Attrib V59    -0.11735555783956766
#>     Attrib V6    0.03599403330665826
#>     Attrib V60    -0.11168473457827822
#>     Attrib V7    0.5496216101748866
#>     Attrib V8    0.022042497550356765
#>     Attrib V9    -0.7488030725412103
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    1.0604926560221968
#>     Attrib V1    0.1833272541738055
#>     Attrib V10    0.8065250819376433
#>     Attrib V11    1.4197070240978613
#>     Attrib V12    1.6402145015406657
#>     Attrib V13    0.598101584562701
#>     Attrib V14    -0.40716857078484614
#>     Attrib V15    -0.6682119720880736
#>     Attrib V16    -0.7735361486692905
#>     Attrib V17    -0.5400326771304022
#>     Attrib V18    0.15719400468377065
#>     Attrib V19    -0.12178955872719081
#>     Attrib V2    0.4801427763855065
#>     Attrib V20    -0.5163544049644719
#>     Attrib V21    1.0218653508044704
#>     Attrib V22    1.0301996305547858
#>     Attrib V23    1.2578633945516986
#>     Attrib V24    0.8111559201555119
#>     Attrib V25    -0.36285989673155356
#>     Attrib V26    0.1698508445596346
#>     Attrib V27    1.1980124034978918
#>     Attrib V28    2.3997936132321467
#>     Attrib V29    1.5967806016560842
#>     Attrib V3    0.08329214701524043
#>     Attrib V30    0.969698331762339
#>     Attrib V31    -0.4724373626599604
#>     Attrib V32    -0.4108907270704771
#>     Attrib V33    -0.8530249030041289
#>     Attrib V34    -0.5221858978310486
#>     Attrib V35    0.44676367866465955
#>     Attrib V36    -1.2607742480609543
#>     Attrib V37    -0.49334723107953116
#>     Attrib V38    -0.7091756378690968
#>     Attrib V39    0.9683468733115257
#>     Attrib V4    0.3516169684338429
#>     Attrib V40    0.7639360162032568
#>     Attrib V41    1.8055089114342677
#>     Attrib V42    0.12665641904508113
#>     Attrib V43    -0.14469697508276974
#>     Attrib V44    0.5615931643768898
#>     Attrib V45    0.08548686382989418
#>     Attrib V46    0.4434329611540005
#>     Attrib V47    0.6788989201008245
#>     Attrib V48    1.1940075356609492
#>     Attrib V49    1.0172582001064954
#>     Attrib V5    0.5693972821890363
#>     Attrib V50    -0.7045138578686005
#>     Attrib V51    1.1420827118714065
#>     Attrib V52    1.00552391810922
#>     Attrib V53    1.3240170962388622
#>     Attrib V54    -0.7744843294235914
#>     Attrib V55    -0.7651765669896453
#>     Attrib V56    -0.6408447826995787
#>     Attrib V57    -0.7342858071722057
#>     Attrib V58    0.6311101029744841
#>     Attrib V59    0.009759358531289097
#>     Attrib V6    0.29316069398746925
#>     Attrib V60    0.5553499162599248
#>     Attrib V7    -1.1681783168722493
#>     Attrib V8    -0.47088246040460335
#>     Attrib V9    1.486816199184404
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.2004741322400735
#>     Attrib V1    0.06356684343528234
#>     Attrib V10    0.005233191008894231
#>     Attrib V11    -0.017463266700890958
#>     Attrib V12    0.009344442208203699
#>     Attrib V13    -0.041555004534904426
#>     Attrib V14    0.06999069456802826
#>     Attrib V15    0.022079252608344098
#>     Attrib V16    0.0367626540554853
#>     Attrib V17    0.06025030064473372
#>     Attrib V18    -0.024702534079062234
#>     Attrib V19    0.0348951514203645
#>     Attrib V2    0.08896050080156269
#>     Attrib V20    -0.020748467779681378
#>     Attrib V21    -0.0049706641656687735
#>     Attrib V22    -0.06432642502061899
#>     Attrib V23    -0.05847612714579031
#>     Attrib V24    -0.053493446951107124
#>     Attrib V25    -0.03613801705452505
#>     Attrib V26    -0.05472019288500791
#>     Attrib V27    -0.014389152629335251
#>     Attrib V28    -0.010595048900234253
#>     Attrib V29    -0.06435011408065967
#>     Attrib V3    0.03927718728233921
#>     Attrib V30    -0.01781545008751497
#>     Attrib V31    -0.059187381690749004
#>     Attrib V32    -0.02435404182430135
#>     Attrib V33    0.09444204747492073
#>     Attrib V34    0.05961891211380553
#>     Attrib V35    0.15110224107600667
#>     Attrib V36    0.12709169589215324
#>     Attrib V37    0.1550377658380696
#>     Attrib V38    0.06748676673820338
#>     Attrib V39    0.12465490553285015
#>     Attrib V4    0.13287737927673055
#>     Attrib V40    0.06637011950061583
#>     Attrib V41    0.04527583066737255
#>     Attrib V42    0.06311287643683541
#>     Attrib V43    0.06087771666507758
#>     Attrib V44    0.06397250405527664
#>     Attrib V45    0.047732445468838564
#>     Attrib V46    0.0068646963165068416
#>     Attrib V47    0.011356666140111132
#>     Attrib V48    0.10341775558374453
#>     Attrib V49    0.027405167511635294
#>     Attrib V5    0.017718345078517564
#>     Attrib V50    0.013853060472490672
#>     Attrib V51    0.05147414604714791
#>     Attrib V52    0.028269334749067756
#>     Attrib V53    0.017545601838669496
#>     Attrib V54    0.05875787455762157
#>     Attrib V55    0.10341426086017694
#>     Attrib V56    0.10420439064962993
#>     Attrib V57    0.11304117198924979
#>     Attrib V58    0.09097299568232982
#>     Attrib V59    0.11717479859181948
#>     Attrib V6    0.0647516408357288
#>     Attrib V60    0.0962663690952155
#>     Attrib V7    -0.01646744133386714
#>     Attrib V8    0.06390445345453731
#>     Attrib V9    0.05288583962886834
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.3765238468315088
#>     Attrib V1    -0.1375607607052614
#>     Attrib V10    0.015343380460652192
#>     Attrib V11    0.4254959811637653
#>     Attrib V12    0.20292214435073563
#>     Attrib V13    -0.2139259497360749
#>     Attrib V14    -0.4352795595420391
#>     Attrib V15    -0.08691857625572057
#>     Attrib V16    0.21510890866500867
#>     Attrib V17    0.0273562189613518
#>     Attrib V18    0.20691387093162958
#>     Attrib V19    0.14777278388098267
#>     Attrib V2    -0.10334833519138292
#>     Attrib V20    0.21208518278119115
#>     Attrib V21    0.9313180382181538
#>     Attrib V22    0.5902118418390904
#>     Attrib V23    0.3638284564583659
#>     Attrib V24    0.28480773478337523
#>     Attrib V25    -0.14226796605355554
#>     Attrib V26    -0.054432058259602165
#>     Attrib V27    -0.11092563052844823
#>     Attrib V28    0.29631049835123036
#>     Attrib V29    -0.44255863423066577
#>     Attrib V3    -0.5348855640396132
#>     Attrib V30    0.2777551520825282
#>     Attrib V31    -0.9794047845437517
#>     Attrib V32    -0.16613173534427197
#>     Attrib V33    0.4281440931539507
#>     Attrib V34    0.0075829711099062395
#>     Attrib V35    0.3979518389649955
#>     Attrib V36    -0.2994793828551921
#>     Attrib V37    -0.39583107856079947
#>     Attrib V38    0.04768492413713978
#>     Attrib V39    0.45457798418410905
#>     Attrib V4    0.1330503412531145
#>     Attrib V40    -0.3156780224043898
#>     Attrib V41    0.22492217182436794
#>     Attrib V42    0.3816282070299902
#>     Attrib V43    0.5024798103511381
#>     Attrib V44    1.491875594114309
#>     Attrib V45    0.9811841625244847
#>     Attrib V46    -0.02691688503470371
#>     Attrib V47    -0.17866168276470706
#>     Attrib V48    0.48622795640154215
#>     Attrib V49    0.357031482383543
#>     Attrib V5    -0.10557767499947433
#>     Attrib V50    -0.6492434845295425
#>     Attrib V51    0.23461679199705182
#>     Attrib V52    0.21019956898618875
#>     Attrib V53    0.19408675929531902
#>     Attrib V54    0.25584137717646127
#>     Attrib V55    0.09470361904964368
#>     Attrib V56    0.14113714405233704
#>     Attrib V57    -0.21393168145285293
#>     Attrib V58    0.3824405908116837
#>     Attrib V59    0.4804173941362523
#>     Attrib V6    -0.2739491016221262
#>     Attrib V60    -0.28983925917304404
#>     Attrib V7    -0.5957800712933179
#>     Attrib V8    0.09569980228523298
#>     Attrib V9    0.7972470353768161
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.8416688838224551
#>     Attrib V1    -0.08195893016518624
#>     Attrib V10    -0.7316346987606774
#>     Attrib V11    -1.0873610242496503
#>     Attrib V12    -1.4708694606383201
#>     Attrib V13    -0.7210228489630978
#>     Attrib V14    0.07931275749247356
#>     Attrib V15    0.3079778039649735
#>     Attrib V16    0.6747863177621335
#>     Attrib V17    0.5763075367736432
#>     Attrib V18    -0.05226585242179985
#>     Attrib V19    0.14868468214615138
#>     Attrib V2    -0.6288300917896217
#>     Attrib V20    0.5113294593849785
#>     Attrib V21    -0.7983210665683971
#>     Attrib V22    -0.9714290767562729
#>     Attrib V23    -1.0103470898652482
#>     Attrib V24    -0.5022243252002501
#>     Attrib V25    0.4489345884796102
#>     Attrib V26    -0.1015266352036128
#>     Attrib V27    -1.275886165343827
#>     Attrib V28    -2.516933156342462
#>     Attrib V29    -2.106875355073932
#>     Attrib V3    -0.17393882200043753
#>     Attrib V30    -1.1971048056829796
#>     Attrib V31    0.41233123666508853
#>     Attrib V32    0.5846799943366285
#>     Attrib V33    0.9475219110491396
#>     Attrib V34    0.8057841469359337
#>     Attrib V35    -0.06929884790455805
#>     Attrib V36    1.1945460893348725
#>     Attrib V37    0.1526599680117513
#>     Attrib V38    0.4517526480658087
#>     Attrib V39    -0.7121523878665657
#>     Attrib V4    -0.3085228574145755
#>     Attrib V40    -0.6180040676998629
#>     Attrib V41    -1.408842390329963
#>     Attrib V42    0.03717174883181089
#>     Attrib V43    0.1295168706524235
#>     Attrib V44    -0.7437864712563427
#>     Attrib V45    -0.3392111243452907
#>     Attrib V46    -0.594695723818489
#>     Attrib V47    -0.6316351407431072
#>     Attrib V48    -0.8676745790396762
#>     Attrib V49    -0.735562552693811
#>     Attrib V5    -0.7181720785524021
#>     Attrib V50    0.7309937603575456
#>     Attrib V51    -0.9058622095621033
#>     Attrib V52    -0.9521756610148292
#>     Attrib V53    -1.4329446815608677
#>     Attrib V54    0.46738136326236335
#>     Attrib V55    0.8605568833081025
#>     Attrib V56    0.6060050083699308
#>     Attrib V57    0.5307199258995596
#>     Attrib V58    -0.4009431807381411
#>     Attrib V59    0.1312484957143433
#>     Attrib V6    -0.5913912053022712
#>     Attrib V60    -0.6800880991957737
#>     Attrib V7    0.7306349166503381
#>     Attrib V8    0.5170832688885788
#>     Attrib V9    -1.1790936537119325
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.1379261784637401
#>     Attrib V1    -0.026480857696409416
#>     Attrib V10    -0.14030184983422522
#>     Attrib V11    0.20668033983008788
#>     Attrib V12    0.0957655918738943
#>     Attrib V13    -0.1415927317973915
#>     Attrib V14    -0.030558044037450133
#>     Attrib V15    0.1600131664290591
#>     Attrib V16    0.2206053598899868
#>     Attrib V17    0.004160902764901634
#>     Attrib V18    0.06233226676935932
#>     Attrib V19    0.03934564892064405
#>     Attrib V2    0.006770942817404512
#>     Attrib V20    0.22675816634964707
#>     Attrib V21    0.5913300738320453
#>     Attrib V22    0.30201377620269
#>     Attrib V23    0.11205924644349582
#>     Attrib V24    0.19165203032554246
#>     Attrib V25    -0.059157122769053216
#>     Attrib V26    -0.2994687709587675
#>     Attrib V27    -0.3633166303266092
#>     Attrib V28    -0.10407672834358982
#>     Attrib V29    -0.4776507002003922
#>     Attrib V3    -0.19054209728698843
#>     Attrib V30    -0.012827321209831113
#>     Attrib V31    -0.6055635274705976
#>     Attrib V32    0.03203353953202209
#>     Attrib V33    0.4807754972525672
#>     Attrib V34    0.04868567258046614
#>     Attrib V35    0.061930160969045786
#>     Attrib V36    -0.47684680579492406
#>     Attrib V37    -0.5524100145451233
#>     Attrib V38    -0.19010102685047867
#>     Attrib V39    0.14223733892164633
#>     Attrib V4    0.16630221558152794
#>     Attrib V40    -0.18548725727394855
#>     Attrib V41    0.14577892694813774
#>     Attrib V42    0.29036388007220526
#>     Attrib V43    0.3074676982689362
#>     Attrib V44    0.6350822773665632
#>     Attrib V45    0.4691181301131807
#>     Attrib V46    -0.1041915314306042
#>     Attrib V47    -0.1722732032361571
#>     Attrib V48    0.20657490074281393
#>     Attrib V49    0.14196331669753556
#>     Attrib V5    -0.018338792180623197
#>     Attrib V50    -0.4512557229812858
#>     Attrib V51    0.0780279513609779
#>     Attrib V52    0.16894847113628506
#>     Attrib V53    0.16181632207678995
#>     Attrib V54    0.34435404281673293
#>     Attrib V55    0.26652446336743824
#>     Attrib V56    0.19099856739601084
#>     Attrib V57    0.028499899938392415
#>     Attrib V58    0.3314493381419062
#>     Attrib V59    0.37529767390603924
#>     Attrib V6    -0.11673702764877258
#>     Attrib V60    -0.10442128879734722
#>     Attrib V7    -0.20412144818823097
#>     Attrib V8    0.18842184505191142
#>     Attrib V9    0.4394871395271231
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.2586457370228161
#>     Attrib V1    0.05066178858180352
#>     Attrib V10    0.03773098086058649
#>     Attrib V11    -0.23397819764333186
#>     Attrib V12    -0.23144046558290127
#>     Attrib V13    -0.014584062571468962
#>     Attrib V14    0.09216079547921868
#>     Attrib V15    0.006504901775278939
#>     Attrib V16    0.010617040596434285
#>     Attrib V17    0.2048090224094794
#>     Attrib V18    0.14396879887285935
#>     Attrib V19    0.04288636494684923
#>     Attrib V2    0.016838645351919843
#>     Attrib V20    0.024555046333538572
#>     Attrib V21    -0.08415547865826625
#>     Attrib V22    0.004201258018410898
#>     Attrib V23    0.0250619645148243
#>     Attrib V24    -0.05809278615551266
#>     Attrib V25    0.10274652426538446
#>     Attrib V26    0.03472457692319916
#>     Attrib V27    -0.09407361501279661
#>     Attrib V28    -0.24674434997459616
#>     Attrib V29    -0.07948247226250654
#>     Attrib V3    0.13314173783037497
#>     Attrib V30    -0.026684341576430296
#>     Attrib V31    0.3342165537688129
#>     Attrib V32    0.03432282989335306
#>     Attrib V33    -0.05267986521975099
#>     Attrib V34    0.025881658159369603
#>     Attrib V35    0.05746452292345234
#>     Attrib V36    0.42354949521748503
#>     Attrib V37    0.38163716217938415
#>     Attrib V38    0.1494761930026495
#>     Attrib V39    -0.009111785891819523
#>     Attrib V4    0.03187929871086697
#>     Attrib V40    0.12876461186423782
#>     Attrib V41    -0.07785170768094533
#>     Attrib V42    -0.015980411406492277
#>     Attrib V43    -0.034407046046204856
#>     Attrib V44    -0.28139851472243205
#>     Attrib V45    -0.22742971587751823
#>     Attrib V46    -0.07338785324979048
#>     Attrib V47    -0.039674055828944066
#>     Attrib V48    -0.18319645953639818
#>     Attrib V49    -0.12529014741657138
#>     Attrib V5    -0.05919708889050342
#>     Attrib V50    0.28341310743854475
#>     Attrib V51    -0.05088345688986726
#>     Attrib V52    -0.1197583834864255
#>     Attrib V53    -0.11604755320056813
#>     Attrib V54    0.028655749229327156
#>     Attrib V55    -0.019410900528841923
#>     Attrib V56    0.08458591877025068
#>     Attrib V57    0.08061453901970948
#>     Attrib V58    -0.052540143908429766
#>     Attrib V59    0.0072332920046726595
#>     Attrib V6    0.09321374641744942
#>     Attrib V60    0.18845758117470046
#>     Attrib V7    0.2283460795275847
#>     Attrib V8    0.07781993871316906
#>     Attrib V9    -0.2245371087495358
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.08527375529961898
#>     Attrib V1    0.09807167978689683
#>     Attrib V10    -0.25491720565638337
#>     Attrib V11    0.052150938357955354
#>     Attrib V12    -0.0866868311638738
#>     Attrib V13    -0.13203882546404785
#>     Attrib V14    0.05631269436928013
#>     Attrib V15    0.30151626260520986
#>     Attrib V16    0.3259335432242284
#>     Attrib V17    0.06107225236384876
#>     Attrib V18    0.06840075673579549
#>     Attrib V19    0.06897914271151724
#>     Attrib V2    0.1298451904815877
#>     Attrib V20    0.33846858317361256
#>     Attrib V21    0.5665633450601599
#>     Attrib V22    0.24854088539711167
#>     Attrib V23    0.0792547069358633
#>     Attrib V24    0.07770519714007242
#>     Attrib V25    -0.2720009297028019
#>     Attrib V26    -0.42940195570442313
#>     Attrib V27    -0.5772796489837334
#>     Attrib V28    -0.29423006060050805
#>     Attrib V29    -0.6192691292615962
#>     Attrib V3    -0.17576695914773519
#>     Attrib V30    -0.06564464341491415
#>     Attrib V31    -0.6837502847086266
#>     Attrib V32    -0.0653287483561115
#>     Attrib V33    0.5122870465684484
#>     Attrib V34    0.047958787320131445
#>     Attrib V35    0.017747265196257127
#>     Attrib V36    -0.48075886163661696
#>     Attrib V37    -0.5754550901455765
#>     Attrib V38    -0.09937453177225945
#>     Attrib V39    0.06834710162120655
#>     Attrib V4    0.29745497686903605
#>     Attrib V40    -0.25379836037609
#>     Attrib V41    0.022354443556915463
#>     Attrib V42    0.364298509028681
#>     Attrib V43    0.33312262432894046
#>     Attrib V44    0.7500201330999515
#>     Attrib V45    0.4529631018103549
#>     Attrib V46    -0.14069825909682673
#>     Attrib V47    -0.27817486146416304
#>     Attrib V48    0.15484872644463632
#>     Attrib V49    0.13160750355174003
#>     Attrib V5    0.0415625963347299
#>     Attrib V50    -0.4852712536720837
#>     Attrib V51    -0.032576921161267265
#>     Attrib V52    0.1368798715367639
#>     Attrib V53    0.20900701667911167
#>     Attrib V54    0.5747539057952015
#>     Attrib V55    0.3961505272475837
#>     Attrib V56    0.21217503476242255
#>     Attrib V57    0.1103474534445536
#>     Attrib V58    0.3451680080390908
#>     Attrib V59    0.4657071402272884
#>     Attrib V6    -0.09812244245826666
#>     Attrib V60    -0.06128730996512984
#>     Attrib V7    -0.07640690023754047
#>     Attrib V8    0.23204162032917808
#>     Attrib V9    0.3752613317151026
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.059140412813585536
#>     Attrib V1    0.1461977372987601
#>     Attrib V10    -0.28822786761642066
#>     Attrib V11    -0.00914148854275704
#>     Attrib V12    -0.0791578451296908
#>     Attrib V13    -0.17595094088131388
#>     Attrib V14    0.14525668428323768
#>     Attrib V15    0.3230039076740221
#>     Attrib V16    0.33415701991602925
#>     Attrib V17    0.017052276091564657
#>     Attrib V18    0.12433925309274617
#>     Attrib V19    0.05257266891798417
#>     Attrib V2    0.0943128985478566
#>     Attrib V20    0.3326683623278421
#>     Attrib V21    0.6425205134342625
#>     Attrib V22    0.21724980920807538
#>     Attrib V23    0.037525216622323575
#>     Attrib V24    -0.07791222752030609
#>     Attrib V25    -0.42677905275750844
#>     Attrib V26    -0.5087446740262268
#>     Attrib V27    -0.4513305075913952
#>     Attrib V28    -0.057477375157383194
#>     Attrib V29    -0.320301716928014
#>     Attrib V3    -0.04028170886750815
#>     Attrib V30    0.10161562281007283
#>     Attrib V31    -0.7008008581353657
#>     Attrib V32    -0.15682369827797824
#>     Attrib V33    0.35619672524707024
#>     Attrib V34    -0.06932278625615187
#>     Attrib V35    -0.04548714884456559
#>     Attrib V36    -0.3783017615520856
#>     Attrib V37    -0.4754320063341754
#>     Attrib V38    -0.09689058188576484
#>     Attrib V39    0.1432186029577441
#>     Attrib V4    0.28351913454144373
#>     Attrib V40    -0.26261886085743935
#>     Attrib V41    -0.00732982439938228
#>     Attrib V42    0.3670984303312328
#>     Attrib V43    0.25651942091910257
#>     Attrib V44    0.6986159453439325
#>     Attrib V45    0.4832345314823375
#>     Attrib V46    -0.10489789550468398
#>     Attrib V47    -0.2572969525662149
#>     Attrib V48    0.08707706350325341
#>     Attrib V49    0.15426933776150237
#>     Attrib V5    0.0842563289353106
#>     Attrib V50    -0.4473683694748342
#>     Attrib V51    0.008925889104465191
#>     Attrib V52    0.15782527632391236
#>     Attrib V53    0.20241296896594455
#>     Attrib V54    0.3815608857472027
#>     Attrib V55    0.29892444021150333
#>     Attrib V56    0.21706969177677898
#>     Attrib V57    0.10454090864448323
#>     Attrib V58    0.3917775185552041
#>     Attrib V59    0.42570348173713585
#>     Attrib V6    -0.06395414005051221
#>     Attrib V60    -0.044775562137617
#>     Attrib V7    -0.10627016290500588
#>     Attrib V8    0.22166967893326225
#>     Attrib V9    0.3241558192231083
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
#>   0.115942 
```
