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
#>     Threshold    -0.6585634394581634
#>     Node 2    1.7459197619504947
#>     Node 3    1.387315895472785
#>     Node 4    0.5127414640392954
#>     Node 5    -3.117703354419649
#>     Node 6    0.3228510387024307
#>     Node 7    3.822331867210151
#>     Node 8    0.8099122685483103
#>     Node 9    3.7781404748936303
#>     Node 10    -1.8674942901539178
#>     Node 11    1.3239106573982773
#>     Node 12    1.4750857015514782
#>     Node 13    0.6334590276359104
#>     Node 14    1.8889210019885678
#>     Node 15    -1.9597726652752288
#>     Node 16    0.6086900210903026
#>     Node 17    -0.1623917261838322
#>     Node 18    -0.29447279930444314
#>     Node 19    3.2229617440381295
#>     Node 20    1.5111879645595057
#>     Node 21    -3.2419388774424798
#>     Node 22    1.4700120178716123
#>     Node 23    2.130392882949821
#>     Node 24    0.025270269747985817
#>     Node 25    4.074248509474012
#>     Node 26    -0.7862588721007691
#>     Node 27    2.6090681489224306
#>     Node 28    -1.6222534174686236
#>     Node 29    1.0315834576994518
#>     Node 30    0.41272823510421525
#>     Node 31    1.0333888814097743
#>     Node 32    0.13734204015674537
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.7183070146401213
#>     Node 2    -1.7763845068566915
#>     Node 3    -1.3712557942296593
#>     Node 4    -0.4848457869466607
#>     Node 5    3.1086388797579994
#>     Node 6    -0.3083420584538464
#>     Node 7    -3.8122486262621877
#>     Node 8    -0.8575907761324242
#>     Node 9    -3.7653370408489875
#>     Node 10    1.8205810969939222
#>     Node 11    -1.286590075586121
#>     Node 12    -1.5491508847680422
#>     Node 13    -0.5853516180111816
#>     Node 14    -1.866116432630999
#>     Node 15    1.956049500649484
#>     Node 16    -0.6315186555745581
#>     Node 17    0.19353954749775368
#>     Node 18    0.33865744612254184
#>     Node 19    -3.2261218586767
#>     Node 20    -1.4897157968825416
#>     Node 21    3.2651232540168693
#>     Node 22    -1.5148500351004288
#>     Node 23    -2.1452657253954515
#>     Node 24    -0.04691892752124165
#>     Node 25    -4.0631327888240545
#>     Node 26    0.7240959956033343
#>     Node 27    -2.6636267590386167
#>     Node 28    1.594463373193687
#>     Node 29    -1.0704725365911738
#>     Node 30    -0.3470654620121467
#>     Node 31    -0.9669742601055831
#>     Node 32    -0.16161795108953184
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.02970783400508011
#>     Attrib V1    0.01832591910130681
#>     Attrib V10    -0.28307235975439377
#>     Attrib V11    0.02372030384897278
#>     Attrib V12    0.3040326747211006
#>     Attrib V13    -0.041133126033780644
#>     Attrib V14    -0.20610061731740448
#>     Attrib V15    -0.10715377609091895
#>     Attrib V16    -0.2184818067617954
#>     Attrib V17    0.4107132947193287
#>     Attrib V18    0.09854447721324545
#>     Attrib V19    -0.04323089616690322
#>     Attrib V2    -0.004444118728901913
#>     Attrib V20    0.5659668699489251
#>     Attrib V21    0.5782082263927133
#>     Attrib V22    0.35616562207880537
#>     Attrib V23    0.4464018572602596
#>     Attrib V24    0.1759014487923559
#>     Attrib V25    -0.27480261306569415
#>     Attrib V26    -0.5834869271863974
#>     Attrib V27    -0.7683755534763841
#>     Attrib V28    -0.5418076613566829
#>     Attrib V29    -0.3257761892147679
#>     Attrib V3    0.07210070823387052
#>     Attrib V30    0.4056193107915254
#>     Attrib V31    -1.1681169600129833
#>     Attrib V32    -0.5084936973980777
#>     Attrib V33    0.3290487896011855
#>     Attrib V34    0.18588390824867013
#>     Attrib V35    -0.22573464904253146
#>     Attrib V36    -0.7730682190004688
#>     Attrib V37    -0.8336880845936705
#>     Attrib V38    -0.1269075170686107
#>     Attrib V39    0.46620027609199777
#>     Attrib V4    0.2911245381780144
#>     Attrib V40    -0.4134257677702481
#>     Attrib V41    -0.0658559466453678
#>     Attrib V42    0.30785153972415374
#>     Attrib V43    0.4427826550452819
#>     Attrib V44    0.1770012396019363
#>     Attrib V45    0.18847246917747534
#>     Attrib V46    -0.19819227916218252
#>     Attrib V47    -0.26243391391250603
#>     Attrib V48    0.295804320537202
#>     Attrib V49    0.4806989912237509
#>     Attrib V5    -0.20341568309897096
#>     Attrib V50    -0.5396338010055753
#>     Attrib V51    -0.1563279478538522
#>     Attrib V52    0.3624647177123726
#>     Attrib V53    0.5592759694376249
#>     Attrib V54    0.49225803089369924
#>     Attrib V55    -0.24065143606262687
#>     Attrib V56    0.28759787591706454
#>     Attrib V57    0.48724383581113334
#>     Attrib V58    0.6928625517697933
#>     Attrib V59    0.8867104652089083
#>     Attrib V6    0.28098590292935893
#>     Attrib V60    0.17286812379215327
#>     Attrib V7    -0.4861462102759663
#>     Attrib V8    -0.14868837938932553
#>     Attrib V9    0.5636931433312306
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.12308659799491845
#>     Attrib V1    0.04008847251498427
#>     Attrib V10    -0.2383301907789869
#>     Attrib V11    -0.10370756664601877
#>     Attrib V12    0.1870176963929024
#>     Attrib V13    -0.005331806664580732
#>     Attrib V14    -0.05490293450171219
#>     Attrib V15    0.08901990592129322
#>     Attrib V16    -0.14709144008979005
#>     Attrib V17    0.20127039171894842
#>     Attrib V18    -0.049830065647902
#>     Attrib V19    -0.09379178096873904
#>     Attrib V2    0.05859893143025472
#>     Attrib V20    0.3205646482511908
#>     Attrib V21    0.30053993791737305
#>     Attrib V22    0.1836476666155072
#>     Attrib V23    0.21110297081669313
#>     Attrib V24    -0.017932246101921605
#>     Attrib V25    -0.32165372063380787
#>     Attrib V26    -0.5699657963746892
#>     Attrib V27    -0.5886661786281228
#>     Attrib V28    -0.3498670574544157
#>     Attrib V29    -0.19251145664307107
#>     Attrib V3    0.057193972005638555
#>     Attrib V30    0.32011884273267066
#>     Attrib V31    -0.7588748610358093
#>     Attrib V32    -0.3079501343663183
#>     Attrib V33    0.2433828119227654
#>     Attrib V34    -0.01843332383516677
#>     Attrib V35    -0.34866721720689114
#>     Attrib V36    -0.7473015879829409
#>     Attrib V37    -0.6518055746777595
#>     Attrib V38    -0.21434401850646156
#>     Attrib V39    0.35658309088751966
#>     Attrib V4    0.21608045868147727
#>     Attrib V40    -0.20345027617274425
#>     Attrib V41    0.027091064766654932
#>     Attrib V42    0.21561192668613785
#>     Attrib V43    0.21425201165820132
#>     Attrib V44    0.021308058654804164
#>     Attrib V45    0.04880921025999515
#>     Attrib V46    -0.1834470433034129
#>     Attrib V47    -0.17118440046542327
#>     Attrib V48    0.19999569665023925
#>     Attrib V49    0.33796464637167717
#>     Attrib V5    -0.13410572581362049
#>     Attrib V50    -0.39755006903786544
#>     Attrib V51    -0.18279335572964947
#>     Attrib V52    0.3691408857883871
#>     Attrib V53    0.4338695830165542
#>     Attrib V54    0.44320162501487803
#>     Attrib V55    -0.1273709704406346
#>     Attrib V56    0.21844125571021134
#>     Attrib V57    0.45210076403077754
#>     Attrib V58    0.5905738453266698
#>     Attrib V59    0.6668024555412496
#>     Attrib V6    0.27866487081457125
#>     Attrib V60    0.12500081104749855
#>     Attrib V7    -0.325523313487646
#>     Attrib V8    -0.0842380185849047
#>     Attrib V9    0.33507232584122454
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.08975508237030093
#>     Attrib V1    0.018436091580535142
#>     Attrib V10    -0.07735469815465748
#>     Attrib V11    -0.01762669173719051
#>     Attrib V12    0.09284447134283409
#>     Attrib V13    0.06494251042719983
#>     Attrib V14    0.07159001199213841
#>     Attrib V15    0.05788918518061599
#>     Attrib V16    -0.08002850934848257
#>     Attrib V17    0.01679683139561576
#>     Attrib V18    -0.08308484858320367
#>     Attrib V19    -0.09945063551190164
#>     Attrib V2    0.033442952308382554
#>     Attrib V20    0.018681095185249443
#>     Attrib V21    0.046675220627012765
#>     Attrib V22    -0.10818058425419076
#>     Attrib V23    -0.0695491986461416
#>     Attrib V24    -0.13402425599849904
#>     Attrib V25    -0.21122420088534608
#>     Attrib V26    -0.2065763579156775
#>     Attrib V27    -0.19420654740332324
#>     Attrib V28    0.002423851856666294
#>     Attrib V29    0.04046084679054548
#>     Attrib V3    0.10881390102214944
#>     Attrib V30    0.094454021966192
#>     Attrib V31    -0.2431982374532878
#>     Attrib V32    -0.10498098476977344
#>     Attrib V33    0.07988458608207054
#>     Attrib V34    0.019944886925127223
#>     Attrib V35    -0.08032871956048188
#>     Attrib V36    -0.2389218934301322
#>     Attrib V37    -0.18645458899328543
#>     Attrib V38    -0.06475610946481992
#>     Attrib V39    0.19121698129424936
#>     Attrib V4    0.12116918417091632
#>     Attrib V40    -0.02764410170043606
#>     Attrib V41    -0.02524145760158335
#>     Attrib V42    0.043464201605714126
#>     Attrib V43    0.030628502198958744
#>     Attrib V44    0.03471318873324734
#>     Attrib V45    0.11446543400865335
#>     Attrib V46    -0.052719813839480247
#>     Attrib V47    -0.06408562195423902
#>     Attrib V48    0.1529919686190552
#>     Attrib V49    0.21301073505223134
#>     Attrib V5    0.038453336758865295
#>     Attrib V50    -0.08442493914623381
#>     Attrib V51    0.012108844097166808
#>     Attrib V52    0.09160804507758046
#>     Attrib V53    0.19129411184353995
#>     Attrib V54    0.06424174288287102
#>     Attrib V55    0.018520612185503882
#>     Attrib V56    0.12238021295095329
#>     Attrib V57    0.23616307434248052
#>     Attrib V58    0.21693587693117533
#>     Attrib V59    0.2716535821840178
#>     Attrib V6    0.02135206942271226
#>     Attrib V60    0.11443977965603104
#>     Attrib V7    -0.1454867358747841
#>     Attrib V8    -0.0926013005224348
#>     Attrib V9    0.1410727046230212
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    0.139019144038296
#>     Attrib V1    0.3131231448006681
#>     Attrib V10    0.2267652250543027
#>     Attrib V11    -0.378977689621498
#>     Attrib V12    -0.7120368535994831
#>     Attrib V13    -0.1145275347730077
#>     Attrib V14    0.5699826523927772
#>     Attrib V15    0.5012753483792913
#>     Attrib V16    0.42955761136034193
#>     Attrib V17    -0.6726818737694811
#>     Attrib V18    -0.14237116782442302
#>     Attrib V19    -0.1121079931993558
#>     Attrib V2    0.13399960599188804
#>     Attrib V20    -0.9090301945197974
#>     Attrib V21    -0.818457165865435
#>     Attrib V22    -0.7753549241369039
#>     Attrib V23    -1.0359311290718751
#>     Attrib V24    -0.6768819833952702
#>     Attrib V25    0.06271433101011259
#>     Attrib V26    0.49842600932876635
#>     Attrib V27    1.2950286607515533
#>     Attrib V28    1.2373542589801283
#>     Attrib V29    1.00153439245892
#>     Attrib V3    0.018388127966177524
#>     Attrib V30    -0.5334253606548587
#>     Attrib V31    1.5982230539054394
#>     Attrib V32    0.7396965605154597
#>     Attrib V33    -0.6670178630213534
#>     Attrib V34    -0.536355635808012
#>     Attrib V35    0.1412673304836862
#>     Attrib V36    1.1139458848323074
#>     Attrib V37    1.4458568468764559
#>     Attrib V38    0.3263308601984626
#>     Attrib V39    -0.5997363901024739
#>     Attrib V4    -0.45771203159616863
#>     Attrib V40    0.7721461298521399
#>     Attrib V41    0.17830208761276914
#>     Attrib V42    -0.42824347229866033
#>     Attrib V43    -0.9229338416791355
#>     Attrib V44    -0.4250460765037544
#>     Attrib V45    -0.4968423243545215
#>     Attrib V46    0.061574249429205745
#>     Attrib V47    0.20524082843078187
#>     Attrib V48    -0.5406197271880573
#>     Attrib V49    -1.0255287115657488
#>     Attrib V5    0.5338070910348913
#>     Attrib V50    0.8012818384992058
#>     Attrib V51    0.13713404509885424
#>     Attrib V52    -0.5141619483398701
#>     Attrib V53    -0.7741245442717174
#>     Attrib V54    -0.5974335246801706
#>     Attrib V55    0.3680696477372205
#>     Attrib V56    -0.4213205117218122
#>     Attrib V57    -0.6105164504760779
#>     Attrib V58    -1.2002200261799363
#>     Attrib V59    -1.1068852621683982
#>     Attrib V6    -0.20388593677150352
#>     Attrib V60    0.07749442675441662
#>     Attrib V7    0.9323113124684096
#>     Attrib V8    0.06008901586112567
#>     Attrib V9    -1.2708276656602102
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.06198382556235337
#>     Attrib V1    0.1027183160497663
#>     Attrib V10    -0.05806914397905883
#>     Attrib V11    0.01076570676992418
#>     Attrib V12    0.11134631970146291
#>     Attrib V13    0.010379347592651706
#>     Attrib V14    0.03987409756906636
#>     Attrib V15    0.01953236312192083
#>     Attrib V16    0.021296128504302056
#>     Attrib V17    0.007169155641684957
#>     Attrib V18    9.172176324111409E-4
#>     Attrib V19    -0.06249309470260417
#>     Attrib V2    0.08600252321190795
#>     Attrib V20    0.02723960564227365
#>     Attrib V21    0.036112889150148646
#>     Attrib V22    -0.08431617095991917
#>     Attrib V23    -0.06124581744232779
#>     Attrib V24    -0.040558858853608666
#>     Attrib V25    -0.06879904003227341
#>     Attrib V26    -0.1364025039385865
#>     Attrib V27    -0.08647574242162877
#>     Attrib V28    -0.05988416470987979
#>     Attrib V29    -0.047135133590960776
#>     Attrib V3    0.10420161415296328
#>     Attrib V30    0.02450169305462711
#>     Attrib V31    -0.18763923615937508
#>     Attrib V32    -0.023919703692667847
#>     Attrib V33    0.0735838496964194
#>     Attrib V34    0.008348155680128908
#>     Attrib V35    -0.008288513084721208
#>     Attrib V36    -0.16323182967389196
#>     Attrib V37    -0.11381284702415614
#>     Attrib V38    -0.02244833947499128
#>     Attrib V39    0.12315159771617334
#>     Attrib V4    0.16776675197520094
#>     Attrib V40    -0.046948641339863276
#>     Attrib V41    0.041564989533320267
#>     Attrib V42    0.06698437186396727
#>     Attrib V43    0.0697629402732083
#>     Attrib V44    0.055980229178789205
#>     Attrib V45    0.07717836269794985
#>     Attrib V46    0.016168601716923234
#>     Attrib V47    -0.02343630160993883
#>     Attrib V48    0.06744053696303172
#>     Attrib V49    0.10614560949391749
#>     Attrib V5    0.049361940233822225
#>     Attrib V50    -0.02010995407486798
#>     Attrib V51    0.011144847257449558
#>     Attrib V52    0.03823298660555336
#>     Attrib V53    0.1717136760445561
#>     Attrib V54    0.07674333396932422
#>     Attrib V55    0.02884048842652321
#>     Attrib V56    0.14233956310808193
#>     Attrib V57    0.21080133258999498
#>     Attrib V58    0.2151448205930723
#>     Attrib V59    0.262236237859653
#>     Attrib V6    0.08906008178876454
#>     Attrib V60    0.16378451729791366
#>     Attrib V7    -0.07341743080547602
#>     Attrib V8    0.0024849327837051316
#>     Attrib V9    0.14182260910900996
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.7440352235741513
#>     Attrib V1    -0.24291626282015039
#>     Attrib V10    0.8659930051569722
#>     Attrib V11    1.0061948663171545
#>     Attrib V12    1.44857446617991
#>     Attrib V13    0.9286665270656916
#>     Attrib V14    -0.20183081107816633
#>     Attrib V15    -0.5623412939312478
#>     Attrib V16    -0.8671010981391689
#>     Attrib V17    -0.5249346208060167
#>     Attrib V18    -0.39595451630612244
#>     Attrib V19    -0.3800404092971238
#>     Attrib V2    -0.1938220291620713
#>     Attrib V20    -0.621647002890996
#>     Attrib V21    -0.19261439654574983
#>     Attrib V22    0.4451908113622588
#>     Attrib V23    1.1206866770804222
#>     Attrib V24    0.65857465326218
#>     Attrib V25    0.3229857836362198
#>     Attrib V26    0.443911676199046
#>     Attrib V27    0.6156377456457583
#>     Attrib V28    1.730272095879278
#>     Attrib V29    1.2884573719377515
#>     Attrib V3    -0.1744157344700441
#>     Attrib V30    0.41422176148960776
#>     Attrib V31    -1.3447514158080909
#>     Attrib V32    -0.6346742008168273
#>     Attrib V33    -0.6949011022417594
#>     Attrib V34    -0.5422857504958041
#>     Attrib V35    0.03851956098003994
#>     Attrib V36    -0.30308603542156437
#>     Attrib V37    0.3193820556300136
#>     Attrib V38    -0.3850716415191362
#>     Attrib V39    0.6947260017325413
#>     Attrib V4    0.33004342869334735
#>     Attrib V40    0.08808983122535918
#>     Attrib V41    1.3352780138238045
#>     Attrib V42    -0.5922208735817691
#>     Attrib V43    -0.14537559735361547
#>     Attrib V44    0.036788635055202405
#>     Attrib V45    0.45811154828062994
#>     Attrib V46    0.16133762653804576
#>     Attrib V47    0.08541378364850656
#>     Attrib V48    0.5805888601501454
#>     Attrib V49    1.3405997631045332
#>     Attrib V5    0.5932439587223868
#>     Attrib V50    -0.5502792692530237
#>     Attrib V51    0.6673049492564884
#>     Attrib V52    1.3301667589861703
#>     Attrib V53    0.9900881817349048
#>     Attrib V54    -0.017875053014032864
#>     Attrib V55    -0.9757624644835935
#>     Attrib V56    -0.8429666896576777
#>     Attrib V57    0.04421485236084956
#>     Attrib V58    0.6087794434283511
#>     Attrib V59    0.5134426894743263
#>     Attrib V6    1.084280579774941
#>     Attrib V60    0.5124221156698725
#>     Attrib V7    -0.28887117601118584
#>     Attrib V8    -0.70235512708016
#>     Attrib V9    1.193397274220362
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.10592520274362177
#>     Attrib V1    -0.04328166235382229
#>     Attrib V10    -0.13725006690192995
#>     Attrib V11    8.717035598859586E-4
#>     Attrib V12    0.1767518616876447
#>     Attrib V13    0.03350415105624557
#>     Attrib V14    -0.16498211758166648
#>     Attrib V15    -0.11977132499099288
#>     Attrib V16    -0.13212142590456513
#>     Attrib V17    0.03559375131256941
#>     Attrib V18    -0.12722695330930386
#>     Attrib V19    -0.11228955438457386
#>     Attrib V2    -0.003979332941020901
#>     Attrib V20    0.052949397651673405
#>     Attrib V21    0.06441014229005655
#>     Attrib V22    -0.053867157787699294
#>     Attrib V23    0.029100616776050324
#>     Attrib V24    -0.017746790478562906
#>     Attrib V25    -0.17923786434264072
#>     Attrib V26    -0.25346661480989263
#>     Attrib V27    -0.24521764936309973
#>     Attrib V28    -0.02318333955946896
#>     Attrib V29    0.024127713224246585
#>     Attrib V3    0.007411780424456901
#>     Attrib V30    0.20380435890884907
#>     Attrib V31    -0.5040379289831391
#>     Attrib V32    -0.1683602032312754
#>     Attrib V33    0.18585718782330274
#>     Attrib V34    0.0892680420919148
#>     Attrib V35    -0.09099888235458181
#>     Attrib V36    -0.3222402370517253
#>     Attrib V37    -0.2873385379782959
#>     Attrib V38    -0.005541412301107983
#>     Attrib V39    0.2851696334763823
#>     Attrib V4    0.1771010619283853
#>     Attrib V40    -0.11715489611031425
#>     Attrib V41    0.012835693465667824
#>     Attrib V42    -0.0618664945671286
#>     Attrib V43    0.059399424901387075
#>     Attrib V44    0.0658857842562569
#>     Attrib V45    0.14012330750703378
#>     Attrib V46    -0.015691682287343245
#>     Attrib V47    -0.08971555225846597
#>     Attrib V48    0.23281367260283717
#>     Attrib V49    0.3145110993712838
#>     Attrib V5    -0.09640181061876159
#>     Attrib V50    -0.3502879558175337
#>     Attrib V51    -0.1291701251191587
#>     Attrib V52    0.1662116539936882
#>     Attrib V53    0.27184190414807874
#>     Attrib V54    0.14395868932277467
#>     Attrib V55    -0.16238583574682738
#>     Attrib V56    0.02534642320062522
#>     Attrib V57    0.27140903111895204
#>     Attrib V58    0.26092547377361264
#>     Attrib V59    0.39306915033571566
#>     Attrib V6    0.06847117198522257
#>     Attrib V60    0.12962287082877758
#>     Attrib V7    -0.3148299871209814
#>     Attrib V8    -0.23413351680373384
#>     Attrib V9    0.22342948210063907
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.034731558447190884
#>     Attrib V1    -0.7758920832713678
#>     Attrib V10    1.3389569888290818
#>     Attrib V11    1.3426918838505668
#>     Attrib V12    1.319561995395683
#>     Attrib V13    0.6843442616491444
#>     Attrib V14    -0.7566329282625558
#>     Attrib V15    -1.1349150247312643
#>     Attrib V16    -0.8050031067035034
#>     Attrib V17    -0.15111733733764932
#>     Attrib V18    -0.1390114882013975
#>     Attrib V19    0.05529598277335112
#>     Attrib V2    -0.3639882415550964
#>     Attrib V20    -0.661158173627023
#>     Attrib V21    -0.3892799411885466
#>     Attrib V22    0.5664610731340471
#>     Attrib V23    1.2983708641050338
#>     Attrib V24    1.0445485481587493
#>     Attrib V25    1.1823325119863148
#>     Attrib V26    1.0837180654711072
#>     Attrib V27    0.611564320375931
#>     Attrib V28    1.1976091615078417
#>     Attrib V29    0.2586365430880634
#>     Attrib V3    -0.4112593925539027
#>     Attrib V30    0.34831366351975485
#>     Attrib V31    -0.9819970034975587
#>     Attrib V32    -0.1419653175860587
#>     Attrib V33    -0.20331216483864054
#>     Attrib V34    -0.053132184225110984
#>     Attrib V35    0.1503231063448813
#>     Attrib V36    -0.3976800834497422
#>     Attrib V37    -0.31424891982296865
#>     Attrib V38    -0.5291328798865468
#>     Attrib V39    0.7262154068672428
#>     Attrib V4    0.24839602970892363
#>     Attrib V40    -0.028470321062283237
#>     Attrib V41    0.9315147877713885
#>     Attrib V42    -0.7753838751247777
#>     Attrib V43    -0.24187347349460192
#>     Attrib V44    0.14327359552237057
#>     Attrib V45    0.6178466135566929
#>     Attrib V46    0.3758420384173965
#>     Attrib V47    0.6078817275581041
#>     Attrib V48    1.0940090625952943
#>     Attrib V49    1.728586409947654
#>     Attrib V5    0.2799268646140222
#>     Attrib V50    -0.40493619218764276
#>     Attrib V51    0.9963368073703265
#>     Attrib V52    1.2143187566149118
#>     Attrib V53    0.6271482475396349
#>     Attrib V54    -0.2960809327395592
#>     Attrib V55    -0.6256841249243664
#>     Attrib V56    -0.6730975443776089
#>     Attrib V57    -0.3588872514832909
#>     Attrib V58    0.6505514060021039
#>     Attrib V59    0.0515554001631384
#>     Attrib V6    0.5170976562401376
#>     Attrib V60    -0.03376367120010251
#>     Attrib V7    -0.5580996785561535
#>     Attrib V8    -0.4009039256294874
#>     Attrib V9    1.6290798845402608
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.0970137250054796
#>     Attrib V1    0.28622717035785605
#>     Attrib V10    0.16508456927092904
#>     Attrib V11    -0.18335749808974974
#>     Attrib V12    -0.47936761839035297
#>     Attrib V13    0.05129940454742088
#>     Attrib V14    0.5156988932483719
#>     Attrib V15    0.318620696997459
#>     Attrib V16    0.361053913103154
#>     Attrib V17    -0.3809289573751384
#>     Attrib V18    0.1186801154628329
#>     Attrib V19    0.12618680410223057
#>     Attrib V2    0.12553016902403422
#>     Attrib V20    -0.3609596038215719
#>     Attrib V21    -0.21759212434422456
#>     Attrib V22    -0.21781362071287788
#>     Attrib V23    -0.41561901828965825
#>     Attrib V24    -0.2307563103745217
#>     Attrib V25    0.18431500433442438
#>     Attrib V26    0.4883401558928394
#>     Attrib V27    0.73446527077493
#>     Attrib V28    0.5269402900988898
#>     Attrib V29    0.38603018703724984
#>     Attrib V3    0.05241794759126927
#>     Attrib V30    -0.43859111502117337
#>     Attrib V31    1.0736301866963889
#>     Attrib V32    0.30053708204528856
#>     Attrib V33    -0.5180305656786307
#>     Attrib V34    -0.3501210348504519
#>     Attrib V35    0.16431273096235283
#>     Attrib V36    0.7793320437981184
#>     Attrib V37    0.8230776475320375
#>     Attrib V38    0.2143933475727735
#>     Attrib V39    -0.4946336516724001
#>     Attrib V4    -0.254647269734311
#>     Attrib V40    0.41121100693581797
#>     Attrib V41    0.07547182088166463
#>     Attrib V42    -0.09316202064524726
#>     Attrib V43    -0.27750320540576706
#>     Attrib V44    -0.04694579139259451
#>     Attrib V45    -0.25770383786418743
#>     Attrib V46    -0.005971236809302486
#>     Attrib V47    0.11672576616966394
#>     Attrib V48    -0.45356707556711806
#>     Attrib V49    -0.7420471375640195
#>     Attrib V5    0.3234699392400713
#>     Attrib V50    0.727706248811165
#>     Attrib V51    0.13641725840618033
#>     Attrib V52    -0.4862952706558642
#>     Attrib V53    -0.3696358525321343
#>     Attrib V54    -0.30228530154733163
#>     Attrib V55    0.34549125920156276
#>     Attrib V56    -0.1477622308274938
#>     Attrib V57    -0.4038488795512558
#>     Attrib V58    -0.6674991565918735
#>     Attrib V59    -0.6852531878141112
#>     Attrib V6    -0.15933067676893498
#>     Attrib V60    -0.06812003988932272
#>     Attrib V7    0.7054218955163343
#>     Attrib V8    0.28411229082572487
#>     Attrib V9    -0.8012399631219242
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.05695802161646351
#>     Attrib V1    -0.1459464491583467
#>     Attrib V10    -0.1885869741158553
#>     Attrib V11    0.03413149438755944
#>     Attrib V12    0.3010342207958738
#>     Attrib V13    -0.0906065661163856
#>     Attrib V14    -0.3379839928972917
#>     Attrib V15    -0.25352333791388987
#>     Attrib V16    -0.25911236334258525
#>     Attrib V17    0.28033122425675727
#>     Attrib V18    -0.016166453938090318
#>     Attrib V19    -0.11611483289695745
#>     Attrib V2    -0.10295386513350499
#>     Attrib V20    0.2936072062707626
#>     Attrib V21    0.19055091790453182
#>     Attrib V22    0.10319879662648915
#>     Attrib V23    0.2874508978633407
#>     Attrib V24    0.10857856454192942
#>     Attrib V25    -0.1345098872966208
#>     Attrib V26    -0.43116682063067974
#>     Attrib V27    -0.533045240498895
#>     Attrib V28    -0.30385174589468233
#>     Attrib V29    -0.26686046431351607
#>     Attrib V3    -0.07405261009617488
#>     Attrib V30    0.3083309299485529
#>     Attrib V31    -0.8962916626300003
#>     Attrib V32    -0.32871384946826065
#>     Attrib V33    0.35789067014964016
#>     Attrib V34    0.2769514124531042
#>     Attrib V35    -0.04447194963359477
#>     Attrib V36    -0.5476732790623265
#>     Attrib V37    -0.5759880145093226
#>     Attrib V38    -0.06961687076570265
#>     Attrib V39    0.35894797239919934
#>     Attrib V4    0.15924680033043445
#>     Attrib V40    -0.32004497140387284
#>     Attrib V41    -0.08379970817282098
#>     Attrib V42    0.08677752259845535
#>     Attrib V43    0.19341658910788156
#>     Attrib V44    0.1078142897977247
#>     Attrib V45    0.2748258422188663
#>     Attrib V46    -0.07074180493369413
#>     Attrib V47    -0.09529532650896648
#>     Attrib V48    0.3666241698041621
#>     Attrib V49    0.4802738496370346
#>     Attrib V5    -0.19300614824439133
#>     Attrib V50    -0.47205401217745624
#>     Attrib V51    -0.06979205015559585
#>     Attrib V52    0.25855371263704185
#>     Attrib V53    0.31107472016437704
#>     Attrib V54    0.2853744643513213
#>     Attrib V55    -0.25515760702730184
#>     Attrib V56    0.14853598139052304
#>     Attrib V57    0.34191628112765665
#>     Attrib V58    0.5049377298842703
#>     Attrib V59    0.5153756326246098
#>     Attrib V6    0.1980005311110655
#>     Attrib V60    0.08086199493889272
#>     Attrib V7    -0.5285133603393275
#>     Attrib V8    -0.22858074009539617
#>     Attrib V9    0.5014951284045047
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.1744591378204732
#>     Attrib V1    -0.0430058182018843
#>     Attrib V10    -0.3040795995834584
#>     Attrib V11    0.014067044933842058
#>     Attrib V12    0.2299647332791241
#>     Attrib V13    -0.06102964651845371
#>     Attrib V14    -0.18466446123216845
#>     Attrib V15    -0.10128258193625535
#>     Attrib V16    -0.18946340017253183
#>     Attrib V17    0.2600239277865953
#>     Attrib V18    -0.03312945709325893
#>     Attrib V19    -0.08124439116853797
#>     Attrib V2    0.026223095965571375
#>     Attrib V20    0.3396421812262931
#>     Attrib V21    0.327255925273392
#>     Attrib V22    0.21888338102469745
#>     Attrib V23    0.3137594796402053
#>     Attrib V24    0.040345600984147884
#>     Attrib V25    -0.31660074441948094
#>     Attrib V26    -0.5677791780868244
#>     Attrib V27    -0.5932418273820589
#>     Attrib V28    -0.3677223044873203
#>     Attrib V29    -0.13381866480450633
#>     Attrib V3    -0.03603919436379664
#>     Attrib V30    0.33284727130005715
#>     Attrib V31    -0.9829002292046886
#>     Attrib V32    -0.4398120526644153
#>     Attrib V33    0.31657374506954
#>     Attrib V34    0.13581530839598785
#>     Attrib V35    -0.2723686257092695
#>     Attrib V36    -0.740912926824295
#>     Attrib V37    -0.6949249947946131
#>     Attrib V38    -0.15491503914447674
#>     Attrib V39    0.38606976058784853
#>     Attrib V4    0.27841746525826944
#>     Attrib V40    -0.27058091922824057
#>     Attrib V41    -0.021110100830852574
#>     Attrib V42    0.1497349376428244
#>     Attrib V43    0.28838528201723235
#>     Attrib V44    0.004956026648230713
#>     Attrib V45    0.16250996768296397
#>     Attrib V46    -0.09628643265966423
#>     Attrib V47    -0.19981036924962414
#>     Attrib V48    0.32122417633390843
#>     Attrib V49    0.42790164975501616
#>     Attrib V5    -0.15906883699064317
#>     Attrib V50    -0.5279418499899627
#>     Attrib V51    -0.14299426321917355
#>     Attrib V52    0.40189343041140685
#>     Attrib V53    0.5162212857356842
#>     Attrib V54    0.38867366174885754
#>     Attrib V55    -0.275653500023734
#>     Attrib V56    0.21709457666581874
#>     Attrib V57    0.48663504325886126
#>     Attrib V58    0.6141871680257238
#>     Attrib V59    0.745670005510381
#>     Attrib V6    0.30570675568366734
#>     Attrib V60    0.1549648419832058
#>     Attrib V7    -0.3911041277994621
#>     Attrib V8    -0.17536794692478216
#>     Attrib V9    0.4759462131490536
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.08992148972116587
#>     Attrib V1    0.0416984913356795
#>     Attrib V10    -0.17943273258794085
#>     Attrib V11    -0.05785452355145901
#>     Attrib V12    0.08785834579592812
#>     Attrib V13    0.08156391367338754
#>     Attrib V14    0.0033572453772407456
#>     Attrib V15    -0.015291969386073844
#>     Attrib V16    -0.09771820077461979
#>     Attrib V17    0.10017992687345452
#>     Attrib V18    -0.0032077998855384576
#>     Attrib V19    -0.06262093912905392
#>     Attrib V2    0.031640390157105486
#>     Attrib V20    0.13392732972223823
#>     Attrib V21    0.10983668733407873
#>     Attrib V22    -0.028287934390704948
#>     Attrib V23    0.05272255247758425
#>     Attrib V24    -0.0315556361946042
#>     Attrib V25    -0.1175781748693678
#>     Attrib V26    -0.28083930059064105
#>     Attrib V27    -0.20683059101670187
#>     Attrib V28    -0.13693356343020252
#>     Attrib V29    -0.038008135415236455
#>     Attrib V3    0.11342931911700559
#>     Attrib V30    0.08488239778856316
#>     Attrib V31    -0.42120354240806757
#>     Attrib V32    -0.15125841818118563
#>     Attrib V33    0.08942080483524022
#>     Attrib V34    0.07930340491989005
#>     Attrib V35    -0.08969173964761272
#>     Attrib V36    -0.28161392589578166
#>     Attrib V37    -0.2327459122174301
#>     Attrib V38    -0.03663857881027275
#>     Attrib V39    0.25579213757653585
#>     Attrib V4    0.16398361228967823
#>     Attrib V40    -0.056519462544427454
#>     Attrib V41    -0.0076899558895611
#>     Attrib V42    0.04601050621400571
#>     Attrib V43    0.0515503850788529
#>     Attrib V44    0.029793166527392344
#>     Attrib V45    0.027708992734611144
#>     Attrib V46    -0.022270440401046504
#>     Attrib V47    -0.047378087729475445
#>     Attrib V48    0.10095506232207963
#>     Attrib V49    0.21368870375516577
#>     Attrib V5    -0.003626994306805608
#>     Attrib V50    -0.1856311647479931
#>     Attrib V51    -0.08331092257924808
#>     Attrib V52    0.06917784026147177
#>     Attrib V53    0.22051394030056795
#>     Attrib V54    0.1425262090970985
#>     Attrib V55    -0.025396917208268737
#>     Attrib V56    0.12948459159944412
#>     Attrib V57    0.25671320485347127
#>     Attrib V58    0.25691545727517345
#>     Attrib V59    0.3841626654995954
#>     Attrib V6    0.10079107215456538
#>     Attrib V60    0.1938723448895461
#>     Attrib V7    -0.1315592864890061
#>     Attrib V8    -0.15335466217077362
#>     Attrib V9    0.11639837916934598
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.29309181490126307
#>     Attrib V1    -0.1431663535611555
#>     Attrib V10    0.39188726602554286
#>     Attrib V11    0.539821172558315
#>     Attrib V12    0.8299950435990114
#>     Attrib V13    0.15249221186970657
#>     Attrib V14    -0.3690176872412547
#>     Attrib V15    -0.30431893718677844
#>     Attrib V16    -0.4779576215377338
#>     Attrib V17    -0.33908982347339406
#>     Attrib V18    -0.5289739025778002
#>     Attrib V19    -0.505129568016364
#>     Attrib V2    -0.05125342446984895
#>     Attrib V20    -0.5698677202101848
#>     Attrib V21    -0.5716618278652904
#>     Attrib V22    -0.5370412664748826
#>     Attrib V23    -0.14306685354355397
#>     Attrib V24    -0.08681605646838693
#>     Attrib V25    -0.2210175738253458
#>     Attrib V26    -0.1347727556415441
#>     Attrib V27    -0.03566936490473401
#>     Attrib V28    0.21545008919739667
#>     Attrib V29    -0.09045997650019567
#>     Attrib V3    -0.15712312396695596
#>     Attrib V30    0.2676492989472498
#>     Attrib V31    -0.4284161256765729
#>     Attrib V32    0.170204760740881
#>     Attrib V33    0.36451576823958093
#>     Attrib V34    0.20181277452903634
#>     Attrib V35    -0.1209918586474887
#>     Attrib V36    -0.7578732119884395
#>     Attrib V37    -0.6290649010444384
#>     Attrib V38    -0.5548039652867848
#>     Attrib V39    0.35041938862638233
#>     Attrib V4    0.14810369933290812
#>     Attrib V40    -0.06281513583220606
#>     Attrib V41    0.2787196704986529
#>     Attrib V42    -0.37177228050794764
#>     Attrib V43    -0.3070643101808474
#>     Attrib V44    -0.24707141866310864
#>     Attrib V45    0.05631865655602084
#>     Attrib V46    -0.0797720151342635
#>     Attrib V47    -0.14195021468196772
#>     Attrib V48    0.5896549932943712
#>     Attrib V49    0.8625706818985588
#>     Attrib V5    0.009956721982428344
#>     Attrib V50    -0.5856867038021049
#>     Attrib V51    0.14681831805099807
#>     Attrib V52    0.5910558656949796
#>     Attrib V53    0.2862169355157718
#>     Attrib V54    0.13446865315053302
#>     Attrib V55    -0.2026724207146756
#>     Attrib V56    -0.3002728627518492
#>     Attrib V57    0.11402763450210614
#>     Attrib V58    0.5762037239787361
#>     Attrib V59    0.49440059773715067
#>     Attrib V6    0.39896189893068845
#>     Attrib V60    0.25638817454413976
#>     Attrib V7    -0.41673030418507107
#>     Attrib V8    -0.18794777961302314
#>     Attrib V9    0.8014961794821722
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.01017068259294135
#>     Attrib V1    0.18914772464831836
#>     Attrib V10    0.1883627447326563
#>     Attrib V11    -0.21986850616033318
#>     Attrib V12    -0.39491475926359715
#>     Attrib V13    0.02840135048923673
#>     Attrib V14    0.3613029577171156
#>     Attrib V15    0.29232728822817977
#>     Attrib V16    0.2745879399784937
#>     Attrib V17    -0.4188372076119225
#>     Attrib V18    -0.026969484505366303
#>     Attrib V19    0.05679211267136015
#>     Attrib V2    0.05019319829851316
#>     Attrib V20    -0.48486776582329927
#>     Attrib V21    -0.436483845596983
#>     Attrib V22    -0.285229766620798
#>     Attrib V23    -0.5311341149028703
#>     Attrib V24    -0.30244776657503103
#>     Attrib V25    0.13914190296998216
#>     Attrib V26    0.49940502150972665
#>     Attrib V27    0.8138354270093048
#>     Attrib V28    0.814368318176094
#>     Attrib V29    0.6682595232587141
#>     Attrib V3    0.044858961196146116
#>     Attrib V30    -0.3857535333696852
#>     Attrib V31    1.0001635125788055
#>     Attrib V32    0.3681926168808094
#>     Attrib V33    -0.5320178893629194
#>     Attrib V34    -0.29296326243856435
#>     Attrib V35    0.23853678015926957
#>     Attrib V36    0.9206015212073552
#>     Attrib V37    1.0875166245277188
#>     Attrib V38    0.30322525878231416
#>     Attrib V39    -0.409409672088522
#>     Attrib V4    -0.2613096617413305
#>     Attrib V40    0.3833374446293573
#>     Attrib V41    0.07234646530706161
#>     Attrib V42    -0.23459230465536085
#>     Attrib V43    -0.43829002120016863
#>     Attrib V44    -0.14941387431808995
#>     Attrib V45    -0.1943497715489928
#>     Attrib V46    0.10805442945996367
#>     Attrib V47    0.16487852735767772
#>     Attrib V48    -0.3882706618046014
#>     Attrib V49    -0.6959873711341706
#>     Attrib V5    0.3163412449676809
#>     Attrib V50    0.6109911252884513
#>     Attrib V51    0.15847694080790417
#>     Attrib V52    -0.46883455438143057
#>     Attrib V53    -0.48363119814141914
#>     Attrib V54    -0.44504754076778286
#>     Attrib V55    0.20666467889621834
#>     Attrib V56    -0.20421273654600025
#>     Attrib V57    -0.48523772926726294
#>     Attrib V58    -0.7813108298725799
#>     Attrib V59    -0.7188422024569746
#>     Attrib V6    -0.2049092507030728
#>     Attrib V60    -0.025187427322984863
#>     Attrib V7    0.5693665885798276
#>     Attrib V8    0.08613899954168344
#>     Attrib V9    -0.798051141201764
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.06164815354539914
#>     Attrib V1    0.04699989615223438
#>     Attrib V10    -0.14572056539013967
#>     Attrib V11    -0.06819562127378868
#>     Attrib V12    0.08557956657618082
#>     Attrib V13    0.03973193012327889
#>     Attrib V14    -0.0309817957221509
#>     Attrib V15    -0.006254659120201523
#>     Attrib V16    -0.02606522280289142
#>     Attrib V17    0.1016988649507823
#>     Attrib V18    0.012144939860680892
#>     Attrib V19    -0.052314843876999265
#>     Attrib V2    9.457008109661107E-4
#>     Attrib V20    0.07766302159102127
#>     Attrib V21    0.06777021423693512
#>     Attrib V22    -0.04481793747088026
#>     Attrib V23    -0.04360675991140492
#>     Attrib V24    -0.02783051848118999
#>     Attrib V25    -0.15074961353189767
#>     Attrib V26    -0.2839218916903757
#>     Attrib V27    -0.271205853505161
#>     Attrib V28    -0.12960410643982376
#>     Attrib V29    -0.08138204148293099
#>     Attrib V3    0.08440175130571123
#>     Attrib V30    0.050794366623336695
#>     Attrib V31    -0.38661332177855223
#>     Attrib V32    -0.13338404947126234
#>     Attrib V33    0.08953494343497882
#>     Attrib V34    0.0674825669272076
#>     Attrib V35    -0.12028379749645987
#>     Attrib V36    -0.33440402051969575
#>     Attrib V37    -0.27395583883355057
#>     Attrib V38    -0.05657640105105891
#>     Attrib V39    0.2101992764201793
#>     Attrib V4    0.15947330556643532
#>     Attrib V40    -0.1053819299573242
#>     Attrib V41    -0.02609922356995053
#>     Attrib V42    0.06530067417216459
#>     Attrib V43    0.07657109595841452
#>     Attrib V44    -0.008632812859856526
#>     Attrib V45    0.06712327243692799
#>     Attrib V46    -0.032682679918544844
#>     Attrib V47    -0.08287350932373559
#>     Attrib V48    0.1159666497609287
#>     Attrib V49    0.1579883917046764
#>     Attrib V5    -0.031174624296257673
#>     Attrib V50    -0.12031253324186646
#>     Attrib V51    -0.02552385009769087
#>     Attrib V52    0.12066919891619542
#>     Attrib V53    0.277652941437076
#>     Attrib V54    0.16638136607239112
#>     Attrib V55    0.027984530478037076
#>     Attrib V56    0.16200906395114353
#>     Attrib V57    0.2898738451191028
#>     Attrib V58    0.3321178361091404
#>     Attrib V59    0.3159836129886416
#>     Attrib V6    0.10073351740309713
#>     Attrib V60    0.17207910495184325
#>     Attrib V7    -0.16372665554101937
#>     Attrib V8    -0.12377967508580201
#>     Attrib V9    0.16190566672894388
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.11306219348823503
#>     Attrib V1    0.11217804457057823
#>     Attrib V10    0.106987145164645
#>     Attrib V11    0.04663951473842551
#>     Attrib V12    -0.06201053840268691
#>     Attrib V13    -0.026974824831473853
#>     Attrib V14    0.038812219880798284
#>     Attrib V15    0.1074197649218895
#>     Attrib V16    0.0684642066265305
#>     Attrib V17    0.03724652440185752
#>     Attrib V18    0.03644942250583199
#>     Attrib V19    0.03293426236346886
#>     Attrib V2    0.15673882287729513
#>     Attrib V20    -0.06702261634370309
#>     Attrib V21    -0.04861189068515207
#>     Attrib V22    0.03852273422371519
#>     Attrib V23    -0.0550976358492073
#>     Attrib V24    -0.04872787852712884
#>     Attrib V25    -0.08985482698186524
#>     Attrib V26    -0.10020155471417255
#>     Attrib V27    -0.06233971894467655
#>     Attrib V28    -0.06655740911596843
#>     Attrib V29    -0.07778289064376866
#>     Attrib V3    0.08773055070714801
#>     Attrib V30    -0.023570809137794278
#>     Attrib V31    0.12027875083990998
#>     Attrib V32    0.02654802687730323
#>     Attrib V33    0.07283527123568276
#>     Attrib V34    0.011133328482682977
#>     Attrib V35    0.13107856885137623
#>     Attrib V36    0.11075679785123348
#>     Attrib V37    0.10690105626396848
#>     Attrib V38    0.11054793277751754
#>     Attrib V39    0.059957625818905326
#>     Attrib V4    0.0704591573709204
#>     Attrib V40    0.09127246807602452
#>     Attrib V41    0.13293140711184698
#>     Attrib V42    0.09751959186709726
#>     Attrib V43    0.10968822178703888
#>     Attrib V44    0.09519379538653389
#>     Attrib V45    0.04939618906929051
#>     Attrib V46    0.020224528351856487
#>     Attrib V47    0.03562651129177405
#>     Attrib V48    0.048917402816993964
#>     Attrib V49    -0.059851721076434446
#>     Attrib V5    0.11832643240658564
#>     Attrib V50    0.12298851659415312
#>     Attrib V51    0.10222111886470427
#>     Attrib V52    -0.0011683159016492605
#>     Attrib V53    -3.898680337913866E-4
#>     Attrib V54    -0.0020474752452288303
#>     Attrib V55    0.11037416035343488
#>     Attrib V56    0.11503147243795855
#>     Attrib V57    0.1054281414110607
#>     Attrib V58    0.019459978237838817
#>     Attrib V59    -0.011651275161738176
#>     Attrib V6    0.0771046631801327
#>     Attrib V60    0.07969618107733498
#>     Attrib V7    0.0587798843321717
#>     Attrib V8    0.13305246502388035
#>     Attrib V9    0.026432085017289688
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.1839505916883791
#>     Attrib V1    0.08870368980775287
#>     Attrib V10    0.07040205424479516
#>     Attrib V11    -0.019881059978773586
#>     Attrib V12    -0.13277966914224298
#>     Attrib V13    -0.03300229388992089
#>     Attrib V14    0.06841365577578858
#>     Attrib V15    0.03694560128499494
#>     Attrib V16    0.10788826132626929
#>     Attrib V17    0.01710908285293289
#>     Attrib V18    0.13244697407618947
#>     Attrib V19    -0.01313098163395784
#>     Attrib V2    0.10429316180269681
#>     Attrib V20    -0.05613635662645281
#>     Attrib V21    -0.014958379343246847
#>     Attrib V22    -0.004021448325812726
#>     Attrib V23    -0.03419223674797319
#>     Attrib V24    -0.10154983436112015
#>     Attrib V25    -0.043411597894195936
#>     Attrib V26    -0.04956577585156181
#>     Attrib V27    -0.040830801500730075
#>     Attrib V28    -0.08100135281913139
#>     Attrib V29    -0.063947306099333
#>     Attrib V3    0.13279162389460328
#>     Attrib V30    -0.11999423478377738
#>     Attrib V31    0.13812692227380333
#>     Attrib V32    0.09371933853228985
#>     Attrib V33    0.02828724542069768
#>     Attrib V34    0.052397965173192826
#>     Attrib V35    0.08892950846376957
#>     Attrib V36    0.2731875789644273
#>     Attrib V37    0.17928462582779664
#>     Attrib V38    0.03506118965367328
#>     Attrib V39    -0.010858993760304522
#>     Attrib V4    0.0069744574494687555
#>     Attrib V40    0.12681383356651857
#>     Attrib V41    0.08803684937244456
#>     Attrib V42    0.11726970142143855
#>     Attrib V43    0.033593525293153036
#>     Attrib V44    0.06751573121370832
#>     Attrib V45    -0.09397307171703019
#>     Attrib V46    -0.002726812628474582
#>     Attrib V47    0.11052831947489847
#>     Attrib V48    -0.026580191860844826
#>     Attrib V49    -0.07015797852218184
#>     Attrib V5    0.125288245682736
#>     Attrib V50    0.12300115358094577
#>     Attrib V51    0.16753482734089986
#>     Attrib V52    0.00965690079912874
#>     Attrib V53    -0.00224050303574947
#>     Attrib V54    -0.02715494191960914
#>     Attrib V55    0.10839518030062201
#>     Attrib V56    0.10220115004454354
#>     Attrib V57    -0.016366959485797368
#>     Attrib V58    0.009676278853543439
#>     Attrib V59    -0.0033344152350822305
#>     Attrib V6    0.03148467337254422
#>     Attrib V60    0.08625809671693081
#>     Attrib V7    0.18481805726932798
#>     Attrib V8    0.1719776418351571
#>     Attrib V9    -0.03828105769320376
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.3669759771117434
#>     Attrib V1    -0.5035515433045601
#>     Attrib V10    0.909618209134596
#>     Attrib V11    0.9618736594103342
#>     Attrib V12    1.532594804012672
#>     Attrib V13    0.6905268374632955
#>     Attrib V14    -0.6265246227693314
#>     Attrib V15    -0.8271300507818667
#>     Attrib V16    -0.839836822410887
#>     Attrib V17    -0.3362621587549286
#>     Attrib V18    -0.36163694029937893
#>     Attrib V19    -0.12919343540394765
#>     Attrib V2    -0.2577926772963732
#>     Attrib V20    -0.6897331663555497
#>     Attrib V21    -0.4734300017675095
#>     Attrib V22    0.3095526875166565
#>     Attrib V23    0.9056566693409082
#>     Attrib V24    0.7552421527180749
#>     Attrib V25    0.6721627646787915
#>     Attrib V26    0.5199051863963593
#>     Attrib V27    0.4031801099472377
#>     Attrib V28    1.175096888924393
#>     Attrib V29    0.36471055136353686
#>     Attrib V3    -0.2977170174848566
#>     Attrib V30    0.16260687725143919
#>     Attrib V31    -1.1056803976044887
#>     Attrib V32    -0.1704026524201994
#>     Attrib V33    -0.051014702618110044
#>     Attrib V34    0.06291070121446386
#>     Attrib V35    0.3870343359840231
#>     Attrib V36    -0.2713567991464968
#>     Attrib V37    -0.12757028368246512
#>     Attrib V38    -0.4618106505896314
#>     Attrib V39    0.5840492197083695
#>     Attrib V4    0.29915878606781227
#>     Attrib V40    0.04867165838152624
#>     Attrib V41    1.0390734635690104
#>     Attrib V42    -0.70077950514427
#>     Attrib V43    -0.4059351175314327
#>     Attrib V44    -0.12101587907874624
#>     Attrib V45    0.5064955535717302
#>     Attrib V46    0.27352284711412095
#>     Attrib V47    0.1941444062857826
#>     Attrib V48    0.7513609188047488
#>     Attrib V49    1.439945166107598
#>     Attrib V5    0.4148257182949162
#>     Attrib V50    -0.6600252221290764
#>     Attrib V51    0.6178722148377287
#>     Attrib V52    1.0717111505433263
#>     Attrib V53    0.5410386713917819
#>     Attrib V54    -0.09099700009736801
#>     Attrib V55    -0.7739774182195955
#>     Attrib V56    -0.7442628596552204
#>     Attrib V57    -0.1933870979964102
#>     Attrib V58    0.5556306008181771
#>     Attrib V59    0.4202390647357266
#>     Attrib V6    0.7055816998447169
#>     Attrib V60    0.45987451094028564
#>     Attrib V7    -0.5034118132693447
#>     Attrib V8    -0.7308682575998383
#>     Attrib V9    1.2554827296170796
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.13548890737464744
#>     Attrib V1    -0.10684529204789925
#>     Attrib V10    -0.2771675151176361
#>     Attrib V11    0.03005821597831944
#>     Attrib V12    0.3470747775752756
#>     Attrib V13    -0.032107717780639346
#>     Attrib V14    -0.34164907318961196
#>     Attrib V15    -0.3134602137279947
#>     Attrib V16    -0.4283170557228307
#>     Attrib V17    0.21381963588361896
#>     Attrib V18    -0.03507052863618819
#>     Attrib V19    -0.14093824254067314
#>     Attrib V2    -0.1081610450403209
#>     Attrib V20    0.2705407658806805
#>     Attrib V21    0.36616282426381525
#>     Attrib V22    0.33821293349481196
#>     Attrib V23    0.4259936179288027
#>     Attrib V24    0.10610921491875379
#>     Attrib V25    -0.19858082573288957
#>     Attrib V26    -0.2927688093316668
#>     Attrib V27    -0.32229994403805295
#>     Attrib V28    -0.10611083045731945
#>     Attrib V29    0.10026055046939714
#>     Attrib V3    -0.11244161248690587
#>     Attrib V30    0.5161864762711649
#>     Attrib V31    -1.1452824179155547
#>     Attrib V32    -0.7019838477603563
#>     Attrib V33    0.14118797636534344
#>     Attrib V34    0.11524983979581235
#>     Attrib V35    0.05180573769547819
#>     Attrib V36    -0.20788282319626644
#>     Attrib V37    -0.18692523845878126
#>     Attrib V38    0.20450343517093078
#>     Attrib V39    0.5477725641241398
#>     Attrib V4    0.18377108442799614
#>     Attrib V40    -0.3850917082365805
#>     Attrib V41    -0.0777169022851485
#>     Attrib V42    0.07007105329969865
#>     Attrib V43    0.4563621845338655
#>     Attrib V44    0.41163119536302667
#>     Attrib V45    0.4348429110422563
#>     Attrib V46    -0.026419028434802358
#>     Attrib V47    -0.21194558655254528
#>     Attrib V48    0.22860118621510767
#>     Attrib V49    0.41663792289256946
#>     Attrib V5    -0.24126475420867927
#>     Attrib V50    -0.599586447144254
#>     Attrib V51    -0.13864240545784418
#>     Attrib V52    0.270122222292844
#>     Attrib V53    0.31784644114071303
#>     Attrib V54    0.28151303639745834
#>     Attrib V55    -0.3618235450431144
#>     Attrib V56    0.07804962428590885
#>     Attrib V57    0.268551877098638
#>     Attrib V58    0.5182305282874673
#>     Attrib V59    0.6767919877822232
#>     Attrib V6    0.23247565459043573
#>     Attrib V60    0.12023823425288283
#>     Attrib V7    -0.5131080214955893
#>     Attrib V8    -0.4201368580641023
#>     Attrib V9    0.46220111136038344
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.5225818235245314
#>     Attrib V1    0.33458040060050404
#>     Attrib V10    0.13610393748743016
#>     Attrib V11    -0.30462176697486726
#>     Attrib V12    -0.35891575013943877
#>     Attrib V13    -0.020505879247482674
#>     Attrib V14    0.5517918636087099
#>     Attrib V15    0.4801794794270995
#>     Attrib V16    0.2655588315688477
#>     Attrib V17    -0.7970333466584808
#>     Attrib V18    -0.27928230622396943
#>     Attrib V19    -0.41725382143262024
#>     Attrib V2    0.005208191302769628
#>     Attrib V20    -1.1221595712005894
#>     Attrib V21    -0.840363490627554
#>     Attrib V22    -0.8515501110449346
#>     Attrib V23    -1.2109844589182517
#>     Attrib V24    -0.8246166351063788
#>     Attrib V25    -0.20193036431389944
#>     Attrib V26    0.5004115351071032
#>     Attrib V27    1.3635098431513935
#>     Attrib V28    1.4395447909112264
#>     Attrib V29    1.2273143739821566
#>     Attrib V3    -0.12780395508543654
#>     Attrib V30    -0.25499082111489824
#>     Attrib V31    1.5428522031981924
#>     Attrib V32    0.6121508904697638
#>     Attrib V33    -0.8171413211873761
#>     Attrib V34    -0.7186599457123979
#>     Attrib V35    -0.07069327722389823
#>     Attrib V36    1.0585612731043215
#>     Attrib V37    1.4478301768370168
#>     Attrib V38    0.2436702455243764
#>     Attrib V39    -0.46390774444085775
#>     Attrib V4    -0.31536302047808856
#>     Attrib V40    0.7111976985652119
#>     Attrib V41    0.22845671417019564
#>     Attrib V42    -0.6209208541213171
#>     Attrib V43    -0.8986319657718153
#>     Attrib V44    -0.5043309069808
#>     Attrib V45    -0.5631114747602285
#>     Attrib V46    -0.07116804553534495
#>     Attrib V47    -0.015220087705750604
#>     Attrib V48    -0.6353899770313863
#>     Attrib V49    -0.904797925965524
#>     Attrib V5    0.4923913884797019
#>     Attrib V50    0.5778751634070604
#>     Attrib V51    0.03996887536443331
#>     Attrib V52    -0.1948267969340609
#>     Attrib V53    -0.5995854596955168
#>     Attrib V54    -0.7013912144625806
#>     Attrib V55    0.12185138800552049
#>     Attrib V56    -0.8229828850001623
#>     Attrib V57    -0.4629394536149522
#>     Attrib V58    -1.0683022967824267
#>     Attrib V59    -0.9327694585253148
#>     Attrib V6    -0.14005958198187662
#>     Attrib V60    0.003755271610005378
#>     Attrib V7    0.8439614361763352
#>     Attrib V8    0.03356502462562515
#>     Attrib V9    -1.1721233742938348
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.06875944211161152
#>     Attrib V1    0.18866655632889556
#>     Attrib V10    -0.4023080291444777
#>     Attrib V11    -0.23023282417172516
#>     Attrib V12    0.058420872595731435
#>     Attrib V13    -0.09863016801106235
#>     Attrib V14    0.027853319767497265
#>     Attrib V15    0.12052242069668327
#>     Attrib V16    -0.0029943122704968396
#>     Attrib V17    0.2850009076795196
#>     Attrib V18    0.02932430970647705
#>     Attrib V19    -0.14979811917728184
#>     Attrib V2    0.10794900553399886
#>     Attrib V20    0.45457572459342976
#>     Attrib V21    0.45500371925135213
#>     Attrib V22    0.15456815207321895
#>     Attrib V23    0.0806845515051329
#>     Attrib V24    -0.07042896647518967
#>     Attrib V25    -0.4758491942179767
#>     Attrib V26    -0.7071342478985373
#>     Attrib V27    -0.7332100227686834
#>     Attrib V28    -0.6308802921969704
#>     Attrib V29    -0.2748443315875431
#>     Attrib V3    0.07419971522645519
#>     Attrib V30    0.15218473209447972
#>     Attrib V31    -0.7574851402686545
#>     Attrib V32    -0.4060406478731499
#>     Attrib V33    0.21215019688050035
#>     Attrib V34    0.05682558607502117
#>     Attrib V35    -0.31526321491240383
#>     Attrib V36    -0.6666924632304492
#>     Attrib V37    -0.5782495258260392
#>     Attrib V38    -0.11714901715509622
#>     Attrib V39    0.30870950111033607
#>     Attrib V4    0.2735392529073562
#>     Attrib V40    -0.2189376742977535
#>     Attrib V41    -0.144461857848996
#>     Attrib V42    0.21648630045685863
#>     Attrib V43    0.34075653346482554
#>     Attrib V44    0.0415292728475157
#>     Attrib V45    -0.0074567683084524345
#>     Attrib V46    -0.13392494378836986
#>     Attrib V47    -0.2776330183362811
#>     Attrib V48    0.1994720991478797
#>     Attrib V49    0.2689746677647272
#>     Attrib V5    -0.10493312267598162
#>     Attrib V50    -0.32824977787650284
#>     Attrib V51    -0.24955574605556954
#>     Attrib V52    0.21516524526851713
#>     Attrib V53    0.46861599264137926
#>     Attrib V54    0.49177719458883795
#>     Attrib V55    -0.06497410917566349
#>     Attrib V56    0.3594623793003104
#>     Attrib V57    0.5574250622404813
#>     Attrib V58    0.5860193274934783
#>     Attrib V59    0.703968736749307
#>     Attrib V6    0.29736412464661754
#>     Attrib V60    0.28084434180057494
#>     Attrib V7    -0.23198381796522752
#>     Attrib V8    -0.20650663486861243
#>     Attrib V9    0.24555282106002146
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.04749376110094052
#>     Attrib V1    0.2090363891082653
#>     Attrib V10    -0.63384787121402
#>     Attrib V11    -0.2581912100845282
#>     Attrib V12    0.09252851867515485
#>     Attrib V13    -0.1012602739981609
#>     Attrib V14    7.404557450602698E-4
#>     Attrib V15    0.17687238297601918
#>     Attrib V16    -0.12594506892336618
#>     Attrib V17    0.45786290491719067
#>     Attrib V18    0.09630968328009429
#>     Attrib V19    -0.1125795689642863
#>     Attrib V2    0.10769147429981957
#>     Attrib V20    0.69773116374947
#>     Attrib V21    0.753218764807315
#>     Attrib V22    0.40234823496829275
#>     Attrib V23    0.33883849143179445
#>     Attrib V24    -0.061168876002227125
#>     Attrib V25    -0.5735630852802164
#>     Attrib V26    -0.8231767234092483
#>     Attrib V27    -1.0002123746793616
#>     Attrib V28    -0.8869730190042976
#>     Attrib V29    -0.46911558547260995
#>     Attrib V3    0.17878512762606777
#>     Attrib V30    0.23290363731033392
#>     Attrib V31    -1.1675424564447994
#>     Attrib V32    -0.6703513066225004
#>     Attrib V33    0.31067167238282634
#>     Attrib V34    0.12292697088084059
#>     Attrib V35    -0.30123575206724823
#>     Attrib V36    -0.8242910418962294
#>     Attrib V37    -0.776450036420399
#>     Attrib V38    -0.10419495811246644
#>     Attrib V39    0.46916980517865176
#>     Attrib V4    0.4216317216896539
#>     Attrib V40    -0.4218800810753091
#>     Attrib V41    -0.2391151422641693
#>     Attrib V42    0.36435213980314735
#>     Attrib V43    0.5796942092272377
#>     Attrib V44    0.1857812560528688
#>     Attrib V45    0.14916520949469708
#>     Attrib V46    -0.18341871117352995
#>     Attrib V47    -0.31163310078767353
#>     Attrib V48    0.1101222938553048
#>     Attrib V49    0.3000488963280657
#>     Attrib V5    -0.2105280117673013
#>     Attrib V50    -0.4332846847898749
#>     Attrib V51    -0.36798876662059676
#>     Attrib V52    0.25643588383897015
#>     Attrib V53    0.7059137891815908
#>     Attrib V54    0.6776898174884451
#>     Attrib V55    -0.05459517034610526
#>     Attrib V56    0.5150045874878951
#>     Attrib V57    0.7280772385924327
#>     Attrib V58    0.7922411305533784
#>     Attrib V59    1.0049405971724974
#>     Attrib V6    0.3409076388188424
#>     Attrib V60    0.25440210876202823
#>     Attrib V7    -0.3127782723420705
#>     Attrib V8    -0.16063774065583047
#>     Attrib V9    0.33401752975731097
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.13603834156994962
#>     Attrib V1    0.08642447052933051
#>     Attrib V10    0.013994304250201609
#>     Attrib V11    0.016393402494133867
#>     Attrib V12    0.023715841558839584
#>     Attrib V13    0.002952645349382523
#>     Attrib V14    0.058657967853151124
#>     Attrib V15    0.0841734178344891
#>     Attrib V16    0.018262607450766428
#>     Attrib V17    0.07968682580609822
#>     Attrib V18    -0.013706278622385921
#>     Attrib V19    -0.02156777686599988
#>     Attrib V2    0.08047677954569644
#>     Attrib V20    -0.029158094732865274
#>     Attrib V21    -0.03506947559408084
#>     Attrib V22    -0.0935520556429615
#>     Attrib V23    -0.04986484970448688
#>     Attrib V24    -0.1230712563151582
#>     Attrib V25    -0.0914840621037816
#>     Attrib V26    -0.05146078054041369
#>     Attrib V27    -0.0961086444288869
#>     Attrib V28    -0.01780849187939269
#>     Attrib V29    -0.0376983422286196
#>     Attrib V3    0.08948900945347835
#>     Attrib V30    -0.024252520579949848
#>     Attrib V31    -0.046402364705680106
#>     Attrib V32    0.04186438567667734
#>     Attrib V33    -0.012772474513095645
#>     Attrib V34    0.017805724646890543
#>     Attrib V35    0.03377241665994014
#>     Attrib V36    0.051008702968598295
#>     Attrib V37    0.010469173915665682
#>     Attrib V38    0.039114787467458494
#>     Attrib V39    0.06014063303249631
#>     Attrib V4    0.13865911004637843
#>     Attrib V40    0.07645952878243442
#>     Attrib V41    0.06347465511196636
#>     Attrib V42    0.02875774285305046
#>     Attrib V43    0.09737916429468214
#>     Attrib V44    0.043203079631501703
#>     Attrib V45    -0.0014308542866814256
#>     Attrib V46    0.050702671197120644
#>     Attrib V47    0.09225828305474276
#>     Attrib V48    0.06856012242024141
#>     Attrib V49    0.019592606884322888
#>     Attrib V5    0.0578629244363691
#>     Attrib V50    0.102317375365023
#>     Attrib V51    0.10302677758897796
#>     Attrib V52    0.08784450054408838
#>     Attrib V53    0.031022214858675203
#>     Attrib V54    0.024056100492751743
#>     Attrib V55    0.09804910686828638
#>     Attrib V56    0.14517261050537802
#>     Attrib V57    0.16115770529773635
#>     Attrib V58    0.11737694418312865
#>     Attrib V59    0.10157594928002682
#>     Attrib V6    0.07401216385853243
#>     Attrib V60    0.08224978004800504
#>     Attrib V7    -0.013798599453384061
#>     Attrib V8    0.04690850827108008
#>     Attrib V9    0.10371296204795549
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.8364691156097731
#>     Attrib V1    -0.05232514584147404
#>     Attrib V10    0.8204607888957606
#>     Attrib V11    0.9994072143048305
#>     Attrib V12    1.6882857955966424
#>     Attrib V13    1.0643106978130807
#>     Attrib V14    -0.035889137123275176
#>     Attrib V15    -0.4390756593860704
#>     Attrib V16    -1.005530266308037
#>     Attrib V17    -0.6624166189331185
#>     Attrib V18    -0.6083221319595148
#>     Attrib V19    -0.7622569021252691
#>     Attrib V2    -0.009265073318762388
#>     Attrib V20    -0.8577951150841542
#>     Attrib V21    -0.29110887970725824
#>     Attrib V22    0.39261173476253663
#>     Attrib V23    0.9284681430161299
#>     Attrib V24    0.3480404066034718
#>     Attrib V25    -0.0914721389825413
#>     Attrib V26    0.26855296366403814
#>     Attrib V27    0.7383240295563799
#>     Attrib V28    1.8034210287016645
#>     Attrib V29    1.3636415973272058
#>     Attrib V3    0.06685254854773169
#>     Attrib V30    0.5220444801331369
#>     Attrib V31    -1.420775941885353
#>     Attrib V32    -0.6568296459972222
#>     Attrib V33    -0.7509506612092772
#>     Attrib V34    -0.6676283771065197
#>     Attrib V35    -0.054563195636596264
#>     Attrib V36    -0.22127700691474725
#>     Attrib V37    0.5004611742994012
#>     Attrib V38    -0.30480633370176374
#>     Attrib V39    0.7590199894296737
#>     Attrib V4    0.3889827157829606
#>     Attrib V40    0.036192236048366924
#>     Attrib V41    1.3023580277368545
#>     Attrib V42    -0.6184280433531587
#>     Attrib V43    -0.1678792775158548
#>     Attrib V44    0.04737743867358695
#>     Attrib V45    0.5310010277466822
#>     Attrib V46    0.06187724425059214
#>     Attrib V47    -0.17268623434581268
#>     Attrib V48    0.3644894579402478
#>     Attrib V49    1.329587718571913
#>     Attrib V5    0.6640724639888165
#>     Attrib V50    -0.6994426658983284
#>     Attrib V51    0.515841888555653
#>     Attrib V52    1.4270257785096132
#>     Attrib V53    0.9145282243247514
#>     Attrib V54    -0.19356366678651651
#>     Attrib V55    -1.0885771731952012
#>     Attrib V56    -0.8936579729121229
#>     Attrib V57    0.10616544823407029
#>     Attrib V58    0.6117900944473429
#>     Attrib V59    0.5573560932728753
#>     Attrib V6    1.1559254668408874
#>     Attrib V60    0.5480667343993744
#>     Attrib V7    -0.361152043293153
#>     Attrib V8    -0.7244463671187549
#>     Attrib V9    1.0883024442089233
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.15210174664893794
#>     Attrib V1    0.14089385290016776
#>     Attrib V10    0.03681127646989625
#>     Attrib V11    -0.1528716140613525
#>     Attrib V12    -0.2922748747031457
#>     Attrib V13    -0.1235012538940459
#>     Attrib V14    0.1768737453127268
#>     Attrib V15    0.08668357491619012
#>     Attrib V16    0.19398933468798113
#>     Attrib V17    0.0805491922647849
#>     Attrib V18    0.19170702788416383
#>     Attrib V19    0.07322886688251763
#>     Attrib V2    0.08936314251903923
#>     Attrib V20    -0.18872971767078764
#>     Attrib V21    -0.07152263794276834
#>     Attrib V22    0.034159885939128866
#>     Attrib V23    -0.06760930298209988
#>     Attrib V24    -0.12496367638405195
#>     Attrib V25    -0.0036027784199126815
#>     Attrib V26    -0.07296706069621316
#>     Attrib V27    -0.02312188799448069
#>     Attrib V28    -0.07788769545330347
#>     Attrib V29    -0.027623497056961217
#>     Attrib V3    0.012712805063120051
#>     Attrib V30    -0.15138660642469734
#>     Attrib V31    0.46816372759215097
#>     Attrib V32    0.24768456034785322
#>     Attrib V33    0.026161711355238856
#>     Attrib V34    -0.07723862801417944
#>     Attrib V35    0.16185947210073262
#>     Attrib V36    0.46047676438780855
#>     Attrib V37    0.35544472999362203
#>     Attrib V38    -0.026348469460786346
#>     Attrib V39    -0.2739869624588433
#>     Attrib V4    -0.0031210560807523606
#>     Attrib V40    0.18577303473280865
#>     Attrib V41    0.12556602808336068
#>     Attrib V42    0.16137411756653905
#>     Attrib V43    -0.019163914693952115
#>     Attrib V44    -0.05032313788554805
#>     Attrib V45    -0.2540214093052664
#>     Attrib V46    -0.11193520653704471
#>     Attrib V47    0.05245681948818686
#>     Attrib V48    -0.09421222270339205
#>     Attrib V49    -0.32187040794803445
#>     Attrib V5    0.08216589272683332
#>     Attrib V50    0.3698908278397653
#>     Attrib V51    0.15430762262451322
#>     Attrib V52    -0.09201868505199187
#>     Attrib V53    -0.13403436284645648
#>     Attrib V54    -0.02040205221365168
#>     Attrib V55    0.11436761294920524
#>     Attrib V56    0.07866797837157906
#>     Attrib V57    -0.005931444599353828
#>     Attrib V58    -0.1306176849391049
#>     Attrib V59    -0.12481898786459301
#>     Attrib V6    0.0470452873692996
#>     Attrib V60    0.1028099385248586
#>     Attrib V7    0.3584102385395723
#>     Attrib V8    0.32301929089204406
#>     Attrib V9    -0.2647175960644203
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.24934218899108926
#>     Attrib V1    -0.44447639758514956
#>     Attrib V10    0.8223394779336126
#>     Attrib V11    0.9472159699086596
#>     Attrib V12    1.3024388220164949
#>     Attrib V13    0.500995953050476
#>     Attrib V14    -0.7478705275684103
#>     Attrib V15    -0.8763042520168539
#>     Attrib V16    -0.7547867060888759
#>     Attrib V17    -0.32619013100869826
#>     Attrib V18    -0.34580827158096844
#>     Attrib V19    -0.18714623183536497
#>     Attrib V2    -0.23952689623898302
#>     Attrib V20    -0.6748905531578518
#>     Attrib V21    -0.5418403642031617
#>     Attrib V22    2.440091797466217E-4
#>     Attrib V23    0.5616252331323964
#>     Attrib V24    0.5906527364351046
#>     Attrib V25    0.5055643346394147
#>     Attrib V26    0.49847668025805403
#>     Attrib V27    0.29834937627185526
#>     Attrib V28    0.7989474880419739
#>     Attrib V29    0.0969234973713421
#>     Attrib V3    -0.24958511970618635
#>     Attrib V30    0.15627484685910253
#>     Attrib V31    -0.9697609759887048
#>     Attrib V32    -0.05882226958991347
#>     Attrib V33    0.13309922659148202
#>     Attrib V34    0.3141964851855456
#>     Attrib V35    0.42015244436655763
#>     Attrib V36    -0.23900166769993042
#>     Attrib V37    -0.19193115602810448
#>     Attrib V38    -0.37580644859735596
#>     Attrib V39    0.5025594029219301
#>     Attrib V4    0.2243088696923297
#>     Attrib V40    -0.15675061177888705
#>     Attrib V41    0.6750859096241357
#>     Attrib V42    -0.6923780973043338
#>     Attrib V43    -0.4128001742689737
#>     Attrib V44    -0.039613465489596135
#>     Attrib V45    0.5116591997474993
#>     Attrib V46    0.20408699742631617
#>     Attrib V47    0.12421653675556064
#>     Attrib V48    0.7203427921153164
#>     Attrib V49    1.1771817189258895
#>     Attrib V5    0.20766287430321062
#>     Attrib V50    -0.6302706687244433
#>     Attrib V51    0.5121151436922609
#>     Attrib V52    0.8219403349907064
#>     Attrib V53    0.3478427207893666
#>     Attrib V54    -0.019644046857871942
#>     Attrib V55    -0.5224337647761954
#>     Attrib V56    -0.6192311394985937
#>     Attrib V57    -0.1503026010177365
#>     Attrib V58    0.5107666422425884
#>     Attrib V59    0.43892307574538514
#>     Attrib V6    0.5061960068273798
#>     Attrib V60    0.33367492158643847
#>     Attrib V7    -0.6692437861661272
#>     Attrib V8    -0.5828648603051112
#>     Attrib V9    1.2200670687989887
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.08878486168589515
#>     Attrib V1    0.29353094795535595
#>     Attrib V10    0.10120512385645475
#>     Attrib V11    -0.24772261534097528
#>     Attrib V12    -0.5453043005945429
#>     Attrib V13    -0.0378504748804253
#>     Attrib V14    0.4353770744890522
#>     Attrib V15    0.41168820906583853
#>     Attrib V16    0.43597005882651785
#>     Attrib V17    -0.25646295198344116
#>     Attrib V18    0.1842253368116184
#>     Attrib V19    0.1286750500738402
#>     Attrib V2    0.07614818001918804
#>     Attrib V20    -0.26596809583614195
#>     Attrib V21    -0.12667185157132838
#>     Attrib V22    -0.1831494773661653
#>     Attrib V23    -0.4754534259629599
#>     Attrib V24    -0.17678500098817543
#>     Attrib V25    0.1464288616484769
#>     Attrib V26    0.314280134883328
#>     Attrib V27    0.4834583674523431
#>     Attrib V28    0.19952220368944593
#>     Attrib V29    0.1398685595539047
#>     Attrib V3    0.08463146282727634
#>     Attrib V30    -0.5200079604923294
#>     Attrib V31    0.968745819956381
#>     Attrib V32    0.4216762552577695
#>     Attrib V33    -0.45637916945996254
#>     Attrib V34    -0.3057665660581069
#>     Attrib V35    0.08568827699147606
#>     Attrib V36    0.6379686911169968
#>     Attrib V37    0.5625442261324174
#>     Attrib V38    0.1368290038828659
#>     Attrib V39    -0.4464144783846029
#>     Attrib V4    -0.13153222673575962
#>     Attrib V40    0.30408040939825653
#>     Attrib V41    0.01200013631166269
#>     Attrib V42    -0.015671797849734926
#>     Attrib V43    -0.2110685292222484
#>     Attrib V44    -0.09126290032125005
#>     Attrib V45    -0.2910718252815479
#>     Attrib V46    -0.00895880587206103
#>     Attrib V47    0.09682078039318087
#>     Attrib V48    -0.33641168834939394
#>     Attrib V49    -0.6790017454459004
#>     Attrib V5    0.27278256758401853
#>     Attrib V50    0.7171902118960062
#>     Attrib V51    0.10249173362396768
#>     Attrib V52    -0.4008849751104678
#>     Attrib V53    -0.3714113172571396
#>     Attrib V54    -0.14331572855218333
#>     Attrib V55    0.3636175254106267
#>     Attrib V56    -0.011149667719828194
#>     Attrib V57    -0.27376389352781766
#>     Attrib V58    -0.525844246526979
#>     Attrib V59    -0.48657340589073617
#>     Attrib V6    -0.12026504663729617
#>     Attrib V60    0.03556692987123338
#>     Attrib V7    0.7374294263615659
#>     Attrib V8    0.3714809289680137
#>     Attrib V9    -0.6527127138467221
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.1164468564541031
#>     Attrib V1    -0.08893138745197365
#>     Attrib V10    -0.1836465472072147
#>     Attrib V11    0.061311397008795704
#>     Attrib V12    0.26233016679297727
#>     Attrib V13    0.011971799490300628
#>     Attrib V14    -0.1210330976001119
#>     Attrib V15    -0.10731583309828475
#>     Attrib V16    -0.2139945237041223
#>     Attrib V17    0.12026731306938634
#>     Attrib V18    -0.04665674446654362
#>     Attrib V19    -0.15298934415392085
#>     Attrib V2    -0.037752891881036345
#>     Attrib V20    0.18259684659379435
#>     Attrib V21    0.17735913998291467
#>     Attrib V22    0.12143195713748269
#>     Attrib V23    0.17044399125266635
#>     Attrib V24    0.09302908748849503
#>     Attrib V25    -0.12925561704190117
#>     Attrib V26    -0.37977881063300856
#>     Attrib V27    -0.3856909262246287
#>     Attrib V28    -0.1712623019489791
#>     Attrib V29    -0.015963102378318154
#>     Attrib V3    0.007292213218845843
#>     Attrib V30    0.21678566535808605
#>     Attrib V31    -0.6729570079315217
#>     Attrib V32    -0.24965373996619153
#>     Attrib V33    0.21796784419098877
#>     Attrib V34    0.08645577933445457
#>     Attrib V35    -0.1570033960275301
#>     Attrib V36    -0.5593748562298299
#>     Attrib V37    -0.4581240568834054
#>     Attrib V38    -0.14375229100871306
#>     Attrib V39    0.32548243897345314
#>     Attrib V4    0.11714938188738981
#>     Attrib V40    -0.1902307615158538
#>     Attrib V41    0.045968564925713495
#>     Attrib V42    0.02499126461637985
#>     Attrib V43    0.16352204583471408
#>     Attrib V44    -0.04069055876061328
#>     Attrib V45    0.1597852811327553
#>     Attrib V46    -0.08387175625505609
#>     Attrib V47    -0.10141113465469158
#>     Attrib V48    0.2518616405961993
#>     Attrib V49    0.37239823781703385
#>     Attrib V5    -0.16835186928296136
#>     Attrib V50    -0.3750487731765371
#>     Attrib V51    -0.0743112534765535
#>     Attrib V52    0.3273070180555299
#>     Attrib V53    0.3316270809020875
#>     Attrib V54    0.21074516286004802
#>     Attrib V55    -0.1496298511489992
#>     Attrib V56    0.10523400587355727
#>     Attrib V57    0.288222705379735
#>     Attrib V58    0.41284857538003034
#>     Attrib V59    0.48330271417819365
#>     Attrib V6    0.2206151840632854
#>     Attrib V60    0.11494278399648243
#>     Attrib V7    -0.3514545040113659
#>     Attrib V8    -0.18722972962051831
#>     Attrib V9    0.3618902154157833
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.09615464220381918
#>     Attrib V1    0.10706040358231173
#>     Attrib V10    0.003815027140532451
#>     Attrib V11    0.016250933800467885
#>     Attrib V12    0.12894092096336784
#>     Attrib V13    0.08749302446328718
#>     Attrib V14    0.030469786788419294
#>     Attrib V15    0.01625736928729611
#>     Attrib V16    -0.05410979942904357
#>     Attrib V17    0.047044067374108496
#>     Attrib V18    -0.05571591008700188
#>     Attrib V19    -0.09547280122403304
#>     Attrib V2    0.09405694600732475
#>     Attrib V20    -0.011675315212038427
#>     Attrib V21    0.034712218122112684
#>     Attrib V22    -0.06823062555838176
#>     Attrib V23    -0.059123901075241146
#>     Attrib V24    -0.11656218101004445
#>     Attrib V25    -0.11093813457642397
#>     Attrib V26    -0.1224831702943818
#>     Attrib V27    -0.12905737963422118
#>     Attrib V28    -0.023868348168155286
#>     Attrib V29    -0.07073722681950939
#>     Attrib V3    0.06755300768812425
#>     Attrib V30    0.05926862881880729
#>     Attrib V31    -0.15518137242607494
#>     Attrib V32    -0.09898017250527573
#>     Attrib V33    0.015892709546900394
#>     Attrib V34    -0.004221070601141264
#>     Attrib V35    -0.007344532329786644
#>     Attrib V36    -0.15754557269763184
#>     Attrib V37    -0.08430666566125813
#>     Attrib V38    -0.021217506018817976
#>     Attrib V39    0.21910539810600368
#>     Attrib V4    0.1703591841429564
#>     Attrib V40    -0.009638557686017115
#>     Attrib V41    -0.008581559563551644
#>     Attrib V42    0.0442836983222356
#>     Attrib V43    0.04470290149092506
#>     Attrib V44    0.0041431637884413565
#>     Attrib V45    0.058289890937456956
#>     Attrib V46    -0.01507933094545091
#>     Attrib V47    -0.05583417671805024
#>     Attrib V48    0.12829933490122822
#>     Attrib V49    0.11979467680404883
#>     Attrib V5    -0.015504811073721219
#>     Attrib V50    -0.06771237468345123
#>     Attrib V51    -0.0137085934439269
#>     Attrib V52    0.07050358711982622
#>     Attrib V53    0.15647472594702602
#>     Attrib V54    0.1173053253847328
#>     Attrib V55    0.01830402025667335
#>     Attrib V56    0.15678886755876315
#>     Attrib V57    0.17320583973215284
#>     Attrib V58    0.23590762472335275
#>     Attrib V59    0.2798680599115609
#>     Attrib V6    0.04903811220892844
#>     Attrib V60    0.18047006385207637
#>     Attrib V7    -0.15587577756933002
#>     Attrib V8    -0.07703633946845528
#>     Attrib V9    0.09093206803008655
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.052027561249045666
#>     Attrib V1    0.09495638223193476
#>     Attrib V10    -0.2829964305164134
#>     Attrib V11    -0.08072078477893943
#>     Attrib V12    0.03896501337711895
#>     Attrib V13    0.00881266175269652
#>     Attrib V14    0.027233804358923516
#>     Attrib V15    0.08605008771507046
#>     Attrib V16    -0.03985621337787962
#>     Attrib V17    0.2560925104069168
#>     Attrib V18    0.08395166962128155
#>     Attrib V19    -0.05188344470472191
#>     Attrib V2    0.11976189890067304
#>     Attrib V20    0.33019299215094544
#>     Attrib V21    0.2624422390637777
#>     Attrib V22    0.15266492800126788
#>     Attrib V23    0.14167192687295277
#>     Attrib V24    0.008894127623943995
#>     Attrib V25    -0.2842340808984834
#>     Attrib V26    -0.41061236030905884
#>     Attrib V27    -0.5295482001910456
#>     Attrib V28    -0.48168764982005496
#>     Attrib V29    -0.3064981771031432
#>     Attrib V3    0.04671399107720042
#>     Attrib V30    0.06573307618116714
#>     Attrib V31    -0.5572558593142772
#>     Attrib V32    -0.29950733710699035
#>     Attrib V33    0.2084480553777954
#>     Attrib V34    0.09990696476605959
#>     Attrib V35    -0.1261109750184667
#>     Attrib V36    -0.4746034551819045
#>     Attrib V37    -0.43053785002652173
#>     Attrib V38    -0.037590525403704986
#>     Attrib V39    0.21566244623833317
#>     Attrib V4    0.22312571886732396
#>     Attrib V40    -0.1916637358601256
#>     Attrib V41    -0.13770098361854083
#>     Attrib V42    0.11459547723153686
#>     Attrib V43    0.24784189476650045
#>     Attrib V44    0.10563317809685199
#>     Attrib V45    0.04063964154316678
#>     Attrib V46    -0.09962503772235443
#>     Attrib V47    -0.15614857399379714
#>     Attrib V48    0.14441312463496173
#>     Attrib V49    0.20597043838586285
#>     Attrib V5    -0.11031500431857608
#>     Attrib V50    -0.24069727273845046
#>     Attrib V51    -0.15814390779585263
#>     Attrib V52    0.1113201003723072
#>     Attrib V53    0.36904738060015585
#>     Attrib V54    0.382909322346388
#>     Attrib V55    0.03275794549952762
#>     Attrib V56    0.2328020022876083
#>     Attrib V57    0.3916464092538874
#>     Attrib V58    0.3977213040837245
#>     Attrib V59    0.5107166121610879
#>     Attrib V6    0.13142278262775223
#>     Attrib V60    0.1965970166473966
#>     Attrib V7    -0.20953046165655673
#>     Attrib V8    -0.09766243021195437
#>     Attrib V9    0.2431906227527647
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.14269467945815054
#>     Attrib V1    0.11315431168317622
#>     Attrib V10    -0.033686049378124173
#>     Attrib V11    0.036963610459499904
#>     Attrib V12    0.039155775266164455
#>     Attrib V13    2.6082362790446744E-5
#>     Attrib V14    0.09905808604830682
#>     Attrib V15    0.043351930328363646
#>     Attrib V16    0.02328910026682134
#>     Attrib V17    -0.007266423012272601
#>     Attrib V18    0.029470573707532345
#>     Attrib V19    -0.0748663248050158
#>     Attrib V2    0.07188713449066322
#>     Attrib V20    -0.001353700077888197
#>     Attrib V21    0.004208550537203264
#>     Attrib V22    -0.06809825577104467
#>     Attrib V23    -0.028825969263688273
#>     Attrib V24    -0.08179586127207578
#>     Attrib V25    -0.13047786979201667
#>     Attrib V26    -0.11467866357540715
#>     Attrib V27    -0.07813214153397463
#>     Attrib V28    0.004214998660093749
#>     Attrib V29    -0.01947908168432855
#>     Attrib V3    0.12807490060834195
#>     Attrib V30    0.02813342972433296
#>     Attrib V31    -0.12268020906185631
#>     Attrib V32    -0.04742217034588352
#>     Attrib V33    0.04406184384397809
#>     Attrib V34    0.03316845266235547
#>     Attrib V35    0.0370372195321246
#>     Attrib V36    0.02775889169609996
#>     Attrib V37    2.9911696698887747E-4
#>     Attrib V38    -0.004833751968525236
#>     Attrib V39    0.1112994204575635
#>     Attrib V4    0.09857574940139287
#>     Attrib V40    -0.0070244585462826805
#>     Attrib V41    -0.02527986421064372
#>     Attrib V42    0.06265390713997229
#>     Attrib V43    0.0246808314311775
#>     Attrib V44    0.09113318443245774
#>     Attrib V45    0.09082021161546774
#>     Attrib V46    0.031020182247746827
#>     Attrib V47    0.018567764530985936
#>     Attrib V48    0.044165059181980555
#>     Attrib V49    0.11128044673535253
#>     Attrib V5    0.08401283936926522
#>     Attrib V50    -0.006266762605359931
#>     Attrib V51    0.06094141936867035
#>     Attrib V52    0.06961555879968723
#>     Attrib V53    0.09378660746600756
#>     Attrib V54    0.02432859435908608
#>     Attrib V55    0.055406042797085255
#>     Attrib V56    0.1151575822551577
#>     Attrib V57    0.13142070085733837
#>     Attrib V58    0.19494891262017752
#>     Attrib V59    0.12569346840044082
#>     Attrib V6    0.07163933677944415
#>     Attrib V60    0.1117640348965699
#>     Attrib V7    -0.019991561077793107
#>     Attrib V8    0.042309866578313454
#>     Attrib V9    0.09863487379053988
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
