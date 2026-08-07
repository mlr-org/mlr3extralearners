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
#>     Threshold    -0.044389914931812116
#>     Node 2    2.4814840602990333
#>     Node 3    1.7078419385025427
#>     Node 4    1.4497528990487007
#>     Node 5    -1.8199989565718244
#>     Node 6    1.4024199499394847
#>     Node 7    3.013319543236262
#>     Node 8    1.5987813033567262
#>     Node 9    2.9677542894979543
#>     Node 10    -2.478357068254642
#>     Node 11    1.5104964226568707
#>     Node 12    1.7281028591888583
#>     Node 13    0.8562758495430047
#>     Node 14    1.3337747723963744
#>     Node 15    -2.200363794103656
#>     Node 16    -0.22327253483962076
#>     Node 17    1.0722665415886519
#>     Node 18    0.03653879006223791
#>     Node 19    1.428762942963416
#>     Node 20    1.8598905170543705
#>     Node 21    -1.6608548412956756
#>     Node 22    0.6593953106997031
#>     Node 23    -0.1637778482061225
#>     Node 24    -1.0597572763340486
#>     Node 25    5.256911718161528
#>     Node 26    -0.7015030927589642
#>     Node 27    1.3594209168588505
#>     Node 28    -2.532955889657288
#>     Node 29    1.3493734600479403
#>     Node 30    -0.8345728399281879
#>     Node 31    0.2832083377058639
#>     Node 32    -0.02421036001407387
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.08849852100291018
#>     Node 2    -2.5253947726575188
#>     Node 3    -1.6843603845034743
#>     Node 4    -1.429168743852686
#>     Node 5    1.8187186767358665
#>     Node 6    -1.3656444879998222
#>     Node 7    -3.017254598053469
#>     Node 8    -1.6476883116110141
#>     Node 9    -2.9777367378650506
#>     Node 10    2.445520876284596
#>     Node 11    -1.4742310778581085
#>     Node 12    -1.7963590143434922
#>     Node 13    -0.7942488851694776
#>     Node 14    -1.2811520616266774
#>     Node 15    2.174298921844339
#>     Node 16    0.20554366606107496
#>     Node 17    -1.0317361934980294
#>     Node 18    0.005001229096173905
#>     Node 19    -1.421761866738713
#>     Node 20    -1.8321738761618005
#>     Node 21    1.7007912695016134
#>     Node 22    -0.7058792610041345
#>     Node 23    0.11823222849693617
#>     Node 24    1.0396698639580506
#>     Node 25    -5.276543321502268
#>     Node 26    0.6157808215888306
#>     Node 27    -1.402731377379255
#>     Node 28    2.5115604313154476
#>     Node 29    -1.3792678193866923
#>     Node 30    0.906256313430368
#>     Node 31    -0.2256598585465156
#>     Node 32    0.006635970512460911
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.025570443947755907
#>     Attrib V1    0.9264772114093737
#>     Attrib V10    -0.39269697900146944
#>     Attrib V11    -0.07880908314693646
#>     Attrib V12    -0.23736121692778606
#>     Attrib V13    -0.1610284723863679
#>     Attrib V14    -0.4361672162526428
#>     Attrib V15    0.4784343403564422
#>     Attrib V16    0.2414709468921477
#>     Attrib V17    0.5580046398690538
#>     Attrib V18    -0.03739080723322622
#>     Attrib V19    -0.2923436742266844
#>     Attrib V2    0.23592407933240583
#>     Attrib V20    0.7162892640810999
#>     Attrib V21    1.0516601212231806
#>     Attrib V22    0.4533306794412851
#>     Attrib V23    0.026153000964766002
#>     Attrib V24    0.12084127958829467
#>     Attrib V25    -0.5156596144812765
#>     Attrib V26    -0.8614329377113815
#>     Attrib V27    -1.0864878757034193
#>     Attrib V28    -0.3908449883458806
#>     Attrib V29    0.10069960630089175
#>     Attrib V3    0.3044591800325758
#>     Attrib V30    0.3379276429827424
#>     Attrib V31    -1.3531000055206164
#>     Attrib V32    0.44362924039427204
#>     Attrib V33    0.48920825214788205
#>     Attrib V34    -0.5525010661843006
#>     Attrib V35    -0.39940261689992645
#>     Attrib V36    -0.8120302509443305
#>     Attrib V37    -0.3694685205771764
#>     Attrib V38    0.28235810513486786
#>     Attrib V39    0.5344484767473408
#>     Attrib V4    0.320182944857315
#>     Attrib V40    -0.5314674936598887
#>     Attrib V41    -0.6078752576971583
#>     Attrib V42    0.7370613927957878
#>     Attrib V43    0.3383728568701807
#>     Attrib V44    0.8056532694282544
#>     Attrib V45    0.42722378751349666
#>     Attrib V46    0.33031915415644675
#>     Attrib V47    -0.09171088404290167
#>     Attrib V48    0.06919535259184106
#>     Attrib V49    0.18980231780360698
#>     Attrib V5    -0.2155829075989491
#>     Attrib V50    -1.0167401636812199
#>     Attrib V51    0.045572476874315246
#>     Attrib V52    0.07441221174641699
#>     Attrib V53    0.18947006023928623
#>     Attrib V54    0.5972314484030928
#>     Attrib V55    -0.5050169169882743
#>     Attrib V56    1.242767719020904
#>     Attrib V57    -0.5111601264240033
#>     Attrib V58    1.0005620484724862
#>     Attrib V59    0.597522859637758
#>     Attrib V6    -0.4884203719053955
#>     Attrib V60    0.024703771643359115
#>     Attrib V7    0.14968377378514672
#>     Attrib V8    -0.16580680924290825
#>     Attrib V9    0.1960802848757421
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.006869694524058638
#>     Attrib V1    0.6023852621803553
#>     Attrib V10    -0.24645248883861953
#>     Attrib V11    -0.0013295999489703065
#>     Attrib V12    -0.058312020328976366
#>     Attrib V13    -0.02716825127967843
#>     Attrib V14    -0.3561293005833019
#>     Attrib V15    0.3495363152268765
#>     Attrib V16    0.08630668574785745
#>     Attrib V17    0.3903860290517884
#>     Attrib V18    -0.027137727375544516
#>     Attrib V19    -0.14198138043953146
#>     Attrib V2    0.1914433722170599
#>     Attrib V20    0.4714047810157008
#>     Attrib V21    0.6769154065049485
#>     Attrib V22    0.4150621381302747
#>     Attrib V23    0.14250240961608052
#>     Attrib V24    0.22896685198832392
#>     Attrib V25    -0.19215753795218204
#>     Attrib V26    -0.48141993670874833
#>     Attrib V27    -0.74313162018317
#>     Attrib V28    -0.33397316938868304
#>     Attrib V29    -0.03534803925467002
#>     Attrib V3    0.18479629660727817
#>     Attrib V30    0.2556889977515304
#>     Attrib V31    -0.911844043351574
#>     Attrib V32    0.3579162652349516
#>     Attrib V33    0.38643456067583887
#>     Attrib V34    -0.41959159534742446
#>     Attrib V35    -0.24825831052735237
#>     Attrib V36    -0.6052979645481615
#>     Attrib V37    -0.27679995874455887
#>     Attrib V38    0.06819272028660212
#>     Attrib V39    0.36886399432462175
#>     Attrib V4    0.2151044523085411
#>     Attrib V40    -0.3572882796804562
#>     Attrib V41    -0.4103498321149625
#>     Attrib V42    0.5281649273239197
#>     Attrib V43    0.23338169893733404
#>     Attrib V44    0.5640152581916622
#>     Attrib V45    0.26012136151035137
#>     Attrib V46    0.2537511274278724
#>     Attrib V47    -0.01864427327504853
#>     Attrib V48    0.017012452850471007
#>     Attrib V49    0.1376098730132448
#>     Attrib V5    -0.1567470678457999
#>     Attrib V50    -0.7361367791673739
#>     Attrib V51    0.062177961857118935
#>     Attrib V52    0.13220003932121727
#>     Attrib V53    0.18318584320142148
#>     Attrib V54    0.5415963068334486
#>     Attrib V55    -0.33276693528260654
#>     Attrib V56    0.9068624033738741
#>     Attrib V57    -0.377470615382381
#>     Attrib V58    0.7442007540710439
#>     Attrib V59    0.4462943602584678
#>     Attrib V6    -0.3590631586132837
#>     Attrib V60    0.060063331486833925
#>     Attrib V7    0.0332376073428289
#>     Attrib V8    -0.16083181462644716
#>     Attrib V9    0.1524502696002249
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.34485063603017846
#>     Attrib V1    0.2736718388386819
#>     Attrib V10    -0.015664325064141126
#>     Attrib V11    0.19047471207279051
#>     Attrib V12    -0.09397319343343481
#>     Attrib V13    0.028566586822349388
#>     Attrib V14    -0.3243785161941528
#>     Attrib V15    0.1546058026998101
#>     Attrib V16    -0.07951567203548397
#>     Attrib V17    0.23235254336014238
#>     Attrib V18    -0.02947360140044787
#>     Attrib V19    -0.20015899193290015
#>     Attrib V2    0.007700550687377758
#>     Attrib V20    0.30324909393873645
#>     Attrib V21    0.560324165001315
#>     Attrib V22    0.1550593218856085
#>     Attrib V23    -0.026477661545526762
#>     Attrib V24    0.0017060588445474121
#>     Attrib V25    -0.3884481184280504
#>     Attrib V26    -0.176877765161804
#>     Attrib V27    -0.22560654532992816
#>     Attrib V28    0.2942146214773297
#>     Attrib V29    0.5022679291373553
#>     Attrib V3    -0.07744210621513388
#>     Attrib V30    0.44979908727245266
#>     Attrib V31    -0.7052025527200485
#>     Attrib V32    -0.03140410620789464
#>     Attrib V33    0.16231266847932854
#>     Attrib V34    -0.19455233623095425
#>     Attrib V35    0.07025490391443853
#>     Attrib V36    -0.40306957354297257
#>     Attrib V37    0.05923030422009839
#>     Attrib V38    0.12556952824021453
#>     Attrib V39    0.4440904155311274
#>     Attrib V4    -0.019416407136110987
#>     Attrib V40    -0.08269535855352055
#>     Attrib V41    -0.07066990930067749
#>     Attrib V42    0.37304237158770365
#>     Attrib V43    0.16137474339578672
#>     Attrib V44    0.6411287079548023
#>     Attrib V45    0.43108107658287736
#>     Attrib V46    0.3477631238918108
#>     Attrib V47    0.085494045102243
#>     Attrib V48    0.35479778595509937
#>     Attrib V49    0.48811166309263393
#>     Attrib V5    0.0136540683000136
#>     Attrib V50    -0.5854033377154196
#>     Attrib V51    0.22508914682600142
#>     Attrib V52    0.18311829114937195
#>     Attrib V53    0.39379044107312633
#>     Attrib V54    0.06850578923623638
#>     Attrib V55    -0.4409084068188814
#>     Attrib V56    0.37343359561715683
#>     Attrib V57    -0.5961576223100984
#>     Attrib V58    0.3545602280809917
#>     Attrib V59    0.2993453956279237
#>     Attrib V6    -0.2906349369430422
#>     Attrib V60    -0.05430452034637876
#>     Attrib V7    -0.2609490143814326
#>     Attrib V8    -0.31446807551793277
#>     Attrib V9    0.33248264001233313
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.2737971745062553
#>     Attrib V1    -0.4625389145993778
#>     Attrib V10    -0.041594475008398274
#>     Attrib V11    -0.43471252816026873
#>     Attrib V12    -0.3646434457032165
#>     Attrib V13    -0.30209558270467674
#>     Attrib V14    0.5473873379820198
#>     Attrib V15    -0.15167663333264497
#>     Attrib V16    0.2056668966574377
#>     Attrib V17    -0.053162087901657384
#>     Attrib V18    0.3034488071443006
#>     Attrib V19    0.5143392009703535
#>     Attrib V2    -0.16993616453218696
#>     Attrib V20    -0.16742273388945267
#>     Attrib V21    -0.5595657646170211
#>     Attrib V22    -0.5298822172242204
#>     Attrib V23    -0.36503048912454883
#>     Attrib V24    -0.6776403369319041
#>     Attrib V25    0.02998986262333119
#>     Attrib V26    0.2709842254768983
#>     Attrib V27    0.5403391991326816
#>     Attrib V28    0.05922798366108974
#>     Attrib V29    -0.03984994320267837
#>     Attrib V3    -0.04657569920794147
#>     Attrib V30    -0.2382324759063851
#>     Attrib V31    0.8048343569351402
#>     Attrib V32    -0.6562053872800422
#>     Attrib V33    -0.5657925549532247
#>     Attrib V34    0.34199264112915734
#>     Attrib V35    0.39191685296870643
#>     Attrib V36    1.2026195384553644
#>     Attrib V37    0.6033160688249313
#>     Attrib V38    0.3421802839560716
#>     Attrib V39    -0.2586738249092325
#>     Attrib V4    -0.08501176129222603
#>     Attrib V40    0.24568276757785923
#>     Attrib V41    0.05111246308428949
#>     Attrib V42    -0.5611854544337854
#>     Attrib V43    -0.10820899476405693
#>     Attrib V44    -0.05631267499381315
#>     Attrib V45    0.024653952615976575
#>     Attrib V46    -0.37317476885138046
#>     Attrib V47    0.0014960561311447471
#>     Attrib V48    -0.19469125514873034
#>     Attrib V49    -0.2670056330413424
#>     Attrib V5    0.0787221508264324
#>     Attrib V50    1.2323208759863304
#>     Attrib V51    -0.2728402868435805
#>     Attrib V52    -0.352722384184982
#>     Attrib V53    -0.3954935406844963
#>     Attrib V54    -0.40836740293731705
#>     Attrib V55    0.49040600524744066
#>     Attrib V56    -0.7466463594665979
#>     Attrib V57    0.6315297894274474
#>     Attrib V58    -0.6710949748708344
#>     Attrib V59    -0.3017849587027157
#>     Attrib V6    0.3240973428449602
#>     Attrib V60    -0.05101314363188436
#>     Attrib V7    0.1284670218240616
#>     Attrib V8    0.35764616471656707
#>     Attrib V9    -0.5346140760328989
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.13004004899644403
#>     Attrib V1    0.5397205665374508
#>     Attrib V10    -0.35374931632527373
#>     Attrib V11    -0.11155876064000662
#>     Attrib V12    -0.08138387314844692
#>     Attrib V13    -0.13860806000521103
#>     Attrib V14    -0.2882621014362836
#>     Attrib V15    0.28487995487779105
#>     Attrib V16    0.22822536316305536
#>     Attrib V17    0.3340198268110019
#>     Attrib V18    0.041846774445507065
#>     Attrib V19    -0.11461640757478997
#>     Attrib V2    0.2165641279943074
#>     Attrib V20    0.42008977949025467
#>     Attrib V21    0.5310992264299309
#>     Attrib V22    0.21474770734147947
#>     Attrib V23    0.0011400720563904693
#>     Attrib V24    0.10184393129795334
#>     Attrib V25    -0.19966109426315007
#>     Attrib V26    -0.49788592628089007
#>     Attrib V27    -0.7262568883910485
#>     Attrib V28    -0.5368025491347106
#>     Attrib V29    -0.19480124473157392
#>     Attrib V3    0.20926376040291922
#>     Attrib V30    0.06162986569845256
#>     Attrib V31    -0.716301612106314
#>     Attrib V32    0.31319579777134837
#>     Attrib V33    0.3767595698593754
#>     Attrib V34    -0.1935878164409606
#>     Attrib V35    -0.10008317162798443
#>     Attrib V36    -0.3940404440892735
#>     Attrib V37    -0.15533281094555937
#>     Attrib V38    0.10788568287312886
#>     Attrib V39    0.27076405442604606
#>     Attrib V4    0.24426429764811955
#>     Attrib V40    -0.27125838085061243
#>     Attrib V41    -0.3583617189510508
#>     Attrib V42    0.34703426928708536
#>     Attrib V43    0.16748657293177588
#>     Attrib V44    0.33250371888198715
#>     Attrib V45    0.20368034050779132
#>     Attrib V46    0.1696761968508385
#>     Attrib V47    -0.08553570938470711
#>     Attrib V48    -0.03557210410762089
#>     Attrib V49    0.032936037498613326
#>     Attrib V5    -0.1405041888613471
#>     Attrib V50    -0.5269899260043092
#>     Attrib V51    0.030677310802817215
#>     Attrib V52    -0.0015098379686372054
#>     Attrib V53    0.1831270104556345
#>     Attrib V54    0.3622942416099665
#>     Attrib V55    -0.22115613268285747
#>     Attrib V56    0.8283005162048924
#>     Attrib V57    -0.16118997379170968
#>     Attrib V58    0.6231275531640713
#>     Attrib V59    0.37438215197521185
#>     Attrib V6    -0.24876314510368577
#>     Attrib V60    0.11045487350737873
#>     Attrib V7    0.06425384549671907
#>     Attrib V8    -0.14655653366455276
#>     Attrib V9    0.0745678934300668
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.5982755668419981
#>     Attrib V1    0.5740413189209252
#>     Attrib V10    0.8114324398080571
#>     Attrib V11    1.2659349163133518
#>     Attrib V12    0.596313817778308
#>     Attrib V13    0.5525970360782572
#>     Attrib V14    -0.3560605236141308
#>     Attrib V15    -0.14730375784705396
#>     Attrib V16    -0.7661621642925742
#>     Attrib V17    -0.8357402992197054
#>     Attrib V18    -0.8174777125634083
#>     Attrib V19    -0.9451684987104128
#>     Attrib V2    0.4873104382671639
#>     Attrib V20    -0.4967218270657804
#>     Attrib V21    -0.0080183634882849
#>     Attrib V22    -0.028525898489499688
#>     Attrib V23    0.052189486929775764
#>     Attrib V24    -0.13541346624083347
#>     Attrib V25    -0.7292291470265675
#>     Attrib V26    0.29011991225219075
#>     Attrib V27    0.7146866636913017
#>     Attrib V28    1.2678741116911938
#>     Attrib V29    1.2252709854322634
#>     Attrib V3    -0.07787520392541543
#>     Attrib V30    0.680017413769541
#>     Attrib V31    -0.06810662235261393
#>     Attrib V32    -0.20811055632285325
#>     Attrib V33    -0.08208631289392705
#>     Attrib V34    0.02687129415970596
#>     Attrib V35    0.17120466007652313
#>     Attrib V36    -0.8748456357529014
#>     Attrib V37    -0.029015170778636086
#>     Attrib V38    -0.43420393601457
#>     Attrib V39    0.4131263311304358
#>     Attrib V4    -0.10745223824688063
#>     Attrib V40    0.35994036908113924
#>     Attrib V41    0.6191000275860074
#>     Attrib V42    0.19658523853000154
#>     Attrib V43    -0.11224396645487857
#>     Attrib V44    -0.22749362524228425
#>     Attrib V45    0.15957833437610497
#>     Attrib V46    1.0096163082428773
#>     Attrib V47    0.721976369900304
#>     Attrib V48    0.7210374111037736
#>     Attrib V49    0.7679662686063256
#>     Attrib V5    0.41761057129381596
#>     Attrib V50    -0.22465564952747813
#>     Attrib V51    0.8746875697839619
#>     Attrib V52    0.7676637323518808
#>     Attrib V53    0.5482297199945967
#>     Attrib V54    -0.17935421140798105
#>     Attrib V55    -0.030707968955874066
#>     Attrib V56    -0.3969554924636542
#>     Attrib V57    -0.9335895626007292
#>     Attrib V58    0.14467132430089685
#>     Attrib V59    -0.10130442476648473
#>     Attrib V6    0.07210328215187967
#>     Attrib V60    0.3036857278511623
#>     Attrib V7    -0.5025231760811332
#>     Attrib V8    -0.2838621481856549
#>     Attrib V9    0.9202154844404077
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.31414789125731774
#>     Attrib V1    0.30141100326615017
#>     Attrib V10    0.335078885719068
#>     Attrib V11    0.5414126262982446
#>     Attrib V12    0.12349291429322398
#>     Attrib V13    0.189871601877795
#>     Attrib V14    -0.2668027041097838
#>     Attrib V15    -0.034671092647625495
#>     Attrib V16    -0.27375059756922876
#>     Attrib V17    -0.215189807634976
#>     Attrib V18    -0.30748512393352656
#>     Attrib V19    -0.37102708636814913
#>     Attrib V2    0.12028167966715043
#>     Attrib V20    -0.10726297245486834
#>     Attrib V21    0.12344692774913824
#>     Attrib V22    -0.1488911916980402
#>     Attrib V23    -0.25167129031727575
#>     Attrib V24    -0.21306552196987188
#>     Attrib V25    -0.4290903298513491
#>     Attrib V26    0.1500449323591564
#>     Attrib V27    0.3242286264397952
#>     Attrib V28    0.6972241373941805
#>     Attrib V29    0.7335565691571826
#>     Attrib V3    -0.10542070229006927
#>     Attrib V30    0.505786041821809
#>     Attrib V31    -0.3174448012232138
#>     Attrib V32    -0.14918349062199068
#>     Attrib V33    0.047856538030790645
#>     Attrib V34    -0.0252748862473434
#>     Attrib V35    0.12919322495752597
#>     Attrib V36    -0.3127259582888342
#>     Attrib V37    0.08650138691199827
#>     Attrib V38    0.08840333371187013
#>     Attrib V39    0.38770923901631354
#>     Attrib V4    0.069594245920835
#>     Attrib V40    0.019582039844006832
#>     Attrib V41    0.08302061664034407
#>     Attrib V42    0.14519857479063172
#>     Attrib V43    0.08507989632631656
#>     Attrib V44    0.3436761798729151
#>     Attrib V45    0.36707462182384926
#>     Attrib V46    0.5616066386687206
#>     Attrib V47    0.4172221964005002
#>     Attrib V48    0.6088844855183067
#>     Attrib V49    0.5774843973636024
#>     Attrib V5    0.1996287471024511
#>     Attrib V50    -0.2608650251514457
#>     Attrib V51    0.418823409881108
#>     Attrib V52    0.3637633640458951
#>     Attrib V53    0.38644531818390143
#>     Attrib V54    -0.013963975982854725
#>     Attrib V55    -0.13758014991588274
#>     Attrib V56    -0.06167308493861469
#>     Attrib V57    -0.54176955900675
#>     Attrib V58    0.18985633586055678
#>     Attrib V59    0.14861365720825045
#>     Attrib V6    -0.13124376017215358
#>     Attrib V60    0.0900158069782055
#>     Attrib V7    -0.33092981137951355
#>     Attrib V8    -0.2302445778128537
#>     Attrib V9    0.4125441229316228
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.6689252805080692
#>     Attrib V1    0.19779010189117055
#>     Attrib V10    0.6680788832365094
#>     Attrib V11    0.998352950982568
#>     Attrib V12    0.5847111189065706
#>     Attrib V13    0.6649551450030285
#>     Attrib V14    -0.24906814512242406
#>     Attrib V15    -0.10766557877565185
#>     Attrib V16    -0.6389711771521381
#>     Attrib V17    -0.3259073906776892
#>     Attrib V18    -0.18598910228287308
#>     Attrib V19    -0.5584295064938413
#>     Attrib V2    0.20057595739219183
#>     Attrib V20    -0.35609690817496464
#>     Attrib V21    0.2844043854174367
#>     Attrib V22    0.4765093007478292
#>     Attrib V23    0.6527215565860071
#>     Attrib V24    0.5596370559784064
#>     Attrib V25    -0.14556450959302447
#>     Attrib V26    0.6499736235964211
#>     Attrib V27    1.005857732159063
#>     Attrib V28    1.3845558015641566
#>     Attrib V29    1.2682898653777341
#>     Attrib V3    -0.1964103317049707
#>     Attrib V30    0.7004711450825439
#>     Attrib V31    -0.26614747523361215
#>     Attrib V32    -0.32443500716531554
#>     Attrib V33    -0.32885853792855685
#>     Attrib V34    -0.2666066588416274
#>     Attrib V35    0.03477387945995541
#>     Attrib V36    -0.8612073987936499
#>     Attrib V37    -0.1296262506474987
#>     Attrib V38    -0.4902637612640148
#>     Attrib V39    0.482790528558645
#>     Attrib V4    -0.17174403184151316
#>     Attrib V40    0.37145142929268643
#>     Attrib V41    0.8369092478884314
#>     Attrib V42    0.33234867090864284
#>     Attrib V43    0.04600354039271013
#>     Attrib V44    0.07513680948695942
#>     Attrib V45    0.15576597612798745
#>     Attrib V46    0.9329359043393798
#>     Attrib V47    0.6244587137514759
#>     Attrib V48    0.746240403116753
#>     Attrib V49    0.9594203165416221
#>     Attrib V5    0.5256695642228877
#>     Attrib V50    -0.19119890410671178
#>     Attrib V51    0.9900614315577492
#>     Attrib V52    0.9208794437742798
#>     Attrib V53    0.9678514528517237
#>     Attrib V54    0.2721736682612773
#>     Attrib V55    -0.1922069934533762
#>     Attrib V56    -0.39396293696368356
#>     Attrib V57    -0.9199398680700269
#>     Attrib V58    0.07537793591583312
#>     Attrib V59    0.03071458927221624
#>     Attrib V6    0.2654631466071162
#>     Attrib V60    0.13327816656041178
#>     Attrib V7    -0.436666438127638
#>     Attrib V8    -0.29427888109135125
#>     Attrib V9    0.8027011044584448
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.6693572768324704
#>     Attrib V1    -0.14507921345093716
#>     Attrib V10    -0.5648405011397003
#>     Attrib V11    -0.62647474037668
#>     Attrib V12    -0.046201399067846066
#>     Attrib V13    -0.25760552485964267
#>     Attrib V14    0.3366975958991714
#>     Attrib V15    -0.10477586272153581
#>     Attrib V16    0.45490810079256583
#>     Attrib V17    0.1354155854431973
#>     Attrib V18    0.19209364333094633
#>     Attrib V19    0.4315717553293846
#>     Attrib V2    -0.13708771767060918
#>     Attrib V20    0.1553413566337033
#>     Attrib V21    -0.4740423333102699
#>     Attrib V22    -0.6261648940008349
#>     Attrib V23    -0.6248724216254888
#>     Attrib V24    -0.5633402748840219
#>     Attrib V25    0.2773757503737762
#>     Attrib V26    -0.23454414676066132
#>     Attrib V27    -0.636279032943092
#>     Attrib V28    -1.3329050965874858
#>     Attrib V29    -1.4064029837515026
#>     Attrib V3    0.13228203006768555
#>     Attrib V30    -0.8786912982306725
#>     Attrib V31    0.5756506015472836
#>     Attrib V32    0.04837762352902062
#>     Attrib V33    0.12389299795117326
#>     Attrib V34    0.46025473676569983
#>     Attrib V35    0.10866088281353962
#>     Attrib V36    0.9554322934232614
#>     Attrib V37    0.19519596064445524
#>     Attrib V38    0.3677179340188009
#>     Attrib V39    -0.4137220080680363
#>     Attrib V4    0.08572001120021627
#>     Attrib V40    -0.06805536999596527
#>     Attrib V41    -0.7033000687329816
#>     Attrib V42    -0.7297233572853219
#>     Attrib V43    -0.06302375122049203
#>     Attrib V44    -0.3027171624752257
#>     Attrib V45    -0.26628279856853926
#>     Attrib V46    -0.8577997338780537
#>     Attrib V47    -0.5270223936033506
#>     Attrib V48    -0.7718676419430301
#>     Attrib V49    -0.9142642690156169
#>     Attrib V5    -0.4536458618948651
#>     Attrib V50    0.548052201743195
#>     Attrib V51    -0.8332684091229078
#>     Attrib V52    -0.9254607483109912
#>     Attrib V53    -0.7342168041595482
#>     Attrib V54    -0.3462485003735616
#>     Attrib V55    0.40760858066855027
#>     Attrib V56    0.09007224062817383
#>     Attrib V57    0.9013376807800204
#>     Attrib V58    -0.31310453757518886
#>     Attrib V59    -0.039440823054280184
#>     Attrib V6    -0.11555609455564765
#>     Attrib V60    0.05066221644711124
#>     Attrib V7    0.4002588565120144
#>     Attrib V8    0.19825169852969166
#>     Attrib V9    -0.9175846920348599
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.03207825819832064
#>     Attrib V1    0.46554038350847626
#>     Attrib V10    -0.29019442045657373
#>     Attrib V11    -0.03814693358772121
#>     Attrib V12    -0.10805554065172694
#>     Attrib V13    -0.1623452827830061
#>     Attrib V14    -0.40009510329065695
#>     Attrib V15    0.22553119286914725
#>     Attrib V16    0.13919417418192576
#>     Attrib V17    0.4077173447707159
#>     Attrib V18    0.01428322003727622
#>     Attrib V19    -0.1639105921765581
#>     Attrib V2    0.10309995622219367
#>     Attrib V20    0.4880711631396186
#>     Attrib V21    0.5650098675220271
#>     Attrib V22    0.18639677436321245
#>     Attrib V23    -0.1019722071488207
#>     Attrib V24    -0.05616325070776715
#>     Attrib V25    -0.32687514967091147
#>     Attrib V26    -0.545736238708681
#>     Attrib V27    -0.7416496477486136
#>     Attrib V28    -0.3554165642259669
#>     Attrib V29    -0.08677602468700929
#>     Attrib V3    0.04763825801598695
#>     Attrib V30    0.15644976806401392
#>     Attrib V31    -0.8610953829156165
#>     Attrib V32    0.16348523760393582
#>     Attrib V33    0.32112165109969654
#>     Attrib V34    -0.13728586495769432
#>     Attrib V35    0.006534719635807294
#>     Attrib V36    -0.3009303412487531
#>     Attrib V37    -0.06149190676563095
#>     Attrib V38    0.31689265740654055
#>     Attrib V39    0.41227463226263916
#>     Attrib V4    0.14022527442223218
#>     Attrib V40    -0.26148344124300554
#>     Attrib V41    -0.5081482543190633
#>     Attrib V42    0.2542093086889171
#>     Attrib V43    0.15752540290057668
#>     Attrib V44    0.5720797271876905
#>     Attrib V45    0.41449957261984194
#>     Attrib V46    0.2518605056825122
#>     Attrib V47    0.027388916411593824
#>     Attrib V48    0.17045295899189097
#>     Attrib V49    0.20403360037650498
#>     Attrib V5    -0.16397375382219756
#>     Attrib V50    -0.6186822801937719
#>     Attrib V51    0.0863627939757949
#>     Attrib V52    -0.055758353650584194
#>     Attrib V53    0.05078614681316135
#>     Attrib V54    0.30357328334519357
#>     Attrib V55    -0.27876290528634
#>     Attrib V56    0.7670793849354801
#>     Attrib V57    -0.31367940505386616
#>     Attrib V58    0.6071981586224826
#>     Attrib V59    0.2867333470486856
#>     Attrib V6    -0.3669445599481774
#>     Attrib V60    -0.00706011018508253
#>     Attrib V7    -0.050287770852683614
#>     Attrib V8    -0.22777901451812832
#>     Attrib V9    0.08271143993601643
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.03405684831889021
#>     Attrib V1    0.6214521156630529
#>     Attrib V10    -0.3837241383758776
#>     Attrib V11    -0.04007187092238117
#>     Attrib V12    -0.22452897934257332
#>     Attrib V13    -0.15437643259341982
#>     Attrib V14    -0.3587960148963132
#>     Attrib V15    0.3417133466965931
#>     Attrib V16    0.23867792568624993
#>     Attrib V17    0.42865117025479826
#>     Attrib V18    -0.03167237975767227
#>     Attrib V19    -0.115407236409288
#>     Attrib V2    0.24368984880681707
#>     Attrib V20    0.5149915046604995
#>     Attrib V21    0.6883843991542303
#>     Attrib V22    0.3273655756330109
#>     Attrib V23    -0.022655149098313607
#>     Attrib V24    -0.01595773436317944
#>     Attrib V25    -0.42582593754012027
#>     Attrib V26    -0.6652048850137591
#>     Attrib V27    -0.8655224225080547
#>     Attrib V28    -0.4764405998598695
#>     Attrib V29    -0.029600063281835017
#>     Attrib V3    0.1489312584099118
#>     Attrib V30    0.18240102755642915
#>     Attrib V31    -0.9666013888897477
#>     Attrib V32    0.2665244680521924
#>     Attrib V33    0.45206981935764134
#>     Attrib V34    -0.24091679428974053
#>     Attrib V35    -0.15497768137006757
#>     Attrib V36    -0.47684065847648655
#>     Attrib V37    -0.19315859182384185
#>     Attrib V38    0.24632287197756247
#>     Attrib V39    0.38553846163772504
#>     Attrib V4    0.2775325809683585
#>     Attrib V40    -0.30322477738561326
#>     Attrib V41    -0.501824499568138
#>     Attrib V42    0.377299806775352
#>     Attrib V43    0.240136403957924
#>     Attrib V44    0.5030192440116561
#>     Attrib V45    0.3624518398028033
#>     Attrib V46    0.30878002513826097
#>     Attrib V47    -0.048392267151850514
#>     Attrib V48    0.09166751328159312
#>     Attrib V49    0.11376605814298016
#>     Attrib V5    -0.17819188849517278
#>     Attrib V50    -0.7525251253620416
#>     Attrib V51    0.039965005770098476
#>     Attrib V52    0.04248962457527808
#>     Attrib V53    0.13755672756214718
#>     Attrib V54    0.38552186219641127
#>     Attrib V55    -0.3297389977267994
#>     Attrib V56    0.9683122800741912
#>     Attrib V57    -0.2780077660639942
#>     Attrib V58    0.7652737031120108
#>     Attrib V59    0.4613233740039263
#>     Attrib V6    -0.4225846930660617
#>     Attrib V60    0.046868492865511265
#>     Attrib V7    0.07825585683291864
#>     Attrib V8    -0.175746331536607
#>     Attrib V9    0.1056645936498471
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.16334278265703303
#>     Attrib V1    0.2880886961877392
#>     Attrib V10    -0.27943324465180186
#>     Attrib V11    -0.08199563343415445
#>     Attrib V12    -0.04265329831236731
#>     Attrib V13    0.03765166037363536
#>     Attrib V14    -0.1391643546392782
#>     Attrib V15    0.16042045284855574
#>     Attrib V16    0.060305323588368105
#>     Attrib V17    0.2516096260832919
#>     Attrib V18    0.059181661291974524
#>     Attrib V19    -0.042533058404749025
#>     Attrib V2    0.10605629749766182
#>     Attrib V20    0.2802102913643905
#>     Attrib V21    0.29912434374726854
#>     Attrib V22    0.08086889078917987
#>     Attrib V23    0.0345793309466383
#>     Attrib V24    0.08426394662244521
#>     Attrib V25    -0.07464224066872926
#>     Attrib V26    -0.31424295471993713
#>     Attrib V27    -0.4207389777124714
#>     Attrib V28    -0.33462625268251783
#>     Attrib V29    -0.09538242385298001
#>     Attrib V3    0.16610734649576928
#>     Attrib V30    0.0199557960543018
#>     Attrib V31    -0.4781534166607143
#>     Attrib V32    0.15734001583853766
#>     Attrib V33    0.223958545800369
#>     Attrib V34    0.0022903692257872344
#>     Attrib V35    0.012378680755272974
#>     Attrib V36    -0.2056344239986836
#>     Attrib V37    -0.056078325383862156
#>     Attrib V38    0.07905911408985826
#>     Attrib V39    0.27824291903594756
#>     Attrib V4    0.13369653045881558
#>     Attrib V40    -0.05988374147829661
#>     Attrib V41    -0.21426687648080622
#>     Attrib V42    0.18834338051089675
#>     Attrib V43    0.07351593492756157
#>     Attrib V44    0.2000392188774979
#>     Attrib V45    0.07660093741479392
#>     Attrib V46    0.12429738392655837
#>     Attrib V47    -0.001947584841711453
#>     Attrib V48    0.008368234015610734
#>     Attrib V49    0.08382526254633321
#>     Attrib V5    -0.04671675645508344
#>     Attrib V50    -0.3861545292019681
#>     Attrib V51    0.005783981029896288
#>     Attrib V52    -0.003697001077731406
#>     Attrib V53    0.16426593664259842
#>     Attrib V54    0.20247334074910808
#>     Attrib V55    -0.111225006622161
#>     Attrib V56    0.5240215394866212
#>     Attrib V57    -0.11700535265361414
#>     Attrib V58    0.36394917510653674
#>     Attrib V59    0.2850198805252314
#>     Attrib V6    -0.1581437519242968
#>     Attrib V60    0.10134445496028781
#>     Attrib V7    0.017271925742197214
#>     Attrib V8    -0.21934016857494784
#>     Attrib V9    -0.03304024959692342
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.28651881726473966
#>     Attrib V1    0.3311793750025093
#>     Attrib V10    0.07363024601339181
#>     Attrib V11    0.3525118781681776
#>     Attrib V12    0.09900666315770687
#>     Attrib V13    0.11704701569997275
#>     Attrib V14    -0.24235822610807037
#>     Attrib V15    0.10243357486645559
#>     Attrib V16    -0.16142376044584184
#>     Attrib V17    0.10193988979468693
#>     Attrib V18    -0.048811531420592046
#>     Attrib V19    -0.253985003645209
#>     Attrib V2    0.022548802345700083
#>     Attrib V20    0.11499793140413551
#>     Attrib V21    0.2112062497856024
#>     Attrib V22    -0.11779927166948548
#>     Attrib V23    -0.29703700507951375
#>     Attrib V24    -0.294616426487602
#>     Attrib V25    -0.40189189341654263
#>     Attrib V26    -0.03704553603325052
#>     Attrib V27    -0.05194242037123535
#>     Attrib V28    0.18666525875803627
#>     Attrib V29    0.2993358822507195
#>     Attrib V3    -0.17624746442966616
#>     Attrib V30    0.32590705938099057
#>     Attrib V31    -0.4687778554353982
#>     Attrib V32    -0.059390026862643185
#>     Attrib V33    0.15047116759174245
#>     Attrib V34    -0.04006718277998676
#>     Attrib V35    0.22937273995601437
#>     Attrib V36    -0.23834067431757466
#>     Attrib V37    0.1490536352509004
#>     Attrib V38    0.12587119231955904
#>     Attrib V39    0.3766073874784391
#>     Attrib V4    -0.007922241764011718
#>     Attrib V40    -0.08208160195318845
#>     Attrib V41    -0.22531631518917472
#>     Attrib V42    0.08529332188623981
#>     Attrib V43    0.1251337374490636
#>     Attrib V44    0.5195065496770894
#>     Attrib V45    0.2779036110902913
#>     Attrib V46    0.3159983454695015
#>     Attrib V47    0.08850608474662719
#>     Attrib V48    0.36309050637075513
#>     Attrib V49    0.41747604072097616
#>     Attrib V5    -0.11644142019955378
#>     Attrib V50    -0.42941941238440007
#>     Attrib V51    0.17681604051349864
#>     Attrib V52    0.15081974433603923
#>     Attrib V53    0.26665088933420256
#>     Attrib V54    0.13790173103224548
#>     Attrib V55    -0.20676739221794133
#>     Attrib V56    0.2895378461960565
#>     Attrib V57    -0.5720323447114019
#>     Attrib V58    0.3820291757508009
#>     Attrib V59    0.24881035399406287
#>     Attrib V6    -0.34498750802745237
#>     Attrib V60    0.16180703718598638
#>     Attrib V7    -0.33122963946704104
#>     Attrib V8    -0.3398940546679541
#>     Attrib V9    0.23320359419710482
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.20916346824914556
#>     Attrib V1    -0.55118728077121
#>     Attrib V10    -0.07801009358654182
#>     Attrib V11    -0.4934118951095417
#>     Attrib V12    -0.2468070251143378
#>     Attrib V13    -0.1887688454689249
#>     Attrib V14    0.6406632489938959
#>     Attrib V15    -0.06994720972403312
#>     Attrib V16    0.17986317514459177
#>     Attrib V17    -0.2393877134372821
#>     Attrib V18    0.18885902347859246
#>     Attrib V19    0.5369413941020142
#>     Attrib V2    -0.12033327722548254
#>     Attrib V20    -0.28940454183582015
#>     Attrib V21    -0.8373695905514419
#>     Attrib V22    -0.609666095940271
#>     Attrib V23    -0.44250100272538145
#>     Attrib V24    -0.7170044521823343
#>     Attrib V25    -0.15923981575804302
#>     Attrib V26    0.14882603495854044
#>     Attrib V27    0.580465517118968
#>     Attrib V28    0.29397397525209473
#>     Attrib V29    0.20118897448680417
#>     Attrib V3    -0.05184914438213995
#>     Attrib V30    -0.29593703029178264
#>     Attrib V31    0.961938469069839
#>     Attrib V32    -0.6591288710439055
#>     Attrib V33    -0.6608871791158506
#>     Attrib V34    0.5598397240885211
#>     Attrib V35    0.5320208266283986
#>     Attrib V36    1.2008612662379419
#>     Attrib V37    0.8645966225685214
#>     Attrib V38    0.3129741078314381
#>     Attrib V39    -0.18817835941801864
#>     Attrib V4    -0.21305802524933407
#>     Attrib V40    0.45872821944265696
#>     Attrib V41    0.253365580030385
#>     Attrib V42    -0.8165052776496079
#>     Attrib V43    -0.3635018774436061
#>     Attrib V44    -0.4660419783048772
#>     Attrib V45    -0.06549930341007494
#>     Attrib V46    -0.2953483492722329
#>     Attrib V47    0.11017259378577951
#>     Attrib V48    -0.04597162143488743
#>     Attrib V49    -0.25978515957192344
#>     Attrib V5    0.045960766969736395
#>     Attrib V50    1.1582660600069166
#>     Attrib V51    -0.20532163560681213
#>     Attrib V52    -0.25695701225960105
#>     Attrib V53    -0.2947565555602659
#>     Attrib V54    -0.7229870705419474
#>     Attrib V55    0.538547147736265
#>     Attrib V56    -0.7875322179019292
#>     Attrib V57    0.5877476799983375
#>     Attrib V58    -0.7293215676137565
#>     Attrib V59    -0.4846970024899928
#>     Attrib V6    0.3241217720465362
#>     Attrib V60    -0.1760909498059034
#>     Attrib V7    -0.1640319652486568
#>     Attrib V8    0.08873500881864178
#>     Attrib V9    -0.5692979900064797
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.20061136414761882
#>     Attrib V1    -0.019696397268608598
#>     Attrib V10    0.016458359572734987
#>     Attrib V11    -0.06455375069161161
#>     Attrib V12    -0.019431697221942486
#>     Attrib V13    0.011351155037918871
#>     Attrib V14    0.05444605367967551
#>     Attrib V15    -0.008066537725434048
#>     Attrib V16    0.13014265316297025
#>     Attrib V17    0.11317752824184223
#>     Attrib V18    0.1415528289852551
#>     Attrib V19    0.09235429937669844
#>     Attrib V2    0.019068430115417683
#>     Attrib V20    -0.1095660501142246
#>     Attrib V21    -0.1553890512044929
#>     Attrib V22    -0.08370798479584854
#>     Attrib V23    -0.045275459074949086
#>     Attrib V24    -0.036008710959944894
#>     Attrib V25    0.002113336254824624
#>     Attrib V26    -0.07582181851262185
#>     Attrib V27    -0.045215005457206706
#>     Attrib V28    -0.06137380888646827
#>     Attrib V29    -0.09869964377325409
#>     Attrib V3    0.11936520565093002
#>     Attrib V30    -0.07613501250417375
#>     Attrib V31    0.10553500372771456
#>     Attrib V32    0.014869765720106842
#>     Attrib V33    0.015506305938719971
#>     Attrib V34    0.12207679641508112
#>     Attrib V35    0.0901032815598382
#>     Attrib V36    0.18398962549302472
#>     Attrib V37    0.16745554682202177
#>     Attrib V38    0.04538726323928282
#>     Attrib V39    -0.021550717887027653
#>     Attrib V4    0.0987194105487688
#>     Attrib V40    0.06991962609073174
#>     Attrib V41    0.15183327399148802
#>     Attrib V42    0.0746075206131466
#>     Attrib V43    0.021808311688002985
#>     Attrib V44    -0.07111620129022116
#>     Attrib V45    -0.019389583346103363
#>     Attrib V46    -0.018797707110659093
#>     Attrib V47    0.011095565476391043
#>     Attrib V48    -0.0682292742896688
#>     Attrib V49    -0.08370443010578302
#>     Attrib V5    0.102490499357526
#>     Attrib V50    0.18667915645081942
#>     Attrib V51    0.07062299263281178
#>     Attrib V52    0.041811057976780294
#>     Attrib V53    0.05407815415752353
#>     Attrib V54    -0.034267122396035764
#>     Attrib V55    0.10642164253609122
#>     Attrib V56    0.018418139399495277
#>     Attrib V57    0.22712923029640483
#>     Attrib V58    0.04583832938737028
#>     Attrib V59    -0.004869942246300095
#>     Attrib V6    0.13836061338693204
#>     Attrib V60    0.06904110840817013
#>     Attrib V7    0.04259561913625962
#>     Attrib V8    0.045635994004883794
#>     Attrib V9    0.01624703147228989
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.08703883200628314
#>     Attrib V1    0.4062573325206279
#>     Attrib V10    -0.21831717208681473
#>     Attrib V11    -0.03974898656289385
#>     Attrib V12    -0.11598656968154693
#>     Attrib V13    -0.11770802013589905
#>     Attrib V14    -0.280747846862967
#>     Attrib V15    0.2496133081736652
#>     Attrib V16    0.12039444817081062
#>     Attrib V17    0.2758353988191567
#>     Attrib V18    0.004657636801762218
#>     Attrib V19    -0.06681239796794984
#>     Attrib V2    0.2064727965249258
#>     Attrib V20    0.29270961743722124
#>     Attrib V21    0.3574300349743381
#>     Attrib V22    0.18553537103540588
#>     Attrib V23    -0.08382161735697057
#>     Attrib V24    0.0036754891639514866
#>     Attrib V25    -0.26814575708604893
#>     Attrib V26    -0.41690994916369684
#>     Attrib V27    -0.6026487120976066
#>     Attrib V28    -0.43098796955214735
#>     Attrib V29    -0.19699728087297816
#>     Attrib V3    0.09667533083012998
#>     Attrib V30    0.05299332562925635
#>     Attrib V31    -0.5357428958475591
#>     Attrib V32    0.15654075621839517
#>     Attrib V33    0.33181374531800556
#>     Attrib V34    -0.09548319756498035
#>     Attrib V35    0.03593355476178006
#>     Attrib V36    -0.23463585834580508
#>     Attrib V37    -0.05998272586421835
#>     Attrib V38    0.20225686117976255
#>     Attrib V39    0.3139824859305783
#>     Attrib V4    0.1458830311839748
#>     Attrib V40    -0.18310118770795114
#>     Attrib V41    -0.3204169896434341
#>     Attrib V42    0.16041390397291327
#>     Attrib V43    0.16253322535957962
#>     Attrib V44    0.32925732728905915
#>     Attrib V45    0.2292304054790492
#>     Attrib V46    0.12158388993487378
#>     Attrib V47    -0.0810023857208671
#>     Attrib V48    0.0931320758571006
#>     Attrib V49    0.06320011324340014
#>     Attrib V5    -0.1195911840096474
#>     Attrib V50    -0.44319809672806015
#>     Attrib V51    0.04007323423738801
#>     Attrib V52    -0.027884906705157145
#>     Attrib V53    0.06909082605261668
#>     Attrib V54    0.20618932801207998
#>     Attrib V55    -0.12389615834867229
#>     Attrib V56    0.6215613588640464
#>     Attrib V57    -0.15871832440120456
#>     Attrib V58    0.4136303791943953
#>     Attrib V59    0.21359977397356508
#>     Attrib V6    -0.26893769318434274
#>     Attrib V60    0.059781764961459045
#>     Attrib V7    -0.07577937759857617
#>     Attrib V8    -0.18814866996907909
#>     Attrib V9    0.018842881364568527
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.21926158066138343
#>     Attrib V1    0.05365467232668474
#>     Attrib V10    -0.025589121493750935
#>     Attrib V11    -0.04023409858416789
#>     Attrib V12    -0.019268627380707917
#>     Attrib V13    -0.010206298222512062
#>     Attrib V14    0.02842715392392389
#>     Attrib V15    7.785213538960957E-5
#>     Attrib V16    0.045281968979568
#>     Attrib V17    0.02943747324041898
#>     Attrib V18    0.10323330523170149
#>     Attrib V19    -0.024157063678501338
#>     Attrib V2    0.08603126682074252
#>     Attrib V20    -0.030524486877118534
#>     Attrib V21    -0.046483860113548
#>     Attrib V22    -0.07361005446944938
#>     Attrib V23    -0.026239393886588573
#>     Attrib V24    -0.06335046906352652
#>     Attrib V25    -0.021278472105099696
#>     Attrib V26    -0.035055630299655624
#>     Attrib V27    -0.04487431088468962
#>     Attrib V28    -0.08719009077046103
#>     Attrib V29    -0.07038394835346187
#>     Attrib V3    0.15215628497982028
#>     Attrib V30    -0.053246196657817754
#>     Attrib V31    0.021643434875957268
#>     Attrib V32    0.018985987685300867
#>     Attrib V33    0.06292361340501008
#>     Attrib V34    0.11274956320528501
#>     Attrib V35    0.08867358079898822
#>     Attrib V36    0.16509085199541457
#>     Attrib V37    0.0822057185859662
#>     Attrib V38    0.018457517475585324
#>     Attrib V39    0.07774952552176397
#>     Attrib V4    0.06647315502692916
#>     Attrib V40    0.057308075885364955
#>     Attrib V41    0.029227456762647177
#>     Attrib V42    0.06192617106796751
#>     Attrib V43    0.057667064733023826
#>     Attrib V44    0.057630890148154826
#>     Attrib V45    -0.027126483358465188
#>     Attrib V46    0.005492768846654473
#>     Attrib V47    0.06993220943260589
#>     Attrib V48    0.010519186382014909
#>     Attrib V49    0.023460525417169652
#>     Attrib V5    0.08447538900322152
#>     Attrib V50    0.012665048439601641
#>     Attrib V51    0.10537095604514178
#>     Attrib V52    0.031514424907677294
#>     Attrib V53    0.08474145929122208
#>     Attrib V54    -0.0026757342866898636
#>     Attrib V55    0.08721791076037044
#>     Attrib V56    0.1298898738431931
#>     Attrib V57    0.07027749279149292
#>     Attrib V58    0.08366031788871033
#>     Attrib V59    0.07665324184297968
#>     Attrib V6    0.03272908742327054
#>     Attrib V60    0.08230888393022642
#>     Attrib V7    0.032245979426930735
#>     Attrib V8    0.032522761469767854
#>     Attrib V9    -0.004868221228297336
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.056702450253538726
#>     Attrib V1    0.4886839746790239
#>     Attrib V10    -0.30243070181076265
#>     Attrib V11    -0.024585611189572896
#>     Attrib V12    0.018366599324450696
#>     Attrib V13    -0.0012894508572495508
#>     Attrib V14    -0.2421644847828904
#>     Attrib V15    0.31762977270762005
#>     Attrib V16    0.06512759239205534
#>     Attrib V17    0.33448632098147985
#>     Attrib V18    0.02847115350543531
#>     Attrib V19    -0.07887995230867847
#>     Attrib V2    0.14151238215288542
#>     Attrib V20    0.43419227300869595
#>     Attrib V21    0.5656607286327338
#>     Attrib V22    0.2928106998483979
#>     Attrib V23    0.06122754405483029
#>     Attrib V24    0.19161225414826982
#>     Attrib V25    -0.1277023446180765
#>     Attrib V26    -0.36664634578950334
#>     Attrib V27    -0.5933966979530817
#>     Attrib V28    -0.2457608532714174
#>     Attrib V29    0.021331657968057565
#>     Attrib V3    0.0773538026072486
#>     Attrib V30    0.15354622243783153
#>     Attrib V31    -0.7881931726526314
#>     Attrib V32    0.16258677533608204
#>     Attrib V33    0.33916317342296465
#>     Attrib V34    -0.21054337939696602
#>     Attrib V35    -0.02987949004941887
#>     Attrib V36    -0.4308391898538558
#>     Attrib V37    -0.22961609014952478
#>     Attrib V38    0.11539587168054329
#>     Attrib V39    0.34337635784136894
#>     Attrib V4    0.19157899171879322
#>     Attrib V40    -0.23289812740480503
#>     Attrib V41    -0.3781466148180152
#>     Attrib V42    0.4004021483819936
#>     Attrib V43    0.17805255874123999
#>     Attrib V44    0.449157981055997
#>     Attrib V45    0.3151306393634232
#>     Attrib V46    0.24722076391837552
#>     Attrib V47    -0.0777100597597653
#>     Attrib V48    0.05867388186661687
#>     Attrib V49    0.20810942962595777
#>     Attrib V5    -0.13262775316020095
#>     Attrib V50    -0.6732959625660263
#>     Attrib V51    0.005881927443160281
#>     Attrib V52    0.11169128356353268
#>     Attrib V53    0.2594946252850256
#>     Attrib V54    0.4524548527751544
#>     Attrib V55    -0.23866328948848559
#>     Attrib V56    0.7262796793941555
#>     Attrib V57    -0.3707108389265888
#>     Attrib V58    0.6350731995135539
#>     Attrib V59    0.4135412402049426
#>     Attrib V6    -0.28675878543204325
#>     Attrib V60    0.10801031429441306
#>     Attrib V7    0.06747055716364941
#>     Attrib V8    -0.22999790436816694
#>     Attrib V9    0.07619853461912632
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    -0.13404179830682064
#>     Attrib V1    0.7233139119998132
#>     Attrib V10    -0.4110061251813863
#>     Attrib V11    -0.14037681619519118
#>     Attrib V12    -0.13727356631471552
#>     Attrib V13    -0.17064900870500455
#>     Attrib V14    -0.334220813409478
#>     Attrib V15    0.402937419633338
#>     Attrib V16    0.22983675747192164
#>     Attrib V17    0.44352247973385234
#>     Attrib V18    -0.01997097362935195
#>     Attrib V19    -0.13643124384103672
#>     Attrib V2    0.23400861731824527
#>     Attrib V20    0.5528071528822027
#>     Attrib V21    0.7235628125624153
#>     Attrib V22    0.30823754815678417
#>     Attrib V23    -0.028245619696831342
#>     Attrib V24    0.01809887389251392
#>     Attrib V25    -0.395290288226427
#>     Attrib V26    -0.6522909996519111
#>     Attrib V27    -0.9096237783688783
#>     Attrib V28    -0.6176047025516325
#>     Attrib V29    -0.13700458114320418
#>     Attrib V3    0.1944062395120508
#>     Attrib V30    0.1604869060158794
#>     Attrib V31    -0.9147285396871636
#>     Attrib V32    0.2875411724411469
#>     Attrib V33    0.42882599860815995
#>     Attrib V34    -0.29743847087576825
#>     Attrib V35    -0.19231767684825357
#>     Attrib V36    -0.44384109203646704
#>     Attrib V37    -0.17151798135017082
#>     Attrib V38    0.2466181704473775
#>     Attrib V39    0.3901301446726539
#>     Attrib V4    0.2548521468475085
#>     Attrib V40    -0.3246772858198499
#>     Attrib V41    -0.5191105391208507
#>     Attrib V42    0.37086648695565366
#>     Attrib V43    0.25540061551646476
#>     Attrib V44    0.5532517715727485
#>     Attrib V45    0.30982260727483063
#>     Attrib V46    0.18838539123740095
#>     Attrib V47    -0.13226241434543584
#>     Attrib V48    0.025175005819144544
#>     Attrib V49    0.07334729945240265
#>     Attrib V5    -0.15584618692523314
#>     Attrib V50    -0.7444452104869896
#>     Attrib V51    0.05262707673769864
#>     Attrib V52    0.02560515957737829
#>     Attrib V53    0.11726404893955783
#>     Attrib V54    0.49457809879981535
#>     Attrib V55    -0.23433543369134138
#>     Attrib V56    1.0405889662590844
#>     Attrib V57    -0.2725845077701424
#>     Attrib V58    0.8069691266885688
#>     Attrib V59    0.4743605080257384
#>     Attrib V6    -0.36881536027322853
#>     Attrib V60    0.08176917024946286
#>     Attrib V7    0.1370701935953481
#>     Attrib V8    -0.23320603744257196
#>     Attrib V9    0.06478990663677618
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.11833228273191894
#>     Attrib V1    -0.4102251785334448
#>     Attrib V10    -0.02519230973277161
#>     Attrib V11    -0.37964197162439967
#>     Attrib V12    -0.285138443548323
#>     Attrib V13    -0.25293343732430784
#>     Attrib V14    0.4532163565683905
#>     Attrib V15    -0.18641008316181068
#>     Attrib V16    0.15794754391006263
#>     Attrib V17    -0.09494175872050575
#>     Attrib V18    0.2614175711977057
#>     Attrib V19    0.4449177619527884
#>     Attrib V2    -0.2231011429941664
#>     Attrib V20    -0.10333522993713196
#>     Attrib V21    -0.46246255153920296
#>     Attrib V22    -0.5231419397110547
#>     Attrib V23    -0.42042308775965703
#>     Attrib V24    -0.6392173677211758
#>     Attrib V25    -0.07975402358735541
#>     Attrib V26    0.245391644746995
#>     Attrib V27    0.5203093580950766
#>     Attrib V28    0.1449858689051957
#>     Attrib V29    0.032622822448334636
#>     Attrib V3    -0.12512069266101525
#>     Attrib V30    -0.20766195843144364
#>     Attrib V31    0.7046563775763459
#>     Attrib V32    -0.6656130895155095
#>     Attrib V33    -0.5297225060952709
#>     Attrib V34    0.3376384856099817
#>     Attrib V35    0.37259949052788577
#>     Attrib V36    1.0663804046486534
#>     Attrib V37    0.6660310985634857
#>     Attrib V38    0.36021055639557287
#>     Attrib V39    -0.1600221557070115
#>     Attrib V4    -0.02961105995886806
#>     Attrib V40    0.2737388452403291
#>     Attrib V41    0.15173407391973
#>     Attrib V42    -0.5776718736962931
#>     Attrib V43    -0.11100008465384947
#>     Attrib V44    -0.05428785120390984
#>     Attrib V45    0.04723565502785511
#>     Attrib V46    -0.2826389102234292
#>     Attrib V47    0.021920248688730784
#>     Attrib V48    -0.08686873694151052
#>     Attrib V49    -0.2014215283014164
#>     Attrib V5    0.09686101656221185
#>     Attrib V50    1.0571761304712828
#>     Attrib V51    -0.22030578840223686
#>     Attrib V52    -0.2615460446648081
#>     Attrib V53    -0.33432774630687645
#>     Attrib V54    -0.41248231749534503
#>     Attrib V55    0.3670746815476591
#>     Attrib V56    -0.7836997999373431
#>     Attrib V57    0.6086267290247211
#>     Attrib V58    -0.6133830646785184
#>     Attrib V59    -0.24096950824509367
#>     Attrib V6    0.23903612948182215
#>     Attrib V60    -0.07892834211717922
#>     Attrib V7    0.06060524666745127
#>     Attrib V8    0.23414359234323362
#>     Attrib V9    -0.40756870143899976
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.08506178661334199
#>     Attrib V1    0.2919380440201143
#>     Attrib V10    -0.18232237730833936
#>     Attrib V11    -0.02783816653667004
#>     Attrib V12    -0.003709455202204231
#>     Attrib V13    -0.020569228789992778
#>     Attrib V14    -0.12303758004213154
#>     Attrib V15    0.08598894556413204
#>     Attrib V16    0.10013095397890587
#>     Attrib V17    0.19434664549192943
#>     Attrib V18    0.036410338611181585
#>     Attrib V19    -0.06157693339989181
#>     Attrib V2    0.11133595924249501
#>     Attrib V20    0.19586318463820596
#>     Attrib V21    0.18419106706227625
#>     Attrib V22    0.019604623087623473
#>     Attrib V23    -0.08059726353376001
#>     Attrib V24    0.05947111457460717
#>     Attrib V25    -0.11692450834208903
#>     Attrib V26    -0.23515282511794344
#>     Attrib V27    -0.3792850011664773
#>     Attrib V28    -0.31824942077983415
#>     Attrib V29    -0.09543928720947949
#>     Attrib V3    0.054703099204503905
#>     Attrib V30    -0.019481475828808867
#>     Attrib V31    -0.30513929176130866
#>     Attrib V32    0.11715045609794252
#>     Attrib V33    0.15693940136379034
#>     Attrib V34    -0.008904043148420575
#>     Attrib V35    0.07215906039101173
#>     Attrib V36    -0.12135418311152915
#>     Attrib V37    -0.013206288415556605
#>     Attrib V38    0.049467578826278884
#>     Attrib V39    0.1692174116298299
#>     Attrib V4    0.10170767404824493
#>     Attrib V40    -0.044130344701289806
#>     Attrib V41    -0.24140480010983537
#>     Attrib V42    0.09624370039261189
#>     Attrib V43    0.14971813222045138
#>     Attrib V44    0.18187708226039662
#>     Attrib V45    0.044080074305217654
#>     Attrib V46    0.11225271240250495
#>     Attrib V47    -0.06802617638293801
#>     Attrib V48    0.052604683986924826
#>     Attrib V49    0.0484403498712596
#>     Attrib V5    -0.03902890002004722
#>     Attrib V50    -0.310404116940792
#>     Attrib V51    0.00833058057090211
#>     Attrib V52    0.019133499737833286
#>     Attrib V53    0.12801724407010218
#>     Attrib V54    0.1884966886883432
#>     Attrib V55    -0.0647850521557927
#>     Attrib V56    0.453966394259028
#>     Attrib V57    -0.12477327859576437
#>     Attrib V58    0.3464118842471056
#>     Attrib V59    0.1982477305015194
#>     Attrib V6    -0.15700977186473392
#>     Attrib V60    0.10085250353639698
#>     Attrib V7    -0.05366115148905871
#>     Attrib V8    -0.24819732758357863
#>     Attrib V9    -0.008907771512349835
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.15020463752773758
#>     Attrib V1    0.020888899077195003
#>     Attrib V10    -0.04560159488487023
#>     Attrib V11    -0.024225610035017636
#>     Attrib V12    0.025506945124931592
#>     Attrib V13    -0.0030164411838110297
#>     Attrib V14    0.07903489111388552
#>     Attrib V15    -0.01301180735172878
#>     Attrib V16    0.026534091156158533
#>     Attrib V17    0.10506900511111104
#>     Attrib V18    0.0908403058830314
#>     Attrib V19    0.054685030681186825
#>     Attrib V2    0.03916242800934513
#>     Attrib V20    -0.10696945737949941
#>     Attrib V21    -0.15370849339986253
#>     Attrib V22    -0.06973019527210415
#>     Attrib V23    0.008354514685499661
#>     Attrib V24    -0.08666729970316361
#>     Attrib V25    -0.011672254470445724
#>     Attrib V26    0.002672781644636918
#>     Attrib V27    -0.05562854742123155
#>     Attrib V28    -0.12848278922865994
#>     Attrib V29    -0.11568961728623099
#>     Attrib V3    0.12956751381362316
#>     Attrib V30    -0.05936763166844165
#>     Attrib V31    0.11322996633071371
#>     Attrib V32    0.0015181121797827781
#>     Attrib V33    0.029223894518857423
#>     Attrib V34    0.07211991239421546
#>     Attrib V35    0.1628582244113815
#>     Attrib V36    0.21213085496754613
#>     Attrib V37    0.1933582221833258
#>     Attrib V38    -0.006664565248375666
#>     Attrib V39    -0.05397898489057012
#>     Attrib V4    0.137384093284528
#>     Attrib V40    0.047562307562250654
#>     Attrib V41    0.11681257603546692
#>     Attrib V42    0.02260762376731272
#>     Attrib V43    0.07939459895372254
#>     Attrib V44    -0.022982703706663568
#>     Attrib V45    0.006614564943236616
#>     Attrib V46    -0.024167739973543014
#>     Attrib V47    0.04981004099961793
#>     Attrib V48    -0.0690972973862225
#>     Attrib V49    -0.046064355568835695
#>     Attrib V5    0.09971525248461267
#>     Attrib V50    0.09665810033099112
#>     Attrib V51    0.007209462671719088
#>     Attrib V52    0.07154735385698031
#>     Attrib V53    0.05905747843493296
#>     Attrib V54    -0.017152483217611533
#>     Attrib V55    0.09864773519370972
#>     Attrib V56    0.07327820507851836
#>     Attrib V57    0.16185631151894317
#>     Attrib V58    0.02997623309580802
#>     Attrib V59    0.07629612503839386
#>     Attrib V6    0.11999651142359138
#>     Attrib V60    0.021375575913661612
#>     Attrib V7    0.019052405035419946
#>     Attrib V8    0.03357378667396497
#>     Attrib V9    -0.01963823134035863
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.21387284094095457
#>     Attrib V1    -0.2670985336603865
#>     Attrib V10    -0.08108572851979697
#>     Attrib V11    -0.3230411995768806
#>     Attrib V12    -0.19901076389485142
#>     Attrib V13    -0.17799425190238918
#>     Attrib V14    0.39983566403079096
#>     Attrib V15    -0.040311035927122534
#>     Attrib V16    0.15709886714165686
#>     Attrib V17    0.04628914629341677
#>     Attrib V18    0.22153825808415245
#>     Attrib V19    0.36963948194516316
#>     Attrib V2    -0.13469042751831864
#>     Attrib V20    -0.06273716103875371
#>     Attrib V21    -0.31248349953013965
#>     Attrib V22    -0.29891967026421307
#>     Attrib V23    -0.14550037401017793
#>     Attrib V24    -0.3165220953686288
#>     Attrib V25    0.12249816525304953
#>     Attrib V26    0.26483042172590526
#>     Attrib V27    0.31550252334475026
#>     Attrib V28    0.038395593921554734
#>     Attrib V29    -0.09963328814171331
#>     Attrib V3    0.00865622137967651
#>     Attrib V30    -0.18220992159410196
#>     Attrib V31    0.4707561232373563
#>     Attrib V32    -0.3296784445452939
#>     Attrib V33    -0.32420219252518445
#>     Attrib V34    0.1855162058422064
#>     Attrib V35    0.13621104328482658
#>     Attrib V36    0.6759729596291472
#>     Attrib V37    0.19096008700023864
#>     Attrib V38    0.08929235895887806
#>     Attrib V39    -0.2780906660263092
#>     Attrib V4    0.07875938065756123
#>     Attrib V40    0.10455179381023388
#>     Attrib V41    0.07832127691743117
#>     Attrib V42    -0.289291717056728
#>     Attrib V43    -0.006510436633326287
#>     Attrib V44    -0.1467311281960364
#>     Attrib V45    -0.10016926679417217
#>     Attrib V46    -0.26841132792027306
#>     Attrib V47    9.177007188718492E-5
#>     Attrib V48    -0.19292004615300254
#>     Attrib V49    -0.24019119510470155
#>     Attrib V5    0.0303974741261487
#>     Attrib V50    0.768812894515376
#>     Attrib V51    -0.15443944364164225
#>     Attrib V52    -0.15367035774732352
#>     Attrib V53    -0.23224875049924476
#>     Attrib V54    -0.1764369838002463
#>     Attrib V55    0.30322915941520645
#>     Attrib V56    -0.3858787975051107
#>     Attrib V57    0.5279124771902672
#>     Attrib V58    -0.34580143078159675
#>     Attrib V59    -0.06054536550494214
#>     Attrib V6    0.22791566247753972
#>     Attrib V60    0.012074744882040812
#>     Attrib V7    0.07494898891972965
#>     Attrib V8    0.24927065079034988
#>     Attrib V9    -0.2897331781746896
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    1.1701326187293921
#>     Attrib V1    -0.08569848706753624
#>     Attrib V10    0.8351682016687407
#>     Attrib V11    1.2381516613960235
#>     Attrib V12    0.6389413199756228
#>     Attrib V13    0.7231649796826031
#>     Attrib V14    -0.38833087906310587
#>     Attrib V15    -0.27043558935439693
#>     Attrib V16    -0.9149250836567849
#>     Attrib V17    -0.37360325689393237
#>     Attrib V18    0.011560162102646286
#>     Attrib V19    -0.338664210863958
#>     Attrib V2    0.12288305059411714
#>     Attrib V20    -0.33872872948201393
#>     Attrib V21    0.5011696417221205
#>     Attrib V22    1.0642152654719448
#>     Attrib V23    1.6534334190438273
#>     Attrib V24    1.1204533073135217
#>     Attrib V25    -0.5990283542152346
#>     Attrib V26    0.5796049532779798
#>     Attrib V27    1.5118783818131527
#>     Attrib V28    2.3232061645684303
#>     Attrib V29    2.302638365190167
#>     Attrib V3    -0.14894091571494064
#>     Attrib V30    1.191062946123279
#>     Attrib V31    -0.5041294879216767
#>     Attrib V32    -0.7069302034954748
#>     Attrib V33    -0.7734206044538379
#>     Attrib V34    -0.43219374591631454
#>     Attrib V35    0.23030777215474263
#>     Attrib V36    -1.4351749693506775
#>     Attrib V37    -0.4830932795223669
#>     Attrib V38    -0.9989668339281402
#>     Attrib V39    0.6824122517221312
#>     Attrib V4    -0.2402807488314271
#>     Attrib V40    0.6669246848865084
#>     Attrib V41    1.9304122557398056
#>     Attrib V42    0.8704371066918063
#>     Attrib V43    0.020694355040497384
#>     Attrib V44    0.5317790275517394
#>     Attrib V45    0.3978690482866183
#>     Attrib V46    1.5628043191676713
#>     Attrib V47    0.8208003634520931
#>     Attrib V48    0.7883853992987097
#>     Attrib V49    1.3476638297052117
#>     Attrib V5    1.2915607702730054
#>     Attrib V50    -0.2089787364953508
#>     Attrib V51    1.6281302633950236
#>     Attrib V52    1.6464290338514613
#>     Attrib V53    1.556044156936644
#>     Attrib V54    0.44329605524751103
#>     Attrib V55    -0.5002895881784817
#>     Attrib V56    -0.8720812222354593
#>     Attrib V57    -1.3782060009387525
#>     Attrib V58    0.036839044366966195
#>     Attrib V59    -0.18296218749473186
#>     Attrib V6    0.9174369100229499
#>     Attrib V60    -0.04476525572177685
#>     Attrib V7    -0.5860679060518579
#>     Attrib V8    -0.4284058399412278
#>     Attrib V9    1.3193395849862393
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.23137720505693823
#>     Attrib V1    -0.14217954736557467
#>     Attrib V10    -0.06502904962026408
#>     Attrib V11    -0.24418298364964638
#>     Attrib V12    -0.11218828088113326
#>     Attrib V13    -0.10888137815787527
#>     Attrib V14    0.2982670743614866
#>     Attrib V15    -0.06371547850209026
#>     Attrib V16    0.11159248175321324
#>     Attrib V17    0.052533368612650934
#>     Attrib V18    0.15640937413037476
#>     Attrib V19    0.31776787876344037
#>     Attrib V2    -0.03996956189017002
#>     Attrib V20    -0.026115361651302942
#>     Attrib V21    -0.1559272386338076
#>     Attrib V22    -0.1192980650860256
#>     Attrib V23    -0.04583906815174036
#>     Attrib V24    -0.15752016006854738
#>     Attrib V25    0.08862034445660842
#>     Attrib V26    0.07365104917481517
#>     Attrib V27    0.19730186000314517
#>     Attrib V28    0.008857048720731732
#>     Attrib V29    -0.07281664236542307
#>     Attrib V3    0.016546107243463833
#>     Attrib V30    -0.1306900601907762
#>     Attrib V31    0.28481292005222913
#>     Attrib V32    -0.2124100256876594
#>     Attrib V33    -0.1166746251152474
#>     Attrib V34    0.08693389665111553
#>     Attrib V35    0.11097734067078771
#>     Attrib V36    0.4215566525000337
#>     Attrib V37    0.15246317729909273
#>     Attrib V38    -0.010280081441101372
#>     Attrib V39    -0.1994650630369186
#>     Attrib V4    0.09344901949850172
#>     Attrib V40    0.01538449412959596
#>     Attrib V41    0.03722964262510592
#>     Attrib V42    -0.10394136556969893
#>     Attrib V43    -0.01650844157709262
#>     Attrib V44    -0.12524538080132935
#>     Attrib V45    -0.09907023881033601
#>     Attrib V46    -0.23760486340220405
#>     Attrib V47    -0.06752317487528325
#>     Attrib V48    -0.13050782812071132
#>     Attrib V49    -0.1951846154443695
#>     Attrib V5    0.019472298502102078
#>     Attrib V50    0.46704142367470897
#>     Attrib V51    -0.13163055129405463
#>     Attrib V52    -0.13799732472983225
#>     Attrib V53    -0.13761059107162507
#>     Attrib V54    -0.09079445001282126
#>     Attrib V55    0.1859925873193974
#>     Attrib V56    -0.19665714258132994
#>     Attrib V57    0.3661117964234061
#>     Attrib V58    -0.1783406371910279
#>     Attrib V59    0.011326852458826397
#>     Attrib V6    0.17526059590656243
#>     Attrib V60    0.10672012401716902
#>     Attrib V7    0.0396524277914572
#>     Attrib V8    0.17193278258156952
#>     Attrib V9    -0.23477049779073175
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.14055142950808416
#>     Attrib V1    0.529398538797753
#>     Attrib V10    -0.20117398643380768
#>     Attrib V11    0.06316964877453403
#>     Attrib V12    -0.05748747527855404
#>     Attrib V13    -0.04506517033033718
#>     Attrib V14    -0.40927743003110423
#>     Attrib V15    0.1896835056994552
#>     Attrib V16    0.04811827339576256
#>     Attrib V17    0.2893154716179049
#>     Attrib V18    0.04697206412280003
#>     Attrib V19    -0.16713910541973953
#>     Attrib V2    0.11470788759176334
#>     Attrib V20    0.35985095417646207
#>     Attrib V21    0.5754409084535549
#>     Attrib V22    0.22244445985817593
#>     Attrib V23    -0.09964444365111155
#>     Attrib V24    0.020857825426128244
#>     Attrib V25    -0.2877587032538509
#>     Attrib V26    -0.2952329200309346
#>     Attrib V27    -0.571286625709511
#>     Attrib V28    -0.2910232026910882
#>     Attrib V29    0.03182487625730612
#>     Attrib V3    4.464470197858448E-4
#>     Attrib V30    0.1996903429649926
#>     Attrib V31    -0.752936828178479
#>     Attrib V32    0.1359016913882809
#>     Attrib V33    0.2409898259501262
#>     Attrib V34    -0.16805733791711103
#>     Attrib V35    -0.005881796619761651
#>     Attrib V36    -0.3216577808899099
#>     Attrib V37    -0.019052747155208945
#>     Attrib V38    0.23601903024407758
#>     Attrib V39    0.428664346500981
#>     Attrib V4    0.10762155317076592
#>     Attrib V40    -0.2882594254733347
#>     Attrib V41    -0.42585784701628693
#>     Attrib V42    0.22878129211203094
#>     Attrib V43    0.12823864686288436
#>     Attrib V44    0.5936565667181033
#>     Attrib V45    0.3969764600588165
#>     Attrib V46    0.23319340301569783
#>     Attrib V47    -0.048449139331309524
#>     Attrib V48    0.17035386234570482
#>     Attrib V49    0.19524893359844855
#>     Attrib V5    -0.18897969859116587
#>     Attrib V50    -0.5931911291843356
#>     Attrib V51    0.06152046272842642
#>     Attrib V52    0.03247785725291797
#>     Attrib V53    0.15914302858911392
#>     Attrib V54    0.3151881832307547
#>     Attrib V55    -0.2768094340828162
#>     Attrib V56    0.5969758641585928
#>     Attrib V57    -0.3955749139251111
#>     Attrib V58    0.5245318326088566
#>     Attrib V59    0.35656188964458635
#>     Attrib V6    -0.33873911554907155
#>     Attrib V60    0.06974893832506882
#>     Attrib V7    -0.08699862589471373
#>     Attrib V8    -0.26737347270450146
#>     Attrib V9    0.1375468880207492
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.6338181944311393
#>     Attrib V1    -0.13036693406485142
#>     Attrib V10    -0.5618916171841812
#>     Attrib V11    -0.6276232570305952
#>     Attrib V12    -0.14149394464069787
#>     Attrib V13    -0.32297588355308793
#>     Attrib V14    0.2581599674363495
#>     Attrib V15    -0.005663173980199454
#>     Attrib V16    0.5092370602283272
#>     Attrib V17    0.13952456779813294
#>     Attrib V18    0.16741607785157175
#>     Attrib V19    0.35902592378803777
#>     Attrib V2    -0.17054429152813994
#>     Attrib V20    0.14879003768737306
#>     Attrib V21    -0.4265680924183215
#>     Attrib V22    -0.5946140319858215
#>     Attrib V23    -0.7419224815621234
#>     Attrib V24    -0.6001073899252686
#>     Attrib V25    0.21303753756957433
#>     Attrib V26    -0.2867818940053923
#>     Attrib V27    -0.6903068900609468
#>     Attrib V28    -1.4285793904205863
#>     Attrib V29    -1.412426837815124
#>     Attrib V3    0.12463968861071062
#>     Attrib V30    -0.8873851198521013
#>     Attrib V31    0.5017331190702057
#>     Attrib V32    0.17935448216955885
#>     Attrib V33    0.10764490212912341
#>     Attrib V34    0.43134769685911994
#>     Attrib V35    0.08532324147453454
#>     Attrib V36    0.990930235045535
#>     Attrib V37    0.20123805245276138
#>     Attrib V38    0.3865130127548508
#>     Attrib V39    -0.38226485389408954
#>     Attrib V4    0.12494630993055948
#>     Attrib V40    -0.1390419601300381
#>     Attrib V41    -0.7660562507336492
#>     Attrib V42    -0.7432300530538138
#>     Attrib V43    -0.060825906593058116
#>     Attrib V44    -0.3461589974022196
#>     Attrib V45    -0.2642859284365669
#>     Attrib V46    -0.833155266921842
#>     Attrib V47    -0.5598203390618299
#>     Attrib V48    -0.7643045182877215
#>     Attrib V49    -0.9499655974916466
#>     Attrib V5    -0.5300321730126653
#>     Attrib V50    0.5502021682434937
#>     Attrib V51    -0.8634765332216147
#>     Attrib V52    -0.8928951692697767
#>     Attrib V53    -0.8512443359063464
#>     Attrib V54    -0.33112541384448746
#>     Attrib V55    0.3998700991832108
#>     Attrib V56    0.10409567604489323
#>     Attrib V57    0.8750661858127166
#>     Attrib V58    -0.2724223987828553
#>     Attrib V59    -0.08161446205746879
#>     Attrib V6    -0.2119461859929758
#>     Attrib V60    0.07235087944964434
#>     Attrib V7    0.3966980501641265
#>     Attrib V8    0.2351112854727011
#>     Attrib V9    -0.8061902501772542
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.023709792538954413
#>     Attrib V1    0.45630026965566345
#>     Attrib V10    -0.2812074366516788
#>     Attrib V11    0.0584543708143211
#>     Attrib V12    -0.041918329743897524
#>     Attrib V13    -0.06718685113720169
#>     Attrib V14    -0.29750124770870373
#>     Attrib V15    0.24045053445525238
#>     Attrib V16    0.08363080766745158
#>     Attrib V17    0.3322708343847421
#>     Attrib V18    0.007975517309680082
#>     Attrib V19    -0.18643683929191768
#>     Attrib V2    0.11637080941493155
#>     Attrib V20    0.438867224752732
#>     Attrib V21    0.5960046616281465
#>     Attrib V22    0.2878749786508646
#>     Attrib V23    -0.0353899694431593
#>     Attrib V24    0.11499219231089115
#>     Attrib V25    -0.19192688949954104
#>     Attrib V26    -0.4415172925998407
#>     Attrib V27    -0.6521220680060149
#>     Attrib V28    -0.32579112771421087
#>     Attrib V29    0.018074885183480747
#>     Attrib V3    0.10597331106272648
#>     Attrib V30    0.10571732274083187
#>     Attrib V31    -0.7846997749033029
#>     Attrib V32    0.21652833468005395
#>     Attrib V33    0.32736599639435576
#>     Attrib V34    -0.2021216631862451
#>     Attrib V35    -0.06505594495365583
#>     Attrib V36    -0.40198540931166843
#>     Attrib V37    -0.09177336189390661
#>     Attrib V38    0.17599742780938957
#>     Attrib V39    0.3817533165187974
#>     Attrib V4    0.1157704781942807
#>     Attrib V40    -0.24937280666892125
#>     Attrib V41    -0.38866045638584984
#>     Attrib V42    0.27758655389036885
#>     Attrib V43    0.20796705459786147
#>     Attrib V44    0.42943751822170645
#>     Attrib V45    0.3339165792915938
#>     Attrib V46    0.25470134299999164
#>     Attrib V47    0.015220388156259358
#>     Attrib V48    0.114152408708198
#>     Attrib V49    0.17164507194205877
#>     Attrib V5    -0.18018205981677599
#>     Attrib V50    -0.6042079982152023
#>     Attrib V51    0.07949036992918762
#>     Attrib V52    0.06680749147825278
#>     Attrib V53    0.1307380277066262
#>     Attrib V54    0.32074016816130524
#>     Attrib V55    -0.22456304844191782
#>     Attrib V56    0.7429165058981622
#>     Attrib V57    -0.3344726061448369
#>     Attrib V58    0.5351771961714357
#>     Attrib V59    0.33131409388381006
#>     Attrib V6    -0.30636965926232207
#>     Attrib V60    0.08549978410881423
#>     Attrib V7    -0.0013282481905620737
#>     Attrib V8    -0.21249598406568082
#>     Attrib V9    0.10191916525051178
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.2431589159494945
#>     Attrib V1    -0.1916994479719702
#>     Attrib V10    -0.01963316473308612
#>     Attrib V11    -0.28600151259334033
#>     Attrib V12    -0.16417421547051136
#>     Attrib V13    -0.09673446216007084
#>     Attrib V14    0.35250108498125854
#>     Attrib V15    -0.04201800706224645
#>     Attrib V16    0.18721995132819946
#>     Attrib V17    0.08805076482409639
#>     Attrib V18    0.2444878857896591
#>     Attrib V19    0.3228043905065391
#>     Attrib V2    -0.06027414002911903
#>     Attrib V20    -0.07871844831818836
#>     Attrib V21    -0.23096884799162837
#>     Attrib V22    -0.19420153144258273
#>     Attrib V23    -0.1149520396561208
#>     Attrib V24    -0.2571002216518403
#>     Attrib V25    0.15846357109511133
#>     Attrib V26    0.22605533753132778
#>     Attrib V27    0.2630045785169336
#>     Attrib V28    0.002605366230858993
#>     Attrib V29    -0.13024398553807123
#>     Attrib V3    0.019953802692618348
#>     Attrib V30    -0.11384947102941767
#>     Attrib V31    0.5030537844125856
#>     Attrib V32    -0.3009465473251887
#>     Attrib V33    -0.2413184254626903
#>     Attrib V34    0.14286797574899998
#>     Attrib V35    0.14154199880704627
#>     Attrib V36    0.5576180926487926
#>     Attrib V37    0.22623544444494093
#>     Attrib V38    0.028506317305151792
#>     Attrib V39    -0.19844360566476454
#>     Attrib V4    0.08626442452018862
#>     Attrib V40    0.08545073456819959
#>     Attrib V41    0.06598502520644488
#>     Attrib V42    -0.16489581102706022
#>     Attrib V43    -0.05715286651000113
#>     Attrib V44    -0.16699500951965665
#>     Attrib V45    -0.06981277722811047
#>     Attrib V46    -0.26350454980664945
#>     Attrib V47    -0.07406232951925426
#>     Attrib V48    -0.1708101544997996
#>     Attrib V49    -0.22985513713032124
#>     Attrib V5    0.021447286286021414
#>     Attrib V50    0.605577482318552
#>     Attrib V51    -0.18017162440586737
#>     Attrib V52    -0.1885200689296049
#>     Attrib V53    -0.17837181456283177
#>     Attrib V54    -0.1330102083692211
#>     Attrib V55    0.22623947413601544
#>     Attrib V56    -0.2916067408868484
#>     Attrib V57    0.4088361596914737
#>     Attrib V58    -0.26785451648864267
#>     Attrib V59    -0.013211039276722509
#>     Attrib V6    0.18941979046109922
#>     Attrib V60    0.06473428684961292
#>     Attrib V7    0.05444573107163825
#>     Attrib V8    0.19276294060708982
#>     Attrib V9    -0.3096357356075593
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.1357676427962842
#>     Attrib V1    0.15503711001241413
#>     Attrib V10    -0.1029816775558308
#>     Attrib V11    0.015044253214607877
#>     Attrib V12    -0.021100827483388714
#>     Attrib V13    0.03622644770771775
#>     Attrib V14    0.004084683658093492
#>     Attrib V15    0.07977521292241471
#>     Attrib V16    0.023843549534460606
#>     Attrib V17    0.11149484506242166
#>     Attrib V18    0.06522479536567448
#>     Attrib V19    -0.02042495422397122
#>     Attrib V2    0.12287500301496335
#>     Attrib V20    0.06663535949948744
#>     Attrib V21    -0.03356635264262608
#>     Attrib V22    -0.020685690341524347
#>     Attrib V23    -0.015186981429506462
#>     Attrib V24    0.015799772425435604
#>     Attrib V25    -0.0856763911301573
#>     Attrib V26    -0.07383823240211602
#>     Attrib V27    -0.1633075059788547
#>     Attrib V28    -0.16290034198367073
#>     Attrib V29    -0.0761356628392083
#>     Attrib V3    0.042910207412798315
#>     Attrib V30    -0.03037287412755628
#>     Attrib V31    -0.07698491647785842
#>     Attrib V32    0.038654223678461094
#>     Attrib V33    0.13133404072311747
#>     Attrib V34    0.0927891155450395
#>     Attrib V35    0.15908523744276443
#>     Attrib V36    0.004256989526174274
#>     Attrib V37    0.06999381375087056
#>     Attrib V38    0.08282111828350344
#>     Attrib V39    0.0728868820132191
#>     Attrib V4    0.11507188181702013
#>     Attrib V40    0.014477291619349646
#>     Attrib V41    -0.07134722416337957
#>     Attrib V42    0.06782792563470218
#>     Attrib V43    0.10796997406077001
#>     Attrib V44    0.12274994826841419
#>     Attrib V45    0.03457691835661356
#>     Attrib V46    0.06481392944239026
#>     Attrib V47    0.03443892222992004
#>     Attrib V48    0.052827195975688496
#>     Attrib V49    0.03475590332174942
#>     Attrib V5    0.02396041906954582
#>     Attrib V50    -0.0884124431854063
#>     Attrib V51    0.034584378110907865
#>     Attrib V52    0.06216407573322664
#>     Attrib V53    0.16383875277927262
#>     Attrib V54    0.14372957444350534
#>     Attrib V55    0.04773355385201053
#>     Attrib V56    0.18347768047288732
#>     Attrib V57    -0.010312188314666595
#>     Attrib V58    0.13080797367007305
#>     Attrib V59    0.1082144252570282
#>     Attrib V6    -0.03556485407067768
#>     Attrib V60    0.06242950673847414
#>     Attrib V7    -0.037884576853185914
#>     Attrib V8    -0.08995263328238595
#>     Attrib V9    0.008400745004860093
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.17347712780662386
#>     Attrib V1    0.08006365928220828
#>     Attrib V10    -0.07379201754939359
#>     Attrib V11    -0.020193057530084216
#>     Attrib V12    0.009700060255651172
#>     Attrib V13    -0.03628229686003235
#>     Attrib V14    0.08518549512529733
#>     Attrib V15    0.044814274863917494
#>     Attrib V16    0.07747329187822118
#>     Attrib V17    0.0390418503520785
#>     Attrib V18    0.11357806716566916
#>     Attrib V19    -0.021654862573551467
#>     Attrib V2    0.06082818156174176
#>     Attrib V20    -0.04700417461400821
#>     Attrib V21    -0.0740242964138752
#>     Attrib V22    -0.08299860316499322
#>     Attrib V23    0.00818357508951017
#>     Attrib V24    -0.041948259758412605
#>     Attrib V25    -0.0725192546333026
#>     Attrib V26    -0.07830073767062841
#>     Attrib V27    -0.06388283353526568
#>     Attrib V28    -0.05190232099945316
#>     Attrib V29    -0.05638868824080219
#>     Attrib V3    0.13195178589022752
#>     Attrib V30    0.01632201134817144
#>     Attrib V31    0.029352441837728522
#>     Attrib V32    0.006167168456943706
#>     Attrib V33    0.07414507524186811
#>     Attrib V34    0.09966684193736347
#>     Attrib V35    0.1287970100953606
#>     Attrib V36    0.17889064910059607
#>     Attrib V37    0.11394360848210498
#>     Attrib V38    -0.006060724595768766
#>     Attrib V39    0.04015307306575598
#>     Attrib V4    0.07695787713163946
#>     Attrib V40    0.05478199544340582
#>     Attrib V41    0.036464055281547926
#>     Attrib V42    0.07074337222626471
#>     Attrib V43    0.015284050744066685
#>     Attrib V44    0.030392432320324462
#>     Attrib V45    0.03557580402454513
#>     Attrib V46    0.012858282275744336
#>     Attrib V47    0.015347985740540398
#>     Attrib V48    -0.04122346654314855
#>     Attrib V49    0.018917342002334803
#>     Attrib V5    0.09157928643038431
#>     Attrib V50    0.034739674440722124
#>     Attrib V51    0.06333565743202621
#>     Attrib V52    0.07265926303990758
#>     Attrib V53    0.0776947507269439
#>     Attrib V54    -0.00881575489762074
#>     Attrib V55    0.04848493388573961
#>     Attrib V56    0.09055891139689713
#>     Attrib V57    0.11952122545057192
#>     Attrib V58    0.12813912244968292
#>     Attrib V59    0.033817474497563234
#>     Attrib V6    0.10456973834800574
#>     Attrib V60    0.03873905998314045
#>     Attrib V7    0.025571957975691735
#>     Attrib V8    0.05064048548894637
#>     Attrib V9    0.015966590702345573
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
