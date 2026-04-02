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
#>     Threshold    -0.15379054686818253
#>     Node 2    2.1989635431003522
#>     Node 3    1.68694738392648
#>     Node 4    1.1514419985049529
#>     Node 5    -1.1671699874035717
#>     Node 6    0.7532047745577692
#>     Node 7    2.896320090285139
#>     Node 8    1.2213753199946564
#>     Node 9    2.634542460201199
#>     Node 10    -2.3332710901922193
#>     Node 11    1.9056490767824317
#>     Node 12    1.444532952401332
#>     Node 13    -0.6073131290317053
#>     Node 14    2.1574324864431387
#>     Node 15    -2.9085955471050684
#>     Node 16    -0.002381065045740798
#>     Node 17    1.3846767271395004
#>     Node 18    -0.7159114231497269
#>     Node 19    2.1801384920172993
#>     Node 20    1.13718933739582
#>     Node 21    -2.9187275745817245
#>     Node 22    1.715151098452138
#>     Node 23    0.88624353818994
#>     Node 24    -0.9662048332065274
#>     Node 25    5.09421996463337
#>     Node 26    -0.6966885835519329
#>     Node 27    2.4327810153080858
#>     Node 28    -1.2568364895442596
#>     Node 29    1.2721603856006882
#>     Node 30    -1.843365641346931
#>     Node 31    1.499040835568237
#>     Node 32    -0.19315627760555565
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.19180136158745908
#>     Node 2    -2.2186383684942688
#>     Node 3    -1.6755585828909147
#>     Node 4    -1.112488409169622
#>     Node 5    1.1739162231169906
#>     Node 6    -0.7281429824241878
#>     Node 7    -2.895125047180118
#>     Node 8    -1.2540749561116609
#>     Node 9    -2.6308987990809096
#>     Node 10    2.2588181221200623
#>     Node 11    -1.873758162097035
#>     Node 12    -1.5194282959543066
#>     Node 13    0.6624907052008464
#>     Node 14    -2.0943199594842583
#>     Node 15    2.892913040174507
#>     Node 16    -0.007241782938949738
#>     Node 17    -1.348272431814256
#>     Node 18    0.7573320993789885
#>     Node 19    -2.1819797350515624
#>     Node 20    -1.117982589738971
#>     Node 21    2.9632289222058943
#>     Node 22    -1.7626006766775568
#>     Node 23    -0.9256028394190873
#>     Node 24    0.944859986650934
#>     Node 25    -5.094951608159835
#>     Node 26    0.6149417541218803
#>     Node 27    -2.478085427593839
#>     Node 28    1.197486378664985
#>     Node 29    -1.3027363144898956
#>     Node 30    1.9150619353070897
#>     Node 31    -1.436336095104513
#>     Node 32    0.18356982287437126
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.8653556198416932
#>     Attrib V1    0.06274340306569978
#>     Attrib V10    0.25845929732986805
#>     Attrib V11    0.3902517037255614
#>     Attrib V12    0.702637010062614
#>     Attrib V13    0.0717939897264965
#>     Attrib V14    -0.8285538491323892
#>     Attrib V15    -0.6019894906413764
#>     Attrib V16    -0.40443564710193053
#>     Attrib V17    -0.050098517889219166
#>     Attrib V18    -0.04606027370585728
#>     Attrib V19    -0.26520178445785086
#>     Attrib V2    -0.1057094142545183
#>     Attrib V20    -0.2821055060690396
#>     Attrib V21    0.3368880324548684
#>     Attrib V22    0.377549019481387
#>     Attrib V23    0.4253322957882808
#>     Attrib V24    0.6434089196499141
#>     Attrib V25    -0.1670202160005192
#>     Attrib V26    -0.5973281814862822
#>     Attrib V27    -0.5052455951837967
#>     Attrib V28    0.5322712836227627
#>     Attrib V29    0.17349874026686113
#>     Attrib V3    -0.6330626017742371
#>     Attrib V30    0.41704709543735863
#>     Attrib V31    -1.2975190639028482
#>     Attrib V32    0.02375760043898755
#>     Attrib V33    0.4098577990728077
#>     Attrib V34    0.09780144789367567
#>     Attrib V35    0.15254996964688125
#>     Attrib V36    -0.8019427778811559
#>     Attrib V37    -0.5590928851787137
#>     Attrib V38    0.20935668880451044
#>     Attrib V39    0.22233528044154183
#>     Attrib V4    0.046142693940888733
#>     Attrib V40    -0.08247063350257812
#>     Attrib V41    0.928240363506739
#>     Attrib V42    0.8997160062076655
#>     Attrib V43    0.9057610152135787
#>     Attrib V44    1.085461823299876
#>     Attrib V45    0.6772151782888488
#>     Attrib V46    0.3407657052017488
#>     Attrib V47    0.3201326102961782
#>     Attrib V48    0.44906084598936585
#>     Attrib V49    0.054244713584801284
#>     Attrib V5    -0.010318912387292241
#>     Attrib V50    -0.9652634137732189
#>     Attrib V51    0.16133940769996163
#>     Attrib V52    -0.1026983764951709
#>     Attrib V53    -0.6447394708321839
#>     Attrib V54    0.6647183936495475
#>     Attrib V55    -0.6663685450604938
#>     Attrib V56    -0.24485453569630886
#>     Attrib V57    0.0928368480394597
#>     Attrib V58    0.06238782127386497
#>     Attrib V59    0.19324586684785602
#>     Attrib V6    -0.06621842794218595
#>     Attrib V60    0.12625035137627727
#>     Attrib V7    -0.7937998673574883
#>     Attrib V8    0.199581576694966
#>     Attrib V9    0.6783951153800817
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.5727807077393566
#>     Attrib V1    -0.05830872156451542
#>     Attrib V10    0.5104726077457384
#>     Attrib V11    0.49049454944717447
#>     Attrib V12    0.5875024444038892
#>     Attrib V13    -0.05821746343392289
#>     Attrib V14    -0.6295883025332002
#>     Attrib V15    -0.32044390183021143
#>     Attrib V16    -0.25899100634173955
#>     Attrib V17    0.040501084604755405
#>     Attrib V18    -0.021626396134570052
#>     Attrib V19    0.23167937790096305
#>     Attrib V2    -0.01840539529778347
#>     Attrib V20    -0.05360650288243544
#>     Attrib V21    0.0951224243916555
#>     Attrib V22    0.19141373782225624
#>     Attrib V23    0.15198368185374436
#>     Attrib V24    0.4261077206605253
#>     Attrib V25    -0.019642804690922663
#>     Attrib V26    -0.3055402594357202
#>     Attrib V27    -0.31492800087483314
#>     Attrib V28    0.5467431959694367
#>     Attrib V29    -0.019996893114016784
#>     Attrib V3    -0.39601322561888297
#>     Attrib V30    0.35623101003468693
#>     Attrib V31    -0.9239563169374649
#>     Attrib V32    -0.006067158953344719
#>     Attrib V33    0.08901826232512468
#>     Attrib V34    -0.18174347953389536
#>     Attrib V35    -0.05137430287885578
#>     Attrib V36    -0.9044114247233453
#>     Attrib V37    -0.7746416415431381
#>     Attrib V38    -0.09377468320237395
#>     Attrib V39    0.05811962916532668
#>     Attrib V4    0.20871204235039628
#>     Attrib V40    -0.3764891673535829
#>     Attrib V41    0.15185483350589654
#>     Attrib V42    0.15761052245099755
#>     Attrib V43    0.1753672647714501
#>     Attrib V44    0.5800086058460704
#>     Attrib V45    0.3633156194917825
#>     Attrib V46    0.17756128524100004
#>     Attrib V47    0.3513118075573655
#>     Attrib V48    0.4383415096570308
#>     Attrib V49    0.29417116824272455
#>     Attrib V5    0.19893094387252988
#>     Attrib V50    -0.8380341148391137
#>     Attrib V51    0.26875609648476856
#>     Attrib V52    0.2791475644675402
#>     Attrib V53    -0.2791664508361433
#>     Attrib V54    0.8780351794904687
#>     Attrib V55    -0.26738235383747494
#>     Attrib V56    -0.128627485961549
#>     Attrib V57    0.1124832554418873
#>     Attrib V58    0.2837871209245247
#>     Attrib V59    0.06943997527084994
#>     Attrib V6    0.038929644285399266
#>     Attrib V60    0.07630946462181053
#>     Attrib V7    -0.5750862995646606
#>     Attrib V8    0.2632898232611748
#>     Attrib V9    0.7499862444393298
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.24318722931630757
#>     Attrib V1    0.058342050669138376
#>     Attrib V10    0.14937978120989595
#>     Attrib V11    0.12296580930089206
#>     Attrib V12    0.12789867448995257
#>     Attrib V13    -0.1276264769219079
#>     Attrib V14    -0.3213385685041476
#>     Attrib V15    -0.07408393124288691
#>     Attrib V16    -0.040841029505400556
#>     Attrib V17    0.10726278974736504
#>     Attrib V18    0.03840095826422396
#>     Attrib V19    0.1744019212517097
#>     Attrib V2    0.06431118060509369
#>     Attrib V20    0.08293004687233949
#>     Attrib V21    0.2206700863870733
#>     Attrib V22    0.08048976153232837
#>     Attrib V23    -0.050641038627628025
#>     Attrib V24    0.0844386218743126
#>     Attrib V25    -0.2009826766834226
#>     Attrib V26    -0.3943664681600134
#>     Attrib V27    -0.42043219304140594
#>     Attrib V28    0.12149423050450756
#>     Attrib V29    -0.09107129008768049
#>     Attrib V3    -0.11021865200379877
#>     Attrib V30    0.1866115837133647
#>     Attrib V31    -0.5921475414547648
#>     Attrib V32    -0.025827606723123047
#>     Attrib V33    0.1557116225641214
#>     Attrib V34    -0.09099830610879556
#>     Attrib V35    -0.129151912536298
#>     Attrib V36    -0.5859260168250768
#>     Attrib V37    -0.5401564735633193
#>     Attrib V38    0.01385133745858939
#>     Attrib V39    0.08795869077796435
#>     Attrib V4    0.17693408811178504
#>     Attrib V40    -0.2508437250733999
#>     Attrib V41    -0.008102318380975991
#>     Attrib V42    0.15187291418632626
#>     Attrib V43    0.14304842601603054
#>     Attrib V44    0.41169387079198666
#>     Attrib V45    0.2843866827837486
#>     Attrib V46    -0.02669972273784882
#>     Attrib V47    0.0821540487903806
#>     Attrib V48    0.24963171784148142
#>     Attrib V49    0.1871525651159859
#>     Attrib V5    0.09895955507343697
#>     Attrib V50    -0.46574133344484553
#>     Attrib V51    0.15405996678342787
#>     Attrib V52    0.11252396698762263
#>     Attrib V53    -0.08947044552880018
#>     Attrib V54    0.5074369711421985
#>     Attrib V55    -0.18224879508538422
#>     Attrib V56    0.12882565143779173
#>     Attrib V57    0.16723475077109207
#>     Attrib V58    0.1478156775830997
#>     Attrib V59    0.22384574276554045
#>     Attrib V6    -0.10692172043021786
#>     Attrib V60    0.14420483367436376
#>     Attrib V7    -0.36352421505175886
#>     Attrib V8    0.12981192388345558
#>     Attrib V9    0.41728195551807806
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.3590053159751517
#>     Attrib V1    -0.02351108138927749
#>     Attrib V10    -0.19147028023798476
#>     Attrib V11    -0.16841364895643443
#>     Attrib V12    -0.25709684944232036
#>     Attrib V13    0.11983214853173059
#>     Attrib V14    0.4804568710909327
#>     Attrib V15    0.23754503182830966
#>     Attrib V16    0.05193299373248419
#>     Attrib V17    -0.0903129227911361
#>     Attrib V18    -0.06943226630200629
#>     Attrib V19    -0.244315131552718
#>     Attrib V2    0.013612983755786956
#>     Attrib V20    -0.1108801595045095
#>     Attrib V21    -0.17918995021928244
#>     Attrib V22    -0.17107257139988036
#>     Attrib V23    0.022473580050704597
#>     Attrib V24    -0.19930212152898716
#>     Attrib V25    0.197299603081359
#>     Attrib V26    0.363180050053128
#>     Attrib V27    0.38425540887522186
#>     Attrib V28    -0.1788254788868233
#>     Attrib V29    0.1850693015855452
#>     Attrib V3    0.2425483051189104
#>     Attrib V30    -0.11254208362789804
#>     Attrib V31    0.7733039839338903
#>     Attrib V32    0.0588032737361937
#>     Attrib V33    -0.13910906684205174
#>     Attrib V34    0.10477567360772602
#>     Attrib V35    0.17750061937117578
#>     Attrib V36    0.6912772641904115
#>     Attrib V37    0.5441326351866231
#>     Attrib V38    -0.16275170585012086
#>     Attrib V39    -0.1537586822275315
#>     Attrib V4    -0.2354221326127982
#>     Attrib V40    0.28086403049278325
#>     Attrib V41    -0.09093429122095109
#>     Attrib V42    -0.14383491296627313
#>     Attrib V43    -0.23069144395874266
#>     Attrib V44    -0.4174756572930382
#>     Attrib V45    -0.28217323800614375
#>     Attrib V46    -0.14764554239398706
#>     Attrib V47    -0.2020415129749071
#>     Attrib V48    -0.3371075434799068
#>     Attrib V49    -0.2747602182916489
#>     Attrib V5    -0.08962196813528778
#>     Attrib V50    0.579089243779033
#>     Attrib V51    -0.20431271374066015
#>     Attrib V52    -0.16996530679443228
#>     Attrib V53    0.10447541348855627
#>     Attrib V54    -0.6714890377947886
#>     Attrib V55    0.28226228876012854
#>     Attrib V56    -0.0164556772108042
#>     Attrib V57    -0.13920696662253887
#>     Attrib V58    -0.2070213023562077
#>     Attrib V59    -0.14844079180815542
#>     Attrib V6    0.10446359694716374
#>     Attrib V60    -0.1307509231085783
#>     Attrib V7    0.48151027265755864
#>     Attrib V8    -0.10062625789682873
#>     Attrib V9    -0.48585352370967705
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.12185837056576777
#>     Attrib V1    0.12492291772033859
#>     Attrib V10    0.006451091278410853
#>     Attrib V11    0.037474652416299076
#>     Attrib V12    0.09543897337013803
#>     Attrib V13    -0.09831620552444244
#>     Attrib V14    -0.15818941984042514
#>     Attrib V15    -0.01383359373779883
#>     Attrib V16    0.08029288072374767
#>     Attrib V17    0.06269089012088473
#>     Attrib V18    0.07788476361051745
#>     Attrib V19    0.0946450248264939
#>     Attrib V2    0.11814943935196388
#>     Attrib V20    0.07631265954993946
#>     Attrib V21    0.13169607607315428
#>     Attrib V22    0.010500371238663419
#>     Attrib V23    -0.0770443665490806
#>     Attrib V24    0.05476463406620883
#>     Attrib V25    -0.08966211936745642
#>     Attrib V26    -0.26997721806886477
#>     Attrib V27    -0.22419057403042358
#>     Attrib V28    -0.03506482873653482
#>     Attrib V29    -0.13181785553430067
#>     Attrib V3    -0.02216755817565761
#>     Attrib V30    0.08143195286690522
#>     Attrib V31    -0.3530061359299337
#>     Attrib V32    0.005028458941033284
#>     Attrib V33    0.0837218524657941
#>     Attrib V34    -0.09384499716338505
#>     Attrib V35    -0.08409527584458493
#>     Attrib V36    -0.3512575510649186
#>     Attrib V37    -0.30744011881687255
#>     Attrib V38    0.03524091316341662
#>     Attrib V39    0.05976771411751603
#>     Attrib V4    0.19509495444586833
#>     Attrib V40    -0.1754838380053189
#>     Attrib V41    0.03157377166667884
#>     Attrib V42    0.09992792057383226
#>     Attrib V43    0.09822587187221087
#>     Attrib V44    0.18514803807062885
#>     Attrib V45    0.135897254893349
#>     Attrib V46    -0.014893086123874936
#>     Attrib V47    0.025659348874317575
#>     Attrib V48    0.06169078969757642
#>     Attrib V49    0.03888105710011001
#>     Attrib V5    0.043292728797456784
#>     Attrib V50    -0.1983170788595901
#>     Attrib V51    0.08454067373022268
#>     Attrib V52    0.07058370460558126
#>     Attrib V53    0.03339042996982606
#>     Attrib V54    0.33074265406714726
#>     Attrib V55    -0.04351122489797264
#>     Attrib V56    0.1515829785583822
#>     Attrib V57    0.1722818523777938
#>     Attrib V58    0.147881708120651
#>     Attrib V59    0.2743564872589583
#>     Attrib V6    0.0010250979642738554
#>     Attrib V60    0.2059887140280547
#>     Attrib V7    -0.1718940221851326
#>     Attrib V8    0.1519121076466287
#>     Attrib V9    0.23074112195867152
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.611789145729056
#>     Attrib V1    0.010657022627006256
#>     Attrib V10    1.016223015332107
#>     Attrib V11    1.1666582045062872
#>     Attrib V12    1.1647281509343814
#>     Attrib V13    0.34945779614011974
#>     Attrib V14    -0.4680388135153727
#>     Attrib V15    -0.5636510890463572
#>     Attrib V16    -0.5025544699563086
#>     Attrib V17    -0.24238273646781125
#>     Attrib V18    -0.07420276752574263
#>     Attrib V19    0.010677829875686166
#>     Attrib V2    -0.08991026920601494
#>     Attrib V20    -0.15682713478736304
#>     Attrib V21    0.10308054187833807
#>     Attrib V22    0.2691847076950068
#>     Attrib V23    0.6475728090152695
#>     Attrib V24    0.7485523278179788
#>     Attrib V25    0.2917450479836707
#>     Attrib V26    0.5707362885822524
#>     Attrib V27    0.8061286771627184
#>     Attrib V28    1.8798908906064817
#>     Attrib V29    1.3226338077468638
#>     Attrib V3    -0.45869335635017316
#>     Attrib V30    0.688249870951715
#>     Attrib V31    -0.6685666545063051
#>     Attrib V32    -0.25258710120422934
#>     Attrib V33    -0.5543829697427619
#>     Attrib V34    -0.2546881955072706
#>     Attrib V35    0.45708531683086545
#>     Attrib V36    -0.5474046180211942
#>     Attrib V37    -0.22114077193311962
#>     Attrib V38    -0.19676473047309853
#>     Attrib V39    0.09192962180206524
#>     Attrib V4    0.1016983322441865
#>     Attrib V40    -0.051139774730814186
#>     Attrib V41    0.6420758626842795
#>     Attrib V42    0.11326952569004851
#>     Attrib V43    0.13341935160986013
#>     Attrib V44    0.5448106481502866
#>     Attrib V45    0.7188882992497934
#>     Attrib V46    0.8786215327422182
#>     Attrib V47    0.8372658035978955
#>     Attrib V48    0.7001696840524263
#>     Attrib V49    0.6302504731697235
#>     Attrib V5    0.5601271463498231
#>     Attrib V50    -0.3110122088573274
#>     Attrib V51    0.6457001069290529
#>     Attrib V52    0.7294266581792876
#>     Attrib V53    0.006463487818418926
#>     Attrib V54    0.4990789004335572
#>     Attrib V55    -0.12943016424934592
#>     Attrib V56    -0.6504261431586046
#>     Attrib V57    0.027531559158019924
#>     Attrib V58    0.3492677061784203
#>     Attrib V59    -0.21821387803910466
#>     Attrib V6    0.6233418817296271
#>     Attrib V60    0.06220653046630515
#>     Attrib V7    -0.44533533640798995
#>     Attrib V8    0.11792710283139414
#>     Attrib V9    1.130725874027212
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.4018334236680808
#>     Attrib V1    -0.05358013184266559
#>     Attrib V10    0.3494955960082331
#>     Attrib V11    0.36291727896434767
#>     Attrib V12    0.3851136679274757
#>     Attrib V13    -0.022180182380758022
#>     Attrib V14    -0.48058989352198744
#>     Attrib V15    -0.2794778459775013
#>     Attrib V16    -0.14373921356000943
#>     Attrib V17    -0.019947391344312344
#>     Attrib V18    -0.050391558085975945
#>     Attrib V19    0.1537690751376952
#>     Attrib V2    0.004287691169928206
#>     Attrib V20    -0.030926812093059964
#>     Attrib V21    0.1119952189412178
#>     Attrib V22    0.10418743105210033
#>     Attrib V23    0.0871859861938494
#>     Attrib V24    0.3158495467680353
#>     Attrib V25    -0.00191498807926767
#>     Attrib V26    -0.06027622268654392
#>     Attrib V27    -0.062400521975412564
#>     Attrib V28    0.5075657725639962
#>     Attrib V29    0.14023751240798954
#>     Attrib V3    -0.279529513887423
#>     Attrib V30    0.2739848722649299
#>     Attrib V31    -0.6783985462576401
#>     Attrib V32    -0.10010521211014003
#>     Attrib V33    -0.0012700610207024218
#>     Attrib V34    -0.05591435110808748
#>     Attrib V35    0.09872969427153384
#>     Attrib V36    -0.45557671544169154
#>     Attrib V37    -0.43900459566350697
#>     Attrib V38    0.0698628623530376
#>     Attrib V39    0.09281321802963441
#>     Attrib V4    0.18070443370153
#>     Attrib V40    -0.24610867888169224
#>     Attrib V41    0.06508350556431751
#>     Attrib V42    -0.047473973910689145
#>     Attrib V43    0.0941806465634168
#>     Attrib V44    0.4792467069325183
#>     Attrib V45    0.38074436540965767
#>     Attrib V46    0.22882801606261263
#>     Attrib V47    0.2829243606874446
#>     Attrib V48    0.37156376379756845
#>     Attrib V49    0.25554953136929326
#>     Attrib V5    0.1167164718933474
#>     Attrib V50    -0.5550828696582231
#>     Attrib V51    0.2088773075442338
#>     Attrib V52    0.18534198173140365
#>     Attrib V53    -0.11002014114101573
#>     Attrib V54    0.5851710794336895
#>     Attrib V55    -0.1909095522485396
#>     Attrib V56    -0.12546293974164044
#>     Attrib V57    0.1150294074770985
#>     Attrib V58    0.11714611190568704
#>     Attrib V59    0.07879650373655193
#>     Attrib V6    0.021755584395561706
#>     Attrib V60    0.13222799114946393
#>     Attrib V7    -0.37327410572554787
#>     Attrib V8    0.1071934826167033
#>     Attrib V9    0.535703535901257
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.4224936677618309
#>     Attrib V1    -0.22916568250018973
#>     Attrib V10    1.129802648890852
#>     Attrib V11    1.149547549074935
#>     Attrib V12    1.2635835950126042
#>     Attrib V13    0.32591869918428734
#>     Attrib V14    -0.761682385651607
#>     Attrib V15    -0.7312292102504782
#>     Attrib V16    -0.5728962821437391
#>     Attrib V17    -0.18785669573765543
#>     Attrib V18    0.04605558770948366
#>     Attrib V19    0.05064092329118983
#>     Attrib V2    -0.20538539576106127
#>     Attrib V20    -0.2621719788652646
#>     Attrib V21    -0.018140101326215116
#>     Attrib V22    0.27741084130122307
#>     Attrib V23    0.6433891926239379
#>     Attrib V24    0.9066098395504109
#>     Attrib V25    0.6456727788673481
#>     Attrib V26    0.7607413934049271
#>     Attrib V27    0.7127598968879518
#>     Attrib V28    1.3652197060943743
#>     Attrib V29    0.458476033062128
#>     Attrib V3    -0.5640830887489174
#>     Attrib V30    0.34082313877129294
#>     Attrib V31    -0.606037015791262
#>     Attrib V32    -0.09369480947476384
#>     Attrib V33    -0.31509712303277065
#>     Attrib V34    0.048593095976474814
#>     Attrib V35    0.6105892014768629
#>     Attrib V36    -0.43017329127053605
#>     Attrib V37    -0.3796427035937203
#>     Attrib V38    -0.3062375410094609
#>     Attrib V39    0.03193897172765921
#>     Attrib V4    0.037979113600198046
#>     Attrib V40    -0.10795150464148949
#>     Attrib V41    0.4276328373707751
#>     Attrib V42    -0.10566365239186681
#>     Attrib V43    0.16118013355504224
#>     Attrib V44    0.5182982013988414
#>     Attrib V45    0.6458702544160179
#>     Attrib V46    0.7583067313729671
#>     Attrib V47    0.7876829283159607
#>     Attrib V48    0.7452897638715846
#>     Attrib V49    0.685944299082426
#>     Attrib V5    0.4069051658908514
#>     Attrib V50    -0.3834801659211716
#>     Attrib V51    0.6723388876381075
#>     Attrib V52    0.6849800602895839
#>     Attrib V53    6.650954636622673E-4
#>     Attrib V54    0.5697760594346866
#>     Attrib V55    -0.08477797883300288
#>     Attrib V56    -0.543704980926644
#>     Attrib V57    -0.0837045280687823
#>     Attrib V58    0.2769354703296041
#>     Attrib V59    -0.3250032076075676
#>     Attrib V6    0.5406121308947022
#>     Attrib V60    0.017846923637490807
#>     Attrib V7    -0.36188298733666846
#>     Attrib V8    0.13201505649538026
#>     Attrib V9    1.121334810881005
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.3758626065115612
#>     Attrib V1    -0.12643049071910006
#>     Attrib V10    -0.28995995427614646
#>     Attrib V11    -0.15967321154053193
#>     Attrib V12    -0.009876284841983496
#>     Attrib V13    0.5042033884571439
#>     Attrib V14    0.8782549240800629
#>     Attrib V15    0.16318119726390476
#>     Attrib V16    -0.05353303141159058
#>     Attrib V17    -0.308424589445991
#>     Attrib V18    -0.0776800889931487
#>     Attrib V19    -0.4244986845910597
#>     Attrib V2    -0.07773215131249447
#>     Attrib V20    -0.19366529821531098
#>     Attrib V21    -0.3040788628474803
#>     Attrib V22    -0.21663411659449078
#>     Attrib V23    0.16575542024088624
#>     Attrib V24    -0.19351272931849153
#>     Attrib V25    0.25819762166269705
#>     Attrib V26    0.787935155751466
#>     Attrib V27    0.9776387156035544
#>     Attrib V28    0.37374590698720694
#>     Attrib V29    0.8912092750941313
#>     Attrib V3    0.12380444246194801
#>     Attrib V30    -0.07337916453543701
#>     Attrib V31    1.1316459914800094
#>     Attrib V32    -0.17086994949860473
#>     Attrib V33    -0.6056100641890025
#>     Attrib V34    0.0481113111314359
#>     Attrib V35    0.42739214816387106
#>     Attrib V36    1.1520152252880274
#>     Attrib V37    1.2504499428408522
#>     Attrib V38    -0.1277574245920118
#>     Attrib V39    -0.113005879860977
#>     Attrib V4    -0.40331960747163453
#>     Attrib V40    0.5761762158503342
#>     Attrib V41    0.20397652674287317
#>     Attrib V42    -0.3712904027050131
#>     Attrib V43    -0.5345674501235541
#>     Attrib V44    -0.8732925971524126
#>     Attrib V45    -0.3593903550653593
#>     Attrib V46    0.02237321473801297
#>     Attrib V47    -0.09840661570396995
#>     Attrib V48    -0.42331601879889097
#>     Attrib V49    -0.3328787083924449
#>     Attrib V5    -0.07328356900179335
#>     Attrib V50    0.9438327398752162
#>     Attrib V51    -0.1708097699312931
#>     Attrib V52    -0.09472695890817688
#>     Attrib V53    0.22349730639557366
#>     Attrib V54    -1.1546708846622917
#>     Attrib V55    0.41035544261608226
#>     Attrib V56    -0.4953858587093283
#>     Attrib V57    -0.20587846478998453
#>     Attrib V58    -0.36667493268072937
#>     Attrib V59    -0.3971701886223165
#>     Attrib V6    0.2808056208793343
#>     Attrib V60    -0.3090155739826032
#>     Attrib V7    0.5029953600202608
#>     Attrib V8    -0.37646557431040617
#>     Attrib V9    -0.8064558799211464
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.4692368319790568
#>     Attrib V1    -0.14983360505161977
#>     Attrib V10    0.767744206046147
#>     Attrib V11    0.7365027027356703
#>     Attrib V12    0.7622567929798576
#>     Attrib V13    -0.020766826262923598
#>     Attrib V14    -0.7059138732393415
#>     Attrib V15    -0.529734227937491
#>     Attrib V16    -0.41342900181136744
#>     Attrib V17    -0.07755582410280348
#>     Attrib V18    -0.021432235225328323
#>     Attrib V19    0.0999686771775658
#>     Attrib V2    -0.13468446384169383
#>     Attrib V20    -0.10674728943863489
#>     Attrib V21    0.03991496948849389
#>     Attrib V22    0.19934822902972357
#>     Attrib V23    0.29306336702737107
#>     Attrib V24    0.5402527367684865
#>     Attrib V25    0.25233856833557144
#>     Attrib V26    0.19555157839513984
#>     Attrib V27    0.19123813090530561
#>     Attrib V28    1.0046052877671983
#>     Attrib V29    0.30078853183590815
#>     Attrib V3    -0.49052439563348055
#>     Attrib V30    0.45953703383293737
#>     Attrib V31    -0.8443262874885503
#>     Attrib V32    -0.1325996425184084
#>     Attrib V33    -0.12037948633286137
#>     Attrib V34    -0.0010206797719299937
#>     Attrib V35    0.3944842237185238
#>     Attrib V36    -0.5414832074650962
#>     Attrib V37    -0.5739082393564432
#>     Attrib V38    -0.06612749382409494
#>     Attrib V39    0.026863219183536756
#>     Attrib V4    0.10144962381413189
#>     Attrib V40    -0.3066816827021818
#>     Attrib V41    0.1190632808698975
#>     Attrib V42    0.0017850023010132872
#>     Attrib V43    0.12595994843397745
#>     Attrib V44    0.6061269940521515
#>     Attrib V45    0.6388086057182146
#>     Attrib V46    0.4934727405320017
#>     Attrib V47    0.5856117590020113
#>     Attrib V48    0.6414053567809925
#>     Attrib V49    0.5018310534629753
#>     Attrib V5    0.3194380629481426
#>     Attrib V50    -0.5757961866892972
#>     Attrib V51    0.48349745082154105
#>     Attrib V52    0.3556887322992965
#>     Attrib V53    -0.24950623669729957
#>     Attrib V54    0.7506607665784009
#>     Attrib V55    -0.21768154581542898
#>     Attrib V56    -0.3060927664085873
#>     Attrib V57    0.016789333413301633
#>     Attrib V58    0.29648397363588286
#>     Attrib V59    -0.2094090582472892
#>     Attrib V6    0.2545810632239702
#>     Attrib V60    0.012296662148860694
#>     Attrib V7    -0.4832304289409853
#>     Attrib V8    0.2308253954945321
#>     Attrib V9    0.979509279257676
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.4904620754965488
#>     Attrib V1    -0.02390631994403203
#>     Attrib V10    0.24767837448771027
#>     Attrib V11    0.3215355633093402
#>     Attrib V12    0.29116398876267136
#>     Attrib V13    -0.15592187473429062
#>     Attrib V14    -0.5649899976152535
#>     Attrib V15    -0.27984808574621056
#>     Attrib V16    -0.08600036595240591
#>     Attrib V17    0.12407067412157306
#>     Attrib V18    0.05409327095530724
#>     Attrib V19    0.3061425849165608
#>     Attrib V2    0.0699661762029307
#>     Attrib V20    0.04242800490525486
#>     Attrib V21    0.16698213741041776
#>     Attrib V22    0.19876461909089044
#>     Attrib V23    0.05420505628648342
#>     Attrib V24    0.24268161948743108
#>     Attrib V25    -0.13818149776663347
#>     Attrib V26    -0.3727665288112488
#>     Attrib V27    -0.3589656193994815
#>     Attrib V28    0.26891029028745156
#>     Attrib V29    -0.09622170775480866
#>     Attrib V3    -0.3269765871333722
#>     Attrib V30    0.24796380349660352
#>     Attrib V31    -0.9084983157910352
#>     Attrib V32    -0.074030709568665
#>     Attrib V33    0.1827886442406117
#>     Attrib V34    -0.0704638731026059
#>     Attrib V35    -0.06210577695419508
#>     Attrib V36    -0.7094630691654493
#>     Attrib V37    -0.6627780561140227
#>     Attrib V38    0.12704648510461855
#>     Attrib V39    0.08976254885556904
#>     Attrib V4    0.24302954076243213
#>     Attrib V40    -0.3286655576968043
#>     Attrib V41    0.03500752653562072
#>     Attrib V42    0.09717610085892338
#>     Attrib V43    0.2461648359997563
#>     Attrib V44    0.5394026979888932
#>     Attrib V45    0.36004791628883026
#>     Attrib V46    0.12659253373592586
#>     Attrib V47    0.19723418385610217
#>     Attrib V48    0.3952558640972893
#>     Attrib V49    0.23349853668456635
#>     Attrib V5    0.12110331232311851
#>     Attrib V50    -0.7573665114323856
#>     Attrib V51    0.22534614476697237
#>     Attrib V52    0.20994177958540416
#>     Attrib V53    -0.17416821876833397
#>     Attrib V54    0.7832389074168284
#>     Attrib V55    -0.30749136478961137
#>     Attrib V56    0.08008734173261076
#>     Attrib V57    0.1436049048919518
#>     Attrib V58    0.19862362533139377
#>     Attrib V59    0.2128461948355649
#>     Attrib V6    -0.09757978688185068
#>     Attrib V60    0.14525246150097892
#>     Attrib V7    -0.5023819830380792
#>     Attrib V8    0.19230741895932932
#>     Attrib V9    0.6070157376945996
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.3056633510928953
#>     Attrib V1    -0.034775564022224655
#>     Attrib V10    -0.1589510576463578
#>     Attrib V11    -0.17503864762013463
#>     Attrib V12    -0.23550582192197655
#>     Attrib V13    0.08005355764224259
#>     Attrib V14    0.27713406309097277
#>     Attrib V15    0.11805938445028992
#>     Attrib V16    0.0277114541922997
#>     Attrib V17    -0.03602360034851622
#>     Attrib V18    -0.012879684007937245
#>     Attrib V19    -0.13388545331741816
#>     Attrib V2    -0.0344375862080453
#>     Attrib V20    -0.008519721378801722
#>     Attrib V21    -0.08970474987118271
#>     Attrib V22    -0.10128643481695587
#>     Attrib V23    0.0386826619509469
#>     Attrib V24    -0.06058027314299618
#>     Attrib V25    0.1956217705671808
#>     Attrib V26    0.186206469344212
#>     Attrib V27    0.21111090919394654
#>     Attrib V28    -0.18360529487341462
#>     Attrib V29    0.040636773256050016
#>     Attrib V3    0.19237396320244723
#>     Attrib V30    -0.06258983940194317
#>     Attrib V31    0.4253911692445182
#>     Attrib V32    0.08181006281852647
#>     Attrib V33    -0.01590248537542593
#>     Attrib V34    0.09111099026492847
#>     Attrib V35    0.013932058143620312
#>     Attrib V36    0.3658855066611949
#>     Attrib V37    0.296648176855085
#>     Attrib V38    -0.08621652072266374
#>     Attrib V39    -0.046043020730950526
#>     Attrib V4    -0.09077706572063034
#>     Attrib V40    0.17420056728831915
#>     Attrib V41    -0.060223980163927805
#>     Attrib V42    -0.08067492656141387
#>     Attrib V43    -0.17899978909665526
#>     Attrib V44    -0.25302975226629615
#>     Attrib V45    -0.19655223796392945
#>     Attrib V46    -0.0925379942219787
#>     Attrib V47    -0.1174904881378077
#>     Attrib V48    -0.22291840687086276
#>     Attrib V49    -0.11842675264752728
#>     Attrib V5    -0.05351017433922647
#>     Attrib V50    0.271368395522425
#>     Attrib V51    -0.15956112161096864
#>     Attrib V52    -0.13194667984747258
#>     Attrib V53    0.06977908953514224
#>     Attrib V54    -0.41865839206990113
#>     Attrib V55    0.1139178759352417
#>     Attrib V56    0.022273845981171034
#>     Attrib V57    -0.03122927605360975
#>     Attrib V58    -0.1119964145168088
#>     Attrib V59    -0.04548131152383877
#>     Attrib V6    0.05595156878590243
#>     Attrib V60    -0.04940035862442022
#>     Attrib V7    0.3362004153304798
#>     Attrib V8    -0.06609844927375663
#>     Attrib V9    -0.2568648923181266
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.5793280749613452
#>     Attrib V1    -0.07195202402536804
#>     Attrib V10    0.9867544715703243
#>     Attrib V11    0.9852031442103245
#>     Attrib V12    0.8886494672215408
#>     Attrib V13    -0.0431174210166513
#>     Attrib V14    -0.8474231720993053
#>     Attrib V15    -0.5769510347541483
#>     Attrib V16    -0.5237315684449423
#>     Attrib V17    -0.16559861117712935
#>     Attrib V18    -0.09123409747187011
#>     Attrib V19    0.016417055342011235
#>     Attrib V2    -0.09270440251173206
#>     Attrib V20    -0.22807378596907463
#>     Attrib V21    0.030750313873786517
#>     Attrib V22    0.2121430795524773
#>     Attrib V23    0.3008436914851606
#>     Attrib V24    0.5351243808327654
#>     Attrib V25    0.215163683049905
#>     Attrib V26    0.24187043417035956
#>     Attrib V27    0.14993622617333138
#>     Attrib V28    1.0011416140398164
#>     Attrib V29    0.2202870669550692
#>     Attrib V3    -0.5785498235633612
#>     Attrib V30    0.4650454926249727
#>     Attrib V31    -0.8725315313879505
#>     Attrib V32    -0.07598131708946693
#>     Attrib V33    -0.07605469244713564
#>     Attrib V34    -0.013797940557740808
#>     Attrib V35    0.4894987121493844
#>     Attrib V36    -0.599304295396865
#>     Attrib V37    -0.5743693407428585
#>     Attrib V38    -0.1876104332981343
#>     Attrib V39    0.0447189915645575
#>     Attrib V4    0.06494898430311427
#>     Attrib V40    -0.32878471969541806
#>     Attrib V41    0.0863011601601058
#>     Attrib V42    -0.13290624827532177
#>     Attrib V43    0.05843216055555776
#>     Attrib V44    0.6450933452764857
#>     Attrib V45    0.6345203062093371
#>     Attrib V46    0.620325092280108
#>     Attrib V47    0.614001341499538
#>     Attrib V48    0.7706939918435729
#>     Attrib V49    0.6592931455445517
#>     Attrib V5    0.26326098836238326
#>     Attrib V50    -0.6389963435781534
#>     Attrib V51    0.43595370346748785
#>     Attrib V52    0.4370173044046287
#>     Attrib V53    -0.3626811455628254
#>     Attrib V54    0.7910238996315673
#>     Attrib V55    -0.16663439019074253
#>     Attrib V56    -0.42449874161094825
#>     Attrib V57    -0.009097175968936638
#>     Attrib V58    0.3697949224448679
#>     Attrib V59    -0.28775901805629484
#>     Attrib V6    0.22530220458688194
#>     Attrib V60    0.017528514947958766
#>     Attrib V7    -0.4680551170504914
#>     Attrib V8    0.2140389327674646
#>     Attrib V9    1.1577488788141732
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.4246228284495075
#>     Attrib V1    -0.4318222876194269
#>     Attrib V10    -0.08033064484164229
#>     Attrib V11    0.004607341712665605
#>     Attrib V12    0.286722162163161
#>     Attrib V13    0.6009147012491537
#>     Attrib V14    0.6392081338284606
#>     Attrib V15    -0.027999417451019172
#>     Attrib V16    -0.2808995209917213
#>     Attrib V17    -0.35182667068765766
#>     Attrib V18    0.010804822512430206
#>     Attrib V19    -0.36063049173131895
#>     Attrib V2    -0.25305685047281373
#>     Attrib V20    -0.3937046944179265
#>     Attrib V21    -0.6052737117032819
#>     Attrib V22    -0.19310227933685659
#>     Attrib V23    0.32924502617209794
#>     Attrib V24    0.19030096536408458
#>     Attrib V25    0.8463472597549622
#>     Attrib V26    1.4220007259252494
#>     Attrib V27    1.2563789205051301
#>     Attrib V28    0.34588405453405663
#>     Attrib V29    0.5519987947888998
#>     Attrib V3    0.03488119425376599
#>     Attrib V30    -0.35612995537983044
#>     Attrib V31    1.359666707798204
#>     Attrib V32    0.05627551363648606
#>     Attrib V33    -0.5904515375072299
#>     Attrib V34    0.27877451343603243
#>     Attrib V35    0.7372628490491839
#>     Attrib V36    1.3524799609448783
#>     Attrib V37    1.3007708382595502
#>     Attrib V38    -0.3604539437178743
#>     Attrib V39    -0.2627475326009122
#>     Attrib V4    -0.5134797338296436
#>     Attrib V40    0.6133185894949491
#>     Attrib V41    0.1480131938339345
#>     Attrib V42    -0.6461612159462394
#>     Attrib V43    -0.6689218668844428
#>     Attrib V44    -0.9972211265769534
#>     Attrib V45    -0.409375500687302
#>     Attrib V46    0.050014806692962835
#>     Attrib V47    -0.011082975335084823
#>     Attrib V48    -0.26486419296496855
#>     Attrib V49    -0.21210263349522937
#>     Attrib V5    -0.07024264528903928
#>     Attrib V50    0.9858707999976578
#>     Attrib V51    -0.02456332142921534
#>     Attrib V52    -0.022911351727219857
#>     Attrib V53    0.19400373516481115
#>     Attrib V54    -1.282142777753177
#>     Attrib V55    0.4441224644392595
#>     Attrib V56    -0.5810165161964463
#>     Attrib V57    -0.3648740466173425
#>     Attrib V58    -0.440477659314616
#>     Attrib V59    -0.6501201332588217
#>     Attrib V6    0.3529256002249356
#>     Attrib V60    -0.3171977415348186
#>     Attrib V7    0.5915536661632932
#>     Attrib V8    -0.4963939647423657
#>     Attrib V9    -0.6948128648538511
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1852144349150654
#>     Attrib V1    0.022391421650633247
#>     Attrib V10    0.02980215752303558
#>     Attrib V11    -0.021989095859604527
#>     Attrib V12    -0.03876361282162095
#>     Attrib V13    0.04043803626834785
#>     Attrib V14    0.019389229212024003
#>     Attrib V15    0.021389535820382066
#>     Attrib V16    0.0721549345387242
#>     Attrib V17    0.05915654695234536
#>     Attrib V18    0.05311058023223322
#>     Attrib V19    -0.014309751262085807
#>     Attrib V2    0.016057922925427886
#>     Attrib V20    -0.08397777729007004
#>     Attrib V21    -0.0955359460614479
#>     Attrib V22    -0.05415779692213047
#>     Attrib V23    -0.038747355537291396
#>     Attrib V24    0.023460729317111028
#>     Attrib V25    0.05585161205259771
#>     Attrib V26    -0.0017074920426100814
#>     Attrib V27    -0.0286651680758193
#>     Attrib V28    -0.028765380557770844
#>     Attrib V29    -0.02642442356480152
#>     Attrib V3    0.09554054514696718
#>     Attrib V30    -0.038902272633493454
#>     Attrib V31    0.04471509881191336
#>     Attrib V32    0.06358301231496098
#>     Attrib V33    0.03266332766558446
#>     Attrib V34    0.059856888803485817
#>     Attrib V35    0.04864423598711843
#>     Attrib V36    0.0953084394086393
#>     Attrib V37    0.12554294171221103
#>     Attrib V38    0.03996426796974669
#>     Attrib V39    0.03718684087190812
#>     Attrib V4    0.07772297277537471
#>     Attrib V40    0.054922359920362096
#>     Attrib V41    0.0816239441505174
#>     Attrib V42    0.06063301509244301
#>     Attrib V43    -0.018852525759585865
#>     Attrib V44    -0.048591735715733914
#>     Attrib V45    0.0300664781469883
#>     Attrib V46    0.04441200739078635
#>     Attrib V47    0.036320272041919684
#>     Attrib V48    -0.0016257855567772008
#>     Attrib V49    -0.016926441642630557
#>     Attrib V5    0.0671295492908996
#>     Attrib V50    0.10550566998109392
#>     Attrib V51    0.09500165878412083
#>     Attrib V52    0.06541937419590195
#>     Attrib V53    0.07827867355756894
#>     Attrib V54    -0.05174589352842912
#>     Attrib V55    0.07723748235494958
#>     Attrib V56    0.06661189756263199
#>     Attrib V57    0.07461386261567497
#>     Attrib V58    0.07568540534379989
#>     Attrib V59    -0.010145374393529702
#>     Attrib V6    0.10001763635152512
#>     Attrib V60    0.04935174849885222
#>     Attrib V7    0.09284780245594723
#>     Attrib V8    0.012491987344567926
#>     Attrib V9    0.055220402594897765
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.22449777502317686
#>     Attrib V1    0.12862072790102885
#>     Attrib V10    0.15684529450434542
#>     Attrib V11    0.09765390823485644
#>     Attrib V12    0.016860621973408593
#>     Attrib V13    -0.27704703752501636
#>     Attrib V14    -0.4705303837444641
#>     Attrib V15    -0.057807468335009674
#>     Attrib V16    0.046485421480143965
#>     Attrib V17    0.1723417905758168
#>     Attrib V18    0.08867312846686567
#>     Attrib V19    0.27279333820648555
#>     Attrib V2    0.1677351098379536
#>     Attrib V20    0.11001379489719551
#>     Attrib V21    0.1863573880619448
#>     Attrib V22    0.16972886466967413
#>     Attrib V23    -0.11646145704963028
#>     Attrib V24    0.0865428092368016
#>     Attrib V25    -0.22740552244614573
#>     Attrib V26    -0.5230892272487646
#>     Attrib V27    -0.5867312509997462
#>     Attrib V28    -0.1912974779033118
#>     Attrib V29    -0.4534711398165443
#>     Attrib V3    -0.11206605064477157
#>     Attrib V30    0.13504533316158507
#>     Attrib V31    -0.6429203955450735
#>     Attrib V32    0.005593372492624092
#>     Attrib V33    0.314355916077888
#>     Attrib V34    -0.11140356419494267
#>     Attrib V35    -0.176507363454853
#>     Attrib V36    -0.6442855122977504
#>     Attrib V37    -0.6664578840819456
#>     Attrib V38    0.1451781764948909
#>     Attrib V39    0.11355671946337687
#>     Attrib V4    0.2599953435459195
#>     Attrib V40    -0.36194639259868466
#>     Attrib V41    -0.06445243831777422
#>     Attrib V42    0.10887680834235405
#>     Attrib V43    0.25597696886461696
#>     Attrib V44    0.5010538391911908
#>     Attrib V45    0.27964080382652906
#>     Attrib V46    -0.08916185982639574
#>     Attrib V47    0.006613158769844455
#>     Attrib V48    0.2515838235757901
#>     Attrib V49    0.10784009835039184
#>     Attrib V5    0.03820305535106286
#>     Attrib V50    -0.5183511922295739
#>     Attrib V51    0.13053679773483468
#>     Attrib V52    0.07478025895993934
#>     Attrib V53    -0.12429779470075954
#>     Attrib V54    0.6559863073542423
#>     Attrib V55    -0.1501412933647123
#>     Attrib V56    0.2880076086812256
#>     Attrib V57    0.214823389624235
#>     Attrib V58    0.15281682879144998
#>     Attrib V59    0.26242844369003493
#>     Attrib V6    -0.12925592856440948
#>     Attrib V60    0.2209847149972295
#>     Attrib V7    -0.3867210397836808
#>     Attrib V8    0.24142612457310073
#>     Attrib V9    0.4355000890159784
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.337186187824344
#>     Attrib V1    -0.027228112508169734
#>     Attrib V10    -0.14251781131994087
#>     Attrib V11    -0.19426118665618633
#>     Attrib V12    -0.27451094195246795
#>     Attrib V13    0.016576247116886076
#>     Attrib V14    0.303839321776492
#>     Attrib V15    0.12756632342884325
#>     Attrib V16    0.07655549313320935
#>     Attrib V17    -0.08226300411449647
#>     Attrib V18    0.038754286325204126
#>     Attrib V19    -0.16500473999497647
#>     Attrib V2    -0.009843002310230302
#>     Attrib V20    -0.01714318919946657
#>     Attrib V21    -0.08139181689415301
#>     Attrib V22    -0.08337300634317255
#>     Attrib V23    0.007086875141881004
#>     Attrib V24    -0.11173134261779706
#>     Attrib V25    0.187890261715033
#>     Attrib V26    0.2679738051595233
#>     Attrib V27    0.206390932727875
#>     Attrib V28    -0.1961464331014464
#>     Attrib V29    0.012773990609285737
#>     Attrib V3    0.2145864285382711
#>     Attrib V30    -0.12994694249713287
#>     Attrib V31    0.5024570127261164
#>     Attrib V32    0.06515384830905156
#>     Attrib V33    -0.024347748735742292
#>     Attrib V34    0.08578855736376462
#>     Attrib V35    0.015231147211241667
#>     Attrib V36    0.4967818301919119
#>     Attrib V37    0.31599075259440074
#>     Attrib V38    -0.10405680350423915
#>     Attrib V39    -0.06935088999723625
#>     Attrib V4    -0.14013596879219478
#>     Attrib V40    0.14946533495138553
#>     Attrib V41    -0.11371258683476511
#>     Attrib V42    -0.10702015896664407
#>     Attrib V43    -0.15875189989262686
#>     Attrib V44    -0.2381026728188899
#>     Attrib V45    -0.2244535017909479
#>     Attrib V46    -0.13963600473110585
#>     Attrib V47    -0.12640379132119886
#>     Attrib V48    -0.22674954273108353
#>     Attrib V49    -0.13440420379394488
#>     Attrib V5    -0.0762815869988875
#>     Attrib V50    0.3076522850769331
#>     Attrib V51    -0.10210298589227913
#>     Attrib V52    -0.12013204508937608
#>     Attrib V53    0.1065506912372509
#>     Attrib V54    -0.4751060840423138
#>     Attrib V55    0.1638679586789098
#>     Attrib V56    0.05155917590350576
#>     Attrib V57    -0.08605178013932648
#>     Attrib V58    -0.10818757384367159
#>     Attrib V59    -0.06326612762183366
#>     Attrib V6    0.005660487011842589
#>     Attrib V60    -0.0672498743838499
#>     Attrib V7    0.3538768964903083
#>     Attrib V8    -0.010929812075618163
#>     Attrib V9    -0.2774191939398835
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.49539519741704047
#>     Attrib V1    -0.21742283876002683
#>     Attrib V10    0.8720876046203635
#>     Attrib V11    0.9208979839308515
#>     Attrib V12    1.0712831595428112
#>     Attrib V13    0.1607671193512865
#>     Attrib V14    -0.6676989176689332
#>     Attrib V15    -0.5799177941781941
#>     Attrib V16    -0.5393230174642674
#>     Attrib V17    -0.1786523568341917
#>     Attrib V18    -0.018733605945189302
#>     Attrib V19    0.09170604923325304
#>     Attrib V2    -0.12866741783118316
#>     Attrib V20    -0.27871169716902383
#>     Attrib V21    -0.0902097326308408
#>     Attrib V22    0.21248222234051287
#>     Attrib V23    0.4064794270506081
#>     Attrib V24    0.7117183974706509
#>     Attrib V25    0.4472655958119419
#>     Attrib V26    0.4804215279087119
#>     Attrib V27    0.44793356178182964
#>     Attrib V28    1.1572102603660963
#>     Attrib V29    0.34840494458917537
#>     Attrib V3    -0.5237306323416616
#>     Attrib V30    0.3671433042489237
#>     Attrib V31    -0.6539026048694816
#>     Attrib V32    -0.11364733729041288
#>     Attrib V33    -0.16600270853487534
#>     Attrib V34    0.03696699476315765
#>     Attrib V35    0.5512899106997913
#>     Attrib V36    -0.4858491827763574
#>     Attrib V37    -0.5221768274879465
#>     Attrib V38    -0.2663189741925252
#>     Attrib V39    -0.020077237243124976
#>     Attrib V4    0.12567901268177625
#>     Attrib V40    -0.17860962767933247
#>     Attrib V41    0.24888139360049968
#>     Attrib V42    -0.017671672538883937
#>     Attrib V43    0.09343915994126781
#>     Attrib V44    0.5127520321086163
#>     Attrib V45    0.6706861423348847
#>     Attrib V46    0.6461006461414098
#>     Attrib V47    0.5956542779646982
#>     Attrib V48    0.6791277959139312
#>     Attrib V49    0.6693932508627342
#>     Attrib V5    0.3779675125351669
#>     Attrib V50    -0.5460597640986897
#>     Attrib V51    0.4638351062116321
#>     Attrib V52    0.5767121392032929
#>     Attrib V53    -0.11066470519231063
#>     Attrib V54    0.662812594695594
#>     Attrib V55    -0.06793605656870602
#>     Attrib V56    -0.5266328985068923
#>     Attrib V57    -0.03184157311215836
#>     Attrib V58    0.3648739877377717
#>     Attrib V59    -0.23925689065379568
#>     Attrib V6    0.3533924338027011
#>     Attrib V60    0.008342679542248618
#>     Attrib V7    -0.4035511372495277
#>     Attrib V8    0.14992834137774916
#>     Attrib V9    1.004392807574197
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.27760950472068124
#>     Attrib V1    0.0531259379160089
#>     Attrib V10    0.15611302062689617
#>     Attrib V11    0.13449801228562894
#>     Attrib V12    0.23600812847435915
#>     Attrib V13    -0.09068384646650329
#>     Attrib V14    -0.37828166960007936
#>     Attrib V15    -0.16926100636664546
#>     Attrib V16    -0.08137556354802208
#>     Attrib V17    0.10630190543984999
#>     Attrib V18    0.10580921982459861
#>     Attrib V19    0.26527050853129014
#>     Attrib V2    0.06029579119521339
#>     Attrib V20    0.14879937376041028
#>     Attrib V21    0.2708986781759735
#>     Attrib V22    0.2554264253969997
#>     Attrib V23    0.12998948745704036
#>     Attrib V24    0.2202137715472115
#>     Attrib V25    -0.04950998667837969
#>     Attrib V26    -0.1343976601999132
#>     Attrib V27    -0.14704299935571383
#>     Attrib V28    0.21213681452409572
#>     Attrib V29    -0.022197478308013073
#>     Attrib V3    -0.20795878574182677
#>     Attrib V30    0.23035665942796155
#>     Attrib V31    -0.6693048621903125
#>     Attrib V32    -0.16603287612048423
#>     Attrib V33    0.013159196261920206
#>     Attrib V34    -0.11650048600139742
#>     Attrib V35    0.026618618734765776
#>     Attrib V36    -0.31189774066248266
#>     Attrib V37    -0.3017076197215983
#>     Attrib V38    0.2277019727584923
#>     Attrib V39    0.137488381265418
#>     Attrib V4    0.16397743555433844
#>     Attrib V40    -0.2531804158999818
#>     Attrib V41    0.011543089166695105
#>     Attrib V42    0.006162273570045003
#>     Attrib V43    0.24302408091373978
#>     Attrib V44    0.5550306444629641
#>     Attrib V45    0.2979212868270456
#>     Attrib V46    0.028430295329379986
#>     Attrib V47    0.0821905083132175
#>     Attrib V48    0.22088120135619782
#>     Attrib V49    0.19017122866822966
#>     Attrib V5    0.09822301102257601
#>     Attrib V50    -0.46606064055034413
#>     Attrib V51    0.22260563067431957
#>     Attrib V52    0.17860350993265922
#>     Attrib V53    -0.09483398986052455
#>     Attrib V54    0.642538173325281
#>     Attrib V55    -0.16285174195365376
#>     Attrib V56    0.13627149185653636
#>     Attrib V57    0.030689760008413624
#>     Attrib V58    0.16985144482536
#>     Attrib V59    0.2640370705667285
#>     Attrib V6    -0.07237418642229544
#>     Attrib V60    0.15019049221788178
#>     Attrib V7    -0.3808860637702487
#>     Attrib V8    0.009324923599801088
#>     Attrib V9    0.3993231321601664
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.34678379474677196
#>     Attrib V1    -0.14285924545352796
#>     Attrib V10    -0.3753493584289563
#>     Attrib V11    -0.2247520731382868
#>     Attrib V12    -0.008877317837603173
#>     Attrib V13    0.6080172153232156
#>     Attrib V14    1.0746290010355295
#>     Attrib V15    0.274390894042059
#>     Attrib V16    -0.07448550781362694
#>     Attrib V17    -0.31858556785106346
#>     Attrib V18    -0.08035578535193473
#>     Attrib V19    -0.5224920776415823
#>     Attrib V2    -0.10067569703956232
#>     Attrib V20    -0.20669103873110353
#>     Attrib V21    -0.31460383914673634
#>     Attrib V22    -0.2799625451868567
#>     Attrib V23    0.16516473292265102
#>     Attrib V24    -0.17430484276467026
#>     Attrib V25    0.35686525811772946
#>     Attrib V26    0.9833951734549841
#>     Attrib V27    1.2021645499950113
#>     Attrib V28    0.4811360395607459
#>     Attrib V29    1.2496487539427594
#>     Attrib V3    0.11169464959963257
#>     Attrib V30    -0.1177999165912364
#>     Attrib V31    1.4496672393502017
#>     Attrib V32    -0.09589394658402413
#>     Attrib V33    -0.8082529663936551
#>     Attrib V34    -0.04080348408779307
#>     Attrib V35    0.40883909861932893
#>     Attrib V36    1.3264224856525524
#>     Attrib V37    1.622712923955533
#>     Attrib V38    -0.19640488620990387
#>     Attrib V39    -0.06157511901948216
#>     Attrib V4    -0.42674301556422123
#>     Attrib V40    0.7780788394609446
#>     Attrib V41    0.3752035406678398
#>     Attrib V42    -0.4753024982390001
#>     Attrib V43    -0.6558995354602735
#>     Attrib V44    -1.1240134591203792
#>     Attrib V45    -0.5543483724598934
#>     Attrib V46    -0.00838116182194897
#>     Attrib V47    -0.12379208275591587
#>     Attrib V48    -0.49142487030765625
#>     Attrib V49    -0.4247922943143959
#>     Attrib V5    -0.03452463421926119
#>     Attrib V50    1.1522961905549731
#>     Attrib V51    -0.13935030290919204
#>     Attrib V52    -0.03658620474501515
#>     Attrib V53    0.28869586098691996
#>     Attrib V54    -1.4970655447653847
#>     Attrib V55    0.4780436942277526
#>     Attrib V56    -0.629993232828068
#>     Attrib V57    -0.10356583610749746
#>     Attrib V58    -0.42419834147672497
#>     Attrib V59    -0.43272869604251557
#>     Attrib V6    0.33167664921168266
#>     Attrib V60    -0.29200981236094364
#>     Attrib V7    0.5770065584893747
#>     Attrib V8    -0.5113415155403586
#>     Attrib V9    -0.9633543615033674
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.17481199115361878
#>     Attrib V1    0.3337720620416359
#>     Attrib V10    -0.06269687550511328
#>     Attrib V11    -0.09347066826703472
#>     Attrib V12    -0.1505670324994923
#>     Attrib V13    -0.35390795423273735
#>     Attrib V14    -0.3506303253205981
#>     Attrib V15    0.010719464467674038
#>     Attrib V16    0.23560607687733856
#>     Attrib V17    0.2493917318102973
#>     Attrib V18    0.03727608142281745
#>     Attrib V19    0.2098694503595537
#>     Attrib V2    0.24841352264132605
#>     Attrib V20    0.25370354984341587
#>     Attrib V21    0.31124582248759286
#>     Attrib V22    0.06345939023193174
#>     Attrib V23    -0.28826825199195505
#>     Attrib V24    -0.10386410011318063
#>     Attrib V25    -0.5193551766560842
#>     Attrib V26    -0.9119967438095501
#>     Attrib V27    -0.9034145578291163
#>     Attrib V28    -0.4647248776254843
#>     Attrib V29    -0.4486167072414774
#>     Attrib V3    -0.00951748273846709
#>     Attrib V30    0.11178110474367552
#>     Attrib V31    -0.7133359579067998
#>     Attrib V32    -0.010254057090578339
#>     Attrib V33    0.3188848402568958
#>     Attrib V34    -0.1209655594242017
#>     Attrib V35    -0.3796468834326629
#>     Attrib V36    -0.7093801464559442
#>     Attrib V37    -0.649111261539174
#>     Attrib V38    0.21348024635088575
#>     Attrib V39    0.15268173419331904
#>     Attrib V4    0.3425022685990212
#>     Attrib V40    -0.32567255381401516
#>     Attrib V41    -0.14433503005321346
#>     Attrib V42    0.24240056076293917
#>     Attrib V43    0.3532376034038533
#>     Attrib V44    0.48139637956114595
#>     Attrib V45    0.17361271443110443
#>     Attrib V46    -0.08959717514274236
#>     Attrib V47    -0.0678413780387714
#>     Attrib V48    0.15940553793525122
#>     Attrib V49    0.04429662719549968
#>     Attrib V5    0.013431297409345549
#>     Attrib V50    -0.5144310460418458
#>     Attrib V51    0.030916101500946265
#>     Attrib V52    0.015173653675738823
#>     Attrib V53    -0.06593171593955971
#>     Attrib V54    0.8036473171668906
#>     Attrib V55    -0.13301330307115591
#>     Attrib V56    0.47048938037009547
#>     Attrib V57    0.31281118781739126
#>     Attrib V58    0.28708050167377197
#>     Attrib V59    0.5054610461106397
#>     Attrib V6    -0.2007346503145233
#>     Attrib V60    0.3249734971489082
#>     Attrib V7    -0.350169667301522
#>     Attrib V8    0.21555279212313594
#>     Attrib V9    0.3307882542714862
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.13165186985584976
#>     Attrib V1    0.14001575423521875
#>     Attrib V10    -0.04431413023381011
#>     Attrib V11    0.03930884073743477
#>     Attrib V12    0.0795392898106601
#>     Attrib V13    -0.10642599788187682
#>     Attrib V14    -0.23442380754842476
#>     Attrib V15    -0.0571606371902131
#>     Attrib V16    0.007454709660572358
#>     Attrib V17    0.16496413969571525
#>     Attrib V18    0.08112774700883449
#>     Attrib V19    0.1656309858614079
#>     Attrib V2    0.1037830344789727
#>     Attrib V20    0.08354267095062985
#>     Attrib V21    0.12339726725855853
#>     Attrib V22    0.07412074546472015
#>     Attrib V23    -0.06447736517705085
#>     Attrib V24    -0.019797663800899912
#>     Attrib V25    -0.17289064286150255
#>     Attrib V26    -0.32899386471130454
#>     Attrib V27    -0.39706747898867745
#>     Attrib V28    -0.16279332252165002
#>     Attrib V29    -0.29179574770723077
#>     Attrib V3    -0.007159395984403253
#>     Attrib V30    0.04527109062893089
#>     Attrib V31    -0.45332786878452963
#>     Attrib V32    -0.044788555126889486
#>     Attrib V33    0.10730992662639484
#>     Attrib V34    -0.07735189496143284
#>     Attrib V35    -0.040130978112814485
#>     Attrib V36    -0.30856985238652923
#>     Attrib V37    -0.2915255115799906
#>     Attrib V38    0.11688918181606284
#>     Attrib V39    0.09704893277152006
#>     Attrib V4    0.23518207155068532
#>     Attrib V40    -0.2344097070065252
#>     Attrib V41    -0.06854435401378704
#>     Attrib V42    0.04721465682125715
#>     Attrib V43    0.18999425073051845
#>     Attrib V44    0.2850289428636299
#>     Attrib V45    0.1852282509545525
#>     Attrib V46    -0.048992779300999816
#>     Attrib V47    0.05868356527130979
#>     Attrib V48    0.0805628506879286
#>     Attrib V49    0.07287098426981026
#>     Attrib V5    0.01856683175214816
#>     Attrib V50    -0.29801416383873813
#>     Attrib V51    0.05667034490398311
#>     Attrib V52    0.13260511518346016
#>     Attrib V53    0.015283207710239935
#>     Attrib V54    0.4686284919692034
#>     Attrib V55    -0.041081297422119065
#>     Attrib V56    0.24980509340399853
#>     Attrib V57    0.11886651322398269
#>     Attrib V58    0.1311292886301869
#>     Attrib V59    0.33773675862082836
#>     Attrib V6    -0.08977027197644157
#>     Attrib V60    0.19940071221650504
#>     Attrib V7    -0.23974738544620075
#>     Attrib V8    0.07798066265653916
#>     Attrib V9    0.19957476298847918
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.32221535538898816
#>     Attrib V1    -0.024465294927196304
#>     Attrib V10    -0.22365467952784107
#>     Attrib V11    -0.23714269910717797
#>     Attrib V12    -0.2638274178446337
#>     Attrib V13    0.04847370888869376
#>     Attrib V14    0.41792707166397175
#>     Attrib V15    0.2492711945497267
#>     Attrib V16    0.0741336789238788
#>     Attrib V17    -0.036560702811766266
#>     Attrib V18    -0.048071852412355315
#>     Attrib V19    -0.1884042102439058
#>     Attrib V2    -0.03716478822395679
#>     Attrib V20    -0.054822025602129135
#>     Attrib V21    -0.1661713334344518
#>     Attrib V22    -0.17694691674964247
#>     Attrib V23    -0.007710716808744222
#>     Attrib V24    -0.17385154395018448
#>     Attrib V25    0.1739802607968277
#>     Attrib V26    0.332291342920478
#>     Attrib V27    0.24796874890613407
#>     Attrib V28    -0.18440445724474408
#>     Attrib V29    0.069082855500444
#>     Attrib V3    0.18768639431141493
#>     Attrib V30    -0.12818366288679567
#>     Attrib V31    0.6683345386958517
#>     Attrib V32    0.11714634158645235
#>     Attrib V33    -0.10309113209228231
#>     Attrib V34    0.0713884966991303
#>     Attrib V35    0.04251304660789426
#>     Attrib V36    0.5486819603479901
#>     Attrib V37    0.3867804572880999
#>     Attrib V38    -0.1348472499857205
#>     Attrib V39    -0.1528429180205607
#>     Attrib V4    -0.11759343712641464
#>     Attrib V40    0.25252453882853926
#>     Attrib V41    -0.04529763598075592
#>     Attrib V42    -0.1643161639237608
#>     Attrib V43    -0.17602186489163626
#>     Attrib V44    -0.42098943826817864
#>     Attrib V45    -0.2892437196978746
#>     Attrib V46    -0.1293724703843937
#>     Attrib V47    -0.15560841944920423
#>     Attrib V48    -0.2883020853819758
#>     Attrib V49    -0.252450392729705
#>     Attrib V5    -0.13292614066027572
#>     Attrib V50    0.4965799288062964
#>     Attrib V51    -0.16083712453715227
#>     Attrib V52    -0.0876476635563998
#>     Attrib V53    0.0974489770191928
#>     Attrib V54    -0.5916086537634144
#>     Attrib V55    0.22021298996585884
#>     Attrib V56    0.031551506835792
#>     Attrib V57    -0.009085676624212877
#>     Attrib V58    -0.1378495497475735
#>     Attrib V59    -0.1198966032125875
#>     Attrib V6    0.09199024761262249
#>     Attrib V60    -0.1261820055009886
#>     Attrib V7    0.3874952284648237
#>     Attrib V8    -0.05416930699230151
#>     Attrib V9    -0.3383398297728801
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.8502670974331001
#>     Attrib V1    -0.11224414633226847
#>     Attrib V10    1.5325952221704535
#>     Attrib V11    1.6516903759693464
#>     Attrib V12    1.8273776010467335
#>     Attrib V13    0.6711618952278469
#>     Attrib V14    -0.5913209110830465
#>     Attrib V15    -0.9235703261019648
#>     Attrib V16    -0.8166459715200916
#>     Attrib V17    -0.2612848597558382
#>     Attrib V18    0.027179734898618163
#>     Attrib V19    0.15833374481013568
#>     Attrib V2    -0.23937535585946906
#>     Attrib V20    -0.1289201682720209
#>     Attrib V21    0.23352602528795577
#>     Attrib V22    0.6047737191698548
#>     Attrib V23    1.3938138373926379
#>     Attrib V24    1.2589335975348717
#>     Attrib V25    0.23828724534571644
#>     Attrib V26    0.5805075745099527
#>     Attrib V27    1.22192865477583
#>     Attrib V28    2.904011400140735
#>     Attrib V29    2.186462272747756
#>     Attrib V3    -0.6240515874310802
#>     Attrib V30    0.837954237152217
#>     Attrib V31    -1.0842979782323567
#>     Attrib V32    -0.4739259682153727
#>     Attrib V33    -1.0130604385892754
#>     Attrib V34    -0.4029357490402682
#>     Attrib V35    0.6263965303966118
#>     Attrib V36    -0.98507218685759
#>     Attrib V37    -0.42435544311487344
#>     Attrib V38    -0.608448149680697
#>     Attrib V39    0.13914005863285772
#>     Attrib V4    0.13599080027970759
#>     Attrib V40    0.12850997736196867
#>     Attrib V41    1.478523037512391
#>     Attrib V42    0.34602950084945727
#>     Attrib V43    0.23170015550082745
#>     Attrib V44    0.8714189299148514
#>     Attrib V45    1.06114283421618
#>     Attrib V46    1.388759574272744
#>     Attrib V47    1.212905603668755
#>     Attrib V48    0.9288896134814307
#>     Attrib V49    0.9772599780487062
#>     Attrib V5    1.019019805995041
#>     Attrib V50    -0.35727429349217094
#>     Attrib V51    1.0872583919748757
#>     Attrib V52    1.136922818596007
#>     Attrib V53    0.24145588655647915
#>     Attrib V54    0.38847900036379895
#>     Attrib V55    -0.256838832323829
#>     Attrib V56    -1.096917156901898
#>     Attrib V57    -0.1280788153177025
#>     Attrib V58    0.4990867761394811
#>     Attrib V59    -0.3626728606647176
#>     Attrib V6    1.3142630765516239
#>     Attrib V60    -0.05003138219667102
#>     Attrib V7    -0.6250246886113857
#>     Attrib V8    0.007432957959738001
#>     Attrib V9    1.509366049204126
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.30531618677763034
#>     Attrib V1    -0.02408916897595157
#>     Attrib V10    -0.15188198245431683
#>     Attrib V11    -0.20241780626794428
#>     Attrib V12    -0.20024478001546395
#>     Attrib V13    0.010029831343007013
#>     Attrib V14    0.3122086711664362
#>     Attrib V15    0.11982608060653142
#>     Attrib V16    0.05699590570641271
#>     Attrib V17    -0.022646180397981573
#>     Attrib V18    -0.04662270534014954
#>     Attrib V19    -0.07411506977352357
#>     Attrib V2    -0.002469664176879044
#>     Attrib V20    -0.034089683029610816
#>     Attrib V21    -0.09450281988352226
#>     Attrib V22    -0.07292195937408867
#>     Attrib V23    0.008008058119189285
#>     Attrib V24    -0.08840380050731488
#>     Attrib V25    0.17024845339807482
#>     Attrib V26    0.20809371292726625
#>     Attrib V27    0.21134365050320159
#>     Attrib V28    -0.11959777797638944
#>     Attrib V29    0.05740218535839299
#>     Attrib V3    0.11052258167293515
#>     Attrib V30    -0.07326861034440318
#>     Attrib V31    0.44787598605883755
#>     Attrib V32    0.042244849490857043
#>     Attrib V33    0.002998694091935345
#>     Attrib V34    0.032797649908265177
#>     Attrib V35    0.081298827058948
#>     Attrib V36    0.4401309428190135
#>     Attrib V37    0.34425553679189874
#>     Attrib V38    -0.09925664435990719
#>     Attrib V39    -0.07926255965287313
#>     Attrib V4    -0.06992616553632806
#>     Attrib V40    0.14142262951250123
#>     Attrib V41    -0.08131157716486002
#>     Attrib V42    -0.08509054690058723
#>     Attrib V43    -0.13717469629007048
#>     Attrib V44    -0.24136988051548344
#>     Attrib V45    -0.1639165061584245
#>     Attrib V46    -0.13628892784533547
#>     Attrib V47    -0.1752587526398478
#>     Attrib V48    -0.17291251725956439
#>     Attrib V49    -0.16147857542979327
#>     Attrib V5    -0.11500703522917219
#>     Attrib V50    0.32336980044870356
#>     Attrib V51    -0.16471206783018982
#>     Attrib V52    -0.12176168867704017
#>     Attrib V53    0.061875014419521986
#>     Attrib V54    -0.4173025961589675
#>     Attrib V55    0.12731497968901345
#>     Attrib V56    0.03853073330181499
#>     Attrib V57    -0.013945126153145648
#>     Attrib V58    -0.09858880949895786
#>     Attrib V59    -0.06400707513599639
#>     Attrib V6    0.06869081955688941
#>     Attrib V60    -0.03921331702186836
#>     Attrib V7    0.27374726012956957
#>     Attrib V8    -0.023088043981912314
#>     Attrib V9    -0.27113883387717247
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.6218275845951107
#>     Attrib V1    -0.1092266029496276
#>     Attrib V10    1.1459084457845805
#>     Attrib V11    1.0936518446251846
#>     Attrib V12    1.0735547277907715
#>     Attrib V13    0.14910166583543613
#>     Attrib V14    -0.8734950382124202
#>     Attrib V15    -0.703987509909928
#>     Attrib V16    -0.5946331651148136
#>     Attrib V17    -0.2298725477536074
#>     Attrib V18    0.014282814546922295
#>     Attrib V19    0.06794890999623827
#>     Attrib V2    -0.16098010195313606
#>     Attrib V20    -0.28724817847658646
#>     Attrib V21    0.05074148848383962
#>     Attrib V22    0.3081601989586851
#>     Attrib V23    0.43416465752272543
#>     Attrib V24    0.7707326129233624
#>     Attrib V25    0.43067490206969056
#>     Attrib V26    0.5548339116059395
#>     Attrib V27    0.378363786913045
#>     Attrib V28    1.2051303200448353
#>     Attrib V29    0.35225667349165635
#>     Attrib V3    -0.6076199062459554
#>     Attrib V30    0.4510607105846313
#>     Attrib V31    -0.8186794231589442
#>     Attrib V32    -0.10661775880024801
#>     Attrib V33    -0.2315160671488315
#>     Attrib V34    0.043965814870686126
#>     Attrib V35    0.6223483483258836
#>     Attrib V36    -0.5101276830408584
#>     Attrib V37    -0.5505250209118747
#>     Attrib V38    -0.24077169937156517
#>     Attrib V39    0.02113483576940623
#>     Attrib V4    0.047357069275007956
#>     Attrib V40    -0.32564207394119615
#>     Attrib V41    0.22883284282210178
#>     Attrib V42    -0.10335317632981235
#>     Attrib V43    0.057275770890869736
#>     Attrib V44    0.6556318742778376
#>     Attrib V45    0.7914153960235111
#>     Attrib V46    0.6805474048648751
#>     Attrib V47    0.7051333221529273
#>     Attrib V48    0.8502145909660835
#>     Attrib V49    0.6869900829644863
#>     Attrib V5    0.3656885563104653
#>     Attrib V50    -0.5085360936016265
#>     Attrib V51    0.5932284321421286
#>     Attrib V52    0.5743392839255116
#>     Attrib V53    -0.22110281191280567
#>     Attrib V54    0.7379265697216126
#>     Attrib V55    -0.16788791789911214
#>     Attrib V56    -0.558584964370693
#>     Attrib V57    -0.06125860922826919
#>     Attrib V58    0.3504080473320903
#>     Attrib V59    -0.31980294624180283
#>     Attrib V6    0.41491838272118203
#>     Attrib V60    0.020920880517639434
#>     Attrib V7    -0.4605128694430134
#>     Attrib V8    0.20840214876802418
#>     Attrib V9    1.2558576588946304
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.3643719778089289
#>     Attrib V1    -0.05418589749241359
#>     Attrib V10    -0.2746977633012947
#>     Attrib V11    -0.25092544482579826
#>     Attrib V12    -0.2808783519535749
#>     Attrib V13    0.145001145756121
#>     Attrib V14    0.4893410079952976
#>     Attrib V15    0.23437409272664173
#>     Attrib V16    0.08811271741883404
#>     Attrib V17    -0.18112377903808302
#>     Attrib V18    -0.044264919325947616
#>     Attrib V19    -0.2833470774030789
#>     Attrib V2    -0.07315955277860182
#>     Attrib V20    -0.09306096796688038
#>     Attrib V21    -0.1788918823693297
#>     Attrib V22    -0.15397471840668384
#>     Attrib V23    -0.04600647305525938
#>     Attrib V24    -0.17999861575919154
#>     Attrib V25    0.14811210763346858
#>     Attrib V26    0.40763035013553284
#>     Attrib V27    0.45698461534118545
#>     Attrib V28    -0.14526790970837872
#>     Attrib V29    0.21361141017517943
#>     Attrib V3    0.23133075555546218
#>     Attrib V30    -0.13439045095977747
#>     Attrib V31    0.7328607269238133
#>     Attrib V32    0.027320395806432946
#>     Attrib V33    -0.22658724651437256
#>     Attrib V34    0.1184645686072813
#>     Attrib V35    0.21037624125512344
#>     Attrib V36    0.7896956534409566
#>     Attrib V37    0.6470922969474724
#>     Attrib V38    -0.05400846595357261
#>     Attrib V39    -0.0828509899252274
#>     Attrib V4    -0.17143677037403882
#>     Attrib V40    0.29198792347212577
#>     Attrib V41    -0.047684982813245264
#>     Attrib V42    -0.2225686513889209
#>     Attrib V43    -0.25666173836654044
#>     Attrib V44    -0.46489721305269505
#>     Attrib V45    -0.20739308353606706
#>     Attrib V46    -0.07922234606214755
#>     Attrib V47    -0.23100339303142584
#>     Attrib V48    -0.3602182225886445
#>     Attrib V49    -0.30757199345425734
#>     Attrib V5    -0.14930781662122777
#>     Attrib V50    0.6114758783562743
#>     Attrib V51    -0.25771064013733513
#>     Attrib V52    -0.11471799293890284
#>     Attrib V53    0.12062097254644094
#>     Attrib V54    -0.6805797364046177
#>     Attrib V55    0.2672900501448989
#>     Attrib V56    -0.07089657424914836
#>     Attrib V57    -0.12329661173337823
#>     Attrib V58    -0.1916027855244845
#>     Attrib V59    -0.15759121508909552
#>     Attrib V6    0.07761425675955895
#>     Attrib V60    -0.16785442270223586
#>     Attrib V7    0.46937010277913205
#>     Attrib V8    -0.10832372837344074
#>     Attrib V9    -0.4380886053320712
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.44307863816415977
#>     Attrib V1    -0.02752327576884171
#>     Attrib V10    0.2923814807661761
#>     Attrib V11    0.3674308090873229
#>     Attrib V12    0.3949158739655319
#>     Attrib V13    -0.09894287270125626
#>     Attrib V14    -0.4697807023457355
#>     Attrib V15    -0.25660689859877767
#>     Attrib V16    -0.16771772104175542
#>     Attrib V17    0.04185126665434089
#>     Attrib V18    0.007778389787454195
#>     Attrib V19    0.13101912657586207
#>     Attrib V2    0.006184307768252765
#>     Attrib V20    0.048772437455723766
#>     Attrib V21    0.17810293493849305
#>     Attrib V22    0.18377804476837736
#>     Attrib V23    0.030067269017792535
#>     Attrib V24    0.3026357534267159
#>     Attrib V25    -0.020620797878413
#>     Attrib V26    -0.254278284795881
#>     Attrib V27    -0.21138926413676187
#>     Attrib V28    0.3876037802778822
#>     Attrib V29    0.049783638734673605
#>     Attrib V3    -0.2624070664780516
#>     Attrib V30    0.2149335464133134
#>     Attrib V31    -0.7520980471100255
#>     Attrib V32    -0.07286171635525665
#>     Attrib V33    0.032918219222721104
#>     Attrib V34    -0.0883843288562283
#>     Attrib V35    0.04538535211453801
#>     Attrib V36    -0.6014608765607676
#>     Attrib V37    -0.4901606423832133
#>     Attrib V38    0.06743435630666872
#>     Attrib V39    0.11442099790697761
#>     Attrib V4    0.1247200905332917
#>     Attrib V40    -0.31081151056195017
#>     Attrib V41    0.046583274926546334
#>     Attrib V42    0.016557753388469737
#>     Attrib V43    0.18252963228971533
#>     Attrib V44    0.4332871160643329
#>     Attrib V45    0.37548655630969835
#>     Attrib V46    0.13687321671097252
#>     Attrib V47    0.24523711927254843
#>     Attrib V48    0.33307771497833827
#>     Attrib V49    0.22268581916746047
#>     Attrib V5    0.06357243640680034
#>     Attrib V50    -0.5990990583362077
#>     Attrib V51    0.2300184404655721
#>     Attrib V52    0.21540286824635899
#>     Attrib V53    -0.20528321378221925
#>     Attrib V54    0.6625885930456552
#>     Attrib V55    -0.18235397081530097
#>     Attrib V56    -0.01601089530034591
#>     Attrib V57    0.08610775349388865
#>     Attrib V58    0.1371660284962407
#>     Attrib V59    0.08439833867899166
#>     Attrib V6    -0.0010207711292498705
#>     Attrib V60    0.14478155822757693
#>     Attrib V7    -0.4540571084792364
#>     Attrib V8    0.13635168134869205
#>     Attrib V9    0.555479211694737
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.2909574063731772
#>     Attrib V1    -0.0897639518496522
#>     Attrib V10    -0.19024697001259877
#>     Attrib V11    -0.1434129562028765
#>     Attrib V12    -0.030339531103058696
#>     Attrib V13    0.4183442603485914
#>     Attrib V14    0.7023221082076794
#>     Attrib V15    0.19423828733747253
#>     Attrib V16    -0.05737500756452
#>     Attrib V17    -0.22935164529846663
#>     Attrib V18    -0.15200124849642904
#>     Attrib V19    -0.42053069589667624
#>     Attrib V2    -0.053793455750452655
#>     Attrib V20    -0.18457687432904027
#>     Attrib V21    -0.2495374217655681
#>     Attrib V22    -0.20288896748945076
#>     Attrib V23    0.09782171209610903
#>     Attrib V24    -0.1773320220046968
#>     Attrib V25    0.2586945099833455
#>     Attrib V26    0.6595485235856132
#>     Attrib V27    0.8029874456382017
#>     Attrib V28    0.3288765145712112
#>     Attrib V29    0.7210256641379207
#>     Attrib V3    0.11007361466484918
#>     Attrib V30    -0.0551743403720547
#>     Attrib V31    1.0517453875790248
#>     Attrib V32    -0.08389546002487626
#>     Attrib V33    -0.5117602452077583
#>     Attrib V34    0.057609952149150746
#>     Attrib V35    0.37921557922247845
#>     Attrib V36    0.9362277494279482
#>     Attrib V37    1.0475056115377637
#>     Attrib V38    -0.1857600588073662
#>     Attrib V39    -0.03933475573809577
#>     Attrib V4    -0.3107968457686721
#>     Attrib V40    0.4957271755701402
#>     Attrib V41    0.14107538480483484
#>     Attrib V42    -0.24611024565960665
#>     Attrib V43    -0.46331146982875504
#>     Attrib V44    -0.8014393682257848
#>     Attrib V45    -0.3302503943310866
#>     Attrib V46    0.027992966137677103
#>     Attrib V47    -0.12054691049304021
#>     Attrib V48    -0.34617320820947317
#>     Attrib V49    -0.3162782309092805
#>     Attrib V5    -0.11104021609770745
#>     Attrib V50    0.7302064552105605
#>     Attrib V51    -0.2078716331568734
#>     Attrib V52    -0.1067881297945641
#>     Attrib V53    0.13595457433718483
#>     Attrib V54    -1.0089558481025873
#>     Attrib V55    0.32174805320008587
#>     Attrib V56    -0.34012942827254977
#>     Attrib V57    -0.20304722315484167
#>     Attrib V58    -0.27118833690497274
#>     Attrib V59    -0.3179505677220573
#>     Attrib V6    0.22273450526360056
#>     Attrib V60    -0.23191925065798724
#>     Attrib V7    0.4144577246904103
#>     Attrib V8    -0.31968742701331765
#>     Attrib V9    -0.672450321742482
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.13071163053657545
#>     Attrib V1    0.21331061269449417
#>     Attrib V10    -0.028494295798974785
#>     Attrib V11    -0.003486741852233135
#>     Attrib V12    -0.09397849245334566
#>     Attrib V13    -0.24385019137419078
#>     Attrib V14    -0.3650595942450733
#>     Attrib V15    -0.01579237517817513
#>     Attrib V16    0.11630594313092542
#>     Attrib V17    0.21887682632660496
#>     Attrib V18    0.0777758133854844
#>     Attrib V19    0.2086117232318204
#>     Attrib V2    0.23475933961384352
#>     Attrib V20    0.20775231722478057
#>     Attrib V21    0.18892313397869234
#>     Attrib V22    0.11303813745889413
#>     Attrib V23    -0.14946547218120046
#>     Attrib V24    -0.02536091273583228
#>     Attrib V25    -0.3742290918015723
#>     Attrib V26    -0.6573392929225866
#>     Attrib V27    -0.7479444644956074
#>     Attrib V28    -0.40027597190337
#>     Attrib V29    -0.5329577661537706
#>     Attrib V3    -0.058156167397804374
#>     Attrib V30    0.04980252917929939
#>     Attrib V31    -0.664447015530624
#>     Attrib V32    -0.01646866447045731
#>     Attrib V33    0.32281203475130066
#>     Attrib V34    -0.05223963651441249
#>     Attrib V35    -0.21635611397936622
#>     Attrib V36    -0.5773679780236307
#>     Attrib V37    -0.5527067251255496
#>     Attrib V38    0.24422455009594018
#>     Attrib V39    0.10351932986531781
#>     Attrib V4    0.30670300424489716
#>     Attrib V40    -0.33901461509449704
#>     Attrib V41    -0.15777035374933776
#>     Attrib V42    0.14375570802158805
#>     Attrib V43    0.28086914733431284
#>     Attrib V44    0.48272456401224745
#>     Attrib V45    0.1907635098424354
#>     Attrib V46    -0.1030368119073228
#>     Attrib V47    -0.013475547295624134
#>     Attrib V48    0.14574031013474373
#>     Attrib V49    0.060922019730618386
#>     Attrib V5    -0.025323581195403223
#>     Attrib V50    -0.4694516559743492
#>     Attrib V51    0.05934369631067248
#>     Attrib V52    0.06440083935540027
#>     Attrib V53    -0.02323434312909089
#>     Attrib V54    0.7806931424309119
#>     Attrib V55    -0.09859062383198448
#>     Attrib V56    0.34133325892415606
#>     Attrib V57    0.22278554022360755
#>     Attrib V58    0.1608766440910065
#>     Attrib V59    0.41644560729872554
#>     Attrib V6    -0.2022253878682662
#>     Attrib V60    0.28457837093651495
#>     Attrib V7    -0.314816739200734
#>     Attrib V8    0.20770901818445564
#>     Attrib V9    0.34985357855593335
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.18816183789798938
#>     Attrib V1    0.041494671058038814
#>     Attrib V10    -0.07106733302357568
#>     Attrib V11    -0.04392103301799238
#>     Attrib V12    -0.08568213967750354
#>     Attrib V13    -0.027502424702597714
#>     Attrib V14    0.1432286210830633
#>     Attrib V15    0.07947216339807095
#>     Attrib V16    0.06497870053663383
#>     Attrib V17    -0.009357142536116232
#>     Attrib V18    0.07983939778958334
#>     Attrib V19    -0.10191993293328344
#>     Attrib V2    0.014408917470901138
#>     Attrib V20    -0.06081687133477657
#>     Attrib V21    -0.067522883349117
#>     Attrib V22    -0.04380503360848891
#>     Attrib V23    0.060880040263273726
#>     Attrib V24    2.1519515151657045E-4
#>     Attrib V25    0.03885604726618358
#>     Attrib V26    0.03950317542827747
#>     Attrib V27    -5.333853199344154E-4
#>     Attrib V28    -0.06621707659330921
#>     Attrib V29    -0.018166405532781482
#>     Attrib V3    0.1124623681473654
#>     Attrib V30    0.0077622488500559035
#>     Attrib V31    0.16135130843146875
#>     Attrib V32    0.06899121023331803
#>     Attrib V33    0.08428794155394873
#>     Attrib V34    0.06351289526466175
#>     Attrib V35    0.08271816921411251
#>     Attrib V36    0.25553750784100865
#>     Attrib V37    0.16968415404261286
#>     Attrib V38    -0.037999878564098574
#>     Attrib V39    0.0024423288165702534
#>     Attrib V4    0.009265634481720405
#>     Attrib V40    0.09590489299020336
#>     Attrib V41    0.028003412063176355
#>     Attrib V42    0.029098509779548497
#>     Attrib V43    -0.06872083699727037
#>     Attrib V44    -0.044951679479409576
#>     Attrib V45    -0.005170883761568194
#>     Attrib V46    -0.01907092242173757
#>     Attrib V47    -0.025703963611237887
#>     Attrib V48    -0.07703941020869404
#>     Attrib V49    0.0012648967765852535
#>     Attrib V5    0.04453570056234975
#>     Attrib V50    0.08741382040123835
#>     Attrib V51    0.01487926638058869
#>     Attrib V52    0.03172137374071144
#>     Attrib V53    0.047226746506503804
#>     Attrib V54    -0.17130984772648672
#>     Attrib V55    0.04152132122760209
#>     Attrib V56    0.041419086766770315
#>     Attrib V57    0.019116853560881383
#>     Attrib V58    0.0543302367086735
#>     Attrib V59    -0.02090922498088607
#>     Attrib V6    0.12141186680417623
#>     Attrib V60    -0.004321731171411543
#>     Attrib V7    0.17821497713316073
#>     Attrib V8    0.07759453226003056
#>     Attrib V9    -0.017899210511235004
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
