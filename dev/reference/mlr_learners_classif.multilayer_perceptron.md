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
#>     Threshold    -0.41975710540984973
#>     Node 2    3.2415339927116413
#>     Node 3    1.576826655516937
#>     Node 4    1.2602355799094533
#>     Node 5    -2.0081602460009607
#>     Node 6    1.1324850719220176
#>     Node 7    2.9148407575392343
#>     Node 8    0.7952998107244409
#>     Node 9    2.339431419141757
#>     Node 10    -2.2634050609388923
#>     Node 11    1.4981552037306693
#>     Node 12    1.5495712505322508
#>     Node 13    -0.036406413915752216
#>     Node 14    2.1235446213789553
#>     Node 15    -2.85773093200327
#>     Node 16    0.7055879941714308
#>     Node 17    1.0623155335732497
#>     Node 18    -0.8840453997928716
#>     Node 19    2.0502112220207076
#>     Node 20    1.6418688206823993
#>     Node 21    -2.7066753324964834
#>     Node 22    1.4909521048717098
#>     Node 23    1.4654957249213536
#>     Node 24    -0.23338505788204883
#>     Node 25    4.664518846099999
#>     Node 26    -0.8504442913195751
#>     Node 27    1.7773123627471517
#>     Node 28    -2.213445761481708
#>     Node 29    0.8952840719799683
#>     Node 30    0.5515740611042486
#>     Node 31    1.2507823157808113
#>     Node 32    1.0357420862872666
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.43602281640897506
#>     Node 2    -3.2844801127413428
#>     Node 3    -1.5758070473872157
#>     Node 4    -1.2302331789383165
#>     Node 5    2.0217386273170743
#>     Node 6    -1.1128870297357978
#>     Node 7    -2.906891286534416
#>     Node 8    -0.8321964062464466
#>     Node 9    -2.326557348661095
#>     Node 10    2.212593346530487
#>     Node 11    -1.4453836361881474
#>     Node 12    -1.622399178888815
#>     Node 13    0.09581397606257916
#>     Node 14    -2.093437718357223
#>     Node 15    2.836998622593089
#>     Node 16    -0.7289085018475298
#>     Node 17    -1.034087650368131
#>     Node 18    0.9406456873444287
#>     Node 19    -2.055877320637914
#>     Node 20    -1.6015127965574052
#>     Node 21    2.7576900714103214
#>     Node 22    -1.5517601963870096
#>     Node 23    -1.5102479194274914
#>     Node 24    0.2213469283016821
#>     Node 25    -4.652046244414348
#>     Node 26    0.7824600310705696
#>     Node 27    -1.8029867629213814
#>     Node 28    2.2012409114211926
#>     Node 29    -0.9321212339646706
#>     Node 30    -0.47981172889190693
#>     Node 31    -1.194924348905162
#>     Node 32    -1.0552775476030887
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.6576550099786188
#>     Attrib V1    -0.10394174880813464
#>     Attrib V10    0.7772029606789866
#>     Attrib V11    1.046498772348378
#>     Attrib V12    0.7844633620907644
#>     Attrib V13    0.14001442064580807
#>     Attrib V14    -0.3963604212243597
#>     Attrib V15    -0.572704918948877
#>     Attrib V16    -0.8565170954887806
#>     Attrib V17    -0.4752778272860636
#>     Attrib V18    0.0174887267169751
#>     Attrib V19    0.3576568042121014
#>     Attrib V2    0.055409207866471244
#>     Attrib V20    -0.08326336783947541
#>     Attrib V21    0.4560307355671644
#>     Attrib V22    0.6103210542666057
#>     Attrib V23    1.0464883898272854
#>     Attrib V24    1.0800618858588706
#>     Attrib V25    0.14308584166488458
#>     Attrib V26    0.42366564189741146
#>     Attrib V27    0.5054331172298779
#>     Attrib V28    1.644235234113104
#>     Attrib V29    1.255620327472545
#>     Attrib V3    -0.09847061658325582
#>     Attrib V30    0.4494442977455877
#>     Attrib V31    -0.8216645020033717
#>     Attrib V32    0.0031600462603478905
#>     Attrib V33    -0.4681135112498833
#>     Attrib V34    0.0390584343660738
#>     Attrib V35    -0.004635945141298767
#>     Attrib V36    -0.6761987955580218
#>     Attrib V37    0.19046663251342477
#>     Attrib V38    -0.3439976420145608
#>     Attrib V39    0.7747675893140235
#>     Attrib V4    0.5590073681290769
#>     Attrib V40    0.24535647202686098
#>     Attrib V41    1.4897491239413743
#>     Attrib V42    0.31584276762814767
#>     Attrib V43    -0.25419523148271395
#>     Attrib V44    0.13214015199991958
#>     Attrib V45    0.1396588955874177
#>     Attrib V46    0.5385540611180687
#>     Attrib V47    0.4143422838773209
#>     Attrib V48    0.5146274113724438
#>     Attrib V49    1.0039051450009655
#>     Attrib V5    0.6545680766559473
#>     Attrib V50    -1.3319706918314769
#>     Attrib V51    0.687632987328547
#>     Attrib V52    1.0494340470048136
#>     Attrib V53    0.6812356371442712
#>     Attrib V54    0.046888839305758004
#>     Attrib V55    -1.1645724381849778
#>     Attrib V56    -0.49340660709590184
#>     Attrib V57    -0.7323835411324086
#>     Attrib V58    0.3569104274255642
#>     Attrib V59    0.39527046372663693
#>     Attrib V6    0.8190057015795175
#>     Attrib V60    0.36114755418177624
#>     Attrib V7    -0.5845550965354371
#>     Attrib V8    0.2685210015541342
#>     Attrib V9    0.9254591373259411
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.5230919679265752
#>     Attrib V1    -0.0054036134777586805
#>     Attrib V10    0.15856324868981794
#>     Attrib V11    0.3282839530264587
#>     Attrib V12    0.2382696746843888
#>     Attrib V13    -0.15687083132981164
#>     Attrib V14    -0.12970384109880315
#>     Attrib V15    0.08607234341539827
#>     Attrib V16    -0.4450382544903232
#>     Attrib V17    -0.2453460635208838
#>     Attrib V18    -0.013466867025217018
#>     Attrib V19    0.07736337018985993
#>     Attrib V2    -0.11342772464438813
#>     Attrib V20    0.10785686382330342
#>     Attrib V21    0.3493041773060817
#>     Attrib V22    0.10919111528608028
#>     Attrib V23    0.26065481964271087
#>     Attrib V24    0.3627608662022317
#>     Attrib V25    -0.2876464021303064
#>     Attrib V26    -0.25299748649221754
#>     Attrib V27    -0.39456685017598864
#>     Attrib V28    0.19452827550833704
#>     Attrib V29    0.06685961923757908
#>     Attrib V3    -0.1015635704309197
#>     Attrib V30    0.24651630944643366
#>     Attrib V31    -0.4114505237901817
#>     Attrib V32    0.13301554684850125
#>     Attrib V33    0.0680487644811028
#>     Attrib V34    0.06659018867569949
#>     Attrib V35    -0.3160542598964405
#>     Attrib V36    -0.9227774382274017
#>     Attrib V37    -0.4942668710902334
#>     Attrib V38    -0.34949013832240805
#>     Attrib V39    0.3060843032075381
#>     Attrib V4    0.3619960267565997
#>     Attrib V40    -0.172777123665819
#>     Attrib V41    0.4504067828255053
#>     Attrib V42    0.4120414611440098
#>     Attrib V43    -0.05277342786636557
#>     Attrib V44    0.014027575960887011
#>     Attrib V45    0.0669524278139669
#>     Attrib V46    -0.025654017402386705
#>     Attrib V47    -0.21433588813967905
#>     Attrib V48    0.07762438947094313
#>     Attrib V49    0.3681018873303184
#>     Attrib V5    0.054177793632923216
#>     Attrib V50    -0.9523023506808508
#>     Attrib V51    0.07815874945585008
#>     Attrib V52    0.5685908533326889
#>     Attrib V53    0.26787289656197866
#>     Attrib V54    0.3381454511015366
#>     Attrib V55    -0.01306075173030457
#>     Attrib V56    0.012452973479607806
#>     Attrib V57    -0.09302858610116646
#>     Attrib V58    0.6857622483106726
#>     Attrib V59    0.5745268963778412
#>     Attrib V6    0.07566972199232816
#>     Attrib V60    0.020020465374405653
#>     Attrib V7    -0.43496580139862107
#>     Attrib V8    0.4133461995669727
#>     Attrib V9    0.4799182565444823
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.3610011445223569
#>     Attrib V1    0.0071187179290998
#>     Attrib V10    0.05126632178986926
#>     Attrib V11    0.1720343833821036
#>     Attrib V12    0.055347824933674954
#>     Attrib V13    -0.17701346111944163
#>     Attrib V14    -0.05730001463405895
#>     Attrib V15    0.08322821466263278
#>     Attrib V16    -0.3121973694642103
#>     Attrib V17    -0.12759879137860355
#>     Attrib V18    0.012850388820477704
#>     Attrib V19    0.04577120686207967
#>     Attrib V2    -0.1346783599793768
#>     Attrib V20    0.15442351753480663
#>     Attrib V21    0.4462017431073238
#>     Attrib V22    0.04772937449472693
#>     Attrib V23    0.0479395476610464
#>     Attrib V24    0.0956087314854884
#>     Attrib V25    -0.4021380643690404
#>     Attrib V26    -0.3368890026461148
#>     Attrib V27    -0.47993685704561084
#>     Attrib V28    0.0020665362686084127
#>     Attrib V29    -0.012304698980930298
#>     Attrib V3    -0.04380156601868738
#>     Attrib V30    0.08750432812670675
#>     Attrib V31    -0.45957844536336195
#>     Attrib V32    -0.03023670049623435
#>     Attrib V33    0.09127502022486716
#>     Attrib V34    0.1410843493984169
#>     Attrib V35    -0.13367694464552304
#>     Attrib V36    -0.5339538505033666
#>     Attrib V37    -0.2908908760919655
#>     Attrib V38    -0.1296905238250597
#>     Attrib V39    0.3242333699743738
#>     Attrib V4    0.26526769167409014
#>     Attrib V40    -0.1415321407813878
#>     Attrib V41    0.17993964505166693
#>     Attrib V42    0.2623829546605051
#>     Attrib V43    -0.03835418892170573
#>     Attrib V44    0.12738107643081156
#>     Attrib V45    0.25391846903271675
#>     Attrib V46    -0.02058962917665872
#>     Attrib V47    -0.23194889317383544
#>     Attrib V48    0.12314956912611606
#>     Attrib V49    0.34580582279716265
#>     Attrib V5    0.05807354081253316
#>     Attrib V50    -0.633506161193432
#>     Attrib V51    0.03205705967035202
#>     Attrib V52    0.2931825368774307
#>     Attrib V53    0.1651616048663073
#>     Attrib V54    0.21560887379559998
#>     Attrib V55    0.017405209660405787
#>     Attrib V56    0.03132585346768537
#>     Attrib V57    -0.009699736012820969
#>     Attrib V58    0.5044619574845346
#>     Attrib V59    0.4747514405869173
#>     Attrib V6    0.029269536179786892
#>     Attrib V60    0.05101819037002087
#>     Attrib V7    -0.2156412691959384
#>     Attrib V8    0.2354687703363448
#>     Attrib V9    0.35871324785338626
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.5064979722758431
#>     Attrib V1    0.04259317128737823
#>     Attrib V10    -0.18017821168828865
#>     Attrib V11    -0.43514410182456614
#>     Attrib V12    -0.2450878190710648
#>     Attrib V13    0.23739290060850446
#>     Attrib V14    0.2185458308360159
#>     Attrib V15    0.08927345554040231
#>     Attrib V16    0.5497010969111825
#>     Attrib V17    0.2891084249620111
#>     Attrib V18    -0.059496485904792215
#>     Attrib V19    -0.12422099541136986
#>     Attrib V2    0.19638953570553588
#>     Attrib V20    -0.30511938930122157
#>     Attrib V21    -0.5719034806750702
#>     Attrib V22    -0.2550414106064816
#>     Attrib V23    -0.430287224485546
#>     Attrib V24    -0.5119459321809984
#>     Attrib V25    0.46079254767614986
#>     Attrib V26    0.39825444582413133
#>     Attrib V27    0.5847058605073239
#>     Attrib V28    -0.18464597156043439
#>     Attrib V29    -0.1386445238281416
#>     Attrib V3    0.13189471956766274
#>     Attrib V30    -0.2742380732670223
#>     Attrib V31    0.6590840070947789
#>     Attrib V32    -0.04223703321592317
#>     Attrib V33    -0.12722453800174224
#>     Attrib V34    -0.26131866932292636
#>     Attrib V35    0.30767485668803163
#>     Attrib V36    1.0344028351050136
#>     Attrib V37    0.5962919800965273
#>     Attrib V38    0.2558893959338682
#>     Attrib V39    -0.5205250136730581
#>     Attrib V4    -0.5931200591045387
#>     Attrib V40    0.2680958268142687
#>     Attrib V41    -0.48248414684815977
#>     Attrib V42    -0.4500578848993756
#>     Attrib V43    0.11575730429162827
#>     Attrib V44    0.07785190910629051
#>     Attrib V45    -0.18610504655924864
#>     Attrib V46    -0.03685062633099123
#>     Attrib V47    0.3197905880711063
#>     Attrib V48    -0.1280068773863196
#>     Attrib V49    -0.5229234644407855
#>     Attrib V5    -0.038238583646418335
#>     Attrib V50    1.306332850901323
#>     Attrib V51    -0.20372345844503376
#>     Attrib V52    -0.7432740373655226
#>     Attrib V53    -0.17216996501849363
#>     Attrib V54    -0.31737449639145504
#>     Attrib V55    0.026393225525985584
#>     Attrib V56    0.0872289001360903
#>     Attrib V57    0.1896666021203568
#>     Attrib V58    -0.8004012304678685
#>     Attrib V59    -0.5842461640867747
#>     Attrib V6    -0.12187869989296314
#>     Attrib V60    0.12425159478761455
#>     Attrib V7    0.5072985758490095
#>     Attrib V8    -0.5930384207175347
#>     Attrib V9    -0.7159701450946453
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.2540509132864648
#>     Attrib V1    0.1108977855562565
#>     Attrib V10    -0.03487845662409644
#>     Attrib V11    0.01742166464309925
#>     Attrib V12    0.013374506301513277
#>     Attrib V13    -0.22335817276404313
#>     Attrib V14    -0.03971811599891441
#>     Attrib V15    0.1080990403190954
#>     Attrib V16    -0.0839984796216255
#>     Attrib V17    -0.024787347318242992
#>     Attrib V18    0.1595199642405065
#>     Attrib V19    0.1491670811861413
#>     Attrib V2    -0.05109437683308622
#>     Attrib V20    0.2925913445993257
#>     Attrib V21    0.4772667223918072
#>     Attrib V22    0.07999369385663053
#>     Attrib V23    -0.012773480798484036
#>     Attrib V24    0.04827083216677824
#>     Attrib V25    -0.31823299964942275
#>     Attrib V26    -0.3921002636119489
#>     Attrib V27    -0.5081540397493132
#>     Attrib V28    -0.2984155868271414
#>     Attrib V29    -0.2426230452603272
#>     Attrib V3    0.013965842499692412
#>     Attrib V30    -0.03961597526709957
#>     Attrib V31    -0.4517563362436123
#>     Attrib V32    -0.04589228529273065
#>     Attrib V33    0.1568166053741384
#>     Attrib V34    0.19757360250908473
#>     Attrib V35    -0.013173661160139198
#>     Attrib V36    -0.3696760156413153
#>     Attrib V37    -0.22225622216448765
#>     Attrib V38    -0.004094414809585849
#>     Attrib V39    0.305154376288066
#>     Attrib V4    0.30336673875571396
#>     Attrib V40    -0.12059497137781328
#>     Attrib V41    0.14224766425796356
#>     Attrib V42    0.23658882724499566
#>     Attrib V43    0.029401476200539692
#>     Attrib V44    0.10797151265163554
#>     Attrib V45    0.1574308353665024
#>     Attrib V46    -0.02962638297038805
#>     Attrib V47    -0.24834255914865208
#>     Attrib V48    -0.02607956102088692
#>     Attrib V49    0.14325793240881118
#>     Attrib V5    0.029788410106801427
#>     Attrib V50    -0.4216085049713764
#>     Attrib V51    -0.027535616926493568
#>     Attrib V52    0.1842646004661881
#>     Attrib V53    0.16501357317825013
#>     Attrib V54    0.3459341304014194
#>     Attrib V55    0.14528878178548232
#>     Attrib V56    0.13517178997268658
#>     Attrib V57    0.12416454094026386
#>     Attrib V58    0.4766760833521657
#>     Attrib V59    0.4917866327561961
#>     Attrib V6    0.09337827396664078
#>     Attrib V60    0.14880511652620199
#>     Attrib V7    -0.09097480655975862
#>     Attrib V8    0.25816369862413263
#>     Attrib V9    0.27594194499840213
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.7254820054184824
#>     Attrib V1    0.102287235633135
#>     Attrib V10    0.5340922088645049
#>     Attrib V11    1.0978228139865869
#>     Attrib V12    0.7816887445407947
#>     Attrib V13    0.16279735035337606
#>     Attrib V14    -0.3236318486545938
#>     Attrib V15    -0.4020227233358715
#>     Attrib V16    -0.7408271643061761
#>     Attrib V17    -0.5803586281143691
#>     Attrib V18    -0.32711780722577216
#>     Attrib V19    -0.2182991526967122
#>     Attrib V2    0.1632102005356989
#>     Attrib V20    -0.5377516527617026
#>     Attrib V21    0.10791073566211605
#>     Attrib V22    0.2877108359457236
#>     Attrib V23    0.657273622686295
#>     Attrib V24    0.7628317290887039
#>     Attrib V25    -0.02338713885894126
#>     Attrib V26    0.40788704162793854
#>     Attrib V27    0.6877216249404557
#>     Attrib V28    1.5547209914119526
#>     Attrib V29    1.1808044354193503
#>     Attrib V3    -0.11724778571379578
#>     Attrib V30    0.31360447488429355
#>     Attrib V31    -0.7023955301292277
#>     Attrib V32    -0.22110187358007524
#>     Attrib V33    -0.7733202974682549
#>     Attrib V34    -0.32577773806293187
#>     Attrib V35    -0.06508969322999876
#>     Attrib V36    -0.45067291765685097
#>     Attrib V37    0.3898737973835938
#>     Attrib V38    -0.249439993226211
#>     Attrib V39    0.4879219511091613
#>     Attrib V4    0.43769626266887773
#>     Attrib V40    0.07777973172035442
#>     Attrib V41    1.0736032217699816
#>     Attrib V42    -0.009523134822141389
#>     Attrib V43    -0.15432424442631185
#>     Attrib V44    0.22695665419790387
#>     Attrib V45    0.3332365745741375
#>     Attrib V46    0.6241941460823596
#>     Attrib V47    0.4732463286463096
#>     Attrib V48    0.5816442207882051
#>     Attrib V49    0.9085400154288348
#>     Attrib V5    0.49751050989165124
#>     Attrib V50    -0.958665301339064
#>     Attrib V51    0.5504785732685678
#>     Attrib V52    0.809107453265452
#>     Attrib V53    0.5881905643214341
#>     Attrib V54    0.061400398521208946
#>     Attrib V55    -0.9031191419246496
#>     Attrib V56    -0.4254129939387036
#>     Attrib V57    -0.3259147254909145
#>     Attrib V58    0.4369134108412718
#>     Attrib V59    0.5567289364785342
#>     Attrib V6    0.6557856512113399
#>     Attrib V60    0.6477336295431495
#>     Attrib V7    -0.3684695157323852
#>     Attrib V8    -0.033592333286293415
#>     Attrib V9    0.631765154478908
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.18844509977782206
#>     Attrib V1    0.05080592541644682
#>     Attrib V10    0.08073769790573901
#>     Attrib V11    0.18041081391520855
#>     Attrib V12    0.07648655030491824
#>     Attrib V13    -0.06379780515651905
#>     Attrib V14    -0.09068000419910872
#>     Attrib V15    -0.002294475308827391
#>     Attrib V16    -0.12347621187986685
#>     Attrib V17    -0.11680808933550171
#>     Attrib V18    -0.10132005854350966
#>     Attrib V19    -0.02454569018810693
#>     Attrib V2    0.003804378197034049
#>     Attrib V20    -0.058800574774104275
#>     Attrib V21    0.12235024289421463
#>     Attrib V22    -0.11080254291486862
#>     Attrib V23    -0.1540549156815639
#>     Attrib V24    -0.008812181426818054
#>     Attrib V25    -0.23241407947848333
#>     Attrib V26    -0.17764748736911215
#>     Attrib V27    -0.1849573318659538
#>     Attrib V28    0.036218518024034314
#>     Attrib V29    0.005200055943796436
#>     Attrib V3    0.004685865714869857
#>     Attrib V30    0.06115703614359292
#>     Attrib V31    -0.25277665152321227
#>     Attrib V32    -0.016660042833170748
#>     Attrib V33    0.06486389126114957
#>     Attrib V34    0.1159633953394597
#>     Attrib V35    0.030735472855850224
#>     Attrib V36    -0.11377528474261851
#>     Attrib V37    -0.06532295405669906
#>     Attrib V38    0.08818180266757326
#>     Attrib V39    0.2513880322814787
#>     Attrib V4    0.22739752930964088
#>     Attrib V40    -0.042730157653689815
#>     Attrib V41    0.06202609014385536
#>     Attrib V42    -0.012803626898545192
#>     Attrib V43    0.002250979852553808
#>     Attrib V44    0.17456839932724574
#>     Attrib V45    0.21194038533784879
#>     Attrib V46    0.10099296231072204
#>     Attrib V47    -0.02799398693649118
#>     Attrib V48    0.17089190196697737
#>     Attrib V49    0.23573165387967815
#>     Attrib V5    0.03822538261840536
#>     Attrib V50    -0.3087308548369675
#>     Attrib V51    -0.007538056214291886
#>     Attrib V52    0.12354733050883258
#>     Attrib V53    0.10600827522532957
#>     Attrib V54    0.17080057316952554
#>     Attrib V55    0.05919933037894024
#>     Attrib V56    -0.0023323352598678274
#>     Attrib V57    0.11084105422152843
#>     Attrib V58    0.29639279214263725
#>     Attrib V59    0.3539752270190194
#>     Attrib V6    0.024036025228599257
#>     Attrib V60    0.2013608306219501
#>     Attrib V7    -0.031858641020069876
#>     Attrib V8    0.08593010518015146
#>     Attrib V9    0.16558385669827655
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.5725285028259035
#>     Attrib V1    0.034601267442699556
#>     Attrib V10    0.5778596519134527
#>     Attrib V11    0.9723802654653888
#>     Attrib V12    0.663039466134372
#>     Attrib V13    0.10692991215281715
#>     Attrib V14    -0.4015203517232981
#>     Attrib V15    -0.4198101186176617
#>     Attrib V16    -0.6432978258800339
#>     Attrib V17    -0.41354611880946385
#>     Attrib V18    -0.19397429131854085
#>     Attrib V19    -0.06624422828295451
#>     Attrib V2    0.026629641270229258
#>     Attrib V20    -0.33853044372493024
#>     Attrib V21    0.19471318742840005
#>     Attrib V22    0.2399849684361156
#>     Attrib V23    0.5207020813110373
#>     Attrib V24    0.70942550544614
#>     Attrib V25    0.10769041357567916
#>     Attrib V26    0.3900693892320877
#>     Attrib V27    0.5160844609445964
#>     Attrib V28    1.2122122178225814
#>     Attrib V29    0.8539490758416743
#>     Attrib V3    -0.18027859554850018
#>     Attrib V30    0.3523497282453299
#>     Attrib V31    -0.5397265072061656
#>     Attrib V32    0.00790324328734943
#>     Attrib V33    -0.3511432632958331
#>     Attrib V34    0.008122537442430362
#>     Attrib V35    0.052649638089687846
#>     Attrib V36    -0.34504551193375416
#>     Attrib V37    0.20575823029182513
#>     Attrib V38    -0.2029890083247465
#>     Attrib V39    0.5564321275399533
#>     Attrib V4    0.3638936280761756
#>     Attrib V40    0.04957321893920577
#>     Attrib V41    0.8499836927483883
#>     Attrib V42    -0.0460336522294138
#>     Attrib V43    -0.16941841626970208
#>     Attrib V44    0.06749049726044744
#>     Attrib V45    0.23248499291123795
#>     Attrib V46    0.46490515499766916
#>     Attrib V47    0.3248779285663543
#>     Attrib V48    0.49113044896537855
#>     Attrib V49    0.8662593696514833
#>     Attrib V5    0.31033902169969685
#>     Attrib V50    -0.8949217667902614
#>     Attrib V51    0.4678985498019813
#>     Attrib V52    0.715531649274615
#>     Attrib V53    0.5019969593042861
#>     Attrib V54    -0.037807065028511305
#>     Attrib V55    -0.6519542752157605
#>     Attrib V56    -0.3724244678278355
#>     Attrib V57    -0.4053096210845161
#>     Attrib V58    0.42464490022761275
#>     Attrib V59    0.45418706890137706
#>     Attrib V6    0.5025045529406824
#>     Attrib V60    0.3829839015523453
#>     Attrib V7    -0.3609771625186406
#>     Attrib V8    0.1574502938066425
#>     Attrib V9    0.6253467070790353
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.5443381214754802
#>     Attrib V1    0.09263831463607129
#>     Attrib V10    -0.20612696806703018
#>     Attrib V11    -0.4709212331298016
#>     Attrib V12    -0.3074007980202767
#>     Attrib V13    0.22461545647687636
#>     Attrib V14    0.26540463134405223
#>     Attrib V15    -0.02131071548174594
#>     Attrib V16    0.6106357878661837
#>     Attrib V17    0.3117796195180894
#>     Attrib V18    0.039601135515013694
#>     Attrib V19    -0.005198747179147582
#>     Attrib V2    0.1327400939825008
#>     Attrib V20    -0.1375219544246384
#>     Attrib V21    -0.4156931484056389
#>     Attrib V22    -0.17677045432092614
#>     Attrib V23    -0.5261576623070349
#>     Attrib V24    -0.6202378182244667
#>     Attrib V25    0.3996442947322179
#>     Attrib V26    0.3972416716449526
#>     Attrib V27    0.5437350728285367
#>     Attrib V28    -0.224896078830915
#>     Attrib V29    -0.20609018602973514
#>     Attrib V3    0.07381459933068064
#>     Attrib V30    -0.30205644347965144
#>     Attrib V31    0.44718034964297115
#>     Attrib V32    -0.2667242830496819
#>     Attrib V33    -0.0920254787774272
#>     Attrib V34    -0.16675536961613782
#>     Attrib V35    0.5279960521478464
#>     Attrib V36    1.4356265057856155
#>     Attrib V37    0.8789918846280795
#>     Attrib V38    0.5608036475051088
#>     Attrib V39    -0.3792630680144936
#>     Attrib V4    -0.5907006235470618
#>     Attrib V40    0.2813024487013503
#>     Attrib V41    -0.6146415169120603
#>     Attrib V42    -0.6405270749699173
#>     Attrib V43    0.11613530302113609
#>     Attrib V44    0.290095753166457
#>     Attrib V45    0.08566825072694306
#>     Attrib V46    0.011268956283210686
#>     Attrib V47    0.29322382176139583
#>     Attrib V48    -0.13841299765224307
#>     Attrib V49    -0.4866118050856923
#>     Attrib V5    -0.1113203817810178
#>     Attrib V50    1.375638448353263
#>     Attrib V51    -0.3310347960609331
#>     Attrib V52    -0.8806911641377531
#>     Attrib V53    -0.24048108078336575
#>     Attrib V54    -0.37640320426697854
#>     Attrib V55    -0.044797182827136385
#>     Attrib V56    -6.423396063738269E-4
#>     Attrib V57    0.24946076478945306
#>     Attrib V58    -0.8431282905151457
#>     Attrib V59    -0.6314748958642543
#>     Attrib V6    -0.1358162215421955
#>     Attrib V60    0.07694177027422791
#>     Attrib V7    0.5837419847661345
#>     Attrib V8    -0.6179701406900318
#>     Attrib V9    -0.7560343073851608
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.4366535965094918
#>     Attrib V1    -0.08833767487568632
#>     Attrib V10    0.13136128896953594
#>     Attrib V11    0.31943064319877384
#>     Attrib V12    0.11294668800682099
#>     Attrib V13    -0.3134507139831465
#>     Attrib V14    -0.32777614077551676
#>     Attrib V15    -0.1703902813899715
#>     Attrib V16    -0.4062275411157432
#>     Attrib V17    -0.09255745790933902
#>     Attrib V18    0.10459745205653459
#>     Attrib V19    0.18182547100054627
#>     Attrib V2    -0.1936411626100729
#>     Attrib V20    0.2576534400371438
#>     Attrib V21    0.4947886402375402
#>     Attrib V22    0.25204140165631733
#>     Attrib V23    0.30849925149565827
#>     Attrib V24    0.3385961179761211
#>     Attrib V25    -0.14700997986412617
#>     Attrib V26    -0.09692112019679161
#>     Attrib V27    -0.2484858507121473
#>     Attrib V28    0.28780433312150683
#>     Attrib V29    0.2369827905203694
#>     Attrib V3    -0.20494918797496203
#>     Attrib V30    0.2111162788331597
#>     Attrib V31    -0.727375173800003
#>     Attrib V32    -0.10526649534563146
#>     Attrib V33    0.017908331459156365
#>     Attrib V34    0.2629443756779507
#>     Attrib V35    0.11538670474347422
#>     Attrib V36    -0.22331450791711893
#>     Attrib V37    0.07065445456957775
#>     Attrib V38    0.10525807616788639
#>     Attrib V39    0.47148603625877855
#>     Attrib V4    0.28914789044508576
#>     Attrib V40    -0.22679321905065913
#>     Attrib V41    0.22975228433576067
#>     Attrib V42    0.21344025513497467
#>     Attrib V43    0.04085092864235962
#>     Attrib V44    0.4838605990341345
#>     Attrib V45    0.5365591112763757
#>     Attrib V46    0.16715908573736984
#>     Attrib V47    -0.10519118365866403
#>     Attrib V48    0.1346920362210897
#>     Attrib V49    0.408058365016442
#>     Attrib V5    0.10822845942913108
#>     Attrib V50    -0.84004285296525
#>     Attrib V51    0.09842398208514826
#>     Attrib V52    0.3632342819969542
#>     Attrib V53    0.10092587319168819
#>     Attrib V54    0.2965070073483508
#>     Attrib V55    -0.1577055695938047
#>     Attrib V56    -0.08888382657280977
#>     Attrib V57    -0.11889908809653399
#>     Attrib V58    0.47172738843154877
#>     Attrib V59    0.3588738580779098
#>     Attrib V6    0.197521369450606
#>     Attrib V60    0.006179135531833894
#>     Attrib V7    -0.35565028746680144
#>     Attrib V8    0.29222568463274884
#>     Attrib V9    0.45854685996815736
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.6631358162745488
#>     Attrib V1    -0.0877127500675373
#>     Attrib V10    0.10589536945807028
#>     Attrib V11    0.47525917662378503
#>     Attrib V12    0.17239950383321864
#>     Attrib V13    -0.25165108269034764
#>     Attrib V14    -0.3070401287440401
#>     Attrib V15    -0.1790877998924824
#>     Attrib V16    -0.51017109709222
#>     Attrib V17    -0.29271960640508893
#>     Attrib V18    -0.0623587507195533
#>     Attrib V19    0.08264027079627548
#>     Attrib V2    -0.11809984680381036
#>     Attrib V20    0.02808446338815435
#>     Attrib V21    0.38179624047757543
#>     Attrib V22    0.19906004961348897
#>     Attrib V23    0.3156643688727852
#>     Attrib V24    0.38282830356352576
#>     Attrib V25    -0.2575876058708461
#>     Attrib V26    -0.07518049508119579
#>     Attrib V27    -0.1510388238555406
#>     Attrib V28    0.4181120613303558
#>     Attrib V29    0.3850412427821051
#>     Attrib V3    -0.24379738338304038
#>     Attrib V30    0.22125191898905072
#>     Attrib V31    -0.6949523111443988
#>     Attrib V32    -0.05806487272398131
#>     Attrib V33    0.009244973004415433
#>     Attrib V34    0.22378926355452877
#>     Attrib V35    -0.002317447467729734
#>     Attrib V36    -0.4659197756734443
#>     Attrib V37    -0.04227799683132782
#>     Attrib V38    -0.09669092709601126
#>     Attrib V39    0.4432716058612882
#>     Attrib V4    0.31682413881384075
#>     Attrib V40    -0.13994499510904013
#>     Attrib V41    0.4323403244602124
#>     Attrib V42    0.23249500674049267
#>     Attrib V43    0.056564421713588386
#>     Attrib V44    0.3144708496631244
#>     Attrib V45    0.43821647706900035
#>     Attrib V46    0.24136337809467878
#>     Attrib V47    -0.14423114349499197
#>     Attrib V48    0.16900467308898579
#>     Attrib V49    0.4290127924806524
#>     Attrib V5    0.08215257633268405
#>     Attrib V50    -1.036123630223455
#>     Attrib V51    0.06987081100024391
#>     Attrib V52    0.5135858714321774
#>     Attrib V53    0.20566740052647156
#>     Attrib V54    0.1580502799352378
#>     Attrib V55    -0.24307935126079702
#>     Attrib V56    -0.16677812743229775
#>     Attrib V57    -0.11862352485166615
#>     Attrib V58    0.5472008866126292
#>     Attrib V59    0.45665983392320575
#>     Attrib V6    0.16855394843408417
#>     Attrib V60    0.012127268960328463
#>     Attrib V7    -0.4061940046049899
#>     Attrib V8    0.32552061362135
#>     Attrib V9    0.4958587779516572
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.2164717641840922
#>     Attrib V1    0.03798191118042276
#>     Attrib V10    -0.04711558610236513
#>     Attrib V11    -0.130210631230671
#>     Attrib V12    -0.10610557124036035
#>     Attrib V13    0.0038230948879658957
#>     Attrib V14    0.003266398707944381
#>     Attrib V15    -0.027098955848791708
#>     Attrib V16    -1.910362221166381E-4
#>     Attrib V17    -0.0044617009936258065
#>     Attrib V18    -0.04739032490590269
#>     Attrib V19    -0.09946187667092096
#>     Attrib V2    0.05437003115079891
#>     Attrib V20    -0.05717401021944473
#>     Attrib V21    -0.10106867401697546
#>     Attrib V22    -0.12299720802591653
#>     Attrib V23    -0.032437336157046616
#>     Attrib V24    -0.04530126087077161
#>     Attrib V25    0.0536394032860145
#>     Attrib V26    -0.02441603310917125
#>     Attrib V27    0.008911643273083648
#>     Attrib V28    -0.12210687442825724
#>     Attrib V29    -0.032069418130761626
#>     Attrib V3    0.1491022960239849
#>     Attrib V30    -0.0017204823883668731
#>     Attrib V31    0.07735322196619003
#>     Attrib V32    0.08402703171198098
#>     Attrib V33    0.08299333014621045
#>     Attrib V34    0.09385865532884875
#>     Attrib V35    0.07584637985273383
#>     Attrib V36    0.14947835663753373
#>     Attrib V37    0.13651853941403175
#>     Attrib V38    0.037749016643802466
#>     Attrib V39    0.02675826700005799
#>     Attrib V4    0.03178540209406836
#>     Attrib V40    0.11963460420408237
#>     Attrib V41    0.036020073518805866
#>     Attrib V42    0.0692844127283516
#>     Attrib V43    0.03241450449131981
#>     Attrib V44    0.018127579116023963
#>     Attrib V45    -0.0624368646757767
#>     Attrib V46    0.03573197126857508
#>     Attrib V47    0.07494870320595977
#>     Attrib V48    -0.036873240950833386
#>     Attrib V49    -0.03884444025481714
#>     Attrib V5    0.04103720619756692
#>     Attrib V50    0.11535478338809267
#>     Attrib V51    0.01174598678376788
#>     Attrib V52    -0.04261160531641969
#>     Attrib V53    0.05811884101608742
#>     Attrib V54    -0.03394162056392577
#>     Attrib V55    0.003909248908778202
#>     Attrib V56    0.07387137419512048
#>     Attrib V57    0.14810123208734155
#>     Attrib V58    -0.019376735920103166
#>     Attrib V59    0.018276723778755173
#>     Attrib V6    0.06730535050214155
#>     Attrib V60    0.08338536979887745
#>     Attrib V7    0.12733813115830275
#>     Attrib V8    0.023557057548774442
#>     Attrib V9    -0.012124598661598745
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.7078910645613822
#>     Attrib V1    0.17326717222063234
#>     Attrib V10    0.35253328287095353
#>     Attrib V11    1.0319671727551316
#>     Attrib V12    0.6895731269926071
#>     Attrib V13    0.03348299085607362
#>     Attrib V14    -0.229360436642437
#>     Attrib V15    -0.17182090522519003
#>     Attrib V16    -0.7127366148917116
#>     Attrib V17    -0.619209414148833
#>     Attrib V18    -0.5358656672551998
#>     Attrib V19    -0.56033166644768
#>     Attrib V2    0.0910350099070382
#>     Attrib V20    -0.6735064076375241
#>     Attrib V21    -0.21562919376980594
#>     Attrib V22    -0.33700249711279906
#>     Attrib V23    -0.14420946131335804
#>     Attrib V24    0.1322996788430678
#>     Attrib V25    -0.43101638864538333
#>     Attrib V26    -0.05837398400196216
#>     Attrib V27    0.23460827812255816
#>     Attrib V28    0.8215592616944988
#>     Attrib V29    0.46406966019000534
#>     Attrib V3    -0.22247000946048634
#>     Attrib V30    0.27316063391615614
#>     Attrib V31    -0.4351370902839183
#>     Attrib V32    -0.014956061800040204
#>     Attrib V33    -0.32839830419775784
#>     Attrib V34    -0.11258765790833133
#>     Attrib V35    -0.015391212639703262
#>     Attrib V36    -0.5356833353083993
#>     Attrib V37    -0.0554236515520075
#>     Attrib V38    -0.3354945891534674
#>     Attrib V39    0.32560123777326283
#>     Attrib V4    0.2593819562397319
#>     Attrib V40    -0.07786538857118584
#>     Attrib V41    0.4378211783018729
#>     Attrib V42    -0.15306402743623443
#>     Attrib V43    -0.18529630500507632
#>     Attrib V44    0.13385162361438394
#>     Attrib V45    0.3526598963445207
#>     Attrib V46    0.4089742054917259
#>     Attrib V47    0.14066565873496337
#>     Attrib V48    0.5445115743211131
#>     Attrib V49    0.8119180165859557
#>     Attrib V5    0.10224872754312184
#>     Attrib V50    -0.8029784792329595
#>     Attrib V51    0.1939081213370805
#>     Attrib V52    0.5008564064635137
#>     Attrib V53    0.23576890953139795
#>     Attrib V54    -0.04184994507476329
#>     Attrib V55    -0.23669735946120926
#>     Attrib V56    -0.3338907801035417
#>     Attrib V57    -0.16553015578501207
#>     Attrib V58    0.6981950017803445
#>     Attrib V59    0.5515070357470383
#>     Attrib V6    0.24253340329669304
#>     Attrib V60    0.4168304000281257
#>     Attrib V7    -0.3252963525416599
#>     Attrib V8    0.16644478026377846
#>     Attrib V9    0.46828994908284605
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.6214373314250158
#>     Attrib V1    -0.03696076514227305
#>     Attrib V10    -0.17788713461241606
#>     Attrib V11    -0.39410388606138025
#>     Attrib V12    0.06877717989985764
#>     Attrib V13    0.5564958327832109
#>     Attrib V14    0.2086828208441058
#>     Attrib V15    0.052324386357687665
#>     Attrib V16    0.5648595213417962
#>     Attrib V17    0.21298522761990857
#>     Attrib V18    -0.16702713200339683
#>     Attrib V19    -0.2895656532031631
#>     Attrib V2    0.22070473503635266
#>     Attrib V20    -0.7726022644977777
#>     Attrib V21    -1.1343818365376768
#>     Attrib V22    -0.32666918084603785
#>     Attrib V23    -0.5021220177468385
#>     Attrib V24    -0.43766162758184696
#>     Attrib V25    0.7933798823636714
#>     Attrib V26    0.9151270323798066
#>     Attrib V27    1.0861471819300963
#>     Attrib V28    0.36052073888820746
#>     Attrib V29    0.3362752627961412
#>     Attrib V3    0.01824392716559858
#>     Attrib V30    -0.1686971828954895
#>     Attrib V31    1.0635365527424592
#>     Attrib V32    0.16693697529547413
#>     Attrib V33    -0.3909681008283866
#>     Attrib V34    -0.5116873417023857
#>     Attrib V35    0.2360436319356351
#>     Attrib V36    1.2180007215560058
#>     Attrib V37    0.9883250783962837
#>     Attrib V38    0.26120249869218815
#>     Attrib V39    -0.6484861987467191
#>     Attrib V4    -0.7452708676492535
#>     Attrib V40    0.1974484245693948
#>     Attrib V41    -0.5991474254969404
#>     Attrib V42    -0.8337030444741541
#>     Attrib V43    0.027892062583342044
#>     Attrib V44    -0.050514806894461126
#>     Attrib V45    -0.25194925435745497
#>     Attrib V46    0.09464584306678571
#>     Attrib V47    0.5242500997650602
#>     Attrib V48    -0.10064977579365252
#>     Attrib V49    -0.6189214347269112
#>     Attrib V5    -0.005137186285418678
#>     Attrib V50    1.3765697928335627
#>     Attrib V51    -0.050861565527987616
#>     Attrib V52    -0.7622511821112996
#>     Attrib V53    -0.17958840455964284
#>     Attrib V54    -0.6720662479144431
#>     Attrib V55    -0.2020602029806051
#>     Attrib V56    -0.06527081730025737
#>     Attrib V57    0.05232681522698398
#>     Attrib V58    -1.072307157089107
#>     Attrib V59    -0.8492397442108569
#>     Attrib V6    -0.13125933733199896
#>     Attrib V60    0.22213669626724009
#>     Attrib V7    0.3435842688278201
#>     Attrib V8    -1.0031077873926757
#>     Attrib V9    -0.8910425409135738
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    0.058936743400840805
#>     Attrib V1    0.07537713009384474
#>     Attrib V10    0.027830718208888074
#>     Attrib V11    0.06173703860227617
#>     Attrib V12    0.045566415025613455
#>     Attrib V13    -0.04573061703055272
#>     Attrib V14    -0.033069486046169154
#>     Attrib V15    0.054393133050700315
#>     Attrib V16    -0.04363904869284648
#>     Attrib V17    0.005942160735513366
#>     Attrib V18    0.07156023651172357
#>     Attrib V19    0.07009905754326107
#>     Attrib V2    -0.04254852601575824
#>     Attrib V20    0.05677146577178585
#>     Attrib V21    0.1464695726490101
#>     Attrib V22    -0.07361026419558031
#>     Attrib V23    -0.15221704859451837
#>     Attrib V24    -0.0126017230676011
#>     Attrib V25    -0.21973069723884636
#>     Attrib V26    -0.289448323454225
#>     Attrib V27    -0.31569174265626904
#>     Attrib V28    -0.12307835178927348
#>     Attrib V29    -0.14264410432060226
#>     Attrib V3    0.04437889260437086
#>     Attrib V30    -0.06447361276036631
#>     Attrib V31    -0.2736062547950659
#>     Attrib V32    -0.012773278626246406
#>     Attrib V33    0.06193614720696967
#>     Attrib V34    0.1691539310675698
#>     Attrib V35    0.03656635242552704
#>     Attrib V36    -0.1646489353602549
#>     Attrib V37    -0.07521026658876531
#>     Attrib V38    0.05321704887237617
#>     Attrib V39    0.2384464881493773
#>     Attrib V4    0.1884824578330685
#>     Attrib V40    -0.05347595940525705
#>     Attrib V41    0.04075713808910318
#>     Attrib V42    0.10197581850493798
#>     Attrib V43    0.004637078789869187
#>     Attrib V44    0.03831879005275501
#>     Attrib V45    0.1291149557360746
#>     Attrib V46    0.027896766296618834
#>     Attrib V47    -0.09700329534478414
#>     Attrib V48    0.04169227862161029
#>     Attrib V49    0.09926647756370523
#>     Attrib V5    0.03566096296161471
#>     Attrib V50    -0.18913665455112466
#>     Attrib V51    0.044885766663930536
#>     Attrib V52    0.150188006371853
#>     Attrib V53    0.13542733634505177
#>     Attrib V54    0.1971248665547834
#>     Attrib V55    0.17149132250255386
#>     Attrib V56    0.09851814419295019
#>     Attrib V57    0.11960482202734905
#>     Attrib V58    0.364563403818829
#>     Attrib V59    0.2781370325075983
#>     Attrib V6    0.05886210730189524
#>     Attrib V60    0.16852878152285472
#>     Attrib V7    -0.027090313134963052
#>     Attrib V8    0.08363584615575265
#>     Attrib V9    0.15698138002443848
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.24572898568544263
#>     Attrib V1    0.10650284916043043
#>     Attrib V10    0.033677517160104795
#>     Attrib V11    0.09584502295105828
#>     Attrib V12    0.003129820122175407
#>     Attrib V13    -0.17422964335993893
#>     Attrib V14    -0.04599504233025921
#>     Attrib V15    0.15180865288889292
#>     Attrib V16    -0.1442155445594662
#>     Attrib V17    -0.027610089639229583
#>     Attrib V18    0.078681319239461
#>     Attrib V19    0.1230220344982876
#>     Attrib V2    0.011893824468875984
#>     Attrib V20    0.17094028814199
#>     Attrib V21    0.33623591592642676
#>     Attrib V22    0.07781942089271908
#>     Attrib V23    -0.0892222215656171
#>     Attrib V24    0.009016419400084155
#>     Attrib V25    -0.38463554831540664
#>     Attrib V26    -0.40253888742724575
#>     Attrib V27    -0.4722587497008953
#>     Attrib V28    -0.23556958580378717
#>     Attrib V29    -0.2297599016267024
#>     Attrib V3    -0.0115810502374751
#>     Attrib V30    -0.008984090701852144
#>     Attrib V31    -0.36254415985215566
#>     Attrib V32    -0.10094155717383674
#>     Attrib V33    0.1399621786678951
#>     Attrib V34    0.1471535208886554
#>     Attrib V35    0.012721364083479684
#>     Attrib V36    -0.322479651439129
#>     Attrib V37    -0.2170094009522597
#>     Attrib V38    0.06229564374918936
#>     Attrib V39    0.30710447096138727
#>     Attrib V4    0.257155329011843
#>     Attrib V40    -0.14788926065102373
#>     Attrib V41    0.08249156432222404
#>     Attrib V42    0.13237184841442132
#>     Attrib V43    0.06877490056038858
#>     Attrib V44    0.15884292006741366
#>     Attrib V45    0.21091330986154513
#>     Attrib V46    -0.050447279312623036
#>     Attrib V47    -0.24785331102685557
#>     Attrib V48    0.07795411466779377
#>     Attrib V49    0.15069078724576554
#>     Attrib V5    0.040693567213604794
#>     Attrib V50    -0.42163375328773495
#>     Attrib V51    -0.02503291975414854
#>     Attrib V52    0.14735627640007654
#>     Attrib V53    0.07214217375821654
#>     Attrib V54    0.2997196043209552
#>     Attrib V55    0.2034212120610947
#>     Attrib V56    0.11490498546003701
#>     Attrib V57    0.1267181978084279
#>     Attrib V58    0.4030643219096867
#>     Attrib V59    0.4191221732839951
#>     Attrib V6    0.06274689154365257
#>     Attrib V60    0.15514652648862698
#>     Attrib V7    -0.12819540498733428
#>     Attrib V8    0.20697383720110094
#>     Attrib V9    0.21259987219072993
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.33828337104797646
#>     Attrib V1    0.03384005758452629
#>     Attrib V10    -0.11394385245842482
#>     Attrib V11    -0.407555459305978
#>     Attrib V12    -0.33006362448336163
#>     Attrib V13    -0.04927342176469738
#>     Attrib V14    0.11129511352631376
#>     Attrib V15    0.02144906230213453
#>     Attrib V16    0.2521654802457384
#>     Attrib V17    0.011198566638630628
#>     Attrib V18    -0.04506441384219717
#>     Attrib V19    -0.15666478460194788
#>     Attrib V2    0.04933811656013508
#>     Attrib V20    -0.08358434761158401
#>     Attrib V21    -0.24933991509656414
#>     Attrib V22    -0.1733852498181166
#>     Attrib V23    -0.20768939706770692
#>     Attrib V24    -0.20895543089904628
#>     Attrib V25    0.2581407980397448
#>     Attrib V26    0.2042473891461252
#>     Attrib V27    0.1828676710936763
#>     Attrib V28    -0.2630482475384545
#>     Attrib V29    -0.2538019547045203
#>     Attrib V3    0.1610858841043334
#>     Attrib V30    -0.2111793650333908
#>     Attrib V31    0.3618700602772853
#>     Attrib V32    0.027803143666099893
#>     Attrib V33    0.014853025110169461
#>     Attrib V34    -0.1339667395766145
#>     Attrib V35    -0.02490790180754609
#>     Attrib V36    0.4591254202160729
#>     Attrib V37    0.15253898285780382
#>     Attrib V38    0.0928698648597097
#>     Attrib V39    -0.2741437428472593
#>     Attrib V4    -0.2692685227983016
#>     Attrib V40    0.09225921087670673
#>     Attrib V41    -0.29285030832084974
#>     Attrib V42    -0.09957889239620922
#>     Attrib V43    0.062466494455607216
#>     Attrib V44    -0.025967041020449833
#>     Attrib V45    -0.2491586321901855
#>     Attrib V46    -0.13276791981023978
#>     Attrib V47    0.09828952215296644
#>     Attrib V48    -0.12535056688309448
#>     Attrib V49    -0.2580083316795283
#>     Attrib V5    -0.08185545684903452
#>     Attrib V50    0.6056451875315981
#>     Attrib V51    -0.06693476519270576
#>     Attrib V52    -0.341212467627603
#>     Attrib V53    0.0216503477254462
#>     Attrib V54    -0.15633413852153608
#>     Attrib V55    0.006875172450115997
#>     Attrib V56    0.1291459101041603
#>     Attrib V57    0.1584742244514863
#>     Attrib V58    -0.3133499074308261
#>     Attrib V59    -0.225003627818264
#>     Attrib V6    -0.18882254876401675
#>     Attrib V60    0.015490711934011685
#>     Attrib V7    0.28494455200408725
#>     Attrib V8    -0.1373542087622194
#>     Attrib V9    -0.2818458754375864
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.646063752095853
#>     Attrib V1    -0.041106837798924586
#>     Attrib V10    0.28836166354369863
#>     Attrib V11    0.8089523518855434
#>     Attrib V12    0.6198696413848441
#>     Attrib V13    -0.014568317916042068
#>     Attrib V14    -0.26997176003112167
#>     Attrib V15    -0.23405035950911823
#>     Attrib V16    -0.6616507085380984
#>     Attrib V17    -0.46577370402612767
#>     Attrib V18    -0.27547066616139587
#>     Attrib V19    -0.15075204457341496
#>     Attrib V2    0.01645905257528092
#>     Attrib V20    -0.43333274352645224
#>     Attrib V21    0.020155446588340856
#>     Attrib V22    0.09810745765420362
#>     Attrib V23    0.31963478503042214
#>     Attrib V24    0.5170201224361302
#>     Attrib V25    -0.11300210613229326
#>     Attrib V26    0.15415166781106973
#>     Attrib V27    0.34282842496030563
#>     Attrib V28    1.052062219751177
#>     Attrib V29    0.728664405337363
#>     Attrib V3    -0.23260938746707946
#>     Attrib V30    0.2932733964728895
#>     Attrib V31    -0.6240388451078399
#>     Attrib V32    -0.09023270533332055
#>     Attrib V33    -0.28754019585583485
#>     Attrib V34    -0.017007394835357775
#>     Attrib V35    0.017224518936084603
#>     Attrib V36    -0.4432653662032728
#>     Attrib V37    0.01822127836156729
#>     Attrib V38    -0.27994530121475786
#>     Attrib V39    0.4280509330921641
#>     Attrib V4    0.41448774859806187
#>     Attrib V40    -0.039485667543400445
#>     Attrib V41    0.6441333516470051
#>     Attrib V42    0.08992345455267307
#>     Attrib V43    -0.11228916165688156
#>     Attrib V44    0.19175470732964028
#>     Attrib V45    0.4129345447932419
#>     Attrib V46    0.43294286817212435
#>     Attrib V47    0.14067553254268803
#>     Attrib V48    0.4073343243088827
#>     Attrib V49    0.8066051895400542
#>     Attrib V5    0.2616489664804506
#>     Attrib V50    -0.9602867230155882
#>     Attrib V51    0.27105009058925195
#>     Attrib V52    0.7027094336913539
#>     Attrib V53    0.42787701569947395
#>     Attrib V54    0.10210685637315149
#>     Attrib V55    -0.42866416496848836
#>     Attrib V56    -0.41244473852996477
#>     Attrib V57    -0.26808808167435255
#>     Attrib V58    0.6025810684096198
#>     Attrib V59    0.48218854590319404
#>     Attrib V6    0.37168390222364106
#>     Attrib V60    0.3218930141621481
#>     Attrib V7    -0.3830998826166951
#>     Attrib V8    0.18401014756852194
#>     Attrib V9    0.48363534569591443
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.2857743146518173
#>     Attrib V1    -0.049195274647856564
#>     Attrib V10    0.08436085426143002
#>     Attrib V11    0.11469428954239236
#>     Attrib V12    -0.029281013376990968
#>     Attrib V13    -0.34023381276979153
#>     Attrib V14    -0.2472344712078164
#>     Attrib V15    -0.10770376512977334
#>     Attrib V16    -0.3462614573413342
#>     Attrib V17    -0.0014602168964191306
#>     Attrib V18    0.24456008937452328
#>     Attrib V19    0.40855035501627657
#>     Attrib V2    -0.17549126295458028
#>     Attrib V20    0.4873164300027728
#>     Attrib V21    0.7626543685340924
#>     Attrib V22    0.4583492981605132
#>     Attrib V23    0.36892968854713637
#>     Attrib V24    0.2792335857163358
#>     Attrib V25    -0.17983769026708696
#>     Attrib V26    -0.09881813211613563
#>     Attrib V27    -0.34882390661473045
#>     Attrib V28    0.030353016166520943
#>     Attrib V29    0.17064861446044408
#>     Attrib V3    -0.13251446490767677
#>     Attrib V30    0.16451694200560588
#>     Attrib V31    -0.8360873405763082
#>     Attrib V32    -0.2690595244180986
#>     Attrib V33    0.10073646577423082
#>     Attrib V34    0.316493449188564
#>     Attrib V35    0.22011879741008067
#>     Attrib V36    0.04230390516658749
#>     Attrib V37    0.25958479511056864
#>     Attrib V38    0.3166547599839772
#>     Attrib V39    0.5730984619930863
#>     Attrib V4    0.3879342361306387
#>     Attrib V40    -0.25071473743394485
#>     Attrib V41    0.10617960980283324
#>     Attrib V42    0.20968263529735331
#>     Attrib V43    0.17871756337660147
#>     Attrib V44    0.6252952415519961
#>     Attrib V45    0.5411385685949837
#>     Attrib V46    0.11774685629393598
#>     Attrib V47    -0.22974077484272412
#>     Attrib V48    0.05367899248710879
#>     Attrib V49    0.2952502814685698
#>     Attrib V5    0.16343858760505134
#>     Attrib V50    -0.8172429821884875
#>     Attrib V51    0.07274242455991038
#>     Attrib V52    0.4229008027769051
#>     Attrib V53    0.10375256856933404
#>     Attrib V54    0.42262390909005165
#>     Attrib V55    -0.04910978322610102
#>     Attrib V56    0.034263578249215755
#>     Attrib V57    -0.1357473024974624
#>     Attrib V58    0.42991115762064297
#>     Attrib V59    0.4572287972929311
#>     Attrib V6    0.18525069991978602
#>     Attrib V60    0.03531311285995486
#>     Attrib V7    -0.21605769868240543
#>     Attrib V8    0.1617156535658204
#>     Attrib V9    0.38301645581018384
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.542989830469383
#>     Attrib V1    0.031646647454182344
#>     Attrib V10    -0.21119069273624042
#>     Attrib V11    -0.5001058687802199
#>     Attrib V12    -0.030911468842461088
#>     Attrib V13    0.49734703881484227
#>     Attrib V14    0.24745414301409807
#>     Attrib V15    0.08987668227336781
#>     Attrib V16    0.5952601055062614
#>     Attrib V17    0.2018637942185317
#>     Attrib V18    -0.1769337663033481
#>     Attrib V19    -0.3351887647677282
#>     Attrib V2    0.2072888359761406
#>     Attrib V20    -0.6943359898450082
#>     Attrib V21    -0.981543488049448
#>     Attrib V22    -0.3868479963791036
#>     Attrib V23    -0.5745079128667469
#>     Attrib V24    -0.48770150121507094
#>     Attrib V25    0.7683629288130178
#>     Attrib V26    0.8475237475199746
#>     Attrib V27    1.0578502994558907
#>     Attrib V28    0.2205543037470386
#>     Attrib V29    0.20876992688092835
#>     Attrib V3    3.0053194376260543E-4
#>     Attrib V30    -0.19521237727556945
#>     Attrib V31    1.111946913715477
#>     Attrib V32    0.13283037029260844
#>     Attrib V33    -0.34529722176071453
#>     Attrib V34    -0.49631943635396386
#>     Attrib V35    0.22728826290221513
#>     Attrib V36    1.155884795455635
#>     Attrib V37    0.8935958357883425
#>     Attrib V38    0.2147837625233774
#>     Attrib V39    -0.6768648996779716
#>     Attrib V4    -0.7093137212123781
#>     Attrib V40    0.2550889836005608
#>     Attrib V41    -0.5405358212642827
#>     Attrib V42    -0.79712186807754
#>     Attrib V43    0.09626121532957263
#>     Attrib V44    -0.036599360593385435
#>     Attrib V45    -0.35215154520020703
#>     Attrib V46    0.028486562104830655
#>     Attrib V47    0.4557840253873205
#>     Attrib V48    -0.12936710955521147
#>     Attrib V49    -0.6644581018944956
#>     Attrib V5    0.013913609063594163
#>     Attrib V50    1.4515603625262485
#>     Attrib V51    -0.11252252404818472
#>     Attrib V52    -0.7494220509045382
#>     Attrib V53    -0.1414945157895799
#>     Attrib V54    -0.6180903825249017
#>     Attrib V55    -0.18478705841004803
#>     Attrib V56    -0.09187451848498186
#>     Attrib V57    0.2212649520349449
#>     Attrib V58    -1.0528020671971925
#>     Attrib V59    -0.7684786991474772
#>     Attrib V6    -0.14671123788795296
#>     Attrib V60    0.33998559084582114
#>     Attrib V7    0.46762933819517394
#>     Attrib V8    -1.016876715349003
#>     Attrib V9    -0.8795899211862342
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.3316055640342272
#>     Attrib V1    0.16979072412038237
#>     Attrib V10    -0.05958455394387343
#>     Attrib V11    0.008215581805124997
#>     Attrib V12    -0.01964681833855304
#>     Attrib V13    -0.28135605410251846
#>     Attrib V14    -0.017322845367267328
#>     Attrib V15    0.1583515155183141
#>     Attrib V16    -0.1390866976617249
#>     Attrib V17    -0.03775021935787459
#>     Attrib V18    0.11643144763001392
#>     Attrib V19    0.11397164084331507
#>     Attrib V2    -0.07231328177607425
#>     Attrib V20    0.3451987697242838
#>     Attrib V21    0.52706395762795
#>     Attrib V22    0.04726058644196284
#>     Attrib V23    -0.0915103334642884
#>     Attrib V24    0.032626553358439725
#>     Attrib V25    -0.5512048411123973
#>     Attrib V26    -0.638625801600038
#>     Attrib V27    -0.7933008398367102
#>     Attrib V28    -0.5232761898456145
#>     Attrib V29    -0.38299320759942285
#>     Attrib V3    -0.04558662117267499
#>     Attrib V30    -0.08318629312495893
#>     Attrib V31    -0.5172986239587894
#>     Attrib V32    -0.13051009065167818
#>     Attrib V33    0.15635389869584412
#>     Attrib V34    0.2755658443210222
#>     Attrib V35    -0.05715711114311403
#>     Attrib V36    -0.501254640068981
#>     Attrib V37    -0.35549322468112093
#>     Attrib V38    -0.02457356000263292
#>     Attrib V39    0.32602593478553304
#>     Attrib V4    0.33233855490519515
#>     Attrib V40    -0.13846304862394976
#>     Attrib V41    0.08052117653938806
#>     Attrib V42    0.29883955680851454
#>     Attrib V43    0.12844239583047817
#>     Attrib V44    0.14741927794466833
#>     Attrib V45    0.18202881060225617
#>     Attrib V46    -0.02373852489989784
#>     Attrib V47    -0.35413356752394576
#>     Attrib V48    0.06086396591304123
#>     Attrib V49    0.21668776885235355
#>     Attrib V5    0.04490479417412808
#>     Attrib V50    -0.5727417578272997
#>     Attrib V51    -0.08144450477949358
#>     Attrib V52    0.23336181127666844
#>     Attrib V53    0.08725853560787374
#>     Attrib V54    0.5390023210199282
#>     Attrib V55    0.3075523729575392
#>     Attrib V56    0.18905708859991596
#>     Attrib V57    0.14229156295661272
#>     Attrib V58    0.6370378208407772
#>     Attrib V59    0.6408190604978794
#>     Attrib V6    0.04847647523439424
#>     Attrib V60    0.19663119206108565
#>     Attrib V7    -0.125095138457409
#>     Attrib V8    0.17500395598614277
#>     Attrib V9    0.25446545784484614
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.2706981086678399
#>     Attrib V1    0.10381487726941371
#>     Attrib V10    -0.09305640967931451
#>     Attrib V11    0.0011556835459883917
#>     Attrib V12    -0.02594895602974537
#>     Attrib V13    -0.2728296902611199
#>     Attrib V14    -0.06177030492798681
#>     Attrib V15    0.13883447178259192
#>     Attrib V16    -0.1886421205261987
#>     Attrib V17    0.050796358794122615
#>     Attrib V18    0.20135573239423038
#>     Attrib V19    0.2599090019482757
#>     Attrib V2    -0.12824910647112298
#>     Attrib V20    0.41566077008237723
#>     Attrib V21    0.584724420800595
#>     Attrib V22    0.16652390229130246
#>     Attrib V23    0.049283216665395375
#>     Attrib V24    0.005648386223707707
#>     Attrib V25    -0.4524673798274555
#>     Attrib V26    -0.49894774880086373
#>     Attrib V27    -0.7855638117533496
#>     Attrib V28    -0.5082988011431397
#>     Attrib V29    -0.38179527121230067
#>     Attrib V3    0.023775204004089258
#>     Attrib V30    -0.08208606330461507
#>     Attrib V31    -0.6308251461995814
#>     Attrib V32    -0.17262897594023727
#>     Attrib V33    0.21950406831901378
#>     Attrib V34    0.34279519748681414
#>     Attrib V35    0.09713033481470605
#>     Attrib V36    -0.3492643422652134
#>     Attrib V37    -0.21039993959193623
#>     Attrib V38    0.040914323501383076
#>     Attrib V39    0.39523952955350294
#>     Attrib V4    0.3876881273040446
#>     Attrib V40    -0.18215608575339418
#>     Attrib V41    0.08449201175350954
#>     Attrib V42    0.2885305812073751
#>     Attrib V43    0.13377839181443812
#>     Attrib V44    0.19482726435851086
#>     Attrib V45    0.27030823858364356
#>     Attrib V46    -0.03325757635165202
#>     Attrib V47    -0.2744592446137484
#>     Attrib V48    -0.05526472618568574
#>     Attrib V49    0.154483225353743
#>     Attrib V5    0.03815698890350627
#>     Attrib V50    -0.5796529853190828
#>     Attrib V51    -0.06702658442981031
#>     Attrib V52    0.32393000029782865
#>     Attrib V53    0.1848173745469105
#>     Attrib V54    0.5217486478402886
#>     Attrib V55    0.27485532624214887
#>     Attrib V56    0.19778796879802857
#>     Attrib V57    0.08854819269368919
#>     Attrib V58    0.5602389113445595
#>     Attrib V59    0.6052331407028871
#>     Attrib V6    0.09006849520042935
#>     Attrib V60    0.10063982489558122
#>     Attrib V7    -0.12017001042582251
#>     Attrib V8    0.23386472030643995
#>     Attrib V9    0.2520119209150091
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.14669805476210368
#>     Attrib V1    0.032759736396750755
#>     Attrib V10    -0.07746359998303318
#>     Attrib V11    -0.18929749990280953
#>     Attrib V12    -0.11956675265469859
#>     Attrib V13    -0.07605501916583185
#>     Attrib V14    0.004268563962798117
#>     Attrib V15    0.02803207653172963
#>     Attrib V16    0.05342670734029076
#>     Attrib V17    0.05117339430288059
#>     Attrib V18    -0.04771225888004447
#>     Attrib V19    -0.09639244654213609
#>     Attrib V2    0.03457526133280791
#>     Attrib V20    -0.09528289076995816
#>     Attrib V21    -0.1424572890287758
#>     Attrib V22    -0.11443901811183513
#>     Attrib V23    -0.04111430314186142
#>     Attrib V24    -0.10520686289300461
#>     Attrib V25    0.05309393504921967
#>     Attrib V26    0.05912105251025455
#>     Attrib V27    -0.04405934055856961
#>     Attrib V28    -0.10488679848779464
#>     Attrib V29    -0.06963056351656859
#>     Attrib V3    0.06204291688147323
#>     Attrib V30    -0.026262679868816675
#>     Attrib V31    0.1605798308739583
#>     Attrib V32    0.12164897765191826
#>     Attrib V33    0.040393267765744145
#>     Attrib V34    -0.0015522075547891986
#>     Attrib V35    0.04516850935249782
#>     Attrib V36    0.22498091748621135
#>     Attrib V37    0.09497429351927929
#>     Attrib V38    0.039117530520301876
#>     Attrib V39    -0.09888142610999437
#>     Attrib V4    -0.009110173331443129
#>     Attrib V40    0.1213714403967181
#>     Attrib V41    0.022856343194294932
#>     Attrib V42    0.01108218058548094
#>     Attrib V43    0.11214134380215349
#>     Attrib V44    -0.013917452151506717
#>     Attrib V45    -0.11940735523293866
#>     Attrib V46    -0.017370982425441522
#>     Attrib V47    0.07716706879977638
#>     Attrib V48    -0.03865673550054041
#>     Attrib V49    -0.13729568055589053
#>     Attrib V5    -0.059456994850832924
#>     Attrib V50    0.25892965904732
#>     Attrib V51    0.027557101053001305
#>     Attrib V52    -0.024071791513104755
#>     Attrib V53    0.009381345585983473
#>     Attrib V54    -0.05268553459482603
#>     Attrib V55    -0.004288410054017635
#>     Attrib V56    0.0979911671729581
#>     Attrib V57    0.17998596765468455
#>     Attrib V58    -0.0753552500571445
#>     Attrib V59    -0.07362909035690893
#>     Attrib V6    0.021488105314312365
#>     Attrib V60    -0.01776610762484945
#>     Attrib V7    0.07188927218452053
#>     Attrib V8    0.027091167412943207
#>     Attrib V9    -0.011734805397081762
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    1.0664009354749837
#>     Attrib V1    -0.026273915125821314
#>     Attrib V10    0.665279972243016
#>     Attrib V11    1.3954879439228558
#>     Attrib V12    1.3511704811544785
#>     Attrib V13    0.48095349727550607
#>     Attrib V14    -0.27116655741957785
#>     Attrib V15    -0.48711324501835057
#>     Attrib V16    -1.0134901419379083
#>     Attrib V17    -0.7509729002976907
#>     Attrib V18    -0.36835054220616426
#>     Attrib V19    -0.2920197673017085
#>     Attrib V2    0.2655866537392006
#>     Attrib V20    -0.7890315247066251
#>     Attrib V21    0.10914890673020491
#>     Attrib V22    0.5938353466664181
#>     Attrib V23    1.0811980950711007
#>     Attrib V24    1.0488903480714655
#>     Attrib V25    -0.1984719128804376
#>     Attrib V26    0.5382842509426421
#>     Attrib V27    1.1399858404550338
#>     Attrib V28    2.1961112825931584
#>     Attrib V29    1.5318313343032013
#>     Attrib V3    -0.07943834331757733
#>     Attrib V30    0.2861492775012204
#>     Attrib V31    -1.0497230949085714
#>     Attrib V32    -0.449504083415138
#>     Attrib V33    -1.4271152521133326
#>     Attrib V34    -0.6177841082778913
#>     Attrib V35    -0.1831632845169082
#>     Attrib V36    -0.7835058140232775
#>     Attrib V37    0.468219338149025
#>     Attrib V38    -0.48423275464726645
#>     Attrib V39    0.6887259133179908
#>     Attrib V4    0.6652167540345354
#>     Attrib V40    0.22949343133654904
#>     Attrib V41    1.8661596341407602
#>     Attrib V42    0.14304279713370072
#>     Attrib V43    -0.05098503897689294
#>     Attrib V44    0.4667392589758886
#>     Attrib V45    0.3442933773775939
#>     Attrib V46    0.7482897649635292
#>     Attrib V47    0.5885815668731765
#>     Attrib V48    0.7428837797137368
#>     Attrib V49    1.3121303041937575
#>     Attrib V5    0.8788585305857171
#>     Attrib V50    -1.4394411818091348
#>     Attrib V51    0.8979191481426987
#>     Attrib V52    1.174080265575486
#>     Attrib V53    1.0616136195724302
#>     Attrib V54    0.17710111298620695
#>     Attrib V55    -1.560699092397478
#>     Attrib V56    -0.5083240004817177
#>     Attrib V57    -0.4731811103022226
#>     Attrib V58    0.4697109714972429
#>     Attrib V59    0.8836198480060612
#>     Attrib V6    1.00279402168996
#>     Attrib V60    0.986887349596844
#>     Attrib V7    -0.5824606390917473
#>     Attrib V8    -0.35551943392761814
#>     Attrib V9    0.5673701309465755
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.29230005392892167
#>     Attrib V1    0.03023204588142823
#>     Attrib V10    -0.14191791504177612
#>     Attrib V11    -0.40323116812683446
#>     Attrib V12    -0.24962315900500537
#>     Attrib V13    -0.052671884772354544
#>     Attrib V14    0.14210921345972863
#>     Attrib V15    0.019422276887138865
#>     Attrib V16    0.21077535535948225
#>     Attrib V17    0.05727944037736802
#>     Attrib V18    -0.11138732735188275
#>     Attrib V19    -0.052389394077557314
#>     Attrib V2    0.046375110859453055
#>     Attrib V20    -0.0863597731340196
#>     Attrib V21    -0.24003700058046298
#>     Attrib V22    -0.15498650294589014
#>     Attrib V23    -0.19014728689633661
#>     Attrib V24    -0.1873419370632037
#>     Attrib V25    0.2141433206232992
#>     Attrib V26    0.12124506537218924
#>     Attrib V27    0.17437278095598394
#>     Attrib V28    -0.17607678379773314
#>     Attrib V29    -0.16908136153563902
#>     Attrib V3    0.05627918400585697
#>     Attrib V30    -0.13941427915091079
#>     Attrib V31    0.32128708922935206
#>     Attrib V32    0.009088329222645193
#>     Attrib V33    0.04117732847740052
#>     Attrib V34    -0.16125531438446034
#>     Attrib V35    0.052795258783462355
#>     Attrib V36    0.4095653874628141
#>     Attrib V37    0.19324627908179942
#>     Attrib V38    0.07447480714765668
#>     Attrib V39    -0.2609163205856398
#>     Attrib V4    -0.18741157477989911
#>     Attrib V40    0.09213925630633645
#>     Attrib V41    -0.2403465363191703
#>     Attrib V42    -0.07796007287409994
#>     Attrib V43    0.06679266118253506
#>     Attrib V44    -0.04349906412496461
#>     Attrib V45    -0.19530107515469763
#>     Attrib V46    -0.14550536317569474
#>     Attrib V47    0.018483076860680632
#>     Attrib V48    -0.0780638684031253
#>     Attrib V49    -0.26831422571671104
#>     Attrib V5    -0.137791560515255
#>     Attrib V50    0.5865701293825781
#>     Attrib V51    -0.13618048170394453
#>     Attrib V52    -0.32838955293436334
#>     Attrib V53    -0.016264803486027882
#>     Attrib V54    -0.12071063955868751
#>     Attrib V55    -0.021437663963236136
#>     Attrib V56    0.10594519924530942
#>     Attrib V57    0.20420277085669306
#>     Attrib V58    -0.2797312700824978
#>     Attrib V59    -0.19589733870865964
#>     Attrib V6    -0.11107667230818966
#>     Attrib V60    0.049978392918826914
#>     Attrib V7    0.2118546689722693
#>     Attrib V8    -0.13324480070983674
#>     Attrib V9    -0.28924612074404377
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.6628730496839801
#>     Attrib V1    0.10648577749426537
#>     Attrib V10    0.3426255714424472
#>     Attrib V11    0.601809102057172
#>     Attrib V12    0.28408979086324065
#>     Attrib V13    -0.18322533055900977
#>     Attrib V14    -0.40446640176709114
#>     Attrib V15    -0.2428039588924019
#>     Attrib V16    -0.5835487954831462
#>     Attrib V17    -0.34733728010958836
#>     Attrib V18    -0.02392665859818814
#>     Attrib V19    0.0366058478999382
#>     Attrib V2    -0.057711577186782506
#>     Attrib V20    -0.04807992011029445
#>     Attrib V21    0.44112378419236636
#>     Attrib V22    0.29032371052088113
#>     Attrib V23    0.3646358926109262
#>     Attrib V24    0.4995342722082045
#>     Attrib V25    -0.13881959815893805
#>     Attrib V26    0.16163047950150103
#>     Attrib V27    0.01592880578930911
#>     Attrib V28    0.6175356254116042
#>     Attrib V29    0.5742845295745777
#>     Attrib V3    -0.2092720700481268
#>     Attrib V30    0.3430332330081981
#>     Attrib V31    -0.6352141450194987
#>     Attrib V32    -0.08782291871383732
#>     Attrib V33    -0.16997722297193646
#>     Attrib V34    0.14229487815511208
#>     Attrib V35    0.011141341863527669
#>     Attrib V36    -0.38884626321654975
#>     Attrib V37    0.1169005792144016
#>     Attrib V38    -0.09948622901620435
#>     Attrib V39    0.5424270090852665
#>     Attrib V4    0.2981462085051399
#>     Attrib V40    -0.1624148017992014
#>     Attrib V41    0.5583950647684147
#>     Attrib V42    0.15688525639113912
#>     Attrib V43    -0.10959723205806761
#>     Attrib V44    0.3775616007760286
#>     Attrib V45    0.48995781733979615
#>     Attrib V46    0.27565512345661936
#>     Attrib V47    -0.009185053297256593
#>     Attrib V48    0.27735068676814134
#>     Attrib V49    0.565312944563264
#>     Attrib V5    0.1525990650219524
#>     Attrib V50    -0.9047813448604293
#>     Attrib V51    0.1866344693190432
#>     Attrib V52    0.5247221158444139
#>     Attrib V53    0.24435917234319063
#>     Attrib V54    0.1823040793967219
#>     Attrib V55    -0.38785586746071704
#>     Attrib V56    -0.33532696990220706
#>     Attrib V57    -0.2369867282304732
#>     Attrib V58    0.4551880977435573
#>     Attrib V59    0.39825673195978545
#>     Attrib V6    0.37841700669017986
#>     Attrib V60    0.13252947630542314
#>     Attrib V7    -0.37978324945232494
#>     Attrib V8    0.2592474572548315
#>     Attrib V9    0.6123389476382981
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.5340201316845629
#>     Attrib V1    0.006127261462292053
#>     Attrib V10    -0.11017179408895536
#>     Attrib V11    -0.8266474783499321
#>     Attrib V12    -0.7884337162881724
#>     Attrib V13    -0.11249399107640902
#>     Attrib V14    0.1616785518183257
#>     Attrib V15    -0.09868914897389898
#>     Attrib V16    0.27240067620865394
#>     Attrib V17    -0.14281097983951008
#>     Attrib V18    -0.3826344970933479
#>     Attrib V19    -0.3429537071478497
#>     Attrib V2    -0.011347026587965221
#>     Attrib V20    -0.2665890011203226
#>     Attrib V21    -0.48164618408370885
#>     Attrib V22    -0.37408995314095783
#>     Attrib V23    -0.6097417101352217
#>     Attrib V24    -0.38702785466797646
#>     Attrib V25    0.5174557705461709
#>     Attrib V26    0.5494742186049408
#>     Attrib V27    0.396802380232736
#>     Attrib V28    -0.40797321001401254
#>     Attrib V29    -0.5225691559677602
#>     Attrib V3    0.23503948221727694
#>     Attrib V30    -0.6480612557910922
#>     Attrib V31    0.1552307929323417
#>     Attrib V32    -0.03926342079367164
#>     Attrib V33    -0.07748001454494967
#>     Attrib V34    -0.2706717582033258
#>     Attrib V35    0.5638053135280302
#>     Attrib V36    1.6727178018764834
#>     Attrib V37    1.0461881480863124
#>     Attrib V38    0.8198652556964631
#>     Attrib V39    -0.3452505523492932
#>     Attrib V4    -0.37070623190590696
#>     Attrib V40    0.007448170784119427
#>     Attrib V41    -0.8086927857228683
#>     Attrib V42    -0.473882116062476
#>     Attrib V43    0.2783137467676609
#>     Attrib V44    0.47045419252080184
#>     Attrib V45    0.1280091179961735
#>     Attrib V46    -6.109658295117119E-4
#>     Attrib V47    0.058900853200546
#>     Attrib V48    -0.23017375120725664
#>     Attrib V49    -0.382503097859815
#>     Attrib V5    -0.1918974802628157
#>     Attrib V50    1.2724793324967896
#>     Attrib V51    -0.32193160816800254
#>     Attrib V52    -0.6278860607549817
#>     Attrib V53    -0.011158109944308766
#>     Attrib V54    -0.44391846036725613
#>     Attrib V55    -0.2087922593432607
#>     Attrib V56    0.1571048917695358
#>     Attrib V57    0.32562629086339234
#>     Attrib V58    -0.5476388526077127
#>     Attrib V59    -0.46119095163546336
#>     Attrib V6    -0.37115879618046654
#>     Attrib V60    0.03445302746392316
#>     Attrib V7    0.566705565891123
#>     Attrib V8    -0.4253167522523136
#>     Attrib V9    -0.5006400655296934
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.1954003090554636
#>     Attrib V1    0.03956048014968279
#>     Attrib V10    -0.0055880194812783605
#>     Attrib V11    0.17176292361840323
#>     Attrib V12    0.09684084798554811
#>     Attrib V13    -0.11349053555940927
#>     Attrib V14    0.025886350097418635
#>     Attrib V15    0.07756708987812061
#>     Attrib V16    -0.16764582029701425
#>     Attrib V17    -0.05153644889709335
#>     Attrib V18    0.06295191433486247
#>     Attrib V19    0.04133482761933345
#>     Attrib V2    -0.05924768414489138
#>     Attrib V20    0.15048421797265793
#>     Attrib V21    0.29164769939820406
#>     Attrib V22    0.022211790608119782
#>     Attrib V23    -0.11624891741450534
#>     Attrib V24    0.023262846086612825
#>     Attrib V25    -0.24769697602683519
#>     Attrib V26    -0.3430567993539244
#>     Attrib V27    -0.3822218269339288
#>     Attrib V28    -0.1673781693542073
#>     Attrib V29    -0.10526669788754249
#>     Attrib V3    0.014349530192991051
#>     Attrib V30    -0.06544487740766072
#>     Attrib V31    -0.35393286092721427
#>     Attrib V32    -0.04746544154208976
#>     Attrib V33    0.09178837615006212
#>     Attrib V34    0.1605385277246924
#>     Attrib V35    0.032448860713104065
#>     Attrib V36    -0.24930733587375634
#>     Attrib V37    -0.11580410598745451
#>     Attrib V38    0.029534833913908445
#>     Attrib V39    0.28976984497846253
#>     Attrib V4    0.1856061636365067
#>     Attrib V40    -0.06918670996016667
#>     Attrib V41    0.07974562222026156
#>     Attrib V42    0.07877266260140062
#>     Attrib V43    0.05357787262687318
#>     Attrib V44    0.051842612357183
#>     Attrib V45    0.1940364202736507
#>     Attrib V46    0.003990938232605755
#>     Attrib V47    -0.12202586346662447
#>     Attrib V48    0.06183886299860963
#>     Attrib V49    0.162015898846012
#>     Attrib V5    -5.68741615289449E-4
#>     Attrib V50    -0.3409421529918783
#>     Attrib V51    0.00779982684982535
#>     Attrib V52    0.20372730355282892
#>     Attrib V53    0.09075893311247701
#>     Attrib V54    0.24829365183870286
#>     Attrib V55    0.18950638439660863
#>     Attrib V56    0.09615074257800009
#>     Attrib V57    0.07362357310556861
#>     Attrib V58    0.38292209253710724
#>     Attrib V59    0.381676196962473
#>     Attrib V6    0.04745396282602067
#>     Attrib V60    0.16641186472572894
#>     Attrib V7    -0.09188468220829206
#>     Attrib V8    0.15147942298576889
#>     Attrib V9    0.17657132737896167
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.01421897057158699
#>     Attrib V1    0.12246592628589904
#>     Attrib V10    0.10892837946789388
#>     Attrib V11    0.09501728060822151
#>     Attrib V12    0.09450822251477713
#>     Attrib V13    0.005466806731009685
#>     Attrib V14    -0.01074909225813345
#>     Attrib V15    0.028536499053831075
#>     Attrib V16    -0.08637000894487763
#>     Attrib V17    -0.023858360598044973
#>     Attrib V18    -0.04505101668415256
#>     Attrib V19    -0.0505525447141996
#>     Attrib V2    0.08085867074533783
#>     Attrib V20    -0.05530707332846724
#>     Attrib V21    0.06321713754147411
#>     Attrib V22    -0.09927950172435847
#>     Attrib V23    -0.12035968056982377
#>     Attrib V24    -0.07224354792039527
#>     Attrib V25    -0.11517485083837785
#>     Attrib V26    -0.08768893482028003
#>     Attrib V27    -0.12815923014288072
#>     Attrib V28    0.002480158746426609
#>     Attrib V29    -0.0635193485407287
#>     Attrib V3    0.04764782709221746
#>     Attrib V30    0.034295630354295344
#>     Attrib V31    -0.07227822135043561
#>     Attrib V32    -0.01751086737767674
#>     Attrib V33    0.015034987643111524
#>     Attrib V34    0.07935227738516704
#>     Attrib V35    0.11033579026834933
#>     Attrib V36    -0.031793997852678
#>     Attrib V37    0.057677577864158044
#>     Attrib V38    0.03697297990522551
#>     Attrib V39    0.2518417839410669
#>     Attrib V4    0.18653506972731534
#>     Attrib V40    0.04694094710692804
#>     Attrib V41    0.045935834308801306
#>     Attrib V42    0.07143866307315874
#>     Attrib V43    0.012886067666097996
#>     Attrib V44    0.04117145790684682
#>     Attrib V45    0.1049692767769653
#>     Attrib V46    0.05062270161492407
#>     Attrib V47    -0.02788271713223699
#>     Attrib V48    0.11161408928477959
#>     Attrib V49    0.10027952800293595
#>     Attrib V5    0.016868729069143287
#>     Attrib V50    -0.1360295243265262
#>     Attrib V51    0.02437528555160686
#>     Attrib V52    0.1099919931839086
#>     Attrib V53    0.09284705826419726
#>     Attrib V54    0.12389915068562088
#>     Attrib V55    0.07030100828449572
#>     Attrib V56    0.11283956751475882
#>     Attrib V57    0.07403396514604171
#>     Attrib V58    0.25669933492299324
#>     Attrib V59    0.2634116463418781
#>     Attrib V6    0.0773311252758323
#>     Attrib V60    0.18340418701104236
#>     Attrib V7    -0.031007764960343683
#>     Attrib V8    0.07158969382939695
#>     Attrib V9    0.10312795871779953
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.1576704997667748
#>     Attrib V1    0.10929587607449721
#>     Attrib V10    -0.03438521986142343
#>     Attrib V11    0.023943004746416936
#>     Attrib V12    -0.0715740859746757
#>     Attrib V13    -0.1773399627568261
#>     Attrib V14    -0.005802593150928828
#>     Attrib V15    0.1525381212803182
#>     Attrib V16    -0.10982714307266715
#>     Attrib V17    0.05506883846771362
#>     Attrib V18    0.1881360691215243
#>     Attrib V19    0.1907259205745539
#>     Attrib V2    8.852466636934478E-4
#>     Attrib V20    0.3684891884082457
#>     Attrib V21    0.43784658408426047
#>     Attrib V22    0.1296540154128494
#>     Attrib V23    0.0061208795895649586
#>     Attrib V24    0.025095775888893578
#>     Attrib V25    -0.4118149153294763
#>     Attrib V26    -0.44326495275485284
#>     Attrib V27    -0.6754673538352733
#>     Attrib V28    -0.46844517851552
#>     Attrib V29    -0.3613793685610181
#>     Attrib V3    -0.012337158151733849
#>     Attrib V30    -0.12005052951333393
#>     Attrib V31    -0.4631415398180825
#>     Attrib V32    -0.12320408797374978
#>     Attrib V33    0.21859761153779084
#>     Attrib V34    0.323731085069888
#>     Attrib V35    0.09617409391297634
#>     Attrib V36    -0.2940522255367285
#>     Attrib V37    -0.17220832285026097
#>     Attrib V38    0.09624470143023398
#>     Attrib V39    0.30247277225061103
#>     Attrib V4    0.3095897173431043
#>     Attrib V40    -0.11487583931280498
#>     Attrib V41    0.03782689768364633
#>     Attrib V42    0.20598731648359003
#>     Attrib V43    0.09033602190333424
#>     Attrib V44    0.17630782122411706
#>     Attrib V45    0.1543440679487008
#>     Attrib V46    -0.04661874975336071
#>     Attrib V47    -0.2623520052059093
#>     Attrib V48    -0.01438995073374382
#>     Attrib V49    0.11913094929442478
#>     Attrib V5    0.0179108234547457
#>     Attrib V50    -0.4565783387348289
#>     Attrib V51    -0.05945751612485188
#>     Attrib V52    0.19935674872723386
#>     Attrib V53    0.14412223908726737
#>     Attrib V54    0.4762452140695521
#>     Attrib V55    0.27658673651125915
#>     Attrib V56    0.11472360214700081
#>     Attrib V57    0.11966373648411747
#>     Attrib V58    0.44006563129165993
#>     Attrib V59    0.47046916059101007
#>     Attrib V6    0.06593133852399767
#>     Attrib V60    0.13504860679093694
#>     Attrib V7    -0.07660981120974969
#>     Attrib V8    0.20736427878673652
#>     Attrib V9    0.2501063171330463
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.14611330263663094
#>     Attrib V1    0.09766736968274332
#>     Attrib V10    -0.06835899864343947
#>     Attrib V11    0.01614703620036653
#>     Attrib V12    -0.032464252483107754
#>     Attrib V13    -0.21024861562704444
#>     Attrib V14    -0.001488218427461705
#>     Attrib V15    0.09915360039023349
#>     Attrib V16    -0.1050304229316594
#>     Attrib V17    -0.02460383518512236
#>     Attrib V18    0.17221131125285227
#>     Attrib V19    0.1123769673011614
#>     Attrib V2    -0.06316860388597136
#>     Attrib V20    0.2742373238852942
#>     Attrib V21    0.44121427231791976
#>     Attrib V22    0.10336622279956625
#>     Attrib V23    0.039095916857464594
#>     Attrib V24    -3.411670631795348E-4
#>     Attrib V25    -0.375761908187763
#>     Attrib V26    -0.3716803932884806
#>     Attrib V27    -0.5076760364336889
#>     Attrib V28    -0.2498577614874486
#>     Attrib V29    -0.21684476596604893
#>     Attrib V3    0.04495563408439552
#>     Attrib V30    -0.04010935285255551
#>     Attrib V31    -0.488925527098424
#>     Attrib V32    -0.11306337305293318
#>     Attrib V33    0.14317961422232087
#>     Attrib V34    0.2282041645481176
#>     Attrib V35    0.04000280603198733
#>     Attrib V36    -0.18428898799482818
#>     Attrib V37    -0.13010013550974114
#>     Attrib V38    0.009466856542757196
#>     Attrib V39    0.31872763640866386
#>     Attrib V4    0.24974695111782716
#>     Attrib V40    -0.13690011182248102
#>     Attrib V41    0.009262161772684602
#>     Attrib V42    0.19525602646508228
#>     Attrib V43    0.013801767986407289
#>     Attrib V44    0.17743814169649846
#>     Attrib V45    0.21710857585139753
#>     Attrib V46    -0.0014828470253222174
#>     Attrib V47    -0.21104151515912037
#>     Attrib V48    -0.04218549416781705
#>     Attrib V49    0.16477716263727193
#>     Attrib V5    0.050544284213259225
#>     Attrib V50    -0.44176137020038225
#>     Attrib V51    -0.00804150957674431
#>     Attrib V52    0.21972504448823044
#>     Attrib V53    0.09939040650361093
#>     Attrib V54    0.28453380527165345
#>     Attrib V55    0.13254020608136396
#>     Attrib V56    0.08519279851768642
#>     Attrib V57    0.07475358023931894
#>     Attrib V58    0.47011774300596715
#>     Attrib V59    0.37217480381207846
#>     Attrib V6    0.09873232020085052
#>     Attrib V60    0.09962512521990696
#>     Attrib V7    -0.0873470554135331
#>     Attrib V8    0.21958483448918845
#>     Attrib V9    0.22817337323134437
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
