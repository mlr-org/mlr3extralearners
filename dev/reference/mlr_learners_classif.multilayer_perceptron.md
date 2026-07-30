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
#>     Threshold    -0.08609479465230599
#>     Node 2    2.51071091343429
#>     Node 3    1.6650378960166843
#>     Node 4    1.2030325837426972
#>     Node 5    -1.6655749670062938
#>     Node 6    0.6242138842813212
#>     Node 7    1.8526970597737404
#>     Node 8    0.8946839876762379
#>     Node 9    3.466807860687383
#>     Node 10    -1.2758989613841931
#>     Node 11    1.3558645063887718
#>     Node 12    1.6494692856140407
#>     Node 13    -0.14766489044777398
#>     Node 14    1.6040695460965462
#>     Node 15    -1.4431658760138708
#>     Node 16    0.4475352430319771
#>     Node 17    0.26706289112546744
#>     Node 18    -1.3433296008204334
#>     Node 19    2.6846533047878074
#>     Node 20    1.4299796415759136
#>     Node 21    -3.4016907290157024
#>     Node 22    0.9426520799361287
#>     Node 23    1.2511122426249064
#>     Node 24    -0.49940675149770314
#>     Node 25    5.188707278637005
#>     Node 26    -1.4910616437765098
#>     Node 27    1.4104509455478322
#>     Node 28    -3.3632348132054015
#>     Node 29    0.9609678459658848
#>     Node 30    -1.45745329643233
#>     Node 31    2.2133832679100838
#>     Node 32    -0.3783851691373007
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.09970315598586792
#>     Node 2    -2.5622457966860166
#>     Node 3    -1.6413862206127756
#>     Node 4    -1.1606869934898756
#>     Node 5    1.6734969596864144
#>     Node 6    -0.5931805497893557
#>     Node 7    -1.8437778540926837
#>     Node 8    -0.9220411885120386
#>     Node 9    -3.475021295136828
#>     Node 10    1.2248603649670526
#>     Node 11    -1.3184742344618219
#>     Node 12    -1.722868284046262
#>     Node 13    0.21290162587751293
#>     Node 14    -1.540383034493314
#>     Node 15    1.422930121179958
#>     Node 16    -0.455139441944839
#>     Node 17    -0.22449943264712752
#>     Node 18    1.388703318340268
#>     Node 19    -2.6961764614672274
#>     Node 20    -1.4171304246681706
#>     Node 21    3.4433941709116707
#>     Node 22    -0.985065625951398
#>     Node 23    -1.2884528973643574
#>     Node 24    0.49805336024104624
#>     Node 25    -5.1979193659868805
#>     Node 26    1.3994917687958315
#>     Node 27    -1.4471542671356867
#>     Node 28    3.304954346708211
#>     Node 29    -0.9866414823658753
#>     Node 30    1.5225141940285423
#>     Node 31    -2.1529468875972633
#>     Node 32    0.37272655102236657
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.25110575269754737
#>     Attrib V1    -0.41290036770085536
#>     Attrib V10    0.2037108620773001
#>     Attrib V11    0.3044176559420642
#>     Attrib V12    0.15004633563498876
#>     Attrib V13    0.24340286971642158
#>     Attrib V14    -0.31619301343464307
#>     Attrib V15    -0.27530092482841245
#>     Attrib V16    0.5358975699211905
#>     Attrib V17    0.20055770370317408
#>     Attrib V18    -0.1512127197740947
#>     Attrib V19    0.35607883222246617
#>     Attrib V2    -0.24722538751379794
#>     Attrib V20    0.3539424742885453
#>     Attrib V21    0.4782971328513836
#>     Attrib V22    0.5210995422584416
#>     Attrib V23    0.6154574053991533
#>     Attrib V24    0.48218999019165826
#>     Attrib V25    -0.3264998906329965
#>     Attrib V26    -0.7616928074556223
#>     Attrib V27    -0.44394886025983055
#>     Attrib V28    0.19387660890411504
#>     Attrib V29    -1.0126455264779322
#>     Attrib V3    -0.45808961447449303
#>     Attrib V30    0.2967817523241916
#>     Attrib V31    -1.176660149800999
#>     Attrib V32    0.06978048406742314
#>     Attrib V33    1.3408793587099963
#>     Attrib V34    0.26788438258642616
#>     Attrib V35    -0.5961159638115936
#>     Attrib V36    -1.3672629775599587
#>     Attrib V37    -0.9910412685171919
#>     Attrib V38    0.5887675785586255
#>     Attrib V39    -0.16336949916270957
#>     Attrib V4    0.5012235666465166
#>     Attrib V40    -0.45345397613575456
#>     Attrib V41    0.2968841866623221
#>     Attrib V42    0.4468942220979793
#>     Attrib V43    0.8445213027462495
#>     Attrib V44    0.7226921347603505
#>     Attrib V45    0.34969873382387207
#>     Attrib V46    0.11062816202093688
#>     Attrib V47    -0.6106625790537203
#>     Attrib V48    0.26538912784931795
#>     Attrib V49    0.8139834026799659
#>     Attrib V5    -0.3046833564242129
#>     Attrib V50    -0.935510069033402
#>     Attrib V51    0.15693283571115668
#>     Attrib V52    0.06716081853479752
#>     Attrib V53    0.1248923915539095
#>     Attrib V54    0.7599220282541431
#>     Attrib V55    -0.3917513386078668
#>     Attrib V56    -0.1394894369500766
#>     Attrib V57    0.13289035641797559
#>     Attrib V58    0.11135389147075214
#>     Attrib V59    0.9098227043612562
#>     Attrib V6    -0.6528132759579697
#>     Attrib V60    0.45991058391370115
#>     Attrib V7    -0.41493749918318856
#>     Attrib V8    0.057517009429122364
#>     Attrib V9    0.9904202724439923
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.0270440733761024
#>     Attrib V1    -0.22944180502505873
#>     Attrib V10    0.04274249263113752
#>     Attrib V11    0.2057349849191916
#>     Attrib V12    0.2990956363859626
#>     Attrib V13    0.20296287832807516
#>     Attrib V14    -0.19332824175839394
#>     Attrib V15    -0.10015282988051238
#>     Attrib V16    0.31394498058561865
#>     Attrib V17    0.08524281220998337
#>     Attrib V18    -0.11576094354664837
#>     Attrib V19    0.29046339708599567
#>     Attrib V2    -0.09278225868166394
#>     Attrib V20    0.21104627117535454
#>     Attrib V21    0.20900129414050164
#>     Attrib V22    0.2359003511489811
#>     Attrib V23    0.25751061996071545
#>     Attrib V24    0.28575624850141723
#>     Attrib V25    -0.12743649407405666
#>     Attrib V26    -0.5747749773806614
#>     Attrib V27    -0.47542109461760423
#>     Attrib V28    -0.12003798534192976
#>     Attrib V29    -0.9000278532179609
#>     Attrib V3    -0.3763644908482592
#>     Attrib V30    0.10341106611223351
#>     Attrib V31    -0.7079846518293152
#>     Attrib V32    0.07316251079109731
#>     Attrib V33    0.9310996885409186
#>     Attrib V34    0.2706392618214801
#>     Attrib V35    -0.32602722590291966
#>     Attrib V36    -0.8785182161193442
#>     Attrib V37    -0.5954371409161485
#>     Attrib V38    0.3134159749637943
#>     Attrib V39    -0.02411273488140751
#>     Attrib V4    0.3822071553040603
#>     Attrib V40    -0.23225648386680642
#>     Attrib V41    0.2021325703686938
#>     Attrib V42    0.2072109919124507
#>     Attrib V43    0.44453660256866984
#>     Attrib V44    0.33401506541190046
#>     Attrib V45    0.10961259207292809
#>     Attrib V46    -0.041122425633018315
#>     Attrib V47    -0.3505051044877172
#>     Attrib V48    0.19858287943363268
#>     Attrib V49    0.48810952550365516
#>     Attrib V5    -0.21744532694412216
#>     Attrib V50    -0.6145790967343574
#>     Attrib V51    0.04619848132852352
#>     Attrib V52    0.06552792333034026
#>     Attrib V53    0.040757533219478705
#>     Attrib V54    0.8200669006551436
#>     Attrib V55    -0.0765577038056695
#>     Attrib V56    -0.10743800021308075
#>     Attrib V57    0.1976921300632115
#>     Attrib V58    0.11199294454290734
#>     Attrib V59    0.6888401201458644
#>     Attrib V6    -0.4505800855843427
#>     Attrib V60    0.36558088024783664
#>     Attrib V7    -0.27970614848505326
#>     Attrib V8    0.0317906044633632
#>     Attrib V9    0.5272910354304502
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.036051855093044274
#>     Attrib V1    -0.22084639128982178
#>     Attrib V10    -0.003236472465271778
#>     Attrib V11    0.10396266799589891
#>     Attrib V12    0.08588061180620993
#>     Attrib V13    0.1293725199398584
#>     Attrib V14    -0.10873842827399462
#>     Attrib V15    -0.09976864953041908
#>     Attrib V16    0.21720427907422474
#>     Attrib V17    0.05495684964936626
#>     Attrib V18    -0.07955668633732045
#>     Attrib V19    0.21638142510621727
#>     Attrib V2    -0.12169874180982172
#>     Attrib V20    0.2349990376567878
#>     Attrib V21    0.3240742460724887
#>     Attrib V22    0.20061425977260613
#>     Attrib V23    0.24653184606883957
#>     Attrib V24    0.15257554489794006
#>     Attrib V25    -0.2316370030667549
#>     Attrib V26    -0.4038660990286517
#>     Attrib V27    -0.25378435598811516
#>     Attrib V28    0.24297821597786226
#>     Attrib V29    -0.29937645415340763
#>     Attrib V3    -0.2823513491663832
#>     Attrib V30    0.1763828939218654
#>     Attrib V31    -0.58473127479861
#>     Attrib V32    -0.0024557110044997887
#>     Attrib V33    0.6447836252343558
#>     Attrib V34    0.13576688018955949
#>     Attrib V35    -0.2094073136536421
#>     Attrib V36    -0.6464687992339678
#>     Attrib V37    -0.3887416567733938
#>     Attrib V38    0.2542748718502891
#>     Attrib V39    -0.01564823570293761
#>     Attrib V4    0.3484732671806815
#>     Attrib V40    -0.2017304586371258
#>     Attrib V41    0.13849507670780953
#>     Attrib V42    0.14094755957862723
#>     Attrib V43    0.31490615853321785
#>     Attrib V44    0.3099035059268035
#>     Attrib V45    0.25209643765432677
#>     Attrib V46    0.04394997016693768
#>     Attrib V47    -0.27502562055607405
#>     Attrib V48    0.16965399763112732
#>     Attrib V49    0.4597784278629517
#>     Attrib V5    -0.07497093205088208
#>     Attrib V50    -0.46624757605319217
#>     Attrib V51    0.06829778748649636
#>     Attrib V52    0.03380823455741179
#>     Attrib V53    0.11073438038430032
#>     Attrib V54    0.3520802205794319
#>     Attrib V55    -0.16356178159878504
#>     Attrib V56    -0.16491992033609534
#>     Attrib V57    0.10084703081627056
#>     Attrib V58    0.05455278110104949
#>     Attrib V59    0.4291234150482759
#>     Attrib V6    -0.30677195767937204
#>     Attrib V60    0.2284733729051298
#>     Attrib V7    -0.2484660885727012
#>     Attrib V8    -0.019638049637679355
#>     Attrib V9    0.45683757491572075
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    0.09844347579362961
#>     Attrib V1    0.251259828077052
#>     Attrib V10    -0.019961134392563622
#>     Attrib V11    -0.26723328142485325
#>     Attrib V12    -0.3000520752701681
#>     Attrib V13    -0.2075987172403883
#>     Attrib V14    0.27470465781709513
#>     Attrib V15    0.45740230851945524
#>     Attrib V16    0.13758173329295514
#>     Attrib V17    0.38991712077673224
#>     Attrib V18    0.5658611125692404
#>     Attrib V19    -0.009783571979261385
#>     Attrib V2    0.1666853570961954
#>     Attrib V20    -0.1271298751319879
#>     Attrib V21    -0.1784738235280648
#>     Attrib V22    -0.13957634870601648
#>     Attrib V23    -0.39108361040931033
#>     Attrib V24    -0.5176618247382623
#>     Attrib V25    0.09495553758266725
#>     Attrib V26    0.22204337559142737
#>     Attrib V27    0.024674691782397735
#>     Attrib V28    -0.5420278418348653
#>     Attrib V29    0.23349080158565666
#>     Attrib V3    0.4222129517597234
#>     Attrib V30    -0.04395320034119199
#>     Attrib V31    1.0709443419487246
#>     Attrib V32    0.43439089960770666
#>     Attrib V33    -0.37248324861357646
#>     Attrib V34    0.005229123855400517
#>     Attrib V35    0.3113487058863871
#>     Attrib V36    1.042900288437662
#>     Attrib V37    0.42658152192065923
#>     Attrib V38    -0.4395388411842013
#>     Attrib V39    -0.008091902083094337
#>     Attrib V4    -0.6069394206413044
#>     Attrib V40    0.4476476424760127
#>     Attrib V41    -0.2797599229498236
#>     Attrib V42    -0.03983114496976916
#>     Attrib V43    -0.3638941215381553
#>     Attrib V44    -0.27497811477167444
#>     Attrib V45    -0.4270159501907637
#>     Attrib V46    -0.438878756062902
#>     Attrib V47    0.14108292160096492
#>     Attrib V48    -0.24247579050428011
#>     Attrib V49    -0.5380093789884504
#>     Attrib V5    -0.007748134934589679
#>     Attrib V50    0.8217438666724718
#>     Attrib V51    -0.07388255750472067
#>     Attrib V52    -0.20056177471753525
#>     Attrib V53    -0.1499150595693091
#>     Attrib V54    -0.1759327498809841
#>     Attrib V55    0.2367604764374836
#>     Attrib V56    0.5941600461928022
#>     Attrib V57    0.012215951605740865
#>     Attrib V58    -0.10634369019381283
#>     Attrib V59    -0.34522331480117
#>     Attrib V6    0.3753508415522821
#>     Attrib V60    -0.2077060041266931
#>     Attrib V7    0.6513967610366198
#>     Attrib V8    0.1420033558564007
#>     Attrib V9    -0.6491949863294082
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.0333634737505428
#>     Attrib V1    0.09354032681702669
#>     Attrib V10    -0.07466000456344252
#>     Attrib V11    0.011782442645941383
#>     Attrib V12    0.048678000521402934
#>     Attrib V13    0.02379401866734387
#>     Attrib V14    0.05393208070640327
#>     Attrib V15    0.07434044724213097
#>     Attrib V16    0.2317409031019147
#>     Attrib V17    0.011464398611503114
#>     Attrib V18    0.0018236398814039198
#>     Attrib V19    0.08396491530040158
#>     Attrib V2    0.07671246839931829
#>     Attrib V20    0.13375970213721045
#>     Attrib V21    0.1225750955097381
#>     Attrib V22    -0.03300282561569538
#>     Attrib V23    -0.04445270304525671
#>     Attrib V24    -0.003951668013867248
#>     Attrib V25    -0.15166436367588942
#>     Attrib V26    -0.3415804562603119
#>     Attrib V27    -0.24881266856417933
#>     Attrib V28    -0.08870922053125058
#>     Attrib V29    -0.2440811209994898
#>     Attrib V3    -0.031535865946929635
#>     Attrib V30    -0.03276283018372285
#>     Attrib V31    -0.38288605175854384
#>     Attrib V32    -0.05642946714760777
#>     Attrib V33    0.2655969148388344
#>     Attrib V34    0.011974806617708172
#>     Attrib V35    -0.11743389006874844
#>     Attrib V36    -0.29690052448181636
#>     Attrib V37    -0.13707385184665766
#>     Attrib V38    0.17170966846532668
#>     Attrib V39    0.030801333350020763
#>     Attrib V4    0.2830715959389881
#>     Attrib V40    -0.13205019734390228
#>     Attrib V41    0.09153420779836466
#>     Attrib V42    0.11331941109710471
#>     Attrib V43    0.13132401321827267
#>     Attrib V44    0.09141305362507435
#>     Attrib V45    0.08451180819667402
#>     Attrib V46    0.008404552337897771
#>     Attrib V47    -0.16296203733987588
#>     Attrib V48    0.008812171297835347
#>     Attrib V49    0.1080960137533419
#>     Attrib V5    -4.8455702619666614E-4
#>     Attrib V50    -0.11778836649659138
#>     Attrib V51    0.00972615806557857
#>     Attrib V52    0.017717137113646062
#>     Attrib V53    0.14168587165420227
#>     Attrib V54    0.32338394938417514
#>     Attrib V55    0.07000197817121674
#>     Attrib V56    0.04272858821804612
#>     Attrib V57    0.24748853387738168
#>     Attrib V58    0.13534763677630843
#>     Attrib V59    0.4171757126954933
#>     Attrib V6    -0.0576303684680499
#>     Attrib V60    0.314499187065163
#>     Attrib V7    -0.029697308517445793
#>     Attrib V8    0.11819947816132544
#>     Attrib V9    0.18646156210792866
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.18176739736342254
#>     Attrib V1    0.022559553829090757
#>     Attrib V10    0.20829535149038753
#>     Attrib V11    0.6095790547493827
#>     Attrib V12    0.6504969592348218
#>     Attrib V13    0.341898030486096
#>     Attrib V14    0.055508056560668914
#>     Attrib V15    -0.3359820392427436
#>     Attrib V16    -0.2767238591365229
#>     Attrib V17    -0.418127954898342
#>     Attrib V18    -0.30048499770753634
#>     Attrib V19    -0.09876761033898822
#>     Attrib V2    -0.11248759026498227
#>     Attrib V20    -0.10516324551671488
#>     Attrib V21    0.12315055484788577
#>     Attrib V22    -0.07918585485307075
#>     Attrib V23    0.11475128827190134
#>     Attrib V24    0.1519700137368487
#>     Attrib V25    0.07325281460198431
#>     Attrib V26    0.34823673072789035
#>     Attrib V27    0.6734712854601871
#>     Attrib V28    1.2718570008069325
#>     Attrib V29    0.7570814240786943
#>     Attrib V3    -0.37832409409884604
#>     Attrib V30    0.45133963869071353
#>     Attrib V31    -0.377617276507116
#>     Attrib V32    -0.13720347059164523
#>     Attrib V33    0.22138783648420962
#>     Attrib V34    0.14111649141766516
#>     Attrib V35    0.3606447282989576
#>     Attrib V36    -0.3416885480254028
#>     Attrib V37    0.023071325595970103
#>     Attrib V38    0.2801738591647777
#>     Attrib V39    0.003724211349694375
#>     Attrib V4    0.8801155162126109
#>     Attrib V40    -0.2643652660834546
#>     Attrib V41    0.20064606502526372
#>     Attrib V42    -0.38003715831858287
#>     Attrib V43    0.0851555383739799
#>     Attrib V44    0.07746768159852138
#>     Attrib V45    0.3460585120394972
#>     Attrib V46    0.41225051660610085
#>     Attrib V47    0.2921496314883216
#>     Attrib V48    0.5730043440652871
#>     Attrib V49    0.7344275101128581
#>     Attrib V5    0.319724444474049
#>     Attrib V50    -0.36682978316201165
#>     Attrib V51    0.37820518104132356
#>     Attrib V52    0.40194972596893563
#>     Attrib V53    0.12498779950448732
#>     Attrib V54    0.13264340302793043
#>     Attrib V55    0.12327780711245281
#>     Attrib V56    -0.6707690087722105
#>     Attrib V57    0.06470739634505318
#>     Attrib V58    0.1613010373506324
#>     Attrib V59    0.34534798544307344
#>     Attrib V6    -0.07962651016221022
#>     Attrib V60    0.39098700642976103
#>     Attrib V7    -0.37984808670824877
#>     Attrib V8    -0.22846136417046736
#>     Attrib V9    0.5681700074065145
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.10783666502167782
#>     Attrib V1    -0.10596327489437031
#>     Attrib V10    -0.001333525869736533
#>     Attrib V11    0.13477172897781947
#>     Attrib V12    0.15649141562820393
#>     Attrib V13    0.10142697988502537
#>     Attrib V14    -0.09589042910468296
#>     Attrib V15    -0.09926744859810088
#>     Attrib V16    0.14847215234964414
#>     Attrib V17    -0.04876694572552581
#>     Attrib V18    -0.12256467500250026
#>     Attrib V19    0.09014151171523459
#>     Attrib V2    -0.06254173217676604
#>     Attrib V20    0.06168446546839373
#>     Attrib V21    0.11444576867627211
#>     Attrib V22    -0.026936555085823558
#>     Attrib V23    9.786677492195175E-4
#>     Attrib V24    0.05537213876958906
#>     Attrib V25    -0.14216169034776505
#>     Attrib V26    -0.2277090033022111
#>     Attrib V27    -0.09737728334057522
#>     Attrib V28    0.24126514670957847
#>     Attrib V29    -0.11363982256096102
#>     Attrib V3    -0.25908966271582856
#>     Attrib V30    0.13569937830751197
#>     Attrib V31    -0.43818437763696216
#>     Attrib V32    -0.03787339687207776
#>     Attrib V33    0.4019789558144282
#>     Attrib V34    0.10656849790436834
#>     Attrib V35    -0.10618758706263325
#>     Attrib V36    -0.38908545928108357
#>     Attrib V37    -0.2357407562132126
#>     Attrib V38    0.23870613228964147
#>     Attrib V39    -0.010884977752567138
#>     Attrib V4    0.424223691602071
#>     Attrib V40    -0.22204672696712469
#>     Attrib V41    0.03311597295194093
#>     Attrib V42    -0.10747356346778066
#>     Attrib V43    0.13962163345745765
#>     Attrib V44    0.1585118048787154
#>     Attrib V45    0.1436323488432913
#>     Attrib V46    0.062204676160365756
#>     Attrib V47    -0.11209645246535671
#>     Attrib V48    0.2302335784402515
#>     Attrib V49    0.34906069299048437
#>     Attrib V5    -0.039635166634069935
#>     Attrib V50    -0.3490395170163423
#>     Attrib V51    0.01584068970314937
#>     Attrib V52    0.08461159889598244
#>     Attrib V53    0.10874028539027007
#>     Attrib V54    0.3220251256505271
#>     Attrib V55    -0.030511603566026998
#>     Attrib V56    -0.2354930872058378
#>     Attrib V57    0.18502467036185427
#>     Attrib V58    0.011126379158701748
#>     Attrib V59    0.382627654863985
#>     Attrib V6    -0.24778532609821408
#>     Attrib V60    0.27779140511950856
#>     Attrib V7    -0.21366133524912675
#>     Attrib V8    -0.06514901515658175
#>     Attrib V9    0.2588439102643511
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.1880684308789801
#>     Attrib V1    0.4153015660614641
#>     Attrib V10    0.6187914137293499
#>     Attrib V11    0.9905760813731661
#>     Attrib V12    1.1563843032508208
#>     Attrib V13    0.6470587736397052
#>     Attrib V14    0.13529323523758854
#>     Attrib V15    -0.4303585512251326
#>     Attrib V16    -0.6478901826557674
#>     Attrib V17    -0.7609166508890306
#>     Attrib V18    -0.529007243872841
#>     Attrib V19    -0.2183407142568245
#>     Attrib V2    0.07179384077032477
#>     Attrib V20    -0.121896955276045
#>     Attrib V21    0.4410490245612682
#>     Attrib V22    0.025352109001713665
#>     Attrib V23    0.1902454295771282
#>     Attrib V24    0.42197778817250625
#>     Attrib V25    0.5229956385111628
#>     Attrib V26    0.9373116746946497
#>     Attrib V27    1.1262216538183392
#>     Attrib V28    2.142088107075611
#>     Attrib V29    1.4181413567942547
#>     Attrib V3    -0.4347197811445282
#>     Attrib V30    0.5451066530742952
#>     Attrib V31    -0.4649466541361669
#>     Attrib V32    -0.1760066140522436
#>     Attrib V33    -0.06828504371154656
#>     Attrib V34    0.020994022417229308
#>     Attrib V35    0.7905423762689406
#>     Attrib V36    -0.2740982866922098
#>     Attrib V37    0.28888203397082796
#>     Attrib V38    0.3375514098468474
#>     Attrib V39    0.29783292692090013
#>     Attrib V4    1.333548456413241
#>     Attrib V40    -0.17816120956993212
#>     Attrib V41    0.46437784990627584
#>     Attrib V42    -0.7953873562332529
#>     Attrib V43    -0.11216169593570226
#>     Attrib V44    -0.05510677272710484
#>     Attrib V45    0.6187090825377941
#>     Attrib V46    0.769442738612855
#>     Attrib V47    0.6626591924210223
#>     Attrib V48    0.8210277235709528
#>     Attrib V49    1.0510670481055808
#>     Attrib V5    0.802478614971077
#>     Attrib V50    -0.5756943781869253
#>     Attrib V51    0.8523789527520709
#>     Attrib V52    0.41853435062630834
#>     Attrib V53    0.2674613866859721
#>     Attrib V54    -0.026837994288500533
#>     Attrib V55    0.20762158096483552
#>     Attrib V56    -1.0210915997526455
#>     Attrib V57    -0.22171598679558216
#>     Attrib V58    0.2926703633962362
#>     Attrib V59    0.2270915635462414
#>     Attrib V6    0.30231986652485093
#>     Attrib V60    0.5864770467500185
#>     Attrib V7    -0.2942811333827453
#>     Attrib V8    -0.12036149200789714
#>     Attrib V9    0.8904672884002346
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.08320856496948663
#>     Attrib V1    0.15952700819360574
#>     Attrib V10    -0.045316701960617815
#>     Attrib V11    -0.2152125044789703
#>     Attrib V12    -0.1946486816662936
#>     Attrib V13    -0.13533587790034454
#>     Attrib V14    0.12597090738457695
#>     Attrib V15    0.12144864869343111
#>     Attrib V16    0.06558667502836361
#>     Attrib V17    0.08453391444720304
#>     Attrib V18    0.329743546221261
#>     Attrib V19    0.10539627538438237
#>     Attrib V2    0.13360380481192613
#>     Attrib V20    0.006395629218776391
#>     Attrib V21    -0.0031041056494147583
#>     Attrib V22    0.06298581211762394
#>     Attrib V23    -0.05127897893162656
#>     Attrib V24    -0.24534021437162576
#>     Attrib V25    -0.07523770154172366
#>     Attrib V26    0.0701502202277897
#>     Attrib V27    -0.08224409324729609
#>     Attrib V28    -0.3306054960126663
#>     Attrib V29    0.054673929548324986
#>     Attrib V3    0.25024947362227334
#>     Attrib V30    0.05952404280346502
#>     Attrib V31    0.8124768684456771
#>     Attrib V32    0.5117439945767214
#>     Attrib V33    0.17205461570667197
#>     Attrib V34    0.29146695864188277
#>     Attrib V35    0.41111516267802567
#>     Attrib V36    0.7144099076520218
#>     Attrib V37    0.30947276371482985
#>     Attrib V38    -0.14485974450699007
#>     Attrib V39    0.12278040564957525
#>     Attrib V4    -0.2679282628410693
#>     Attrib V40    0.6128007398605725
#>     Attrib V41    0.24987897600632497
#>     Attrib V42    0.15685158365982022
#>     Attrib V43    -0.04144852639516668
#>     Attrib V44    0.04086924422656233
#>     Attrib V45    -0.11266034558057259
#>     Attrib V46    -0.0904943260997433
#>     Attrib V47    0.14598283972997644
#>     Attrib V48    -0.22352236604414932
#>     Attrib V49    -0.28004449769499207
#>     Attrib V5    0.12893511685753808
#>     Attrib V50    0.5998307665885736
#>     Attrib V51    0.08666173628820702
#>     Attrib V52    -0.00645600580311305
#>     Attrib V53    0.12153479678904004
#>     Attrib V54    -0.06226687212037654
#>     Attrib V55    0.06447656311754008
#>     Attrib V56    0.3233282969096955
#>     Attrib V57    0.03372909278282488
#>     Attrib V58    0.0873401937231112
#>     Attrib V59    -0.3119842263761055
#>     Attrib V6    0.5206458943205129
#>     Attrib V60    -0.1976525765360827
#>     Attrib V7    0.5052654453935418
#>     Attrib V8    0.20790019136256638
#>     Attrib V9    -0.35032506584450884
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.10410855313698937
#>     Attrib V1    -0.26662009108712026
#>     Attrib V10    -0.006989060625481984
#>     Attrib V11    0.23793028815200248
#>     Attrib V12    0.36914693591664816
#>     Attrib V13    0.1648206119498719
#>     Attrib V14    -0.20830292723435453
#>     Attrib V15    -0.3136931116331289
#>     Attrib V16    0.049111480242480056
#>     Attrib V17    -0.029294195047037112
#>     Attrib V18    -0.12039659318359111
#>     Attrib V19    0.09537666215178423
#>     Attrib V2    -0.17669377554317064
#>     Attrib V20    0.13443352659969285
#>     Attrib V21    0.16247840257866575
#>     Attrib V22    0.07152589393183738
#>     Attrib V23    0.20834171562329595
#>     Attrib V24    0.252925494862491
#>     Attrib V25    -0.02518185757282444
#>     Attrib V26    -0.21804763269222374
#>     Attrib V27    0.04327846503915661
#>     Attrib V28    0.5431974285127912
#>     Attrib V29    -0.16605282005349478
#>     Attrib V3    -0.46224137766677614
#>     Attrib V30    0.3019235778321769
#>     Attrib V31    -0.5824582057895569
#>     Attrib V32    -0.052994376982153604
#>     Attrib V33    0.5502336290541293
#>     Attrib V34    0.1888120600302112
#>     Attrib V35    -0.026965290817921147
#>     Attrib V36    -0.6003438926789684
#>     Attrib V37    -0.3283866614644855
#>     Attrib V38    0.3626947274948947
#>     Attrib V39    -0.020227214450097918
#>     Attrib V4    0.4429635684311412
#>     Attrib V40    -0.28226107024560576
#>     Attrib V41    0.11418818868410995
#>     Attrib V42    -0.020702827240200273
#>     Attrib V43    0.31721734272562785
#>     Attrib V44    0.29793590266006525
#>     Attrib V45    0.29439956042342336
#>     Attrib V46    0.11014567791145771
#>     Attrib V47    -0.15904016581884103
#>     Attrib V48    0.29131354528893444
#>     Attrib V49    0.5157981507467192
#>     Attrib V5    -0.04953934984094397
#>     Attrib V50    -0.567508658845154
#>     Attrib V51    0.14029729193552218
#>     Attrib V52    0.06148427243881689
#>     Attrib V53    0.06914057686986803
#>     Attrib V54    0.39880876398598125
#>     Attrib V55    -0.1447767889189163
#>     Attrib V56    -0.3724880947575629
#>     Attrib V57    0.019114870538828495
#>     Attrib V58    0.023880533567108356
#>     Attrib V59    0.3244661661602077
#>     Attrib V6    -0.3109606153157359
#>     Attrib V60    0.20202262231638668
#>     Attrib V7    -0.4642148423426095
#>     Attrib V8    -0.09071718776704689
#>     Attrib V9    0.4797774462989169
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.034286443420845934
#>     Attrib V1    -0.3087125873718609
#>     Attrib V10    0.022809042811748018
#>     Attrib V11    0.25727207286054804
#>     Attrib V12    0.15598029095660904
#>     Attrib V13    0.16078581918165885
#>     Attrib V14    -0.19717753416282366
#>     Attrib V15    -0.2058349559409914
#>     Attrib V16    0.3693419976587389
#>     Attrib V17    0.09519903520027762
#>     Attrib V18    -0.09059127231773598
#>     Attrib V19    0.3358934442329752
#>     Attrib V2    -0.1233324937353
#>     Attrib V20    0.255417190674233
#>     Attrib V21    0.327903633992028
#>     Attrib V22    0.32378562559638935
#>     Attrib V23    0.35721493266151105
#>     Attrib V24    0.25564374383527316
#>     Attrib V25    -0.25233875978352954
#>     Attrib V26    -0.528280974886749
#>     Attrib V27    -0.26641167164472274
#>     Attrib V28    0.18147841673428192
#>     Attrib V29    -0.5706561822866596
#>     Attrib V3    -0.46053653830997515
#>     Attrib V30    0.20210169767459465
#>     Attrib V31    -0.8107349918173729
#>     Attrib V32    0.004340391276597936
#>     Attrib V33    0.9489636889864159
#>     Attrib V34    0.2557794276479817
#>     Attrib V35    -0.28271943284134926
#>     Attrib V36    -0.858639748385445
#>     Attrib V37    -0.5611090277223993
#>     Attrib V38    0.4315497548517572
#>     Attrib V39    -0.08741982310399159
#>     Attrib V4    0.4912222563872593
#>     Attrib V40    -0.27399272891537174
#>     Attrib V41    0.19286737270254367
#>     Attrib V42    0.13472209760755827
#>     Attrib V43    0.5235004438204028
#>     Attrib V44    0.3727432440372405
#>     Attrib V45    0.2715105623175574
#>     Attrib V46    0.13847134940855207
#>     Attrib V47    -0.3736727857330608
#>     Attrib V48    0.2521911154203894
#>     Attrib V49    0.5733457232406022
#>     Attrib V5    -0.19136678462343873
#>     Attrib V50    -0.6989297326367062
#>     Attrib V51    0.030609826256212867
#>     Attrib V52    0.06501625724994958
#>     Attrib V53    0.12530746890096853
#>     Attrib V54    0.5652176277885521
#>     Attrib V55    -0.23907801594214165
#>     Attrib V56    -0.21152638362080775
#>     Attrib V57    0.15009308816645736
#>     Attrib V58    0.10591691411283011
#>     Attrib V59    0.6479216967507168
#>     Attrib V6    -0.45417216544987976
#>     Attrib V60    0.3652614386812832
#>     Attrib V7    -0.3075403367554037
#>     Attrib V8    0.03291606228489277
#>     Attrib V9    0.6599903654229702
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.20029767868287715
#>     Attrib V1    0.08153259431487836
#>     Attrib V10    0.0020711814290894
#>     Attrib V11    -0.014823027151738482
#>     Attrib V12    -0.07097235194595836
#>     Attrib V13    0.03881577480702355
#>     Attrib V14    0.06068015729157176
#>     Attrib V15    0.02208320427368168
#>     Attrib V16    -0.007389106202982663
#>     Attrib V17    0.036851754619052025
#>     Attrib V18    0.02639453668284109
#>     Attrib V19    0.0014595579138629215
#>     Attrib V2    0.05392660948342778
#>     Attrib V20    0.023036538568902882
#>     Attrib V21    0.00485706387710762
#>     Attrib V22    -0.051771753148932315
#>     Attrib V23    -0.0041387618224194705
#>     Attrib V24    -0.03629253620923146
#>     Attrib V25    -0.008576418136692167
#>     Attrib V26    -0.06766882846515809
#>     Attrib V27    -0.009150717038203924
#>     Attrib V28    -0.09539666868788949
#>     Attrib V29    -0.01892875060401005
#>     Attrib V3    0.15243105378396304
#>     Attrib V30    0.021109131443982132
#>     Attrib V31    0.062069027399284014
#>     Attrib V32    0.09847098109069222
#>     Attrib V33    0.050542998541415175
#>     Attrib V34    0.1076198723910668
#>     Attrib V35    0.09529745052722549
#>     Attrib V36    0.13127551050370642
#>     Attrib V37    0.10826564076245142
#>     Attrib V38    0.06451060846104667
#>     Attrib V39    0.15401977866556524
#>     Attrib V4    0.0642887877969477
#>     Attrib V40    0.17643023396569688
#>     Attrib V41    0.09484605150206295
#>     Attrib V42    0.09595264916042082
#>     Attrib V43    0.039592058204984404
#>     Attrib V44    0.10169559281485997
#>     Attrib V45    0.04068444725517567
#>     Attrib V46    0.07599257682440945
#>     Attrib V47    0.08876280695120896
#>     Attrib V48    9.9018414677378E-5
#>     Attrib V49    0.04095287105753743
#>     Attrib V5    0.12591366824929096
#>     Attrib V50    0.09636222991075774
#>     Attrib V51    0.026835045563566137
#>     Attrib V52    -0.006212068192744976
#>     Attrib V53    0.06461849688948525
#>     Attrib V54    0.012726486161606631
#>     Attrib V55    0.06068938469866212
#>     Attrib V56    0.11659894611315896
#>     Attrib V57    0.09739392770768467
#>     Attrib V58    0.09437774975366826
#>     Attrib V59    0.10337067646305276
#>     Attrib V6    0.1654587840968114
#>     Attrib V60    0.11781095575600264
#>     Attrib V7    0.16955730961752166
#>     Attrib V8    0.07228067511877216
#>     Attrib V9    0.008068221235900053
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.24743326093888182
#>     Attrib V1    0.04533109276101865
#>     Attrib V10    0.1551993872477458
#>     Attrib V11    0.5415450942479596
#>     Attrib V12    0.7107347528464434
#>     Attrib V13    0.2194383725681634
#>     Attrib V14    -0.05992654337647932
#>     Attrib V15    -0.19079065556219765
#>     Attrib V16    -0.23332812829166064
#>     Attrib V17    -0.4102487782211761
#>     Attrib V18    -0.45832038028253647
#>     Attrib V19    -0.37976783804348724
#>     Attrib V2    -0.04539647220047399
#>     Attrib V20    -0.3812187571488544
#>     Attrib V21    -0.2939261414776171
#>     Attrib V22    -0.538917377760897
#>     Attrib V23    -0.35200701967038345
#>     Attrib V24    -0.0037407515419550417
#>     Attrib V25    0.12135068840108337
#>     Attrib V26    0.13151847328481137
#>     Attrib V27    0.21390251036149768
#>     Attrib V28    0.4933437450352584
#>     Attrib V29    -0.034227465080387175
#>     Attrib V3    -0.4316661829902119
#>     Attrib V30    0.16830357879817573
#>     Attrib V31    -0.15852093596996286
#>     Attrib V32    0.14263479357639877
#>     Attrib V33    0.4662042420884363
#>     Attrib V34    0.3085817794835318
#>     Attrib V35    0.18022582289191316
#>     Attrib V36    -0.5100743218818348
#>     Attrib V37    -0.2946661616663011
#>     Attrib V38    -0.06262907848179511
#>     Attrib V39    -0.0549536310435276
#>     Attrib V4    0.6835832626584987
#>     Attrib V40    -0.31121156297691194
#>     Attrib V41    -0.03344288926431001
#>     Attrib V42    -0.3561586067150537
#>     Attrib V43    -0.062221560901578474
#>     Attrib V44    -0.05776487504456688
#>     Attrib V45    0.1474557718142784
#>     Attrib V46    0.21931281613987827
#>     Attrib V47    0.21043574683534932
#>     Attrib V48    0.7098503386489456
#>     Attrib V49    0.7043431179788235
#>     Attrib V5    0.18910288738113476
#>     Attrib V50    -0.36445037301377553
#>     Attrib V51    0.186655786525631
#>     Attrib V52    0.3062394417867383
#>     Attrib V53    0.019590303560856524
#>     Attrib V54    0.3096859863080863
#>     Attrib V55    0.270055966480819
#>     Attrib V56    -0.47329521985651746
#>     Attrib V57    0.28001476665660624
#>     Attrib V58    0.1687877843769272
#>     Attrib V59    0.36735865957238895
#>     Attrib V6    -0.12710845571621823
#>     Attrib V60    0.35514243965539133
#>     Attrib V7    -0.20749983549269382
#>     Attrib V8    -0.06986562793137574
#>     Attrib V9    0.39474362914912486
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    0.056642529286924724
#>     Attrib V1    0.2373548716412323
#>     Attrib V10    -0.05482843380227356
#>     Attrib V11    -0.3366062327865455
#>     Attrib V12    -0.2524274864167365
#>     Attrib V13    -0.2444172439212657
#>     Attrib V14    0.2793666901203433
#>     Attrib V15    0.5110616591326144
#>     Attrib V16    0.12311952087685193
#>     Attrib V17    0.16338060046974964
#>     Attrib V18    0.2739875510707896
#>     Attrib V19    0.03131455672116792
#>     Attrib V2    0.1192563340712993
#>     Attrib V20    0.006947655038668209
#>     Attrib V21    -0.20881341767039244
#>     Attrib V22    -0.1886998159619171
#>     Attrib V23    -0.4127771448475562
#>     Attrib V24    -0.3700891758892183
#>     Attrib V25    0.07723715106441188
#>     Attrib V26    0.28829248698649407
#>     Attrib V27    0.008726427040957517
#>     Attrib V28    -0.5312773688836635
#>     Attrib V29    0.12628294798293208
#>     Attrib V3    0.4377589799065492
#>     Attrib V30    -0.25731599521236104
#>     Attrib V31    0.7621388007289872
#>     Attrib V32    0.19135583992344174
#>     Attrib V33    -0.4954755750453436
#>     Attrib V34    0.01743368757347883
#>     Attrib V35    0.17660024335131833
#>     Attrib V36    0.8035702935555534
#>     Attrib V37    0.37398822298670115
#>     Attrib V38    -0.355194012444514
#>     Attrib V39    0.046023254408374834
#>     Attrib V4    -0.5108402422849859
#>     Attrib V40    0.311635305984863
#>     Attrib V41    -0.3694126523589147
#>     Attrib V42    -0.1696346170844908
#>     Attrib V43    -0.45224127094451116
#>     Attrib V44    -0.3907940546502612
#>     Attrib V45    -0.3391085086707094
#>     Attrib V46    -0.30595741809414373
#>     Attrib V47    0.12443378696667237
#>     Attrib V48    -0.24594299561213764
#>     Attrib V49    -0.5006941138843208
#>     Attrib V5    0.0018430313145452895
#>     Attrib V50    0.76844437777511
#>     Attrib V51    -0.06215584084567354
#>     Attrib V52    -0.15226863857671405
#>     Attrib V53    -0.016208952128577942
#>     Attrib V54    -0.19920673758191798
#>     Attrib V55    0.23190814220391848
#>     Attrib V56    0.5478095536937122
#>     Attrib V57    0.04705248526854872
#>     Attrib V58    -0.07643336856924474
#>     Attrib V59    -0.3035280976273852
#>     Attrib V6    0.2615044991116587
#>     Attrib V60    -0.19586161408996886
#>     Attrib V7    0.46408221489065976
#>     Attrib V8    0.05358174348678639
#>     Attrib V9    -0.6258695752538911
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.13679942014995652
#>     Attrib V1    0.09818355591233263
#>     Attrib V10    0.009854954826231227
#>     Attrib V11    0.03596356852050948
#>     Attrib V12    0.042725151381093854
#>     Attrib V13    0.08862915334824997
#>     Attrib V14    0.052824215886282264
#>     Attrib V15    0.06135544350157808
#>     Attrib V16    0.17730649123942618
#>     Attrib V17    0.045795418134495454
#>     Attrib V18    -1.5098140619070334E-4
#>     Attrib V19    0.05857334580937755
#>     Attrib V2    0.0497100598977606
#>     Attrib V20    0.02696478382022742
#>     Attrib V21    -0.009414219947783088
#>     Attrib V22    -0.1050031483554295
#>     Attrib V23    -0.13931096642605545
#>     Attrib V24    -0.04365610115126457
#>     Attrib V25    -0.1318089281895245
#>     Attrib V26    -0.27735892176866317
#>     Attrib V27    -0.22007136870927915
#>     Attrib V28    -0.04227409157666341
#>     Attrib V29    -0.1897121909793814
#>     Attrib V3    0.028866141198892782
#>     Attrib V30    -0.09098587681113786
#>     Attrib V31    -0.3022235430268845
#>     Attrib V32    -0.04798221755707056
#>     Attrib V33    0.15630057093604946
#>     Attrib V34    0.07080517644038051
#>     Attrib V35    -0.061981619371872895
#>     Attrib V36    -0.15892609997883217
#>     Attrib V37    -0.033151143879416735
#>     Attrib V38    0.18059232847836057
#>     Attrib V39    0.07784714025826572
#>     Attrib V4    0.25597057583728045
#>     Attrib V40    -0.09491515026254983
#>     Attrib V41    0.03744818810421372
#>     Attrib V42    0.0819512115104734
#>     Attrib V43    0.08641242871984513
#>     Attrib V44    0.04543995571138205
#>     Attrib V45    0.09329736887962153
#>     Attrib V46    0.04045426356942336
#>     Attrib V47    -0.07073639371887226
#>     Attrib V48    0.06382327590574798
#>     Attrib V49    0.10985885892117239
#>     Attrib V5    0.05191334349525415
#>     Attrib V50    -0.011829300432572376
#>     Attrib V51    0.07073160345208439
#>     Attrib V52    0.09406732174266053
#>     Attrib V53    0.16052274527759966
#>     Attrib V54    0.25890917356300563
#>     Attrib V55    0.15967835466699107
#>     Attrib V56    0.06997318080916455
#>     Attrib V57    0.2528274034182263
#>     Attrib V58    0.16729645433912474
#>     Attrib V59    0.294187034090888
#>     Attrib V6    -0.027530608319896066
#>     Attrib V60    0.2891534497326383
#>     Attrib V7    -0.007095993703363568
#>     Attrib V8    0.04066566763354446
#>     Attrib V9    0.14377994106255673
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.10561404523449526
#>     Attrib V1    0.1131410538301779
#>     Attrib V10    0.07046850002975158
#>     Attrib V11    0.07567690481511295
#>     Attrib V12    -0.013167793109325051
#>     Attrib V13    0.006259894126038283
#>     Attrib V14    0.04889504197849765
#>     Attrib V15    0.11170427152264356
#>     Attrib V16    0.08899311187941338
#>     Attrib V17    0.010297750302164718
#>     Attrib V18    -0.02953095328961652
#>     Attrib V19    0.05309182719360429
#>     Attrib V2    0.11651632270742214
#>     Attrib V20    0.02955620108273288
#>     Attrib V21    0.008579715539385468
#>     Attrib V22    0.004434287443394607
#>     Attrib V23    -0.07050833081028031
#>     Attrib V24    -0.028405914664629103
#>     Attrib V25    -0.12364997102719064
#>     Attrib V26    -0.1694425388873505
#>     Attrib V27    -0.10387516089504296
#>     Attrib V28    -0.005362454134807605
#>     Attrib V29    -0.12402998826576404
#>     Attrib V3    0.004411315272515232
#>     Attrib V30    0.01577394636888225
#>     Attrib V31    -0.12539702768685845
#>     Attrib V32    -0.06492133900034937
#>     Attrib V33    0.14836139797182163
#>     Attrib V34    -0.00165671347868169
#>     Attrib V35    0.03290004571210717
#>     Attrib V36    -0.09175244795010205
#>     Attrib V37    -0.04172523478865206
#>     Attrib V38    0.1736430862666016
#>     Attrib V39    0.08983271392899504
#>     Attrib V4    0.18805800309687828
#>     Attrib V40    -0.061009197534323586
#>     Attrib V41    0.042198708842073426
#>     Attrib V42    0.022659698266064163
#>     Attrib V43    0.13346565353597117
#>     Attrib V44    0.12846022648227926
#>     Attrib V45    0.1347519039186379
#>     Attrib V46    0.01634984762068418
#>     Attrib V47    -0.06687626082257582
#>     Attrib V48    0.10657232139005766
#>     Attrib V49    0.0773629653498362
#>     Attrib V5    0.057810629520779595
#>     Attrib V50    0.003559543323804878
#>     Attrib V51    0.0347611436757945
#>     Attrib V52    0.023126513057765155
#>     Attrib V53    0.060095142002395095
#>     Attrib V54    0.1529320078130768
#>     Attrib V55    0.1329570493909703
#>     Attrib V56    0.07156985315189829
#>     Attrib V57    0.21560274815564015
#>     Attrib V58    0.07714606984604588
#>     Attrib V59    0.1861774225897717
#>     Attrib V6    0.010613926554160694
#>     Attrib V60    0.20515040407722207
#>     Attrib V7    -0.02913103209128451
#>     Attrib V8    0.10619938108096767
#>     Attrib V9    0.11882134522046933
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.035766724821504975
#>     Attrib V1    0.20698915318691358
#>     Attrib V10    -0.07035465409134835
#>     Attrib V11    -0.4069700411202746
#>     Attrib V12    -0.5395598966390119
#>     Attrib V13    -0.36005885129505516
#>     Attrib V14    0.24293183389432096
#>     Attrib V15    0.3394498390036298
#>     Attrib V16    -0.005329630809203383
#>     Attrib V17    -0.048761344999570425
#>     Attrib V18    0.18861120647098867
#>     Attrib V19    -0.1379656212645277
#>     Attrib V2    0.1256343216874746
#>     Attrib V20    -0.015209499785967744
#>     Attrib V21    -0.13917804191211505
#>     Attrib V22    -0.20176937194330652
#>     Attrib V23    -0.24390693284223144
#>     Attrib V24    -0.2718169509013563
#>     Attrib V25    0.07780397319227218
#>     Attrib V26    0.18448116310171664
#>     Attrib V27    0.01620758692602903
#>     Attrib V28    -0.49500358194321403
#>     Attrib V29    0.09844936194030936
#>     Attrib V3    0.4774621157114529
#>     Attrib V30    -0.3102656959258772
#>     Attrib V31    0.6394245123369018
#>     Attrib V32    0.18087469731668915
#>     Attrib V33    -0.44479645874836493
#>     Attrib V34    -0.03506864520553524
#>     Attrib V35    0.13170237660025946
#>     Attrib V36    0.8503446832711935
#>     Attrib V37    0.31673804723187887
#>     Attrib V38    -0.3399459405903085
#>     Attrib V39    0.06526976815683314
#>     Attrib V4    -0.5103130671773782
#>     Attrib V40    0.295088211719421
#>     Attrib V41    -0.33224189364880774
#>     Attrib V42    -0.06138909861001762
#>     Attrib V43    -0.3440478265706413
#>     Attrib V44    -0.23775573224665095
#>     Attrib V45    -0.38923549090911513
#>     Attrib V46    -0.3496267077299272
#>     Attrib V47    0.07733812854485297
#>     Attrib V48    -0.3262469259068718
#>     Attrib V49    -0.4808264524941015
#>     Attrib V5    -0.020420626763117154
#>     Attrib V50    0.6303777342906762
#>     Attrib V51    -0.027160267031337827
#>     Attrib V52    -0.012822644469258258
#>     Attrib V53    0.049303815622428304
#>     Attrib V54    -0.23875234394971975
#>     Attrib V55    0.1837309143816856
#>     Attrib V56    0.5330499363996339
#>     Attrib V57    0.04068355182656485
#>     Attrib V58    0.023804661572415047
#>     Attrib V59    -0.24078539484736855
#>     Attrib V6    0.2372709128388058
#>     Attrib V60    -0.14745706750152276
#>     Attrib V7    0.5210213296800145
#>     Attrib V8    0.16419056373488675
#>     Attrib V9    -0.5769620087180422
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.3275335410426556
#>     Attrib V1    0.20337368367324685
#>     Attrib V10    0.27656301686477225
#>     Attrib V11    0.7220408633296413
#>     Attrib V12    1.0842203950731897
#>     Attrib V13    0.45085064157346655
#>     Attrib V14    0.1283000798421536
#>     Attrib V15    -0.27933202353247255
#>     Attrib V16    -0.5492434182946347
#>     Attrib V17    -0.677699859167983
#>     Attrib V18    -0.574761432818797
#>     Attrib V19    -0.3176392716275671
#>     Attrib V2    0.00873020046551977
#>     Attrib V20    -0.3034940163358284
#>     Attrib V21    0.06428973525305748
#>     Attrib V22    -0.19146336889408144
#>     Attrib V23    -0.11999998543841044
#>     Attrib V24    0.22825570499812226
#>     Attrib V25    0.34756711386352007
#>     Attrib V26    0.6596911366925376
#>     Attrib V27    0.9419990689302189
#>     Attrib V28    1.6438946848598326
#>     Attrib V29    0.9736254553641043
#>     Attrib V3    -0.3890658144772376
#>     Attrib V30    0.4224257528077925
#>     Attrib V31    -0.3881789899819791
#>     Attrib V32    -0.15680554753345222
#>     Attrib V33    0.14309798201351878
#>     Attrib V34    0.20117928924091608
#>     Attrib V35    0.6834830421268179
#>     Attrib V36    -0.21133801366135363
#>     Attrib V37    0.17186588696855673
#>     Attrib V38    0.2698058741562937
#>     Attrib V39    0.13446836068176612
#>     Attrib V4    1.2103355872738946
#>     Attrib V40    -0.1796422283894791
#>     Attrib V41    0.28942042821067954
#>     Attrib V42    -0.6390628705876299
#>     Attrib V43    -0.18339367025052572
#>     Attrib V44    -0.15303087500938561
#>     Attrib V45    0.47610479734176775
#>     Attrib V46    0.5539481218082025
#>     Attrib V47    0.37905639205071523
#>     Attrib V48    0.7116921062335163
#>     Attrib V49    0.9281255161582451
#>     Attrib V5    0.6363879954183498
#>     Attrib V50    -0.5301740645826793
#>     Attrib V51    0.5062704835351785
#>     Attrib V52    0.38964196763076336
#>     Attrib V53    0.20711438161213097
#>     Attrib V54    0.18107282764526347
#>     Attrib V55    0.2829194111432771
#>     Attrib V56    -0.9468914369676159
#>     Attrib V57    0.08239289525381173
#>     Attrib V58    0.32164428939214396
#>     Attrib V59    0.37297219974026685
#>     Attrib V6    0.13988626106034455
#>     Attrib V60    0.5409862664598462
#>     Attrib V7    -0.3105958502984095
#>     Attrib V8    -0.23350065978033524
#>     Attrib V9    0.5715102341572896
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    -0.008552782305819474
#>     Attrib V1    -0.1251713987068257
#>     Attrib V10    -0.01704393018094518
#>     Attrib V11    0.10880136697032455
#>     Attrib V12    0.15545283954451902
#>     Attrib V13    0.11476147539284913
#>     Attrib V14    -0.12442473972512264
#>     Attrib V15    -0.09692436825211859
#>     Attrib V16    0.30051085007909245
#>     Attrib V17    0.07671714982814737
#>     Attrib V18    -0.05088881723082307
#>     Attrib V19    0.2930380392279326
#>     Attrib V2    -0.08602587718115173
#>     Attrib V20    0.28355375680010875
#>     Attrib V21    0.33185082985693165
#>     Attrib V22    0.2793258568931525
#>     Attrib V23    0.2951093834428148
#>     Attrib V24    0.20831022439043387
#>     Attrib V25    -0.2595841996451673
#>     Attrib V26    -0.5086136976248072
#>     Attrib V27    -0.3044310742043479
#>     Attrib V28    0.05277062198048366
#>     Attrib V29    -0.5123789035092713
#>     Attrib V3    -0.35562394318316937
#>     Attrib V30    0.16616867490977924
#>     Attrib V31    -0.7003429012565255
#>     Attrib V32    -0.05049534481340627
#>     Attrib V33    0.7652012650849633
#>     Attrib V34    0.14101375705794644
#>     Attrib V35    -0.33194375786925434
#>     Attrib V36    -0.7199324719297439
#>     Attrib V37    -0.42958175417867883
#>     Attrib V38    0.4409126242038344
#>     Attrib V39    -0.012816675895233923
#>     Attrib V4    0.3684978439972888
#>     Attrib V40    -0.2421741790387965
#>     Attrib V41    0.17895617795647717
#>     Attrib V42    0.14877600408706937
#>     Attrib V43    0.4474868658241849
#>     Attrib V44    0.36953554378465014
#>     Attrib V45    0.15943049971245374
#>     Attrib V46    -0.017107518696082343
#>     Attrib V47    -0.4324209095193224
#>     Attrib V48    0.12393890126658581
#>     Attrib V49    0.4435021923050246
#>     Attrib V5    -0.14346986530040204
#>     Attrib V50    -0.5713499450162761
#>     Attrib V51    0.07274778130865886
#>     Attrib V52    0.03682630101128721
#>     Attrib V53    0.05830618128696958
#>     Attrib V54    0.6519489672263652
#>     Attrib V55    -0.0957484664147283
#>     Attrib V56    -0.11316614039606805
#>     Attrib V57    0.13086785950233826
#>     Attrib V58    0.1114248740472369
#>     Attrib V59    0.6442898877749861
#>     Attrib V6    -0.3741302386598625
#>     Attrib V60    0.3779543884918857
#>     Attrib V7    -0.2273529141143312
#>     Attrib V8    -0.0653886538299308
#>     Attrib V9    0.4889711527733912
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.7066458262249014
#>     Attrib V1    0.5904980556634161
#>     Attrib V10    -0.37383606731412733
#>     Attrib V11    -0.5160542210890118
#>     Attrib V12    -0.04089021742199534
#>     Attrib V13    -0.33079063779062745
#>     Attrib V14    0.47690580646359493
#>     Attrib V15    0.37031724121596776
#>     Attrib V16    -0.7139772403858599
#>     Attrib V17    -0.32900986874363036
#>     Attrib V18    0.1922920873217622
#>     Attrib V19    -0.46498540917612413
#>     Attrib V2    0.18931403955115825
#>     Attrib V20    -0.4383108947669737
#>     Attrib V21    -0.4935608682949718
#>     Attrib V22    -0.732977193010164
#>     Attrib V23    -0.9231847462355753
#>     Attrib V24    -0.5859352449056254
#>     Attrib V25    0.5116657956306627
#>     Attrib V26    1.1028938100980759
#>     Attrib V27    0.650029447954176
#>     Attrib V28    -0.0025946407059091767
#>     Attrib V29    1.4593595049708061
#>     Attrib V3    0.4693962316546256
#>     Attrib V30    -0.206022439432641
#>     Attrib V31    1.471336524554606
#>     Attrib V32    -0.078315328855701
#>     Attrib V33    -1.711871420550761
#>     Attrib V34    -0.1898397302613612
#>     Attrib V35    0.9526164220304663
#>     Attrib V36    1.8693788286477013
#>     Attrib V37    1.4579227295067902
#>     Attrib V38    -0.5571867687569622
#>     Attrib V39    0.30458308669194994
#>     Attrib V4    -0.35286911130906096
#>     Attrib V40    0.5690723754800323
#>     Attrib V41    -0.21870076693512353
#>     Attrib V42    -0.8683019308668736
#>     Attrib V43    -1.2915238189960583
#>     Attrib V44    -1.0785933141013198
#>     Attrib V45    -0.5260727181507626
#>     Attrib V46    -0.3033625252201195
#>     Attrib V47    0.6048392924863897
#>     Attrib V48    -0.22712295442686586
#>     Attrib V49    -0.9493714846638661
#>     Attrib V5    0.5892826250953507
#>     Attrib V50    1.0641939215676817
#>     Attrib V51    0.05058656082574974
#>     Attrib V52    -0.0480954228150341
#>     Attrib V53    -0.1808982805706383
#>     Attrib V54    -0.943125029973736
#>     Attrib V55    0.44984586759832706
#>     Attrib V56    -0.046529767194540946
#>     Attrib V57    -0.1262153547504174
#>     Attrib V58    -0.21197139997703582
#>     Attrib V59    -0.8142052417877628
#>     Attrib V6    0.8725323721652876
#>     Attrib V60    -0.2859757260060937
#>     Attrib V7    0.6085813795290992
#>     Attrib V8    -0.38468457375480214
#>     Attrib V9    -1.4037169176698368
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.008892771471850087
#>     Attrib V1    0.14937124785789413
#>     Attrib V10    -0.0895941099849892
#>     Attrib V11    0.023511419121457478
#>     Attrib V12    0.07357213048566785
#>     Attrib V13    0.018427044292458238
#>     Attrib V14    0.06029705484431481
#>     Attrib V15    0.08321468932413849
#>     Attrib V16    0.30380326581311246
#>     Attrib V17    0.032137117317040345
#>     Attrib V18    -0.07280907080471609
#>     Attrib V19    0.08109685419080086
#>     Attrib V2    0.1236486996110227
#>     Attrib V20    0.15708440969793977
#>     Attrib V21    0.052870543020292905
#>     Attrib V22    -0.12679168765881657
#>     Attrib V23    -0.19268190846422312
#>     Attrib V24    -0.0581813968796306
#>     Attrib V25    -0.29886078363548013
#>     Attrib V26    -0.5426866169019583
#>     Attrib V27    -0.48358707230933434
#>     Attrib V28    -0.27273428407452033
#>     Attrib V29    -0.38468654636939953
#>     Attrib V3    -0.08645751340403944
#>     Attrib V30    -0.13857140120418826
#>     Attrib V31    -0.48159135819946225
#>     Attrib V32    -0.13130688163040835
#>     Attrib V33    0.31745849666860937
#>     Attrib V34    0.1113926845812756
#>     Attrib V35    -0.15038911711310413
#>     Attrib V36    -0.3185397696781452
#>     Attrib V37    -0.14186124390048852
#>     Attrib V38    0.25379596429014367
#>     Attrib V39    0.05705226002066289
#>     Attrib V4    0.3444731107285985
#>     Attrib V40    -0.11389617574157004
#>     Attrib V41    0.02416128798417728
#>     Attrib V42    0.06765664720595319
#>     Attrib V43    0.18429068264771534
#>     Attrib V44    0.05587735992448473
#>     Attrib V45    -0.016541590595291242
#>     Attrib V46    -0.025330095405855155
#>     Attrib V47    -0.25869583134859153
#>     Attrib V48    0.08200453883667314
#>     Attrib V49    0.16374514696887052
#>     Attrib V5    0.008220709326995182
#>     Attrib V50    -0.20859109573203824
#>     Attrib V51    -0.02693237345420616
#>     Attrib V52    0.05881949319985812
#>     Attrib V53    0.1205542269461758
#>     Attrib V54    0.5726388131607831
#>     Attrib V55    0.1954512118707851
#>     Attrib V56    0.08239216010806343
#>     Attrib V57    0.36296781812992346
#>     Attrib V58    0.16834214652375476
#>     Attrib V59    0.5542905582949994
#>     Attrib V6    -0.1463571002232646
#>     Attrib V60    0.4273671841384288
#>     Attrib V7    -0.04044507682373387
#>     Attrib V8    0.011972527377028764
#>     Attrib V9    0.13246086600516224
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.04014052897613534
#>     Attrib V1    0.13836828324806177
#>     Attrib V10    -0.2442965944943792
#>     Attrib V11    -0.014084387598721828
#>     Attrib V12    0.10479503410027757
#>     Attrib V13    0.07058199536707084
#>     Attrib V14    0.016444078655433535
#>     Attrib V15    0.10575087149299504
#>     Attrib V16    0.32425812403397747
#>     Attrib V17    0.14093324895534318
#>     Attrib V18    -0.01344826069295319
#>     Attrib V19    0.23279189237770032
#>     Attrib V2    0.12126722758965085
#>     Attrib V20    0.256401379014741
#>     Attrib V21    0.1319525528401063
#>     Attrib V22    -1.3761322674523378E-4
#>     Attrib V23    -0.05793545867316142
#>     Attrib V24    -0.06418790072073041
#>     Attrib V25    -0.35458868771466834
#>     Attrib V26    -0.6635659324732978
#>     Attrib V27    -0.6382352000427366
#>     Attrib V28    -0.3255415667881053
#>     Attrib V29    -0.5906999181894655
#>     Attrib V3    -0.057494417659788175
#>     Attrib V30    -0.13519607327718922
#>     Attrib V31    -0.6972158978683137
#>     Attrib V32    -0.201527768245856
#>     Attrib V33    0.4706340484141758
#>     Attrib V34    0.09685132283215686
#>     Attrib V35    -0.24372906617776544
#>     Attrib V36    -0.45752838967635134
#>     Attrib V37    -0.12383297397832348
#>     Attrib V38    0.43799734917113586
#>     Attrib V39    0.12492808770041354
#>     Attrib V4    0.37193081632793457
#>     Attrib V40    -0.16614417128508682
#>     Attrib V41    0.14114218837063933
#>     Attrib V42    0.1898267303207063
#>     Attrib V43    0.2656010402193477
#>     Attrib V44    0.08898287329268902
#>     Attrib V45    0.031615414953269194
#>     Attrib V46    -0.09452193934575262
#>     Attrib V47    -0.34404174134814103
#>     Attrib V48    -0.0688723106942251
#>     Attrib V49    0.14363498882248643
#>     Attrib V5    -0.09129706449692514
#>     Attrib V50    -0.33449250889181203
#>     Attrib V51    -0.09617809896818388
#>     Attrib V52    0.03001319344927146
#>     Attrib V53    0.1879789307604376
#>     Attrib V54    0.7675850214999919
#>     Attrib V55    0.13603087606777575
#>     Attrib V56    0.1039181161417283
#>     Attrib V57    0.3476568064442936
#>     Attrib V58    0.0784676347432625
#>     Attrib V59    0.7102638745363332
#>     Attrib V6    -0.2348685865283737
#>     Attrib V60    0.4610155860093739
#>     Attrib V7    -0.11053671536606713
#>     Attrib V8    0.022893925135536602
#>     Attrib V9    0.14090399453345198
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.0919511302791549
#>     Attrib V1    0.08331408983937265
#>     Attrib V10    -0.011133478865815444
#>     Attrib V11    -0.085521669247708
#>     Attrib V12    -0.11430669703215546
#>     Attrib V13    -0.10507115223453924
#>     Attrib V14    0.028115982350923698
#>     Attrib V15    0.08844640917278859
#>     Attrib V16    -0.010801608427006382
#>     Attrib V17    0.0882126010271661
#>     Attrib V18    0.07477672413513006
#>     Attrib V19    0.028555509319514054
#>     Attrib V2    0.04852062260871744
#>     Attrib V20    -0.011169489758095421
#>     Attrib V21    -0.011270108080651722
#>     Attrib V22    -0.003230195583958499
#>     Attrib V23    0.01217419181966527
#>     Attrib V24    -0.09817504432230408
#>     Attrib V25    -0.05490608104811855
#>     Attrib V26    0.019661556166388868
#>     Attrib V27    -0.09694766094793023
#>     Attrib V28    -0.1618265848323619
#>     Attrib V29    -0.03251667849911033
#>     Attrib V3    0.13374006386843953
#>     Attrib V30    -0.005640691632643488
#>     Attrib V31    0.2646919457668181
#>     Attrib V32    0.2309105242274417
#>     Attrib V33    0.00794527066559246
#>     Attrib V34    0.1200221210289856
#>     Attrib V35    0.19063527540234615
#>     Attrib V36    0.3441097855023913
#>     Attrib V37    0.14870799576174995
#>     Attrib V38    0.012592423714478902
#>     Attrib V39    0.10682552202039629
#>     Attrib V4    -0.015040268112077405
#>     Attrib V40    0.31696885674323266
#>     Attrib V41    0.18223847152128428
#>     Attrib V42    0.08980008429103185
#>     Attrib V43    0.0917743737189399
#>     Attrib V44    0.06705264997585002
#>     Attrib V45    -0.021260565987392854
#>     Attrib V46    0.04399517123573237
#>     Attrib V47    0.13742407079573601
#>     Attrib V48    -0.04712233026569323
#>     Attrib V49    -0.10244096880819108
#>     Attrib V5    0.07949107338830722
#>     Attrib V50    0.2681400627476373
#>     Attrib V51    0.10946120592509428
#>     Attrib V52    0.09061325357354574
#>     Attrib V53    0.035474123926327865
#>     Attrib V54    -0.04589177201748485
#>     Attrib V55    0.048955486447369634
#>     Attrib V56    0.2024345546211228
#>     Attrib V57    0.09122904960139767
#>     Attrib V58    0.10270078106143858
#>     Attrib V59    -0.04287167703001562
#>     Attrib V6    0.26434098687812596
#>     Attrib V60    -0.04930018083358888
#>     Attrib V7    0.18809627896011266
#>     Attrib V8    0.13122972569732508
#>     Attrib V9    -0.028984491944991142
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    -0.18696738462076132
#>     Attrib V1    0.20738549928294095
#>     Attrib V10    0.7885382092476356
#>     Attrib V11    1.4528626653307022
#>     Attrib V12    1.6929494851728086
#>     Attrib V13    0.9691587234115765
#>     Attrib V14    0.3454843150206671
#>     Attrib V15    -0.9330986138885548
#>     Attrib V16    -1.1255741220436881
#>     Attrib V17    -0.5420646748434809
#>     Attrib V18    -0.190426581255483
#>     Attrib V19    0.0678716295839795
#>     Attrib V2    0.05867416870676432
#>     Attrib V20    -0.1437984030326653
#>     Attrib V21    0.46741815678827403
#>     Attrib V22    0.3558176992111645
#>     Attrib V23    0.9875363438390924
#>     Attrib V24    0.8121367652311404
#>     Attrib V25    0.38107122712369174
#>     Attrib V26    0.9993258812177291
#>     Attrib V27    1.645147953054142
#>     Attrib V28    2.7716121117139445
#>     Attrib V29    2.0186845641481135
#>     Attrib V3    -0.05625752266290694
#>     Attrib V30    0.47984947788668575
#>     Attrib V31    -0.5311665637559733
#>     Attrib V32    -0.08270321462547033
#>     Attrib V33    -0.6048850322169997
#>     Attrib V34    -0.3123937893648623
#>     Attrib V35    0.7936511823596737
#>     Attrib V36    -0.7734388339587112
#>     Attrib V37    0.015080746914187875
#>     Attrib V38    0.10167729267053847
#>     Attrib V39    0.41858973700390767
#>     Attrib V4    1.7635379722838818
#>     Attrib V40    -0.0205811446955924
#>     Attrib V41    0.89672710926848
#>     Attrib V42    -0.6851323211246013
#>     Attrib V43    0.11770250865585496
#>     Attrib V44    0.43037037899903385
#>     Attrib V45    0.8065623020313504
#>     Attrib V46    1.0297909744859959
#>     Attrib V47    0.9466507661711119
#>     Attrib V48    1.0826096758935801
#>     Attrib V49    1.5554445032358515
#>     Attrib V5    1.185380268482706
#>     Attrib V50    -0.5301778654966565
#>     Attrib V51    1.147306698785947
#>     Attrib V52    0.94470651511848
#>     Attrib V53    0.30067709056258257
#>     Attrib V54    -0.36564158225971377
#>     Attrib V55    0.16091752149556085
#>     Attrib V56    -0.8961127704906755
#>     Attrib V57    -0.35869715316810374
#>     Attrib V58    0.5064535072692457
#>     Attrib V59    -0.2197536699421167
#>     Attrib V6    0.498543356795458
#>     Attrib V60    -0.04464355981485345
#>     Attrib V7    -0.9088230745547693
#>     Attrib V8    -0.4310311952665223
#>     Attrib V9    1.100747111986801
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    0.045151710635938064
#>     Attrib V1    0.26878766073944843
#>     Attrib V10    -0.17384673083131136
#>     Attrib V11    -0.41641570359129654
#>     Attrib V12    -0.33725644884062306
#>     Attrib V13    -0.31055161352658683
#>     Attrib V14    0.34718117690812345
#>     Attrib V15    0.4067964091236717
#>     Attrib V16    -0.029118987598157266
#>     Attrib V17    0.015863305512678727
#>     Attrib V18    0.08635544231656705
#>     Attrib V19    -0.1534671909892831
#>     Attrib V2    0.17604659227609395
#>     Attrib V20    -0.1801657977610469
#>     Attrib V21    -0.370821446100116
#>     Attrib V22    -0.43002020297188653
#>     Attrib V23    -0.4801705373730824
#>     Attrib V24    -0.3447377974528594
#>     Attrib V25    0.13169294967703993
#>     Attrib V26    0.22522058272678702
#>     Attrib V27    0.09771218691848012
#>     Attrib V28    -0.4265047784021431
#>     Attrib V29    0.18019154728985617
#>     Attrib V3    0.3763192192941776
#>     Attrib V30    -0.35081074816400415
#>     Attrib V31    0.6754440180153587
#>     Attrib V32    0.0837710485188545
#>     Attrib V33    -0.59947695359032
#>     Attrib V34    -0.16690792408446664
#>     Attrib V35    0.13636267155308682
#>     Attrib V36    0.7310972317840162
#>     Attrib V37    0.28086723955707615
#>     Attrib V38    -0.4983350316971479
#>     Attrib V39    -0.002677435622198492
#>     Attrib V4    -0.5143561792254526
#>     Attrib V40    0.2760795935066256
#>     Attrib V41    -0.3520207483869012
#>     Attrib V42    -0.08642431350694924
#>     Attrib V43    -0.44668983571524146
#>     Attrib V44    -0.45302206573148346
#>     Attrib V45    -0.42937420886118793
#>     Attrib V46    -0.373472631774692
#>     Attrib V47    0.09013644417300093
#>     Attrib V48    -0.21487094682391208
#>     Attrib V49    -0.5720790631947366
#>     Attrib V5    -0.0731374995322817
#>     Attrib V50    0.7255460639367993
#>     Attrib V51    -0.1116189886394893
#>     Attrib V52    -0.10925395121044629
#>     Attrib V53    -0.02715434444421096
#>     Attrib V54    -0.17669863680571724
#>     Attrib V55    0.2854597692981712
#>     Attrib V56    0.49444295689728907
#>     Attrib V57    0.1427299295499197
#>     Attrib V58    -0.016701630266058684
#>     Attrib V59    -0.2728018204094709
#>     Attrib V6    0.2704614411483704
#>     Attrib V60    -0.07418039618124884
#>     Attrib V7    0.4268269780482054
#>     Attrib V8    0.0808438592002592
#>     Attrib V9    -0.7618530734810434
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.2602027955960976
#>     Attrib V1    -0.13545723558414882
#>     Attrib V10    0.11395181668510827
#>     Attrib V11    0.4494477332365694
#>     Attrib V12    0.6292821671716226
#>     Attrib V13    0.2794847086208834
#>     Attrib V14    -0.18998752241371894
#>     Attrib V15    -0.3396805082908263
#>     Attrib V16    -0.137640927069645
#>     Attrib V17    -0.26422656884984047
#>     Attrib V18    -0.18406958911163765
#>     Attrib V19    -0.09097957049322912
#>     Attrib V2    -0.16519151652991276
#>     Attrib V20    -0.20870030840531634
#>     Attrib V21    -0.03219943231646199
#>     Attrib V22    -0.1582282059886895
#>     Attrib V23    -0.02429117563677584
#>     Attrib V24    0.2662991120499414
#>     Attrib V25    0.1456486856903986
#>     Attrib V26    0.14694560047505403
#>     Attrib V27    0.19082430297283023
#>     Attrib V28    0.44035604248212595
#>     Attrib V29    -0.1691910258444681
#>     Attrib V3    -0.5039294650735143
#>     Attrib V30    0.23489545032842846
#>     Attrib V31    -0.3207306388531162
#>     Attrib V32    0.03442484662856547
#>     Attrib V33    0.4869522231403766
#>     Attrib V34    0.3263088130877172
#>     Attrib V35    0.1410479491329231
#>     Attrib V36    -0.5257421066739019
#>     Attrib V37    -0.34976072070991354
#>     Attrib V38    0.13703785684690403
#>     Attrib V39    -0.04252145829075461
#>     Attrib V4    0.5661090172401035
#>     Attrib V40    -0.3705240751486867
#>     Attrib V41    0.026755843375495792
#>     Attrib V42    -0.2793943389901344
#>     Attrib V43    0.12049785486935227
#>     Attrib V44    0.12496191118264084
#>     Attrib V45    0.26965786999622043
#>     Attrib V46    0.10117034933520645
#>     Attrib V47    -0.023310633805859963
#>     Attrib V48    0.5482968904590253
#>     Attrib V49    0.6117944552907385
#>     Attrib V5    0.04722997787377759
#>     Attrib V50    -0.4574312178919137
#>     Attrib V51    0.2479661723147982
#>     Attrib V52    0.26837616346809867
#>     Attrib V53    0.08466628163311692
#>     Attrib V54    0.36399703804990957
#>     Attrib V55    0.12712253573875842
#>     Attrib V56    -0.5391267700649903
#>     Attrib V57    0.08249464124143029
#>     Attrib V58    0.08016430330859017
#>     Attrib V59    0.39962887738291675
#>     Attrib V6    -0.25308576247883086
#>     Attrib V60    0.23529217398170144
#>     Attrib V7    -0.4144893577056841
#>     Attrib V8    -0.15432984049205303
#>     Attrib V9    0.4895510702445183
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    0.8939786939508622
#>     Attrib V1    0.5204257152743629
#>     Attrib V10    -0.4673448052537618
#>     Attrib V11    -0.5936228112472375
#>     Attrib V12    -0.216776398026965
#>     Attrib V13    -0.4768778347473328
#>     Attrib V14    0.4572118905825237
#>     Attrib V15    0.571138685843582
#>     Attrib V16    -0.4223670011780221
#>     Attrib V17    -0.36323759715655796
#>     Attrib V18    0.17455978764656938
#>     Attrib V19    -0.47016752292904773
#>     Attrib V2    0.13469996792815733
#>     Attrib V20    -0.4853332823737423
#>     Attrib V21    -0.6693516603974417
#>     Attrib V22    -1.0749442930785267
#>     Attrib V23    -1.3615921606248338
#>     Attrib V24    -0.8319255669010552
#>     Attrib V25    0.17343687318813986
#>     Attrib V26    0.6649786954082717
#>     Attrib V27    0.33685251198257055
#>     Attrib V28    -0.2710763458096847
#>     Attrib V29    1.0908888412255704
#>     Attrib V3    0.4597155896026196
#>     Attrib V30    -0.44524047087535484
#>     Attrib V31    1.1768130838607227
#>     Attrib V32    -0.0941415237944642
#>     Attrib V33    -1.487993413870966
#>     Attrib V34    0.12227644172736936
#>     Attrib V35    1.1040795655208708
#>     Attrib V36    1.9360191426125444
#>     Attrib V37    1.293281095808561
#>     Attrib V38    -0.5707569311709685
#>     Attrib V39    0.2743429401061606
#>     Attrib V4    -0.3819816890071237
#>     Attrib V40    0.5255240360537754
#>     Attrib V41    -0.2589119562166388
#>     Attrib V42    -0.6992811457710169
#>     Attrib V43    -1.3032248607230805
#>     Attrib V44    -1.2135575675523815
#>     Attrib V45    -0.5771418812989665
#>     Attrib V46    -0.3274016257055297
#>     Attrib V47    0.49109370207816566
#>     Attrib V48    -0.2819591773374291
#>     Attrib V49    -1.000867374774333
#>     Attrib V5    0.2684563507582392
#>     Attrib V50    0.9734996884134571
#>     Attrib V51    -0.47347011579724724
#>     Attrib V52    -0.024357522545356634
#>     Attrib V53    -0.2192588873424257
#>     Attrib V54    -0.785823005948765
#>     Attrib V55    0.6460577579332878
#>     Attrib V56    -0.0621625633860502
#>     Attrib V57    -0.09563858035427109
#>     Attrib V58    -0.1639423684432432
#>     Attrib V59    -0.7513511496300468
#>     Attrib V6    0.6526627687220266
#>     Attrib V60    -0.23401779130933367
#>     Attrib V7    0.7274335109902264
#>     Attrib V8    -0.09295670477181996
#>     Attrib V9    -1.3822012754145825
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.10834125366109378
#>     Attrib V1    -0.016621399375819478
#>     Attrib V10    -0.06504317493032798
#>     Attrib V11    0.19684179059228282
#>     Attrib V12    0.26998566516839206
#>     Attrib V13    0.1239642366007575
#>     Attrib V14    0.05665762313572496
#>     Attrib V15    0.004639959170806795
#>     Attrib V16    0.13927050718482392
#>     Attrib V17    -0.06361230475635969
#>     Attrib V18    -0.09240721687517339
#>     Attrib V19    0.051317112156307194
#>     Attrib V2    0.022245962006266197
#>     Attrib V20    0.12873463510503033
#>     Attrib V21    0.097798493443816
#>     Attrib V22    -0.04771927113795649
#>     Attrib V23    -0.13228772155510402
#>     Attrib V24    0.016435874903354592
#>     Attrib V25    -0.15626030902250992
#>     Attrib V26    -0.43683145015182195
#>     Attrib V27    -0.2789343151374595
#>     Attrib V28    -0.005649429416741606
#>     Attrib V29    -0.2787373361070357
#>     Attrib V3    -0.148865226685095
#>     Attrib V30    -0.058034873927782074
#>     Attrib V31    -0.5204486702148462
#>     Attrib V32    -0.07720121623681729
#>     Attrib V33    0.4166077461415177
#>     Attrib V34    0.14735615904647417
#>     Attrib V35    -0.14208826954723072
#>     Attrib V36    -0.4612632206665723
#>     Attrib V37    -0.21275891367149294
#>     Attrib V38    0.2702570612475732
#>     Attrib V39    0.07266168644181756
#>     Attrib V4    0.3946576572873284
#>     Attrib V40    -0.19288934248655856
#>     Attrib V41    0.07934705256617827
#>     Attrib V42    -0.013082924038744463
#>     Attrib V43    0.21893929183230773
#>     Attrib V44    0.06114160570075221
#>     Attrib V45    0.14065762086241143
#>     Attrib V46    -0.028862844863914123
#>     Attrib V47    -0.1609201418887641
#>     Attrib V48    0.19912163518725592
#>     Attrib V49    0.3437905858416995
#>     Attrib V5    -0.04592263191228073
#>     Attrib V50    -0.2921439371681359
#>     Attrib V51    0.07213831858721464
#>     Attrib V52    0.15773174816965946
#>     Attrib V53    0.0981585740551882
#>     Attrib V54    0.5361901840225501
#>     Attrib V55    0.16351253582844716
#>     Attrib V56    -0.048813769400478185
#>     Attrib V57    0.2857723449613538
#>     Attrib V58    0.07240513323520524
#>     Attrib V59    0.5370467700568557
#>     Attrib V6    -0.22517235730975904
#>     Attrib V60    0.3472763435040979
#>     Attrib V7    -0.169277164870821
#>     Attrib V8    0.011603930798016141
#>     Attrib V9    0.2236107248709073
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    0.07137819957873219
#>     Attrib V1    0.3019229867474462
#>     Attrib V10    -0.0835170427440667
#>     Attrib V11    -0.3420234907623816
#>     Attrib V12    -0.297690805707324
#>     Attrib V13    -0.23178315217884268
#>     Attrib V14    0.3150566529734148
#>     Attrib V15    0.46539229863449555
#>     Attrib V16    0.03257722841462363
#>     Attrib V17    0.10898126433171797
#>     Attrib V18    0.19496860732662424
#>     Attrib V19    -0.15729007844173806
#>     Attrib V2    0.1927253371343731
#>     Attrib V20    -0.14545948618895327
#>     Attrib V21    -0.30469631213882165
#>     Attrib V22    -0.3714952564335122
#>     Attrib V23    -0.48791481081422905
#>     Attrib V24    -0.4078025684800945
#>     Attrib V25    0.15762009772571206
#>     Attrib V26    0.3077952270462528
#>     Attrib V27    0.06993271515530883
#>     Attrib V28    -0.47599818881664213
#>     Attrib V29    0.12790842876055278
#>     Attrib V3    0.39887277672214017
#>     Attrib V30    -0.2936545669275617
#>     Attrib V31    0.7996820923217857
#>     Attrib V32    0.11854592621859252
#>     Attrib V33    -0.6351211592680569
#>     Attrib V34    -0.1290991894924872
#>     Attrib V35    0.14372351833956196
#>     Attrib V36    0.7202578655331812
#>     Attrib V37    0.30156431323444444
#>     Attrib V38    -0.4945680225451738
#>     Attrib V39    0.0526195964836371
#>     Attrib V4    -0.5349934759553994
#>     Attrib V40    0.32042818876230367
#>     Attrib V41    -0.36258347171915795
#>     Attrib V42    -0.07581779263463331
#>     Attrib V43    -0.4737515275579374
#>     Attrib V44    -0.4719223884197913
#>     Attrib V45    -0.412247328347256
#>     Attrib V46    -0.3618690591207516
#>     Attrib V47    0.10208750552943477
#>     Attrib V48    -0.2286470540424991
#>     Attrib V49    -0.5842974931050096
#>     Attrib V5    -0.0637432771274218
#>     Attrib V50    0.73178564031112
#>     Attrib V51    -0.12180670828489881
#>     Attrib V52    -0.11368421776944897
#>     Attrib V53    -0.04399188236066372
#>     Attrib V54    -0.16950738936939871
#>     Attrib V55    0.2596073056244176
#>     Attrib V56    0.5618547594665754
#>     Attrib V57    0.07217465483529036
#>     Attrib V58    -0.023803020538679585
#>     Attrib V59    -0.29188127060831853
#>     Attrib V6    0.25577140006513627
#>     Attrib V60    -0.15402362682590492
#>     Attrib V7    0.42633553911879496
#>     Attrib V8    0.028174486600679782
#>     Attrib V9    -0.7537868263614229
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.1250152921360164
#>     Attrib V1    -0.025488375017834103
#>     Attrib V10    -0.1518200498900423
#>     Attrib V11    -0.029087089527680476
#>     Attrib V12    -0.1568161711244153
#>     Attrib V13    0.03461052892952986
#>     Attrib V14    -0.161532074946088
#>     Attrib V15    0.11276270364619806
#>     Attrib V16    0.6761259264668851
#>     Attrib V17    0.22334158350430067
#>     Attrib V18    -0.159727754468078
#>     Attrib V19    0.292892414539383
#>     Attrib V2    0.09584296088656843
#>     Attrib V20    0.40345373094748643
#>     Attrib V21    0.22812603533698994
#>     Attrib V22    0.22071393865586203
#>     Attrib V23    0.1363416303609062
#>     Attrib V24    0.10331835130258035
#>     Attrib V25    -0.5388437943518329
#>     Attrib V26    -0.9903724169617903
#>     Attrib V27    -0.8828965949734273
#>     Attrib V28    -0.34723577028492825
#>     Attrib V29    -0.9979973578590902
#>     Attrib V3    -0.30673113598398
#>     Attrib V30    -0.03539473233119679
#>     Attrib V31    -1.0176101395116082
#>     Attrib V32    -0.1483499933296284
#>     Attrib V33    1.0663986825694367
#>     Attrib V34    0.2739905884371594
#>     Attrib V35    -0.5541033409801549
#>     Attrib V36    -1.031645945060774
#>     Attrib V37    -0.5575506475957255
#>     Attrib V38    0.5976283544262398
#>     Attrib V39    -0.02819095112692916
#>     Attrib V4    0.30849133916634736
#>     Attrib V40    -0.2788746884789212
#>     Attrib V41    0.21604768935085972
#>     Attrib V42    0.5077128510681943
#>     Attrib V43    0.548086134947962
#>     Attrib V44    0.34836111608449843
#>     Attrib V45    0.05714831309466834
#>     Attrib V46    -0.01042139532297041
#>     Attrib V47    -0.5874209219504283
#>     Attrib V48    0.0042702820261206155
#>     Attrib V49    0.3145097155134448
#>     Attrib V5    -0.3341261063075132
#>     Attrib V50    -0.6304907888911268
#>     Attrib V51    -0.2004931331042099
#>     Attrib V52    -0.14092238889619238
#>     Attrib V53    0.14326504544026827
#>     Attrib V54    1.0018199197986217
#>     Attrib V55    -0.10755067154870603
#>     Attrib V56    0.06502460818033687
#>     Attrib V57    0.37530026045132975
#>     Attrib V58    0.04251823991925312
#>     Attrib V59    0.8438976755326979
#>     Attrib V6    -0.4397198462420159
#>     Attrib V60    0.671022055773501
#>     Attrib V7    -0.09407591319643503
#>     Attrib V8    0.1356684190341831
#>     Attrib V9    0.5104087896576017
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.12390317781901287
#>     Attrib V1    0.12131970362369801
#>     Attrib V10    -0.020289430591658966
#>     Attrib V11    -0.021648816109879836
#>     Attrib V12    -0.0810731424189387
#>     Attrib V13    -0.08645119459906676
#>     Attrib V14    0.07590323027589799
#>     Attrib V15    0.046483966800087144
#>     Attrib V16    0.025397868158885818
#>     Attrib V17    0.0012292084913534786
#>     Attrib V18    0.1076817560084674
#>     Attrib V19    -0.026626301715939844
#>     Attrib V2    0.0500107192775565
#>     Attrib V20    -0.006587709620562477
#>     Attrib V21    0.004649519982210058
#>     Attrib V22    4.762775851501183E-4
#>     Attrib V23    0.028077367770560416
#>     Attrib V24    -0.03578448976694339
#>     Attrib V25    -0.07401519171252981
#>     Attrib V26    -0.045841386862135645
#>     Attrib V27    -0.06752824143287689
#>     Attrib V28    -0.10879832819624015
#>     Attrib V29    -0.034432055714076086
#>     Attrib V3    0.15791285988158352
#>     Attrib V30    0.032810058918853385
#>     Attrib V31    0.18417042838923053
#>     Attrib V32    0.13879321945473067
#>     Attrib V33    0.06766693908571313
#>     Attrib V34    0.11636618666972265
#>     Attrib V35    0.18219939571271365
#>     Attrib V36    0.3126143266647328
#>     Attrib V37    0.16217169179634516
#>     Attrib V38    0.0017881345844421917
#>     Attrib V39    0.12369842160549605
#>     Attrib V4    -0.024134633954474453
#>     Attrib V40    0.21585852561935231
#>     Attrib V41    0.09888649217094539
#>     Attrib V42    0.12526719752408738
#>     Attrib V43    0.028296338295310444
#>     Attrib V44    0.123976512033881
#>     Attrib V45    0.07239237304982263
#>     Attrib V46    0.041801165023353244
#>     Attrib V47    0.07127859761741139
#>     Attrib V48    -0.056917596477748696
#>     Attrib V49    -0.0064396853828171275
#>     Attrib V5    0.12588515796064317
#>     Attrib V50    0.1486903569115619
#>     Attrib V51    0.08105718726229488
#>     Attrib V52    0.06884552319419013
#>     Attrib V53    0.07890342704556375
#>     Attrib V54    -0.03890836776780363
#>     Attrib V55    0.024925682763426882
#>     Attrib V56    0.1451688676993664
#>     Attrib V57    0.050134346776420514
#>     Attrib V58    0.15276636219067433
#>     Attrib V59    -0.009536113701641206
#>     Attrib V6    0.23768186012815204
#>     Attrib V60    0.011857163061677669
#>     Attrib V7    0.19721857524489772
#>     Attrib V8    0.16023966121098424
#>     Attrib V9    -0.004634279656836956
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
