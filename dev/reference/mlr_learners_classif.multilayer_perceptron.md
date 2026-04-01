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
#>     Threshold    -0.6024491643577278
#>     Node 2    2.1385121888427725
#>     Node 3    1.5058997596641412
#>     Node 4    1.1162322996521126
#>     Node 5    -1.5304453540862084
#>     Node 6    1.991555512775545
#>     Node 7    2.309461839033452
#>     Node 8    1.1678052534302976
#>     Node 9    2.3124521900121344
#>     Node 10    -2.1102855687188793
#>     Node 11    1.2751147200105621
#>     Node 12    1.7682047000379912
#>     Node 13    0.8539981909043002
#>     Node 14    1.381464277938018
#>     Node 15    -2.598250099768467
#>     Node 16    0.10202737961805715
#>     Node 17    0.5718536184913406
#>     Node 18    0.5107769959553907
#>     Node 19    2.445626745770146
#>     Node 20    2.3616048322071097
#>     Node 21    -3.0862055472786296
#>     Node 22    1.6511744867786387
#>     Node 23    2.381230096571225
#>     Node 24    -1.7804433311142105
#>     Node 25    5.346735177192132
#>     Node 26    -0.00517978208036445
#>     Node 27    2.4479573476563705
#>     Node 28    -2.7646021762393005
#>     Node 29    0.673367175081471
#>     Node 30    -0.15923991006124413
#>     Node 31    1.8845414499870705
#>     Node 32    1.668660994443288
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.6131750057120324
#>     Node 2    -2.179477996801708
#>     Node 3    -1.501053691582005
#>     Node 4    -1.0699120149300663
#>     Node 5    1.5389953379915957
#>     Node 6    -1.9761633947634383
#>     Node 7    -2.285980412191395
#>     Node 8    -1.1907159045070488
#>     Node 9    -2.306147578915144
#>     Node 10    2.0427146318620713
#>     Node 11    -1.2351448376880287
#>     Node 12    -1.8262341610124126
#>     Node 13    -0.8077252064148684
#>     Node 14    -1.3096266507102174
#>     Node 15    2.586584529817185
#>     Node 16    -0.12338277939190385
#>     Node 17    -0.5381809316441731
#>     Node 18    -0.4733166879207492
#>     Node 19    -2.447440953993754
#>     Node 20    -2.343125573749952
#>     Node 21    3.131724857732897
#>     Node 22    -1.703027663277086
#>     Node 23    -2.43446593540629
#>     Node 24    1.7678223071361634
#>     Node 25    -5.337366232488602
#>     Node 26    -0.08155932936559362
#>     Node 27    -2.4749444377142242
#>     Node 28    2.766196154604976
#>     Node 29    -0.7101935992769163
#>     Node 30    0.2248631983962435
#>     Node 31    -1.8336388870447766
#>     Node 32    -1.6786034854164593
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.5949746968449855
#>     Attrib V1    0.31266108935915526
#>     Attrib V10    0.3101990773181612
#>     Attrib V11    0.4693172073639836
#>     Attrib V12    -0.04834662828418015
#>     Attrib V13    -0.33176812217391444
#>     Attrib V14    -0.5255309667919269
#>     Attrib V15    -0.3114663463979026
#>     Attrib V16    -0.09618828506577826
#>     Attrib V17    -0.14038222349360863
#>     Attrib V18    0.021758395945005355
#>     Attrib V19    0.3455264428061335
#>     Attrib V2    -0.019652940328650323
#>     Attrib V20    0.19666673310348445
#>     Attrib V21    0.34003124521811634
#>     Attrib V22    0.1265415771882129
#>     Attrib V23    0.5234803528476961
#>     Attrib V24    0.5595632309277616
#>     Attrib V25    -0.2142690682182922
#>     Attrib V26    0.20974075484753665
#>     Attrib V27    0.5285498286262421
#>     Attrib V28    0.9959322276158049
#>     Attrib V29    0.8919114727112482
#>     Attrib V3    -0.02626842813898345
#>     Attrib V30    0.6266599205153863
#>     Attrib V31    -1.0317837874341418
#>     Attrib V32    0.35500393368751304
#>     Attrib V33    -0.14806131665790798
#>     Attrib V34    -0.12392380371884507
#>     Attrib V35    0.7194481760283923
#>     Attrib V36    -0.5023227851550282
#>     Attrib V37    -0.5380740542560507
#>     Attrib V38    -0.276825717970472
#>     Attrib V39    0.24436334849900118
#>     Attrib V4    0.08252612985908234
#>     Attrib V40    0.13464025410025246
#>     Attrib V41    0.5580639444188815
#>     Attrib V42    0.3112760161245462
#>     Attrib V43    -0.08100165889475085
#>     Attrib V44    0.6866230894464519
#>     Attrib V45    0.33878268393321526
#>     Attrib V46    0.33166923672035287
#>     Attrib V47    0.10525012377714804
#>     Attrib V48    0.5969217769542169
#>     Attrib V49    0.9136382022138364
#>     Attrib V5    -0.017668679726818348
#>     Attrib V50    -1.0825702694955592
#>     Attrib V51    0.7661785250961938
#>     Attrib V52    0.6457836467442615
#>     Attrib V53    0.2124278486611218
#>     Attrib V54    -0.3311408033435664
#>     Attrib V55    -0.48501036435603206
#>     Attrib V56    0.1818675664459167
#>     Attrib V57    -1.0297753035814392
#>     Attrib V58    0.9901275669541696
#>     Attrib V59    0.5762557803638056
#>     Attrib V6    0.041227890063734646
#>     Attrib V60    0.08290223270716587
#>     Attrib V7    -0.5340499501407118
#>     Attrib V8    -0.1281325676787792
#>     Attrib V9    1.0252957577020403
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.27850973377569704
#>     Attrib V1    0.38206083347971687
#>     Attrib V10    -0.17165037492479224
#>     Attrib V11    0.12349783655702014
#>     Attrib V12    0.06092110818464276
#>     Attrib V13    -0.3486998748565572
#>     Attrib V14    -0.36435548008266133
#>     Attrib V15    0.03113560989664815
#>     Attrib V16    0.27153863495033526
#>     Attrib V17    0.3140372897821276
#>     Attrib V18    0.07346739912652805
#>     Attrib V19    0.2503045133598667
#>     Attrib V2    -2.762328226421189E-4
#>     Attrib V20    0.04052581180236101
#>     Attrib V21    0.07223357023937249
#>     Attrib V22    0.10402781513499242
#>     Attrib V23    0.1868419477805603
#>     Attrib V24    0.3897641004903776
#>     Attrib V25    -0.01374266905845676
#>     Attrib V26    -0.3498092665611323
#>     Attrib V27    -0.4553562927333637
#>     Attrib V28    -0.3604294818874388
#>     Attrib V29    -0.5253426053788095
#>     Attrib V3    -0.1257892187361377
#>     Attrib V30    -0.08589188315078447
#>     Attrib V31    -0.9332120643244455
#>     Attrib V32    0.5099906796450161
#>     Attrib V33    0.28481374377016067
#>     Attrib V34    0.06785255583782342
#>     Attrib V35    0.4692390252537833
#>     Attrib V36    -0.3043913767866253
#>     Attrib V37    -0.5408205322173469
#>     Attrib V38    -0.32706391095012183
#>     Attrib V39    0.08735528645283148
#>     Attrib V4    -0.02782791485071096
#>     Attrib V40    -0.0803728863180154
#>     Attrib V41    -0.08603466806655362
#>     Attrib V42    0.1848574698922501
#>     Attrib V43    0.027559347029633797
#>     Attrib V44    0.4461209289440359
#>     Attrib V45    0.291657734989724
#>     Attrib V46    0.09586632351474852
#>     Attrib V47    -0.23911862182780202
#>     Attrib V48    0.30139558859249954
#>     Attrib V49    0.4660867384485114
#>     Attrib V5    -0.3442892016273765
#>     Attrib V50    -0.7605622168840255
#>     Attrib V51    0.09457476817398038
#>     Attrib V52    0.23116188310518776
#>     Attrib V53    -0.01773940501327322
#>     Attrib V54    0.30280565232793066
#>     Attrib V55    -0.077593274784081
#>     Attrib V56    0.3889376788108741
#>     Attrib V57    -0.3842664141697396
#>     Attrib V58    0.8244720682681121
#>     Attrib V59    0.758682257366638
#>     Attrib V6    -0.005699740536289207
#>     Attrib V60    0.35070926365165156
#>     Attrib V7    -0.019831091165486828
#>     Attrib V8    -0.15665127356497285
#>     Attrib V9    0.2973266409094423
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.2582942718289511
#>     Attrib V1    0.32666030152955244
#>     Attrib V10    -0.1596111307193222
#>     Attrib V11    -0.001795017908847573
#>     Attrib V12    -0.1608512824112598
#>     Attrib V13    -0.29589083146135525
#>     Attrib V14    -0.13297424645601982
#>     Attrib V15    0.08260512813719717
#>     Attrib V16    0.16103991417094204
#>     Attrib V17    0.13831938005396407
#>     Attrib V18    0.01804665970407932
#>     Attrib V19    0.09207562850229914
#>     Attrib V2    0.01022526884670096
#>     Attrib V20    0.012046408887683486
#>     Attrib V21    0.14283772849542198
#>     Attrib V22    -0.05443517989278398
#>     Attrib V23    -0.018021229699773458
#>     Attrib V24    0.0280277783996989
#>     Attrib V25    -0.3817818905900049
#>     Attrib V26    -0.29494998240067277
#>     Attrib V27    -0.06811312511783178
#>     Attrib V28    0.22656693144445025
#>     Attrib V29    0.25244162732969694
#>     Attrib V3    -0.07138450606960871
#>     Attrib V30    0.14582024314302325
#>     Attrib V31    -0.6929256656425583
#>     Attrib V32    0.02041977173988285
#>     Attrib V33    -0.06360132213290255
#>     Attrib V34    -0.11797941684790879
#>     Attrib V35    0.2557568124645455
#>     Attrib V36    -0.24316704474747952
#>     Attrib V37    -0.26152473724478975
#>     Attrib V38    -0.11368564513299621
#>     Attrib V39    0.13569274867831052
#>     Attrib V4    0.08448740959902812
#>     Attrib V40    -0.08063269243231536
#>     Attrib V41    -0.08898360569082617
#>     Attrib V42    0.05239083489393156
#>     Attrib V43    -0.022638520715566775
#>     Attrib V44    0.46691010632290314
#>     Attrib V45    0.3946531831002703
#>     Attrib V46    0.14305513250621754
#>     Attrib V47    -0.13878056042693682
#>     Attrib V48    0.30376481369772623
#>     Attrib V49    0.40870869082714884
#>     Attrib V5    -0.004544357015922727
#>     Attrib V50    -0.4581937769650177
#>     Attrib V51    0.17968266831295468
#>     Attrib V52    0.20430656923555945
#>     Attrib V53    0.17181262523849372
#>     Attrib V54    0.040330002121481884
#>     Attrib V55    -0.14933223590237585
#>     Attrib V56    0.14162300989397045
#>     Attrib V57    -0.24455447258044777
#>     Attrib V58    0.5259361126751412
#>     Attrib V59    0.5650827728930277
#>     Attrib V6    0.031193705418846585
#>     Attrib V60    0.22100222626624086
#>     Attrib V7    -0.12470443348276858
#>     Attrib V8    -0.24822668723464936
#>     Attrib V9    0.2489284123796944
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.37660348680774136
#>     Attrib V1    -0.2945305505344668
#>     Attrib V10    0.042604862202445366
#>     Attrib V11    -0.25538811542948014
#>     Attrib V12    -0.14362961653700584
#>     Attrib V13    0.2986277799525575
#>     Attrib V14    0.42763913690182354
#>     Attrib V15    0.05395270430071224
#>     Attrib V16    0.19524579042173512
#>     Attrib V17    0.5655685141212343
#>     Attrib V18    0.6421338112822832
#>     Attrib V19    -0.019336528135949986
#>     Attrib V2    0.10068593773052108
#>     Attrib V20    -0.16282000614419012
#>     Attrib V21    -0.09727863400858718
#>     Attrib V22    0.011287792187630364
#>     Attrib V23    -0.3208256134440438
#>     Attrib V24    -0.6598301811356003
#>     Attrib V25    0.12749927486914053
#>     Attrib V26    0.20316549323394864
#>     Attrib V27    0.1474883337721077
#>     Attrib V28    0.03828629538206885
#>     Attrib V29    0.06849934879477855
#>     Attrib V3    0.1651489348215925
#>     Attrib V30    0.2861908959500595
#>     Attrib V31    1.2766588950203306
#>     Attrib V32    0.03213184835162191
#>     Attrib V33    0.29532625776431687
#>     Attrib V34    0.15241015930657412
#>     Attrib V35    -0.1880272197589145
#>     Attrib V36    0.7702704618577092
#>     Attrib V37    0.46769391591902837
#>     Attrib V38    0.194220184347293
#>     Attrib V39    -0.18682552145269707
#>     Attrib V4    0.12801544290285174
#>     Attrib V40    0.12836473773325688
#>     Attrib V41    -0.0013835306124512692
#>     Attrib V42    0.0659484690657065
#>     Attrib V43    0.17958591120706388
#>     Attrib V44    -0.1663663231197229
#>     Attrib V45    -0.2861295647675524
#>     Attrib V46    -0.38049696583321296
#>     Attrib V47    0.038121102277668746
#>     Attrib V48    -0.2852358464500074
#>     Attrib V49    -0.5080687661721538
#>     Attrib V5    0.2956392374489784
#>     Attrib V50    0.789914839625902
#>     Attrib V51    -0.3220010162800166
#>     Attrib V52    -0.45051999603579845
#>     Attrib V53    -0.23374595815400057
#>     Attrib V54    -0.06806043264385164
#>     Attrib V55    0.1236002740854976
#>     Attrib V56    -0.09863418120520287
#>     Attrib V57    0.5657583667313848
#>     Attrib V58    -0.8790799266001067
#>     Attrib V59    -0.5071866361398285
#>     Attrib V6    0.19858202684237178
#>     Attrib V60    -0.10002101863383595
#>     Attrib V7    0.3891604952286991
#>     Attrib V8    0.41318104160159036
#>     Attrib V9    -0.3652068821184993
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.11756262819335435
#>     Attrib V1    0.5449250747981306
#>     Attrib V10    -0.26376883548617047
#>     Attrib V11    0.10687385542957242
#>     Attrib V12    0.0011018955617024353
#>     Attrib V13    -0.6332243806111518
#>     Attrib V14    -0.5326496385994218
#>     Attrib V15    0.027687380151662416
#>     Attrib V16    0.5153362675248395
#>     Attrib V17    0.4463394070538404
#>     Attrib V18    0.07356804258192581
#>     Attrib V19    0.1819887727657007
#>     Attrib V2    0.03642857744289066
#>     Attrib V20    0.0615811877428546
#>     Attrib V21    0.13819683892656448
#>     Attrib V22    0.09204128414715292
#>     Attrib V23    0.11184706118084385
#>     Attrib V24    0.4519519516926599
#>     Attrib V25    0.05503963495449796
#>     Attrib V26    -0.5642165026703734
#>     Attrib V27    -0.8445068107090369
#>     Attrib V28    -0.847454258009508
#>     Attrib V29    -0.9942544997159167
#>     Attrib V3    -0.13884056352664048
#>     Attrib V30    -0.3355101253564186
#>     Attrib V31    -1.1540827304494372
#>     Attrib V32    0.6995039398860685
#>     Attrib V33    0.48683032555652944
#>     Attrib V34    0.17733842821037094
#>     Attrib V35    0.5470061861955925
#>     Attrib V36    -0.3167357975172787
#>     Attrib V37    -0.6060159531494282
#>     Attrib V38    -0.3664423234470366
#>     Attrib V39    0.0344418518330913
#>     Attrib V4    -0.08769428803786956
#>     Attrib V40    -0.19805858563491024
#>     Attrib V41    -0.16804212802515342
#>     Attrib V42    0.22929097951163172
#>     Attrib V43    -0.01845893445435843
#>     Attrib V44    0.3381978266942211
#>     Attrib V45    0.391005657795513
#>     Attrib V46    0.14397426693652357
#>     Attrib V47    -0.31160628443763005
#>     Attrib V48    0.36570521414526885
#>     Attrib V49    0.4838798185296634
#>     Attrib V5    -0.5100492620934549
#>     Attrib V50    -0.7995169120144829
#>     Attrib V51    0.1168644987903371
#>     Attrib V52    0.08826052297329512
#>     Attrib V53    -0.14753603887395636
#>     Attrib V54    0.3463150881450637
#>     Attrib V55    -0.0432623850629543
#>     Attrib V56    0.6010094221681169
#>     Attrib V57    -0.23652413896165156
#>     Attrib V58    0.9136275885240479
#>     Attrib V59    0.8600174589365029
#>     Attrib V6    0.0201172027153242
#>     Attrib V60    0.5892902255267262
#>     Attrib V7    0.18350557088037106
#>     Attrib V8    -0.11391053231392007
#>     Attrib V9    0.36477610636916735
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.7884087529966695
#>     Attrib V1    0.3786557721797159
#>     Attrib V10    0.4234844380545231
#>     Attrib V11    0.6132307121193863
#>     Attrib V12    0.23007946591476736
#>     Attrib V13    0.10097938898512179
#>     Attrib V14    -0.25386783645396593
#>     Attrib V15    -0.15047842702889608
#>     Attrib V16    -0.29129812878090855
#>     Attrib V17    -0.47510531896935376
#>     Attrib V18    -0.16483598414026482
#>     Attrib V19    0.004862706438748414
#>     Attrib V2    0.14772523573350943
#>     Attrib V20    -7.926225501656012E-4
#>     Attrib V21    0.33565979895072884
#>     Attrib V22    0.1678841505926589
#>     Attrib V23    0.4266838851431416
#>     Attrib V24    0.2961263399522792
#>     Attrib V25    -0.459733803348556
#>     Attrib V26    0.4835332994071438
#>     Attrib V27    0.9803131249555634
#>     Attrib V28    1.1982912357143907
#>     Attrib V29    1.475892493278148
#>     Attrib V3    -0.01740618089664784
#>     Attrib V30    0.7879074698287094
#>     Attrib V31    -0.46393752200638516
#>     Attrib V32    -0.08301892240355838
#>     Attrib V33    -0.5487826030992056
#>     Attrib V34    -0.3642324158158735
#>     Attrib V35    0.3822076674572608
#>     Attrib V36    -0.5402185620916657
#>     Attrib V37    -0.13946782638783498
#>     Attrib V38    -0.18574956363422465
#>     Attrib V39    0.1878622610445264
#>     Attrib V4    0.21012909712640138
#>     Attrib V40    0.3216838430719134
#>     Attrib V41    0.6478389247048418
#>     Attrib V42    -0.12905965521667134
#>     Attrib V43    -0.2420987006246101
#>     Attrib V44    0.29973454328897176
#>     Attrib V45    0.1938225009323553
#>     Attrib V46    0.5585484607692968
#>     Attrib V47    0.3470436320572228
#>     Attrib V48    0.42020800956531384
#>     Attrib V49    0.6599570066958168
#>     Attrib V5    0.3768954410420484
#>     Attrib V50    -0.3958247725038516
#>     Attrib V51    0.8157955838275209
#>     Attrib V52    0.6488143550159351
#>     Attrib V53    0.4729162616868714
#>     Attrib V54    -0.05420902469113477
#>     Attrib V55    -0.34622348604677017
#>     Attrib V56    -0.19073368936504637
#>     Attrib V57    -0.6770431229624086
#>     Attrib V58    0.7500780351853796
#>     Attrib V59    0.4091648177545365
#>     Attrib V6    0.2497836216309177
#>     Attrib V60    0.1274036064592953
#>     Attrib V7    -0.427461405931005
#>     Attrib V8    -0.25777823142739364
#>     Attrib V9    0.9881211510085922
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.3684637563943893
#>     Attrib V1    0.3556214047702638
#>     Attrib V10    0.010515368356055285
#>     Attrib V11    0.18169879316655554
#>     Attrib V12    -0.014369516254065079
#>     Attrib V13    -0.2200199663812465
#>     Attrib V14    -0.20610125988497977
#>     Attrib V15    -0.07018344013166859
#>     Attrib V16    0.021780043954695807
#>     Attrib V17    -0.10237633319643986
#>     Attrib V18    -0.15526352264543242
#>     Attrib V19    -0.06931387394272934
#>     Attrib V2    0.08173855148308018
#>     Attrib V20    -0.15930839710587222
#>     Attrib V21    2.1243572731518748E-4
#>     Attrib V22    -0.22505871535658675
#>     Attrib V23    -0.2783241846201369
#>     Attrib V24    -0.01305497191382972
#>     Attrib V25    -0.2619545400356612
#>     Attrib V26    0.06384184428261681
#>     Attrib V27    0.3259857090300606
#>     Attrib V28    0.37804438821976083
#>     Attrib V29    0.3950787687056735
#>     Attrib V3    -0.06571089657005119
#>     Attrib V30    0.2989810719830092
#>     Attrib V31    -0.3798766857307129
#>     Attrib V32    -0.07410478944315047
#>     Attrib V33    -0.18048018533823823
#>     Attrib V34    -0.10060534804594926
#>     Attrib V35    0.257504921946864
#>     Attrib V36    -0.07117141904734173
#>     Attrib V37    -0.0929335749983094
#>     Attrib V38    0.05579148083129406
#>     Attrib V39    0.20180191383755913
#>     Attrib V4    0.19055331560475045
#>     Attrib V40    0.01696215654871796
#>     Attrib V41    -0.03344550378322857
#>     Attrib V42    -0.243988366527392
#>     Attrib V43    -0.09470428584220011
#>     Attrib V44    0.42862655669846317
#>     Attrib V45    0.30177926884843104
#>     Attrib V46    0.23333608082944238
#>     Attrib V47    0.04606376647241697
#>     Attrib V48    0.4644353910274822
#>     Attrib V49    0.4171231974067403
#>     Attrib V5    0.07143006831403667
#>     Attrib V50    -0.38836630586072457
#>     Attrib V51    0.2220531991069583
#>     Attrib V52    0.1919984296043205
#>     Attrib V53    0.23976745717871803
#>     Attrib V54    0.112444230653434
#>     Attrib V55    -0.1015940724090745
#>     Attrib V56    -0.024517686158908817
#>     Attrib V57    -0.048834884063688265
#>     Attrib V58    0.38897771097876566
#>     Attrib V59    0.5671593885310935
#>     Attrib V6    0.02624708219620466
#>     Attrib V60    0.311996087267586
#>     Attrib V7    -0.19541599747960955
#>     Attrib V8    -0.24320650022510637
#>     Attrib V9    0.29456292158611014
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.6497739322448253
#>     Attrib V1    0.2615477173167117
#>     Attrib V10    0.482854941593906
#>     Attrib V11    0.8220420423592237
#>     Attrib V12    0.8068628972984933
#>     Attrib V13    0.46120771906815144
#>     Attrib V14    -0.2774122870080143
#>     Attrib V15    -0.31667946533641284
#>     Attrib V16    -0.5150095730801031
#>     Attrib V17    -0.5366935284237055
#>     Attrib V18    -0.18338188402006064
#>     Attrib V19    -0.06996316425751674
#>     Attrib V2    0.0668851932447602
#>     Attrib V20    -0.18013359024370817
#>     Attrib V21    0.03345451120405543
#>     Attrib V22    0.016939708185299315
#>     Attrib V23    0.4246701671949957
#>     Attrib V24    0.5848978839749194
#>     Attrib V25    0.1429340795042226
#>     Attrib V26    0.8687413229690051
#>     Attrib V27    1.1208219936098507
#>     Attrib V28    0.9755740294264004
#>     Attrib V29    0.9650032613594752
#>     Attrib V3    -0.09186158918005316
#>     Attrib V30    0.5452214110348462
#>     Attrib V31    -0.15567004864817682
#>     Attrib V32    0.17646346177764574
#>     Attrib V33    -0.35878167771323616
#>     Attrib V34    -0.08964742808196258
#>     Attrib V35    0.44532591009211875
#>     Attrib V36    -0.47296431486403023
#>     Attrib V37    -0.19259764793019538
#>     Attrib V38    -0.2506495270066411
#>     Attrib V39    0.3466411631307024
#>     Attrib V4    0.16100630716470754
#>     Attrib V40    0.5088651154389457
#>     Attrib V41    0.7839315169620553
#>     Attrib V42    -0.11898079557398741
#>     Attrib V43    -0.19242446394951718
#>     Attrib V44    -0.015578456095203521
#>     Attrib V45    -0.06676220997046507
#>     Attrib V46    0.35786429498600847
#>     Attrib V47    0.31682735542540175
#>     Attrib V48    0.47826396107726676
#>     Attrib V49    0.7172880103611882
#>     Attrib V5    0.44190315107094963
#>     Attrib V50    -0.34484630870960287
#>     Attrib V51    0.892340132399924
#>     Attrib V52    0.6556343510682923
#>     Attrib V53    0.6388412236875184
#>     Attrib V54    0.049302983365257264
#>     Attrib V55    -0.15788673126498906
#>     Attrib V56    -0.13621937479956103
#>     Attrib V57    -0.700750236629787
#>     Attrib V58    0.6523146870727345
#>     Attrib V59    0.49211988393285766
#>     Attrib V6    0.29006565980628857
#>     Attrib V60    0.15663876006257527
#>     Attrib V7    -0.5019294668268867
#>     Attrib V8    -0.2755827273667149
#>     Attrib V9    0.852443808416147
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.30341366037584394
#>     Attrib V1    -0.2065025514624936
#>     Attrib V10    0.0065217113703108735
#>     Attrib V11    -0.42892599175265506
#>     Attrib V12    -0.2425405582093489
#>     Attrib V13    0.33941428577918
#>     Attrib V14    0.6741309607461347
#>     Attrib V15    0.00670453651066126
#>     Attrib V16    -0.25081043555689375
#>     Attrib V17    -0.1457647871432181
#>     Attrib V18    0.17349977227280602
#>     Attrib V19    -0.1950512571764475
#>     Attrib V2    0.09239085791083297
#>     Attrib V20    0.10844607155575045
#>     Attrib V21    0.058883916224523686
#>     Attrib V22    -0.19655965120612962
#>     Attrib V23    -0.5592792575887489
#>     Attrib V24    -0.6729294746753334
#>     Attrib V25    0.15884748156535602
#>     Attrib V26    0.5086083447922869
#>     Attrib V27    0.4510318635275707
#>     Attrib V28    0.111394014446337
#>     Attrib V29    0.11226733002589602
#>     Attrib V3    0.20110304168245544
#>     Attrib V30    -0.0773334413130477
#>     Attrib V31    1.150210064089064
#>     Attrib V32    -1.0476839319111053
#>     Attrib V33    -0.24845220944366145
#>     Attrib V34    0.20890081319506448
#>     Attrib V35    -0.14171781539775583
#>     Attrib V36    1.0146281375078245
#>     Attrib V37    0.9030340278989154
#>     Attrib V38    0.5748337225956685
#>     Attrib V39    0.02672981560520717
#>     Attrib V4    0.09999398214738427
#>     Attrib V40    0.20974953098338206
#>     Attrib V41    -0.06300924270946093
#>     Attrib V42    -0.40599565725274533
#>     Attrib V43    0.028178848486050127
#>     Attrib V44    -0.2886293144020207
#>     Attrib V45    -0.16649527725137384
#>     Attrib V46    -0.29223092692319375
#>     Attrib V47    0.030661597957515743
#>     Attrib V48    -0.5035528520967106
#>     Attrib V49    -0.7273499190410643
#>     Attrib V5    0.5424638692681046
#>     Attrib V50    1.242452139654178
#>     Attrib V51    -0.5531286868877379
#>     Attrib V52    -0.6806112503006073
#>     Attrib V53    0.08409823011717608
#>     Attrib V54    0.18757267088209126
#>     Attrib V55    0.27693764167324764
#>     Attrib V56    -0.5581964089129722
#>     Attrib V57    0.7852797622080152
#>     Attrib V58    -1.1963322898524622
#>     Attrib V59    -0.6741682581562909
#>     Attrib V6    0.04726678737644458
#>     Attrib V60    -0.31736363221841063
#>     Attrib V7    0.03893899444145618
#>     Attrib V8    0.23570228821471334
#>     Attrib V9    -0.6928369869746187
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.3303252098868519
#>     Attrib V1    0.34968049956469327
#>     Attrib V10    -0.17742314873840886
#>     Attrib V11    0.03342267851554335
#>     Attrib V12    -0.1105723105164006
#>     Attrib V13    -0.44404866719359376
#>     Attrib V14    -0.29372586990787186
#>     Attrib V15    -0.008812342405861321
#>     Attrib V16    0.2329253898117494
#>     Attrib V17    0.2705192897403153
#>     Attrib V18    0.12955834957372717
#>     Attrib V19    0.14977993147987795
#>     Attrib V2    -0.03909682518789127
#>     Attrib V20    0.09964013610865376
#>     Attrib V21    0.14448907216801224
#>     Attrib V22    0.003995192989172419
#>     Attrib V23    0.041641147876099814
#>     Attrib V24    0.11644241007473499
#>     Attrib V25    -0.2912793868054056
#>     Attrib V26    -0.3333285400143663
#>     Attrib V27    -0.09669894736476009
#>     Attrib V28    0.11228435334072998
#>     Attrib V29    0.03135900413261273
#>     Attrib V3    -0.18551453712157506
#>     Attrib V30    0.09274835814366525
#>     Attrib V31    -0.8662781803939992
#>     Attrib V32    0.06820326557014977
#>     Attrib V33    -0.06980025099657297
#>     Attrib V34    -0.06103637354973068
#>     Attrib V35    0.4036077374328039
#>     Attrib V36    -0.1813505995111385
#>     Attrib V37    -0.2948367713817221
#>     Attrib V38    -0.032756006724536366
#>     Attrib V39    0.13608833260692216
#>     Attrib V4    0.04531410262617149
#>     Attrib V40    -0.11864671082855421
#>     Attrib V41    -0.1612080091257915
#>     Attrib V42    0.018591034615214483
#>     Attrib V43    0.022679851434493574
#>     Attrib V44    0.6207291281892924
#>     Attrib V45    0.46021932245601926
#>     Attrib V46    0.17099329079349104
#>     Attrib V47    -0.12355070381410567
#>     Attrib V48    0.3537930154491595
#>     Attrib V49    0.43424332807931737
#>     Attrib V5    -0.0916157619622471
#>     Attrib V50    -0.5777010038426961
#>     Attrib V51    0.20005718441466305
#>     Attrib V52    0.1692285004009302
#>     Attrib V53    0.09547617710339244
#>     Attrib V54    0.1635997266399179
#>     Attrib V55    -0.1733242452745105
#>     Attrib V56    0.1905023905006587
#>     Attrib V57    -0.29101397499049986
#>     Attrib V58    0.6283421330163415
#>     Attrib V59    0.5670045943163303
#>     Attrib V6    0.06287222611828022
#>     Attrib V60    0.2522562425998443
#>     Attrib V7    -0.1642780500078991
#>     Attrib V8    -0.23070052948596706
#>     Attrib V9    0.2848796954911702
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.6629162662204332
#>     Attrib V1    0.4569343314626836
#>     Attrib V10    -0.30607207778088397
#>     Attrib V11    -0.07094978900303116
#>     Attrib V12    -0.3833393701930442
#>     Attrib V13    -0.48637487970546706
#>     Attrib V14    -0.17998329146069847
#>     Attrib V15    0.0928833471961671
#>     Attrib V16    0.29258033105348114
#>     Attrib V17    0.11244848127730753
#>     Attrib V18    0.025477254710075115
#>     Attrib V19    0.1967960647690792
#>     Attrib V2    0.10338717112131245
#>     Attrib V20    -0.05137772919441439
#>     Attrib V21    0.10372069323096925
#>     Attrib V22    -0.08778095131952343
#>     Attrib V23    -0.029556166235951333
#>     Attrib V24    -0.10138019439027325
#>     Attrib V25    -0.8419681384233862
#>     Attrib V26    -0.5806413241367463
#>     Attrib V27    0.1175282490603585
#>     Attrib V28    0.5749333632204814
#>     Attrib V29    0.7061358983489404
#>     Attrib V3    -0.15919864940939865
#>     Attrib V30    0.3203023653434649
#>     Attrib V31    -1.1685417775502556
#>     Attrib V32    -0.12682049190299827
#>     Attrib V33    -0.2457807117497644
#>     Attrib V34    -0.36150736278652235
#>     Attrib V35    0.2845976761357183
#>     Attrib V36    -0.440369726423673
#>     Attrib V37    -0.3889478904493854
#>     Attrib V38    -0.05756404366117974
#>     Attrib V39    0.12380884777134332
#>     Attrib V4    0.2846337843946571
#>     Attrib V40    -0.13865094426008204
#>     Attrib V41    -0.0027441145990026263
#>     Attrib V42    0.10845411587151688
#>     Attrib V43    0.030798211382817336
#>     Attrib V44    0.653856031193281
#>     Attrib V45    0.5636370603778335
#>     Attrib V46    0.3148329425490194
#>     Attrib V47    -0.1704652365229017
#>     Attrib V48    0.40960260425399503
#>     Attrib V49    0.5114561707084012
#>     Attrib V5    0.02786178575320008
#>     Attrib V50    -0.7176407117093879
#>     Attrib V51    0.28932267864755096
#>     Attrib V52    0.4027468774888306
#>     Attrib V53    0.298917143628892
#>     Attrib V54    -0.05503513141699502
#>     Attrib V55    -0.38896030490123906
#>     Attrib V56    0.15123690251649044
#>     Attrib V57    -0.42653770330050894
#>     Attrib V58    0.8067626987945606
#>     Attrib V59    0.7832241505357834
#>     Attrib V6    0.16703511594358272
#>     Attrib V60    0.28418683373738035
#>     Attrib V7    -0.09977092502460214
#>     Attrib V8    -0.22374406997777632
#>     Attrib V9    0.3442314027470847
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.010994808314564172
#>     Attrib V1    0.3319589082844759
#>     Attrib V10    -0.2016607986256007
#>     Attrib V11    0.011418229690505625
#>     Attrib V12    -0.02857114152242336
#>     Attrib V13    -0.15527857030926012
#>     Attrib V14    -0.1093528720031503
#>     Attrib V15    0.03502833198778592
#>     Attrib V16    0.1239862347332327
#>     Attrib V17    0.19225186336455694
#>     Attrib V18    0.0788351591815324
#>     Attrib V19    0.08385396581717096
#>     Attrib V2    0.0420386854265081
#>     Attrib V20    0.04750218192878208
#>     Attrib V21    0.06750963895679082
#>     Attrib V22    -0.02746792241216174
#>     Attrib V23    0.04554828869324982
#>     Attrib V24    0.1913250662016351
#>     Attrib V25    0.04017791330572717
#>     Attrib V26    -0.16868102008563632
#>     Attrib V27    -0.16195119825715676
#>     Attrib V28    -0.22108963376974095
#>     Attrib V29    -0.18736424879688568
#>     Attrib V3    0.018172141272636107
#>     Attrib V30    -0.07870357959186011
#>     Attrib V31    -0.5600319820668815
#>     Attrib V32    0.13659236890292006
#>     Attrib V33    0.06511023852288701
#>     Attrib V34    0.0882823918829169
#>     Attrib V35    0.28611023059281804
#>     Attrib V36    -0.0823813423843737
#>     Attrib V37    -0.18960244526873746
#>     Attrib V38    -0.11922861136983919
#>     Attrib V39    0.11927141158048746
#>     Attrib V4    0.038599509881277715
#>     Attrib V40    -0.02313850921996256
#>     Attrib V41    -0.06171785485793423
#>     Attrib V42    0.06211294703765161
#>     Attrib V43    -0.013299920919104804
#>     Attrib V44    0.22974532281060234
#>     Attrib V45    0.16193376527144054
#>     Attrib V46    0.10583231447776821
#>     Attrib V47    -0.0839035307467106
#>     Attrib V48    0.15726754074889407
#>     Attrib V49    0.2572070653857863
#>     Attrib V5    -0.0525479266484144
#>     Attrib V50    -0.3453720109464612
#>     Attrib V51    0.06452316554608184
#>     Attrib V52    0.08007554857513652
#>     Attrib V53    0.113325639124372
#>     Attrib V54    0.22895751395787467
#>     Attrib V55    0.0067966710112461965
#>     Attrib V56    0.21396865855193856
#>     Attrib V57    -0.07187235964134235
#>     Attrib V58    0.433847947098309
#>     Attrib V59    0.5608757117647568
#>     Attrib V6    0.055757724430035696
#>     Attrib V60    0.35187928702575794
#>     Attrib V7    0.012567257596729567
#>     Attrib V8    -0.2159962423254599
#>     Attrib V9    0.08999466586650476
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.5282399451039467
#>     Attrib V1    0.45851736657254305
#>     Attrib V10    -0.07653877574195021
#>     Attrib V11    0.2644800614918765
#>     Attrib V12    0.09742258808306173
#>     Attrib V13    -0.29715431200994147
#>     Attrib V14    -0.2839901741449005
#>     Attrib V15    -0.06107416165602798
#>     Attrib V16    0.00979503853185326
#>     Attrib V17    0.010316402895930544
#>     Attrib V18    -0.020216444575940934
#>     Attrib V19    -0.014851062229670968
#>     Attrib V2    0.04868857578117375
#>     Attrib V20    -0.0898696958461061
#>     Attrib V21    0.03653734105051775
#>     Attrib V22    -0.15698198520514162
#>     Attrib V23    -0.16249599230664288
#>     Attrib V24    0.037784074184583176
#>     Attrib V25    -0.22133046272739873
#>     Attrib V26    0.03127629471223522
#>     Attrib V27    0.19302392208392039
#>     Attrib V28    0.17311011592089723
#>     Attrib V29    0.14849725285547746
#>     Attrib V3    -0.19447405868703377
#>     Attrib V30    0.23535182527625956
#>     Attrib V31    -0.5438059579743268
#>     Attrib V32    -0.017462031612036712
#>     Attrib V33    -0.13507185520762927
#>     Attrib V34    -0.05340214073240839
#>     Attrib V35    0.4161075239849482
#>     Attrib V36    -0.1466960614186517
#>     Attrib V37    -0.15970695050380398
#>     Attrib V38    -0.044227490180407794
#>     Attrib V39    0.25145841919906403
#>     Attrib V4    0.11129394289381674
#>     Attrib V40    0.01931066744973027
#>     Attrib V41    -0.09750115018474922
#>     Attrib V42    -0.21630352102923853
#>     Attrib V43    -0.10699733792062154
#>     Attrib V44    0.5102866927412844
#>     Attrib V45    0.25183929581925296
#>     Attrib V46    0.16915461133702778
#>     Attrib V47    -0.10992671022780635
#>     Attrib V48    0.48359454456110196
#>     Attrib V49    0.5172151930627008
#>     Attrib V5    -0.07084118917675399
#>     Attrib V50    -0.5285401558905252
#>     Attrib V51    0.17346388392890222
#>     Attrib V52    0.19274319045261606
#>     Attrib V53    0.14962237022101937
#>     Attrib V54    0.26019566644325537
#>     Attrib V55    -0.04897058816024006
#>     Attrib V56    0.07176367281934347
#>     Attrib V57    -0.20673956923005904
#>     Attrib V58    0.548013586787796
#>     Attrib V59    0.6657035012872515
#>     Attrib V6    -0.0016083658822992008
#>     Attrib V60    0.3016497791596293
#>     Attrib V7    -0.2548905565915595
#>     Attrib V8    -0.31034780043102705
#>     Attrib V9    0.30766154439357013
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.20155493391376736
#>     Attrib V1    -0.3611193312895607
#>     Attrib V10    0.07038522571084449
#>     Attrib V11    -0.4117494507845289
#>     Attrib V12    0.03385176387996011
#>     Attrib V13    0.6271029973756488
#>     Attrib V14    0.7400405746379244
#>     Attrib V15    0.12048842777771195
#>     Attrib V16    -0.4474283441426392
#>     Attrib V17    -0.3788467329860314
#>     Attrib V18    0.012427450084490867
#>     Attrib V19    -0.3519984325250732
#>     Attrib V2    0.1079361807204038
#>     Attrib V20    -0.01714504326585501
#>     Attrib V21    -0.08479107001928052
#>     Attrib V22    -0.20756774655747623
#>     Attrib V23    -0.6194320791579737
#>     Attrib V24    -0.5941551692431816
#>     Attrib V25    0.3236195894157719
#>     Attrib V26    0.868551696795614
#>     Attrib V27    0.7752503869354387
#>     Attrib V28    0.3522588520897237
#>     Attrib V29    0.4654924345348656
#>     Attrib V3    0.22243957457884814
#>     Attrib V30    0.038146996371006506
#>     Attrib V31    1.671120760541943
#>     Attrib V32    -1.0611567781983127
#>     Attrib V33    -0.5207782200890752
#>     Attrib V34    0.1301637918343184
#>     Attrib V35    -0.3274276710074057
#>     Attrib V36    0.9878291525253486
#>     Attrib V37    1.2315400964573477
#>     Attrib V38    0.5887436056853246
#>     Attrib V39    -0.006802593129694802
#>     Attrib V4    0.0706491211646458
#>     Attrib V40    0.24504454535498735
#>     Attrib V41    0.00619829509467143
#>     Attrib V42    -0.5930484589866889
#>     Attrib V43    -0.09412028374309168
#>     Attrib V44    -0.6092271895088752
#>     Attrib V45    -0.4011008226366907
#>     Attrib V46    -0.2512248743108547
#>     Attrib V47    0.16303725715294942
#>     Attrib V48    -0.5810222912437537
#>     Attrib V49    -0.903337915324815
#>     Attrib V5    0.6904622145436837
#>     Attrib V50    1.3805060843148764
#>     Attrib V51    -0.4189539515350147
#>     Attrib V52    -0.6215388663741283
#>     Attrib V53    0.2860189133565467
#>     Attrib V54    0.11138619128867336
#>     Attrib V55    0.28435517553101536
#>     Attrib V56    -0.7059212148221922
#>     Attrib V57    0.8002869140710889
#>     Attrib V58    -1.4200191839393022
#>     Attrib V59    -0.8170565257629193
#>     Attrib V6    0.030119035473635217
#>     Attrib V60    -0.3705738430523961
#>     Attrib V7    -0.15618376543066445
#>     Attrib V8    0.15002714737646367
#>     Attrib V9    -0.7059174951375062
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.19138593177161772
#>     Attrib V1    0.10408480328429007
#>     Attrib V10    0.023013618326893977
#>     Attrib V11    0.010428154009479879
#>     Attrib V12    -0.010951611570253228
#>     Attrib V13    0.0010538023497402309
#>     Attrib V14    0.004988711454572524
#>     Attrib V15    0.021867334869699592
#>     Attrib V16    0.09240402134587587
#>     Attrib V17    0.11176822868991924
#>     Attrib V18    0.07719544147155546
#>     Attrib V19    0.025883311378805146
#>     Attrib V2    0.0337278435431687
#>     Attrib V20    -0.060371517949731196
#>     Attrib V21    -0.06704407038921922
#>     Attrib V22    -0.05889008246273452
#>     Attrib V23    -0.07180570938156317
#>     Attrib V24    0.008576795804120171
#>     Attrib V25    0.0053515941173316785
#>     Attrib V26    -0.051004571758647664
#>     Attrib V27    -0.05372240312226054
#>     Attrib V28    -0.02651854914822231
#>     Attrib V29    -0.039621863447585545
#>     Attrib V3    0.07296217858957812
#>     Attrib V30    -0.03736889816531274
#>     Attrib V31    -0.06039377461082279
#>     Attrib V32    0.05627284075066942
#>     Attrib V33    0.022346371207862595
#>     Attrib V34    0.06604737068995657
#>     Attrib V35    0.09436602314637674
#>     Attrib V36    0.0659347943799547
#>     Attrib V37    0.08189969136614973
#>     Attrib V38    0.039542220207560354
#>     Attrib V39    0.07039077129621052
#>     Attrib V4    0.058954736834135345
#>     Attrib V40    0.01874380318408638
#>     Attrib V41    0.032803206663985916
#>     Attrib V42    0.06743674175892009
#>     Attrib V43    0.035974978864886015
#>     Attrib V44    0.03140413379732324
#>     Attrib V45    0.07982812847556293
#>     Attrib V46    0.08840150218417082
#>     Attrib V47    0.06156075974171962
#>     Attrib V48    0.05165867385338996
#>     Attrib V49    0.027379575341460682
#>     Attrib V5    0.07361066003831403
#>     Attrib V50    0.09107776642528498
#>     Attrib V51    0.13410348332515779
#>     Attrib V52    0.10314793346308777
#>     Attrib V53    0.12937931706299816
#>     Attrib V54    0.05810296052176451
#>     Attrib V55    0.08789238540919557
#>     Attrib V56    0.10698406197578357
#>     Attrib V57    0.1120827957815556
#>     Attrib V58    0.16507511445285458
#>     Attrib V59    0.08920000442761783
#>     Attrib V6    0.08100401849991849
#>     Attrib V60    0.1541555995055365
#>     Attrib V7    0.02470148259482401
#>     Attrib V8    -0.03755429450404276
#>     Attrib V9    0.08298746845739448
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.012593779100409855
#>     Attrib V1    0.3029780459471202
#>     Attrib V10    -0.04800948357720321
#>     Attrib V11    0.05024918138227472
#>     Attrib V12    -0.07120032608855646
#>     Attrib V13    -0.19333705711493732
#>     Attrib V14    -0.06278495106101875
#>     Attrib V15    0.10729377142210958
#>     Attrib V16    0.09614338236791747
#>     Attrib V17    0.09135277754464728
#>     Attrib V18    0.005180654151577265
#>     Attrib V19    0.04535734309301408
#>     Attrib V2    0.15106213368783042
#>     Attrib V20    -0.036589377074435714
#>     Attrib V21    -0.009603267808016633
#>     Attrib V22    -0.013848040729484761
#>     Attrib V23    -0.10541271031936629
#>     Attrib V24    0.05789812511387853
#>     Attrib V25    -0.0870663697394731
#>     Attrib V26    -0.1028754862998293
#>     Attrib V27    -0.06941128015871016
#>     Attrib V28    -0.09588494634198665
#>     Attrib V29    -0.09424629167929559
#>     Attrib V3    -0.008747626394190243
#>     Attrib V30    0.01271982196432222
#>     Attrib V31    -0.269708396977942
#>     Attrib V32    -0.011113934993358771
#>     Attrib V33    0.04173719068241946
#>     Attrib V34    -0.005618339940778092
#>     Attrib V35    0.24327543174055066
#>     Attrib V36    -0.022561189556348303
#>     Attrib V37    -0.09698065193111526
#>     Attrib V38    0.01775962634577719
#>     Attrib V39    0.11307123518399537
#>     Attrib V4    0.05913426974993139
#>     Attrib V40    -0.065848135807251
#>     Attrib V41    -0.051136973204281205
#>     Attrib V42    -0.019383714362094035
#>     Attrib V43    0.07634241271840268
#>     Attrib V44    0.23618474485285676
#>     Attrib V45    0.22521851436805473
#>     Attrib V46    0.08608492030731367
#>     Attrib V47    -0.05925871461178013
#>     Attrib V48    0.2165858957892361
#>     Attrib V49    0.15347013595210993
#>     Attrib V5    0.009667236794474685
#>     Attrib V50    -0.13059954141100177
#>     Attrib V51    0.11958512209178411
#>     Attrib V52    0.0914350120392301
#>     Attrib V53    0.10298734258354225
#>     Attrib V54    0.17822813957510572
#>     Attrib V55    0.09759427333379912
#>     Attrib V56    0.1660618307410755
#>     Attrib V57    0.04893430399861691
#>     Attrib V58    0.2761944143013204
#>     Attrib V59    0.3446259209349063
#>     Attrib V6    0.039506174384949695
#>     Attrib V60    0.2627067710911503
#>     Attrib V7    -0.08883262557151597
#>     Attrib V8    -0.10255208605794874
#>     Attrib V9    0.08688134936382479
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.11727375013645192
#>     Attrib V1    0.24256185949136655
#>     Attrib V10    -0.05474719863997397
#>     Attrib V11    0.02710318947593867
#>     Attrib V12    -0.04154884528716455
#>     Attrib V13    -0.13992231407591263
#>     Attrib V14    -0.04596937668845778
#>     Attrib V15    0.013080397492263427
#>     Attrib V16    0.08252909818339754
#>     Attrib V17    0.05822929948775978
#>     Attrib V18    0.06686359151942034
#>     Attrib V19    -0.014579563932298914
#>     Attrib V2    0.08685103533740185
#>     Attrib V20    -0.0025623862236801476
#>     Attrib V21    0.02982815490896412
#>     Attrib V22    -0.05006848954324808
#>     Attrib V23    -0.049296147405685636
#>     Attrib V24    0.04243800565227002
#>     Attrib V25    0.01485681989477244
#>     Attrib V26    -0.012617575949530663
#>     Attrib V27    -0.049602667033109664
#>     Attrib V28    -0.10603826811012876
#>     Attrib V29    -0.10749771870530235
#>     Attrib V3    0.060584048964561654
#>     Attrib V30    -0.06023131359694867
#>     Attrib V31    -0.26964674387632104
#>     Attrib V32    0.04368679758051987
#>     Attrib V33    0.032565210241780315
#>     Attrib V34    0.08364230011991292
#>     Attrib V35    0.1988118198627233
#>     Attrib V36    0.08987663093861549
#>     Attrib V37    -0.055254311513907785
#>     Attrib V38    -0.03830272080772242
#>     Attrib V39    0.11806528919271193
#>     Attrib V4    0.0043809220023267245
#>     Attrib V40    -0.01316888083244728
#>     Attrib V41    -0.0752865109117257
#>     Attrib V42    6.555144635327903E-4
#>     Attrib V43    0.02276159669764155
#>     Attrib V44    0.1976565797601337
#>     Attrib V45    0.10254111844745581
#>     Attrib V46    0.07687468510663142
#>     Attrib V47    0.03265727923601158
#>     Attrib V48    0.1485282505698785
#>     Attrib V49    0.17503553365538685
#>     Attrib V5    0.0049560966062156585
#>     Attrib V50    -0.15860754747592995
#>     Attrib V51    0.15473281790471594
#>     Attrib V52    0.07938469086969563
#>     Attrib V53    0.10712335337972997
#>     Attrib V54    0.13312585627848683
#>     Attrib V55    0.07967156822321994
#>     Attrib V56    0.17162023770450668
#>     Attrib V57    -0.018446116998934954
#>     Attrib V58    0.2733169529634149
#>     Attrib V59    0.3496561019755
#>     Attrib V6    0.005218153394274609
#>     Attrib V60    0.2790864204800039
#>     Attrib V7    0.0039767565681566
#>     Attrib V8    -0.07986889224719472
#>     Attrib V9    0.08991040570624463
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.8868901453372039
#>     Attrib V1    0.23352489643649232
#>     Attrib V10    0.30940228405777037
#>     Attrib V11    0.6106652936553755
#>     Attrib V12    0.659519340213721
#>     Attrib V13    0.3614145364078757
#>     Attrib V14    -0.21037435271943095
#>     Attrib V15    -0.16727664165267117
#>     Attrib V16    -0.4732587233768379
#>     Attrib V17    -0.5251345068543631
#>     Attrib V18    -0.13801522786442164
#>     Attrib V19    0.06152889764721922
#>     Attrib V2    0.0909491805980383
#>     Attrib V20    -0.18953567272108218
#>     Attrib V21    0.027785381360958927
#>     Attrib V22    0.1208601635818077
#>     Attrib V23    0.496666766022721
#>     Attrib V24    0.5399600791580154
#>     Attrib V25    -0.10626647914060021
#>     Attrib V26    0.653236246119933
#>     Attrib V27    1.1391029729732347
#>     Attrib V28    1.199555415332521
#>     Attrib V29    1.24793738519718
#>     Attrib V3    -0.04235102361787725
#>     Attrib V30    0.6287973068738751
#>     Attrib V31    -0.36612278813156257
#>     Attrib V32    0.035697556834043034
#>     Attrib V33    -0.48870187443832636
#>     Attrib V34    -0.277446445639075
#>     Attrib V35    0.4962899419311546
#>     Attrib V36    -0.5523664957871877
#>     Attrib V37    -0.2390664555111565
#>     Attrib V38    -0.27228061524521724
#>     Attrib V39    0.24408480283058087
#>     Attrib V4    0.3648282107741661
#>     Attrib V40    0.4924758501672957
#>     Attrib V41    0.8505658554159483
#>     Attrib V42    0.04994779567681884
#>     Attrib V43    -0.21516287665094294
#>     Attrib V44    0.1360414379319951
#>     Attrib V45    0.0773534759104308
#>     Attrib V46    0.39726531441745966
#>     Attrib V47    0.22448471227700426
#>     Attrib V48    0.4598543480303004
#>     Attrib V49    0.7707560491823806
#>     Attrib V5    0.5904687986679825
#>     Attrib V50    -0.5334119541080501
#>     Attrib V51    0.8583106013864005
#>     Attrib V52    0.6986873215014131
#>     Attrib V53    0.6807719756270428
#>     Attrib V54    0.06419769489441797
#>     Attrib V55    -0.3154205942812534
#>     Attrib V56    -0.1889067926949676
#>     Attrib V57    -0.7784886426077954
#>     Attrib V58    0.8117932003812575
#>     Attrib V59    0.5771762684008408
#>     Attrib V6    0.35516751258440016
#>     Attrib V60    0.2027773873661307
#>     Attrib V7    -0.49545110767517003
#>     Attrib V8    -0.32006786315750624
#>     Attrib V9    0.8267327926398976
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.8033183711470733
#>     Attrib V1    0.35974770706786335
#>     Attrib V10    0.3893791589040067
#>     Attrib V11    0.40444872270529003
#>     Attrib V12    0.20400085595890421
#>     Attrib V13    0.06144686709780923
#>     Attrib V14    -0.20789044927260436
#>     Attrib V15    -0.05390338842855023
#>     Attrib V16    -0.28003486198205896
#>     Attrib V17    -0.4325962361798364
#>     Attrib V18    -0.11470056486468896
#>     Attrib V19    0.06942043563696844
#>     Attrib V2    0.055184322054469305
#>     Attrib V20    -0.07058095999479017
#>     Attrib V21    0.2858571454463862
#>     Attrib V22    0.16600293638178631
#>     Attrib V23    0.40646926706128345
#>     Attrib V24    0.2769468892070312
#>     Attrib V25    -0.5639691738490231
#>     Attrib V26    0.39313624125824514
#>     Attrib V27    1.0566680354631608
#>     Attrib V28    1.240491565563707
#>     Attrib V29    1.519957311599176
#>     Attrib V3    -0.06452524372803431
#>     Attrib V30    0.8062852220587055
#>     Attrib V31    -0.5581680859885146
#>     Attrib V32    -0.11986858520622308
#>     Attrib V33    -0.616424827418924
#>     Attrib V34    -0.4909232745401882
#>     Attrib V35    0.33604263514714006
#>     Attrib V36    -0.5215365999072792
#>     Attrib V37    -0.1265060539412689
#>     Attrib V38    -0.15463193463838087
#>     Attrib V39    0.15415090366303452
#>     Attrib V4    0.2807954498788871
#>     Attrib V40    0.2639765177605588
#>     Attrib V41    0.6462801433713931
#>     Attrib V42    -0.10247067816782693
#>     Attrib V43    -0.09217403431279374
#>     Attrib V44    0.45740039921184406
#>     Attrib V45    0.18778350029430693
#>     Attrib V46    0.4746083832273454
#>     Attrib V47    0.22997583549962516
#>     Attrib V48    0.3924385477073745
#>     Attrib V49    0.6344998273747683
#>     Attrib V5    0.5160808579611634
#>     Attrib V50    -0.5290987031809663
#>     Attrib V51    0.8702674911497732
#>     Attrib V52    0.6582445674352925
#>     Attrib V53    0.5588191160873857
#>     Attrib V54    -0.09762970618697123
#>     Attrib V55    -0.41156525226172613
#>     Attrib V56    -0.16898044540818838
#>     Attrib V57    -0.7455545303830786
#>     Attrib V58    0.8069832666933375
#>     Attrib V59    0.5348152485264449
#>     Attrib V6    0.2982566029622903
#>     Attrib V60    0.2278130039007323
#>     Attrib V7    -0.41755076952645254
#>     Attrib V8    -0.3444191899327915
#>     Attrib V9    0.8888487206393084
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.03678926517169011
#>     Attrib V1    -0.36717600541120504
#>     Attrib V10    0.03821875801411263
#>     Attrib V11    -0.5497417840523651
#>     Attrib V12    0.0056562928896250735
#>     Attrib V13    0.6530900313263794
#>     Attrib V14    0.8184199930380598
#>     Attrib V15    0.01224112627166543
#>     Attrib V16    -0.6205430106894829
#>     Attrib V17    -0.5343921022357916
#>     Attrib V18    0.024451294751363355
#>     Attrib V19    -0.4931977849707641
#>     Attrib V2    -0.020264917507430324
#>     Attrib V20    -0.14105123702002664
#>     Attrib V21    -0.07797242631718962
#>     Attrib V22    -0.41450520183163675
#>     Attrib V23    -0.9324548390793949
#>     Attrib V24    -0.7633108811831526
#>     Attrib V25    0.37116885848831566
#>     Attrib V26    1.0937779146863533
#>     Attrib V27    1.0338346665416804
#>     Attrib V28    0.36854673865279125
#>     Attrib V29    0.519361215752321
#>     Attrib V3    0.14870441440670018
#>     Attrib V30    0.06163218251080525
#>     Attrib V31    1.9168243042304938
#>     Attrib V32    -1.3090051330790522
#>     Attrib V33    -0.5868922931625274
#>     Attrib V34    0.09437478545802266
#>     Attrib V35    -0.4143434474211271
#>     Attrib V36    1.1229077203104953
#>     Attrib V37    1.3548596793065824
#>     Attrib V38    0.6354001760087948
#>     Attrib V39    -0.011028928496211593
#>     Attrib V4    0.24069505445617675
#>     Attrib V40    0.4325822177440312
#>     Attrib V41    0.20519544515538995
#>     Attrib V42    -0.7259029781736663
#>     Attrib V43    -0.13125292034186842
#>     Attrib V44    -0.7443270166972175
#>     Attrib V45    -0.6360126493452568
#>     Attrib V46    -0.4091529204266196
#>     Attrib V47    0.08812181039731008
#>     Attrib V48    -0.6443723288846591
#>     Attrib V49    -1.0934317484852123
#>     Attrib V5    0.94567298115142
#>     Attrib V50    1.5289426694149735
#>     Attrib V51    -0.5288483057253256
#>     Attrib V52    -0.7441115817059506
#>     Attrib V53    0.3825225984733959
#>     Attrib V54    0.11476029663989615
#>     Attrib V55    0.17935494410792313
#>     Attrib V56    -0.983785800406405
#>     Attrib V57    1.1174719871107848
#>     Attrib V58    -1.6774829623125427
#>     Attrib V59    -0.6740781785770855
#>     Attrib V6    0.11225139525220657
#>     Attrib V60    -0.0915656755535793
#>     Attrib V7    0.001342809638049694
#>     Attrib V8    0.09855389664229304
#>     Attrib V9    -0.8093485130181954
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.14203523332267987
#>     Attrib V1    0.5771286427847584
#>     Attrib V10    -0.30238801281295363
#>     Attrib V11    0.019707118988299646
#>     Attrib V12    -0.07737143382086041
#>     Attrib V13    -0.5561900406331188
#>     Attrib V14    -0.36483948458146015
#>     Attrib V15    0.055319157075136405
#>     Attrib V16    0.4517051967152119
#>     Attrib V17    0.40552875601619914
#>     Attrib V18    0.06360152803064839
#>     Attrib V19    0.08014702298418294
#>     Attrib V2    0.10294399517115112
#>     Attrib V20    0.03765617255535195
#>     Attrib V21    0.10012994633017142
#>     Attrib V22    0.027745447430944592
#>     Attrib V23    -0.03072473598763976
#>     Attrib V24    0.2892295474224049
#>     Attrib V25    -0.1468610811133346
#>     Attrib V26    -0.5764824567954983
#>     Attrib V27    -0.7314125131574002
#>     Attrib V28    -0.7475813088450988
#>     Attrib V29    -0.7058903284584495
#>     Attrib V3    -0.12084823178171661
#>     Attrib V30    -0.26540439503544755
#>     Attrib V31    -0.9347054518161196
#>     Attrib V32    0.3409121021557137
#>     Attrib V33    0.1936315181333806
#>     Attrib V34    0.06170607590406854
#>     Attrib V35    0.39014415540753666
#>     Attrib V36    -0.2103539720750441
#>     Attrib V37    -0.38532156122268496
#>     Attrib V38    -0.19506569015924194
#>     Attrib V39    0.05180949994811851
#>     Attrib V4    0.013600437840126791
#>     Attrib V40    -0.16820370591106856
#>     Attrib V41    -0.3335508938695082
#>     Attrib V42    0.026333443923861874
#>     Attrib V43    0.10022121453789504
#>     Attrib V44    0.459795596020515
#>     Attrib V45    0.3375155205440061
#>     Attrib V46    0.14397881087950365
#>     Attrib V47    -0.34992117781081183
#>     Attrib V48    0.30092375704733126
#>     Attrib V49    0.33730963481001336
#>     Attrib V5    -0.31263027087664436
#>     Attrib V50    -0.6965968248807207
#>     Attrib V51    0.017567369344971672
#>     Attrib V52    0.11537421334515305
#>     Attrib V53    -0.02821750192489333
#>     Attrib V54    0.4411212577112245
#>     Attrib V55    0.0034733097132168423
#>     Attrib V56    0.4721637873969156
#>     Attrib V57    -0.10570306458375853
#>     Attrib V58    0.7653676395190102
#>     Attrib V59    0.7720251665329069
#>     Attrib V6    0.01162106194220894
#>     Attrib V60    0.4949582063392185
#>     Attrib V7    0.12086830669977429
#>     Attrib V8    -0.3048597781318907
#>     Attrib V9    0.1628447786690421
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.09060495355179123
#>     Attrib V1    0.6752178544688489
#>     Attrib V10    -0.3341276988033864
#>     Attrib V11    0.225550350802826
#>     Attrib V12    0.13790476827323345
#>     Attrib V13    -0.6453731259643327
#>     Attrib V14    -0.6057222834661847
#>     Attrib V15    0.03666065746919674
#>     Attrib V16    0.5028647559196947
#>     Attrib V17    0.5797298554654362
#>     Attrib V18    0.0024451962291348306
#>     Attrib V19    0.15467720716911235
#>     Attrib V2    0.06472839192876341
#>     Attrib V20    -0.010373906097113274
#>     Attrib V21    0.018970848372284736
#>     Attrib V22    0.06526228093576411
#>     Attrib V23    0.05217551749412157
#>     Attrib V24    0.4443277024656543
#>     Attrib V25    0.13441912846416232
#>     Attrib V26    -0.5644299616435572
#>     Attrib V27    -1.118019225181387
#>     Attrib V28    -1.2026909418946021
#>     Attrib V29    -1.427517850737472
#>     Attrib V3    -0.12977390249977513
#>     Attrib V30    -0.48142042522164374
#>     Attrib V31    -1.1739719874592653
#>     Attrib V32    0.7463096655479682
#>     Attrib V33    0.5600425387867446
#>     Attrib V34    0.3141715077692904
#>     Attrib V35    0.678055337775331
#>     Attrib V36    -0.2707466615887562
#>     Attrib V37    -0.6283258507638086
#>     Attrib V38    -0.40736346284541236
#>     Attrib V39    0.07256016702217437
#>     Attrib V4    -0.09719014085440406
#>     Attrib V40    -0.22734847704741487
#>     Attrib V41    -0.35158000360629543
#>     Attrib V42    0.09632002030815846
#>     Attrib V43    -0.016080401792628464
#>     Attrib V44    0.2946326776453493
#>     Attrib V45    0.4065934376207462
#>     Attrib V46    0.09644906910145812
#>     Attrib V47    -0.3391107385245984
#>     Attrib V48    0.416405585891499
#>     Attrib V49    0.5218175593790374
#>     Attrib V5    -0.5552246932745631
#>     Attrib V50    -0.9453996166047632
#>     Attrib V51    0.07506361188898766
#>     Attrib V52    0.09942559388189595
#>     Attrib V53    -0.22504732765022423
#>     Attrib V54    0.5617606352306262
#>     Attrib V55    0.1129149737818917
#>     Attrib V56    0.7293607962849662
#>     Attrib V57    -0.20645654881266554
#>     Attrib V58    0.9514275161099279
#>     Attrib V59    0.9801561814623365
#>     Attrib V6    -0.03797746505283529
#>     Attrib V60    0.6151882499697516
#>     Attrib V7    0.20271204575251744
#>     Attrib V8    -0.23005492486338971
#>     Attrib V9    0.2698020451538117
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.30462812168560877
#>     Attrib V1    -0.3084738274255647
#>     Attrib V10    -0.09895927932591976
#>     Attrib V11    -0.4720711092368171
#>     Attrib V12    -0.2265730151272768
#>     Attrib V13    0.2641165564238324
#>     Attrib V14    0.6223318031994661
#>     Attrib V15    0.12961661395477064
#>     Attrib V16    -0.17464627625995482
#>     Attrib V17    0.0291616576609416
#>     Attrib V18    0.15108663352582571
#>     Attrib V19    -0.1654605879345258
#>     Attrib V2    0.04039277629553268
#>     Attrib V20    0.03982434667013043
#>     Attrib V21    -0.07349986426860836
#>     Attrib V22    -0.262149659668008
#>     Attrib V23    -0.48660412884810156
#>     Attrib V24    -0.583686069666614
#>     Attrib V25    0.18669992513748385
#>     Attrib V26    0.4083256242493792
#>     Attrib V27    0.3298682289181201
#>     Attrib V28    0.10306994410574684
#>     Attrib V29    0.06315911321564562
#>     Attrib V3    0.18780818383432343
#>     Attrib V30    -0.14075635850308552
#>     Attrib V31    1.0548281190190985
#>     Attrib V32    -0.7647329904220764
#>     Attrib V33    -0.22245544159483488
#>     Attrib V34    0.14387158997746782
#>     Attrib V35    -0.25973332006590527
#>     Attrib V36    0.8312828876388343
#>     Attrib V37    0.6586767731304026
#>     Attrib V38    0.3941223346880619
#>     Attrib V39    -0.07151126892583219
#>     Attrib V4    0.13812231528483435
#>     Attrib V40    0.12705317356406925
#>     Attrib V41    -0.08146158651773466
#>     Attrib V42    -0.2673547200343027
#>     Attrib V43    0.1187431436789175
#>     Attrib V44    -0.35785279252415103
#>     Attrib V45    -0.2661557840684344
#>     Attrib V46    -0.27435254760613914
#>     Attrib V47    0.06688779707765354
#>     Attrib V48    -0.45653250833770426
#>     Attrib V49    -0.7039169968963419
#>     Attrib V5    0.4543755879833233
#>     Attrib V50    1.1476689849700834
#>     Attrib V51    -0.48714527141258385
#>     Attrib V52    -0.5066086440414276
#>     Attrib V53    0.03673606410085553
#>     Attrib V54    0.09210181393318381
#>     Attrib V55    0.288333901554757
#>     Attrib V56    -0.3870375072689987
#>     Attrib V57    0.8116521356583815
#>     Attrib V58    -1.0656424661427448
#>     Attrib V59    -0.5886556155225682
#>     Attrib V6    0.08386001622719415
#>     Attrib V60    -0.24440759756450406
#>     Attrib V7    0.08184168931029909
#>     Attrib V8    0.24303294535419062
#>     Attrib V9    -0.625396883078271
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    1.0563658487104324
#>     Attrib V1    0.4696609907795324
#>     Attrib V10    0.8279903340255156
#>     Attrib V11    1.4117348945722947
#>     Attrib V12    1.2635077334183564
#>     Attrib V13    0.8764199984820479
#>     Attrib V14    -0.36713658393755083
#>     Attrib V15    -0.47994451077004235
#>     Attrib V16    -1.027397042006314
#>     Attrib V17    -0.8638523855493394
#>     Attrib V18    -0.01825349987486939
#>     Attrib V19    -0.042996871244775935
#>     Attrib V2    0.656735109938076
#>     Attrib V20    -0.25144188287521796
#>     Attrib V21    -0.08880584766801623
#>     Attrib V22    0.34108071317258476
#>     Attrib V23    1.252133027043534
#>     Attrib V24    0.9076475917863315
#>     Attrib V25    0.0332127102888429
#>     Attrib V26    1.7871269556047886
#>     Attrib V27    2.299964245405874
#>     Attrib V28    1.9784496896021664
#>     Attrib V29    2.1717639930307655
#>     Attrib V3    0.2720346549736259
#>     Attrib V30    0.9053589432986323
#>     Attrib V31    -0.5613418539724102
#>     Attrib V32    -0.22712487201495749
#>     Attrib V33    -1.0758334419282023
#>     Attrib V34    -0.5380097968145666
#>     Attrib V35    0.35292764354304224
#>     Attrib V36    -1.0321654200433006
#>     Attrib V37    -0.14982771949287774
#>     Attrib V38    -0.38730068891382646
#>     Attrib V39    0.7092867880324006
#>     Attrib V4    0.4052253496125834
#>     Attrib V40    1.2632177003402623
#>     Attrib V41    1.759324620053425
#>     Attrib V42    -0.02583783769530835
#>     Attrib V43    -0.4100905686043828
#>     Attrib V44    0.13500679834139442
#>     Attrib V45    0.24854102410746926
#>     Attrib V46    0.7965947648463283
#>     Attrib V47    0.5828118898157629
#>     Attrib V48    0.5820931980750839
#>     Attrib V49    1.2275650083707532
#>     Attrib V5    1.3432273093134797
#>     Attrib V50    -0.2634912095151533
#>     Attrib V51    1.7571616969859147
#>     Attrib V52    1.403060211457485
#>     Attrib V53    1.2929910790980919
#>     Attrib V54    0.002388003539854298
#>     Attrib V55    -0.7113062001013071
#>     Attrib V56    -0.3387654196387845
#>     Attrib V57    -1.3434241875556552
#>     Attrib V58    0.7782553176238565
#>     Attrib V59    0.26479332950034723
#>     Attrib V6    0.7249911477216173
#>     Attrib V60    -0.08182196333709015
#>     Attrib V7    -0.7904402833558851
#>     Attrib V8    -0.45043288537925746
#>     Attrib V9    1.3797257149949171
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.2247042106455073
#>     Attrib V1    0.08882729605653113
#>     Attrib V10    0.01993520451290337
#>     Attrib V11    -0.009480490809915863
#>     Attrib V12    0.02507964780792645
#>     Attrib V13    -0.017114686492070756
#>     Attrib V14    0.09761921527924394
#>     Attrib V15    0.03415431879153416
#>     Attrib V16    0.04758630828646293
#>     Attrib V17    0.11573531005935198
#>     Attrib V18    0.021099875102520028
#>     Attrib V19    0.06102921228140359
#>     Attrib V2    0.09607495767997892
#>     Attrib V20    -0.014845004444015491
#>     Attrib V21    -0.01532633677430382
#>     Attrib V22    -0.032537831379839594
#>     Attrib V23    -0.03351895887552734
#>     Attrib V24    -0.05597323513413568
#>     Attrib V25    -0.019518581835471373
#>     Attrib V26    -0.05278232532648661
#>     Attrib V27    -0.008623559864730183
#>     Attrib V28    4.710228623725096E-4
#>     Attrib V29    -0.0068481279124806334
#>     Attrib V3    0.03522462905538478
#>     Attrib V30    -0.006038676014459443
#>     Attrib V31    -0.010829110393249127
#>     Attrib V32    0.006639158218995746
#>     Attrib V33    0.06279389014348485
#>     Attrib V34    0.019815690507419954
#>     Attrib V35    0.13413684315397387
#>     Attrib V36    0.14795763685301924
#>     Attrib V37    0.1432982861941182
#>     Attrib V38    0.0366183859773988
#>     Attrib V39    0.08035488122229388
#>     Attrib V4    0.08408072950665997
#>     Attrib V40    0.05122563470371047
#>     Attrib V41    0.020590790019499015
#>     Attrib V42    0.05093293151352442
#>     Attrib V43    0.06528832043933383
#>     Attrib V44    0.05384088642881983
#>     Attrib V45    0.0472336531466277
#>     Attrib V46    0.032455377554508134
#>     Attrib V47    0.04127365329360534
#>     Attrib V48    0.07619021018999107
#>     Attrib V49    0.011719708297154373
#>     Attrib V5    0.04814368202828797
#>     Attrib V50    0.10194241517262012
#>     Attrib V51    0.05014011315842377
#>     Attrib V52    0.03605234883815461
#>     Attrib V53    0.061104177972586285
#>     Attrib V54    0.053801448691642655
#>     Attrib V55    0.07858559287782886
#>     Attrib V56    0.10895007013094059
#>     Attrib V57    0.15237545246532078
#>     Attrib V58    0.09400009112350578
#>     Attrib V59    0.10254731001309504
#>     Attrib V6    0.11540442728195582
#>     Attrib V60    0.17608428315729233
#>     Attrib V7    0.02743354463504241
#>     Attrib V8    0.04702686982173976
#>     Attrib V9    0.03409148524810526
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.9627340420704326
#>     Attrib V1    0.7398022164529591
#>     Attrib V10    0.5224997668983055
#>     Attrib V11    0.7589594550443243
#>     Attrib V12    0.5749606845560935
#>     Attrib V13    0.18541898306719035
#>     Attrib V14    -0.37169096073205277
#>     Attrib V15    -0.23620687828389098
#>     Attrib V16    -0.5910658742472924
#>     Attrib V17    -0.82962981921682
#>     Attrib V18    -0.5077703401674628
#>     Attrib V19    -0.40511520804378515
#>     Attrib V2    0.33677432869698526
#>     Attrib V20    -0.30277489580352407
#>     Attrib V21    0.15694278996003086
#>     Attrib V22    -0.10488110425498777
#>     Attrib V23    -0.1315777534291411
#>     Attrib V24    0.18207186218826404
#>     Attrib V25    -0.3835634981590305
#>     Attrib V26    0.6734929795194097
#>     Attrib V27    1.0218429670922518
#>     Attrib V28    0.9246928288347294
#>     Attrib V29    1.1575591606252191
#>     Attrib V3    -0.03395135891880608
#>     Attrib V30    0.745265074544895
#>     Attrib V31    -0.3276648057932266
#>     Attrib V32    -0.18482850034486506
#>     Attrib V33    -0.6263208676156716
#>     Attrib V34    -0.2249200352156968
#>     Attrib V35    0.491423883917483
#>     Attrib V36    -0.37599204125221625
#>     Attrib V37    0.021477487038586842
#>     Attrib V38    -0.06338514631040408
#>     Attrib V39    0.377433748979945
#>     Attrib V4    0.2362461909842417
#>     Attrib V40    0.3249097758785918
#>     Attrib V41    0.5095222470795069
#>     Attrib V42    -0.474321877010656
#>     Attrib V43    -0.5022871416835019
#>     Attrib V44    0.07838723877907722
#>     Attrib V45    0.1695488117231876
#>     Attrib V46    0.4355018770193601
#>     Attrib V47    0.23851655329693536
#>     Attrib V48    0.5506579391907177
#>     Attrib V49    0.5519949259075234
#>     Attrib V5    0.44797635966812926
#>     Attrib V50    -0.40307051889688494
#>     Attrib V51    0.8374223629712012
#>     Attrib V52    0.47690001596520976
#>     Attrib V53    0.5006297468222365
#>     Attrib V54    0.18754689334541558
#>     Attrib V55    -0.13341999470675572
#>     Attrib V56    -0.2865145088499416
#>     Attrib V57    -0.46890315248837006
#>     Attrib V58    0.666060151892263
#>     Attrib V59    0.6688455473962047
#>     Attrib V6    0.31522475948635376
#>     Attrib V60    0.3180433911019395
#>     Attrib V7    -0.42838470214600616
#>     Attrib V8    -0.3750564283094137
#>     Attrib V9    0.911139721054028
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.5638050706339357
#>     Attrib V1    0.0745428898578829
#>     Attrib V10    -0.48277083733401027
#>     Attrib V11    -1.3695585079273744
#>     Attrib V12    -1.0754539543151143
#>     Attrib V13    -0.36118961662908244
#>     Attrib V14    0.7441132066565406
#>     Attrib V15    0.1993106880408372
#>     Attrib V16    -0.19959724737368306
#>     Attrib V17    -0.3164275528271248
#>     Attrib V18    0.06514208154588212
#>     Attrib V19    -0.26756302136375043
#>     Attrib V2    0.23511482584542845
#>     Attrib V20    -0.0425750383087499
#>     Attrib V21    -0.17859511729962912
#>     Attrib V22    -0.4959899682625403
#>     Attrib V23    -0.907723719301944
#>     Attrib V24    -0.6523714667857285
#>     Attrib V25    0.16877421723792999
#>     Attrib V26    -0.0774621352015255
#>     Attrib V27    0.21156116282476464
#>     Attrib V28    0.062187679806613744
#>     Attrib V29    0.14935456808951472
#>     Attrib V3    0.14135574315195223
#>     Attrib V30    -0.3392131884423468
#>     Attrib V31    1.0462633071866487
#>     Attrib V32    -0.8901009869680264
#>     Attrib V33    -0.437644562136493
#>     Attrib V34    0.12847480861532043
#>     Attrib V35    0.2315263657850816
#>     Attrib V36    1.5963904041218078
#>     Attrib V37    1.4040270126955086
#>     Attrib V38    1.0076124707260388
#>     Attrib V39    0.08403126456825252
#>     Attrib V4    -0.245785019108489
#>     Attrib V40    -0.019016921238301607
#>     Attrib V41    -0.43697872227076473
#>     Attrib V42    -0.3137029475282315
#>     Attrib V43    0.1603548286227777
#>     Attrib V44    0.0366949608473333
#>     Attrib V45    0.33746847096371335
#>     Attrib V46    -0.08320518302938149
#>     Attrib V47    0.1495294257250964
#>     Attrib V48    -0.1274210443941963
#>     Attrib V49    -0.6313618138448116
#>     Attrib V5    -0.4416053584263458
#>     Attrib V50    1.860553187331402
#>     Attrib V51    -0.8015432086924852
#>     Attrib V52    -0.566375979067895
#>     Attrib V53    0.3290029256581432
#>     Attrib V54    -0.01362933686053583
#>     Attrib V55    0.07079836568651801
#>     Attrib V56    -0.12188607852111519
#>     Attrib V57    0.7882705679559164
#>     Attrib V58    -1.3876309541221465
#>     Attrib V59    -0.6091589768393637
#>     Attrib V6    -0.24427166138597725
#>     Attrib V60    0.303301199678206
#>     Attrib V7    0.07809606739268758
#>     Attrib V8    -0.010561964332220281
#>     Attrib V9    -1.030087227351683
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.05406365155560967
#>     Attrib V1    0.282628695399279
#>     Attrib V10    -0.14211303601111425
#>     Attrib V11    0.10877610249564942
#>     Attrib V12    0.04551279629220034
#>     Attrib V13    -0.16143524504099954
#>     Attrib V14    -0.03877798069645091
#>     Attrib V15    0.03441652467505138
#>     Attrib V16    0.07528872308568446
#>     Attrib V17    0.08843013941766574
#>     Attrib V18    0.012924035626942897
#>     Attrib V19    0.00196940357730136
#>     Attrib V2    0.061776172657152115
#>     Attrib V20    0.03328234997739271
#>     Attrib V21    0.059963444736780204
#>     Attrib V22    -0.007752866650134506
#>     Attrib V23    -0.08307363113238829
#>     Attrib V24    0.15292692921716972
#>     Attrib V25    0.048156547393537974
#>     Attrib V26    -0.09122725201255685
#>     Attrib V27    -0.11020276537926058
#>     Attrib V28    -0.15254699720580292
#>     Attrib V29    -0.10477253622129307
#>     Attrib V3    0.0036459065097721173
#>     Attrib V30    -0.09644850376797666
#>     Attrib V31    -0.3886238166562975
#>     Attrib V32    0.08887099085882949
#>     Attrib V33    0.05093755818046114
#>     Attrib V34    0.07090485680843393
#>     Attrib V35    0.2838433743984262
#>     Attrib V36    -0.05520164897689858
#>     Attrib V37    -0.12956620528110988
#>     Attrib V38    -0.08913084333426644
#>     Attrib V39    0.09155719993224966
#>     Attrib V4    0.017757060006673642
#>     Attrib V40    -0.034196655635346636
#>     Attrib V41    -0.060275081012332844
#>     Attrib V42    -0.028481110359764458
#>     Attrib V43    0.051404890195149607
#>     Attrib V44    0.16243346299000463
#>     Attrib V45    0.22400600737925844
#>     Attrib V46    0.10343868419980684
#>     Attrib V47    -0.046976264372469864
#>     Attrib V48    0.1839987721790422
#>     Attrib V49    0.1967574208227035
#>     Attrib V5    -0.05333127559809288
#>     Attrib V50    -0.22045130601232824
#>     Attrib V51    0.12203755816784977
#>     Attrib V52    0.14895556017878026
#>     Attrib V53    0.11029338613389673
#>     Attrib V54    0.23006735737694106
#>     Attrib V55    0.09415308625845493
#>     Attrib V56    0.18060160649443774
#>     Attrib V57    -0.05061944722809563
#>     Attrib V58    0.3497339220057826
#>     Attrib V59    0.42770288817247304
#>     Attrib V6    0.04648303782228859
#>     Attrib V60    0.2739259066679756
#>     Attrib V7    -0.07282090342677765
#>     Attrib V8    -0.1529706351267215
#>     Attrib V9    0.09947482471128988
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.18646674964086102
#>     Attrib V1    0.04514192100619286
#>     Attrib V10    0.143503009979655
#>     Attrib V11    0.06495891214876177
#>     Attrib V12    0.07491138303589903
#>     Attrib V13    0.11007222163845436
#>     Attrib V14    0.09900990783199094
#>     Attrib V15    0.08904882918002864
#>     Attrib V16    0.11150765549067408
#>     Attrib V17    0.21377431937742056
#>     Attrib V18    0.13739651786433862
#>     Attrib V19    0.032191043760280154
#>     Attrib V2    0.09265695123332836
#>     Attrib V20    -0.007277778450804945
#>     Attrib V21    0.02968266039089653
#>     Attrib V22    0.016926172445567458
#>     Attrib V23    -0.02228745569393339
#>     Attrib V24    -0.1288427033183464
#>     Attrib V25    -0.024238117454881667
#>     Attrib V26    -0.009916415573146006
#>     Attrib V27    -0.039171407595062886
#>     Attrib V28    -0.015042584540202669
#>     Attrib V29    -0.09099523949457936
#>     Attrib V3    0.06724781675556733
#>     Attrib V30    0.015276140621772207
#>     Attrib V31    0.16603438327540238
#>     Attrib V32    -0.016487241959195334
#>     Attrib V33    0.0028494186972848738
#>     Attrib V34    0.011127899518885839
#>     Attrib V35    0.05115034928642559
#>     Attrib V36    0.11363958839773214
#>     Attrib V37    0.1609443523838943
#>     Attrib V38    0.03875154318458623
#>     Attrib V39    0.10782117192139837
#>     Attrib V4    0.10652891839153981
#>     Attrib V40    0.10441438551002898
#>     Attrib V41    0.06743486337245105
#>     Attrib V42    0.05637322239706348
#>     Attrib V43    0.01727343725803895
#>     Attrib V44    -0.05441017044100248
#>     Attrib V45    -0.004533990533503714
#>     Attrib V46    0.008535982637896579
#>     Attrib V47    0.04141321592259188
#>     Attrib V48    0.011979324918539227
#>     Attrib V49    -0.058344243889990564
#>     Attrib V5    0.10657806195760891
#>     Attrib V50    0.09526527670562647
#>     Attrib V51    0.014371454517299426
#>     Attrib V52    0.011025156764389022
#>     Attrib V53    0.02227684715156569
#>     Attrib V54    0.013388485671429789
#>     Attrib V55    0.05538962204099115
#>     Attrib V56    0.09280748881507941
#>     Attrib V57    0.14142186227263898
#>     Attrib V58    0.03234785552137092
#>     Attrib V59    0.04171227621780782
#>     Attrib V6    0.13627426398894404
#>     Attrib V60    0.09199559867230998
#>     Attrib V7    0.07028055917148174
#>     Attrib V8    0.093988975013926
#>     Attrib V9    0.051517436559685485
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.05506615387166553
#>     Attrib V1    0.5353750974106165
#>     Attrib V10    -0.26677774051233455
#>     Attrib V11    0.15455785592499216
#>     Attrib V12    -0.0026157605581034284
#>     Attrib V13    -0.5081832694512891
#>     Attrib V14    -0.4416141343765855
#>     Attrib V15    0.06161197180947616
#>     Attrib V16    0.434983741771995
#>     Attrib V17    0.47361344756285234
#>     Attrib V18    0.05825920679533938
#>     Attrib V19    0.11145776078506776
#>     Attrib V2    0.11654634099065027
#>     Attrib V20    0.04645016953304508
#>     Attrib V21    0.020696895516728105
#>     Attrib V22    0.07463860666823897
#>     Attrib V23    0.04410150772770492
#>     Attrib V24    0.38887108926539454
#>     Attrib V25    0.02469337618512396
#>     Attrib V26    -0.48072948682119937
#>     Attrib V27    -0.8728804846617515
#>     Attrib V28    -0.9508642603417014
#>     Attrib V29    -1.0863806597755619
#>     Attrib V3    -0.17272163526112655
#>     Attrib V30    -0.39111201746669755
#>     Attrib V31    -0.9575663524515939
#>     Attrib V32    0.5387075520194021
#>     Attrib V33    0.43480260542406596
#>     Attrib V34    0.24981866818372692
#>     Attrib V35    0.5582530261507643
#>     Attrib V36    -0.21143115456985706
#>     Attrib V37    -0.4662250211247373
#>     Attrib V38    -0.2329533930097173
#>     Attrib V39    0.029086412829151403
#>     Attrib V4    -0.07684691157499736
#>     Attrib V40    -0.18439176986970138
#>     Attrib V41    -0.32027470687455784
#>     Attrib V42    0.07179491731525549
#>     Attrib V43    0.041499313871106516
#>     Attrib V44    0.39141867764525656
#>     Attrib V45    0.33194625942166484
#>     Attrib V46    0.09792719254169753
#>     Attrib V47    -0.31296208986741775
#>     Attrib V48    0.36185457503566104
#>     Attrib V49    0.4054719994552541
#>     Attrib V5    -0.450014220140557
#>     Attrib V50    -0.7690706104498319
#>     Attrib V51    0.04488480014434752
#>     Attrib V52    0.0873907247741236
#>     Attrib V53    -0.09754508440218308
#>     Attrib V54    0.5171852641675907
#>     Attrib V55    0.08176580261566362
#>     Attrib V56    0.49516377662322314
#>     Attrib V57    -0.14474995534094692
#>     Attrib V58    0.7395755105657469
#>     Attrib V59    0.7767506549437204
#>     Attrib V6    -0.03991706556833924
#>     Attrib V60    0.5125325619908938
#>     Attrib V7    0.14238146939983917
#>     Attrib V8    -0.21736098121312017
#>     Attrib V9    0.24672274125018967
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.03282153146616698
#>     Attrib V1    0.4480195578620982
#>     Attrib V10    -0.3047438357606269
#>     Attrib V11    -0.07265046313474278
#>     Attrib V12    -0.29118930427317113
#>     Attrib V13    -0.6767223165320155
#>     Attrib V14    -0.3805538287139515
#>     Attrib V15    0.12256726751773563
#>     Attrib V16    0.5284139140973247
#>     Attrib V17    0.41708821221191195
#>     Attrib V18    0.12063619432513217
#>     Attrib V19    0.14286444680598476
#>     Attrib V2    -0.011019588241477878
#>     Attrib V20    0.09250494727751744
#>     Attrib V21    0.21113155820600527
#>     Attrib V22    0.14989379418982315
#>     Attrib V23    0.1727298115936763
#>     Attrib V24    0.2130596986832695
#>     Attrib V25    -0.35589180308515395
#>     Attrib V26    -0.7095099479554066
#>     Attrib V27    -0.6921683903688949
#>     Attrib V28    -0.4039099020965973
#>     Attrib V29    -0.4806183133284436
#>     Attrib V3    -0.09101212892859015
#>     Attrib V30    -0.111123788701047
#>     Attrib V31    -1.1430647345615856
#>     Attrib V32    0.41200228846319276
#>     Attrib V33    0.2635685082389469
#>     Attrib V34    -0.041180680623032255
#>     Attrib V35    0.33798128708322617
#>     Attrib V36    -0.26616643632398346
#>     Attrib V37    -0.4653759187876371
#>     Attrib V38    -0.23362703938706628
#>     Attrib V39    0.04709946034420205
#>     Attrib V4    -0.04125109308451631
#>     Attrib V40    -0.26987197558253134
#>     Attrib V41    -0.27683952970567954
#>     Attrib V42    0.18666419014233798
#>     Attrib V43    0.04046269610550096
#>     Attrib V44    0.5907524040135597
#>     Attrib V45    0.49388818734571155
#>     Attrib V46    0.22540124262994263
#>     Attrib V47    -0.23843261601849433
#>     Attrib V48    0.23743655775906786
#>     Attrib V49    0.43061937444679965
#>     Attrib V5    -0.39393405668631964
#>     Attrib V50    -0.7925214891842056
#>     Attrib V51    0.10224192380050728
#>     Attrib V52    0.18054115184547373
#>     Attrib V53    -0.1198432924696769
#>     Attrib V54    0.14679732984673935
#>     Attrib V55    -0.17110653307528195
#>     Attrib V56    0.4723846464713425
#>     Attrib V57    -0.22548007548229165
#>     Attrib V58    0.8572906383947877
#>     Attrib V59    0.6707070178590004
#>     Attrib V6    -0.0013708598892289076
#>     Attrib V60    0.46810597901506784
#>     Attrib V7    0.13072510655187136
#>     Attrib V8    -0.1476459765878813
#>     Attrib V9    0.30030024700360175
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
