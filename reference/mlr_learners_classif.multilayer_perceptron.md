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
#>     Threshold    0.10140478306883319
#>     Node 2    2.415792684281817
#>     Node 3    1.6659637239253537
#>     Node 4    1.0664256126011238
#>     Node 5    -2.1803898135532664
#>     Node 6    1.2561297358566696
#>     Node 7    2.466034710698074
#>     Node 8    0.8722319861039391
#>     Node 9    3.458304734924913
#>     Node 10    -1.3626095866283836
#>     Node 11    1.053427442859329
#>     Node 12    1.5302239576304275
#>     Node 13    0.5392915757174708
#>     Node 14    1.2992405762832824
#>     Node 15    -3.0040270757352863
#>     Node 16    -0.8102255845314086
#>     Node 17    0.9343314692721464
#>     Node 18    0.15874392783753916
#>     Node 19    2.4843239960429093
#>     Node 20    1.6234683643482317
#>     Node 21    -2.4225199336748644
#>     Node 22    0.6921128892536004
#>     Node 23    1.2921851304486058
#>     Node 24    -1.3687189860823499
#>     Node 25    4.881571282966296
#>     Node 26    0.020105851165544156
#>     Node 27    1.3856316840386986
#>     Node 28    -2.2327007327129733
#>     Node 29    1.0708152262405477
#>     Node 30    0.4730634945629793
#>     Node 31    1.0710711656930103
#>     Node 32    0.5031750739552715
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.07691734187833409
#>     Node 2    -2.4728591850769734
#>     Node 3    -1.6498490030535589
#>     Node 4    -1.0270454690870383
#>     Node 5    2.192523464672797
#>     Node 6    -1.2387511663477557
#>     Node 7    -2.4422528299995045
#>     Node 8    -0.9031727802219135
#>     Node 9    -3.455872297791626
#>     Node 10    1.3078183219377233
#>     Node 11    -1.02431102250939
#>     Node 12    -1.610431709847757
#>     Node 13    -0.4879885208941214
#>     Node 14    -1.2342285691570523
#>     Node 15    2.9861643391687913
#>     Node 16    0.8034039065883084
#>     Node 17    -0.902969623424025
#>     Node 18    -0.11703373704493138
#>     Node 19    -2.473998562612651
#>     Node 20    -1.6101432442462733
#>     Node 21    2.4820642371682293
#>     Node 22    -0.7469635322008487
#>     Node 23    -1.3483874157150182
#>     Node 24    1.3692611781731052
#>     Node 25    -4.872901337368078
#>     Node 26    -0.10032590768762725
#>     Node 27    -1.4226216743114317
#>     Node 28    2.1963086793288085
#>     Node 29    -1.1085889023971547
#>     Node 30    -0.39844427028342083
#>     Node 31    -1.0225000443241512
#>     Node 32    -0.5234046761933817
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.21290911649734195
#>     Attrib V1    -0.18291849483469289
#>     Attrib V10    0.4668006216303106
#>     Attrib V11    0.6554602416938736
#>     Attrib V12    0.836407042210137
#>     Attrib V13    0.6007663576254186
#>     Attrib V14    0.03259474672524682
#>     Attrib V15    -0.9215066938762972
#>     Attrib V16    -0.7371101529876118
#>     Attrib V17    -0.4654358674188877
#>     Attrib V18    0.06323768739738718
#>     Attrib V19    0.20763221881387864
#>     Attrib V2    -0.28853799095174837
#>     Attrib V20    0.054269796044255546
#>     Attrib V21    0.6472869230131826
#>     Attrib V22    0.6252268721972124
#>     Attrib V23    0.4644425734445268
#>     Attrib V24    0.5853818581327973
#>     Attrib V25    0.3830384848449865
#>     Attrib V26    0.22688728658058038
#>     Attrib V27    0.7558858831879479
#>     Attrib V28    0.8042639351915236
#>     Attrib V29    0.27104867723343523
#>     Attrib V3    -0.01752260161614248
#>     Attrib V30    0.7221633587592806
#>     Attrib V31    -0.4899743417763701
#>     Attrib V32    -0.22594977743277017
#>     Attrib V33    0.33764736901551434
#>     Attrib V34    0.05596316656657812
#>     Attrib V35    -0.07125839384820302
#>     Attrib V36    -0.7138333404319689
#>     Attrib V37    -0.7613104126552199
#>     Attrib V38    -0.03587532280092563
#>     Attrib V39    0.05230989929418619
#>     Attrib V4    0.18823682508755826
#>     Attrib V40    0.4985204162030317
#>     Attrib V41    0.7803504131204495
#>     Attrib V42    0.7986545273282282
#>     Attrib V43    0.6560691849912735
#>     Attrib V44    0.6199169757672323
#>     Attrib V45    0.4347702108122531
#>     Attrib V46    0.08723819983403924
#>     Attrib V47    0.06348570222763025
#>     Attrib V48    0.9965371222190917
#>     Attrib V49    0.3211122778688081
#>     Attrib V5    -0.005225225024796244
#>     Attrib V50    -0.9062764751909475
#>     Attrib V51    0.13804726538222586
#>     Attrib V52    0.5723382244540552
#>     Attrib V53    0.2058262193837829
#>     Attrib V54    -0.3530230466943517
#>     Attrib V55    -0.8459272793407993
#>     Attrib V56    -0.16008440889998501
#>     Attrib V57    -0.672480654636281
#>     Attrib V58    0.05391371096237065
#>     Attrib V59    0.6129643920797206
#>     Attrib V6    -0.08676316466432768
#>     Attrib V60    0.7599805144532482
#>     Attrib V7    -0.45023163827792345
#>     Attrib V8    -0.12188541579821313
#>     Attrib V9    1.0999526025481015
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.3403313992320137
#>     Attrib V1    -0.1445895977782521
#>     Attrib V10    0.18051089091113465
#>     Attrib V11    0.41122944976786374
#>     Attrib V12    0.5146742856497896
#>     Attrib V13    0.2954172205338857
#>     Attrib V14    0.004419517014003097
#>     Attrib V15    -0.5097867077863995
#>     Attrib V16    -0.46659897676698503
#>     Attrib V17    -0.34218839448557453
#>     Attrib V18    -0.11120956501617903
#>     Attrib V19    0.03272688634138507
#>     Attrib V2    -0.23318976573794595
#>     Attrib V20    -0.028452907028139938
#>     Attrib V21    0.433882647658493
#>     Attrib V22    0.371575480258154
#>     Attrib V23    0.14098508173911162
#>     Attrib V24    0.3034122516207001
#>     Attrib V25    0.07965954949571469
#>     Attrib V26    -0.07152944200042105
#>     Attrib V27    0.4006946304912647
#>     Attrib V28    0.5141028432468712
#>     Attrib V29    0.15751242225815856
#>     Attrib V3    -0.1256010719462287
#>     Attrib V30    0.6380254848767397
#>     Attrib V31    -0.4009082424445005
#>     Attrib V32    -0.20150068366486507
#>     Attrib V33    0.3549153223751259
#>     Attrib V34    0.06387432015423869
#>     Attrib V35    -0.09664564542126161
#>     Attrib V36    -0.5898024297024038
#>     Attrib V37    -0.668108482926007
#>     Attrib V38    -0.09077427814564448
#>     Attrib V39    0.01519778945118438
#>     Attrib V4    0.1982329922570534
#>     Attrib V40    0.21746367971878558
#>     Attrib V41    0.37016477449500584
#>     Attrib V42    0.46092505627910635
#>     Attrib V43    0.438834791429982
#>     Attrib V44    0.5334534064709527
#>     Attrib V45    0.395840392274375
#>     Attrib V46    0.006092780367422985
#>     Attrib V47    -0.06441900049893493
#>     Attrib V48    0.6801269030086892
#>     Attrib V49    0.1636341098764645
#>     Attrib V5    -0.12634807153737548
#>     Attrib V50    -0.7878364170775085
#>     Attrib V51    -0.11649016543848749
#>     Attrib V52    0.35574694091607717
#>     Attrib V53    0.08787169868833548
#>     Attrib V54    -0.11874576065983833
#>     Attrib V55    -0.29587167986812635
#>     Attrib V56    -0.10368834164391148
#>     Attrib V57    -0.15947275211131998
#>     Attrib V58    0.2537258062485065
#>     Attrib V59    0.5510624644246236
#>     Attrib V6    -0.18191376704160828
#>     Attrib V60    0.45786833809841915
#>     Attrib V7    -0.42336292896862493
#>     Attrib V8    0.05111389943456635
#>     Attrib V9    0.7725730800287098
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.10626707527267312
#>     Attrib V1    0.04033850137202836
#>     Attrib V10    -0.03406813580959939
#>     Attrib V11    0.05983154009405901
#>     Attrib V12    -0.01083957858154628
#>     Attrib V13    0.0019752324926442873
#>     Attrib V14    0.09893890362593308
#>     Attrib V15    -0.028771957369456296
#>     Attrib V16    -0.08157392298871356
#>     Attrib V17    -0.08412777983091818
#>     Attrib V18    -0.04634226404130441
#>     Attrib V19    0.03653956444151402
#>     Attrib V2    -0.052728455474320826
#>     Attrib V20    0.1909455821045821
#>     Attrib V21    0.5185054558617469
#>     Attrib V22    0.24807958064100974
#>     Attrib V23    -0.011223788456534928
#>     Attrib V24    -0.02430383494271662
#>     Attrib V25    -0.3807386083269392
#>     Attrib V26    -0.5069095777221022
#>     Attrib V27    -0.18173020515500996
#>     Attrib V28    0.026300653494865392
#>     Attrib V29    0.016712097923536267
#>     Attrib V3    -0.05516735441585809
#>     Attrib V30    0.3016575443262099
#>     Attrib V31    -0.42644611090070095
#>     Attrib V32    -0.2735255346506509
#>     Attrib V33    0.22069216451558515
#>     Attrib V34    0.0376058066251208
#>     Attrib V35    -0.11739651871982174
#>     Attrib V36    -0.4094827568411057
#>     Attrib V37    -0.4234423665800727
#>     Attrib V38    0.0587962793219519
#>     Attrib V39    0.04098536893106488
#>     Attrib V4    0.022131742179027407
#>     Attrib V40    -0.017742746904376064
#>     Attrib V41    0.02428695044923789
#>     Attrib V42    0.18868582977591866
#>     Attrib V43    0.16841865993181357
#>     Attrib V44    0.28751020141318556
#>     Attrib V45    0.31503140146691044
#>     Attrib V46    -0.07103073245138526
#>     Attrib V47    -0.1778219388853899
#>     Attrib V48    0.3386810214827248
#>     Attrib V49    0.06734020657895132
#>     Attrib V5    -0.12771917208928749
#>     Attrib V50    -0.37770202865157154
#>     Attrib V51    -0.027434635234885128
#>     Attrib V52    0.14890702006963188
#>     Attrib V53    0.05030794295125452
#>     Attrib V54    0.23346489969532558
#>     Attrib V55    0.06538722448087168
#>     Attrib V56    0.10422924841362491
#>     Attrib V57    0.14826477253678294
#>     Attrib V58    0.26646230602425974
#>     Attrib V59    0.43736690673206413
#>     Attrib V6    -0.152754565396374
#>     Attrib V60    0.30665209558703005
#>     Attrib V7    -0.19061804953917685
#>     Attrib V8    0.063728273817502
#>     Attrib V9    0.4264433254584872
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.34144179014589665
#>     Attrib V1    -0.009648640911372052
#>     Attrib V10    0.10230580689517176
#>     Attrib V11    -0.08146632982528298
#>     Attrib V12    0.023184542392742438
#>     Attrib V13    0.05108346574822137
#>     Attrib V14    -0.01564108154806056
#>     Attrib V15    0.13704758687625998
#>     Attrib V16    0.028999291942572857
#>     Attrib V17    0.0762703009224867
#>     Attrib V18    -0.030623120826046103
#>     Attrib V19    -0.18171674772208954
#>     Attrib V2    0.3444783564694521
#>     Attrib V20    -0.5402985595645229
#>     Attrib V21    -0.9976843064488377
#>     Attrib V22    -0.677515751609047
#>     Attrib V23    -0.1393033725090256
#>     Attrib V24    0.0333671939994799
#>     Attrib V25    0.9488943960830991
#>     Attrib V26    1.1262057482303984
#>     Attrib V27    0.4245018907346237
#>     Attrib V28    0.2216645005291491
#>     Attrib V29    0.27485556773463715
#>     Attrib V3    0.3534462539055996
#>     Attrib V30    -0.41406702927659117
#>     Attrib V31    1.229985193345777
#>     Attrib V32    0.7726686413734332
#>     Attrib V33    -0.5018232511634872
#>     Attrib V34    -0.01859777549910588
#>     Attrib V35    0.41558907528090483
#>     Attrib V36    0.8686793461666954
#>     Attrib V37    0.8134726386021849
#>     Attrib V38    -0.40814576075007836
#>     Attrib V39    -0.08531288948965128
#>     Attrib V4    -0.04624942556514538
#>     Attrib V40    0.11180719413053027
#>     Attrib V41    -0.1655762140660582
#>     Attrib V42    -0.6159714513408585
#>     Attrib V43    -0.6060789328879744
#>     Attrib V44    -0.5524802230794861
#>     Attrib V45    -0.49389553984524254
#>     Attrib V46    0.04696605617681959
#>     Attrib V47    0.32502815927410694
#>     Attrib V48    -0.4759327504171027
#>     Attrib V49    0.0011432943908848362
#>     Attrib V5    0.3416872720459438
#>     Attrib V50    0.7485238508431674
#>     Attrib V51    0.08993338248661341
#>     Attrib V52    -0.3084519131820863
#>     Attrib V53    -0.2919442436503758
#>     Attrib V54    -0.8851921354801897
#>     Attrib V55    -0.08639159003664235
#>     Attrib V56    -0.2866309637487487
#>     Attrib V57    -0.23331803995459752
#>     Attrib V58    -0.6227285910874414
#>     Attrib V59    -0.8357633158179959
#>     Attrib V6    0.29521152134097345
#>     Attrib V60    -0.5979370083230044
#>     Attrib V7    0.27689039199807997
#>     Attrib V8    -0.3837879039305486
#>     Attrib V9    -0.7690122613446244
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.2879575231664706
#>     Attrib V1    0.10784948572205771
#>     Attrib V10    -0.08374855815408311
#>     Attrib V11    0.06974528137123578
#>     Attrib V12    0.05376073289895412
#>     Attrib V13    -0.08136087170613206
#>     Attrib V14    0.024047551558181432
#>     Attrib V15    -0.10819437767817218
#>     Attrib V16    -0.025082224560674937
#>     Attrib V17    -0.09920925648879424
#>     Attrib V18    0.025566555157276218
#>     Attrib V19    0.04349606888973361
#>     Attrib V2    -0.06942204792841064
#>     Attrib V20    0.23424881543800147
#>     Attrib V21    0.5907111855934818
#>     Attrib V22    0.29362103550688456
#>     Attrib V23    -0.026630575693617122
#>     Attrib V24    0.03135307927537921
#>     Attrib V25    -0.36668094399816786
#>     Attrib V26    -0.579392640988755
#>     Attrib V27    -0.14372961623277242
#>     Attrib V28    -0.07676121178641747
#>     Attrib V29    -0.077200849575821
#>     Attrib V3    -0.11300934917740293
#>     Attrib V30    0.34793421681190767
#>     Attrib V31    -0.5370761374117569
#>     Attrib V32    -0.31831947491799106
#>     Attrib V33    0.25429365051975295
#>     Attrib V34    0.004245297273438848
#>     Attrib V35    -0.15365971885743093
#>     Attrib V36    -0.5206568216282668
#>     Attrib V37    -0.5054968656523654
#>     Attrib V38    0.11546241475031972
#>     Attrib V39    0.018985354507952402
#>     Attrib V4    0.07532507136854093
#>     Attrib V40    -0.05656868393278521
#>     Attrib V41    0.11951218781904917
#>     Attrib V42    0.273748613611492
#>     Attrib V43    0.2542353671131537
#>     Attrib V44    0.3209868707562147
#>     Attrib V45    0.3167624312824617
#>     Attrib V46    -0.029705292630818725
#>     Attrib V47    -0.19856089462524185
#>     Attrib V48    0.347933914260148
#>     Attrib V49    0.017153412599062515
#>     Attrib V5    -0.17110459483112767
#>     Attrib V50    -0.433247186617706
#>     Attrib V51    -0.09207185522533291
#>     Attrib V52    0.1276432967733683
#>     Attrib V53    0.10626983920828163
#>     Attrib V54    0.3260789146999689
#>     Attrib V55    0.047465879588387105
#>     Attrib V56    0.12060610246334946
#>     Attrib V57    0.1874116033660077
#>     Attrib V58    0.33532866459783284
#>     Attrib V59    0.5738875410214356
#>     Attrib V6    -0.10118031820411436
#>     Attrib V60    0.43177099317147244
#>     Attrib V7    -0.19484081905125264
#>     Attrib V8    0.15506786753667595
#>     Attrib V9    0.5087240079017633
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.4641081182264487
#>     Attrib V1    0.1384238377271862
#>     Attrib V10    0.4770519849981847
#>     Attrib V11    0.7732972721152123
#>     Attrib V12    0.8337660915738713
#>     Attrib V13    0.5818112759681676
#>     Attrib V14    0.1763796848134046
#>     Attrib V15    -0.7290819561192607
#>     Attrib V16    -0.6520077432619511
#>     Attrib V17    -0.548522484752079
#>     Attrib V18    -0.10582578441037435
#>     Attrib V19    0.09999655743518154
#>     Attrib V2    0.04898513511101911
#>     Attrib V20    -0.11704514167965059
#>     Attrib V21    0.42945478288677263
#>     Attrib V22    0.2701454856339972
#>     Attrib V23    0.06348470998619503
#>     Attrib V24    0.31089973019875516
#>     Attrib V25    0.3802627546635811
#>     Attrib V26    0.5951297409463973
#>     Attrib V27    1.0436913913076336
#>     Attrib V28    1.3025199776368466
#>     Attrib V29    1.0090717301453878
#>     Attrib V3    0.2432919512775408
#>     Attrib V30    0.8376015228161536
#>     Attrib V31    -0.2342921902323658
#>     Attrib V32    -0.1367850985063177
#>     Attrib V33    -0.03660703360560672
#>     Attrib V34    -0.2048633696530283
#>     Attrib V35    0.032501640042874924
#>     Attrib V36    -0.3743226235127802
#>     Attrib V37    -0.45348973662799247
#>     Attrib V38    -0.03160208832954586
#>     Attrib V39    0.23743118332947288
#>     Attrib V4    0.6556316642468986
#>     Attrib V40    0.5199615137440879
#>     Attrib V41    0.6455523580813358
#>     Attrib V42    0.35407286161201157
#>     Attrib V43    0.2582632416700768
#>     Attrib V44    0.42819172583057297
#>     Attrib V45    0.44801988490557765
#>     Attrib V46    0.15465758306896515
#>     Attrib V47    0.12147131844612791
#>     Attrib V48    0.9016114656612646
#>     Attrib V49    0.39706703715494324
#>     Attrib V5    0.057072931604249186
#>     Attrib V50    -0.6296732788391313
#>     Attrib V51    0.04220057022511036
#>     Attrib V52    0.391503970570034
#>     Attrib V53    0.21537041429460327
#>     Attrib V54    -0.42118750509155434
#>     Attrib V55    -0.5759901804135387
#>     Attrib V56    -0.23375152777433117
#>     Attrib V57    -0.15121790402751706
#>     Attrib V58    0.12271101289031551
#>     Attrib V59    0.561627323808979
#>     Attrib V6    -0.047828423043686716
#>     Attrib V60    0.7526958254712353
#>     Attrib V7    -0.17718237414337526
#>     Attrib V8    -0.1287694498075546
#>     Attrib V9    0.9555957063269728
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.11286888768380143
#>     Attrib V1    0.15684848338900173
#>     Attrib V10    0.023060551836909117
#>     Attrib V11    0.10472078417888289
#>     Attrib V12    0.02300616838842594
#>     Attrib V13    -0.04326247288802436
#>     Attrib V14    0.02577576759614077
#>     Attrib V15    -0.05209228451464365
#>     Attrib V16    -0.040766538828556846
#>     Attrib V17    -0.168837074490915
#>     Attrib V18    -0.21001437314421276
#>     Attrib V19    -0.11875820095243503
#>     Attrib V2    0.08135089177094525
#>     Attrib V20    -0.08819529752027068
#>     Attrib V21    0.15837255006908135
#>     Attrib V22    -0.06495531529147441
#>     Attrib V23    -0.2513752744550604
#>     Attrib V24    -0.03671407055412346
#>     Attrib V25    -0.20996838041313332
#>     Attrib V26    -0.25662848990759596
#>     Attrib V27    -0.05212439635594435
#>     Attrib V28    0.050203940956035566
#>     Attrib V29    0.03995238015840412
#>     Attrib V3    0.025780240426267764
#>     Attrib V30    0.2563753301881411
#>     Attrib V31    -0.24325434506739463
#>     Attrib V32    -0.17107872929875928
#>     Attrib V33    0.0912848506298136
#>     Attrib V34    -0.02358012887044333
#>     Attrib V35    -0.05114134658550439
#>     Attrib V36    -0.16406751769781053
#>     Attrib V37    -0.27741385466307755
#>     Attrib V38    0.1325951143714692
#>     Attrib V39    0.0714194636026675
#>     Attrib V4    0.2687293202207102
#>     Attrib V40    -0.015499409543055957
#>     Attrib V41    0.021702873774726097
#>     Attrib V42    0.0020106549389502723
#>     Attrib V43    0.11630121375652903
#>     Attrib V44    0.25966608642174793
#>     Attrib V45    0.2807574218727527
#>     Attrib V46    0.07355440000779725
#>     Attrib V47    -0.03278839623808016
#>     Attrib V48    0.35554577811955584
#>     Attrib V49    0.1199269964338164
#>     Attrib V5    -0.052431671677470676
#>     Attrib V50    -0.23685657079203692
#>     Attrib V51    -0.03800767039274562
#>     Attrib V52    0.09876101352017044
#>     Attrib V53    0.09151972594829419
#>     Attrib V54    0.1991030912918909
#>     Attrib V55    0.1712953764752428
#>     Attrib V56    0.058484066812064514
#>     Attrib V57    0.37400714384323297
#>     Attrib V58    0.23117433140734933
#>     Attrib V59    0.4729113440222547
#>     Attrib V6    -0.09746721292800066
#>     Attrib V60    0.40076199520597516
#>     Attrib V7    -0.04492742359080733
#>     Attrib V8    0.09859375046378634
#>     Attrib V9    0.3058829058470436
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.09416726085434014
#>     Attrib V1    -0.2327422654677121
#>     Attrib V10    0.8507394155435996
#>     Attrib V11    1.1648242979823897
#>     Attrib V12    1.5674260976885077
#>     Attrib V13    1.0061716692144942
#>     Attrib V14    -0.12581120014278277
#>     Attrib V15    -1.334484835482798
#>     Attrib V16    -1.0379689329285515
#>     Attrib V17    -0.579889013673618
#>     Attrib V18    0.1153363029130482
#>     Attrib V19    0.10010062938738128
#>     Attrib V2    -0.3235554513042959
#>     Attrib V20    -0.4260955125852893
#>     Attrib V21    0.13201254817864516
#>     Attrib V22    0.3128671454606459
#>     Attrib V23    0.5307271249234256
#>     Attrib V24    1.0403967465984845
#>     Attrib V25    1.3507886862527914
#>     Attrib V26    1.2340460958300978
#>     Attrib V27    1.2061455358520718
#>     Attrib V28    0.8254383964596745
#>     Attrib V29    -0.09190683160797648
#>     Attrib V3    0.15390993401580294
#>     Attrib V30    0.5421941179618982
#>     Attrib V31    0.011510644883361495
#>     Attrib V32    0.05376869948594808
#>     Attrib V33    0.0688690180243598
#>     Attrib V34    0.11671402067363586
#>     Attrib V35    0.2884532074242545
#>     Attrib V36    -0.5068877989651533
#>     Attrib V37    -0.9291583518390135
#>     Attrib V38    -0.29210126613809445
#>     Attrib V39    0.1966924743340457
#>     Attrib V4    0.3939732311532118
#>     Attrib V40    0.7233987170752824
#>     Attrib V41    0.910554126956226
#>     Attrib V42    0.5650594047752605
#>     Attrib V43    0.6049954374003684
#>     Attrib V44    0.40645706211322846
#>     Attrib V45    0.5013992759661882
#>     Attrib V46    0.3315898062520516
#>     Attrib V47    0.3753611096333601
#>     Attrib V48    1.2237234073572
#>     Attrib V49    0.5757002698173436
#>     Attrib V5    0.010040290756411708
#>     Attrib V50    -0.7678574279836176
#>     Attrib V51    0.41942860776184654
#>     Attrib V52    0.7612789470223503
#>     Attrib V53    0.4367196751849342
#>     Attrib V54    -0.633171664470795
#>     Attrib V55    -0.7326962627397635
#>     Attrib V56    -0.39531440700531756
#>     Attrib V57    -0.8266368437052226
#>     Attrib V58    0.03505982861606515
#>     Attrib V59    0.3071410832425249
#>     Attrib V6    -0.06701740493566029
#>     Attrib V60    0.7575717751037033
#>     Attrib V7    -0.24497774030560154
#>     Attrib V8    -0.09308596403659664
#>     Attrib V9    1.3552706552850127
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.27863045948120274
#>     Attrib V1    0.1369690918101835
#>     Attrib V10    -0.05213545838598555
#>     Attrib V11    -0.27002165090478847
#>     Attrib V12    -0.22294720065550616
#>     Attrib V13    -0.0948400069958871
#>     Attrib V14    0.10919640200951668
#>     Attrib V15    0.2653081172173732
#>     Attrib V16    0.21238670624695521
#>     Attrib V17    0.06888402629050665
#>     Attrib V18    -0.012553778133001195
#>     Attrib V19    -0.08928078159967773
#>     Attrib V2    0.31535702766897306
#>     Attrib V20    -0.21241880252336492
#>     Attrib V21    -0.5801920600541433
#>     Attrib V22    -0.46713750814607263
#>     Attrib V23    -0.19610605143458043
#>     Attrib V24    -0.17292172279343124
#>     Attrib V25    0.357726985890297
#>     Attrib V26    0.6039395598258822
#>     Attrib V27    0.212398991581756
#>     Attrib V28    0.16556317635295684
#>     Attrib V29    0.3208498503221631
#>     Attrib V3    0.291374484616592
#>     Attrib V30    -0.22046834188275036
#>     Attrib V31    0.7633439936227987
#>     Attrib V32    0.338543341681146
#>     Attrib V33    -0.37568142229825063
#>     Attrib V34    -0.13375591310279927
#>     Attrib V35    0.12001188419800161
#>     Attrib V36    0.5757056120893129
#>     Attrib V37    0.6562780340748642
#>     Attrib V38    -0.15775171685200579
#>     Attrib V39    -0.04415489677740469
#>     Attrib V4    0.0012209009203594196
#>     Attrib V40    0.029339033385990455
#>     Attrib V41    -0.12281462819131028
#>     Attrib V42    -0.4436210565975947
#>     Attrib V43    -0.48515927440924866
#>     Attrib V44    -0.3834216783297236
#>     Attrib V45    -0.32920103822152746
#>     Attrib V46    4.255881740747806E-4
#>     Attrib V47    0.17405022403727752
#>     Attrib V48    -0.45778120003998435
#>     Attrib V49    -0.028931241026210378
#>     Attrib V5    0.2466370926601176
#>     Attrib V50    0.6883601991859739
#>     Attrib V51    0.013407871326437072
#>     Attrib V52    -0.27615002322345944
#>     Attrib V53    -0.07484081498188935
#>     Attrib V54    -0.41799474059498587
#>     Attrib V55    -0.008491505021698572
#>     Attrib V56    -0.14585783273724245
#>     Attrib V57    0.0996076663155801
#>     Attrib V58    -0.3687433654937617
#>     Attrib V59    -0.5135601684154494
#>     Attrib V6    0.2832556769960547
#>     Attrib V60    -0.4452760559217242
#>     Attrib V7    0.27165823715204945
#>     Attrib V8    -0.18795105083547542
#>     Attrib V9    -0.6621205817784432
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.07939858447909012
#>     Attrib V1    0.051353151407067706
#>     Attrib V10    -0.06291550230046201
#>     Attrib V11    0.03474394568577892
#>     Attrib V12    0.008961414868761628
#>     Attrib V13    -0.09577261805094979
#>     Attrib V14    0.028888070972641556
#>     Attrib V15    -0.03336318164723984
#>     Attrib V16    -0.005256113064385378
#>     Attrib V17    0.019108610970981602
#>     Attrib V18    0.030378158483360448
#>     Attrib V19    0.04007549700818241
#>     Attrib V2    -0.07489305637944552
#>     Attrib V20    0.2346459297248041
#>     Attrib V21    0.42723959147165386
#>     Attrib V22    0.20914799885369445
#>     Attrib V23    -0.021460577807254994
#>     Attrib V24    -1.5160235150354738E-4
#>     Attrib V25    -0.3187999758600104
#>     Attrib V26    -0.5842844303175242
#>     Attrib V27    -0.26235656919875283
#>     Attrib V28    -0.15737177587870588
#>     Attrib V29    -0.20041530989915435
#>     Attrib V3    -0.1373035840208563
#>     Attrib V30    0.20234530759786268
#>     Attrib V31    -0.4800744813349108
#>     Attrib V32    -0.30930000218621495
#>     Attrib V33    0.18247567168079096
#>     Attrib V34    0.08544742187037555
#>     Attrib V35    -0.059365357155986766
#>     Attrib V36    -0.3379756400174203
#>     Attrib V37    -0.40770510259440745
#>     Attrib V38    0.1667168158943704
#>     Attrib V39    0.007458912089577784
#>     Attrib V4    -0.031050344998076282
#>     Attrib V40    -0.10107022978397887
#>     Attrib V41    -0.0645353560166058
#>     Attrib V42    0.12630849638555433
#>     Attrib V43    0.17770513752123535
#>     Attrib V44    0.2908268997063591
#>     Attrib V45    0.2974223681787736
#>     Attrib V46    -0.04206980081877438
#>     Attrib V47    -0.12442701698785764
#>     Attrib V48    0.29216717459437413
#>     Attrib V49    -0.0117444863192246
#>     Attrib V5    -0.11563586659856137
#>     Attrib V50    -0.3179669386373363
#>     Attrib V51    0.020935642957369927
#>     Attrib V52    0.10504345672340105
#>     Attrib V53    0.025530729402788967
#>     Attrib V54    0.4363049689665009
#>     Attrib V55    0.1551862356294209
#>     Attrib V56    0.1347627248293256
#>     Attrib V57    0.19845074064013377
#>     Attrib V58    0.298386498318388
#>     Attrib V59    0.3869195804294879
#>     Attrib V6    -0.08316440171005594
#>     Attrib V60    0.32339782367216463
#>     Attrib V7    -0.16874258711387155
#>     Attrib V8    0.1455895110353341
#>     Attrib V9    0.37536260563968676
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.25467716158731885
#>     Attrib V1    0.08122037491448146
#>     Attrib V10    -0.18182235944852673
#>     Attrib V11    0.010354305131608605
#>     Attrib V12    -0.1603333874401723
#>     Attrib V13    -0.096875337645573
#>     Attrib V14    0.1389968830137865
#>     Attrib V15    0.0392083720966434
#>     Attrib V16    0.07855567139390558
#>     Attrib V17    -9.916062487651811E-4
#>     Attrib V18    0.023546304029448756
#>     Attrib V19    0.18952090157557902
#>     Attrib V2    0.03133995623356684
#>     Attrib V20    0.36856121582046075
#>     Attrib V21    0.708301352969219
#>     Attrib V22    0.4375584329498125
#>     Attrib V23    0.0052367787611947245
#>     Attrib V24    -0.13600766647048065
#>     Attrib V25    -0.7228440265803042
#>     Attrib V26    -0.9070766362137991
#>     Attrib V27    -0.29499177126910325
#>     Attrib V28    -0.14284718336347718
#>     Attrib V29    -0.03376476870522505
#>     Attrib V3    -0.11847329417848791
#>     Attrib V30    0.31987476404658216
#>     Attrib V31    -0.7391296861969024
#>     Attrib V32    -0.4913898468372975
#>     Attrib V33    0.2816055052333345
#>     Attrib V34    -0.010328266414035583
#>     Attrib V35    -0.2618541874973053
#>     Attrib V36    -0.5511950938815363
#>     Attrib V37    -0.504008820205883
#>     Attrib V38    0.26875078621692156
#>     Attrib V39    0.03285616203954262
#>     Attrib V4    0.06809385507301831
#>     Attrib V40    -0.06750245031361717
#>     Attrib V41    0.02405796124033844
#>     Attrib V42    0.2438810095573106
#>     Attrib V43    0.3025067946236068
#>     Attrib V44    0.32038409086860536
#>     Attrib V45    0.31924258894905433
#>     Attrib V46    -0.039864049536600374
#>     Attrib V47    -0.2629740068190559
#>     Attrib V48    0.34150650786120507
#>     Attrib V49    -0.044752420847186336
#>     Attrib V5    -0.17338060533279773
#>     Attrib V50    -0.4633987490664682
#>     Attrib V51    -0.0715996864019096
#>     Attrib V52    0.21846167903354047
#>     Attrib V53    0.16859684151616572
#>     Attrib V54    0.6242108273161362
#>     Attrib V55    0.16207851331185982
#>     Attrib V56    0.23791682991242197
#>     Attrib V57    0.3041589920188188
#>     Attrib V58    0.44009744364148556
#>     Attrib V59    0.6781034899505212
#>     Attrib V6    -0.15965304425992136
#>     Attrib V60    0.4545298725316716
#>     Attrib V7    -0.1840849475385699
#>     Attrib V8    0.19828252942419713
#>     Attrib V9    0.44234974094946633
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.10090497773786537
#>     Attrib V1    0.09525479846435114
#>     Attrib V10    -0.016312844771338975
#>     Attrib V11    0.05457482893148799
#>     Attrib V12    0.042668451387432214
#>     Attrib V13    0.0685124151014126
#>     Attrib V14    0.08044328519584482
#>     Attrib V15    -0.043550313802938355
#>     Attrib V16    -0.0951453344114577
#>     Attrib V17    -0.08048791370776359
#>     Attrib V18    -0.07751392070015416
#>     Attrib V19    -0.08554946348797206
#>     Attrib V2    0.038223180072168655
#>     Attrib V20    0.0024591546504688735
#>     Attrib V21    0.11700258080605688
#>     Attrib V22    -0.025074645052322923
#>     Attrib V23    -0.062347353619311006
#>     Attrib V24    0.013033527709239134
#>     Attrib V25    -0.06263251397398216
#>     Attrib V26    -0.21936920517813913
#>     Attrib V27    -0.02337077545242357
#>     Attrib V28    -0.05583475424480144
#>     Attrib V29    -0.032920689866389366
#>     Attrib V3    0.06534814332304155
#>     Attrib V30    0.12002740020050509
#>     Attrib V31    -0.20818947636659665
#>     Attrib V32    -0.10473247820982985
#>     Attrib V33    0.06597474282427766
#>     Attrib V34    0.05521859277102831
#>     Attrib V35    -0.033270008458468135
#>     Attrib V36    -0.15417151081058145
#>     Attrib V37    -0.17110170425921933
#>     Attrib V38    0.045330968036881324
#>     Attrib V39    0.09580224130498442
#>     Attrib V4    0.060569042638438264
#>     Attrib V40    0.03923269260908674
#>     Attrib V41    0.04099409845195309
#>     Attrib V42    0.07865669946752316
#>     Attrib V43    0.0570555685038422
#>     Attrib V44    0.09582410212617602
#>     Attrib V45    0.11122916505520668
#>     Attrib V46    0.061227616981935115
#>     Attrib V47    0.01410384366624036
#>     Attrib V48    0.18021580647133023
#>     Attrib V49    0.08518827766908336
#>     Attrib V5    -0.01708647301073597
#>     Attrib V50    -0.14284143028272772
#>     Attrib V51    0.013383099650771894
#>     Attrib V52    0.08771092925890157
#>     Attrib V53    0.037623365636676134
#>     Attrib V54    0.1257862042629326
#>     Attrib V55    0.109269066395474
#>     Attrib V56    0.06145268173080373
#>     Attrib V57    0.16304791390500284
#>     Attrib V58    0.1531872331521627
#>     Attrib V59    0.30905568936339256
#>     Attrib V6    0.013474775612751504
#>     Attrib V60    0.29585257565539114
#>     Attrib V7    0.01302757476407343
#>     Attrib V8    0.041545843157734054
#>     Attrib V9    0.20385169175954798
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.28160814995445077
#>     Attrib V1    0.19062611293809134
#>     Attrib V10    -0.07581733638020913
#>     Attrib V11    0.10599242117208177
#>     Attrib V12    0.022312861663526883
#>     Attrib V13    -0.12733724865338372
#>     Attrib V14    0.01088686054779209
#>     Attrib V15    -0.008616682549890427
#>     Attrib V16    -0.070990558112565
#>     Attrib V17    -0.0694276292648763
#>     Attrib V18    -0.05248647566498436
#>     Attrib V19    -0.014889841895011796
#>     Attrib V2    -0.02483726649493511
#>     Attrib V20    0.15439518416207054
#>     Attrib V21    0.44762173489479323
#>     Attrib V22    0.17211780787890496
#>     Attrib V23    -0.12169087634721784
#>     Attrib V24    -0.10805232518247497
#>     Attrib V25    -0.4457822990622849
#>     Attrib V26    -0.5659892217156445
#>     Attrib V27    -0.22179218726477395
#>     Attrib V28    -0.07922264361540797
#>     Attrib V29    -0.049215071991704655
#>     Attrib V3    -0.1323768774859929
#>     Attrib V30    0.36017752835651023
#>     Attrib V31    -0.4536188990537542
#>     Attrib V32    -0.3348131865397582
#>     Attrib V33    0.17460588515173406
#>     Attrib V34    -0.033475524302204976
#>     Attrib V35    -0.10344868481403804
#>     Attrib V36    -0.4110916771341499
#>     Attrib V37    -0.41581225634670094
#>     Attrib V38    0.12640196462678188
#>     Attrib V39    0.054575115397522314
#>     Attrib V4    0.22936125378019542
#>     Attrib V40    -0.09472123343838694
#>     Attrib V41    -0.04272457767322148
#>     Attrib V42    0.07893557067658964
#>     Attrib V43    0.18832738228894552
#>     Attrib V44    0.39753965639146166
#>     Attrib V45    0.2656017915789771
#>     Attrib V46    -0.03570922759009141
#>     Attrib V47    -0.20338660924861798
#>     Attrib V48    0.3858372675453995
#>     Attrib V49    0.0777366305113842
#>     Attrib V5    -0.14318893156360085
#>     Attrib V50    -0.4046210718899541
#>     Attrib V51    -0.15996087150957958
#>     Attrib V52    0.07896722732796693
#>     Attrib V53    0.0067537088519576205
#>     Attrib V54    0.41520164803149096
#>     Attrib V55    0.23992056510942758
#>     Attrib V56    0.1670445264764473
#>     Attrib V57    0.31672487855855613
#>     Attrib V58    0.358570066950038
#>     Attrib V59    0.5655151388258891
#>     Attrib V6    -0.19105828607816294
#>     Attrib V60    0.45002890112785116
#>     Attrib V7    -0.1806518133474562
#>     Attrib V8    0.08170642439676733
#>     Attrib V9    0.39215742356358946
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.5184137425632538
#>     Attrib V1    -0.04504360272205358
#>     Attrib V10    0.14022791564689352
#>     Attrib V11    -0.12396899928561236
#>     Attrib V12    0.1538081288525134
#>     Attrib V13    0.07308434607895445
#>     Attrib V14    -0.12074012802947488
#>     Attrib V15    0.05348169089277897
#>     Attrib V16    0.022156615289130478
#>     Attrib V17    0.08445694842932702
#>     Attrib V18    0.008102998549855966
#>     Attrib V19    -0.21352434892254488
#>     Attrib V2    0.3022944501107723
#>     Attrib V20    -0.7396594225783373
#>     Attrib V21    -1.3799294272426967
#>     Attrib V22    -0.825897700546805
#>     Attrib V23    -0.18659991997160397
#>     Attrib V24    0.18398265286451668
#>     Attrib V25    1.2908754079959315
#>     Attrib V26    1.4978880491015931
#>     Attrib V27    0.4298061366130972
#>     Attrib V28    0.18974396215985195
#>     Attrib V29    0.08775847348326103
#>     Attrib V3    0.3472460166399808
#>     Attrib V30    -0.6600010055798129
#>     Attrib V31    1.5697623692044977
#>     Attrib V32    1.0284799693108493
#>     Attrib V33    -0.5990114770629794
#>     Attrib V34    0.11826549984176844
#>     Attrib V35    0.5986532120273177
#>     Attrib V36    1.1089029235175518
#>     Attrib V37    0.9930542350942695
#>     Attrib V38    -0.5576249454588139
#>     Attrib V39    -0.12537670359139144
#>     Attrib V4    -0.008860654952346234
#>     Attrib V40    0.10887186525348143
#>     Attrib V41    -0.2087524442837206
#>     Attrib V42    -0.923935239761954
#>     Attrib V43    -0.7922337937026767
#>     Attrib V44    -0.7518755176235309
#>     Attrib V45    -0.5189194016653849
#>     Attrib V46    0.15881054177914222
#>     Attrib V47    0.4524273515294417
#>     Attrib V48    -0.5153416806200741
#>     Attrib V49    0.029294371239528993
#>     Attrib V5    0.43279741615986744
#>     Attrib V50    0.8729827554757357
#>     Attrib V51    0.1915743634718723
#>     Attrib V52    -0.3740779927892955
#>     Attrib V53    -0.3784519361270915
#>     Attrib V54    -1.196063974591552
#>     Attrib V55    -0.13729305000956898
#>     Attrib V56    -0.4154712877455972
#>     Attrib V57    -0.3547979304842252
#>     Attrib V58    -0.7413205697898922
#>     Attrib V59    -1.079725046260433
#>     Attrib V6    0.3542308211229087
#>     Attrib V60    -0.7145849484063528
#>     Attrib V7    0.286554535103954
#>     Attrib V8    -0.4977963192441342
#>     Attrib V9    -0.8427886123811826
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.2444149825381821
#>     Attrib V1    0.032435080064605486
#>     Attrib V10    -0.025720691950228188
#>     Attrib V11    -0.2188847197864142
#>     Attrib V12    -0.24815783608296446
#>     Attrib V13    -0.11459472700576591
#>     Attrib V14    -0.018273579877272607
#>     Attrib V15    0.17935574137888624
#>     Attrib V16    0.27834403307528693
#>     Attrib V17    0.29826733555306895
#>     Attrib V18    0.2443393181129894
#>     Attrib V19    0.06847310597847453
#>     Attrib V2    0.0905648560596207
#>     Attrib V20    -0.08162401273481308
#>     Attrib V21    -0.2856194726437856
#>     Attrib V22    -0.11823954732190237
#>     Attrib V23    -0.01626000346646579
#>     Attrib V24    -0.07824408680054515
#>     Attrib V25    0.12070218795292162
#>     Attrib V26    0.15114521926115887
#>     Attrib V27    -0.1018020132053405
#>     Attrib V28    -0.11283970456813551
#>     Attrib V29    0.05096790285973275
#>     Attrib V3    0.147326422516946
#>     Attrib V30    -0.1646921263049277
#>     Attrib V31    0.4537846012567211
#>     Attrib V32    0.38110926672637097
#>     Attrib V33    -0.03346930032928971
#>     Attrib V34    0.06607477868836922
#>     Attrib V35    0.17147271073069226
#>     Attrib V36    0.4874160860567947
#>     Attrib V37    0.4753992991400202
#>     Attrib V38    -0.0896148554286073
#>     Attrib V39    -0.09613570484446642
#>     Attrib V4    0.021180047474959746
#>     Attrib V40    0.01122467122250286
#>     Attrib V41    0.01040206927220415
#>     Attrib V42    -0.11906324918550867
#>     Attrib V43    -0.1915929602419356
#>     Attrib V44    -0.17179829161083174
#>     Attrib V45    -0.2320669342235032
#>     Attrib V46    -0.00809792969673482
#>     Attrib V47    0.1039467817525455
#>     Attrib V48    -0.3082004951010872
#>     Attrib V49    -0.03921306095900358
#>     Attrib V5    0.16571556987551234
#>     Attrib V50    0.5218642819739588
#>     Attrib V51    0.12629353904114765
#>     Attrib V52    -0.06765497790745752
#>     Attrib V53    0.047292190661241254
#>     Attrib V54    -0.12493489062679106
#>     Attrib V55    -0.020270313226828006
#>     Attrib V56    0.031840343040011584
#>     Attrib V57    0.20672329050977278
#>     Attrib V58    -0.06869851369942415
#>     Attrib V59    -0.2683274105932451
#>     Attrib V6    0.27811681145554257
#>     Attrib V60    -0.21160942963100077
#>     Attrib V7    0.27484862724581977
#>     Attrib V8    -0.02477901980740152
#>     Attrib V9    -0.30171460286807
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.08344858286511544
#>     Attrib V1    0.12804363085831189
#>     Attrib V10    -0.0365624675634905
#>     Attrib V11    0.030232968393096676
#>     Attrib V12    -0.0642261352770177
#>     Attrib V13    -0.09824007130787973
#>     Attrib V14    0.04846993966521073
#>     Attrib V15    0.07529837439461569
#>     Attrib V16    0.01965728723157964
#>     Attrib V17    -0.0241213649070962
#>     Attrib V18    -0.022816026518178583
#>     Attrib V19    0.027469289399912278
#>     Attrib V2    0.07439088439621837
#>     Attrib V20    0.10228550593789701
#>     Attrib V21    0.3183129628150126
#>     Attrib V22    0.19407466096225529
#>     Attrib V23    -0.10729610175777465
#>     Attrib V24    -0.010350650223286571
#>     Attrib V25    -0.33346484513393815
#>     Attrib V26    -0.5064076183247355
#>     Attrib V27    -0.23694347102895943
#>     Attrib V28    -0.17282867920378436
#>     Attrib V29    -0.18548892166480502
#>     Attrib V3    -0.06992428753675188
#>     Attrib V30    0.17941789075138445
#>     Attrib V31    -0.3148168883671839
#>     Attrib V32    -0.2811171838258543
#>     Attrib V33    0.16771759463317626
#>     Attrib V34    -0.004728084384556881
#>     Attrib V35    -0.04562508427324097
#>     Attrib V36    -0.3014452157260938
#>     Attrib V37    -0.3425431157201673
#>     Attrib V38    0.1497223381528872
#>     Attrib V39    0.060270191209458944
#>     Attrib V4    0.043727093548875225
#>     Attrib V40    -0.10532103966140817
#>     Attrib V41    9.89304984321279E-4
#>     Attrib V42    0.07133773764640261
#>     Attrib V43    0.18220216192569072
#>     Attrib V44    0.2212199516942695
#>     Attrib V45    0.24664153674593595
#>     Attrib V46    -0.04637264220008449
#>     Attrib V47    -0.16996552890529246
#>     Attrib V48    0.2757361847552859
#>     Attrib V49    -0.011775964400316816
#>     Attrib V5    -0.10332505218788306
#>     Attrib V50    -0.2546449103057327
#>     Attrib V51    -0.02380709070321471
#>     Attrib V52    0.08308664150772732
#>     Attrib V53    0.0052800609424914794
#>     Attrib V54    0.3303034676941742
#>     Attrib V55    0.23391426371945673
#>     Attrib V56    0.14409247439595277
#>     Attrib V57    0.2696579587663611
#>     Attrib V58    0.22187802478401028
#>     Attrib V59    0.3828519905492109
#>     Attrib V6    -0.0673386463067808
#>     Attrib V60    0.345545585185588
#>     Attrib V7    -0.145798995852221
#>     Attrib V8    0.12903496666848857
#>     Attrib V9    0.28996106858635906
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.20848588710048518
#>     Attrib V1    0.07376285143534307
#>     Attrib V10    0.03927542062150283
#>     Attrib V11    0.01333507231356208
#>     Attrib V12    -0.013977337995729913
#>     Attrib V13    0.0015331767874684386
#>     Attrib V14    0.05934018831033876
#>     Attrib V15    -0.010104328496311986
#>     Attrib V16    -0.009931030276824761
#>     Attrib V17    -0.06020091495562306
#>     Attrib V18    0.0017026806033212348
#>     Attrib V19    -0.10708529799773145
#>     Attrib V2    0.0870441224210567
#>     Attrib V20    -0.05719761984834888
#>     Attrib V21    -0.020387724313164993
#>     Attrib V22    -0.07075712966781154
#>     Attrib V23    -0.06050354823072891
#>     Attrib V24    -0.04223342893262285
#>     Attrib V25    -0.003675873323494672
#>     Attrib V26    -0.031064023557786334
#>     Attrib V27    -0.027890614252311388
#>     Attrib V28    -0.060885024429694
#>     Attrib V29    -0.05508389462888204
#>     Attrib V3    0.11534726124950542
#>     Attrib V30    -0.024936395076272586
#>     Attrib V31    -0.01890647049266691
#>     Attrib V32    0.0019302080374051756
#>     Attrib V33    0.04137345474086359
#>     Attrib V34    0.06975686451378035
#>     Attrib V35    0.03321323702441598
#>     Attrib V36    0.09605641110242073
#>     Attrib V37    -0.008266909858019606
#>     Attrib V38    0.013183543763845488
#>     Attrib V39    0.07818712892762751
#>     Attrib V4    -0.023456953732485665
#>     Attrib V40    0.03495304394486687
#>     Attrib V41    0.013928512024840344
#>     Attrib V42    0.04032837380731131
#>     Attrib V43    0.038886166644776884
#>     Attrib V44    0.06318758058377928
#>     Attrib V45    0.016367789620348742
#>     Attrib V46    0.04603534855319659
#>     Attrib V47    0.09589962524346525
#>     Attrib V48    0.09540580615474958
#>     Attrib V49    0.08915624418089406
#>     Attrib V5    0.04441497369759484
#>     Attrib V50    0.011598278036648714
#>     Attrib V51    0.13631183689900184
#>     Attrib V52    0.0801809379793763
#>     Attrib V53    0.018146769488871214
#>     Attrib V54    -7.377874895379884E-4
#>     Attrib V55    0.09005139236742665
#>     Attrib V56    0.06328499051759985
#>     Attrib V57    0.04338116341086305
#>     Attrib V58    0.07508060351150493
#>     Attrib V59    0.12146206284449218
#>     Attrib V6    0.06117223975543615
#>     Attrib V60    0.1564701617436844
#>     Attrib V7    0.08327502735655734
#>     Attrib V8    0.08092110937283171
#>     Attrib V9    0.08923659621309438
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.45873246308633536
#>     Attrib V1    -0.07084995765728261
#>     Attrib V10    0.3379340651432948
#>     Attrib V11    0.7031916602874604
#>     Attrib V12    1.1577884021845717
#>     Attrib V13    0.6455450688329181
#>     Attrib V14    0.1672123120781861
#>     Attrib V15    -0.6942806850052302
#>     Attrib V16    -0.6859397296334461
#>     Attrib V17    -0.5019947562606287
#>     Attrib V18    -0.14592038365939547
#>     Attrib V19    -0.005654112719033715
#>     Attrib V2    -0.1306969576038776
#>     Attrib V20    -0.40464131114063684
#>     Attrib V21    0.08406722883249156
#>     Attrib V22    0.09822306593230686
#>     Attrib V23    -0.03836762376340089
#>     Attrib V24    0.4335964079762454
#>     Attrib V25    0.5576094633008801
#>     Attrib V26    0.637317615212451
#>     Attrib V27    1.0475994632551606
#>     Attrib V28    1.121621383145615
#>     Attrib V29    0.6369504227307093
#>     Attrib V3    0.15478740074518255
#>     Attrib V30    0.6732171464727851
#>     Attrib V31    -0.09899596244678237
#>     Attrib V32    -0.005526962458479631
#>     Attrib V33    0.07941596774607604
#>     Attrib V34    -0.051887361424994456
#>     Attrib V35    0.09530599469236915
#>     Attrib V36    -0.3718575434110653
#>     Attrib V37    -0.6129154112229874
#>     Attrib V38    -0.1327317338718988
#>     Attrib V39    0.17431613219769798
#>     Attrib V4    0.8205103305047335
#>     Attrib V40    0.5135761860163197
#>     Attrib V41    0.5718171924311691
#>     Attrib V42    0.3602814809605553
#>     Attrib V43    0.3281002292026695
#>     Attrib V44    0.3811495877835572
#>     Attrib V45    0.43839128959501655
#>     Attrib V46    0.14423826576246393
#>     Attrib V47    0.0033846675673234617
#>     Attrib V48    0.854431983150209
#>     Attrib V49    0.4379563691324904
#>     Attrib V5    0.15817012871676225
#>     Attrib V50    -0.766254181342881
#>     Attrib V51    -0.03131709353857037
#>     Attrib V52    0.39200334494827965
#>     Attrib V53    0.3769865931856077
#>     Attrib V54    -0.4432811671673445
#>     Attrib V55    -0.3980606902071247
#>     Attrib V56    -0.282818546077578
#>     Attrib V57    -0.06547358630494637
#>     Attrib V58    0.20982224868704502
#>     Attrib V59    0.6740960850106048
#>     Attrib V6    -0.0854290135801756
#>     Attrib V60    0.795550957666014
#>     Attrib V7    -0.23249054852940104
#>     Attrib V8    -0.13386665354649321
#>     Attrib V9    0.8110997342054771
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.3812051742403384
#>     Attrib V1    0.07047061354579216
#>     Attrib V10    0.16776480122730034
#>     Attrib V11    0.31442093387436804
#>     Attrib V12    0.3226399916399166
#>     Attrib V13    0.15887619172698159
#>     Attrib V14    0.01726249192244715
#>     Attrib V15    -0.4505549518295249
#>     Attrib V16    -0.4374212488891528
#>     Attrib V17    -0.32948997457406964
#>     Attrib V18    -0.06535729681986097
#>     Attrib V19    0.09290673101610591
#>     Attrib V2    -0.13851414899074724
#>     Attrib V20    0.20731132710515396
#>     Attrib V21    0.7430852403758771
#>     Attrib V22    0.5152562379145956
#>     Attrib V23    0.14764599709191417
#>     Attrib V24    0.1987397858804789
#>     Attrib V25    -0.13576110774904376
#>     Attrib V26    -0.18693814693966956
#>     Attrib V27    0.32985247480476654
#>     Attrib V28    0.43062318773205194
#>     Attrib V29    0.367590377041622
#>     Attrib V3    -0.171542007237641
#>     Attrib V30    0.7032517131793794
#>     Attrib V31    -0.5274713538619455
#>     Attrib V32    -0.4070248851641796
#>     Attrib V33    0.2912343843848667
#>     Attrib V34    0.03197952506046052
#>     Attrib V35    -0.07112782730559845
#>     Attrib V36    -0.4358058041273219
#>     Attrib V37    -0.43764445697165
#>     Attrib V38    0.15845494190026677
#>     Attrib V39    0.0733644432991319
#>     Attrib V4    0.034658376978845565
#>     Attrib V40    0.17448801281748622
#>     Attrib V41    0.31153965456553534
#>     Attrib V42    0.36392236118163734
#>     Attrib V43    0.42933030332467353
#>     Attrib V44    0.5770437610652525
#>     Attrib V45    0.4658725512845554
#>     Attrib V46    -0.009184170361805867
#>     Attrib V47    -0.14691586646804455
#>     Attrib V48    0.6918322654593061
#>     Attrib V49    0.1568417130701496
#>     Attrib V5    -0.13753251560875762
#>     Attrib V50    -0.7173306643693247
#>     Attrib V51    -0.020213772949599276
#>     Attrib V52    0.27239472324350095
#>     Attrib V53    -0.05304747302324652
#>     Attrib V54    -0.021311859494120757
#>     Attrib V55    -0.35363085975901604
#>     Attrib V56    -0.03904543809055819
#>     Attrib V57    -0.22068190482756078
#>     Attrib V58    0.15116754241917302
#>     Attrib V59    0.5238646217942947
#>     Attrib V6    -0.13876198229479395
#>     Attrib V60    0.49133438657740475
#>     Attrib V7    -0.313758530120522
#>     Attrib V8    -0.08999964685396282
#>     Attrib V9    0.7934076299822164
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.20548635291322837
#>     Attrib V1    0.1029058815119603
#>     Attrib V10    -0.03133611046713407
#>     Attrib V11    -0.2871917800981601
#>     Attrib V12    0.006900497610657785
#>     Attrib V13    0.047374477522113156
#>     Attrib V14    0.09806239205976834
#>     Attrib V15    0.25521277970667094
#>     Attrib V16    0.13143589491901556
#>     Attrib V17    0.0794459205242418
#>     Attrib V18    -0.012345563910521173
#>     Attrib V19    -0.1440056616193339
#>     Attrib V2    0.3810014090957701
#>     Attrib V20    -0.5211979508064651
#>     Attrib V21    -1.0265190812068232
#>     Attrib V22    -0.7801763384724892
#>     Attrib V23    -0.38750664990038014
#>     Attrib V24    -0.12800482801511018
#>     Attrib V25    0.8002174992395604
#>     Attrib V26    1.0931586461019769
#>     Attrib V27    0.4291321800246455
#>     Attrib V28    0.39355578905808986
#>     Attrib V29    0.5455501044845681
#>     Attrib V3    0.39706205783973486
#>     Attrib V30    -0.42820237431160973
#>     Attrib V31    1.3443012127862664
#>     Attrib V32    0.7719246639799556
#>     Attrib V33    -0.6538935225696324
#>     Attrib V34    -0.11889172180960134
#>     Attrib V35    0.32676848211671655
#>     Attrib V36    0.9299632491896229
#>     Attrib V37    0.9939924242324331
#>     Attrib V38    -0.3809012797782545
#>     Attrib V39    0.027149736233648372
#>     Attrib V4    0.3095469587123277
#>     Attrib V40    0.18658220772954875
#>     Attrib V41    -0.060705274070705834
#>     Attrib V42    -0.7575820893636184
#>     Attrib V43    -0.7249103625501622
#>     Attrib V44    -0.6828190288407058
#>     Attrib V45    -0.5946669765520415
#>     Attrib V46    0.03114131536952518
#>     Attrib V47    0.2859420283004398
#>     Attrib V48    -0.5328382036668238
#>     Attrib V49    -0.0018145678997935932
#>     Attrib V5    0.5311427351401853
#>     Attrib V50    0.85509484251722
#>     Attrib V51    0.06276701013456847
#>     Attrib V52    -0.37425042063198666
#>     Attrib V53    -0.24983529454503445
#>     Attrib V54    -0.9749042672706935
#>     Attrib V55    -0.14583619501034345
#>     Attrib V56    -0.36540194265171116
#>     Attrib V57    0.0175916569660247
#>     Attrib V58    -0.6730868500049642
#>     Attrib V59    -0.7063633702773777
#>     Attrib V6    0.34862103621042206
#>     Attrib V60    -0.44249237003076863
#>     Attrib V7    0.3401143536137159
#>     Attrib V8    -0.5520702946199476
#>     Attrib V9    -0.9379601608546727
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.01629062552694057
#>     Attrib V1    0.17312959175332338
#>     Attrib V10    -0.01879222184012247
#>     Attrib V11    0.03631605195409061
#>     Attrib V12    0.010271643225223464
#>     Attrib V13    -0.05769060969234917
#>     Attrib V14    0.09698888768278753
#>     Attrib V15    -0.005459005072401306
#>     Attrib V16    0.03968045168763342
#>     Attrib V17    -0.05412536800352594
#>     Attrib V18    -0.08628640055908329
#>     Attrib V19    -0.09657572884489385
#>     Attrib V2    0.0915931439146601
#>     Attrib V20    0.008420634617015579
#>     Attrib V21    0.12277967391076096
#>     Attrib V22    -0.04303019853576073
#>     Attrib V23    -0.20329797988087697
#>     Attrib V24    -0.022706160333009335
#>     Attrib V25    -0.2413849091050665
#>     Attrib V26    -0.3772923975456362
#>     Attrib V27    -0.21517516393257377
#>     Attrib V28    -0.2016444516733208
#>     Attrib V29    -0.12303060889830102
#>     Attrib V3    7.7318475371646E-4
#>     Attrib V30    0.06867982212690782
#>     Attrib V31    -0.20183713371884324
#>     Attrib V32    -0.1763483948280165
#>     Attrib V33    0.03831330427514805
#>     Attrib V34    0.011113338141340079
#>     Attrib V35    -0.018510005586273227
#>     Attrib V36    -0.15416646983375878
#>     Attrib V37    -0.20058006973893316
#>     Attrib V38    0.07251477987656141
#>     Attrib V39    0.03624894943809481
#>     Attrib V4    0.11752334363858062
#>     Attrib V40    -0.010232120196954396
#>     Attrib V41    -0.05508170753561937
#>     Attrib V42    0.020374255978668133
#>     Attrib V43    0.14543812763503394
#>     Attrib V44    0.11782224322690027
#>     Attrib V45    0.11795124176142385
#>     Attrib V46    0.0495806305093645
#>     Attrib V47    -0.09499015277213417
#>     Attrib V48    0.23334644826547773
#>     Attrib V49    0.04698556599480658
#>     Attrib V5    -0.020710428226407028
#>     Attrib V50    -0.14246027644201498
#>     Attrib V51    -0.0042953254864150055
#>     Attrib V52    0.10901225272926442
#>     Attrib V53    0.04005558746486772
#>     Attrib V54    0.299744322726506
#>     Attrib V55    0.25842062342934485
#>     Attrib V56    0.17164118703703332
#>     Attrib V57    0.28550492765106483
#>     Attrib V58    0.28267626197893697
#>     Attrib V59    0.36703997974867175
#>     Attrib V6    -0.023536801839100695
#>     Attrib V60    0.3515320661936278
#>     Attrib V7    -0.027760756876841004
#>     Attrib V8    0.04248078542519732
#>     Attrib V9    0.2222519948091911
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.2043186556401822
#>     Attrib V1    0.06992328051854023
#>     Attrib V10    -0.12184573626078986
#>     Attrib V11    0.07536934552917947
#>     Attrib V12    0.051200450241503215
#>     Attrib V13    -0.03475182589824879
#>     Attrib V14    0.039773374841451
#>     Attrib V15    -0.07245201022520746
#>     Attrib V16    -0.07018287478550467
#>     Attrib V17    0.005075730675032682
#>     Attrib V18    0.039306075053042004
#>     Attrib V19    0.07164713340907984
#>     Attrib V2    -0.13947063518170275
#>     Attrib V20    0.2383743557253382
#>     Attrib V21    0.5667101671780256
#>     Attrib V22    0.3720971323026805
#>     Attrib V23    0.0796708976920238
#>     Attrib V24    0.014315476966213539
#>     Attrib V25    -0.44595489107083713
#>     Attrib V26    -0.6617341679290447
#>     Attrib V27    -0.33830349155896694
#>     Attrib V28    -0.29889597058675715
#>     Attrib V29    -0.2983998457131053
#>     Attrib V3    -0.1349758480253132
#>     Attrib V30    0.23449187041104277
#>     Attrib V31    -0.6183940289981691
#>     Attrib V32    -0.40341972584477065
#>     Attrib V33    0.2764768322433412
#>     Attrib V34    0.05086534670772791
#>     Attrib V35    -0.10130191099377457
#>     Attrib V36    -0.4601970872927516
#>     Attrib V37    -0.44072250621150366
#>     Attrib V38    0.17994723860975054
#>     Attrib V39    -0.0061663487619294825
#>     Attrib V4    -0.03124959833663461
#>     Attrib V40    -0.13183924065647415
#>     Attrib V41    0.0012295860731817733
#>     Attrib V42    0.2203190485410221
#>     Attrib V43    0.3463387281397629
#>     Attrib V44    0.3482577467742611
#>     Attrib V45    0.3294370781053351
#>     Attrib V46    -0.043361928498785916
#>     Attrib V47    -0.1679128551833161
#>     Attrib V48    0.30642131554237584
#>     Attrib V49    -0.009118285718780993
#>     Attrib V5    -0.21374261938891928
#>     Attrib V50    -0.4731142329821358
#>     Attrib V51    -0.08391629831040281
#>     Attrib V52    0.2329458000371461
#>     Attrib V53    0.12400334478795597
#>     Attrib V54    0.5189797749450008
#>     Attrib V55    0.15118760306108472
#>     Attrib V56    0.2220461310862224
#>     Attrib V57    0.11479604736872077
#>     Attrib V58    0.3415974652755472
#>     Attrib V59    0.5754610658124379
#>     Attrib V6    -0.13803170814646684
#>     Attrib V60    0.399505651233339
#>     Attrib V7    -0.18743855220126132
#>     Attrib V8    0.11789989529338751
#>     Attrib V9    0.46095379736117004
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.1960553877983641
#>     Attrib V1    0.08656819492309654
#>     Attrib V10    -0.09905589865818079
#>     Attrib V11    -0.3042959719314316
#>     Attrib V12    -0.22982880696725125
#>     Attrib V13    -0.1424027025210954
#>     Attrib V14    0.07074554427425243
#>     Attrib V15    0.35588500361383285
#>     Attrib V16    0.19381948843088817
#>     Attrib V17    0.14903101069826852
#>     Attrib V18    -0.06549093346910198
#>     Attrib V19    -0.10783819190648104
#>     Attrib V2    0.307199472266803
#>     Attrib V20    -0.23616563575402824
#>     Attrib V21    -0.6371842190073611
#>     Attrib V22    -0.516107650169515
#>     Attrib V23    -0.21014836893663083
#>     Attrib V24    -0.18425823388412163
#>     Attrib V25    0.3441786755555348
#>     Attrib V26    0.5815716046344339
#>     Attrib V27    0.1698851713048445
#>     Attrib V28    0.19048058042380145
#>     Attrib V29    0.3407331819875656
#>     Attrib V3    0.31979306332037966
#>     Attrib V30    -0.27997789745578233
#>     Attrib V31    0.758713950765454
#>     Attrib V32    0.46614263921647564
#>     Attrib V33    -0.4404720475715522
#>     Attrib V34    -0.16086572049998996
#>     Attrib V35    0.04536404040115564
#>     Attrib V36    0.5296005289720587
#>     Attrib V37    0.5819386150372217
#>     Attrib V38    -0.21995353153237926
#>     Attrib V39    -0.05340515054019934
#>     Attrib V4    0.07892623698100594
#>     Attrib V40    0.04945504104506416
#>     Attrib V41    -0.09569370500615217
#>     Attrib V42    -0.437433112420416
#>     Attrib V43    -0.45299097329784427
#>     Attrib V44    -0.4675762716869005
#>     Attrib V45    -0.446188290143056
#>     Attrib V46    0.01674997256673319
#>     Attrib V47    0.21322564650993656
#>     Attrib V48    -0.45683036438474495
#>     Attrib V49    -0.05686003483053006
#>     Attrib V5    0.22951477248166507
#>     Attrib V50    0.6852328062213555
#>     Attrib V51    0.03699536053911453
#>     Attrib V52    -0.200858736067993
#>     Attrib V53    -0.10483063018619951
#>     Attrib V54    -0.4292377615885759
#>     Attrib V55    0.018218288849064825
#>     Attrib V56    -0.09088845858833376
#>     Attrib V57    0.1947282992425737
#>     Attrib V58    -0.3338689839919382
#>     Attrib V59    -0.48493403647533023
#>     Attrib V6    0.27733793247810967
#>     Attrib V60    -0.4546836932877782
#>     Attrib V7    0.22732988999000847
#>     Attrib V8    -0.18491220617403553
#>     Attrib V9    -0.6147639959008084
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.11344943141544643
#>     Attrib V1    -0.45167529779434656
#>     Attrib V10    0.9799223258134494
#>     Attrib V11    1.4734901586750013
#>     Attrib V12    2.1084419338469016
#>     Attrib V13    1.3588848347984752
#>     Attrib V14    -0.03267477220636344
#>     Attrib V15    -1.7909555705934816
#>     Attrib V16    -1.4201583669900706
#>     Attrib V17    -0.7385980164674174
#>     Attrib V18    0.2903770841475156
#>     Attrib V19    0.36595941354283257
#>     Attrib V2    -0.4246943419948761
#>     Attrib V20    -0.4151178585196934
#>     Attrib V21    0.06802466875990926
#>     Attrib V22    0.46251293836310975
#>     Attrib V23    0.8531102973317747
#>     Attrib V24    1.3600230046038635
#>     Attrib V25    1.7248906487795301
#>     Attrib V26    1.6040951999672022
#>     Attrib V27    1.5534308085041841
#>     Attrib V28    1.0254843998272212
#>     Attrib V29    -0.14537640016615777
#>     Attrib V3    0.38076600735909205
#>     Attrib V30    0.6204282763299915
#>     Attrib V31    0.08712618487217222
#>     Attrib V32    0.03132911325665277
#>     Attrib V33    -0.05924666832478399
#>     Attrib V34    0.043363872716334954
#>     Attrib V35    0.3058863348331445
#>     Attrib V36    -0.7035586651573544
#>     Attrib V37    -1.2348640959844168
#>     Attrib V38    -0.359532221984161
#>     Attrib V39    0.36137183762174835
#>     Attrib V4    0.5239206509632728
#>     Attrib V40    1.089064843777689
#>     Attrib V41    1.3490983256653064
#>     Attrib V42    0.9732394543468417
#>     Attrib V43    0.7277431316211072
#>     Attrib V44    0.4597099607931039
#>     Attrib V45    0.5368026569891197
#>     Attrib V46    0.3702448499340227
#>     Attrib V47    0.46547699398752457
#>     Attrib V48    1.5046985251336953
#>     Attrib V49    0.8454090513248177
#>     Attrib V5    0.12986479036361473
#>     Attrib V50    -0.8630167293517329
#>     Attrib V51    0.6374138498159126
#>     Attrib V52    1.1264674279559739
#>     Attrib V53    0.7381296957407083
#>     Attrib V54    -0.8602159150806812
#>     Attrib V55    -1.0169905215648227
#>     Attrib V56    -0.5562690813800193
#>     Attrib V57    -1.1562716953773304
#>     Attrib V58    -0.009323699857508498
#>     Attrib V59    0.3390220838642727
#>     Attrib V6    -0.11233687100666073
#>     Attrib V60    0.9168168086624938
#>     Attrib V7    -0.36832670076078006
#>     Attrib V8    -0.24400072231171951
#>     Attrib V9    1.6031388123130255
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.2148103545108332
#>     Attrib V1    0.07364066037953723
#>     Attrib V10    0.006744067102068244
#>     Attrib V11    -0.03333845064857944
#>     Attrib V12    0.016066065645601105
#>     Attrib V13    -0.01033774843205955
#>     Attrib V14    0.10269995896652159
#>     Attrib V15    0.01684253366111068
#>     Attrib V16    9.902775222908067E-4
#>     Attrib V17    0.02025475755823991
#>     Attrib V18    -0.06330995723965112
#>     Attrib V19    -0.009981752703157312
#>     Attrib V2    0.09792045824319968
#>     Attrib V20    -0.07068620793257308
#>     Attrib V21    -0.06440756548449643
#>     Attrib V22    -0.08216368371996094
#>     Attrib V23    -0.06259151256037591
#>     Attrib V24    -0.04393271543870409
#>     Attrib V25    -0.004376878007793588
#>     Attrib V26    -0.05427915807926652
#>     Attrib V27    -0.015471496017838657
#>     Attrib V28    -0.022033237360741486
#>     Attrib V29    -0.009513809652186794
#>     Attrib V3    0.043293951232340165
#>     Attrib V30    -0.005329107165538539
#>     Attrib V31    0.0076792647241481935
#>     Attrib V32    0.010897273180160781
#>     Attrib V33    0.06378972728857218
#>     Attrib V34    0.03190897333007376
#>     Attrib V35    0.11644180587838426
#>     Attrib V36    0.11709115449517776
#>     Attrib V37    0.09171646358712063
#>     Attrib V38    0.005824671981868238
#>     Attrib V39    0.05555360885579303
#>     Attrib V4    0.024351444437881745
#>     Attrib V40    0.0525735561515135
#>     Attrib V41    0.04485808592252156
#>     Attrib V42    0.05095502393256096
#>     Attrib V43    0.03523043943579117
#>     Attrib V44    0.015318712810732438
#>     Attrib V45    0.029916766077125678
#>     Attrib V46    0.03472720055361005
#>     Attrib V47    0.03897454882205448
#>     Attrib V48    0.09732830436739984
#>     Attrib V49    0.042943096414106235
#>     Attrib V5    0.014815642045039738
#>     Attrib V50    0.09837597230947817
#>     Attrib V51    0.06454988734658636
#>     Attrib V52    0.059378935182422495
#>     Attrib V53    -0.001480638041598857
#>     Attrib V54    0.007797788954431777
#>     Attrib V55    0.05313780788370029
#>     Attrib V56    0.054066556509299986
#>     Attrib V57    0.1129395416686324
#>     Attrib V58    0.06202206349184228
#>     Attrib V59    0.086568653607325
#>     Attrib V6    0.1441332777427995
#>     Attrib V60    0.1411527926240128
#>     Attrib V7    0.04211849788139355
#>     Attrib V8    0.058988119909106684
#>     Attrib V9    0.028274409196726472
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.4565364174875774
#>     Attrib V1    0.21292730596993698
#>     Attrib V10    0.09439848708564733
#>     Attrib V11    0.30238396787388866
#>     Attrib V12    0.23970919746109665
#>     Attrib V13    0.022206877997105696
#>     Attrib V14    -0.020138594748718593
#>     Attrib V15    -0.28399178871561603
#>     Attrib V16    -0.3151013031942045
#>     Attrib V17    -0.3608001122908042
#>     Attrib V18    -0.21899006472645302
#>     Attrib V19    -0.20299928629662337
#>     Attrib V2    -0.018408163932046924
#>     Attrib V20    -0.18318739177295484
#>     Attrib V21    0.287885854705763
#>     Attrib V22    -0.013414701428112413
#>     Attrib V23    -0.35890515869364503
#>     Attrib V24    -0.03979712184399901
#>     Attrib V25    -0.21708576893099965
#>     Attrib V26    -0.08114854319135925
#>     Attrib V27    0.27855524602990056
#>     Attrib V28    0.4663524867533365
#>     Attrib V29    0.4626781705616299
#>     Attrib V3    -0.07736227866628613
#>     Attrib V30    0.5929609763139548
#>     Attrib V31    -0.32032914958312086
#>     Attrib V32    -0.23282930272762642
#>     Attrib V33    0.05586544885516595
#>     Attrib V34    -0.04214960024765862
#>     Attrib V35    -0.03883366334130368
#>     Attrib V36    -0.28968783662022707
#>     Attrib V37    -0.39101813321435425
#>     Attrib V38    0.0768731956915826
#>     Attrib V39    0.11316981659920831
#>     Attrib V4    0.4200610647474458
#>     Attrib V40    -0.007442636500826355
#>     Attrib V41    0.07115412638725063
#>     Attrib V42    0.06797250257019997
#>     Attrib V43    0.1584924624302031
#>     Attrib V44    0.4559513579723288
#>     Attrib V45    0.4782449610589958
#>     Attrib V46    0.014460405958095597
#>     Attrib V47    -0.13767336449071155
#>     Attrib V48    0.5776983442621813
#>     Attrib V49    0.15308292266003212
#>     Attrib V5    -0.11595077234434309
#>     Attrib V50    -0.42437545618443884
#>     Attrib V51    -0.1488006874865256
#>     Attrib V52    0.1172723327037607
#>     Attrib V53    0.042740747203248
#>     Attrib V54    -0.017868358131570374
#>     Attrib V55    0.06348657151249558
#>     Attrib V56    -0.1045471778943379
#>     Attrib V57    0.3040335201802827
#>     Attrib V58    0.27121676054824084
#>     Attrib V59    0.5444231527602241
#>     Attrib V6    -0.14618954614619986
#>     Attrib V60    0.4205052338088871
#>     Attrib V7    -0.20676962244003105
#>     Attrib V8    0.09442959731139675
#>     Attrib V9    0.5372533350769498
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.09763268076107817
#>     Attrib V1    0.2713201655551272
#>     Attrib V10    -0.09625086959745713
#>     Attrib V11    -0.4207928299224916
#>     Attrib V12    -0.41448165128876346
#>     Attrib V13    -0.24451916288541914
#>     Attrib V14    0.0509002896806135
#>     Attrib V15    0.4955544401178629
#>     Attrib V16    0.33393406243128837
#>     Attrib V17    0.06045056069826553
#>     Attrib V18    -0.08962241232335061
#>     Attrib V19    -0.2350567588504427
#>     Attrib V2    0.5858946557487595
#>     Attrib V20    -0.37836802206590747
#>     Attrib V21    -0.8043011582716422
#>     Attrib V22    -0.7467147381577386
#>     Attrib V23    -0.6729684961985629
#>     Attrib V24    -0.35780609590273044
#>     Attrib V25    0.4404883310446297
#>     Attrib V26    0.770343090835558
#>     Attrib V27    0.21118701269334986
#>     Attrib V28    0.25599935840353716
#>     Attrib V29    0.5766820952741573
#>     Attrib V3    0.5233309683088091
#>     Attrib V30    -0.3844692885447472
#>     Attrib V31    1.0728145241393086
#>     Attrib V32    0.6419024017206247
#>     Attrib V33    -0.6703124754374035
#>     Attrib V34    -0.15175342187979643
#>     Attrib V35    0.2586693509318627
#>     Attrib V36    0.9598473770892134
#>     Attrib V37    1.0148847020904939
#>     Attrib V38    -0.2542744951302831
#>     Attrib V39    0.11136839097752164
#>     Attrib V4    0.18432459010209737
#>     Attrib V40    0.11726452895610791
#>     Attrib V41    -0.23483290192071984
#>     Attrib V42    -0.8696162117503313
#>     Attrib V43    -0.8970630256269958
#>     Attrib V44    -0.7387413162178754
#>     Attrib V45    -0.4853238230029206
#>     Attrib V46    0.06924374583760223
#>     Attrib V47    0.20462463586484256
#>     Attrib V48    -0.5931598882520701
#>     Attrib V49    -0.021078415315797218
#>     Attrib V5    0.28718731471463593
#>     Attrib V50    0.9913045700362784
#>     Attrib V51    -0.1350269211848264
#>     Attrib V52    -0.47525112666619246
#>     Attrib V53    -0.22953099585792672
#>     Attrib V54    -0.7336405441365407
#>     Attrib V55    0.03598718292913628
#>     Attrib V56    -0.2749318857607186
#>     Attrib V57    0.34972357586215846
#>     Attrib V58    -0.5632050811402542
#>     Attrib V59    -0.7145910321415169
#>     Attrib V6    0.33149442676933255
#>     Attrib V60    -0.6133875815546959
#>     Attrib V7    0.4185738585280199
#>     Attrib V8    -0.27849846130876177
#>     Attrib V9    -0.9349604871736359
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.2128465562548573
#>     Attrib V1    -0.00824995352150791
#>     Attrib V10    -0.014577899577012127
#>     Attrib V11    0.2044938830866237
#>     Attrib V12    0.14632406211898125
#>     Attrib V13    0.02764337524926396
#>     Attrib V14    0.04643698039533354
#>     Attrib V15    -0.18012969573438012
#>     Attrib V16    -0.17679134468278343
#>     Attrib V17    -0.1472969115969935
#>     Attrib V18    -0.028420872667963826
#>     Attrib V19    -0.022567584924158005
#>     Attrib V2    -0.1204725249526341
#>     Attrib V20    0.17691545040127518
#>     Attrib V21    0.5078231921969145
#>     Attrib V22    0.3289524685682873
#>     Attrib V23    0.006718813929994685
#>     Attrib V24    0.13373655199200124
#>     Attrib V25    -0.1718608283365109
#>     Attrib V26    -0.4241698574468963
#>     Attrib V27    -0.07676471652531504
#>     Attrib V28    -0.006237942810366412
#>     Attrib V29    -0.022772485596446984
#>     Attrib V3    -0.11066024799754134
#>     Attrib V30    0.2728959379039537
#>     Attrib V31    -0.438682925881573
#>     Attrib V32    -0.2628965247671079
#>     Attrib V33    0.24354002934799035
#>     Attrib V34    0.09315746959768688
#>     Attrib V35    -0.046352664018676465
#>     Attrib V36    -0.4161158520866877
#>     Attrib V37    -0.42297244978117365
#>     Attrib V38    0.07521766773668609
#>     Attrib V39    0.021262891787470234
#>     Attrib V4    -0.05943377325608486
#>     Attrib V40    -0.005749686938299559
#>     Attrib V41    0.0786467673758509
#>     Attrib V42    0.14997329793229927
#>     Attrib V43    0.28336411333610045
#>     Attrib V44    0.26918120452246364
#>     Attrib V45    0.3344045367378819
#>     Attrib V46    -0.021481277358262323
#>     Attrib V47    -0.1280615082145868
#>     Attrib V48    0.3743219443728658
#>     Attrib V49    0.011720985771802623
#>     Attrib V5    -0.23862421668677097
#>     Attrib V50    -0.4669642388787298
#>     Attrib V51    -0.059740328745449
#>     Attrib V52    0.19334356392379906
#>     Attrib V53    -0.01674710479954609
#>     Attrib V54    0.19713485964641442
#>     Attrib V55    0.04823540074363578
#>     Attrib V56    0.03642721691666904
#>     Attrib V57    0.045320221016872386
#>     Attrib V58    0.21643524025391117
#>     Attrib V59    0.358731393454836
#>     Attrib V6    -0.13163349042095318
#>     Attrib V60    0.33029897104719835
#>     Attrib V7    -0.23184851058113098
#>     Attrib V8    0.08347613194830365
#>     Attrib V9    0.4827351405317442
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.08569740205973234
#>     Attrib V1    0.13498524172937004
#>     Attrib V10    0.06573600122383555
#>     Attrib V11    0.060772159280092546
#>     Attrib V12    0.08133339642330142
#>     Attrib V13    0.05402820455638314
#>     Attrib V14    0.07614024626523094
#>     Attrib V15    0.001910403201358942
#>     Attrib V16    -0.05346179509958979
#>     Attrib V17    -0.055113079310954625
#>     Attrib V18    -0.0982774210915296
#>     Attrib V19    -0.11854177895366405
#>     Attrib V2    0.0978617711214155
#>     Attrib V20    -0.08973124248801562
#>     Attrib V21    0.06526288460248499
#>     Attrib V22    -0.03842621026018519
#>     Attrib V23    -0.099827786819017
#>     Attrib V24    -0.027212990785835656
#>     Attrib V25    -0.043642296584207575
#>     Attrib V26    -0.11426801427235685
#>     Attrib V27    -0.0637107564785108
#>     Attrib V28    -0.023738289503220628
#>     Attrib V29    -0.09314333187086632
#>     Attrib V3    0.025791003992852845
#>     Attrib V30    0.10383645471474678
#>     Attrib V31    -0.06742680396261487
#>     Attrib V32    -0.10862527905747008
#>     Attrib V33    0.021234424684737612
#>     Attrib V34    7.715707155338252E-4
#>     Attrib V35    0.03360856974032862
#>     Attrib V36    -0.09897721712083395
#>     Attrib V37    -0.09129116747046048
#>     Attrib V38    0.032294208109226945
#>     Attrib V39    0.11714717527224683
#>     Attrib V4    0.0853340034195607
#>     Attrib V40    0.046335566232369736
#>     Attrib V41    0.04173294552886816
#>     Attrib V42    0.08311390411890578
#>     Attrib V43    0.06118190530850411
#>     Attrib V44    0.03913137247452428
#>     Attrib V45    0.12798636825409135
#>     Attrib V46    0.04206920675428449
#>     Attrib V47    -0.02603592695779093
#>     Attrib V48    0.19737004480272413
#>     Attrib V49    0.03779193376029074
#>     Attrib V5    -0.05615876630725375
#>     Attrib V50    -0.09181825100136774
#>     Attrib V51    0.029117755058294392
#>     Attrib V52    0.11292224433051198
#>     Attrib V53    0.04037893448613763
#>     Attrib V54    0.12708209931772876
#>     Attrib V55    0.10567329543293678
#>     Attrib V56    0.11180418389982492
#>     Attrib V57    0.12422805713309286
#>     Attrib V58    0.1728722878315767
#>     Attrib V59    0.26913165720285903
#>     Attrib V6    0.02335301584015747
#>     Attrib V60    0.2576227319139495
#>     Attrib V7    -0.043107649175979666
#>     Attrib V8    0.04880028016866429
#>     Attrib V9    0.16500835976658834
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.04330627665363943
#>     Attrib V1    0.08686170863241244
#>     Attrib V10    -0.08757555560616644
#>     Attrib V11    0.029516406445679724
#>     Attrib V12    -0.08733100900010109
#>     Attrib V13    -0.03783664497380361
#>     Attrib V14    0.08266679975430735
#>     Attrib V15    0.03428844781647304
#>     Attrib V16    0.02358768023259049
#>     Attrib V17    0.020466112210647827
#>     Attrib V18    0.04091143499002581
#>     Attrib V19    0.027580937342122525
#>     Attrib V2    0.03863722612595193
#>     Attrib V20    0.22063063008955358
#>     Attrib V21    0.376651114684249
#>     Attrib V22    0.2613270209660389
#>     Attrib V23    0.027011018043461368
#>     Attrib V24    0.04492269840350688
#>     Attrib V25    -0.37244050592244743
#>     Attrib V26    -0.5618412214539247
#>     Attrib V27    -0.35011523295540425
#>     Attrib V28    -0.3360753223486331
#>     Attrib V29    -0.32125479246582656
#>     Attrib V3    -0.12245472856427118
#>     Attrib V30    0.09139150436097637
#>     Attrib V31    -0.4289990994484779
#>     Attrib V32    -0.33125937449511683
#>     Attrib V33    0.2133357752906203
#>     Attrib V34    0.08641608328563315
#>     Attrib V35    -0.056052466263193955
#>     Attrib V36    -0.35669309182006176
#>     Attrib V37    -0.33873403488995113
#>     Attrib V38    0.1719190230690868
#>     Attrib V39    -0.023462896334831354
#>     Attrib V4    -0.05458899768307454
#>     Attrib V40    -0.10793693917055755
#>     Attrib V41    -0.058008350030671
#>     Attrib V42    0.11327944472215247
#>     Attrib V43    0.20832828163899442
#>     Attrib V44    0.24499118055898939
#>     Attrib V45    0.19408636978901805
#>     Attrib V46    -0.028773145402697778
#>     Attrib V47    -0.14532528503047837
#>     Attrib V48    0.25830191951393516
#>     Attrib V49    -0.008880057446482795
#>     Attrib V5    -0.17152321734939202
#>     Attrib V50    -0.31815006078076014
#>     Attrib V51    -0.042655283867948424
#>     Attrib V52    0.14051397433906374
#>     Attrib V53    0.07393891311916681
#>     Attrib V54    0.5139108326648395
#>     Attrib V55    0.2261240027671444
#>     Attrib V56    0.11367587065962535
#>     Attrib V57    0.17956742897282654
#>     Attrib V58    0.24031117298964796
#>     Attrib V59    0.40796222467528387
#>     Attrib V6    -0.08926926645123162
#>     Attrib V60    0.3471350913043996
#>     Attrib V7    -0.1120291626291432
#>     Attrib V8    0.11575877096564
#>     Attrib V9    0.35833893131257466
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.07003319834577844
#>     Attrib V1    0.13192198230486002
#>     Attrib V10    -0.04988682352027845
#>     Attrib V11    0.045558666703700734
#>     Attrib V12    0.011138538346018611
#>     Attrib V13    -0.04521609314246257
#>     Attrib V14    0.12124789554936297
#>     Attrib V15    0.02427196157412174
#>     Attrib V16    0.004824177120044858
#>     Attrib V17    -0.08556959658027458
#>     Attrib V18    -0.01064482499532719
#>     Attrib V19    -0.08805853041153561
#>     Attrib V2    0.04737833635988706
#>     Attrib V20    0.018450948504727182
#>     Attrib V21    0.14090026353071114
#>     Attrib V22    0.004371124855068209
#>     Attrib V23    -0.059302198214906676
#>     Attrib V24    -0.025927025925243506
#>     Attrib V25    -0.1890022771141593
#>     Attrib V26    -0.2603491555568577
#>     Attrib V27    -0.12485723976553044
#>     Attrib V28    -0.06329392749824317
#>     Attrib V29    -0.0891630265420951
#>     Attrib V3    0.043741766060631036
#>     Attrib V30    0.10638940368433437
#>     Attrib V31    -0.22180233791232426
#>     Attrib V32    -0.1502630400838527
#>     Attrib V33    0.08012506622834145
#>     Attrib V34    0.02847487086143701
#>     Attrib V35    -0.0020664755575796755
#>     Attrib V36    -0.07521861546516066
#>     Attrib V37    -0.1619652900986012
#>     Attrib V38    0.02705085045894126
#>     Attrib V39    0.060380435634592625
#>     Attrib V4    0.010619023184440279
#>     Attrib V40    -0.03510669887599444
#>     Attrib V41    -0.03395682679871034
#>     Attrib V42    0.06663752330539408
#>     Attrib V43    0.037639057422342574
#>     Attrib V44    0.11104543659345671
#>     Attrib V45    0.17451293046599495
#>     Attrib V46    0.03721075781672432
#>     Attrib V47    -0.033250451787413225
#>     Attrib V48    0.1415741659304277
#>     Attrib V49    0.08281805786103119
#>     Attrib V5    -0.028274011442378323
#>     Attrib V50    -0.125341305619215
#>     Attrib V51    0.052810436792341
#>     Attrib V52    0.14865298129167046
#>     Attrib V53    0.03538922793194179
#>     Attrib V54    0.13944196733992512
#>     Attrib V55    0.1263355063755579
#>     Attrib V56    0.0761035785329654
#>     Attrib V57    0.15775577327997875
#>     Attrib V58    0.22607725188617794
#>     Attrib V59    0.2475205387414936
#>     Attrib V6    0.030147452506223173
#>     Attrib V60    0.23570305865089172
#>     Attrib V7    -0.012735265764048077
#>     Attrib V8    0.11228508804977486
#>     Attrib V9    0.21735046277769338
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
#>  0.1884058 
```
