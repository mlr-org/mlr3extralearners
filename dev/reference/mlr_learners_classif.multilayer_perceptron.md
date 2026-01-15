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
#>     Threshold    -0.4448636404866275
#>     Node 2    1.4169355199873794
#>     Node 3    0.9218631910332543
#>     Node 4    0.8429717812425531
#>     Node 5    -1.7914681944143842
#>     Node 6    0.8209757312995652
#>     Node 7    2.80649549175558
#>     Node 8    1.8645480222448485
#>     Node 9    2.8992919168675084
#>     Node 10    -1.3548422234824147
#>     Node 11    0.9408922971537153
#>     Node 12    1.1068193307018075
#>     Node 13    1.106565859494717
#>     Node 14    1.0026543567829092
#>     Node 15    -2.325220187067153
#>     Node 16    -1.0221322425484396
#>     Node 17    0.6795852976827821
#>     Node 18    0.11878758529441098
#>     Node 19    2.259537319359899
#>     Node 20    1.3584207783674291
#>     Node 21    -1.9267645254305892
#>     Node 22    0.22795714599006536
#>     Node 23    1.243182389985732
#>     Node 24    -2.3308702406302935
#>     Node 25    3.991632268787118
#>     Node 26    -0.4496472509698834
#>     Node 27    1.6714122895476455
#>     Node 28    -3.266427140493081
#>     Node 29    1.0758196543703562
#>     Node 30    -0.35227309645720695
#>     Node 31    1.3055838875913
#>     Node 32    -0.09037906955105053
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.44799496563252983
#>     Node 2    -1.4757570528539266
#>     Node 3    -0.9142826484127989
#>     Node 4    -0.8088772637953705
#>     Node 5    1.797516619217277
#>     Node 6    -0.8085238162381069
#>     Node 7    -2.795295798509149
#>     Node 8    -1.8930492424251846
#>     Node 9    -2.8854783098116483
#>     Node 10    1.3015680308602129
#>     Node 11    -0.9133767289551247
#>     Node 12    -1.1918968269804844
#>     Node 13    -1.0612027280654182
#>     Node 14    -0.9383845914074217
#>     Node 15    2.2989618273950923
#>     Node 16    1.0221341560256934
#>     Node 17    -0.6523115568992123
#>     Node 18    -0.07622135311446203
#>     Node 19    -2.2526064494195093
#>     Node 20    -1.348009406156705
#>     Node 21    1.977315962663613
#>     Node 22    -0.281715169595264
#>     Node 23    -1.3006239815139335
#>     Node 24    2.3193171649194313
#>     Node 25    -3.9766961455460845
#>     Node 26    0.3873353815964864
#>     Node 27    -1.7083499247098233
#>     Node 28    3.2808181703004187
#>     Node 29    -1.107288105326227
#>     Node 30    0.440964406356551
#>     Node 31    -1.2612262117689867
#>     Node 32    0.07887587415125304
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.020010200253039526
#>     Attrib V1    0.1962735131476451
#>     Attrib V10    0.28161560183887285
#>     Attrib V11    0.3235697905664973
#>     Attrib V12    0.5655806696540226
#>     Attrib V13    -0.20233378843655594
#>     Attrib V14    -0.2064796626309335
#>     Attrib V15    -0.19827731161876003
#>     Attrib V16    -0.1320185488738837
#>     Attrib V17    -0.1002101083446272
#>     Attrib V18    0.06156629341406889
#>     Attrib V19    0.23463696532224707
#>     Attrib V2    -0.09367521161175849
#>     Attrib V20    0.5360289451933969
#>     Attrib V21    0.5491280066532641
#>     Attrib V22    0.3087534305793065
#>     Attrib V23    0.17801933897791639
#>     Attrib V24    0.4824299738638595
#>     Attrib V25    0.055690917938171595
#>     Attrib V26    -1.1090888616618444
#>     Attrib V27    -0.5849843279624007
#>     Attrib V28    -0.04499546054535872
#>     Attrib V29    -0.21393437634016085
#>     Attrib V3    -0.09076942474399696
#>     Attrib V30    0.32845432384819384
#>     Attrib V31    -0.39710244719979265
#>     Attrib V32    -0.05089698611432439
#>     Attrib V33    0.5350931881015717
#>     Attrib V34    0.07686494442590824
#>     Attrib V35    0.21169099031344407
#>     Attrib V36    -0.4119502141289045
#>     Attrib V37    -0.608839519032657
#>     Attrib V38    0.5384588716522385
#>     Attrib V39    0.2863631158288614
#>     Attrib V4    0.28652250779394317
#>     Attrib V40    -0.07809080399002333
#>     Attrib V41    -0.19423749902153029
#>     Attrib V42    -0.21121281060757516
#>     Attrib V43    0.17041691844292367
#>     Attrib V44    0.2603352289486157
#>     Attrib V45    0.25020243244956736
#>     Attrib V46    -0.03474296460031409
#>     Attrib V47    -0.23894871974744583
#>     Attrib V48    0.23153377236904718
#>     Attrib V49    0.40867963874695096
#>     Attrib V5    -0.0035512373988333024
#>     Attrib V50    -0.46354632195940787
#>     Attrib V51    0.05055902174440332
#>     Attrib V52    0.26442233002466586
#>     Attrib V53    0.5808169499504616
#>     Attrib V54    0.23646277094200507
#>     Attrib V55    -0.5229019226322117
#>     Attrib V56    -0.07371573130527019
#>     Attrib V57    -0.01920809351966892
#>     Attrib V58    -0.06594567496564867
#>     Attrib V59    0.5262071166940169
#>     Attrib V6    -0.17053548760364282
#>     Attrib V60    0.25549291453987677
#>     Attrib V7    -0.19497324079336173
#>     Attrib V8    -0.35394733917422266
#>     Attrib V9    0.2276370362828932
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.04050710526456272
#>     Attrib V1    0.15378475782834294
#>     Attrib V10    0.06618615068876407
#>     Attrib V11    0.09674724504326157
#>     Attrib V12    0.3117108012240299
#>     Attrib V13    -0.10461925916624432
#>     Attrib V14    -0.023081005976395595
#>     Attrib V15    0.03223871661562865
#>     Attrib V16    -0.03399023848335088
#>     Attrib V17    -0.03615160388854762
#>     Attrib V18    -0.00911585809154391
#>     Attrib V19    0.1342681018318844
#>     Attrib V2    0.06650348344644587
#>     Attrib V20    0.24913334441303603
#>     Attrib V21    0.24694200478842543
#>     Attrib V22    0.1361883792382499
#>     Attrib V23    0.06301893539789909
#>     Attrib V24    0.26273164743766686
#>     Attrib V25    -0.011709516597346493
#>     Attrib V26    -0.7437156308252395
#>     Attrib V27    -0.4127262937063531
#>     Attrib V28    -0.08193066355553515
#>     Attrib V29    -0.198555231360913
#>     Attrib V3    0.03333481191135155
#>     Attrib V30    0.2036945980865588
#>     Attrib V31    -0.1836157298130941
#>     Attrib V32    -0.0074892757142919885
#>     Attrib V33    0.32198209115970283
#>     Attrib V34    -0.09588680485615403
#>     Attrib V35    -0.02644810485848865
#>     Attrib V36    -0.42010711275895596
#>     Attrib V37    -0.5088357146117137
#>     Attrib V38    0.17512777241092203
#>     Attrib V39    0.1501223340918243
#>     Attrib V4    0.325066165153651
#>     Attrib V40    -0.04224740780918402
#>     Attrib V41    -0.07869998105770751
#>     Attrib V42    -0.10533916037340622
#>     Attrib V43    0.07593940696457285
#>     Attrib V44    0.10191557153713143
#>     Attrib V45    0.06633712470574855
#>     Attrib V46    -0.08322580048578557
#>     Attrib V47    -0.14241836885004613
#>     Attrib V48    0.08777445871884389
#>     Attrib V49    0.21009110713738707
#>     Attrib V5    0.013092907523597605
#>     Attrib V50    -0.23144623655485846
#>     Attrib V51    -0.00906440817070562
#>     Attrib V52    0.17521867648467687
#>     Attrib V53    0.4241929001744194
#>     Attrib V54    0.2662108806330889
#>     Attrib V55    -0.1878336115930399
#>     Attrib V56    0.03572648736494338
#>     Attrib V57    0.15759028635651354
#>     Attrib V58    0.09589752106614761
#>     Attrib V59    0.42741438406374366
#>     Attrib V6    -0.10822388593995635
#>     Attrib V60    0.16995471861200084
#>     Attrib V7    -0.13149344363879606
#>     Attrib V8    -0.12369325647536979
#>     Attrib V9    0.05246200498290475
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.02855181668450243
#>     Attrib V1    0.1174204280974991
#>     Attrib V10    0.032435898416008045
#>     Attrib V11    0.06157470752410863
#>     Attrib V12    0.21654100421057562
#>     Attrib V13    -0.12872175152605111
#>     Attrib V14    -0.025417653107159446
#>     Attrib V15    0.024940927826698055
#>     Attrib V16    -0.00825513316233077
#>     Attrib V17    0.005345029509685216
#>     Attrib V18    0.03157674833926442
#>     Attrib V19    0.1136727151484456
#>     Attrib V2    0.010299845998460101
#>     Attrib V20    0.2689604812857222
#>     Attrib V21    0.31390929919675303
#>     Attrib V22    0.0950890890007379
#>     Attrib V23    0.06450730599875112
#>     Attrib V24    0.19065149199324524
#>     Attrib V25    -0.1158944558577167
#>     Attrib V26    -0.7245210906865335
#>     Attrib V27    -0.44151518731505407
#>     Attrib V28    -0.057396801111235435
#>     Attrib V29    -0.09778102914349979
#>     Attrib V3    0.0406977180458652
#>     Attrib V30    0.14128558124168214
#>     Attrib V31    -0.1964310052120445
#>     Attrib V32    -0.04894720326501425
#>     Attrib V33    0.2972522483465649
#>     Attrib V34    -0.01638030902285598
#>     Attrib V35    0.02705194539131145
#>     Attrib V36    -0.32096442223224164
#>     Attrib V37    -0.39215857698792533
#>     Attrib V38    0.19422434646529907
#>     Attrib V39    0.1426062832294487
#>     Attrib V4    0.25801284910221955
#>     Attrib V40    -0.048532894954883166
#>     Attrib V41    -0.1172183154096951
#>     Attrib V42    -0.07922362843536315
#>     Attrib V43    0.05131198854915197
#>     Attrib V44    0.10808937544515654
#>     Attrib V45    0.14883261030189024
#>     Attrib V46    -0.06888779235807911
#>     Attrib V47    -0.16194176108898797
#>     Attrib V48    0.11111704469389565
#>     Attrib V49    0.2357538885880492
#>     Attrib V5    0.029430439412369447
#>     Attrib V50    -0.15625129713541816
#>     Attrib V51    0.06362155040132039
#>     Attrib V52    0.1395405897218197
#>     Attrib V53    0.4332977487491573
#>     Attrib V54    0.15744406887417692
#>     Attrib V55    -0.20714699183783095
#>     Attrib V56    0.038410343515684085
#>     Attrib V57    0.15347365582710226
#>     Attrib V58    0.04309378037377143
#>     Attrib V59    0.36233391193193626
#>     Attrib V6    -0.08086483639777484
#>     Attrib V60    0.15030606710469246
#>     Attrib V7    -0.07839209497058836
#>     Attrib V8    -0.16642499586600937
#>     Attrib V9    0.10668215476509457
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.11226063591686364
#>     Attrib V1    -0.1763236954885996
#>     Attrib V10    -0.48927103296792657
#>     Attrib V11    -0.40812846344912
#>     Attrib V12    -0.7999930461994239
#>     Attrib V13    0.082721974972645
#>     Attrib V14    0.340936668579265
#>     Attrib V15    0.4107334706572884
#>     Attrib V16    0.35304929101126264
#>     Attrib V17    0.35995530295820133
#>     Attrib V18    0.045725839692471265
#>     Attrib V19    -0.26694393279523676
#>     Attrib V2    0.17666597981537882
#>     Attrib V20    -0.6046561443816444
#>     Attrib V21    -0.5976770732366148
#>     Attrib V22    -0.4645836898454162
#>     Attrib V23    -0.26053879284930126
#>     Attrib V24    -0.6743923818057808
#>     Attrib V25    -0.2039040439477264
#>     Attrib V26    0.9765399394686055
#>     Attrib V27    0.41113205687880583
#>     Attrib V28    -0.18068812521038
#>     Attrib V29    0.13886798734753775
#>     Attrib V3    0.23379579862261068
#>     Attrib V30    -0.3451201402059224
#>     Attrib V31    0.4395521977443855
#>     Attrib V32    0.19350185789833665
#>     Attrib V33    -0.46919935878937413
#>     Attrib V34    -0.025420824072040514
#>     Attrib V35    -0.3037129971416541
#>     Attrib V36    0.49623281632551314
#>     Attrib V37    0.6647316605654352
#>     Attrib V38    -0.6867994404695127
#>     Attrib V39    -0.4149957033701962
#>     Attrib V4    -0.3138309337633868
#>     Attrib V40    0.09122274782463487
#>     Attrib V41    0.13647598327390234
#>     Attrib V42    0.3886613218476059
#>     Attrib V43    -0.20664157482394988
#>     Attrib V44    -0.3102942224775374
#>     Attrib V45    -0.4112358894094047
#>     Attrib V46    -0.07130655688756694
#>     Attrib V47    0.15959347263118184
#>     Attrib V48    -0.3852140259700512
#>     Attrib V49    -0.685388332188155
#>     Attrib V5    0.07050954529125962
#>     Attrib V50    0.5013407329584377
#>     Attrib V51    -0.12427232608658097
#>     Attrib V52    -0.3531431971028381
#>     Attrib V53    -0.6667597238582188
#>     Attrib V54    -0.10336562995825162
#>     Attrib V55    0.80006532840137
#>     Attrib V56    0.2217255026405131
#>     Attrib V57    0.036743394734510375
#>     Attrib V58    0.09857878811004198
#>     Attrib V59    -0.4415371705643719
#>     Attrib V6    0.13739564900747217
#>     Attrib V60    -0.20986881190030168
#>     Attrib V7    0.24708009667166284
#>     Attrib V8    0.5021260800665669
#>     Attrib V9    -0.36278704929257594
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.012233426374461166
#>     Attrib V1    0.18141061998548813
#>     Attrib V10    -0.034762389205011596
#>     Attrib V11    0.018706617215597923
#>     Attrib V12    0.16663127043285486
#>     Attrib V13    -0.19177722259349597
#>     Attrib V14    -0.028901776315899626
#>     Attrib V15    0.04411287722270758
#>     Attrib V16    0.12280532899471872
#>     Attrib V17    0.04370627523616128
#>     Attrib V18    0.1285942070712183
#>     Attrib V19    0.12393745839828361
#>     Attrib V2    0.031484361687534865
#>     Attrib V20    0.3058141564278033
#>     Attrib V21    0.32890787004159716
#>     Attrib V22    0.11169819773853296
#>     Attrib V23    0.06858397951223115
#>     Attrib V24    0.21798750850581478
#>     Attrib V25    -0.07474487723719282
#>     Attrib V26    -0.6918506375201069
#>     Attrib V27    -0.40766849632224034
#>     Attrib V28    -0.22033706357580898
#>     Attrib V29    -0.22351014871043604
#>     Attrib V3    0.04539684150376914
#>     Attrib V30    0.06758578727354093
#>     Attrib V31    -0.21411254326017004
#>     Attrib V32    -0.04898951043174858
#>     Attrib V33    0.23856064889683365
#>     Attrib V34    -0.07175641132644778
#>     Attrib V35    0.01107703243587174
#>     Attrib V36    -0.28323635866978475
#>     Attrib V37    -0.33824770336003046
#>     Attrib V38    0.17130188902243657
#>     Attrib V39    0.07786073500870071
#>     Attrib V4    0.27058735614112106
#>     Attrib V40    -0.09879120745711127
#>     Attrib V41    -0.0751178425155448
#>     Attrib V42    -0.03819029409101766
#>     Attrib V43    0.0847501124534862
#>     Attrib V44    0.08451182827597675
#>     Attrib V45    0.0792489554025134
#>     Attrib V46    -0.04303234457749746
#>     Attrib V47    -0.15875047116612412
#>     Attrib V48    -0.00307292162031291
#>     Attrib V49    0.11807389702666313
#>     Attrib V5    0.02014312119936936
#>     Attrib V50    -0.09930185769546249
#>     Attrib V51    0.02594317636605198
#>     Attrib V52    0.11563834119182645
#>     Attrib V53    0.45902093694570684
#>     Attrib V54    0.2054190641239322
#>     Attrib V55    -0.15660684018343765
#>     Attrib V56    0.06858061465106054
#>     Attrib V57    0.18823149964524824
#>     Attrib V58    0.13984437166239758
#>     Attrib V59    0.42743197904149155
#>     Attrib V6    0.013742199844028935
#>     Attrib V60    0.21119286441614407
#>     Attrib V7    -0.016713520513952487
#>     Attrib V8    -0.02150902434324611
#>     Attrib V9    0.1339808676248514
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.2587294573281058
#>     Attrib V1    0.3336516083787664
#>     Attrib V10    0.8943708740347152
#>     Attrib V11    1.08550646207414
#>     Attrib V12    1.5402156528837991
#>     Attrib V13    0.6104992169049994
#>     Attrib V14    0.04033715264893792
#>     Attrib V15    -0.48000631806338206
#>     Attrib V16    -0.6280256764810187
#>     Attrib V17    -0.5011765422886058
#>     Attrib V18    -0.39212974314278454
#>     Attrib V19    -0.3909982290273059
#>     Attrib V2    0.4069796064270166
#>     Attrib V20    -0.5502581958547837
#>     Attrib V21    -0.1849937167840109
#>     Attrib V22    -0.08731384779355066
#>     Attrib V23    -0.055083002366890337
#>     Attrib V24    0.5394771940732075
#>     Attrib V25    0.8557043505073293
#>     Attrib V26    0.7315689492726587
#>     Attrib V27    1.1190360875125747
#>     Attrib V28    1.298095431070432
#>     Attrib V29    0.7335108818214502
#>     Attrib V3    0.4383132711475523
#>     Attrib V30    0.4315917656728787
#>     Attrib V31    -0.6164908447252895
#>     Attrib V32    -0.5836183285347406
#>     Attrib V33    -0.2050653991176188
#>     Attrib V34    -0.10919280714932361
#>     Attrib V35    0.15829674092684132
#>     Attrib V36    -0.667204940151172
#>     Attrib V37    -0.18847068783350646
#>     Attrib V38    0.5026317486094282
#>     Attrib V39    0.2982659659864658
#>     Attrib V4    0.6682999992227207
#>     Attrib V40    0.34799313418008954
#>     Attrib V41    0.6234527330679345
#>     Attrib V42    -0.37779710509509923
#>     Attrib V43    -0.12049234034551684
#>     Attrib V44    0.05448884085456353
#>     Attrib V45    0.2937961008380907
#>     Attrib V46    0.3468138716247605
#>     Attrib V47    0.2160637793267055
#>     Attrib V48    0.8352827213801065
#>     Attrib V49    0.7763411732498752
#>     Attrib V5    0.3951127659684897
#>     Attrib V50    -0.4460763200803388
#>     Attrib V51    0.36499760232713213
#>     Attrib V52    0.5912482362649566
#>     Attrib V53    0.5393919769498391
#>     Attrib V54    -0.15675011576501507
#>     Attrib V55    -0.7319101920679932
#>     Attrib V56    -0.30384851869634427
#>     Attrib V57    0.053146709663286676
#>     Attrib V58    -0.37225461159795975
#>     Attrib V59    0.030751415861911113
#>     Attrib V6    0.31052836111246734
#>     Attrib V60    0.5757303680789042
#>     Attrib V7    -0.17705892772824558
#>     Attrib V8    -0.6938897079615162
#>     Attrib V9    0.368660619643347
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.1707882275102555
#>     Attrib V1    0.18826638123582443
#>     Attrib V10    0.6728832394330875
#>     Attrib V11    0.8191833499608262
#>     Attrib V12    1.187677005528684
#>     Attrib V13    0.34440492759175106
#>     Attrib V14    -0.13262200898714055
#>     Attrib V15    -0.4216962125927846
#>     Attrib V16    -0.4674061584448077
#>     Attrib V17    -0.4190769609615877
#>     Attrib V18    -0.3514992314389364
#>     Attrib V19    -0.3154911792521758
#>     Attrib V2    0.21286214428919512
#>     Attrib V20    -0.4899297896949027
#>     Attrib V21    -0.23487819388803144
#>     Attrib V22    -0.21739321373306256
#>     Attrib V23    -0.22012801132511126
#>     Attrib V24    0.4127772602724253
#>     Attrib V25    0.6101753320901694
#>     Attrib V26    0.2574259893967818
#>     Attrib V27    0.6061008920343005
#>     Attrib V28    0.788602246969721
#>     Attrib V29    0.24107792979668924
#>     Attrib V3    0.20018033911520478
#>     Attrib V30    0.30611064221087103
#>     Attrib V31    -0.39079123776341207
#>     Attrib V32    -0.19503601375712296
#>     Attrib V33    0.1489510097042701
#>     Attrib V34    -0.002898612486366376
#>     Attrib V35    0.13744048109330517
#>     Attrib V36    -0.5392443174649819
#>     Attrib V37    -0.4150547155709723
#>     Attrib V38    0.4106943769893221
#>     Attrib V39    0.2398524005317375
#>     Attrib V4    0.5569394377363308
#>     Attrib V40    0.14022684113435216
#>     Attrib V41    0.21875874766569758
#>     Attrib V42    -0.4101266002610371
#>     Attrib V43    -0.07966755043977743
#>     Attrib V44    0.08216246035341852
#>     Attrib V45    0.2578643522604248
#>     Attrib V46    0.2649665388971541
#>     Attrib V47    0.1281301812197506
#>     Attrib V48    0.7062996315569303
#>     Attrib V49    0.6582956643390515
#>     Attrib V5    0.17655704294980246
#>     Attrib V50    -0.46427342161072394
#>     Attrib V51    0.17584428423304654
#>     Attrib V52    0.3529414127224694
#>     Attrib V53    0.43556181356090606
#>     Attrib V54    -0.025769071166170058
#>     Attrib V55    -0.5211880443214941
#>     Attrib V56    -0.27326261607128444
#>     Attrib V57    0.1353063638421209
#>     Attrib V58    -0.27391950162946305
#>     Attrib V59    0.058382146966093645
#>     Attrib V6    0.060519911878786976
#>     Attrib V60    0.3745039749809899
#>     Attrib V7    -0.201222928405514
#>     Attrib V8    -0.5248795696918956
#>     Attrib V9    0.2834213724101232
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.1319555319467594
#>     Attrib V1    0.10757486967448147
#>     Attrib V10    1.2424184512010532
#>     Attrib V11    1.1890677476930116
#>     Attrib V12    1.7910200404168315
#>     Attrib V13    0.5934286561413319
#>     Attrib V14    -0.3898845746576692
#>     Attrib V15    -0.7513744207195957
#>     Attrib V16    -0.7208774814476557
#>     Attrib V17    -0.43831870773436094
#>     Attrib V18    -0.2322661112635915
#>     Attrib V19    -0.2642452854761618
#>     Attrib V2    0.03550802128200139
#>     Attrib V20    -0.5135630304512784
#>     Attrib V21    -0.1831013788000844
#>     Attrib V22    -0.009578884310772345
#>     Attrib V23    0.09398116493544514
#>     Attrib V24    1.018309823528706
#>     Attrib V25    1.396444251547156
#>     Attrib V26    0.7537986571105022
#>     Attrib V27    0.8963159751561148
#>     Attrib V28    0.797588738313355
#>     Attrib V29    -0.17086854405310214
#>     Attrib V3    0.1497330244283795
#>     Attrib V30    0.11653456044679396
#>     Attrib V31    -0.5781956338703705
#>     Attrib V32    -0.44543669364688343
#>     Attrib V33    -0.014729105109001247
#>     Attrib V34    0.14742764025926175
#>     Attrib V35    0.3985541049516284
#>     Attrib V36    -0.6633425244320126
#>     Attrib V37    -0.4515510163896339
#>     Attrib V38    0.5109614381328228
#>     Attrib V39    0.3733071870968593
#>     Attrib V4    0.27129470650734894
#>     Attrib V40    0.36949739109598717
#>     Attrib V41    0.4744437639224033
#>     Attrib V42    -0.5425613241266034
#>     Attrib V43    -0.04616152422812684
#>     Attrib V44    0.07138356226252071
#>     Attrib V45    0.30523744175627915
#>     Attrib V46    0.4013139329204905
#>     Attrib V47    0.25797986917200894
#>     Attrib V48    0.893360347203883
#>     Attrib V49    0.8341564886436649
#>     Attrib V5    0.31821835451301
#>     Attrib V50    -0.6225402215613145
#>     Attrib V51    0.42535341307203756
#>     Attrib V52    0.577175114440308
#>     Attrib V53    0.5726295106595344
#>     Attrib V54    -0.08116284680208724
#>     Attrib V55    -0.7741434670374064
#>     Attrib V56    -0.3283271951313416
#>     Attrib V57    -0.2373696438899669
#>     Attrib V58    -0.48463023493411805
#>     Attrib V59    -0.11794990796360834
#>     Attrib V6    0.26703008626209795
#>     Attrib V60    0.5872568556119202
#>     Attrib V7    -0.1595670665217918
#>     Attrib V8    -0.7248741564908874
#>     Attrib V9    0.5985335432545235
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.23359646058393924
#>     Attrib V1    -0.065522987431046
#>     Attrib V10    -0.36797691889028056
#>     Attrib V11    -0.38416573190401954
#>     Attrib V12    -0.6684483087843678
#>     Attrib V13    0.09192411962872463
#>     Attrib V14    0.2967822896001734
#>     Attrib V15    0.27826599788896167
#>     Attrib V16    0.2961905605589151
#>     Attrib V17    0.20494333096660652
#>     Attrib V18    0.10984342391348448
#>     Attrib V19    -0.09222068692070765
#>     Attrib V2    0.0779159538455349
#>     Attrib V20    -0.223159143251097
#>     Attrib V21    -0.280531340805101
#>     Attrib V22    -0.22690839281983172
#>     Attrib V23    -0.15594704458012545
#>     Attrib V24    -0.5809105947410863
#>     Attrib V25    -0.2509102226830563
#>     Attrib V26    0.6941642467706844
#>     Attrib V27    0.29436198665944385
#>     Attrib V28    -0.15615968734063723
#>     Attrib V29    -0.01154055119727904
#>     Attrib V3    0.15192044284090223
#>     Attrib V30    -0.2922895247136493
#>     Attrib V31    0.32298554812467
#>     Attrib V32    0.07330549156895465
#>     Attrib V33    -0.31187406490108077
#>     Attrib V34    0.01806251512030577
#>     Attrib V35    -0.1563573549316244
#>     Attrib V36    0.5272134575338455
#>     Attrib V37    0.6661225056653453
#>     Attrib V38    -0.3340012162352135
#>     Attrib V39    -0.2881595900439351
#>     Attrib V4    -0.29495856769236367
#>     Attrib V40    0.04333502954487967
#>     Attrib V41    0.05895043013065453
#>     Attrib V42    0.2702671191996279
#>     Attrib V43    -0.13588943494061542
#>     Attrib V44    -0.18058667032297404
#>     Attrib V45    -0.22559584825472004
#>     Attrib V46    -0.04684893899335325
#>     Attrib V47    0.11231542442076808
#>     Attrib V48    -0.3816202128025827
#>     Attrib V49    -0.5309180520812206
#>     Attrib V5    0.05029416572814086
#>     Attrib V50    0.4932582409263968
#>     Attrib V51    -0.10182002116735833
#>     Attrib V52    -0.2911878873115643
#>     Attrib V53    -0.4942375541919693
#>     Attrib V54    -0.04811772256490748
#>     Attrib V55    0.5692392275927503
#>     Attrib V56    0.1582943087278393
#>     Attrib V57    0.007101182653035967
#>     Attrib V58    0.08354353956028725
#>     Attrib V59    -0.3735310888165947
#>     Attrib V6    0.09414130283010125
#>     Attrib V60    -0.17861441936324238
#>     Attrib V7    0.18159460956016543
#>     Attrib V8    0.3269972201736351
#>     Attrib V9    -0.22840477642251836
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.05366020411405129
#>     Attrib V1    0.09740511883588164
#>     Attrib V10    0.018322676892577765
#>     Attrib V11    0.0458204119958158
#>     Attrib V12    0.20457468241579763
#>     Attrib V13    -0.24191902522779518
#>     Attrib V14    -0.12250329908833944
#>     Attrib V15    -0.019586210396762945
#>     Attrib V16    0.06616998120227091
#>     Attrib V17    0.10791483752104261
#>     Attrib V18    0.14105945895861166
#>     Attrib V19    0.18158282903680992
#>     Attrib V2    -0.08024273276291753
#>     Attrib V20    0.40775250256459855
#>     Attrib V21    0.3329786303013369
#>     Attrib V22    0.14429517936912864
#>     Attrib V23    0.10083238361868153
#>     Attrib V24    0.22453163932398043
#>     Attrib V25    -0.07729593489243558
#>     Attrib V26    -0.8399071969732109
#>     Attrib V27    -0.52850780948072
#>     Attrib V28    -0.23166525460216636
#>     Attrib V29    -0.3116315633030264
#>     Attrib V3    -0.08492512451636446
#>     Attrib V30    0.06280019881138452
#>     Attrib V31    -0.2736510993160984
#>     Attrib V32    -0.08078488816919638
#>     Attrib V33    0.2996848181433709
#>     Attrib V34    0.05256754331106359
#>     Attrib V35    0.1320584590671641
#>     Attrib V36    -0.19723896004633737
#>     Attrib V37    -0.3673627110957704
#>     Attrib V38    0.29873161992178526
#>     Attrib V39    0.10918766677585824
#>     Attrib V4    0.1794693611803625
#>     Attrib V40    -0.09380473150850882
#>     Attrib V41    -0.1970356069999895
#>     Attrib V42    -0.09935974697420295
#>     Attrib V43    0.10075165662681822
#>     Attrib V44    0.16360767329497786
#>     Attrib V45    0.1717031352860153
#>     Attrib V46    -0.03286890120334389
#>     Attrib V47    -0.1120141605846796
#>     Attrib V48    0.07979650105358424
#>     Attrib V49    0.16106742729045204
#>     Attrib V5    -0.0013169004617614802
#>     Attrib V50    -0.12124008513653502
#>     Attrib V51    0.09576564053232134
#>     Attrib V52    0.11402434813439648
#>     Attrib V53    0.41092627884094685
#>     Attrib V54    0.29669362463672194
#>     Attrib V55    -0.1726857797839628
#>     Attrib V56    0.039986704585010226
#>     Attrib V57    0.16322187391833756
#>     Attrib V58    0.10819572210386857
#>     Attrib V59    0.34800849260777666
#>     Attrib V6    -0.03720403207584262
#>     Attrib V60    0.1689482260855201
#>     Attrib V7    -0.08625788850478618
#>     Attrib V8    -0.07258138863405975
#>     Attrib V9    0.13108595474289578
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.08990902852024547
#>     Attrib V1    0.16050425614123673
#>     Attrib V10    0.023122358941391273
#>     Attrib V11    0.17993571443748374
#>     Attrib V12    0.27194376417224625
#>     Attrib V13    -0.2070805902014663
#>     Attrib V14    -0.07337569742887318
#>     Attrib V15    -0.03759568656154945
#>     Attrib V16    0.051561376237008835
#>     Attrib V17    0.019188180195639847
#>     Attrib V18    0.08229028771922685
#>     Attrib V19    0.24320937425879516
#>     Attrib V2    0.05355042184302002
#>     Attrib V20    0.3785865445822956
#>     Attrib V21    0.40092947237535986
#>     Attrib V22    0.2371841281407341
#>     Attrib V23    0.1076610001097725
#>     Attrib V24    0.263875869420913
#>     Attrib V25    -0.13927222103515405
#>     Attrib V26    -0.9897100608431506
#>     Attrib V27    -0.49443309666273577
#>     Attrib V28    -0.13291241427988465
#>     Attrib V29    -0.13394764912371268
#>     Attrib V3    -0.06869883559189102
#>     Attrib V30    0.2083242092693104
#>     Attrib V31    -0.31929280080267164
#>     Attrib V32    -0.1106226387576377
#>     Attrib V33    0.4114383442254306
#>     Attrib V34    -0.021390666898190507
#>     Attrib V35    0.04150365054779307
#>     Attrib V36    -0.3875330781782053
#>     Attrib V37    -0.5281476081294546
#>     Attrib V38    0.3398987640284007
#>     Attrib V39    0.12872153745128245
#>     Attrib V4    0.3830591915496036
#>     Attrib V40    -0.0649121666888669
#>     Attrib V41    -0.13313638769281977
#>     Attrib V42    -0.15020441389201122
#>     Attrib V43    0.1635656696421065
#>     Attrib V44    0.11197680078327497
#>     Attrib V45    0.17718092738429264
#>     Attrib V46    -0.008079651307234996
#>     Attrib V47    -0.2096425237271441
#>     Attrib V48    0.16371371080854538
#>     Attrib V49    0.27052725532108807
#>     Attrib V5    0.01876168302176024
#>     Attrib V50    -0.2844878008921292
#>     Attrib V51    0.040091039842279595
#>     Attrib V52    0.21417076622874204
#>     Attrib V53    0.5508873352072139
#>     Attrib V54    0.2906275726733924
#>     Attrib V55    -0.30675883373992324
#>     Attrib V56    0.018806488017544906
#>     Attrib V57    0.20003903905933262
#>     Attrib V58    0.09880365706496294
#>     Attrib V59    0.5490945827727793
#>     Attrib V6    -0.1241280222274065
#>     Attrib V60    0.21421979284443105
#>     Attrib V7    -0.10186308410911143
#>     Attrib V8    -0.16275365654366544
#>     Attrib V9    0.13464413046916968
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.06658272855461866
#>     Attrib V1    0.17964998460812873
#>     Attrib V10    0.043015081485213255
#>     Attrib V11    0.09751624396358506
#>     Attrib V12    0.23761033236700355
#>     Attrib V13    -0.14400190801377752
#>     Attrib V14    -0.08701493967158896
#>     Attrib V15    -0.018065790787987025
#>     Attrib V16    0.0208849519859032
#>     Attrib V17    0.06640504030224413
#>     Attrib V18    0.11982597414902761
#>     Attrib V19    0.20100230066952607
#>     Attrib V2    -0.03507502439237265
#>     Attrib V20    0.46313962054157576
#>     Attrib V21    0.4583173877180609
#>     Attrib V22    0.21767387086856976
#>     Attrib V23    0.18734614392011015
#>     Attrib V24    0.32742255308566587
#>     Attrib V25    -0.04531558820688087
#>     Attrib V26    -0.9379979310188904
#>     Attrib V27    -0.5153305928799297
#>     Attrib V28    -0.23705629135783712
#>     Attrib V29    -0.23249051951824953
#>     Attrib V3    0.023073276089616155
#>     Attrib V30    0.146084834601648
#>     Attrib V31    -0.3139863183661988
#>     Attrib V32    -0.07442302717183129
#>     Attrib V33    0.34034062872762677
#>     Attrib V34    0.010396365002089325
#>     Attrib V35    0.04431246538556556
#>     Attrib V36    -0.3208208619218143
#>     Attrib V37    -0.4213796876393586
#>     Attrib V38    0.31186368161357164
#>     Attrib V39    0.21010301424027544
#>     Attrib V4    0.27402122608785334
#>     Attrib V40    -0.065521706479481
#>     Attrib V41    -0.15783837981845625
#>     Attrib V42    -0.09869279880871491
#>     Attrib V43    0.09354122648482084
#>     Attrib V44    0.14631018868910992
#>     Attrib V45    0.11002483500225861
#>     Attrib V46    -0.012920557108892826
#>     Attrib V47    -0.1440848978161839
#>     Attrib V48    0.06740137544915244
#>     Attrib V49    0.26983564763108836
#>     Attrib V5    0.0248994101553962
#>     Attrib V50    -0.2273339586432236
#>     Attrib V51    0.016270860657288545
#>     Attrib V52    0.14362059137325744
#>     Attrib V53    0.5195156754506136
#>     Attrib V54    0.24843336227549276
#>     Attrib V55    -0.27851441903684726
#>     Attrib V56    0.026822677587858956
#>     Attrib V57    0.14225208907187895
#>     Attrib V58    0.0779087397306731
#>     Attrib V59    0.5132823327438644
#>     Attrib V6    -0.039785483699883106
#>     Attrib V60    0.27025323651266947
#>     Attrib V7    -0.025253680338842406
#>     Attrib V8    -0.17703246392888708
#>     Attrib V9    0.14311162949013362
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.12031454756974726
#>     Attrib V1    0.1430240459577125
#>     Attrib V10    0.13897251521328827
#>     Attrib V11    0.24636762763846876
#>     Attrib V12    0.4394702387582735
#>     Attrib V13    -0.1696249036238803
#>     Attrib V14    -0.20346629785147582
#>     Attrib V15    -0.14621409124988582
#>     Attrib V16    -0.18175242592750118
#>     Attrib V17    -0.12398224850459484
#>     Attrib V18    -0.069651684734948
#>     Attrib V19    -0.022682460459726297
#>     Attrib V2    0.0059662342810790055
#>     Attrib V20    0.0910855819649628
#>     Attrib V21    0.14001594992216349
#>     Attrib V22    0.03222194308440183
#>     Attrib V23    0.05774624172821667
#>     Attrib V24    0.3209560463604702
#>     Attrib V25    0.12009191412743506
#>     Attrib V26    -0.6060876608136759
#>     Attrib V27    -0.32008647875998764
#>     Attrib V28    -0.03929300157379126
#>     Attrib V29    -0.19660914851843958
#>     Attrib V3    -0.12351074317851142
#>     Attrib V30    0.19576012530931772
#>     Attrib V31    -0.17865828981027979
#>     Attrib V32    -0.033887405663375635
#>     Attrib V33    0.36461197477500557
#>     Attrib V34    -0.008441167354472126
#>     Attrib V35    0.10161508277568165
#>     Attrib V36    -0.42323481306184735
#>     Attrib V37    -0.4854469156945246
#>     Attrib V38    0.19796497680988445
#>     Attrib V39    0.15563142818868983
#>     Attrib V4    0.23423834433441187
#>     Attrib V40    -0.05825516365090909
#>     Attrib V41    -0.1342499593906928
#>     Attrib V42    -0.2510228920176413
#>     Attrib V43    0.018245255740245943
#>     Attrib V44    0.11001754772240338
#>     Attrib V45    0.058777878931580325
#>     Attrib V46    -0.014241582614047276
#>     Attrib V47    -0.16738237427393649
#>     Attrib V48    0.22958355091669505
#>     Attrib V49    0.31988900666419395
#>     Attrib V5    -0.07766653021334301
#>     Attrib V50    -0.34071485732358325
#>     Attrib V51    -0.025382935911370613
#>     Attrib V52    0.12250233471400851
#>     Attrib V53    0.3717399958046008
#>     Attrib V54    0.1789375839140405
#>     Attrib V55    -0.311172231904182
#>     Attrib V56    -0.05200663060660377
#>     Attrib V57    0.09575714587564291
#>     Attrib V58    -0.011424239334941478
#>     Attrib V59    0.31039650489230663
#>     Attrib V6    -0.12070918024129329
#>     Attrib V60    0.1884197478091628
#>     Attrib V7    -0.16137394872598884
#>     Attrib V8    -0.28632947362205813
#>     Attrib V9    0.09916928322821632
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    0.12972310972562007
#>     Attrib V1    -0.23000446105133437
#>     Attrib V10    -0.6488553186570205
#>     Attrib V11    -0.5741167975432105
#>     Attrib V12    -0.6840211774235798
#>     Attrib V13    0.24171449340060763
#>     Attrib V14    0.49036857273386036
#>     Attrib V15    0.40858233326127746
#>     Attrib V16    0.18793129833332656
#>     Attrib V17    0.018182113815922957
#>     Attrib V18    -0.30962697818102636
#>     Attrib V19    -0.5837218896308131
#>     Attrib V2    0.33251573235484466
#>     Attrib V20    -0.9938143658953059
#>     Attrib V21    -0.9096687708225843
#>     Attrib V22    -0.7143043592973924
#>     Attrib V23    -0.6662171005886954
#>     Attrib V24    -0.9067646612707989
#>     Attrib V25    -0.3257351256128711
#>     Attrib V26    1.3822464329305668
#>     Attrib V27    0.836541261357244
#>     Attrib V28    0.251666195521281
#>     Attrib V29    0.5294260209459902
#>     Attrib V3    0.3315877076545032
#>     Attrib V30    -0.27531525019191105
#>     Attrib V31    0.5695748269115207
#>     Attrib V32    0.1758977622924687
#>     Attrib V33    -0.6489236817385782
#>     Attrib V34    -0.06615444318123859
#>     Attrib V35    -0.5225865621991502
#>     Attrib V36    0.24759991165555045
#>     Attrib V37    0.6653653431656126
#>     Attrib V38    -0.8446079066281583
#>     Attrib V39    -0.40297558723230803
#>     Attrib V4    -0.27038833691537584
#>     Attrib V40    0.20370328831665968
#>     Attrib V41    0.3408911654943273
#>     Attrib V42    0.2804380267438329
#>     Attrib V43    -0.3777376590017885
#>     Attrib V44    -0.5702086397208509
#>     Attrib V45    -0.49871483674452527
#>     Attrib V46    -0.06755163678305977
#>     Attrib V47    0.1622419538579082
#>     Attrib V48    -0.295664758880222
#>     Attrib V49    -0.6593356128909873
#>     Attrib V5    -0.04728679738379012
#>     Attrib V50    0.45105066535001964
#>     Attrib V51    -0.1980426087889054
#>     Attrib V52    -0.4507932045409227
#>     Attrib V53    -0.6473060883635056
#>     Attrib V54    -0.351604887340564
#>     Attrib V55    0.7191563860096406
#>     Attrib V56    0.12021166594445597
#>     Attrib V57    0.12739415225985862
#>     Attrib V58    0.03163638447558068
#>     Attrib V59    -0.5863433716845611
#>     Attrib V6    0.1096650358273791
#>     Attrib V60    -0.36058472229822314
#>     Attrib V7    0.07104538462748891
#>     Attrib V8    0.4064131815329915
#>     Attrib V9    -0.5485643259038501
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1697281940770982
#>     Attrib V1    -0.09748734129871103
#>     Attrib V10    -0.28576615685539136
#>     Attrib V11    -0.32865288645360957
#>     Attrib V12    -0.5726340350096053
#>     Attrib V13    0.058074701649602475
#>     Attrib V14    0.14340706788334287
#>     Attrib V15    0.1853318260858685
#>     Attrib V16    0.22246191108860994
#>     Attrib V17    0.1918679456118532
#>     Attrib V18    0.07454540149297402
#>     Attrib V19    -0.07721396163617102
#>     Attrib V2    0.011797641906033461
#>     Attrib V20    -0.21944170759933124
#>     Attrib V21    -0.2608471952374919
#>     Attrib V22    -0.1849198423386043
#>     Attrib V23    -0.16849002801830998
#>     Attrib V24    -0.39102701062086825
#>     Attrib V25    -0.14992624251375986
#>     Attrib V26    0.5017393164053583
#>     Attrib V27    0.22133212393851312
#>     Attrib V28    -0.07083949700676165
#>     Attrib V29    0.029281601000418333
#>     Attrib V3    0.1462612152404328
#>     Attrib V30    -0.2829509818110845
#>     Attrib V31    0.18835991593300033
#>     Attrib V32    0.09718505661966703
#>     Attrib V33    -0.29832960476329046
#>     Attrib V34    0.01189859106204314
#>     Attrib V35    -0.1407975460633911
#>     Attrib V36    0.4053098205535832
#>     Attrib V37    0.5433023555949174
#>     Attrib V38    -0.2701693578056252
#>     Attrib V39    -0.18438466498524222
#>     Attrib V4    -0.19858373456749506
#>     Attrib V40    -0.013935097648906028
#>     Attrib V41    0.041372835995781926
#>     Attrib V42    0.26357224831590076
#>     Attrib V43    -0.10542759049372613
#>     Attrib V44    -0.18386727942801948
#>     Attrib V45    -0.18447741456742794
#>     Attrib V46    -0.016100750318232927
#>     Attrib V47    0.08038617168458435
#>     Attrib V48    -0.3172296238485565
#>     Attrib V49    -0.444040477011514
#>     Attrib V5    0.043916840881643354
#>     Attrib V50    0.35864098611813955
#>     Attrib V51    -0.040986587852935685
#>     Attrib V52    -0.19271873725728494
#>     Attrib V53    -0.3773311723054148
#>     Attrib V54    -0.07533719949267069
#>     Attrib V55    0.44508641325922305
#>     Attrib V56    0.13644314932901092
#>     Attrib V57    0.023820428795699546
#>     Attrib V58    0.11567390326715969
#>     Attrib V59    -0.31399323806823237
#>     Attrib V6    0.05402474554424352
#>     Attrib V60    -0.1214990106776028
#>     Attrib V7    0.11769709993355468
#>     Attrib V8    0.20657637983358054
#>     Attrib V9    -0.1360450094222327
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    4.28272184245846E-4
#>     Attrib V1    0.14359992073672234
#>     Attrib V10    0.055004771931787405
#>     Attrib V11    0.0663691620621648
#>     Attrib V12    0.120602378829297
#>     Attrib V13    -0.1723084371188318
#>     Attrib V14    -0.06677801185770806
#>     Attrib V15    0.0672881034767769
#>     Attrib V16    0.03996082889585273
#>     Attrib V17    0.02695645669913426
#>     Attrib V18    0.046754039105907606
#>     Attrib V19    0.11789219416301
#>     Attrib V2    0.07430310016959882
#>     Attrib V20    0.20250941486377622
#>     Attrib V21    0.20062073928789004
#>     Attrib V22    0.12422487216370047
#>     Attrib V23    0.018619996298165176
#>     Attrib V24    0.17531368466516825
#>     Attrib V25    -0.11374488830215855
#>     Attrib V26    -0.6022135588943052
#>     Attrib V27    -0.34071875302171994
#>     Attrib V28    -0.14391809380587917
#>     Attrib V29    -0.2159015139181228
#>     Attrib V3    0.012710797829226872
#>     Attrib V30    0.07416345745302567
#>     Attrib V31    -0.13651617567493415
#>     Attrib V32    -0.08604397216509109
#>     Attrib V33    0.23930635895541844
#>     Attrib V34    -0.047578554231688566
#>     Attrib V35    0.06290496527326422
#>     Attrib V36    -0.2420983706575352
#>     Attrib V37    -0.3083878979361302
#>     Attrib V38    0.22408155902169735
#>     Attrib V39    0.10827461199566432
#>     Attrib V4    0.2108667751789934
#>     Attrib V40    -0.0989886218000615
#>     Attrib V41    -0.09246292481731075
#>     Attrib V42    -0.1132909865047459
#>     Attrib V43    0.08836408839484637
#>     Attrib V44    0.10077143663445512
#>     Attrib V45    0.10729686596927906
#>     Attrib V46    -0.05657289974115926
#>     Attrib V47    -0.15281982614178366
#>     Attrib V48    0.09330226352156017
#>     Attrib V49    0.10603347442833336
#>     Attrib V5    -0.00711832957816119
#>     Attrib V50    -0.10541817809888128
#>     Attrib V51    0.03770582828486191
#>     Attrib V52    0.10142882009178376
#>     Attrib V53    0.3247648854092817
#>     Attrib V54    0.17236079179492367
#>     Attrib V55    -0.08226532587470747
#>     Attrib V56    0.0536192543076382
#>     Attrib V57    0.18952020231346586
#>     Attrib V58    0.044245470626476796
#>     Attrib V59    0.26021455099588614
#>     Attrib V6    -0.005414281557752642
#>     Attrib V60    0.16274311170594535
#>     Attrib V7    -0.06518032920809823
#>     Attrib V8    -0.040927433805823296
#>     Attrib V9    0.09410074600335133
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.1762380761711578
#>     Attrib V1    0.0747756640575858
#>     Attrib V10    0.049975649024906955
#>     Attrib V11    0.03433586984772643
#>     Attrib V12    0.03214823928260632
#>     Attrib V13    -0.02025604923531275
#>     Attrib V14    0.019017868438902217
#>     Attrib V15    -0.006984830796886568
#>     Attrib V16    0.012036014161292305
#>     Attrib V17    -0.039611331947949927
#>     Attrib V18    0.03499697679427307
#>     Attrib V19    -0.06872050086055662
#>     Attrib V2    0.05711055367557154
#>     Attrib V20    7.484705338548842E-4
#>     Attrib V21    8.41717720331135E-4
#>     Attrib V22    -0.07479149017077508
#>     Attrib V23    -0.058693318447426215
#>     Attrib V24    -0.04888959996443453
#>     Attrib V25    -0.04306809891709249
#>     Attrib V26    -0.13052295016741475
#>     Attrib V27    -0.0719146850844512
#>     Attrib V28    -0.04385607947675657
#>     Attrib V29    -0.08687353757323832
#>     Attrib V3    0.12442417812273976
#>     Attrib V30    -0.06537283535869129
#>     Attrib V31    -0.07453959813473816
#>     Attrib V32    -0.011989535876083982
#>     Attrib V33    0.0508078130229663
#>     Attrib V34    0.054094023514176276
#>     Attrib V35    0.036014356908430724
#>     Attrib V36    0.0653773805870927
#>     Attrib V37    -0.007793772578285611
#>     Attrib V38    0.0727281860651139
#>     Attrib V39    0.08903140345730053
#>     Attrib V4    0.06286391155902041
#>     Attrib V40    0.008431289868188393
#>     Attrib V41    -0.033369491988418896
#>     Attrib V42    0.004833532961889507
#>     Attrib V43    0.023161601871867582
#>     Attrib V44    0.07798743690177379
#>     Attrib V45    0.004455613189531347
#>     Attrib V46    0.024904552796679313
#>     Attrib V47    0.06539803852692369
#>     Attrib V48    0.05343366311010942
#>     Attrib V49    0.07113057706821074
#>     Attrib V5    0.04387730631406359
#>     Attrib V50    -0.018451666713965323
#>     Attrib V51    0.11090220635450271
#>     Attrib V52    0.08366109812533744
#>     Attrib V53    0.1395828909891032
#>     Attrib V54    0.061131607437611604
#>     Attrib V55    0.07223585192488281
#>     Attrib V56    0.09129852646345316
#>     Attrib V57    0.06858633113538458
#>     Attrib V58    0.08839182335340996
#>     Attrib V59    0.12936113228695703
#>     Attrib V6    0.02105721756224656
#>     Attrib V60    0.15174518407693666
#>     Attrib V7    0.05703241291268226
#>     Attrib V8    0.06466835664479775
#>     Attrib V9    0.08184885926106049
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.1972231407298867
#>     Attrib V1    0.21691535010618326
#>     Attrib V10    0.7395737611395018
#>     Attrib V11    0.9281985219877704
#>     Attrib V12    1.4708949441727652
#>     Attrib V13    0.46031825299039625
#>     Attrib V14    -0.02226544559065136
#>     Attrib V15    -0.4032450318060923
#>     Attrib V16    -0.6255633752782914
#>     Attrib V17    -0.4848204018891862
#>     Attrib V18    -0.39947314628027963
#>     Attrib V19    -0.3827451026265494
#>     Attrib V2    0.2935626263219066
#>     Attrib V20    -0.5715248952615152
#>     Attrib V21    -0.30369942379276155
#>     Attrib V22    -0.17757667549083697
#>     Attrib V23    -0.23844274978162294
#>     Attrib V24    0.4259686370871545
#>     Attrib V25    0.7229014954124039
#>     Attrib V26    0.39491392104601986
#>     Attrib V27    0.7950251145522612
#>     Attrib V28    0.9275053272398851
#>     Attrib V29    0.31572658196328723
#>     Attrib V3    0.23821683260422236
#>     Attrib V30    0.328842368148495
#>     Attrib V31    -0.4626110632577461
#>     Attrib V32    -0.33930685134352684
#>     Attrib V33    0.08843016448012654
#>     Attrib V34    0.011401958232367252
#>     Attrib V35    0.23013622716083137
#>     Attrib V36    -0.6028858036036825
#>     Attrib V37    -0.410817042291204
#>     Attrib V38    0.40591341299720557
#>     Attrib V39    0.27214947280719715
#>     Attrib V4    0.6247730170139644
#>     Attrib V40    0.23468663894443204
#>     Attrib V41    0.2938327735357878
#>     Attrib V42    -0.3758504960420777
#>     Attrib V43    -0.10333089445227224
#>     Attrib V44    0.008086098925480149
#>     Attrib V45    0.3380388994691891
#>     Attrib V46    0.3167477259744732
#>     Attrib V47    0.09541989158219635
#>     Attrib V48    0.7633329257534487
#>     Attrib V49    0.7766996250658693
#>     Attrib V5    0.2721196527924019
#>     Attrib V50    -0.5369788767471182
#>     Attrib V51    0.20524146524688
#>     Attrib V52    0.4661480482413265
#>     Attrib V53    0.4673856875982713
#>     Attrib V54    -0.020639202510751922
#>     Attrib V55    -0.5082404525751858
#>     Attrib V56    -0.31863131665375616
#>     Attrib V57    0.029384165505237512
#>     Attrib V58    -0.25370027009905655
#>     Attrib V59    0.0028336453781755777
#>     Attrib V6    0.11964475668361783
#>     Attrib V60    0.4131278719628514
#>     Attrib V7    -0.2150238051591382
#>     Attrib V8    -0.6068402065832128
#>     Attrib V9    0.275710956022038
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.16600042527601994
#>     Attrib V1    0.18823956557530264
#>     Attrib V10    0.3224690619455625
#>     Attrib V11    0.32063549185316137
#>     Attrib V12    0.6450248115948762
#>     Attrib V13    -0.09205151998372851
#>     Attrib V14    -0.2322448256723813
#>     Attrib V15    -0.3614671809282139
#>     Attrib V16    -0.4126481160101031
#>     Attrib V17    -0.38502592448461426
#>     Attrib V18    -0.1419407469378864
#>     Attrib V19    0.1291422208363853
#>     Attrib V2    -0.03811543546190399
#>     Attrib V20    0.41611043336832576
#>     Attrib V21    0.4979668684637828
#>     Attrib V22    0.34938854012429005
#>     Attrib V23    0.2007677189074794
#>     Attrib V24    0.4369672954420781
#>     Attrib V25    0.07786281961714685
#>     Attrib V26    -0.8356720912724614
#>     Attrib V27    -0.22324626689359128
#>     Attrib V28    0.1955446007212448
#>     Attrib V29    0.025937251047305293
#>     Attrib V3    -0.1763071366857142
#>     Attrib V30    0.31659521336760144
#>     Attrib V31    -0.35001497407031873
#>     Attrib V32    -0.12796565912411834
#>     Attrib V33    0.46412426159544184
#>     Attrib V34    0.03930812087758793
#>     Attrib V35    0.2672659360587542
#>     Attrib V36    -0.33518669039189636
#>     Attrib V37    -0.4653949453619529
#>     Attrib V38    0.5016924171194851
#>     Attrib V39    0.20576061731152032
#>     Attrib V4    0.20542159481177463
#>     Attrib V40    -0.0694533047912136
#>     Attrib V41    -0.13017456458204385
#>     Attrib V42    -0.37466385183724815
#>     Attrib V43    0.11730839266342416
#>     Attrib V44    0.22851208584798133
#>     Attrib V45    0.23454801201779285
#>     Attrib V46    -0.04046657099502506
#>     Attrib V47    -0.22665474057228438
#>     Attrib V48    0.31781446554816223
#>     Attrib V49    0.46326865828781333
#>     Attrib V5    -0.03161627359431463
#>     Attrib V50    -0.441368373267131
#>     Attrib V51    0.09036262201253886
#>     Attrib V52    0.28365191584089655
#>     Attrib V53    0.5164095257658339
#>     Attrib V54    0.15288882303175477
#>     Attrib V55    -0.6364353775507057
#>     Attrib V56    -0.1607203110315866
#>     Attrib V57    -0.09798077480820246
#>     Attrib V58    -0.09590994724490524
#>     Attrib V59    0.4022107056396633
#>     Attrib V6    -0.10569808155571771
#>     Attrib V60    0.18841461295708456
#>     Attrib V7    -0.21793772760444935
#>     Attrib V8    -0.572066713548794
#>     Attrib V9    0.17972617087717258
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.09635926962880818
#>     Attrib V1    -0.167595278794222
#>     Attrib V10    -0.5923125665754476
#>     Attrib V11    -0.5040169954689264
#>     Attrib V12    -0.6954514100262205
#>     Attrib V13    0.1835221879070108
#>     Attrib V14    0.4290985968478144
#>     Attrib V15    0.35341033097993835
#>     Attrib V16    0.19686216723383118
#>     Attrib V17    0.06310300709451751
#>     Attrib V18    -0.2120716193500583
#>     Attrib V19    -0.524363511241618
#>     Attrib V2    0.2637806792527005
#>     Attrib V20    -0.8049691460288497
#>     Attrib V21    -0.6892028957488094
#>     Attrib V22    -0.6414531534262742
#>     Attrib V23    -0.5523738917010993
#>     Attrib V24    -0.8033510537268765
#>     Attrib V25    -0.30371112813078716
#>     Attrib V26    1.1499126981909433
#>     Attrib V27    0.6738155884341434
#>     Attrib V28    0.07100779905168751
#>     Attrib V29    0.3445004236217819
#>     Attrib V3    0.2586149711984764
#>     Attrib V30    -0.27459092420599435
#>     Attrib V31    0.5555696274999002
#>     Attrib V32    0.16338034598674037
#>     Attrib V33    -0.5580283418373031
#>     Attrib V34    -0.08838211657980223
#>     Attrib V35    -0.4791834341569339
#>     Attrib V36    0.2548631388725132
#>     Attrib V37    0.6047088190851064
#>     Attrib V38    -0.7884628568456709
#>     Attrib V39    -0.4050746802806668
#>     Attrib V4    -0.22320538023041148
#>     Attrib V40    0.18030912346224537
#>     Attrib V41    0.28306534073039014
#>     Attrib V42    0.24903793350823492
#>     Attrib V43    -0.2928167923104999
#>     Attrib V44    -0.4734038287555471
#>     Attrib V45    -0.5172633022257427
#>     Attrib V46    -0.10989482538487377
#>     Attrib V47    0.10473146842206417
#>     Attrib V48    -0.3077027755115739
#>     Attrib V49    -0.6552002479379878
#>     Attrib V5    -0.023615414390168912
#>     Attrib V50    0.43008921366033437
#>     Attrib V51    -0.18506454137528008
#>     Attrib V52    -0.34996583318624785
#>     Attrib V53    -0.6122140316378796
#>     Attrib V54    -0.23094163475294757
#>     Attrib V55    0.6806795638132919
#>     Attrib V56    0.08548567896219923
#>     Attrib V57    0.18201138524972466
#>     Attrib V58    0.07352292025133646
#>     Attrib V59    -0.47076972314696874
#>     Attrib V6    0.06734225442374933
#>     Attrib V60    -0.2605471200767119
#>     Attrib V7    0.15902830128653123
#>     Attrib V8    0.3691872320953967
#>     Attrib V9    -0.4263017634937555
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.11881735379554993
#>     Attrib V1    0.12772588948657482
#>     Attrib V10    0.04432982316629149
#>     Attrib V11    0.05388524506229878
#>     Attrib V12    0.09075952163554774
#>     Attrib V13    -0.043061337767661745
#>     Attrib V14    0.038338851061758605
#>     Attrib V15    -0.015911678766602794
#>     Attrib V16    0.0610614212339891
#>     Attrib V17    0.014743862330273734
#>     Attrib V18    0.0012199882559888484
#>     Attrib V19    -0.03564637263286928
#>     Attrib V2    0.07169169447762706
#>     Attrib V20    0.022471091905017438
#>     Attrib V21    -0.01865481673729554
#>     Attrib V22    -0.09379027337642441
#>     Attrib V23    -0.09732886130264243
#>     Attrib V24    0.04140080859471978
#>     Attrib V25    -0.07111017036473216
#>     Attrib V26    -0.2586555001075548
#>     Attrib V27    -0.15161091512045566
#>     Attrib V28    -0.10052361262718272
#>     Attrib V29    -0.07881553571868076
#>     Attrib V3    0.05698772514002765
#>     Attrib V30    -0.032469194755669825
#>     Attrib V31    -0.038473466729655105
#>     Attrib V32    -0.024323946475394338
#>     Attrib V33    0.029291305109112552
#>     Attrib V34    -0.017559534629775837
#>     Attrib V35    0.04601079843032019
#>     Attrib V36    -0.046818562558197774
#>     Attrib V37    -0.06413470069870285
#>     Attrib V38    0.06275242713382616
#>     Attrib V39    0.01744815388552782
#>     Attrib V4    0.15122209595549918
#>     Attrib V40    0.012911548698205468
#>     Attrib V41    -0.07016072533966401
#>     Attrib V42    -0.05205925735554893
#>     Attrib V43    0.07549726614822806
#>     Attrib V44    0.03362462897520505
#>     Attrib V45    -0.01206259830631487
#>     Attrib V46    0.04950342756393992
#>     Attrib V47    -0.0363108382135959
#>     Attrib V48    0.08641819772601383
#>     Attrib V49    0.07627031273684644
#>     Attrib V5    0.052674931640586266
#>     Attrib V50    -6.98953406230909E-4
#>     Attrib V51    0.0426653724126899
#>     Attrib V52    0.11327205438133958
#>     Attrib V53    0.17564685047393805
#>     Attrib V54    0.15009745844987232
#>     Attrib V55    0.05321987891292659
#>     Attrib V56    0.10385653917224025
#>     Attrib V57    0.15850717167812894
#>     Attrib V58    0.1446633693278885
#>     Attrib V59    0.15624558288881252
#>     Attrib V6    0.047691803644283326
#>     Attrib V60    0.16642689084490936
#>     Attrib V7    0.018743080410826982
#>     Attrib V8    -0.046558322824882564
#>     Attrib V9    0.09004614972127317
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.04209013072983495
#>     Attrib V1    0.21654658560105408
#>     Attrib V10    -0.035502637576003214
#>     Attrib V11    0.05784318382524206
#>     Attrib V12    0.1931788589785686
#>     Attrib V13    -0.25100415509369856
#>     Attrib V14    -0.09084549146902424
#>     Attrib V15    0.03186215329720244
#>     Attrib V16    0.08838049611092172
#>     Attrib V17    0.15960555801429743
#>     Attrib V18    0.195587084485559
#>     Attrib V19    0.27049936009493414
#>     Attrib V2    -0.0758427797456719
#>     Attrib V20    0.5249295395933767
#>     Attrib V21    0.5137205979974517
#>     Attrib V22    0.31124833200094354
#>     Attrib V23    0.21422220305701012
#>     Attrib V24    0.27486234866379267
#>     Attrib V25    -0.16667627806657487
#>     Attrib V26    -1.0193321170884515
#>     Attrib V27    -0.7515227117036921
#>     Attrib V28    -0.4474025158622076
#>     Attrib V29    -0.4319645369849252
#>     Attrib V3    -0.01624413216904108
#>     Attrib V30    0.036407374769423434
#>     Attrib V31    -0.3035066578236136
#>     Attrib V32    -0.10947101361001325
#>     Attrib V33    0.3564332537125921
#>     Attrib V34    -0.052659139731559494
#>     Attrib V35    0.1225209390319285
#>     Attrib V36    -0.2333218265613481
#>     Attrib V37    -0.3861563416044117
#>     Attrib V38    0.28745754475612884
#>     Attrib V39    0.12289800567943156
#>     Attrib V4    0.2921650703310469
#>     Attrib V40    -0.16304792511464317
#>     Attrib V41    -0.23903845603831259
#>     Attrib V42    -0.10796277371296441
#>     Attrib V43    0.21177249572762802
#>     Attrib V44    0.1731302466879083
#>     Attrib V45    0.1697607132342166
#>     Attrib V46    -0.04086222345831525
#>     Attrib V47    -0.15889381964832244
#>     Attrib V48    -0.0018169421619534812
#>     Attrib V49    0.20297161859369986
#>     Attrib V5    -0.008324878327469655
#>     Attrib V50    -0.17855250486190105
#>     Attrib V51    0.012887880889967408
#>     Attrib V52    0.2168243287381071
#>     Attrib V53    0.5977253649732163
#>     Attrib V54    0.35048117371867354
#>     Attrib V55    -0.19600361680457942
#>     Attrib V56    0.09838541162857917
#>     Attrib V57    0.1523678655197227
#>     Attrib V58    0.16281811879691854
#>     Attrib V59    0.5985562516723028
#>     Attrib V6    -0.06643547054279553
#>     Attrib V60    0.22189643565184364
#>     Attrib V7    -0.05081183911702813
#>     Attrib V8    -0.10854936727499588
#>     Attrib V9    0.15847545086259518
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    0.03783684337505526
#>     Attrib V1    -0.24364473566614958
#>     Attrib V10    -0.8045915207998523
#>     Attrib V11    -0.6411684560764404
#>     Attrib V12    -0.926750057851759
#>     Attrib V13    0.13299271463493767
#>     Attrib V14    0.5146327281136069
#>     Attrib V15    0.5212169469338425
#>     Attrib V16    0.3708078972743524
#>     Attrib V17    0.21818778090650126
#>     Attrib V18    -0.19079210517156753
#>     Attrib V19    -0.5088664599378913
#>     Attrib V2    0.30108046845725034
#>     Attrib V20    -0.8759093864075655
#>     Attrib V21    -0.8094697067076586
#>     Attrib V22    -0.735169793413487
#>     Attrib V23    -0.5543338559761607
#>     Attrib V24    -0.9137593283434804
#>     Attrib V25    -0.4155068264151175
#>     Attrib V26    1.2156421445304066
#>     Attrib V27    0.5920601123622785
#>     Attrib V28    -0.11532426667297932
#>     Attrib V29    0.16587099393027277
#>     Attrib V3    0.3048472632858793
#>     Attrib V30    -0.48652258216057803
#>     Attrib V31    0.5870549380111354
#>     Attrib V32    0.34324360033508494
#>     Attrib V33    -0.5778773667152803
#>     Attrib V34    -0.0687550712018499
#>     Attrib V35    -0.6013224130123058
#>     Attrib V36    0.3232362061815026
#>     Attrib V37    0.5356388969663841
#>     Attrib V38    -1.011230768439357
#>     Attrib V39    -0.5562353746727078
#>     Attrib V4    -0.3051711573272026
#>     Attrib V40    0.19365572338336381
#>     Attrib V41    0.31701519400244316
#>     Attrib V42    0.4206802752604248
#>     Attrib V43    -0.24712147030349796
#>     Attrib V44    -0.5664179847942913
#>     Attrib V45    -0.6530999395270756
#>     Attrib V46    -0.11894193599447198
#>     Attrib V47    0.1263842338863351
#>     Attrib V48    -0.4902603788758407
#>     Attrib V49    -0.8520361183995926
#>     Attrib V5    -0.08544315192006323
#>     Attrib V50    0.5499585892414848
#>     Attrib V51    -0.24978980427847755
#>     Attrib V52    -0.38975318143349624
#>     Attrib V53    -0.7286278126002913
#>     Attrib V54    -0.1690074110085312
#>     Attrib V55    0.998487570843024
#>     Attrib V56    0.22129537101637695
#>     Attrib V57    0.2874555102760573
#>     Attrib V58    0.2590396868807079
#>     Attrib V59    -0.4822261292693598
#>     Attrib V6    0.11586560893395219
#>     Attrib V60    -0.3580808315482563
#>     Attrib V7    0.17131597480294067
#>     Attrib V8    0.6183889479294968
#>     Attrib V9    -0.4855695508092668
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.46333178438220085
#>     Attrib V1    0.3322002925881665
#>     Attrib V10    1.0287581903454506
#>     Attrib V11    1.2331714015566309
#>     Attrib V12    1.9455829567351302
#>     Attrib V13    0.859416484134372
#>     Attrib V14    0.16898421110076664
#>     Attrib V15    -0.5110105564669725
#>     Attrib V16    -0.6511468063443147
#>     Attrib V17    -0.41024172005775056
#>     Attrib V18    -0.3728384524008651
#>     Attrib V19    -0.4294013553197531
#>     Attrib V2    0.5244591207750366
#>     Attrib V20    -0.6742397518605852
#>     Attrib V21    -0.13729800079956572
#>     Attrib V22    0.09833458838587213
#>     Attrib V23    0.09783572471825884
#>     Attrib V24    0.769008093500753
#>     Attrib V25    1.1282537655703113
#>     Attrib V26    1.0830624337853885
#>     Attrib V27    1.5509966865711133
#>     Attrib V28    1.7509291434149012
#>     Attrib V29    1.0224836948844862
#>     Attrib V3    0.6117381205786802
#>     Attrib V30    0.519469535093277
#>     Attrib V31    -1.0464023872028532
#>     Attrib V32    -0.9473988096649288
#>     Attrib V33    -0.5170378213989073
#>     Attrib V34    -0.17130106943995987
#>     Attrib V35    0.15085391772521467
#>     Attrib V36    -0.821474885491673
#>     Attrib V37    -0.1770896917104141
#>     Attrib V38    0.5497432953115682
#>     Attrib V39    0.43181861548973793
#>     Attrib V4    0.971348641786676
#>     Attrib V40    0.5203876342646476
#>     Attrib V41    1.1176722711471578
#>     Attrib V42    -0.3956636556340919
#>     Attrib V43    -0.14882501030240472
#>     Attrib V44    0.1458716808115519
#>     Attrib V45    0.37594198117932126
#>     Attrib V46    0.2745627601871198
#>     Attrib V47    0.10840327644541614
#>     Attrib V48    0.9706267297967225
#>     Attrib V49    1.022839688620192
#>     Attrib V5    0.6474936539720174
#>     Attrib V50    -0.6519109689988482
#>     Attrib V51    0.5049570340786304
#>     Attrib V52    0.7784371630492667
#>     Attrib V53    0.7267753060113816
#>     Attrib V54    -0.29606951078692817
#>     Attrib V55    -0.9756645424672176
#>     Attrib V56    -0.3161179908537854
#>     Attrib V57    0.07362490531736106
#>     Attrib V58    -0.44025631056694414
#>     Attrib V59    0.23803235572478426
#>     Attrib V6    0.45560009966534065
#>     Attrib V60    0.8439189158183332
#>     Attrib V7    -0.2947225976736888
#>     Attrib V8    -0.8956612925190426
#>     Attrib V9    0.26889010461261426
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.20318113414655617
#>     Attrib V1    0.042465864786515664
#>     Attrib V10    -0.08804647840872735
#>     Attrib V11    -0.17834401085943122
#>     Attrib V12    -0.23128367270530387
#>     Attrib V13    -0.038176194142029884
#>     Attrib V14    0.07234215383364982
#>     Attrib V15    0.042149311250674434
#>     Attrib V16    0.023328189909781825
#>     Attrib V17    0.005929390049060573
#>     Attrib V18    -0.10570418803847347
#>     Attrib V19    -0.07311170244625997
#>     Attrib V2    0.09146793105265671
#>     Attrib V20    -0.12193167709737507
#>     Attrib V21    -0.10368593890852792
#>     Attrib V22    -0.1123318138816693
#>     Attrib V23    -0.0636359895822871
#>     Attrib V24    -0.15803334419896786
#>     Attrib V25    -0.08263604021372965
#>     Attrib V26    0.0869535039542668
#>     Attrib V27    0.029622804766823826
#>     Attrib V28    -0.04105387575644647
#>     Attrib V29    -0.024606087170501372
#>     Attrib V3    0.04012062719044833
#>     Attrib V30    -0.14024708636441688
#>     Attrib V31    0.06475089135385755
#>     Attrib V32    0.06936207766274752
#>     Attrib V33    0.01371166163518274
#>     Attrib V34    0.060885062260252844
#>     Attrib V35    0.10684253961279437
#>     Attrib V36    0.316850072013429
#>     Attrib V37    0.3584310402602789
#>     Attrib V38    -0.05535275922283235
#>     Attrib V39    0.01124463262030248
#>     Attrib V4    -0.07771566963025393
#>     Attrib V40    0.08366935939858842
#>     Attrib V41    0.10786600274590182
#>     Attrib V42    0.21322799283242477
#>     Attrib V43    0.0622456953680082
#>     Attrib V44    0.030233905035375843
#>     Attrib V45    -0.056343649949521554
#>     Attrib V46    -0.033953343947419834
#>     Attrib V47    0.006282709138065898
#>     Attrib V48    -0.09909268870128671
#>     Attrib V49    -0.1856452698596667
#>     Attrib V5    -0.028662477823418908
#>     Attrib V50    0.15813371218957875
#>     Attrib V51    0.0016583105758959337
#>     Attrib V52    -0.047898045520048664
#>     Attrib V53    -0.10002598072923441
#>     Attrib V54    -0.0031616725657415603
#>     Attrib V55    0.17531881785851872
#>     Attrib V56    0.15221483995106597
#>     Attrib V57    0.11828235060490926
#>     Attrib V58    0.1330975153414827
#>     Attrib V59    0.006069808506846465
#>     Attrib V6    0.11669833193726502
#>     Attrib V60    0.07635357320924849
#>     Attrib V7    0.044067816810366485
#>     Attrib V8    0.15991038626177229
#>     Attrib V9    -0.02195512888262887
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.19740459900984075
#>     Attrib V1    0.1985857207675041
#>     Attrib V10    0.6851574122720008
#>     Attrib V11    0.8149389675261952
#>     Attrib V12    1.2127773047762176
#>     Attrib V13    0.27327136130964536
#>     Attrib V14    -0.24605166053358674
#>     Attrib V15    -0.48151639152103687
#>     Attrib V16    -0.533574326246587
#>     Attrib V17    -0.41912532443780015
#>     Attrib V18    -0.21039232093409543
#>     Attrib V19    -0.24853618252544785
#>     Attrib V2    0.07916149033957061
#>     Attrib V20    -0.3798549016452987
#>     Attrib V21    -0.13055322083251417
#>     Attrib V22    -0.10148913254081637
#>     Attrib V23    -0.12383061497272634
#>     Attrib V24    0.5710792956056907
#>     Attrib V25    0.6949715338513647
#>     Attrib V26    0.13773049086508804
#>     Attrib V27    0.3815729970544384
#>     Attrib V28    0.46816982015421443
#>     Attrib V29    -0.04611667398401529
#>     Attrib V3    0.040845796113194735
#>     Attrib V30    0.21957721878237924
#>     Attrib V31    -0.3327605157484741
#>     Attrib V32    -0.16041591765150526
#>     Attrib V33    0.21508181496253986
#>     Attrib V34    0.08265150730639216
#>     Attrib V35    0.23142118979042356
#>     Attrib V36    -0.5290041413693947
#>     Attrib V37    -0.4751057978110407
#>     Attrib V38    0.3974738519640796
#>     Attrib V39    0.2859931170818008
#>     Attrib V4    0.36938753625405624
#>     Attrib V40    0.0675141740312958
#>     Attrib V41    0.0974464723656264
#>     Attrib V42    -0.3807670543031139
#>     Attrib V43    -0.05284170398245706
#>     Attrib V44    0.11721517623779139
#>     Attrib V45    0.30142061026075084
#>     Attrib V46    0.1874477381697149
#>     Attrib V47    0.02023673566515087
#>     Attrib V48    0.6389565978988622
#>     Attrib V49    0.5558003983334
#>     Attrib V5    0.13644547033142315
#>     Attrib V50    -0.46699350964686426
#>     Attrib V51    0.15195805679505411
#>     Attrib V52    0.3206639663993904
#>     Attrib V53    0.44553493691579293
#>     Attrib V54    0.05275457455364815
#>     Attrib V55    -0.5198082877824258
#>     Attrib V56    -0.29422645796360286
#>     Attrib V57    0.0020221207671766604
#>     Attrib V58    -0.26738455740072725
#>     Attrib V59    0.06283778869160682
#>     Attrib V6    0.039333838179501146
#>     Attrib V60    0.30640931296639384
#>     Attrib V7    -0.2546119260447104
#>     Attrib V8    -0.5176033892673713
#>     Attrib V9    0.3431736738077536
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.5520895553708435
#>     Attrib V1    0.1538763197840954
#>     Attrib V10    -0.7923977942572882
#>     Attrib V11    -1.3247799767443404
#>     Attrib V12    -1.9336340546047184
#>     Attrib V13    -0.535972286948924
#>     Attrib V14    -0.009747289265149483
#>     Attrib V15    0.11923777933746357
#>     Attrib V16    -0.18843318936239392
#>     Attrib V17    -0.8698455929372181
#>     Attrib V18    -0.8872754708299083
#>     Attrib V19    -0.8829837096150612
#>     Attrib V2    0.14805399377500916
#>     Attrib V20    -0.23320135589501362
#>     Attrib V21    -0.17138615242194216
#>     Attrib V22    -0.45648139612569616
#>     Attrib V23    0.10828951688723278
#>     Attrib V24    -0.19054257830337862
#>     Attrib V25    -0.7563384606784554
#>     Attrib V26    -0.08505333583444578
#>     Attrib V27    0.15760237245008119
#>     Attrib V28    -0.02557977874225244
#>     Attrib V29    -0.5826787374555621
#>     Attrib V3    0.1603045065136841
#>     Attrib V30    -1.3910776354861658
#>     Attrib V31    0.044203924249568254
#>     Attrib V32    0.6727817302211159
#>     Attrib V33    -0.06459595235786252
#>     Attrib V34    -0.3832867003505571
#>     Attrib V35    -0.35695969481150647
#>     Attrib V36    1.090573503065399
#>     Attrib V37    1.0890892914815578
#>     Attrib V38    -0.3793214256428044
#>     Attrib V39    -0.3985469284071239
#>     Attrib V4    -0.6658240641903276
#>     Attrib V40    -0.232512723027048
#>     Attrib V41    -0.036990121143290366
#>     Attrib V42    0.8354769098657837
#>     Attrib V43    0.21718623003978563
#>     Attrib V44    -0.08867892027502614
#>     Attrib V45    -0.6645426173083087
#>     Attrib V46    -0.5306255552380321
#>     Attrib V47    -0.44646526843734113
#>     Attrib V48    -1.2240030533673303
#>     Attrib V49    -1.0169950172745572
#>     Attrib V5    -0.4156377234185522
#>     Attrib V50    1.0360505009551235
#>     Attrib V51    0.035959108429682446
#>     Attrib V52    -0.009884097010049556
#>     Attrib V53    0.014951231891912066
#>     Attrib V54    0.464434165884743
#>     Attrib V55    1.0530262083792137
#>     Attrib V56    0.49356611025573505
#>     Attrib V57    0.6930565535843642
#>     Attrib V58    1.087836041773887
#>     Attrib V59    0.41841223225371305
#>     Attrib V6    0.036904791786735905
#>     Attrib V60    -0.007650561375457878
#>     Attrib V7    0.33762814382273854
#>     Attrib V8    0.8019872632863903
#>     Attrib V9    -0.17359591961798895
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.1582096287841785
#>     Attrib V1    0.0653451313955088
#>     Attrib V10    0.1742535469810283
#>     Attrib V11    0.29262903809498664
#>     Attrib V12    0.5282840821493182
#>     Attrib V13    -0.12488365883683197
#>     Attrib V14    -0.1828030343970363
#>     Attrib V15    -0.2856175528724962
#>     Attrib V16    -0.31005713462805723
#>     Attrib V17    -0.29342330993913784
#>     Attrib V18    -0.14459152556543722
#>     Attrib V19    -0.0014475376729083454
#>     Attrib V2    -0.06267298245251061
#>     Attrib V20    0.2702993553137241
#>     Attrib V21    0.3069790833887077
#>     Attrib V22    0.18298204760816653
#>     Attrib V23    0.05786805675465575
#>     Attrib V24    0.41287397281107113
#>     Attrib V25    0.1339859364786545
#>     Attrib V26    -0.7505582899783705
#>     Attrib V27    -0.26795419840499934
#>     Attrib V28    0.11053965822810465
#>     Attrib V29    -0.033029448232856425
#>     Attrib V3    -0.08691874392434427
#>     Attrib V30    0.15227213886328672
#>     Attrib V31    -0.29145266848374324
#>     Attrib V32    -0.06256326586619307
#>     Attrib V33    0.3818639050558529
#>     Attrib V34    0.056531014414470934
#>     Attrib V35    0.20615630201228566
#>     Attrib V36    -0.37802066119049393
#>     Attrib V37    -0.4386852604241895
#>     Attrib V38    0.36460516584092884
#>     Attrib V39    0.2260889620807299
#>     Attrib V4    0.15185827049768005
#>     Attrib V40    -0.04977209305256414
#>     Attrib V41    -0.12547549465976987
#>     Attrib V42    -0.30501642283555525
#>     Attrib V43    0.1001333094239112
#>     Attrib V44    0.07028109902069711
#>     Attrib V45    0.20825249276523275
#>     Attrib V46    0.004168640727064693
#>     Attrib V47    -0.13749978868902288
#>     Attrib V48    0.21103841042523136
#>     Attrib V49    0.3124596507648228
#>     Attrib V5    -0.11166888452406955
#>     Attrib V50    -0.3651783836300709
#>     Attrib V51    0.023220325162370346
#>     Attrib V52    0.2211414126047979
#>     Attrib V53    0.4515424120795453
#>     Attrib V54    0.077452388613484
#>     Attrib V55    -0.4496156421668368
#>     Attrib V56    -0.12198167911802
#>     Attrib V57    0.0019120032057257032
#>     Attrib V58    -0.10540600288902602
#>     Attrib V59    0.27327161076721457
#>     Attrib V6    -0.09604826693359411
#>     Attrib V60    0.15822627396100974
#>     Attrib V7    -0.22335386009089986
#>     Attrib V8    -0.3660737241471628
#>     Attrib V9    0.11599030502457047
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.14412377118842498
#>     Attrib V1    0.059491108443908494
#>     Attrib V10    0.005752867861477127
#>     Attrib V11    -0.08115068541103646
#>     Attrib V12    -0.15139625985774727
#>     Attrib V13    0.057608397623811806
#>     Attrib V14    0.0681785319510314
#>     Attrib V15    0.12145860397416239
#>     Attrib V16    0.12190623130800514
#>     Attrib V17    0.1372728129039021
#>     Attrib V18    0.032478813370528534
#>     Attrib V19    -0.07520919654450914
#>     Attrib V2    0.09614562106435527
#>     Attrib V20    -0.12415832140947239
#>     Attrib V21    -0.06039196419717321
#>     Attrib V22    -0.07017413631381687
#>     Attrib V23    -0.0919121184313852
#>     Attrib V24    -0.2031774678890447
#>     Attrib V25    -0.04171020246179855
#>     Attrib V26    0.1532675109097362
#>     Attrib V27    -0.015312147298506294
#>     Attrib V28    -0.08272160238379934
#>     Attrib V29    -0.06865365541923496
#>     Attrib V3    0.03267283032498059
#>     Attrib V30    -0.06354699327671576
#>     Attrib V31    0.16311065014038645
#>     Attrib V32    0.06513361936557735
#>     Attrib V33    -0.035854153448675964
#>     Attrib V34    0.057809452487565215
#>     Attrib V35    0.07755540280199012
#>     Attrib V36    0.22988914610260597
#>     Attrib V37    0.3240788177369037
#>     Attrib V38    -0.06666644388144428
#>     Attrib V39    0.051021062598047
#>     Attrib V4    -0.07274328460353319
#>     Attrib V40    0.13153490721666056
#>     Attrib V41    0.13882857587046193
#>     Attrib V42    0.2275191543674654
#>     Attrib V43    0.027034593192594297
#>     Attrib V44    -0.0169448697961641
#>     Attrib V45    -0.020102039028051657
#>     Attrib V46    0.021093207266909903
#>     Attrib V47    0.04164170914446255
#>     Attrib V48    -0.05462711035317855
#>     Attrib V49    -0.15269301500069085
#>     Attrib V5    -0.0035048003692521403
#>     Attrib V50    0.09828845279175956
#>     Attrib V51    -0.0111354325676677
#>     Attrib V52    -0.05275096129451991
#>     Attrib V53    -0.10973708323873398
#>     Attrib V54    -0.009260829611179938
#>     Attrib V55    0.13133638744447648
#>     Attrib V56    0.15231014397017367
#>     Attrib V57    0.04042262216782609
#>     Attrib V58    0.1115504592011474
#>     Attrib V59    0.008624149724221673
#>     Attrib V6    0.0906832590023186
#>     Attrib V60    0.04013709748534029
#>     Attrib V7    0.025638657086436603
#>     Attrib V8    0.11537018777027526
#>     Attrib V9    -0.004260623171075621
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.08780376019442741
#>     Attrib V1    0.2062172119203214
#>     Attrib V10    -0.02259909595726687
#>     Attrib V11    0.027147378348582385
#>     Attrib V12    0.06711960181131
#>     Attrib V13    -0.2601237023149659
#>     Attrib V14    -0.07444604810860488
#>     Attrib V15    0.06808088045024718
#>     Attrib V16    0.13512375516259842
#>     Attrib V17    0.13910475569705236
#>     Attrib V18    0.1993193171687669
#>     Attrib V19    0.2602304881751833
#>     Attrib V2    0.02159061597086335
#>     Attrib V20    0.5643540310095274
#>     Attrib V21    0.46601497052003127
#>     Attrib V22    0.3066400143734077
#>     Attrib V23    0.2161850261319606
#>     Attrib V24    0.3115199033186566
#>     Attrib V25    -0.23377871581391763
#>     Attrib V26    -1.0628960582324694
#>     Attrib V27    -0.7730080464740602
#>     Attrib V28    -0.4698919646551554
#>     Attrib V29    -0.4346985480109988
#>     Attrib V3    -0.06283489975137997
#>     Attrib V30    0.018531637093947256
#>     Attrib V31    -0.2394879938266877
#>     Attrib V32    -0.10487974882322733
#>     Attrib V33    0.38363843281767984
#>     Attrib V34    0.003928065849053598
#>     Attrib V35    0.11723492707810572
#>     Attrib V36    -0.2544463933093776
#>     Attrib V37    -0.408075954495986
#>     Attrib V38    0.32770418758365116
#>     Attrib V39    0.10122487312881003
#>     Attrib V4    0.25523056969176117
#>     Attrib V40    -0.12366578672259373
#>     Attrib V41    -0.24499775104833732
#>     Attrib V42    -0.10292875830264152
#>     Attrib V43    0.19003043124437707
#>     Attrib V44    0.202617314669815
#>     Attrib V45    0.1040578385488151
#>     Attrib V46    -0.04885475645515216
#>     Attrib V47    -0.1893548028295673
#>     Attrib V48    0.024332630856686417
#>     Attrib V49    0.1886778680627958
#>     Attrib V5    -0.03938525418641341
#>     Attrib V50    -0.1468538633456405
#>     Attrib V51    0.02137260997596073
#>     Attrib V52    0.1761073437466069
#>     Attrib V53    0.581174727545145
#>     Attrib V54    0.39222451322963087
#>     Attrib V55    -0.16045212412988516
#>     Attrib V56    0.02817345666329972
#>     Attrib V57    0.17511219805373127
#>     Attrib V58    0.1453634948926851
#>     Attrib V59    0.5423925918980852
#>     Attrib V6    -0.05196238364936586
#>     Attrib V60    0.2403595068306058
#>     Attrib V7    -0.012976048080016293
#>     Attrib V8    -0.06488477315821073
#>     Attrib V9    0.18179573899132134
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.14283604361318947
#>     Attrib V1    0.08949234654683466
#>     Attrib V10    -0.03133783764379015
#>     Attrib V11    0.0045625096247649405
#>     Attrib V12    -0.030008312805727633
#>     Attrib V13    -0.038636140518374135
#>     Attrib V14    0.07184175267313281
#>     Attrib V15    0.05267502105473418
#>     Attrib V16    0.05242180524721196
#>     Attrib V17    -0.02805130525093651
#>     Attrib V18    0.021429662002177406
#>     Attrib V19    -0.10732720371436374
#>     Attrib V2    0.036805822055655066
#>     Attrib V20    -0.06789760085587915
#>     Attrib V21    -0.06451260863552423
#>     Attrib V22    -0.1043604738824674
#>     Attrib V23    -0.039642185862046576
#>     Attrib V24    -0.07308205634794675
#>     Attrib V25    -0.1042373646860128
#>     Attrib V26    -0.07470537692185403
#>     Attrib V27    -0.05919725894846202
#>     Attrib V28    -0.01198614954095702
#>     Attrib V29    -0.04054203041598861
#>     Attrib V3    0.0931500543381674
#>     Attrib V30    -0.010487482030692257
#>     Attrib V31    -0.014333022981535071
#>     Attrib V32    0.009306403547244031
#>     Attrib V33    0.03578549910175839
#>     Attrib V34    0.06341501872856092
#>     Attrib V35    0.0869344352124271
#>     Attrib V36    0.16420856130237782
#>     Attrib V37    0.1348369626027906
#>     Attrib V38    0.01408771431810436
#>     Attrib V39    0.054546103369129136
#>     Attrib V4    -0.01771901504729877
#>     Attrib V40    0.04786720632684406
#>     Attrib V41    0.02386329926739781
#>     Attrib V42    0.08962610625115336
#>     Attrib V43    -0.002682750503608891
#>     Attrib V44    0.06474233791646267
#>     Attrib V45    0.05377426058886562
#>     Attrib V46    0.04038389554144889
#>     Attrib V47    0.035943479891625836
#>     Attrib V48    -0.037924470880211676
#>     Attrib V49    0.0053881698298817
#>     Attrib V5    0.03983559962708142
#>     Attrib V50    0.02351644861679209
#>     Attrib V51    0.0659556686337649
#>     Attrib V52    0.0929939827435413
#>     Attrib V53    0.05743144527569252
#>     Attrib V54    0.010976945455506619
#>     Attrib V55    0.07058460332134393
#>     Attrib V56    0.08720613752371184
#>     Attrib V57    0.08673478130352669
#>     Attrib V58    0.15312918235669995
#>     Attrib V59    0.04572632741289922
#>     Attrib V6    0.10314495986352948
#>     Attrib V60    0.07769013752632127
#>     Attrib V7    0.05966330315282143
#>     Attrib V8    0.12190234562882543
#>     Attrib V9    0.08602275692669972
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
#>  0.2028986 
```
