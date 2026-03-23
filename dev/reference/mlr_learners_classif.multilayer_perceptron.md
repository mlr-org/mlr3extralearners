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
#>     Threshold    -0.7804942316032729
#>     Node 2    1.7627767981518272
#>     Node 3    1.6460230901558952
#>     Node 4    1.4956248683591291
#>     Node 5    -3.0369204712475373
#>     Node 6    0.6750170165562337
#>     Node 7    3.27129068107114
#>     Node 8    0.8292993732427527
#>     Node 9    3.5146934490413075
#>     Node 10    -1.783713921068247
#>     Node 11    1.4317259920653136
#>     Node 12    1.5481022942009905
#>     Node 13    0.9600451273798958
#>     Node 14    1.6755390666507832
#>     Node 15    -1.9884627996142126
#>     Node 16    -0.7673158330816879
#>     Node 17    0.6931163061788483
#>     Node 18    0.07725385841853069
#>     Node 19    2.133474936535436
#>     Node 20    1.5621007321309328
#>     Node 21    -2.027709706921094
#>     Node 22    1.0603408050088632
#>     Node 23    1.6196312281004837
#>     Node 24    -0.7180528024075399
#>     Node 25    4.870815228178784
#>     Node 26    -0.6327601330546943
#>     Node 27    1.5435218092826424
#>     Node 28    -4.440411611253771
#>     Node 29    1.5546456589026643
#>     Node 30    0.5537188067135448
#>     Node 31    0.023624592523392343
#>     Node 32    -0.016881083414233132
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.8291132892543479
#>     Node 2    -1.7849684039087967
#>     Node 3    -1.636382658970041
#>     Node 4    -1.4599306085235653
#>     Node 5    3.032006918001046
#>     Node 6    -0.6636881660706928
#>     Node 7    -3.275487673962985
#>     Node 8    -0.8723715449449494
#>     Node 9    -3.526379251354514
#>     Node 10    1.7299032521764002
#>     Node 11    -1.3975654142046114
#>     Node 12    -1.6191054018890199
#>     Node 13    -0.9176542291022829
#>     Node 14    -1.6011839969997987
#>     Node 15    1.9795199048908474
#>     Node 16    0.772646810474763
#>     Node 17    -0.6716296347289732
#>     Node 18    -0.04166449521454832
#>     Node 19    -2.1492151419447967
#>     Node 20    -1.5545705701278902
#>     Node 21    2.08623780571214
#>     Node 22    -1.130996949443751
#>     Node 23    -1.6440823759255863
#>     Node 24    0.7205681152960767
#>     Node 25    -4.878761226057053
#>     Node 26    0.5655735900334901
#>     Node 27    -1.56451692404508
#>     Node 28    4.41573306219942
#>     Node 29    -1.583407272653195
#>     Node 30    -0.4894324153772426
#>     Node 31    0.031472081056390044
#>     Node 32    -0.003381622077884495
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.07075309170789247
#>     Attrib V1    0.5481842611066923
#>     Attrib V10    0.2294627771918994
#>     Attrib V11    0.694772814242139
#>     Attrib V12    0.04695209039054363
#>     Attrib V13    0.12273710927795872
#>     Attrib V14    -0.22660902294251514
#>     Attrib V15    -0.13723362629314526
#>     Attrib V16    -0.12103714166478806
#>     Attrib V17    0.06406431838386749
#>     Attrib V18    0.3007737991603336
#>     Attrib V19    0.36403780664361113
#>     Attrib V2    0.12166599502004088
#>     Attrib V20    0.7442275013958917
#>     Attrib V21    0.41998038100305507
#>     Attrib V22    1.0257317375932087
#>     Attrib V23    0.8752103918241179
#>     Attrib V24    0.49809499406177193
#>     Attrib V25    -0.03264011658510558
#>     Attrib V26    -0.7065208370794847
#>     Attrib V27    -0.9690536087396054
#>     Attrib V28    -0.03443808169280693
#>     Attrib V29    -0.06575313289275177
#>     Attrib V3    -0.12681242517949093
#>     Attrib V30    0.00874100432742415
#>     Attrib V31    -1.2784721774495826
#>     Attrib V32    0.3630330572926237
#>     Attrib V33    0.46039590185517765
#>     Attrib V34    -0.34995353427398496
#>     Attrib V35    0.2546945025292736
#>     Attrib V36    -0.37832835502168277
#>     Attrib V37    -0.6446170667257083
#>     Attrib V38    0.10888464148064621
#>     Attrib V39    -0.037276117109078945
#>     Attrib V4    -0.11992428980963903
#>     Attrib V40    -0.4228833947375327
#>     Attrib V41    -0.03506056078084935
#>     Attrib V42    0.4700356313443792
#>     Attrib V43    0.8720696906903189
#>     Attrib V44    0.5095659922696518
#>     Attrib V45    0.4403261849470704
#>     Attrib V46    0.520485183896545
#>     Attrib V47    0.20181283323999064
#>     Attrib V48    0.43673944017773264
#>     Attrib V49    0.6795425886155122
#>     Attrib V5    -0.5521443597764697
#>     Attrib V50    0.10462008647360749
#>     Attrib V51    0.3356471916164973
#>     Attrib V52    0.11453472107759637
#>     Attrib V53    0.10928528938849652
#>     Attrib V54    -0.05565591650535598
#>     Attrib V55    -0.5382291471779121
#>     Attrib V56    0.6480672949149455
#>     Attrib V57    -0.12639872139777583
#>     Attrib V58    0.9333074098745106
#>     Attrib V59    -0.1348580013665042
#>     Attrib V6    -0.701775291671715
#>     Attrib V60    -0.22566375465731917
#>     Attrib V7    -0.3738371063193028
#>     Attrib V8    -0.7563133546964796
#>     Attrib V9    0.49477462584791837
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.14864378821828036
#>     Attrib V1    0.6003731858565725
#>     Attrib V10    0.09387305826719153
#>     Attrib V11    0.5006713500469865
#>     Attrib V12    0.06117010241940322
#>     Attrib V13    0.0743319521175589
#>     Attrib V14    -0.2382586488028324
#>     Attrib V15    0.11317581080861844
#>     Attrib V16    0.18469066378870302
#>     Attrib V17    0.25515836698114425
#>     Attrib V18    0.2238285650607272
#>     Attrib V19    0.40518634243115337
#>     Attrib V2    0.24295673100311596
#>     Attrib V20    0.5824448171503388
#>     Attrib V21    0.16030492080101624
#>     Attrib V22    0.6885603531783766
#>     Attrib V23    0.5669388796214087
#>     Attrib V24    0.37698824521786695
#>     Attrib V25    -0.0813908928004176
#>     Attrib V26    -0.7487825972225395
#>     Attrib V27    -0.8596702855171047
#>     Attrib V28    0.06998611827130943
#>     Attrib V29    -0.19742717671742088
#>     Attrib V3    -0.04802035632842607
#>     Attrib V30    0.21787667792730797
#>     Attrib V31    -0.6613092937853157
#>     Attrib V32    0.6755042130680552
#>     Attrib V33    0.5768059048030901
#>     Attrib V34    -0.2977244941229295
#>     Attrib V35    0.0014598735683980615
#>     Attrib V36    -0.6715829496835906
#>     Attrib V37    -0.7331282080725656
#>     Attrib V38    0.10799101197024814
#>     Attrib V39    0.17241595195307882
#>     Attrib V4    -0.06145802739599039
#>     Attrib V40    -0.08536348185866177
#>     Attrib V41    0.1494373583610421
#>     Attrib V42    0.46789693584864495
#>     Attrib V43    0.5636176635090877
#>     Attrib V44    0.3261598130514096
#>     Attrib V45    0.21850084204135647
#>     Attrib V46    0.2566527571122625
#>     Attrib V47    -0.03367702463886314
#>     Attrib V48    0.20128738182001796
#>     Attrib V49    0.584941999477611
#>     Attrib V5    -0.4128937232784033
#>     Attrib V50    -0.10177227647695757
#>     Attrib V51    0.07996556458621847
#>     Attrib V52    -0.053381067216312944
#>     Attrib V53    -0.022503631261775875
#>     Attrib V54    0.13589169070592222
#>     Attrib V55    -0.2952056305731105
#>     Attrib V56    0.8378481540297044
#>     Attrib V57    0.07143254062074263
#>     Attrib V58    0.8524099004695661
#>     Attrib V59    -0.05347919756239757
#>     Attrib V6    -0.44373476707526405
#>     Attrib V60    -0.09896772884491856
#>     Attrib V7    -0.039059653254247775
#>     Attrib V8    -0.4899837279846587
#>     Attrib V9    0.3478299198625032
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.06654389469108865
#>     Attrib V1    0.57280554836124
#>     Attrib V10    0.0209238594282391
#>     Attrib V11    0.39170659337769975
#>     Attrib V12    -0.07391486829080589
#>     Attrib V13    0.06520186027756412
#>     Attrib V14    -0.07598886464049275
#>     Attrib V15    0.18447884974643333
#>     Attrib V16    0.21622617434856298
#>     Attrib V17    0.2757786821745056
#>     Attrib V18    0.24704366070027858
#>     Attrib V19    0.35280358803878725
#>     Attrib V2    0.22042545040070013
#>     Attrib V20    0.6233753489050277
#>     Attrib V21    0.31214210060568826
#>     Attrib V22    0.599677403548485
#>     Attrib V23    0.4676112438142401
#>     Attrib V24    0.22844122140657866
#>     Attrib V25    -0.24185215569841653
#>     Attrib V26    -0.7431498183762297
#>     Attrib V27    -0.8229056595213373
#>     Attrib V28    0.14720999612435764
#>     Attrib V29    0.08887130530614504
#>     Attrib V3    0.03829376253075448
#>     Attrib V30    0.21906502173304146
#>     Attrib V31    -0.6778640474588695
#>     Attrib V32    0.46748607472306075
#>     Attrib V33    0.4526847286434958
#>     Attrib V34    -0.29649670027437797
#>     Attrib V35    -0.017950173679497156
#>     Attrib V36    -0.555264587392048
#>     Attrib V37    -0.5796883290339427
#>     Attrib V38    0.1378067200528414
#>     Attrib V39    0.16553255939401879
#>     Attrib V4    -0.011260604944456827
#>     Attrib V40    -0.11232433225519922
#>     Attrib V41    0.07717577864179821
#>     Attrib V42    0.4372369629883934
#>     Attrib V43    0.4828678329595189
#>     Attrib V44    0.2988120496149158
#>     Attrib V45    0.2927270301997961
#>     Attrib V46    0.23734748213358095
#>     Attrib V47    -0.07648488875215921
#>     Attrib V48    0.1976231902766311
#>     Attrib V49    0.5618007993062176
#>     Attrib V5    -0.27722383700597875
#>     Attrib V50    -0.04757693880297658
#>     Attrib V51    0.13424224470073362
#>     Attrib V52    -0.06393286493924963
#>     Attrib V53    0.1147027362139523
#>     Attrib V54    0.03853370499402404
#>     Attrib V55    -0.2348963818855946
#>     Attrib V56    0.748334630130953
#>     Attrib V57    0.11636440061133267
#>     Attrib V58    0.7497806042127144
#>     Attrib V59    0.009954865512289794
#>     Attrib V6    -0.38470898600594533
#>     Attrib V60    -0.068420354570445
#>     Attrib V7    -0.034215895339618774
#>     Attrib V8    -0.47133580246499746
#>     Attrib V9    0.350635561414844
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.5935782359317506
#>     Attrib V1    -0.5997876119370893
#>     Attrib V10    -0.7353662746888464
#>     Attrib V11    -1.3404326373349822
#>     Attrib V12    -0.9327190077357189
#>     Attrib V13    -0.4598051547488617
#>     Attrib V14    0.5128104107208609
#>     Attrib V15    0.39733283735583774
#>     Attrib V16    0.7847272072669312
#>     Attrib V17    0.8878699633996564
#>     Attrib V18    0.7248278294469155
#>     Attrib V19    -0.467616875928887
#>     Attrib V2    -0.0038384503939659646
#>     Attrib V20    -1.1201016313555312
#>     Attrib V21    -0.29679748798828054
#>     Attrib V22    -0.6788382011594164
#>     Attrib V23    -0.768513293769482
#>     Attrib V24    -0.7740451215647014
#>     Attrib V25    0.2749934524673274
#>     Attrib V26    0.5885678350964908
#>     Attrib V27    0.8150064084079774
#>     Attrib V28    2.576127096665689E-4
#>     Attrib V29    0.17920803063058
#>     Attrib V3    0.13834019642278458
#>     Attrib V30    0.6046775781119992
#>     Attrib V31    2.3247596393492174
#>     Attrib V32    1.052028285162667
#>     Attrib V33    0.5138871975992184
#>     Attrib V34    0.5877498127224408
#>     Attrib V35    -0.1306868316001755
#>     Attrib V36    1.1507083195322905
#>     Attrib V37    1.4349333476016586
#>     Attrib V38    -0.22366751139865915
#>     Attrib V39    -0.21867402134710542
#>     Attrib V4    0.04203164237030251
#>     Attrib V40    0.6794715866919503
#>     Attrib V41    -0.011314344168340625
#>     Attrib V42    -0.20325191120353753
#>     Attrib V43    -0.9314816690209056
#>     Attrib V44    -0.25494685680622353
#>     Attrib V45    -0.66454297201577
#>     Attrib V46    -0.7123859032911111
#>     Attrib V47    -0.09291495063015384
#>     Attrib V48    -0.21767178585177263
#>     Attrib V49    -0.565787742709108
#>     Attrib V5    0.24629155785558776
#>     Attrib V50    0.11128708655000924
#>     Attrib V51    -0.2182733064402316
#>     Attrib V52    -0.29742474260537
#>     Attrib V53    0.04840069362332944
#>     Attrib V54    0.637953267137555
#>     Attrib V55    0.9178767007939256
#>     Attrib V56    -0.27369305498492874
#>     Attrib V57    -0.38417617604525695
#>     Attrib V58    -0.8171305768693926
#>     Attrib V59    -0.22524263552702556
#>     Attrib V6    0.6421286828500371
#>     Attrib V60    0.1488528761613518
#>     Attrib V7    0.623820108690151
#>     Attrib V8    1.084543369445457
#>     Attrib V9    -0.6415747208346472
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.02040932330156467
#>     Attrib V1    0.3759175781894158
#>     Attrib V10    -0.0780686875297403
#>     Attrib V11    0.15455924106250532
#>     Attrib V12    0.00417565585093798
#>     Attrib V13    1.6974256378739322E-4
#>     Attrib V14    0.1272825361606404
#>     Attrib V15    0.20643803931400503
#>     Attrib V16    0.19413876348575365
#>     Attrib V17    0.12808982367447486
#>     Attrib V18    0.18373555824952428
#>     Attrib V19    0.15412202918568357
#>     Attrib V2    0.2134920706520349
#>     Attrib V20    0.271337976931167
#>     Attrib V21    0.10723571632681667
#>     Attrib V22    0.13472471207701125
#>     Attrib V23    0.1385768098564642
#>     Attrib V24    0.16564676145825738
#>     Attrib V25    0.008169274475073974
#>     Attrib V26    -0.2534403070228474
#>     Attrib V27    -0.28428623216302545
#>     Attrib V28    -0.04850139218595784
#>     Attrib V29    0.009042030091800803
#>     Attrib V3    0.12876116084308492
#>     Attrib V30    0.06238481000223754
#>     Attrib V31    -0.2884320139275591
#>     Attrib V32    0.11672858235322538
#>     Attrib V33    0.10026209735348113
#>     Attrib V34    -0.131322631289916
#>     Attrib V35    0.05515601089551039
#>     Attrib V36    -0.19265572975110618
#>     Attrib V37    -0.18034873210224914
#>     Attrib V38    0.0708188527868605
#>     Attrib V39    0.06619798228136027
#>     Attrib V4    0.14888792140592702
#>     Attrib V40    -0.0682776950923914
#>     Attrib V41    0.05090837824289907
#>     Attrib V42    0.1577630003096453
#>     Attrib V43    0.19748564204720376
#>     Attrib V44    0.11017287818398812
#>     Attrib V45    0.0975723813342534
#>     Attrib V46    0.10134171837128382
#>     Attrib V47    -0.014330564440300522
#>     Attrib V48    0.06896218774063878
#>     Attrib V49    0.19951492945453853
#>     Attrib V5    -0.03042473274976315
#>     Attrib V50    0.08685836913933465
#>     Attrib V51    0.10064838690929692
#>     Attrib V52    0.05461890702747285
#>     Attrib V53    0.3032201344298085
#>     Attrib V54    0.19809517815116884
#>     Attrib V55    0.1727151212678284
#>     Attrib V56    0.4578195803177736
#>     Attrib V57    0.2220376832791197
#>     Attrib V58    0.42254293663895376
#>     Attrib V59    0.21178757694186964
#>     Attrib V6    -0.07497593351745242
#>     Attrib V60    0.10265120998631333
#>     Attrib V7    0.00148134726030633
#>     Attrib V8    -0.16305636393439404
#>     Attrib V9    0.12178796951126815
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.47226323753516003
#>     Attrib V1    0.3535760024690883
#>     Attrib V10    0.6021051139485789
#>     Attrib V11    1.162766902586384
#>     Attrib V12    1.30328559644914
#>     Attrib V13    0.5709549929338836
#>     Attrib V14    -0.14659335612370145
#>     Attrib V15    -0.5639911611884303
#>     Attrib V16    -0.5463872467389193
#>     Attrib V17    -0.4740499647670936
#>     Attrib V18    0.0093242619592415
#>     Attrib V19    -0.1082287383891976
#>     Attrib V2    0.513243425487768
#>     Attrib V20    -0.3961813155579213
#>     Attrib V21    -0.1697244436826582
#>     Attrib V22    0.09582641719179912
#>     Attrib V23    -0.04258746094150929
#>     Attrib V24    -0.18824458695639576
#>     Attrib V25    -0.25419460433278823
#>     Attrib V26    0.6929346488316238
#>     Attrib V27    1.3320219724733093
#>     Attrib V28    1.590595137028536
#>     Attrib V29    1.4856536037918908
#>     Attrib V3    0.3096528338093163
#>     Attrib V30    0.728046205401875
#>     Attrib V31    -0.849732580647792
#>     Attrib V32    -0.2875884468491945
#>     Attrib V33    -0.6920876171850838
#>     Attrib V34    -0.47528440600042837
#>     Attrib V35    0.11127537581938106
#>     Attrib V36    -0.5865016385214803
#>     Attrib V37    0.0741938705176137
#>     Attrib V38    -0.20095217116720718
#>     Attrib V39    -0.1898375766141572
#>     Attrib V4    0.4972362428782963
#>     Attrib V40    0.2253651147755434
#>     Attrib V41    0.9182156457699272
#>     Attrib V42    -0.09949315747895837
#>     Attrib V43    0.014259690064704936
#>     Attrib V44    0.27649713714150725
#>     Attrib V45    0.3716338698635504
#>     Attrib V46    0.24700520821206545
#>     Attrib V47    0.022966808567880085
#>     Attrib V48    0.6297226789071694
#>     Attrib V49    0.4685072131254866
#>     Attrib V5    -0.038800861251473875
#>     Attrib V50    -0.41716004310164706
#>     Attrib V51    0.5061113709617807
#>     Attrib V52    1.3300582950329103
#>     Attrib V53    0.43027097463208
#>     Attrib V54    -0.15021069235433746
#>     Attrib V55    -1.261959255912686
#>     Attrib V56    0.07993918917750668
#>     Attrib V57    0.018786867452808925
#>     Attrib V58    0.20553305852604659
#>     Attrib V59    -0.4601015039888383
#>     Attrib V6    0.4996600707114436
#>     Attrib V60    0.08727990738854328
#>     Attrib V7    -0.3003834167013357
#>     Attrib V8    -0.6349558419947521
#>     Attrib V9    0.6126583348769972
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.031168219774243614
#>     Attrib V1    0.4065959734419301
#>     Attrib V10    -0.019923822138771887
#>     Attrib V11    0.2438536855573518
#>     Attrib V12    -0.04625723770611484
#>     Attrib V13    0.03759963915404368
#>     Attrib V14    0.0379960237501323
#>     Attrib V15    0.18278573278088814
#>     Attrib V16    0.2065350396431376
#>     Attrib V17    0.18298436526132467
#>     Attrib V18    0.17310660114718246
#>     Attrib V19    0.25824778177066804
#>     Attrib V2    0.23634808253563575
#>     Attrib V20    0.34805500033343395
#>     Attrib V21    0.1457451103604702
#>     Attrib V22    0.24028449763136572
#>     Attrib V23    0.21159831895706244
#>     Attrib V24    0.2189593557943464
#>     Attrib V25    -0.0375424708750794
#>     Attrib V26    -0.31504686136679716
#>     Attrib V27    -0.4270172738461511
#>     Attrib V28    -0.012679852767648258
#>     Attrib V29    0.026389231555782648
#>     Attrib V3    0.10581683907065904
#>     Attrib V30    0.10956041658758768
#>     Attrib V31    -0.37882793447699553
#>     Attrib V32    0.14863623411845037
#>     Attrib V33    0.15404233614326118
#>     Attrib V34    -0.1507475951263498
#>     Attrib V35    0.052645635536115995
#>     Attrib V36    -0.1788884044823281
#>     Attrib V37    -0.2512515059371308
#>     Attrib V38    0.17559752871412249
#>     Attrib V39    0.10901035026643956
#>     Attrib V4    0.1487537418909439
#>     Attrib V40    -0.056934692209642826
#>     Attrib V41    0.01214859583903399
#>     Attrib V42    0.08915758366460906
#>     Attrib V43    0.2412672821285872
#>     Attrib V44    0.18853859526766842
#>     Attrib V45    0.14303516293539437
#>     Attrib V46    0.1467570766619368
#>     Attrib V47    -0.0028160685061320257
#>     Attrib V48    0.1701284904883955
#>     Attrib V49    0.32309116880064
#>     Attrib V5    -0.09177756670254496
#>     Attrib V50    0.02735393192746539
#>     Attrib V51    0.08347228041533639
#>     Attrib V52    0.048946653943202655
#>     Attrib V53    0.31723446590687204
#>     Attrib V54    0.24183712569431864
#>     Attrib V55    0.128294149239762
#>     Attrib V56    0.49233418724906103
#>     Attrib V57    0.2638840636743672
#>     Attrib V58    0.44867580961317344
#>     Attrib V59    0.1817860146965769
#>     Attrib V6    -0.20134412278624056
#>     Attrib V60    0.09014737764337875
#>     Attrib V7    -0.006612303392631623
#>     Attrib V8    -0.29579198522472194
#>     Attrib V9    0.12644406229191962
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.459804298826977
#>     Attrib V1    0.3292982647037424
#>     Attrib V10    0.6919033906482464
#>     Attrib V11    1.3049463660357654
#>     Attrib V12    1.7334028097429186
#>     Attrib V13    0.7688552782042138
#>     Attrib V14    -0.17107273410464172
#>     Attrib V15    -0.6033349201494782
#>     Attrib V16    -0.6578220530623664
#>     Attrib V17    -0.5300977977362575
#>     Attrib V18    -0.07181845398916945
#>     Attrib V19    -0.2625376132132836
#>     Attrib V2    0.5743605215020509
#>     Attrib V20    -0.6630715857959466
#>     Attrib V21    -0.3381305669593095
#>     Attrib V22    -0.06423417252917886
#>     Attrib V23    -0.25227399095215003
#>     Attrib V24    -0.22263155136949098
#>     Attrib V25    -0.16424108138703927
#>     Attrib V26    0.8073725756156961
#>     Attrib V27    1.4901171089507645
#>     Attrib V28    1.5651087530498087
#>     Attrib V29    1.351840910990111
#>     Attrib V3    0.3077786688422728
#>     Attrib V30    0.7286507557048564
#>     Attrib V31    -0.7756206476784014
#>     Attrib V32    -0.26331121334017554
#>     Attrib V33    -0.7293919139052926
#>     Attrib V34    -0.3876083230296422
#>     Attrib V35    0.12349326594801481
#>     Attrib V36    -0.5924860446492113
#>     Attrib V37    0.08187127473148403
#>     Attrib V38    -0.16458954858617628
#>     Attrib V39    -0.09200835880195941
#>     Attrib V4    0.4903177958316085
#>     Attrib V40    0.23235772056825027
#>     Attrib V41    0.835596341997698
#>     Attrib V42    -0.3239920502205416
#>     Attrib V43    0.00851651469790081
#>     Attrib V44    0.24344486951933528
#>     Attrib V45    0.3193134809143348
#>     Attrib V46    0.15801503701473754
#>     Attrib V47    -0.06404676892655156
#>     Attrib V48    0.6043408763357055
#>     Attrib V49    0.4562762836891217
#>     Attrib V5    -0.11899257834054183
#>     Attrib V50    -0.5399124447725443
#>     Attrib V51    0.5185847832987505
#>     Attrib V52    1.3596715310641159
#>     Attrib V53    0.4995372837759114
#>     Attrib V54    -0.1008609390587623
#>     Attrib V55    -1.0870185779425485
#>     Attrib V56    0.21251749990403207
#>     Attrib V57    -0.028421187074945863
#>     Attrib V58    0.18202896711767455
#>     Attrib V59    -0.3900231687515781
#>     Attrib V6    0.5886852497445103
#>     Attrib V60    0.13674325407133653
#>     Attrib V7    -0.2548533577199368
#>     Attrib V8    -0.640318450991631
#>     Attrib V9    0.5329088885900792
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.4265216611355601
#>     Attrib V1    -0.3734059835480382
#>     Attrib V10    -0.15410317170354187
#>     Attrib V11    -0.6170914422655001
#>     Attrib V12    -0.29327409819643424
#>     Attrib V13    -0.07492484539154337
#>     Attrib V14    0.5578903523793447
#>     Attrib V15    0.17593050172453453
#>     Attrib V16    -0.04556659566941675
#>     Attrib V17    -0.1623918476980717
#>     Attrib V18    -0.09851403714956411
#>     Attrib V19    -0.20096776249737203
#>     Attrib V2    -0.14345704681002147
#>     Attrib V20    -0.28829407683668296
#>     Attrib V21    0.02210965254436765
#>     Attrib V22    -0.4766283234494617
#>     Attrib V23    -0.3289565175280412
#>     Attrib V24    -0.2944280858920786
#>     Attrib V25    0.19417997656317038
#>     Attrib V26    0.615367519037376
#>     Attrib V27    0.5440519762407435
#>     Attrib V28    -0.34778275890993393
#>     Attrib V29    -0.047654746680417935
#>     Attrib V3    0.22140320270008929
#>     Attrib V30    -0.3076780052299152
#>     Attrib V31    0.6180985630963856
#>     Attrib V32    -0.7368985477509195
#>     Attrib V33    -0.45453750650011127
#>     Attrib V34    0.2539817809443878
#>     Attrib V35    -0.011221255940590619
#>     Attrib V36    0.7238153194185184
#>     Attrib V37    0.6416501889165689
#>     Attrib V38    -0.16912081121762235
#>     Attrib V39    -0.24704037657626884
#>     Attrib V4    0.173214087542553
#>     Attrib V40    -0.00519959184287011
#>     Attrib V41    -0.29462683165560627
#>     Attrib V42    -0.3787630245983891
#>     Attrib V43    -0.5230645092210199
#>     Attrib V44    -0.3116721457212109
#>     Attrib V45    -0.265917032298835
#>     Attrib V46    -0.2943917450404458
#>     Attrib V47    0.07482613070865601
#>     Attrib V48    -0.3701299244513046
#>     Attrib V49    -0.6494149273879811
#>     Attrib V5    0.5260461988207142
#>     Attrib V50    0.34582883546086507
#>     Attrib V51    -0.1091703717271365
#>     Attrib V52    -0.032647445764980056
#>     Attrib V53    0.24243961402074274
#>     Attrib V54    0.24329473516652192
#>     Attrib V55    0.653282685000672
#>     Attrib V56    -0.7253448550638121
#>     Attrib V57    -0.0011054502307283403
#>     Attrib V58    -0.6076132706490692
#>     Attrib V59    0.24585227915616173
#>     Attrib V6    0.3623204556074633
#>     Attrib V60    0.15751561965594515
#>     Attrib V7    0.04187454976083004
#>     Attrib V8    0.6015679063989986
#>     Attrib V9    -0.41873021113646075
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.01533537947811087
#>     Attrib V1    0.5351104767596276
#>     Attrib V10    0.02320590521640461
#>     Attrib V11    0.39701431188762154
#>     Attrib V12    -0.04177900872248845
#>     Attrib V13    -0.04781581812595643
#>     Attrib V14    -0.2063453535511332
#>     Attrib V15    0.08507266220269251
#>     Attrib V16    0.24579310658524078
#>     Attrib V17    0.3504475776749111
#>     Attrib V18    0.27416040945363185
#>     Attrib V19    0.33117912348772666
#>     Attrib V2    0.1730457239506038
#>     Attrib V20    0.6180231231328243
#>     Attrib V21    0.20478646859780472
#>     Attrib V22    0.5789455045145492
#>     Attrib V23    0.5036238938949752
#>     Attrib V24    0.34592852661270984
#>     Attrib V25    -0.048616270445225596
#>     Attrib V26    -0.7160465522463624
#>     Attrib V27    -0.8639387827218309
#>     Attrib V28    -0.05652886110857186
#>     Attrib V29    -0.2119149759741454
#>     Attrib V3    -0.057502468111161636
#>     Attrib V30    0.15618561578522328
#>     Attrib V31    -0.6296289565147541
#>     Attrib V32    0.5134249150966108
#>     Attrib V33    0.5134231735907046
#>     Attrib V34    -0.16492157243087094
#>     Attrib V35    0.0752751314801549
#>     Attrib V36    -0.4523446106642402
#>     Attrib V37    -0.597603876272663
#>     Attrib V38    0.2199705354696275
#>     Attrib V39    0.12234758947225352
#>     Attrib V4    -0.04812371733441635
#>     Attrib V40    -0.15301466431293104
#>     Attrib V41    -0.009060454901150362
#>     Attrib V42    0.3770833416667765
#>     Attrib V43    0.5056000526291363
#>     Attrib V44    0.3307447970882688
#>     Attrib V45    0.29848878708401805
#>     Attrib V46    0.27857393832429417
#>     Attrib V47    0.016194295816688152
#>     Attrib V48    0.20802150177256137
#>     Attrib V49    0.49712031332878315
#>     Attrib V5    -0.31253111688708396
#>     Attrib V50    -8.38862198329182E-4
#>     Attrib V51    0.18868638662882214
#>     Attrib V52    -0.13513641645795543
#>     Attrib V53    0.02979350419989492
#>     Attrib V54    0.18964046305050627
#>     Attrib V55    -0.15568429546785367
#>     Attrib V56    0.7463240095748304
#>     Attrib V57    0.15060034072717413
#>     Attrib V58    0.7457147923719508
#>     Attrib V59    -0.035573193594030404
#>     Attrib V6    -0.36741410095383836
#>     Attrib V60    -0.04622957591962612
#>     Attrib V7    -0.017507059236102903
#>     Attrib V8    -0.3925994564966992
#>     Attrib V9    0.35057824504071133
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.06908123073525697
#>     Attrib V1    0.6078530210221826
#>     Attrib V10    0.030532042498716275
#>     Attrib V11    0.5177151638014443
#>     Attrib V12    -0.13460754836072697
#>     Attrib V13    -7.841556706466566E-4
#>     Attrib V14    -0.20470426081238915
#>     Attrib V15    0.06651236213679182
#>     Attrib V16    0.2281918791215792
#>     Attrib V17    0.2566512936249207
#>     Attrib V18    0.22128546742568458
#>     Attrib V19    0.39043471999565155
#>     Attrib V2    0.2616318875759936
#>     Attrib V20    0.6293343740069706
#>     Attrib V21    0.24967202692649232
#>     Attrib V22    0.7627025852729638
#>     Attrib V23    0.6312158260237632
#>     Attrib V24    0.34520449227618
#>     Attrib V25    -0.17828601534479038
#>     Attrib V26    -0.8150729627169178
#>     Attrib V27    -0.90287430149043
#>     Attrib V28    8.126915877534232E-4
#>     Attrib V29    -0.07609905378528661
#>     Attrib V3    -0.04681087278561126
#>     Attrib V30    0.15394373860100516
#>     Attrib V31    -0.8099829929782597
#>     Attrib V32    0.5539774393077997
#>     Attrib V33    0.59711428461518
#>     Attrib V34    -0.2712643593715569
#>     Attrib V35    0.02487860283831867
#>     Attrib V36    -0.5570025786862072
#>     Attrib V37    -0.6962861661904938
#>     Attrib V38    0.16066858222173636
#>     Attrib V39    0.07006574390427939
#>     Attrib V4    0.016239745039483708
#>     Attrib V40    -0.1585638072665474
#>     Attrib V41    0.07308235501799809
#>     Attrib V42    0.4757679837706601
#>     Attrib V43    0.6532778435830037
#>     Attrib V44    0.2902382106365135
#>     Attrib V45    0.31217391813563466
#>     Attrib V46    0.4226952975424172
#>     Attrib V47    0.012389348500206768
#>     Attrib V48    0.2541476060943496
#>     Attrib V49    0.5681099298189096
#>     Attrib V5    -0.3744805270817504
#>     Attrib V50    -0.06268167194051782
#>     Attrib V51    0.17563565880675974
#>     Attrib V52    -0.026986667425647485
#>     Attrib V53    0.08848351374210567
#>     Attrib V54    0.09180408491246896
#>     Attrib V55    -0.3384943788112275
#>     Attrib V56    0.7746215483929905
#>     Attrib V57    0.13212482009076387
#>     Attrib V58    0.9072500991356786
#>     Attrib V59    -1.0170914849350047E-4
#>     Attrib V6    -0.5020357013359841
#>     Attrib V60    -0.06620918515641337
#>     Attrib V7    -0.02282289191565228
#>     Attrib V8    -0.44847947413485645
#>     Attrib V9    0.42819372178599147
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.05438859162260899
#>     Attrib V1    0.4563878085095798
#>     Attrib V10    -0.11297942149786865
#>     Attrib V11    0.19835915978275134
#>     Attrib V12    -0.052545461242328596
#>     Attrib V13    0.10497107763508022
#>     Attrib V14    0.14412698530913146
#>     Attrib V15    0.23725024535176217
#>     Attrib V16    0.16013802230551843
#>     Attrib V17    0.2341432066628819
#>     Attrib V18    0.24967808326880989
#>     Attrib V19    0.2678901355109744
#>     Attrib V2    0.2221861934493313
#>     Attrib V20    0.44911554167692425
#>     Attrib V21    0.18518414969634348
#>     Attrib V22    0.24833324595103462
#>     Attrib V23    0.2641552567956351
#>     Attrib V24    0.21277962671965067
#>     Attrib V25    -0.006053355387641757
#>     Attrib V26    -0.3898046931922091
#>     Attrib V27    -0.40336886905688224
#>     Attrib V28    -0.03553911226893979
#>     Attrib V29    0.06474217817883644
#>     Attrib V3    0.16853221346414737
#>     Attrib V30    0.09361182132273126
#>     Attrib V31    -0.43941611205228437
#>     Attrib V32    0.1267664537638776
#>     Attrib V33    0.11520017414724713
#>     Attrib V34    -0.1358896110933292
#>     Attrib V35    0.016918827231113456
#>     Attrib V36    -0.25434605729886123
#>     Attrib V37    -0.24517294080877017
#>     Attrib V38    0.13561883904995256
#>     Attrib V39    0.18147034523661038
#>     Attrib V4    0.12917165450179774
#>     Attrib V40    -0.021529778585182634
#>     Attrib V41    0.021733951251125587
#>     Attrib V42    0.20517186714567498
#>     Attrib V43    0.24309148380240464
#>     Attrib V44    0.1374779061585498
#>     Attrib V45    0.07218276074557357
#>     Attrib V46    0.14131894740131226
#>     Attrib V47    0.014057444261175825
#>     Attrib V48    0.10547789061268563
#>     Attrib V49    0.33335541042649486
#>     Attrib V5    -0.033894594363600754
#>     Attrib V50    0.037342366693326225
#>     Attrib V51    0.06643899637681462
#>     Attrib V52    0.026125246706462848
#>     Attrib V53    0.3459655887574627
#>     Attrib V54    0.23927079591847542
#>     Attrib V55    0.1809707882660259
#>     Attrib V56    0.5905917368311984
#>     Attrib V57    0.2390742185179998
#>     Attrib V58    0.5043825048848127
#>     Attrib V59    0.26457510473862383
#>     Attrib V6    -0.1552075797254174
#>     Attrib V60    0.13057065021186007
#>     Attrib V7    0.014619978845494944
#>     Attrib V8    -0.31539597756443893
#>     Attrib V9    0.08438687850533884
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.06948095364415122
#>     Attrib V1    0.5675987158198259
#>     Attrib V10    -0.01160036092434849
#>     Attrib V11    0.42087069257959697
#>     Attrib V12    -0.11704656319483996
#>     Attrib V13    -0.09131274036311973
#>     Attrib V14    -0.23759441970064915
#>     Attrib V15    0.026857911118381025
#>     Attrib V16    -0.09742339436519394
#>     Attrib V17    0.07770931621919884
#>     Attrib V18    0.2513422433924524
#>     Attrib V19    0.3200594612422992
#>     Attrib V2    0.18879433741100593
#>     Attrib V20    0.6664193509005987
#>     Attrib V21    0.24248937521440708
#>     Attrib V22    0.7203809347157949
#>     Attrib V23    0.7315461016676785
#>     Attrib V24    0.4993075710425318
#>     Attrib V25    0.06618497546950453
#>     Attrib V26    -0.7172276271076078
#>     Attrib V27    -1.196922061436831
#>     Attrib V28    -0.6194444484370082
#>     Attrib V29    -0.5032034029750985
#>     Attrib V3    -0.11799947287806654
#>     Attrib V30    -0.14099822339579032
#>     Attrib V31    -0.799882923300025
#>     Attrib V32    0.28679021732165233
#>     Attrib V33    0.445141942904099
#>     Attrib V34    -0.2070832233570495
#>     Attrib V35    0.21816786091909754
#>     Attrib V36    -0.45845327361571153
#>     Attrib V37    -0.735718617214676
#>     Attrib V38    -0.07972349210762379
#>     Attrib V39    -0.08524716229844509
#>     Attrib V4    -0.1444296462649875
#>     Attrib V40    -0.33864357351610747
#>     Attrib V41    -0.19867686397607007
#>     Attrib V42    0.25625024647646044
#>     Attrib V43    0.6083838340871606
#>     Attrib V44    0.2614358454196109
#>     Attrib V45    0.14889988626477915
#>     Attrib V46    0.33880203750716525
#>     Attrib V47    0.11950528802924139
#>     Attrib V48    0.36043871750628953
#>     Attrib V49    0.577789114383715
#>     Attrib V5    -0.5861081692980867
#>     Attrib V50    0.2378943636655724
#>     Attrib V51    0.22516235645270166
#>     Attrib V52    0.007932114944591409
#>     Attrib V53    0.3067146851190252
#>     Attrib V54    0.31997857396911583
#>     Attrib V55    -0.02492711757932572
#>     Attrib V56    0.693572940546624
#>     Attrib V57    0.07390288765286245
#>     Attrib V58    0.8931740849429335
#>     Attrib V59    0.013896398300914424
#>     Attrib V6    -0.6431439971825277
#>     Attrib V60    0.02385917066176483
#>     Attrib V7    -0.2603270575846302
#>     Attrib V8    -0.6911292097187026
#>     Attrib V9    0.2703200922586546
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.3769125279107237
#>     Attrib V1    -0.5082772032041158
#>     Attrib V10    -0.3869551789601849
#>     Attrib V11    -0.9416259761629743
#>     Attrib V12    -0.424230292084533
#>     Attrib V13    -0.25179053336919516
#>     Attrib V14    0.5011003714692157
#>     Attrib V15    0.293202150783043
#>     Attrib V16    -0.047932791193618186
#>     Attrib V17    -0.22876545545973728
#>     Attrib V18    -0.2653699102142568
#>     Attrib V19    -0.30461423386332537
#>     Attrib V2    -0.12986630523437903
#>     Attrib V20    -0.5030218617971567
#>     Attrib V21    -0.24425562260561381
#>     Attrib V22    -0.7595613542659259
#>     Attrib V23    -0.6379550191841974
#>     Attrib V24    -0.3748921532554141
#>     Attrib V25    0.2158200743895117
#>     Attrib V26    0.7503648833869871
#>     Attrib V27    0.7963198949654052
#>     Attrib V28    -0.1374143790816233
#>     Attrib V29    0.34952964974910455
#>     Attrib V3    0.20250556864757208
#>     Attrib V30    -0.20161490952366734
#>     Attrib V31    0.9097752261434388
#>     Attrib V32    -0.4829134415270311
#>     Attrib V33    -0.5070267643475886
#>     Attrib V34    0.41778809261219285
#>     Attrib V35    0.09944435257804154
#>     Attrib V36    0.8921367485429977
#>     Attrib V37    1.072298134336742
#>     Attrib V38    -0.11751959388478687
#>     Attrib V39    -0.19283674889688152
#>     Attrib V4    0.04970660905053934
#>     Attrib V40    0.0418087258854175
#>     Attrib V41    -0.3812493212411722
#>     Attrib V42    -0.4604319539625416
#>     Attrib V43    -0.6862660542576555
#>     Attrib V44    -0.40408570609998906
#>     Attrib V45    -0.28826259170735646
#>     Attrib V46    -0.25734535567211675
#>     Attrib V47    0.14755219936312738
#>     Attrib V48    -0.26073500703595626
#>     Attrib V49    -0.6942360767222779
#>     Attrib V5    0.3846602234952572
#>     Attrib V50    0.2856113724018611
#>     Attrib V51    -0.09810935220724351
#>     Attrib V52    0.021455463814029595
#>     Attrib V53    0.3638140084519126
#>     Attrib V54    0.11532275417791014
#>     Attrib V55    0.6865038343946518
#>     Attrib V56    -0.6834326895042718
#>     Attrib V57    -0.24638238507423446
#>     Attrib V58    -0.7980698006236061
#>     Attrib V59    0.06636976130372362
#>     Attrib V6    0.258528440062691
#>     Attrib V60    0.08283674077471528
#>     Attrib V7    -0.2365199631089671
#>     Attrib V8    0.32975734265175577
#>     Attrib V9    -0.648177308537281
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.24473223364872382
#>     Attrib V1    -0.19816307219790422
#>     Attrib V10    -0.04470268400037313
#>     Attrib V11    -0.27235535128385774
#>     Attrib V12    -0.1672818221548123
#>     Attrib V13    -0.031429931718152684
#>     Attrib V14    0.1852415757431759
#>     Attrib V15    0.0828352934054145
#>     Attrib V16    0.055689035824917375
#>     Attrib V17    0.029528375351853032
#>     Attrib V18    0.05573419128541624
#>     Attrib V19    7.608824104529727E-4
#>     Attrib V2    -0.1295562687280178
#>     Attrib V20    -0.06325830818719506
#>     Attrib V21    0.0924152704719801
#>     Attrib V22    -0.04653926250052853
#>     Attrib V23    -0.03713767906376771
#>     Attrib V24    -0.010273352324023887
#>     Attrib V25    0.13380479113755214
#>     Attrib V26    0.14017226787758877
#>     Attrib V27    0.029520010700366566
#>     Attrib V28    -0.28479909180737883
#>     Attrib V29    -0.12927077739585924
#>     Attrib V3    0.12334288560947437
#>     Attrib V30    -0.30650325550408336
#>     Attrib V31    0.0751069687256944
#>     Attrib V32    -0.29125956897865807
#>     Attrib V33    -0.17709370833929367
#>     Attrib V34    0.1548289765926992
#>     Attrib V35    0.005937282214789377
#>     Attrib V36    0.30738470240301086
#>     Attrib V37    0.2877333505862016
#>     Attrib V38    -0.1125345428257259
#>     Attrib V39    -0.12796781183951428
#>     Attrib V4    0.10358432776603181
#>     Attrib V40    -0.024065377128194627
#>     Attrib V41    -0.04295115776153642
#>     Attrib V42    -0.03499641730632129
#>     Attrib V43    -0.19237000093902792
#>     Attrib V44    -0.18711510971950363
#>     Attrib V45    -0.15168591306790444
#>     Attrib V46    -0.08043236784166176
#>     Attrib V47    0.04794100893642511
#>     Attrib V48    -0.1911992482025735
#>     Attrib V49    -0.31777915742097584
#>     Attrib V5    0.2533566322131659
#>     Attrib V50    0.12163615518524502
#>     Attrib V51    0.027088859576745675
#>     Attrib V52    0.030064196360877052
#>     Attrib V53    0.08185108957264495
#>     Attrib V54    0.060534017479886744
#>     Attrib V55    0.2413054495763424
#>     Attrib V56    -0.26239779600936364
#>     Attrib V57    0.02991279373635083
#>     Attrib V58    -0.13375975090589476
#>     Attrib V59    0.10216143200768427
#>     Attrib V6    0.1987178162054913
#>     Attrib V60    0.10519876578850983
#>     Attrib V7    0.013739965629447244
#>     Attrib V8    0.2394625376845676
#>     Attrib V9    -0.10014506478335287
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.03766257887168912
#>     Attrib V1    0.3905088568765572
#>     Attrib V10    0.0064596447699330675
#>     Attrib V11    0.18936984211795355
#>     Attrib V12    -0.07698039539720428
#>     Attrib V13    -0.02885867571027074
#>     Attrib V14    0.09015283912167037
#>     Attrib V15    0.25819520524993284
#>     Attrib V16    0.15317047378468923
#>     Attrib V17    0.14797773449046828
#>     Attrib V18    0.13074869953689308
#>     Attrib V19    0.17173234339307686
#>     Attrib V2    0.2708153447825213
#>     Attrib V20    0.2502677460379492
#>     Attrib V21    0.08311376091306125
#>     Attrib V22    0.21055092364289998
#>     Attrib V23    0.10096351742833952
#>     Attrib V24    0.13647280840341028
#>     Attrib V25    -0.07225218304822209
#>     Attrib V26    -0.2934741548439132
#>     Attrib V27    -0.3501058901049351
#>     Attrib V28    -0.07800142754553621
#>     Attrib V29    -0.04003608183652578
#>     Attrib V3    0.10556504562476024
#>     Attrib V30    0.08649733282129252
#>     Attrib V31    -0.2365645942487023
#>     Attrib V32    0.07783557729219602
#>     Attrib V33    0.13930237032387974
#>     Attrib V34    -0.13586120556031112
#>     Attrib V35    0.08062349398619897
#>     Attrib V36    -0.17354581653320791
#>     Attrib V37    -0.18634055759619714
#>     Attrib V38    0.1571091935077544
#>     Attrib V39    0.11391380138940069
#>     Attrib V4    0.11609448014813488
#>     Attrib V40    -0.08494337857328375
#>     Attrib V41    0.005440510157043839
#>     Attrib V42    0.07452275006852635
#>     Attrib V43    0.21714629035063496
#>     Attrib V44    0.14324226781503022
#>     Attrib V45    0.13494110852852123
#>     Attrib V46    0.06538811673229455
#>     Attrib V47    -0.04896716212602159
#>     Attrib V48    0.1531278851390605
#>     Attrib V49    0.19469813883151083
#>     Attrib V5    -0.04811620293238605
#>     Attrib V50    0.07151594046006249
#>     Attrib V51    0.10783483611152123
#>     Attrib V52    0.0385645074814784
#>     Attrib V53    0.20741226557499118
#>     Attrib V54    0.1992378648318084
#>     Attrib V55    0.2454957774684192
#>     Attrib V56    0.4615604891941052
#>     Attrib V57    0.26146780798783126
#>     Attrib V58    0.3606170541042232
#>     Attrib V59    0.11254054159774712
#>     Attrib V6    -0.11076175078849017
#>     Attrib V60    0.062319520095298175
#>     Attrib V7    -0.04434430467654623
#>     Attrib V8    -0.16422136955104535
#>     Attrib V9    0.11253716301197575
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.21418968443760913
#>     Attrib V1    0.11290626972234748
#>     Attrib V10    0.05235126102204269
#>     Attrib V11    0.06546868497138102
#>     Attrib V12    -0.009824932883952246
#>     Attrib V13    0.001155971045427641
#>     Attrib V14    0.07529687343970164
#>     Attrib V15    0.03618225095671903
#>     Attrib V16    0.05167730735221762
#>     Attrib V17    0.008204274849808957
#>     Attrib V18    0.05874853311587215
#>     Attrib V19    -0.028511926871197607
#>     Attrib V2    0.1093908635515129
#>     Attrib V20    0.04188612589098967
#>     Attrib V21    0.03277167524552995
#>     Attrib V22    0.003589414004219162
#>     Attrib V23    0.019452552388503973
#>     Attrib V24    -7.403228123536558E-4
#>     Attrib V25    0.02853231386747445
#>     Attrib V26    -0.010606504532041927
#>     Attrib V27    -0.0658110296453133
#>     Attrib V28    -0.073421968827963
#>     Attrib V29    -0.06270784411711303
#>     Attrib V3    0.16215771083937086
#>     Attrib V30    -0.06817711777644707
#>     Attrib V31    -0.09663453907520371
#>     Attrib V32    -0.006955997467106936
#>     Attrib V33    0.026926086200066826
#>     Attrib V34    0.04349845304293752
#>     Attrib V35    0.026072053629366293
#>     Attrib V36    0.09049598965034454
#>     Attrib V37    0.01710196983948253
#>     Attrib V38    0.01691259585504179
#>     Attrib V39    0.05425092232066803
#>     Attrib V4    0.09322771027698702
#>     Attrib V40    -0.009175524285279934
#>     Attrib V41    -0.005086366063688946
#>     Attrib V42    0.04560925778310669
#>     Attrib V43    0.053892357106461536
#>     Attrib V44    0.10403075274856129
#>     Attrib V45    0.014758071945475829
#>     Attrib V46    0.050308115757343064
#>     Attrib V47    0.09144112540666058
#>     Attrib V48    0.060231423266823535
#>     Attrib V49    0.07709297327145243
#>     Attrib V5    0.08880060484494931
#>     Attrib V50    0.0014763890221719284
#>     Attrib V51    0.14195017031704768
#>     Attrib V52    0.07734084552055413
#>     Attrib V53    0.09958783790220202
#>     Attrib V54    0.06705039238530398
#>     Attrib V55    0.1029915795216007
#>     Attrib V56    0.1233294160174805
#>     Attrib V57    0.0663804128735958
#>     Attrib V58    0.12152373428989935
#>     Attrib V59    0.09748445289710204
#>     Attrib V6    0.020243765549410896
#>     Attrib V60    0.08861856489038855
#>     Attrib V7    0.05644198674654823
#>     Attrib V8    0.048727386909440805
#>     Attrib V9    0.09109254917423791
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.3924993070231107
#>     Attrib V1    0.12282332792723687
#>     Attrib V10    0.4474186742836099
#>     Attrib V11    0.8637559533624565
#>     Attrib V12    0.9940339423258859
#>     Attrib V13    0.364899847606962
#>     Attrib V14    -0.3895106758011897
#>     Attrib V15    -0.5728739441349927
#>     Attrib V16    -0.4884517655588715
#>     Attrib V17    -0.2725088275049043
#>     Attrib V18    0.09599659527532044
#>     Attrib V19    0.030109503079239923
#>     Attrib V2    0.20714539179025024
#>     Attrib V20    -0.3167420203907388
#>     Attrib V21    -0.39087996624485916
#>     Attrib V22    0.0930857708745762
#>     Attrib V23    0.12089188877074046
#>     Attrib V24    0.17948909749450254
#>     Attrib V25    0.14607313749704956
#>     Attrib V26    0.4324616305602019
#>     Attrib V27    0.7062859595277784
#>     Attrib V28    0.8544934292776528
#>     Attrib V29    0.32771841969137977
#>     Attrib V3    -0.08688980923812241
#>     Attrib V30    0.25221111091326875
#>     Attrib V31    -0.5997772894943151
#>     Attrib V32    0.12283703269672402
#>     Attrib V33    -0.04131784917235686
#>     Attrib V34    -0.1051519397554941
#>     Attrib V35    0.33953384149130633
#>     Attrib V36    -0.54154148051013
#>     Attrib V37    -0.4179191679061375
#>     Attrib V38    -0.3218193179461484
#>     Attrib V39    -0.2517259315252203
#>     Attrib V4    0.20628546189494443
#>     Attrib V40    0.04161076870323146
#>     Attrib V41    0.4806277092098274
#>     Attrib V42    0.051972591275979585
#>     Attrib V43    0.20354858348711977
#>     Attrib V44    0.19370913257135253
#>     Attrib V45    0.26872104927991913
#>     Attrib V46    0.13566776494242214
#>     Attrib V47    -0.0485847289421275
#>     Attrib V48    0.5654389913643514
#>     Attrib V49    0.5327141151316138
#>     Attrib V5    -0.22710944797673818
#>     Attrib V50    -0.3001479693678341
#>     Attrib V51    0.35424015488913485
#>     Attrib V52    0.8385445013482185
#>     Attrib V53    0.400639924268279
#>     Attrib V54    -0.07787298275266713
#>     Attrib V55    -1.057259477870549
#>     Attrib V56    -0.011666789031015944
#>     Attrib V57    -0.21693748068149474
#>     Attrib V58    0.31563649606810895
#>     Attrib V59    -0.4954991407116479
#>     Attrib V6    0.035936353719231574
#>     Attrib V60    -0.0797966330455505
#>     Attrib V7    -0.3487029026683182
#>     Attrib V8    -0.7685208583495985
#>     Attrib V9    0.4406961777666866
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.044056587300410774
#>     Attrib V1    0.7109508274330998
#>     Attrib V10    9.685251881541479E-4
#>     Attrib V11    0.38926733127077884
#>     Attrib V12    -0.07253790509930268
#>     Attrib V13    0.024259048361291266
#>     Attrib V14    -0.06638219432026805
#>     Attrib V15    0.19373905641629627
#>     Attrib V16    0.22589035131516214
#>     Attrib V17    0.317816453915904
#>     Attrib V18    0.3172583745596791
#>     Attrib V19    0.4246947664513838
#>     Attrib V2    0.2682364828737538
#>     Attrib V20    0.7181402517679639
#>     Attrib V21    0.3432501613620022
#>     Attrib V22    0.6946404991626468
#>     Attrib V23    0.5650631568987229
#>     Attrib V24    0.33053966135368384
#>     Attrib V25    -0.1702644037182923
#>     Attrib V26    -0.7482159599222764
#>     Attrib V27    -0.8582576016465381
#>     Attrib V28    -0.02947626384642327
#>     Attrib V29    -0.0025028058434886755
#>     Attrib V3    0.004584796276432935
#>     Attrib V30    0.2077105487462174
#>     Attrib V31    -0.6866576975314778
#>     Attrib V32    0.4086634769263867
#>     Attrib V33    0.4453038277036786
#>     Attrib V34    -0.3279281413961722
#>     Attrib V35    0.020181090254428477
#>     Attrib V36    -0.4149994938916303
#>     Attrib V37    -0.5306931429567165
#>     Attrib V38    0.23821183333049478
#>     Attrib V39    0.13291121481664672
#>     Attrib V4    0.01623148594140669
#>     Attrib V40    -0.1531081345937611
#>     Attrib V41    0.04996269703069371
#>     Attrib V42    0.3849435330632912
#>     Attrib V43    0.584423367360717
#>     Attrib V44    0.33159811717754867
#>     Attrib V45    0.2575855590188484
#>     Attrib V46    0.2815169993349188
#>     Attrib V47    -0.05660592722390927
#>     Attrib V48    0.19721890003292386
#>     Attrib V49    0.5534402326063991
#>     Attrib V5    -0.26841769000142984
#>     Attrib V50    0.02350813398587086
#>     Attrib V51    0.1795533544729929
#>     Attrib V52    -0.04885447008403211
#>     Attrib V53    0.14228111461983087
#>     Attrib V54    0.21800709572480814
#>     Attrib V55    -0.11684158229334544
#>     Attrib V56    0.7891069788577626
#>     Attrib V57    0.14072194536320412
#>     Attrib V58    0.825272614374358
#>     Attrib V59    0.09763247355330541
#>     Attrib V6    -0.4096254595573451
#>     Attrib V60    0.004378662939384809
#>     Attrib V7    0.03589413313506736
#>     Attrib V8    -0.5028993591895495
#>     Attrib V9    0.3261769270762843
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.159537836816653
#>     Attrib V1    -0.5726339519828552
#>     Attrib V10    -0.2169393524705811
#>     Attrib V11    -0.7381237201047055
#>     Attrib V12    -0.18691215905595004
#>     Attrib V13    -0.11797074012734411
#>     Attrib V14    0.4677553953209749
#>     Attrib V15    0.1339649749824931
#>     Attrib V16    -0.14405166649002238
#>     Attrib V17    -0.2617640992645424
#>     Attrib V18    -0.28639177453602693
#>     Attrib V19    -0.4203332756426069
#>     Attrib V2    -0.21281511456553384
#>     Attrib V20    -0.5545251092512521
#>     Attrib V21    -0.1375770220036791
#>     Attrib V22    -0.8468482444165454
#>     Attrib V23    -0.730606904203714
#>     Attrib V24    -0.4728137527916827
#>     Attrib V25    0.15307690295795318
#>     Attrib V26    0.8026464750816538
#>     Attrib V27    0.8742981707577008
#>     Attrib V28    -0.2082380534224318
#>     Attrib V29    0.18154350391661422
#>     Attrib V3    0.16688142436122333
#>     Attrib V30    -0.19828462635038926
#>     Attrib V31    0.9489588579984765
#>     Attrib V32    -0.7107841583706405
#>     Attrib V33    -0.6025224507974184
#>     Attrib V34    0.31474613878850943
#>     Attrib V35    -0.08475409065201048
#>     Attrib V36    0.7457208388281795
#>     Attrib V37    0.8906737468471678
#>     Attrib V38    -0.22408457238714108
#>     Attrib V39    -0.1990034354839266
#>     Attrib V4    0.17019397074443016
#>     Attrib V40    0.15495787136649056
#>     Attrib V41    -0.22802182921260222
#>     Attrib V42    -0.5389216306412592
#>     Attrib V43    -0.7034491733997187
#>     Attrib V44    -0.4453275953001109
#>     Attrib V45    -0.41658737214345903
#>     Attrib V46    -0.4349594123127994
#>     Attrib V47    -0.03808864259470784
#>     Attrib V48    -0.3605819136210775
#>     Attrib V49    -0.7979308994945998
#>     Attrib V5    0.5845221522442368
#>     Attrib V50    0.1924193745102638
#>     Attrib V51    -0.18977490760464077
#>     Attrib V52    0.04853429518629748
#>     Attrib V53    0.25375605873077905
#>     Attrib V54    0.14253356524759936
#>     Attrib V55    0.6044335048635261
#>     Attrib V56    -0.9419322133787957
#>     Attrib V57    0.025248091808118486
#>     Attrib V58    -0.886292946803982
#>     Attrib V59    0.23032844060529134
#>     Attrib V6    0.41340312411672814
#>     Attrib V60    0.19333371752646114
#>     Attrib V7    -0.011454895056040672
#>     Attrib V8    0.585250173508071
#>     Attrib V9    -0.48921666817350573
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.010520358381708868
#>     Attrib V1    0.5573411529371711
#>     Attrib V10    -0.09701528401273599
#>     Attrib V11    0.1898391327125816
#>     Attrib V12    -0.08569509028972193
#>     Attrib V13    -4.950709612177816E-4
#>     Attrib V14    0.18410096389237895
#>     Attrib V15    0.2888744670023851
#>     Attrib V16    0.2875953006016876
#>     Attrib V17    0.2683702216266145
#>     Attrib V18    0.2537054182286196
#>     Attrib V19    0.2544709179692462
#>     Attrib V2    0.29566053102245976
#>     Attrib V20    0.45771865901650466
#>     Attrib V21    0.15538276165490247
#>     Attrib V22    0.2023582187633768
#>     Attrib V23    0.13868985282351678
#>     Attrib V24    0.22103022985500725
#>     Attrib V25    -0.08255142289871825
#>     Attrib V26    -0.4497827099033971
#>     Attrib V27    -0.5728962281066755
#>     Attrib V28    -0.19043929818145416
#>     Attrib V29    -0.016578078045160434
#>     Attrib V3    0.11621830478215486
#>     Attrib V30    0.044440922319504715
#>     Attrib V31    -0.33020454835145985
#>     Attrib V32    0.11381786277327818
#>     Attrib V33    0.07657609646172243
#>     Attrib V34    -0.18018982439421918
#>     Attrib V35    0.04686000343473567
#>     Attrib V36    -0.221415204571465
#>     Attrib V37    -0.2316072699247292
#>     Attrib V38    0.17111802990171437
#>     Attrib V39    0.15044294827284943
#>     Attrib V4    0.11518416221172353
#>     Attrib V40    -0.013395496349477216
#>     Attrib V41    -0.08489627723738302
#>     Attrib V42    0.09506250975566306
#>     Attrib V43    0.2869969969122058
#>     Attrib V44    0.10485662685353606
#>     Attrib V45    0.024678646210386204
#>     Attrib V46    0.10782111424326182
#>     Attrib V47    -0.08934980692625191
#>     Attrib V48    0.14424251536641208
#>     Attrib V49    0.3163975015795356
#>     Attrib V5    -0.05432929232049463
#>     Attrib V50    0.08644510716655436
#>     Attrib V51    0.051331803103395315
#>     Attrib V52    0.014599584204028768
#>     Attrib V53    0.36244489143594893
#>     Attrib V54    0.32241579742770615
#>     Attrib V55    0.36275225360652913
#>     Attrib V56    0.7265540914356458
#>     Attrib V57    0.30965269082361574
#>     Attrib V58    0.5953827375140567
#>     Attrib V59    0.26265559724413823
#>     Attrib V6    -0.1526847114629348
#>     Attrib V60    0.14520775647588302
#>     Attrib V7    0.03542751127427106
#>     Attrib V8    -0.326538935246114
#>     Attrib V9    0.08520212890538865
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.11826450450413636
#>     Attrib V1    0.48183041296695
#>     Attrib V10    -0.004977094765250955
#>     Attrib V11    0.3883538031779435
#>     Attrib V12    -0.20432206241968862
#>     Attrib V13    -0.013759273955301654
#>     Attrib V14    -0.14668376515789391
#>     Attrib V15    -0.03681059480262421
#>     Attrib V16    -0.20096717337235845
#>     Attrib V17    0.019001608239099056
#>     Attrib V18    0.2513355979101908
#>     Attrib V19    0.35018537396937327
#>     Attrib V2    0.0829462173973998
#>     Attrib V20    0.7100268085428781
#>     Attrib V21    0.385414557835306
#>     Attrib V22    0.9077165648352769
#>     Attrib V23    0.8335773822869817
#>     Attrib V24    0.4439513749945698
#>     Attrib V25    -0.030159542492189002
#>     Attrib V26    -0.7362553386804813
#>     Attrib V27    -1.1667482275525327
#>     Attrib V28    -0.5450919939906914
#>     Attrib V29    -0.2868486256332148
#>     Attrib V3    -0.0819967619179011
#>     Attrib V30    -0.20103488599150773
#>     Attrib V31    -1.0453625181152981
#>     Attrib V32    0.13708940373041037
#>     Attrib V33    0.3340123467512442
#>     Attrib V34    -0.3098900381442536
#>     Attrib V35    0.26681789030958303
#>     Attrib V36    -0.2842587618755999
#>     Attrib V37    -0.6077006228365245
#>     Attrib V38    -0.11860825197944472
#>     Attrib V39    -0.23944509832984281
#>     Attrib V4    -0.08379355763413932
#>     Attrib V40    -0.5555706262003284
#>     Attrib V41    -0.2603962464153981
#>     Attrib V42    0.2678331833351377
#>     Attrib V43    0.6978903290475429
#>     Attrib V44    0.2573149565272543
#>     Attrib V45    0.31251468240523844
#>     Attrib V46    0.429202827507372
#>     Attrib V47    0.2851915925205961
#>     Attrib V48    0.31113826284165375
#>     Attrib V49    0.5143114230504274
#>     Attrib V5    -0.5842020712922141
#>     Attrib V50    0.28123219279982703
#>     Attrib V51    0.2997379089961473
#>     Attrib V52    0.15092982363025392
#>     Attrib V53    0.31902611417833965
#>     Attrib V54    0.11096388000665623
#>     Attrib V55    -0.19695667077220202
#>     Attrib V56    0.51391963640144
#>     Attrib V57    -0.09112171345624649
#>     Attrib V58    0.8958955458296807
#>     Attrib V59    0.004236333078947913
#>     Attrib V6    -0.7080055543866803
#>     Attrib V60    -0.09119772376960635
#>     Attrib V7    -0.41069965785759677
#>     Attrib V8    -0.7201183406233542
#>     Attrib V9    0.3189286492090291
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.18218851160311234
#>     Attrib V1    -0.17461465661034664
#>     Attrib V10    -0.05308975462621899
#>     Attrib V11    -0.21748704060138338
#>     Attrib V12    -0.10112000215213697
#>     Attrib V13    -0.062044534464062655
#>     Attrib V14    0.20801105663513103
#>     Attrib V15    0.15394035551586271
#>     Attrib V16    0.01883790817864501
#>     Attrib V17    0.06319119048214904
#>     Attrib V18    0.02189972186126573
#>     Attrib V19    7.648569767042984E-4
#>     Attrib V2    -0.0941611942753147
#>     Attrib V20    -0.00729058252313642
#>     Attrib V21    0.12094533241142012
#>     Attrib V22    -0.05517061977601505
#>     Attrib V23    0.023645322822004176
#>     Attrib V24    -0.06972446894548666
#>     Attrib V25    0.08262982610378769
#>     Attrib V26    0.16655820437168842
#>     Attrib V27    -0.008332359662606717
#>     Attrib V28    -0.28597080734911634
#>     Attrib V29    -0.14472547070418013
#>     Attrib V3    0.0759895553787199
#>     Attrib V30    -0.28472292977269176
#>     Attrib V31    0.0331016684624583
#>     Attrib V32    -0.2697698529259643
#>     Attrib V33    -0.20857873103637584
#>     Attrib V34    0.10729878609069965
#>     Attrib V35    0.012506790561862179
#>     Attrib V36    0.31453354919794124
#>     Attrib V37    0.21586194838778128
#>     Attrib V38    -0.10808767139085636
#>     Attrib V39    -0.1323066952231757
#>     Attrib V4    0.1263241688550715
#>     Attrib V40    0.029618159797130235
#>     Attrib V41    -0.02234926848011108
#>     Attrib V42    -0.10708610273558053
#>     Attrib V43    -0.12377978963367933
#>     Attrib V44    -0.15851936206770498
#>     Attrib V45    -0.1872255462255006
#>     Attrib V46    -0.07522782080590747
#>     Attrib V47    0.08629519067224735
#>     Attrib V48    -0.13855696893396569
#>     Attrib V49    -0.2809042603246254
#>     Attrib V5    0.1960313916336819
#>     Attrib V50    0.11391010987065506
#>     Attrib V51    0.021149388840371517
#>     Attrib V52    0.07495277810193214
#>     Attrib V53    0.004097513499450646
#>     Attrib V54    0.04952072797216748
#>     Attrib V55    0.2127994531557946
#>     Attrib V56    -0.22163740517362546
#>     Attrib V57    0.07065376618188972
#>     Attrib V58    -0.14580632957705503
#>     Attrib V59    0.1295750203589183
#>     Attrib V6    0.19945768516713727
#>     Attrib V60    0.051935510971196475
#>     Attrib V7    -0.011405439379187456
#>     Attrib V8    0.2567798539884401
#>     Attrib V9    -0.05313393752637125
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.6887628738644553
#>     Attrib V1    0.27964839807662895
#>     Attrib V10    0.6755660891773151
#>     Attrib V11    1.5516511314737258
#>     Attrib V12    2.275360333768028
#>     Attrib V13    1.0113533160810455
#>     Attrib V14    -0.04868906158370181
#>     Attrib V15    -0.6774294834753763
#>     Attrib V16    -0.8113811391093534
#>     Attrib V17    -0.6260868250312426
#>     Attrib V18    -0.034044025801981216
#>     Attrib V19    -0.2259575840332531
#>     Attrib V2    0.6983885409798787
#>     Attrib V20    -0.836931249614989
#>     Attrib V21    -0.4090633293666305
#>     Attrib V22    0.029047778225212435
#>     Attrib V23    -0.2184579820206274
#>     Attrib V24    -0.3037415528482076
#>     Attrib V25    -0.26028346441642747
#>     Attrib V26    1.1484204626486105
#>     Attrib V27    1.9879522976343307
#>     Attrib V28    1.980271247383536
#>     Attrib V29    1.8123780154528044
#>     Attrib V3    0.531445741857023
#>     Attrib V30    0.8624298946998864
#>     Attrib V31    -1.0152558567748464
#>     Attrib V32    -0.4458842765131879
#>     Attrib V33    -1.0315165734451437
#>     Attrib V34    -0.4636101387526136
#>     Attrib V35    0.18512543589330444
#>     Attrib V36    -0.7445685286258085
#>     Attrib V37    0.265531020985681
#>     Attrib V38    -0.1697949911402976
#>     Attrib V39    -0.15830774114638688
#>     Attrib V4    0.6006334576958361
#>     Attrib V40    0.317837253809493
#>     Attrib V41    1.1373814221865708
#>     Attrib V42    -0.29481404443462117
#>     Attrib V43    -0.07168974148937315
#>     Attrib V44    0.44156138187307364
#>     Attrib V45    0.47107603116233737
#>     Attrib V46    0.16480907743875356
#>     Attrib V47    -0.21642101159696417
#>     Attrib V48    0.5630756820668106
#>     Attrib V49    0.44867780879437064
#>     Attrib V5    -0.06469772099025227
#>     Attrib V50    -0.8526358250955945
#>     Attrib V51    0.5499842378519408
#>     Attrib V52    1.726671424934476
#>     Attrib V53    0.6426173381911953
#>     Attrib V54    -0.08917033788132049
#>     Attrib V55    -1.3669046093778134
#>     Attrib V56    0.4002222928425544
#>     Attrib V57    -0.0495974463540568
#>     Attrib V58    0.2706721575040886
#>     Attrib V59    -0.3305810407766161
#>     Attrib V6    0.9253619253575838
#>     Attrib V60    0.2617010541353374
#>     Attrib V7    -0.2558073437882842
#>     Attrib V8    -0.7683977753589715
#>     Attrib V9    0.5040801911365314
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.21204455128197364
#>     Attrib V1    -0.14646794638552355
#>     Attrib V10    -0.027759054727490275
#>     Attrib V11    -0.1876331009786666
#>     Attrib V12    -0.05454360833212905
#>     Attrib V13    -0.04736299681259704
#>     Attrib V14    0.20182751828099724
#>     Attrib V15    0.05314356886333051
#>     Attrib V16    -0.002667043682097679
#>     Attrib V17    0.018387247337024428
#>     Attrib V18    -0.006984447837150673
#>     Attrib V19    0.06282719231885472
#>     Attrib V2    -0.058051449943525034
#>     Attrib V20    0.014637276844623875
#>     Attrib V21    0.13295590994945272
#>     Attrib V22    -2.1927365921537483E-4
#>     Attrib V23    0.01415386883172457
#>     Attrib V24    -0.03423568617112772
#>     Attrib V25    0.08586492797938973
#>     Attrib V26    0.07073094843307047
#>     Attrib V27    0.013457253455727474
#>     Attrib V28    -0.24999835526777953
#>     Attrib V29    -0.11201204965809805
#>     Attrib V3    0.03814967587043132
#>     Attrib V30    -0.2569676417163678
#>     Attrib V31    -0.014442620436567917
#>     Attrib V32    -0.29574633188484356
#>     Attrib V33    -0.11662408353863754
#>     Attrib V34    0.0772270907392422
#>     Attrib V35    0.0659898841458346
#>     Attrib V36    0.2736940039041204
#>     Attrib V37    0.23710677839210428
#>     Attrib V38    -0.12364009862897798
#>     Attrib V39    -0.09591914898411429
#>     Attrib V4    0.1109104620729786
#>     Attrib V40    -0.006382676322528406
#>     Attrib V41    -0.040056884141426156
#>     Attrib V42    -0.03694089922752614
#>     Attrib V43    -0.1115916647861497
#>     Attrib V44    -0.0953732710529104
#>     Attrib V45    -0.11933836447607678
#>     Attrib V46    -0.09430201993687273
#>     Attrib V47    0.013436013120476301
#>     Attrib V48    -0.07391059288353435
#>     Attrib V49    -0.2294004004664617
#>     Attrib V5    0.1568423206087285
#>     Attrib V50    0.062244852798281035
#>     Attrib V51    -0.026421103506310863
#>     Attrib V52    0.004466740915193729
#>     Attrib V53    0.014667706863061193
#>     Attrib V54    0.04938407003601623
#>     Attrib V55    0.15120747578468388
#>     Attrib V56    -0.19497649546372714
#>     Attrib V57    0.04612491784571278
#>     Attrib V58    -0.10854141501698272
#>     Attrib V59    0.1285248257503421
#>     Attrib V6    0.18730528733131177
#>     Attrib V60    0.12358735660637095
#>     Attrib V7    -0.021519486586476056
#>     Attrib V8    0.22500478038398208
#>     Attrib V9    -0.08839063812704843
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.04985363195343067
#>     Attrib V1    0.5394375461793606
#>     Attrib V10    0.12291031788275071
#>     Attrib V11    0.5513468877674934
#>     Attrib V12    -0.011873642991297145
#>     Attrib V13    0.06980630697056657
#>     Attrib V14    -0.27142475216941814
#>     Attrib V15    -0.09145153090960288
#>     Attrib V16    -0.13226542280185807
#>     Attrib V17    0.014166156611251144
#>     Attrib V18    0.33359637296692857
#>     Attrib V19    0.35997734937864295
#>     Attrib V2    0.13416529383669248
#>     Attrib V20    0.6301576591948083
#>     Attrib V21    0.3770634853581739
#>     Attrib V22    0.916075090019997
#>     Attrib V23    0.7552183929416715
#>     Attrib V24    0.47978340773999684
#>     Attrib V25    -0.046796125108663295
#>     Attrib V26    -0.6252356918558801
#>     Attrib V27    -0.9808228997523714
#>     Attrib V28    -0.27099414770769065
#>     Attrib V29    -0.12141585948745917
#>     Attrib V3    -0.16767489496689253
#>     Attrib V30    -0.05936721824975692
#>     Attrib V31    -1.0641716080302739
#>     Attrib V32    0.2589043515576463
#>     Attrib V33    0.3445494626748934
#>     Attrib V34    -0.2972556545465094
#>     Attrib V35    0.22973098594512192
#>     Attrib V36    -0.3780858369239312
#>     Attrib V37    -0.6334440393368582
#>     Attrib V38    -0.01230470515331008
#>     Attrib V39    -0.10725173317712026
#>     Attrib V4    -0.11545179720691381
#>     Attrib V40    -0.4844232980381064
#>     Attrib V41    -0.11944294063719939
#>     Attrib V42    0.3095422057932953
#>     Attrib V43    0.6736365387794617
#>     Attrib V44    0.4080133196086143
#>     Attrib V45    0.4191276994753766
#>     Attrib V46    0.4077923526770866
#>     Attrib V47    0.13188870757513566
#>     Attrib V48    0.41266439317565035
#>     Attrib V49    0.5865146975540745
#>     Attrib V5    -0.5831197841983073
#>     Attrib V50    0.20071307251605966
#>     Attrib V51    0.30119606393813014
#>     Attrib V52    0.14645896348168796
#>     Attrib V53    0.21393481071100817
#>     Attrib V54    0.057336001456876194
#>     Attrib V55    -0.35421172464691403
#>     Attrib V56    0.5441338028485954
#>     Attrib V57    -0.062012301576908194
#>     Attrib V58    0.8967408500853206
#>     Attrib V59    -0.09174328037468989
#>     Attrib V6    -0.60669990448132
#>     Attrib V60    -0.1283576187576303
#>     Attrib V7    -0.40683713856093967
#>     Attrib V8    -0.7405340686971275
#>     Attrib V9    0.4068007549059
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.05053716383964793
#>     Attrib V1    -0.19759238012785924
#>     Attrib V10    -0.9500158274497287
#>     Attrib V11    -1.1399805462388837
#>     Attrib V12    -0.9675645410948731
#>     Attrib V13    -0.3446561404763158
#>     Attrib V14    1.1730710300434286
#>     Attrib V15    1.311892657176998
#>     Attrib V16    0.618536128735704
#>     Attrib V17    0.20213359541685558
#>     Attrib V18    -0.25009963794836365
#>     Attrib V19    -0.531752199709768
#>     Attrib V2    -0.3118212844957166
#>     Attrib V20    0.009682199850274433
#>     Attrib V21    0.19556633702983042
#>     Attrib V22    -0.7119676486283005
#>     Attrib V23    -0.7081647360294855
#>     Attrib V24    -0.2336756774375777
#>     Attrib V25    0.2602332809999783
#>     Attrib V26    -0.047229587294430934
#>     Attrib V27    -0.8329533748253901
#>     Attrib V28    -1.4911239512472074
#>     Attrib V29    -0.25745339928548006
#>     Attrib V3    0.023210154135023395
#>     Attrib V30    -0.42552928035391585
#>     Attrib V31    1.1233942031814081
#>     Attrib V32    -0.34816724798594345
#>     Attrib V33    -0.33285640611173656
#>     Attrib V34    0.22604404389658372
#>     Attrib V35    -0.44998892792913153
#>     Attrib V36    1.1833329442591816
#>     Attrib V37    1.1711738043247653
#>     Attrib V38    0.7325672413063337
#>     Attrib V39    0.7651749292051849
#>     Attrib V4    -0.20707805227097456
#>     Attrib V40    0.15739192904833668
#>     Attrib V41    -1.2496935907324693
#>     Attrib V42    -0.840486196417766
#>     Attrib V43    -0.80001504982244
#>     Attrib V44    -0.6834172225086806
#>     Attrib V45    -0.613942279917883
#>     Attrib V46    -0.6389146833143969
#>     Attrib V47    -0.34657365948577606
#>     Attrib V48    -0.773990080153166
#>     Attrib V49    -0.8886351235821263
#>     Attrib V5    0.4234869129460971
#>     Attrib V50    0.16413371018097894
#>     Attrib V51    -1.0301561260522805
#>     Attrib V52    -1.3791963453037535
#>     Attrib V53    -0.2508083622562114
#>     Attrib V54    -0.03727146172527876
#>     Attrib V55    2.7462184631464344
#>     Attrib V56    0.31929332209163297
#>     Attrib V57    0.6764666387688836
#>     Attrib V58    -0.46005698188202754
#>     Attrib V59    0.8854989968701104
#>     Attrib V6    0.08185517697446847
#>     Attrib V60    -0.17839911424045915
#>     Attrib V7    0.7643290071143092
#>     Attrib V8    1.309782701461545
#>     Attrib V9    -0.9771723566013454
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.31696813960060705
#>     Attrib V1    0.37090789158754467
#>     Attrib V10    0.18430524483003174
#>     Attrib V11    0.7060908827880309
#>     Attrib V12    0.39982916828148846
#>     Attrib V13    0.09900003113846334
#>     Attrib V14    -0.5237681264707827
#>     Attrib V15    -0.36038769759280515
#>     Attrib V16    -0.06711589561094855
#>     Attrib V17    0.11261679566980247
#>     Attrib V18    0.1507309338627518
#>     Attrib V19    0.14927703772778664
#>     Attrib V2    0.11045485156201251
#>     Attrib V20    0.3422970662843322
#>     Attrib V21    0.02948561895460964
#>     Attrib V22    0.5067603048839779
#>     Attrib V23    0.3065948970419398
#>     Attrib V24    0.27837181997689564
#>     Attrib V25    -0.044892392590115314
#>     Attrib V26    -0.45100934618574795
#>     Attrib V27    -0.36569718512849975
#>     Attrib V28    0.4673623633418671
#>     Attrib V29    0.15823244970927275
#>     Attrib V3    -0.16828644000484674
#>     Attrib V30    0.3613392936001589
#>     Attrib V31    -0.6370715422764415
#>     Attrib V32    0.6606773437611939
#>     Attrib V33    0.537964774358727
#>     Attrib V34    -0.15666786682765568
#>     Attrib V35    0.20811021239485547
#>     Attrib V36    -0.47314979689651393
#>     Attrib V37    -0.3773355043210452
#>     Attrib V38    0.26362549836354937
#>     Attrib V39    0.20031003477770826
#>     Attrib V4    -0.16594972431584765
#>     Attrib V40    -0.039922146241908076
#>     Attrib V41    0.27437051809646285
#>     Attrib V42    0.2981914075194669
#>     Attrib V43    0.5597096592157863
#>     Attrib V44    0.35186721913343405
#>     Attrib V45    0.4017264243104445
#>     Attrib V46    0.2801876280562249
#>     Attrib V47    -0.08943811078742822
#>     Attrib V48    0.28783859076936846
#>     Attrib V49    0.5283465724161069
#>     Attrib V5    -0.5217517133089616
#>     Attrib V50    -0.25181687963671406
#>     Attrib V51    0.10561222902666977
#>     Attrib V52    0.0646308414427915
#>     Attrib V53    -0.12721180170175186
#>     Attrib V54    -0.1440533597921401
#>     Attrib V55    -0.8514883870069649
#>     Attrib V56    0.5417015600392915
#>     Attrib V57    -0.04183858661090144
#>     Attrib V58    0.39775050232746834
#>     Attrib V59    -0.4009093133153944
#>     Attrib V6    -0.33401901656133054
#>     Attrib V60    -0.21703273286848646
#>     Attrib V7    -0.18383469151998064
#>     Attrib V8    -0.6777719059730947
#>     Attrib V9    0.4606022748480469
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.09780951288665858
#>     Attrib V1    0.3353564403929505
#>     Attrib V10    0.04132226456097344
#>     Attrib V11    0.1676521653575302
#>     Attrib V12    0.034321926962971754
#>     Attrib V13    0.0755107121224153
#>     Attrib V14    0.1253644777566425
#>     Attrib V15    0.17618765961999158
#>     Attrib V16    0.10055013919237832
#>     Attrib V17    0.14144728678360957
#>     Attrib V18    0.10116340033781514
#>     Attrib V19    0.0879970204312621
#>     Attrib V2    0.21414464769777417
#>     Attrib V20    0.16059652313742098
#>     Attrib V21    0.0782472873400339
#>     Attrib V22    0.09961286491568382
#>     Attrib V23    0.09256225788102461
#>     Attrib V24    0.07241171430069884
#>     Attrib V25    0.016355273510629015
#>     Attrib V26    -0.12812117403018036
#>     Attrib V27    -0.23807875929823596
#>     Attrib V28    -0.02644360974849535
#>     Attrib V29    -0.0398705523745632
#>     Attrib V3    0.11030401262351706
#>     Attrib V30    0.06046996855196204
#>     Attrib V31    -0.16922007378906162
#>     Attrib V32    0.029203105991703875
#>     Attrib V33    0.017292304606055815
#>     Attrib V34    -0.10445193116700627
#>     Attrib V35    0.07444871695250008
#>     Attrib V36    -0.12430485568948858
#>     Attrib V37    -0.0815334768386931
#>     Attrib V38    0.05270111842112737
#>     Attrib V39    0.11480692887030669
#>     Attrib V4    0.1636454535366426
#>     Attrib V40    -0.0256869669506485
#>     Attrib V41    -0.0027868286851408714
#>     Attrib V42    0.09869078099004147
#>     Attrib V43    0.1211662761448117
#>     Attrib V44    0.0514591861866238
#>     Attrib V45    0.08174222601491907
#>     Attrib V46    0.07602172627918835
#>     Attrib V47    -0.012293853549608545
#>     Attrib V48    0.13626251347155197
#>     Attrib V49    0.16335867801155637
#>     Attrib V5    -0.04105806226500784
#>     Attrib V50    0.05808663087212223
#>     Attrib V51    0.09120845018870327
#>     Attrib V52    0.10619411335850018
#>     Attrib V53    0.24545938339234422
#>     Attrib V54    0.19377473318069613
#>     Attrib V55    0.17122347917951705
#>     Attrib V56    0.40535323163127884
#>     Attrib V57    0.16620030618226062
#>     Attrib V58    0.3626413400146244
#>     Attrib V59    0.18346239615156848
#>     Attrib V6    -0.0671965386254662
#>     Attrib V60    0.09449126526228234
#>     Attrib V7    -0.051117661709168885
#>     Attrib V8    -0.17740450866341567
#>     Attrib V9    0.07922927444685353
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.17497791794739173
#>     Attrib V1    0.08568771073517267
#>     Attrib V10    0.03195634390206447
#>     Attrib V11    0.07689451802113619
#>     Attrib V12    -0.03533465863813757
#>     Attrib V13    0.028694492862296844
#>     Attrib V14    0.11247284345525549
#>     Attrib V15    0.07520815506041806
#>     Attrib V16    0.0486364369584449
#>     Attrib V17    0.0660859656766364
#>     Attrib V18    0.03473031625286749
#>     Attrib V19    -0.009320013851141718
#>     Attrib V2    0.12749741006489532
#>     Attrib V20    0.030556384576134223
#>     Attrib V21    -0.05113715834772427
#>     Attrib V22    0.032248488037097844
#>     Attrib V23    0.052242324581957336
#>     Attrib V24    0.05305062243543324
#>     Attrib V25    -7.498428837656607E-4
#>     Attrib V26    -0.0020131475774227284
#>     Attrib V27    -0.09706097312261992
#>     Attrib V28    -0.12836930496854962
#>     Attrib V29    -0.08954599318543886
#>     Attrib V3    0.06357511876225215
#>     Attrib V30    -0.07460867692451019
#>     Attrib V31    -0.017509126418990714
#>     Attrib V32    -0.021260330600475674
#>     Attrib V33    0.04619854948115028
#>     Attrib V34    0.052178804102751775
#>     Attrib V35    0.09606326613323171
#>     Attrib V36    0.0685223193690077
#>     Attrib V37    0.10059436903704325
#>     Attrib V38    0.062175104310464885
#>     Attrib V39    -0.037085814124374
#>     Attrib V4    0.1389597534835635
#>     Attrib V40    0.011695622800451106
#>     Attrib V41    0.018675651766085544
#>     Attrib V42    0.0297880578913667
#>     Attrib V43    0.06648965870871483
#>     Attrib V44    0.08165205772446436
#>     Attrib V45    0.0052621746273235495
#>     Attrib V46    0.04939821259626038
#>     Attrib V47    0.05526057669493648
#>     Attrib V48    0.04330100855498191
#>     Attrib V49    0.02053897438375529
#>     Attrib V5    0.08371616646589883
#>     Attrib V50    0.021784808044380394
#>     Attrib V51    0.05871663534318181
#>     Attrib V52    0.08056186781780962
#>     Attrib V53    0.11188725077187624
#>     Attrib V54    0.13844282544311282
#>     Attrib V55    0.0915518837056091
#>     Attrib V56    0.017138577474886705
#>     Attrib V57    0.09644739409922078
#>     Attrib V58    0.04722447924685527
#>     Attrib V59    0.058385182471377646
#>     Attrib V6    0.07192209035486014
#>     Attrib V60    0.04899066207851191
#>     Attrib V7    0.042405012473311667
#>     Attrib V8    0.0467678989053942
#>     Attrib V9    0.1033992428730701
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.17084910406910248
#>     Attrib V1    0.09711154549029036
#>     Attrib V10    -0.011744337836313918
#>     Attrib V11    0.04387467892843383
#>     Attrib V12    -4.134485593076108E-4
#>     Attrib V13    -0.031243177047194957
#>     Attrib V14    0.12800963123953657
#>     Attrib V15    0.08047958999045081
#>     Attrib V16    0.08294140023685265
#>     Attrib V17    0.015078614964506097
#>     Attrib V18    0.05944280314077911
#>     Attrib V19    -0.044646077415303194
#>     Attrib V2    0.05540495614827754
#>     Attrib V20    0.005178570955841243
#>     Attrib V21    0.01300568441989153
#>     Attrib V22    -0.018344872304533758
#>     Attrib V23    0.04479967783630753
#>     Attrib V24    0.01668592848789464
#>     Attrib V25    -0.017591376767167242
#>     Attrib V26    -0.036601174096988556
#>     Attrib V27    -0.07256798429149935
#>     Attrib V28    -0.05726637417382797
#>     Attrib V29    -0.06077264417367222
#>     Attrib V3    0.13389027462745404
#>     Attrib V30    -0.019694089325092437
#>     Attrib V31    -0.07262893490296125
#>     Attrib V32    -0.03387662523298249
#>     Attrib V33    0.03146166290182574
#>     Attrib V34    0.04411549446929316
#>     Attrib V35    0.06350017741011267
#>     Attrib V36    0.13144153550189486
#>     Attrib V37    0.08318367243081841
#>     Attrib V38    -0.009462375735656205
#>     Attrib V39    0.022018847021058836
#>     Attrib V4    0.09200256882462297
#>     Attrib V40    0.0032682544824468255
#>     Attrib V41    0.006170797544594129
#>     Attrib V42    0.06014835828296298
#>     Attrib V43    -0.00599114277289738
#>     Attrib V44    0.06592227704829193
#>     Attrib V45    0.055841886795562255
#>     Attrib V46    0.04634852771333925
#>     Attrib V47    0.03742221014449073
#>     Attrib V48    -0.010656489832796432
#>     Attrib V49    0.040818655131147415
#>     Attrib V5    0.10909901519498313
#>     Attrib V50    1.330577869259887E-4
#>     Attrib V51    0.08987380303557885
#>     Attrib V52    0.09829012738383565
#>     Attrib V53    0.07890059501690448
#>     Attrib V54    0.055917416611330366
#>     Attrib V55    0.05474996410672715
#>     Attrib V56    0.04957566333688809
#>     Attrib V57    0.0884303382367752
#>     Attrib V58    0.1352167560205605
#>     Attrib V59    0.05592111687507627
#>     Attrib V6    0.11059747757664455
#>     Attrib V60    0.046001416699843076
#>     Attrib V7    0.0560006699655221
#>     Attrib V8    0.0993689510677368
#>     Attrib V9    0.09289275900996147
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
#>   0.173913 
```
