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
#>     Threshold    -0.6230371936149132
#>     Node 2    3.3699405593744034
#>     Node 3    1.5394952184679123
#>     Node 4    0.5864058356049265
#>     Node 5    -2.1170980772174834
#>     Node 6    1.631663360971588
#>     Node 7    3.218638292497553
#>     Node 8    0.911274718477919
#>     Node 9    3.2355359161142037
#>     Node 10    -1.8958482089528559
#>     Node 11    1.0988526560593483
#>     Node 12    1.8693382915396946
#>     Node 13    0.2552781370513303
#>     Node 14    1.4531556762061801
#>     Node 15    -3.7464308345147415
#>     Node 16    0.2999568834942579
#>     Node 17    0.4056490155590694
#>     Node 18    -1.4157546453926924
#>     Node 19    2.416064062669099
#>     Node 20    1.768836435827702
#>     Node 21    -2.6830520573962575
#>     Node 22    1.1253440743735146
#>     Node 23    1.4909202772425165
#>     Node 24    -1.0211240037616127
#>     Node 25    4.372313547164095
#>     Node 26    -0.9603749004885851
#>     Node 27    1.8506957512280304
#>     Node 28    -2.0955289261640853
#>     Node 29    0.5262740014452565
#>     Node 30    -0.6391258066843597
#>     Node 31    1.681358976074932
#>     Node 32    1.2582307566033806
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.5995736179647464
#>     Node 2    -3.4032288379123767
#>     Node 3    -1.5234847033733636
#>     Node 4    -0.5453719156133877
#>     Node 5    2.1334865269897842
#>     Node 6    -1.6140252242524258
#>     Node 7    -3.2044762371139734
#>     Node 8    -0.9379361307302528
#>     Node 9    -3.236149055360673
#>     Node 10    1.8342163223743742
#>     Node 11    -1.065650293868477
#>     Node 12    -1.9339640433799843
#>     Node 13    -0.2024369706451208
#>     Node 14    -1.3923269839308552
#>     Node 15    3.7313326372689883
#>     Node 16    -0.3169840367293549
#>     Node 17    -0.3737310571327409
#>     Node 18    1.4550285719117384
#>     Node 19    -2.3892772213050835
#>     Node 20    -1.7676819726486885
#>     Node 21    2.7434860896812543
#>     Node 22    -1.1760638188692074
#>     Node 23    -1.5297012300312223
#>     Node 24    1.0038176970669317
#>     Node 25    -4.356429165457021
#>     Node 26    0.8764741062224103
#>     Node 27    -1.874888026026558
#>     Node 28    2.0828168481182163
#>     Node 29    -0.5594913747162374
#>     Node 30    0.7124382373235335
#>     Node 31    -1.616606633324762
#>     Node 32    -1.2748039253982244
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.4013645580191515
#>     Attrib V1    0.7268513898409357
#>     Attrib V10    -0.9175155785375786
#>     Attrib V11    -0.15568066037194045
#>     Attrib V12    -0.017983868381942353
#>     Attrib V13    -0.7403457572373275
#>     Attrib V14    0.30651531757206746
#>     Attrib V15    0.7679562134870095
#>     Attrib V16    0.7631064228879887
#>     Attrib V17    0.490521181716525
#>     Attrib V18    0.16250229355212212
#>     Attrib V19    -0.13900908466718223
#>     Attrib V2    0.1655891836572178
#>     Attrib V20    0.7557552067834638
#>     Attrib V21    1.110824585954317
#>     Attrib V22    0.8802538747442505
#>     Attrib V23    0.24230368788149675
#>     Attrib V24    -0.27604813553101976
#>     Attrib V25    -1.310569826191334
#>     Attrib V26    -1.7837386852763841
#>     Attrib V27    -0.912175971493035
#>     Attrib V28    0.001408930548459957
#>     Attrib V29    -0.46105985037161706
#>     Attrib V3    0.12962444412599983
#>     Attrib V30    0.13586629840852932
#>     Attrib V31    -2.119366843030766
#>     Attrib V32    -0.44514674565166434
#>     Attrib V33    0.40768808029484366
#>     Attrib V34    -0.6171919896650796
#>     Attrib V35    -0.4856844007920337
#>     Attrib V36    -0.8389652737983394
#>     Attrib V37    -0.891025991269403
#>     Attrib V38    0.3589671915709209
#>     Attrib V39    0.5537291195753651
#>     Attrib V4    0.11182490473856156
#>     Attrib V40    0.1564649360727845
#>     Attrib V41    1.71867612896527E-4
#>     Attrib V42    0.42373791808200356
#>     Attrib V43    0.45367074608662306
#>     Attrib V44    0.3723323818744852
#>     Attrib V45    0.4227789155869859
#>     Attrib V46    -0.33844268277392864
#>     Attrib V47    -0.7008231055684855
#>     Attrib V48    0.17841912550654354
#>     Attrib V49    0.5350462629531519
#>     Attrib V5    -0.22997250268054426
#>     Attrib V50    -0.708606727517362
#>     Attrib V51    -0.3542603302477539
#>     Attrib V52    0.2704586916647974
#>     Attrib V53    0.25531855838707923
#>     Attrib V54    0.6675637603896984
#>     Attrib V55    -0.7683243232972279
#>     Attrib V56    0.7954136204173281
#>     Attrib V57    0.8115441918112059
#>     Attrib V58    1.1633396420500062
#>     Attrib V59    1.48207489875376
#>     Attrib V6    -0.27026483871045404
#>     Attrib V60    0.8305622117633683
#>     Attrib V7    0.32672760139432644
#>     Attrib V8    -0.36362477872586224
#>     Attrib V9    -0.032016075019306894
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.2418836084616115
#>     Attrib V1    0.18310407895225347
#>     Attrib V10    -0.31807138794117784
#>     Attrib V11    0.026556371028038286
#>     Attrib V12    0.10404245027158875
#>     Attrib V13    -0.38634916494303206
#>     Attrib V14    0.04037868057332339
#>     Attrib V15    0.24080717135385293
#>     Attrib V16    0.22517458211996078
#>     Attrib V17    0.14419839273137441
#>     Attrib V18    0.010365479739854886
#>     Attrib V19    -0.041026408817631733
#>     Attrib V2    -0.06424817913556978
#>     Attrib V20    0.1457437274194653
#>     Attrib V21    0.29270183422145246
#>     Attrib V22    0.39945033380190714
#>     Attrib V23    0.10503513364518803
#>     Attrib V24    -0.13495472600511016
#>     Attrib V25    -0.5510768865237617
#>     Attrib V26    -0.816938510448877
#>     Attrib V27    -0.49432059290372515
#>     Attrib V28    -0.13423115649315706
#>     Attrib V29    -0.5217950821781108
#>     Attrib V3    -7.041681849007738E-4
#>     Attrib V30    0.18049801537391857
#>     Attrib V31    -1.0106619278653695
#>     Attrib V32    -0.06451577771633213
#>     Attrib V33    0.3175367193929195
#>     Attrib V34    -0.3823944234092769
#>     Attrib V35    -0.2703859006052546
#>     Attrib V36    -0.6061978115910535
#>     Attrib V37    -0.7490941620412428
#>     Attrib V38    -0.06843234430332445
#>     Attrib V39    0.1207846582969275
#>     Attrib V4    0.08894791818867416
#>     Attrib V40    -0.06025395752638651
#>     Attrib V41    0.05891171373048823
#>     Attrib V42    0.12506558591924732
#>     Attrib V43    0.13330079163208458
#>     Attrib V44    0.10992266399776392
#>     Attrib V45    0.22956915652015467
#>     Attrib V46    -0.23299888833008864
#>     Attrib V47    -0.25229705209303904
#>     Attrib V48    0.3360456117941257
#>     Attrib V49    0.3875663482421881
#>     Attrib V5    -0.11286254143825698
#>     Attrib V50    -0.4688821492041709
#>     Attrib V51    0.00853759991098919
#>     Attrib V52    0.33353723432706384
#>     Attrib V53    0.034348820828531544
#>     Attrib V54    0.3628942841717916
#>     Attrib V55    -0.2947996591006977
#>     Attrib V56    0.3588856139676054
#>     Attrib V57    0.40539434578056366
#>     Attrib V58    0.7636278756384414
#>     Attrib V59    0.7956932422869994
#>     Attrib V6    -0.21382185884880173
#>     Attrib V60    0.42091497328280286
#>     Attrib V7    -0.03612826220327188
#>     Attrib V8    -0.17941987784536267
#>     Attrib V9    0.12676067468352037
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.052083499045564904
#>     Attrib V1    0.04178496119542443
#>     Attrib V10    0.016637184933168125
#>     Attrib V11    0.11195316469064602
#>     Attrib V12    0.13285725307922552
#>     Attrib V13    -0.05019814915112992
#>     Attrib V14    0.07883903644816588
#>     Attrib V15    0.06465961626396985
#>     Attrib V16    -0.04063569968700867
#>     Attrib V17    -0.09007499247598824
#>     Attrib V18    -0.15747440210152214
#>     Attrib V19    -0.21835664864089732
#>     Attrib V2    -0.05869743323720434
#>     Attrib V20    -0.19893848904709543
#>     Attrib V21    -0.13125690005430357
#>     Attrib V22    -0.18705769161314637
#>     Attrib V23    -0.18439961728757276
#>     Attrib V24    -0.1313919249250686
#>     Attrib V25    -0.14563383119662088
#>     Attrib V26    -0.10043692174380055
#>     Attrib V27    0.020941240693246026
#>     Attrib V28    0.19005511402923028
#>     Attrib V29    0.03695110661308015
#>     Attrib V3    0.08188316757997621
#>     Attrib V30    0.1458236820636382
#>     Attrib V31    -0.227888755754292
#>     Attrib V32    0.029458175576799275
#>     Attrib V33    0.07809771235326718
#>     Attrib V34    -0.09170074186534057
#>     Attrib V35    -0.024794875947161794
#>     Attrib V36    -0.158329351052122
#>     Attrib V37    -0.18278334888349265
#>     Attrib V38    -0.018180265800448875
#>     Attrib V39    0.0610141151754551
#>     Attrib V4    0.09353986137447724
#>     Attrib V40    -0.03747947353397571
#>     Attrib V41    0.00256275102055705
#>     Attrib V42    -0.07244560855194102
#>     Attrib V43    -0.045944971564176436
#>     Attrib V44    0.0409114107652558
#>     Attrib V45    0.21078370044671293
#>     Attrib V46    0.0055065560002646756
#>     Attrib V47    0.007861582680667344
#>     Attrib V48    0.305843070037742
#>     Attrib V49    0.2537756627498857
#>     Attrib V5    0.0565276830453151
#>     Attrib V50    -0.05546135916716055
#>     Attrib V51    0.15833569946150902
#>     Attrib V52    0.1903865089989802
#>     Attrib V53    0.11952465566488298
#>     Attrib V54    0.06005891373923861
#>     Attrib V55    -0.020130565981106924
#>     Attrib V56    0.05540305616568458
#>     Attrib V57    0.25332541831655125
#>     Attrib V58    0.23638361397862304
#>     Attrib V59    0.2577880857495875
#>     Attrib V6    -0.10763500046402102
#>     Attrib V60    0.1697438395205423
#>     Attrib V7    -0.054196564809035314
#>     Attrib V8    -0.10972713458071144
#>     Attrib V9    0.142959864243651
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.39720103466825013
#>     Attrib V1    -0.118629204437085
#>     Attrib V10    -0.11414574255100213
#>     Attrib V11    -0.8316316249815816
#>     Attrib V12    -1.00483826972461
#>     Attrib V13    -0.07676088419537798
#>     Attrib V14    0.12058200130954443
#>     Attrib V15    -0.03201114990669202
#>     Attrib V16    0.17098397964678205
#>     Attrib V17    0.5254301972158174
#>     Attrib V18    0.7308313787715937
#>     Attrib V19    -0.005321722976399465
#>     Attrib V2    0.2711958166712672
#>     Attrib V20    -0.5197667382121146
#>     Attrib V21    -0.3673182698849827
#>     Attrib V22    -0.5107586904853796
#>     Attrib V23    -0.4162285153676053
#>     Attrib V24    -0.505268737314108
#>     Attrib V25    0.1497328015693151
#>     Attrib V26    0.1606709961671018
#>     Attrib V27    -0.2202322694305879
#>     Attrib V28    -0.4599941100731738
#>     Attrib V29    0.3792367162402023
#>     Attrib V3    -0.06257484982517073
#>     Attrib V30    -0.10470119130547445
#>     Attrib V31    1.6984797704377852
#>     Attrib V32    0.24638367483408966
#>     Attrib V33    -0.18733342781742324
#>     Attrib V34    0.1490740382660265
#>     Attrib V35    -0.1230340068139009
#>     Attrib V36    0.8818110370347947
#>     Attrib V37    0.8787491489778964
#>     Attrib V38    -0.2412129192331493
#>     Attrib V39    -0.5091094003512723
#>     Attrib V4    0.22161500688983896
#>     Attrib V40    0.05019325193928692
#>     Attrib V41    0.012834480907148074
#>     Attrib V42    0.28663923207791486
#>     Attrib V43    -0.1091742726154652
#>     Attrib V44    -0.0861477907136453
#>     Attrib V45    -0.7528085517817323
#>     Attrib V46    -0.3615824352255797
#>     Attrib V47    0.008963174424292304
#>     Attrib V48    -0.4841336061906879
#>     Attrib V49    -0.6901201399170407
#>     Attrib V5    0.064708448685796
#>     Attrib V50    1.0146172546019665
#>     Attrib V51    -0.3121462782385248
#>     Attrib V52    -0.7708618801647921
#>     Attrib V53    -0.02434228763234303
#>     Attrib V54    0.07322788732638007
#>     Attrib V55    0.47127235149047586
#>     Attrib V56    0.05177606485533344
#>     Attrib V57    0.16245271093385832
#>     Attrib V58    -0.8263934350537221
#>     Attrib V59    -0.4120921435579244
#>     Attrib V6    0.37515364558210557
#>     Attrib V60    0.013214439675253119
#>     Attrib V7    0.518155589503945
#>     Attrib V8    1.0382374011107656
#>     Attrib V9    -0.48747650342179366
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.315454321942978
#>     Attrib V1    0.09797081859403552
#>     Attrib V10    -0.35835283398057344
#>     Attrib V11    0.13741825233572955
#>     Attrib V12    0.31115935984772575
#>     Attrib V13    -0.4161130525655314
#>     Attrib V14    -0.07385879527759914
#>     Attrib V15    0.028295532933442447
#>     Attrib V16    0.2234032623079794
#>     Attrib V17    0.1394340037353711
#>     Attrib V18    0.15573752437915828
#>     Attrib V19    -0.05006048494346255
#>     Attrib V2    -0.18121644751936586
#>     Attrib V20    0.04836651905684234
#>     Attrib V21    0.23127122314113385
#>     Attrib V22    0.4052501307391569
#>     Attrib V23    0.25885542798857025
#>     Attrib V24    0.08986303127666201
#>     Attrib V25    -0.2983671922795791
#>     Attrib V26    -0.6083571029515255
#>     Attrib V27    -0.2981338417274809
#>     Attrib V28    -0.07161511394597231
#>     Attrib V29    -0.5536649619063148
#>     Attrib V3    -0.05465882248227971
#>     Attrib V30    0.15009842889496716
#>     Attrib V31    -1.090061699438355
#>     Attrib V32    0.0420060274216687
#>     Attrib V33    0.433808261878557
#>     Attrib V34    -0.37113885550224285
#>     Attrib V35    -0.26428051674517056
#>     Attrib V36    -0.7562399119051388
#>     Attrib V37    -0.9700002223238798
#>     Attrib V38    -0.2040689300217583
#>     Attrib V39    0.004211959518755298
#>     Attrib V4    0.09471203296292119
#>     Attrib V40    -0.06766102717652647
#>     Attrib V41    0.20026820895816938
#>     Attrib V42    0.20278052535746746
#>     Attrib V43    0.171423189269112
#>     Attrib V44    0.0411438835483262
#>     Attrib V45    0.15898993097087513
#>     Attrib V46    -0.26258240646761855
#>     Attrib V47    -0.2990227291686761
#>     Attrib V48    0.40038959899301413
#>     Attrib V49    0.44224944434542224
#>     Attrib V5    -0.05856596315973991
#>     Attrib V50    -0.5661789232890742
#>     Attrib V51    0.13394798234079305
#>     Attrib V52    0.40633855458251184
#>     Attrib V53    0.2561250299072122
#>     Attrib V54    0.2408589043815789
#>     Attrib V55    -0.4891642307321653
#>     Attrib V56    0.33241952995631613
#>     Attrib V57    0.29932389934321707
#>     Attrib V58    0.8054504803761661
#>     Attrib V59    0.9016446099069944
#>     Attrib V6    -0.08420962381153797
#>     Attrib V60    0.5170330807686362
#>     Attrib V7    0.0019151638297415596
#>     Attrib V8    -0.23052229910888034
#>     Attrib V9    0.2784936280225211
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.6102124985938989
#>     Attrib V1    -0.3180000495473214
#>     Attrib V10    0.8156904227624847
#>     Attrib V11    1.2989904327043744
#>     Attrib V12    1.7129105890473215
#>     Attrib V13    0.6515415461323663
#>     Attrib V14    -0.21568881122767058
#>     Attrib V15    -0.6620627428885497
#>     Attrib V16    -0.6428960841244344
#>     Attrib V17    -0.5647695234208748
#>     Attrib V18    -0.35233670586105204
#>     Attrib V19    -0.36119177071361425
#>     Attrib V2    -0.32611432314691574
#>     Attrib V20    -0.7939880551453118
#>     Attrib V21    -0.28451980474116795
#>     Attrib V22    0.4210314399737682
#>     Attrib V23    0.5245048462264469
#>     Attrib V24    0.3583610687203024
#>     Attrib V25    0.32430566385656606
#>     Attrib V26    0.8873028311569947
#>     Attrib V27    1.1616468269711986
#>     Attrib V28    1.1779610750141807
#>     Attrib V29    0.6056385577819452
#>     Attrib V3    0.11035987496128791
#>     Attrib V30    0.680229648004441
#>     Attrib V31    -0.8543646844151636
#>     Attrib V32    -0.005407175325196875
#>     Attrib V33    -0.10795346377857205
#>     Attrib V34    -0.30388666876492404
#>     Attrib V35    0.24787968862976525
#>     Attrib V36    -0.21272513283052402
#>     Attrib V37    -0.06682623800516654
#>     Attrib V38    -0.11162236877476096
#>     Attrib V39    -0.00611121513285389
#>     Attrib V4    0.23597987426896966
#>     Attrib V40    0.0875777573912729
#>     Attrib V41    0.9181013901475134
#>     Attrib V42    -0.4658623000086056
#>     Attrib V43    -0.1175751836949777
#>     Attrib V44    -0.06597581361496291
#>     Attrib V45    0.47123600620644096
#>     Attrib V46    0.3957234042744502
#>     Attrib V47    0.37576240437823555
#>     Attrib V48    0.7602758871595227
#>     Attrib V49    0.733700213210615
#>     Attrib V5    0.4649304257060299
#>     Attrib V50    -0.44001442814343167
#>     Attrib V51    0.9300375415688554
#>     Attrib V52    0.9748744775270781
#>     Attrib V53    0.6180054661070936
#>     Attrib V54    -0.05803067054299769
#>     Attrib V55    -0.5977760371898192
#>     Attrib V56    -0.6483682506364781
#>     Attrib V57    -0.0619774373278706
#>     Attrib V58    0.4945285673364374
#>     Attrib V59    0.3188081544063305
#>     Attrib V6    0.340537691481741
#>     Attrib V60    0.3202409522079201
#>     Attrib V7    -0.31245800680441915
#>     Attrib V8    -0.6574011364364143
#>     Attrib V9    0.8158393842184539
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.07829473513060968
#>     Attrib V1    0.033481907447166295
#>     Attrib V10    0.15344426216031126
#>     Attrib V11    0.2573180281451376
#>     Attrib V12    0.25080886171688244
#>     Attrib V13    -0.034038989422107535
#>     Attrib V14    -0.04852827295668943
#>     Attrib V15    -0.06221895820973174
#>     Attrib V16    -0.0818536548349041
#>     Attrib V17    -0.24097353526179088
#>     Attrib V18    -0.32152254942927844
#>     Attrib V19    -0.3597086589745669
#>     Attrib V2    -0.06587653708879149
#>     Attrib V20    -0.412744307871362
#>     Attrib V21    -0.33694368001012115
#>     Attrib V22    -0.3348724300568929
#>     Attrib V23    -0.3164065616055285
#>     Attrib V24    -0.13406135832130722
#>     Attrib V25    -0.1140326501598583
#>     Attrib V26    0.03149432042339076
#>     Attrib V27    0.24352906215813427
#>     Attrib V28    0.3812727954560156
#>     Attrib V29    0.16990093590117533
#>     Attrib V3    0.05366592440201512
#>     Attrib V30    0.27829769576338725
#>     Attrib V31    -0.20992707447335182
#>     Attrib V32    0.12701091268381212
#>     Attrib V33    0.12809894129305224
#>     Attrib V34    -0.08005308057681966
#>     Attrib V35    0.006882826220986169
#>     Attrib V36    -0.09811694958496268
#>     Attrib V37    -0.11944607742265766
#>     Attrib V38    0.06214526541915521
#>     Attrib V39    0.0452484104417186
#>     Attrib V4    0.12947974135594012
#>     Attrib V40    -0.07052819330570301
#>     Attrib V41    0.03516375049494587
#>     Attrib V42    -0.2687365410147138
#>     Attrib V43    -0.10550925466590436
#>     Attrib V44    0.01669648030569682
#>     Attrib V45    0.20609826945158347
#>     Attrib V46    0.13895012682442603
#>     Attrib V47    0.12846750472963395
#>     Attrib V48    0.46449371431490166
#>     Attrib V49    0.3374261503929267
#>     Attrib V5    -0.004562862550033429
#>     Attrib V50    -0.10660692284633658
#>     Attrib V51    0.1775632789725839
#>     Attrib V52    0.24232597597955077
#>     Attrib V53    0.14672901917561515
#>     Attrib V54    0.050605325418628895
#>     Attrib V55    -0.07209682853892797
#>     Attrib V56    -0.11678398265758899
#>     Attrib V57    0.2981463779399388
#>     Attrib V58    0.20370137675231728
#>     Attrib V59    0.2225097082447128
#>     Attrib V6    -0.12748772002770528
#>     Attrib V60    0.21210472682751388
#>     Attrib V7    -0.10730480879426414
#>     Attrib V8    -0.16713936413271946
#>     Attrib V9    0.20027294739208748
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.2633630036829516
#>     Attrib V1    -0.6407385392769847
#>     Attrib V10    0.9613360343362778
#>     Attrib V11    1.3003351763496052
#>     Attrib V12    1.6940161687063182
#>     Attrib V13    0.557317661147837
#>     Attrib V14    -0.5080430234362169
#>     Attrib V15    -0.9367651629320708
#>     Attrib V16    -0.642769723419725
#>     Attrib V17    -0.4298110746443879
#>     Attrib V18    -0.16734400126343257
#>     Attrib V19    -0.2136401337435745
#>     Attrib V2    -0.5299246686955608
#>     Attrib V20    -0.9236535969151385
#>     Attrib V21    -0.5501853462365749
#>     Attrib V22    0.3579317540920002
#>     Attrib V23    0.6029927054751008
#>     Attrib V24    0.7290161986644359
#>     Attrib V25    0.9677736925051904
#>     Attrib V26    1.168442881245396
#>     Attrib V27    1.004685147784955
#>     Attrib V28    0.7126180746112788
#>     Attrib V29    -0.2655249548234831
#>     Attrib V3    -0.044940604456308215
#>     Attrib V30    0.34463332826977194
#>     Attrib V31    -0.6373561256334033
#>     Attrib V32    0.37091657425111857
#>     Attrib V33    0.2508850433638476
#>     Attrib V34    0.11283618673204529
#>     Attrib V35    0.5635929415935985
#>     Attrib V36    -0.1161051342671641
#>     Attrib V37    -0.4717467324838165
#>     Attrib V38    -0.38265488732732217
#>     Attrib V39    -0.16859688797361985
#>     Attrib V4    0.10737389484954538
#>     Attrib V40    0.009331038558059808
#>     Attrib V41    0.713479550142411
#>     Attrib V42    -0.6493102300990968
#>     Attrib V43    -0.09822334078083153
#>     Attrib V44    -0.08593773719782906
#>     Attrib V45    0.3523954547462209
#>     Attrib V46    0.41184269940483087
#>     Attrib V47    0.5035406693619153
#>     Attrib V48    0.9594040431767643
#>     Attrib V49    0.8823211183955002
#>     Attrib V5    0.3210300675533494
#>     Attrib V50    -0.4791467763581679
#>     Attrib V51    1.0611187539310931
#>     Attrib V52    0.9932550972155808
#>     Attrib V53    0.6223576420040522
#>     Attrib V54    -6.073960025918452E-4
#>     Attrib V55    -0.3684177943264469
#>     Attrib V56    -0.5746920957968374
#>     Attrib V57    -0.3459241780028091
#>     Attrib V58    0.5384582773904992
#>     Attrib V59    0.24736137681249903
#>     Attrib V6    0.14423261559674047
#>     Attrib V60    0.36460622910281293
#>     Attrib V7    -0.3938582183796655
#>     Attrib V8    -0.4994091807976715
#>     Attrib V9    0.9640057707207456
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.5565695566308244
#>     Attrib V1    0.10515892337438111
#>     Attrib V10    -0.19681724594879688
#>     Attrib V11    -0.7736124818073269
#>     Attrib V12    -0.774247078111015
#>     Attrib V13    0.13906955177999633
#>     Attrib V14    0.4896471524487873
#>     Attrib V15    0.330181672132753
#>     Attrib V16    0.2311136329354812
#>     Attrib V17    -0.04414556791074146
#>     Attrib V18    0.04365268892054981
#>     Attrib V19    0.08744972149386813
#>     Attrib V2    0.42720006930916404
#>     Attrib V20    -0.1028357566115144
#>     Attrib V21    -0.3147335635036232
#>     Attrib V22    -0.8518050481803315
#>     Attrib V23    -0.7129286531968893
#>     Attrib V24    -0.45023543473244027
#>     Attrib V25    0.06407095504773293
#>     Attrib V26    0.5544444208043835
#>     Attrib V27    0.2664980491763927
#>     Attrib V28    -0.265963585273211
#>     Attrib V29    0.12180418378640809
#>     Attrib V3    0.14413285828240466
#>     Attrib V30    -0.638843721639103
#>     Attrib V31    1.2387546566727357
#>     Attrib V32    -0.34732169369250476
#>     Attrib V33    -0.670033745334878
#>     Attrib V34    0.008078556608650228
#>     Attrib V35    -0.31038974364581284
#>     Attrib V36    0.2667019802142349
#>     Attrib V37    0.3375984091421649
#>     Attrib V38    -0.5543496391303792
#>     Attrib V39    -0.646753389207975
#>     Attrib V4    0.11393473329797392
#>     Attrib V40    -0.17938107930447067
#>     Attrib V41    -0.28145475224960975
#>     Attrib V42    0.19592713300894732
#>     Attrib V43    -0.1711350644945412
#>     Attrib V44    -0.40027606458844317
#>     Attrib V45    -0.8112442248091536
#>     Attrib V46    -0.09436634950985631
#>     Attrib V47    0.2932621256187798
#>     Attrib V48    -0.36375017649010716
#>     Attrib V49    -0.5997162334398386
#>     Attrib V5    -0.005851630501776207
#>     Attrib V50    1.2058740758456465
#>     Attrib V51    -0.21289419188395556
#>     Attrib V52    -0.6694518348576364
#>     Attrib V53    0.30676481536156375
#>     Attrib V54    -0.02742770954451902
#>     Attrib V55    0.7800234358450066
#>     Attrib V56    0.12132825058032293
#>     Attrib V57    0.4198420296993443
#>     Attrib V58    -0.720948470106287
#>     Attrib V59    -0.3298918326864608
#>     Attrib V6    -0.1516398072419079
#>     Attrib V60    0.028405901464338787
#>     Attrib V7    -0.07849004739454638
#>     Attrib V8    0.588600473102532
#>     Attrib V9    -0.8296199343361947
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.20877296095657139
#>     Attrib V1    -0.061438689953246695
#>     Attrib V10    0.06319121390118268
#>     Attrib V11    0.307348428671883
#>     Attrib V12    0.3652242426411819
#>     Attrib V13    -0.2175138829248591
#>     Attrib V14    -0.1282574606245261
#>     Attrib V15    -0.13146969414212775
#>     Attrib V16    -0.11339835064225523
#>     Attrib V17    -0.166663023886261
#>     Attrib V18    -0.20941828939700388
#>     Attrib V19    -0.3588019856906304
#>     Attrib V2    -0.2628116727580204
#>     Attrib V20    -0.31827514068923773
#>     Attrib V21    -0.2510502268875688
#>     Attrib V22    -0.1488037218018276
#>     Attrib V23    -0.1491300521636178
#>     Attrib V24    -0.10832950560048452
#>     Attrib V25    -0.15716709438755094
#>     Attrib V26    -0.1595131459065151
#>     Attrib V27    0.16429542491860627
#>     Attrib V28    0.3838011087809822
#>     Attrib V29    0.0138003891192874
#>     Attrib V3    -0.1278309607506111
#>     Attrib V30    0.36511829372179055
#>     Attrib V31    -0.517038399657937
#>     Attrib V32    0.11846383893386027
#>     Attrib V33    0.1992295675604007
#>     Attrib V34    -0.1040405563726317
#>     Attrib V35    0.025302499502513114
#>     Attrib V36    -0.26237784874686276
#>     Attrib V37    -0.3860278542780518
#>     Attrib V38    0.013026157271299143
#>     Attrib V39    0.023135986820275775
#>     Attrib V4    0.030762609113421113
#>     Attrib V40    -0.14372306943495183
#>     Attrib V41    -0.006006685440356857
#>     Attrib V42    -0.22567006314855734
#>     Attrib V43    -0.05159164324012917
#>     Attrib V44    0.0458961783959439
#>     Attrib V45    0.3278254050381166
#>     Attrib V46    0.006382700799005337
#>     Attrib V47    0.03888326306779083
#>     Attrib V48    0.5375689844090067
#>     Attrib V49    0.3920781466291047
#>     Attrib V5    -0.023281723995829322
#>     Attrib V50    -0.23841338465442174
#>     Attrib V51    0.2797561027284929
#>     Attrib V52    0.3067163435871502
#>     Attrib V53    0.06009795282495281
#>     Attrib V54    0.1737709845553141
#>     Attrib V55    -0.15640658789465645
#>     Attrib V56    -0.06245964098518109
#>     Attrib V57    0.20972850338486768
#>     Attrib V58    0.41365165263843595
#>     Attrib V59    0.2716069717763772
#>     Attrib V6    -0.17787111998114888
#>     Attrib V60    0.19058563373889806
#>     Attrib V7    -0.21194713419251035
#>     Attrib V8    -0.20146234273073896
#>     Attrib V9    0.2694960544179219
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.5547744797610735
#>     Attrib V1    -0.09215793617649065
#>     Attrib V10    0.2499190069613394
#>     Attrib V11    0.5971676735127552
#>     Attrib V12    0.7380542756336581
#>     Attrib V13    -0.09477247223749191
#>     Attrib V14    -0.08457726247181818
#>     Attrib V15    -0.16490649703199323
#>     Attrib V16    -0.2288303491933814
#>     Attrib V17    -0.4735806880773591
#>     Attrib V18    -0.4680420751280642
#>     Attrib V19    -0.47338402138229835
#>     Attrib V2    -0.2128520321074006
#>     Attrib V20    -0.6306571258623502
#>     Attrib V21    -0.39146147389526426
#>     Attrib V22    -0.1941237077254031
#>     Attrib V23    -0.1893404668928105
#>     Attrib V24    -0.29008500764761386
#>     Attrib V25    -0.6222185671756003
#>     Attrib V26    -0.27944593202245144
#>     Attrib V27    0.4172348748754342
#>     Attrib V28    0.6533540168399276
#>     Attrib V29    0.3047799289125912
#>     Attrib V3    -0.06019922586727813
#>     Attrib V30    0.6591126498366956
#>     Attrib V31    -0.40399354726695397
#>     Attrib V32    0.25946116310842726
#>     Attrib V33    0.2430380903360447
#>     Attrib V34    -0.24676682393655508
#>     Attrib V35    -0.25454232058023485
#>     Attrib V36    -0.7407303348439295
#>     Attrib V37    -0.6777893772599511
#>     Attrib V38    -0.1559946316771365
#>     Attrib V39    -0.026355396709567363
#>     Attrib V4    0.2151391343555883
#>     Attrib V40    -0.07402980578794945
#>     Attrib V41    0.32495126017618053
#>     Attrib V42    -0.23592877762880848
#>     Attrib V43    -0.05893905379425269
#>     Attrib V44    -0.2534800840867425
#>     Attrib V45    0.1292148444396728
#>     Attrib V46    -7.211149724952379E-4
#>     Attrib V47    0.01836944444737548
#>     Attrib V48    0.7422400490483545
#>     Attrib V49    0.5929897285945762
#>     Attrib V5    0.17679068376955198
#>     Attrib V50    -0.2941850263853842
#>     Attrib V51    0.47295918057731284
#>     Attrib V52    0.6414064441753458
#>     Attrib V53    0.42428104138763323
#>     Attrib V54    0.027065957359704636
#>     Attrib V55    -0.2994612695807077
#>     Attrib V56    -0.13926616445504658
#>     Attrib V57    0.29395802046150393
#>     Attrib V58    0.6004079810621342
#>     Attrib V59    0.4921345935680747
#>     Attrib V6    -0.01153034839011594
#>     Attrib V60    0.2603066257511312
#>     Attrib V7    -0.15513011091389037
#>     Attrib V8    -0.22638723967867022
#>     Attrib V9    0.48568574212290894
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.2010379133187136
#>     Attrib V1    0.07260634562328322
#>     Attrib V10    -0.02364054171576721
#>     Attrib V11    0.06321419512847817
#>     Attrib V12    0.06590813572769448
#>     Attrib V13    0.03774406099778695
#>     Attrib V14    0.09276296195316891
#>     Attrib V15    0.060675155768877435
#>     Attrib V16    0.03376202438938952
#>     Attrib V17    0.05660775381854424
#>     Attrib V18    -0.0033321349553704156
#>     Attrib V19    -0.09069815038571448
#>     Attrib V2    0.026631883680520923
#>     Attrib V20    -0.08170372987681236
#>     Attrib V21    -0.09641225241503529
#>     Attrib V22    -0.1328114239404797
#>     Attrib V23    -0.06262439793428506
#>     Attrib V24    -0.021163504002075728
#>     Attrib V25    0.015540119396492962
#>     Attrib V26    -0.07845401889156325
#>     Attrib V27    0.041708455271511194
#>     Attrib V28    -8.220553946077715E-4
#>     Attrib V29    -0.06829685503893829
#>     Attrib V3    0.14611756850719068
#>     Attrib V30    -0.00650596070289708
#>     Attrib V31    -0.22261529541958214
#>     Attrib V32    -0.0032656837933323474
#>     Attrib V33    0.013535866279919389
#>     Attrib V34    -0.008222644750907535
#>     Attrib V35    0.026244934149813194
#>     Attrib V36    -0.02682029775668872
#>     Attrib V37    -0.04584270364309918
#>     Attrib V38    0.03630757775896225
#>     Attrib V39    0.09413984740401503
#>     Attrib V4    0.13283767818258757
#>     Attrib V40    0.022893868930423868
#>     Attrib V41    0.04477770494927648
#>     Attrib V42    -0.004841649960436271
#>     Attrib V43    -0.011058721601743886
#>     Attrib V44    0.06126215820644869
#>     Attrib V45    0.05682814799097227
#>     Attrib V46    0.06679861044479647
#>     Attrib V47    0.07315698574825906
#>     Attrib V48    0.1371836958402452
#>     Attrib V49    0.1474861575711829
#>     Attrib V5    0.09190747701537108
#>     Attrib V50    -0.040100051748222156
#>     Attrib V51    0.0876191377940841
#>     Attrib V52    0.11111598127248186
#>     Attrib V53    0.1095678993821097
#>     Attrib V54    0.08534230865230721
#>     Attrib V55    0.04742365633426943
#>     Attrib V56    0.10124970736727186
#>     Attrib V57    0.2067058565625185
#>     Attrib V58    0.18626669336558213
#>     Attrib V59    0.2567238683518462
#>     Attrib V6    0.03205890959003543
#>     Attrib V60    0.23294673479119393
#>     Attrib V7    0.06475607868223848
#>     Attrib V8    -0.03214154405727158
#>     Attrib V9    0.06436136580329395
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.26068279568413505
#>     Attrib V1    0.20282786384285117
#>     Attrib V10    -0.14141428347640778
#>     Attrib V11    0.16872262356194448
#>     Attrib V12    0.12096437726135831
#>     Attrib V13    -0.4404364590782513
#>     Attrib V14    -0.08456435568943423
#>     Attrib V15    0.12952319935425008
#>     Attrib V16    0.09815908765614713
#>     Attrib V17    0.004328927679116013
#>     Attrib V18    -0.11830770165442689
#>     Attrib V19    -0.26217798550568727
#>     Attrib V2    -0.1453499276699817
#>     Attrib V20    -0.08873265612437092
#>     Attrib V21    0.09811621911097218
#>     Attrib V22    0.15153983241486527
#>     Attrib V23    -0.04455626839261794
#>     Attrib V24    -0.2697035630114553
#>     Attrib V25    -0.5892310287057727
#>     Attrib V26    -0.664940463436498
#>     Attrib V27    -0.4128045232139277
#>     Attrib V28    -0.15770492191018962
#>     Attrib V29    -0.4535283355416969
#>     Attrib V3    -0.12284813753936613
#>     Attrib V30    0.2576588588973733
#>     Attrib V31    -0.7675087177984666
#>     Attrib V32    0.060259734471232514
#>     Attrib V33    0.3582386002441605
#>     Attrib V34    -0.2753510050686473
#>     Attrib V35    -0.2138240591270235
#>     Attrib V36    -0.5946763542750931
#>     Attrib V37    -0.7122462301989992
#>     Attrib V38    -0.13673780644787029
#>     Attrib V39    0.035256604537974724
#>     Attrib V4    0.06862906977178444
#>     Attrib V40    -0.17404455806898617
#>     Attrib V41    -0.05936086881627525
#>     Attrib V42    -0.11731817967922893
#>     Attrib V43    -0.02310586959161541
#>     Attrib V44    0.03396970054161754
#>     Attrib V45    0.1921833058497758
#>     Attrib V46    -0.12759900943948185
#>     Attrib V47    -0.14844806064090357
#>     Attrib V48    0.5654551462961203
#>     Attrib V49    0.5072986015029068
#>     Attrib V5    -0.17556025323802768
#>     Attrib V50    -0.3563018207038048
#>     Attrib V51    0.10957852458084583
#>     Attrib V52    0.2717734392448286
#>     Attrib V53    -0.1093529573671105
#>     Attrib V54    0.27003380746442684
#>     Attrib V55    -0.22105340473412394
#>     Attrib V56    0.22785510103480147
#>     Attrib V57    0.3621335453338741
#>     Attrib V58    0.6503905220528591
#>     Attrib V59    0.6058470113633755
#>     Attrib V6    -0.2521598182177366
#>     Attrib V60    0.42116027399815703
#>     Attrib V7    -0.03779655414827144
#>     Attrib V8    -0.21054517550629992
#>     Attrib V9    0.2308469986079045
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.3987249554514559
#>     Attrib V1    -0.11953224995601955
#>     Attrib V10    -0.7735046548413568
#>     Attrib V11    -1.5422065327351484
#>     Attrib V12    -1.077772762981385
#>     Attrib V13    0.14459883364169385
#>     Attrib V14    0.6747736642323091
#>     Attrib V15    0.7502494069286203
#>     Attrib V16    0.5272225690051737
#>     Attrib V17    -0.18546847980379524
#>     Attrib V18    -0.35915067367254455
#>     Attrib V19    -0.34440800118475434
#>     Attrib V2    0.49131837856771093
#>     Attrib V20    -0.8662140315292439
#>     Attrib V21    -0.981568698701856
#>     Attrib V22    -1.6689209386847579
#>     Attrib V23    -1.7390310818209807
#>     Attrib V24    -0.9111321397488241
#>     Attrib V25    -0.06919962946722177
#>     Attrib V26    0.874821202378768
#>     Attrib V27    0.2762573012428523
#>     Attrib V28    -0.5638677160027517
#>     Attrib V29    0.2696298019131855
#>     Attrib V3    0.0877148810611558
#>     Attrib V30    -1.0237014186103026
#>     Attrib V31    1.6850658534051128
#>     Attrib V32    -0.5445214127155853
#>     Attrib V33    -0.974891335372788
#>     Attrib V34    0.1008641406918834
#>     Attrib V35    -0.5788040149460048
#>     Attrib V36    0.11328657181665319
#>     Attrib V37    0.41079526923338155
#>     Attrib V38    -1.433397731708514
#>     Attrib V39    -1.083849840666055
#>     Attrib V4    -0.17099479511522547
#>     Attrib V40    -0.09146742218623326
#>     Attrib V41    0.14665865856617788
#>     Attrib V42    0.8018042951251056
#>     Attrib V43    -0.12343393676536117
#>     Attrib V44    -0.9614414154047606
#>     Attrib V45    -1.1859709180566416
#>     Attrib V46    0.1352302468076122
#>     Attrib V47    0.7984839642516464
#>     Attrib V48    0.20368486549586726
#>     Attrib V49    -0.683973254075283
#>     Attrib V5    -0.37057498824805374
#>     Attrib V50    1.6676796880383062
#>     Attrib V51    -0.26140406479176764
#>     Attrib V52    -1.271335157171989
#>     Attrib V53    0.308613801639172
#>     Attrib V54    -0.3276992966999408
#>     Attrib V55    1.2070506712612592
#>     Attrib V56    0.18500342341239104
#>     Attrib V57    0.9367702414191916
#>     Attrib V58    -1.2756403032386732
#>     Attrib V59    -0.10605224414454231
#>     Attrib V6    -0.919613874885319
#>     Attrib V60    0.4219656528087175
#>     Attrib V7    -0.978155703185788
#>     Attrib V8    0.3778832804793418
#>     Attrib V9    -1.758761750788353
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.15140481390087557
#>     Attrib V1    0.07709944414655462
#>     Attrib V10    -0.0037649572098477544
#>     Attrib V11    0.06288459642030265
#>     Attrib V12    0.07951113403280591
#>     Attrib V13    -0.011992985583135073
#>     Attrib V14    0.04700113791240173
#>     Attrib V15    0.05521145802677467
#>     Attrib V16    0.10086530441025496
#>     Attrib V17    0.061156400874454175
#>     Attrib V18    0.023636668395702037
#>     Attrib V19    -0.06885203286878887
#>     Attrib V2    -0.02170257853500473
#>     Attrib V20    -0.14084171198377626
#>     Attrib V21    -0.14026461448880803
#>     Attrib V22    -0.12779862330555514
#>     Attrib V23    -0.14173070669686685
#>     Attrib V24    -0.005979765457569497
#>     Attrib V25    -0.009639238586928396
#>     Attrib V26    -0.09545948305295793
#>     Attrib V27    -0.02912433867596195
#>     Attrib V28    0.030982444863904952
#>     Attrib V29    -0.10975320765546795
#>     Attrib V3    0.10277779084214306
#>     Attrib V30    -0.0392384880156896
#>     Attrib V31    -0.24178774266685868
#>     Attrib V32    0.010403917924400043
#>     Attrib V33    0.023885565641609527
#>     Attrib V34    -0.024199062544867336
#>     Attrib V35    0.017645261207154116
#>     Attrib V36    -0.06445622361873468
#>     Attrib V37    -0.09237614254871256
#>     Attrib V38    0.034522815979716806
#>     Attrib V39    0.06143022939297063
#>     Attrib V4    0.13199296376971464
#>     Attrib V40    -0.03270428736408536
#>     Attrib V41    0.031157506095071445
#>     Attrib V42    -0.006175417741057634
#>     Attrib V43    0.004171264230162261
#>     Attrib V44    0.026582203493132273
#>     Attrib V45    0.11519123816611182
#>     Attrib V46    0.04952463407783563
#>     Attrib V47    0.026172361546818148
#>     Attrib V48    0.16429669465765714
#>     Attrib V49    0.11077641805717597
#>     Attrib V5    0.06279465639448983
#>     Attrib V50    0.001591324800139791
#>     Attrib V51    0.14885455157231592
#>     Attrib V52    0.1715941526781347
#>     Attrib V53    0.15489069484533335
#>     Attrib V54    0.1092309460950856
#>     Attrib V55    0.07612811174247516
#>     Attrib V56    0.12131536979639529
#>     Attrib V57    0.23515343894409269
#>     Attrib V58    0.2737420931850702
#>     Attrib V59    0.20931665458595014
#>     Attrib V6    0.006523338554986026
#>     Attrib V60    0.22339882871776742
#>     Attrib V7    0.015185802277071097
#>     Attrib V8    -0.044715919264835535
#>     Attrib V9    0.10746463305430867
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.06727059333616603
#>     Attrib V1    0.11741705636020595
#>     Attrib V10    0.06423161119762959
#>     Attrib V11    0.13100905266319804
#>     Attrib V12    0.07291322404797183
#>     Attrib V13    -0.09024314967854807
#>     Attrib V14    0.048723204953753325
#>     Attrib V15    0.120104840991293
#>     Attrib V16    0.03938394939361832
#>     Attrib V17    -0.01244818977926128
#>     Attrib V18    -0.07193243240517075
#>     Attrib V19    -0.12148464844036282
#>     Attrib V2    0.0627832164298737
#>     Attrib V20    -0.16714673132662938
#>     Attrib V21    -0.15246526665157942
#>     Attrib V22    -0.09492703696378683
#>     Attrib V23    -0.18195480942324124
#>     Attrib V24    -0.06243754410377667
#>     Attrib V25    -0.09659879615679764
#>     Attrib V26    -0.10069716116256923
#>     Attrib V27    0.015596552906550733
#>     Attrib V28    0.049598458726990445
#>     Attrib V29    -0.10855791254346267
#>     Attrib V3    0.06283454855276062
#>     Attrib V30    0.06928346338656709
#>     Attrib V31    -0.18956559429663328
#>     Attrib V32    -0.02772943887420594
#>     Attrib V33    0.08410749997517934
#>     Attrib V34    -0.09587453828271839
#>     Attrib V35    0.056565829925591206
#>     Attrib V36    -0.08910351388519938
#>     Attrib V37    -0.1463979819349716
#>     Attrib V38    0.08224236845915084
#>     Attrib V39    0.07606643251491622
#>     Attrib V4    0.1279305291185478
#>     Attrib V40    -0.0686307302536744
#>     Attrib V41    0.032802249228547256
#>     Attrib V42    -0.08894028038750915
#>     Attrib V43    0.041145156245892364
#>     Attrib V44    0.08999363078496363
#>     Attrib V45    0.18221153352372763
#>     Attrib V46    0.017288958173920968
#>     Attrib V47    -0.006786770292702911
#>     Attrib V48    0.2810540236653868
#>     Attrib V49    0.15616725432686956
#>     Attrib V5    0.03907501515074343
#>     Attrib V50    -0.025649484690091602
#>     Attrib V51    0.1263469872024011
#>     Attrib V52    0.1392852771141853
#>     Attrib V53    0.06255745014129893
#>     Attrib V54    0.11178248330194708
#>     Attrib V55    0.08069239899149667
#>     Attrib V56    0.09909110759703683
#>     Attrib V57    0.28964259173603624
#>     Attrib V58    0.2010754412398803
#>     Attrib V59    0.21333974501968261
#>     Attrib V6    -0.03261600783656731
#>     Attrib V60    0.21961441336711734
#>     Attrib V7    -0.04899473833613929
#>     Attrib V8    0.0030158666661536998
#>     Attrib V9    0.11881755052572827
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.2965618458556802
#>     Attrib V1    0.08490095169056394
#>     Attrib V10    0.04264344452704771
#>     Attrib V11    -0.5472858461014919
#>     Attrib V12    -0.6753282138204677
#>     Attrib V13    -0.03798175743533212
#>     Attrib V14    0.11272886799371211
#>     Attrib V15    0.0717652400511598
#>     Attrib V16    0.07156717701658898
#>     Attrib V17    0.02604755332178431
#>     Attrib V18    0.121344154780789
#>     Attrib V19    0.07044272286920746
#>     Attrib V2    0.2515843511547866
#>     Attrib V20    0.09670165928453074
#>     Attrib V21    -0.0018699010406527986
#>     Attrib V22    -0.4283527284898623
#>     Attrib V23    -0.3548163147308336
#>     Attrib V24    -0.29242112456750474
#>     Attrib V25    -0.09423928569148357
#>     Attrib V26    0.04005794149720236
#>     Attrib V27    -0.06702573330415146
#>     Attrib V28    -0.37060577022365143
#>     Attrib V29    0.03744883779412146
#>     Attrib V3    0.13971473528830167
#>     Attrib V30    -0.4118994698716864
#>     Attrib V31    0.9520252157673076
#>     Attrib V32    -0.06101209424699887
#>     Attrib V33    -0.33708948628155627
#>     Attrib V34    0.16286973269840668
#>     Attrib V35    -0.13646064177534717
#>     Attrib V36    0.4014834433492672
#>     Attrib V37    0.4455580713957208
#>     Attrib V38    -0.057369832761659884
#>     Attrib V39    -0.18555625417857427
#>     Attrib V4    0.10014940790099601
#>     Attrib V40    -0.041679647306525645
#>     Attrib V41    -0.18847716122296385
#>     Attrib V42    0.03469177683052105
#>     Attrib V43    -0.24604164339395315
#>     Attrib V44    -0.20548750496323853
#>     Attrib V45    -0.5616331919541417
#>     Attrib V46    -0.17118069304004055
#>     Attrib V47    0.024851021269539603
#>     Attrib V48    -0.4928984048136323
#>     Attrib V49    -0.5122608200664085
#>     Attrib V5    0.11875397303889272
#>     Attrib V50    0.6184463112060953
#>     Attrib V51    -0.23716190485833002
#>     Attrib V52    -0.505136248296526
#>     Attrib V53    0.06501734384550645
#>     Attrib V54    -0.13919344678300052
#>     Attrib V55    0.3735339365756905
#>     Attrib V56    0.06302508482896976
#>     Attrib V57    0.11936326372651686
#>     Attrib V58    -0.5498385235472175
#>     Attrib V59    -0.333604267480469
#>     Attrib V6    0.250722689241263
#>     Attrib V60    -0.11089935209060638
#>     Attrib V7    0.3947672817161292
#>     Attrib V8    0.6172857047197338
#>     Attrib V9    -0.3172118889806883
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.6008576231766322
#>     Attrib V1    -0.04123941623711932
#>     Attrib V10    0.43941551854409444
#>     Attrib V11    0.6766115805068971
#>     Attrib V12    1.2272760451050317
#>     Attrib V13    0.2403248080327937
#>     Attrib V14    -0.012830295308508854
#>     Attrib V15    -0.14858044829467168
#>     Attrib V16    -0.45309418402643237
#>     Attrib V17    -0.6750851002038896
#>     Attrib V18    -0.6714919654111061
#>     Attrib V19    -0.6450396022457023
#>     Attrib V2    -0.1595502886640082
#>     Attrib V20    -0.8335218137647624
#>     Attrib V21    -0.5810002625318701
#>     Attrib V22    -0.3824803235027863
#>     Attrib V23    -0.40152077127649516
#>     Attrib V24    -0.2602287443641026
#>     Attrib V25    -0.48485382980536507
#>     Attrib V26    0.011602542354723482
#>     Attrib V27    0.6590739122208019
#>     Attrib V28    0.6930094933975803
#>     Attrib V29    0.2666282639967161
#>     Attrib V3    0.12070080002912387
#>     Attrib V30    0.5589183696736658
#>     Attrib V31    -0.15977706507763637
#>     Attrib V32    0.3278409888699531
#>     Attrib V33    0.16192060971954503
#>     Attrib V34    -0.2034601014194275
#>     Attrib V35    -0.20307820331660337
#>     Attrib V36    -0.7730591058808818
#>     Attrib V37    -0.5677903774435493
#>     Attrib V38    -0.2623035990282623
#>     Attrib V39    -0.011788881930706468
#>     Attrib V4    0.2756660246562148
#>     Attrib V40    0.05248718725877962
#>     Attrib V41    0.5479392752994322
#>     Attrib V42    -0.27081005584500023
#>     Attrib V43    -0.22871105965904262
#>     Attrib V44    -0.3883597013057711
#>     Attrib V45    0.11021920019550945
#>     Attrib V46    0.07493821996652557
#>     Attrib V47    0.0653627375878551
#>     Attrib V48    0.7719609604592292
#>     Attrib V49    0.7007983979971755
#>     Attrib V5    0.3481275071786845
#>     Attrib V50    -0.31369404804939566
#>     Attrib V51    0.4774331968268328
#>     Attrib V52    0.7028714993080528
#>     Attrib V53    0.6866946586686548
#>     Attrib V54    -0.006411658605189263
#>     Attrib V55    -0.26028028811048026
#>     Attrib V56    -0.40111221677788705
#>     Attrib V57    0.3104526526583028
#>     Attrib V58    0.5523603582939443
#>     Attrib V59    0.4157610150907336
#>     Attrib V6    0.2350048040004303
#>     Attrib V60    0.27605378186391344
#>     Attrib V7    -0.14062162155925037
#>     Attrib V8    -0.3230640299924599
#>     Attrib V9    0.5276559607419509
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.21732791769017856
#>     Attrib V1    -0.11956558858377386
#>     Attrib V10    -0.2700831020905357
#>     Attrib V11    0.5028002567785239
#>     Attrib V12    0.7562581236166318
#>     Attrib V13    -0.13298245435123923
#>     Attrib V14    -0.07880307967263796
#>     Attrib V15    -0.12801138280903027
#>     Attrib V16    0.053751693713244744
#>     Attrib V17    0.2351220135368455
#>     Attrib V18    0.28365473801900226
#>     Attrib V19    0.011399551832581413
#>     Attrib V2    -0.32344232718123406
#>     Attrib V20    -0.08969514420826714
#>     Attrib V21    0.19672949186813704
#>     Attrib V22    0.7792850479049468
#>     Attrib V23    0.7675339960579141
#>     Attrib V24    0.5131367367976934
#>     Attrib V25    0.21726505771006233
#>     Attrib V26    -0.05075932288380192
#>     Attrib V27    0.2040147189821939
#>     Attrib V28    0.39191935831852914
#>     Attrib V29    -0.31509971362479405
#>     Attrib V3    -0.1605525316947737
#>     Attrib V30    0.2479726094566415
#>     Attrib V31    -1.4642298588999163
#>     Attrib V32    -0.1225081967561065
#>     Attrib V33    0.37832988738032575
#>     Attrib V34    -0.3141301923657365
#>     Attrib V35    0.21223029289339365
#>     Attrib V36    -0.08522077406878034
#>     Attrib V37    -0.5069878448696116
#>     Attrib V38    0.15350578301547563
#>     Attrib V39    0.0843157649004202
#>     Attrib V4    0.04104423824895301
#>     Attrib V40    -0.07296865429710671
#>     Attrib V41    0.153359174265949
#>     Attrib V42    2.761290053125747E-4
#>     Attrib V43    0.4287488810129969
#>     Attrib V44    0.37496706975240945
#>     Attrib V45    0.36496463471555535
#>     Attrib V46    -0.1661967055093309
#>     Attrib V47    -0.3594790824343625
#>     Attrib V48    0.2544631725228952
#>     Attrib V49    0.39889198153989863
#>     Attrib V5    0.01553989864206223
#>     Attrib V50    -0.8199592607334475
#>     Attrib V51    0.29559812867614865
#>     Attrib V52    0.613213557350095
#>     Attrib V53    0.21060479370617277
#>     Attrib V54    0.4893043502180852
#>     Attrib V55    -0.4520152568688504
#>     Attrib V56    0.14558550173306187
#>     Attrib V57    0.026475939347071015
#>     Attrib V58    0.9248260329296332
#>     Attrib V59    0.8703122813484703
#>     Attrib V6    -0.1473372603332969
#>     Attrib V60    0.5487990742146774
#>     Attrib V7    -0.07714094148575669
#>     Attrib V8    -0.5457915127555771
#>     Attrib V9    0.3183255799448022
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.38041339591689577
#>     Attrib V1    -0.02340631129736566
#>     Attrib V10    -0.5859327468707398
#>     Attrib V11    -1.1953761660842965
#>     Attrib V12    -0.9670878762055444
#>     Attrib V13    0.07697873609740134
#>     Attrib V14    0.5469180914931033
#>     Attrib V15    0.5537941527774486
#>     Attrib V16    0.3893505644222424
#>     Attrib V17    -0.10882602724514534
#>     Attrib V18    -0.18750771720369666
#>     Attrib V19    -0.19926241814751933
#>     Attrib V2    0.4052116113298278
#>     Attrib V20    -0.5691015911265046
#>     Attrib V21    -0.6622849596633816
#>     Attrib V22    -1.3397381898404699
#>     Attrib V23    -1.3042126157193614
#>     Attrib V24    -0.6527232170495384
#>     Attrib V25    0.05083345145477223
#>     Attrib V26    0.7328600252502918
#>     Attrib V27    0.2914028207237629
#>     Attrib V28    -0.4307283543723695
#>     Attrib V29    0.1745005175512705
#>     Attrib V3    0.0329492771704995
#>     Attrib V30    -0.8737793925893843
#>     Attrib V31    1.3691350602644312
#>     Attrib V32    -0.49090516492623837
#>     Attrib V33    -0.8421751172515027
#>     Attrib V34    -0.0160423274691028
#>     Attrib V35    -0.4637155360375078
#>     Attrib V36    0.16296594857157812
#>     Attrib V37    0.3214319253446867
#>     Attrib V38    -1.0911728289618627
#>     Attrib V39    -0.8912740811984006
#>     Attrib V4    -0.04899190728378866
#>     Attrib V40    -0.11317501239365187
#>     Attrib V41    0.007013978888675788
#>     Attrib V42    0.6015367981384897
#>     Attrib V43    -0.01509961688960285
#>     Attrib V44    -0.6416976633789742
#>     Attrib V45    -1.0245246046719363
#>     Attrib V46    0.014428085818833489
#>     Attrib V47    0.5587284476380163
#>     Attrib V48    0.01818110922003517
#>     Attrib V49    -0.6506870161816977
#>     Attrib V5    -0.2273671549527431
#>     Attrib V50    1.3765216923849026
#>     Attrib V51    -0.21870858116225111
#>     Attrib V52    -0.9475768670918817
#>     Attrib V53    0.2632754729389283
#>     Attrib V54    -0.14163504563402282
#>     Attrib V55    0.9738568820758976
#>     Attrib V56    0.16237043381488322
#>     Attrib V57    0.7901571299819997
#>     Attrib V58    -0.9452802473327713
#>     Attrib V59    -0.033825518749673655
#>     Attrib V6    -0.676172179347119
#>     Attrib V60    0.38400611922330835
#>     Attrib V7    -0.5714265630679642
#>     Attrib V8    0.37335518831974873
#>     Attrib V9    -1.3427477523067324
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.12239769746573076
#>     Attrib V1    0.24007067545848526
#>     Attrib V10    -0.31451692532150954
#>     Attrib V11    -0.019298543547307697
#>     Attrib V12    0.00888679091606347
#>     Attrib V13    -0.3116923256447987
#>     Attrib V14    0.09189053474234857
#>     Attrib V15    0.1841494065449
#>     Attrib V16    0.28607302769057597
#>     Attrib V17    0.17825321033505276
#>     Attrib V18    0.09452583205515008
#>     Attrib V19    -0.06732895574071031
#>     Attrib V2    -0.024513240200761142
#>     Attrib V20    0.1236432516600582
#>     Attrib V21    0.22645163977371996
#>     Attrib V22    0.20793698788223738
#>     Attrib V23    -0.021053639565884234
#>     Attrib V24    -0.03574046414501609
#>     Attrib V25    -0.3726205916084559
#>     Attrib V26    -0.6079117020608666
#>     Attrib V27    -0.44157754063956084
#>     Attrib V28    -0.2839135626161922
#>     Attrib V29    -0.4183975896738352
#>     Attrib V3    -0.02342699146435289
#>     Attrib V30    -0.024501286726473764
#>     Attrib V31    -0.7558464820867887
#>     Attrib V32    -0.12272156957808321
#>     Attrib V33    0.16093391697507026
#>     Attrib V34    -0.25096670546498634
#>     Attrib V35    -0.16037334669762043
#>     Attrib V36    -0.36533061267693573
#>     Attrib V37    -0.5002386476307268
#>     Attrib V38    -0.04587995596484603
#>     Attrib V39    0.05849874651868931
#>     Attrib V4    0.08425382542089478
#>     Attrib V40    -0.03675001063749673
#>     Attrib V41    -0.06733223046338326
#>     Attrib V42    -0.024184368284202253
#>     Attrib V43    0.10004743480905987
#>     Attrib V44    0.051825878447829876
#>     Attrib V45    0.1305077212403798
#>     Attrib V46    -0.11952167329822024
#>     Attrib V47    -0.24505725799784178
#>     Attrib V48    0.2892741140088253
#>     Attrib V49    0.2754557014532545
#>     Attrib V5    -0.05314902041726419
#>     Attrib V50    -0.31088334267616324
#>     Attrib V51    -0.016232912200855286
#>     Attrib V52    0.16999982184174817
#>     Attrib V53    0.06276181803247041
#>     Attrib V54    0.3375110189141423
#>     Attrib V55    -0.13351982047094182
#>     Attrib V56    0.2992003507378692
#>     Attrib V57    0.3718093555251507
#>     Attrib V58    0.6008251357128774
#>     Attrib V59    0.6392480355530064
#>     Attrib V6    -0.1196783510258908
#>     Attrib V60    0.43441676127095696
#>     Attrib V7    0.05636496230394206
#>     Attrib V8    -0.2105091750076954
#>     Attrib V9    0.06820258000647576
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.10202387730759564
#>     Attrib V1    0.2527417070469185
#>     Attrib V10    -0.5390707314031117
#>     Attrib V11    -0.01641476448221088
#>     Attrib V12    0.07620415132442519
#>     Attrib V13    -0.32546030966327866
#>     Attrib V14    0.10573258347770582
#>     Attrib V15    0.2577223086197793
#>     Attrib V16    0.318610508999593
#>     Attrib V17    0.37455736964737135
#>     Attrib V18    0.2627191592270279
#>     Attrib V19    0.024366657116044115
#>     Attrib V2    -0.07424712959828489
#>     Attrib V20    0.1778804166755235
#>     Attrib V21    0.2950621709089153
#>     Attrib V22    0.4246462595735923
#>     Attrib V23    0.24934589099561072
#>     Attrib V24    0.06586491995178934
#>     Attrib V25    -0.27319835743598136
#>     Attrib V26    -0.6514650355675099
#>     Attrib V27    -0.5520254194891003
#>     Attrib V28    -0.3210268269028103
#>     Attrib V29    -0.6632678176436052
#>     Attrib V3    0.03402089850858076
#>     Attrib V30    -0.13218714464535694
#>     Attrib V31    -1.1236522273316114
#>     Attrib V32    -0.18996463096242272
#>     Attrib V33    0.26793323456640067
#>     Attrib V34    -0.3129959111804507
#>     Attrib V35    -0.08616284028359902
#>     Attrib V36    -0.3781013881989777
#>     Attrib V37    -0.5915826252243738
#>     Attrib V38    0.006663217715559012
#>     Attrib V39    0.12010536576109311
#>     Attrib V4    0.12404828506014552
#>     Attrib V40    -0.05410392242396676
#>     Attrib V41    -0.009336968787990986
#>     Attrib V42    0.09952887895388067
#>     Attrib V43    0.22210352630617627
#>     Attrib V44    0.17018048073944153
#>     Attrib V45    0.272447872660963
#>     Attrib V46    -0.17687625825436545
#>     Attrib V47    -0.26910055994465293
#>     Attrib V48    0.1807409738767697
#>     Attrib V49    0.26831002542537197
#>     Attrib V5    -0.05526312457037195
#>     Attrib V50    -0.4877432893481196
#>     Attrib V51    -0.056394262567423484
#>     Attrib V52    0.280499903529626
#>     Attrib V53    0.16769105814050803
#>     Attrib V54    0.45172239233452094
#>     Attrib V55    -0.24183660354667882
#>     Attrib V56    0.42150235144382336
#>     Attrib V57    0.3228577555759079
#>     Attrib V58    0.7312483451181997
#>     Attrib V59    0.8890241370148719
#>     Attrib V6    -0.1306045731314659
#>     Attrib V60    0.527024574430868
#>     Attrib V7    0.11995297246347177
#>     Attrib V8    -0.20445750240187832
#>     Attrib V9    0.07422307797620877
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.1638454659645791
#>     Attrib V1    0.01320091106605689
#>     Attrib V10    0.04976571931368817
#>     Attrib V11    -0.2873396568489381
#>     Attrib V12    -0.31066977941071516
#>     Attrib V13    -0.006880531742733479
#>     Attrib V14    0.012328699268040378
#>     Attrib V15    0.01971756694664424
#>     Attrib V16    0.013261612645468521
#>     Attrib V17    0.14814346952464885
#>     Attrib V18    0.13501946283643113
#>     Attrib V19    0.02194227380330663
#>     Attrib V2    0.14319284796416662
#>     Attrib V20    -0.0671654097518937
#>     Attrib V21    -0.06772452391319757
#>     Attrib V22    -0.19149132839503907
#>     Attrib V23    -0.06093038173998036
#>     Attrib V24    -0.19664050759949384
#>     Attrib V25    -0.12051136312154882
#>     Attrib V26    -0.04983525890312204
#>     Attrib V27    -0.17598559257546298
#>     Attrib V28    -0.2059592844726361
#>     Attrib V29    0.02315375136174827
#>     Attrib V3    0.04818085057365541
#>     Attrib V30    -0.17961314725020167
#>     Attrib V31    0.6367530293239478
#>     Attrib V32    0.16681831475564457
#>     Attrib V33    -0.09684894707780936
#>     Attrib V34    0.17880775154807155
#>     Attrib V35    0.09739230555858626
#>     Attrib V36    0.4305871139941772
#>     Attrib V37    0.3851867856450667
#>     Attrib V38    0.051299514283540654
#>     Attrib V39    -0.09510505575803285
#>     Attrib V4    0.14805059713634047
#>     Attrib V40    0.1428315159593924
#>     Attrib V41    0.1181599591776028
#>     Attrib V42    0.06116757497071978
#>     Attrib V43    -0.012020745063326356
#>     Attrib V44    -0.09583023700199322
#>     Attrib V45    -0.37482506920058156
#>     Attrib V46    -0.08894480110926674
#>     Attrib V47    0.029693467522973402
#>     Attrib V48    -0.3348145990128686
#>     Attrib V49    -0.33929662952471085
#>     Attrib V5    0.08456330992565383
#>     Attrib V50    0.4372236800159782
#>     Attrib V51    -0.08223478236475124
#>     Attrib V52    -0.1725512668996093
#>     Attrib V53    0.036250599016035244
#>     Attrib V54    -0.06363794135183824
#>     Attrib V55    0.17910046080400335
#>     Attrib V56    0.08241467458285948
#>     Attrib V57    0.11485706519399382
#>     Attrib V58    -0.2595096992391408
#>     Attrib V59    -0.22279052790522555
#>     Attrib V6    0.3426852666336561
#>     Attrib V60    -0.12498445690869826
#>     Attrib V7    0.2781111339035295
#>     Attrib V8    0.4336320654372011
#>     Attrib V9    -0.05236815652514251
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    1.1787209143869712
#>     Attrib V1    -0.39626763050173525
#>     Attrib V10    1.17932531659703
#>     Attrib V11    1.5179426651221763
#>     Attrib V12    2.368412242340732
#>     Attrib V13    0.726335700110407
#>     Attrib V14    -0.4688705532372391
#>     Attrib V15    -0.9096740608874557
#>     Attrib V16    -0.7825794366336497
#>     Attrib V17    -0.7285158978788254
#>     Attrib V18    -0.5434311297407601
#>     Attrib V19    -0.44469086369355526
#>     Attrib V2    -0.3880204632196153
#>     Attrib V20    -1.0120492562651873
#>     Attrib V21    -0.42520432124162066
#>     Attrib V22    0.29742604828630126
#>     Attrib V23    0.46633579532659347
#>     Attrib V24    0.5343376388815547
#>     Attrib V25    0.15289248639767652
#>     Attrib V26    0.96791015776707
#>     Attrib V27    0.9829341507348742
#>     Attrib V28    0.20772241544435874
#>     Attrib V29    -0.5716348526238385
#>     Attrib V3    0.17906880953625465
#>     Attrib V30    0.5839115218252113
#>     Attrib V31    0.06292053958328239
#>     Attrib V32    0.6664590285958627
#>     Attrib V33    0.0303232239089187
#>     Attrib V34    -0.09205505586572979
#>     Attrib V35    0.06899101872626318
#>     Attrib V36    -1.3068671165908028
#>     Attrib V37    -1.266577779171371
#>     Attrib V38    -1.0135087828157883
#>     Attrib V39    -0.2966976360657638
#>     Attrib V4    0.02783023962380509
#>     Attrib V40    0.4406312021699039
#>     Attrib V41    1.469636509682422
#>     Attrib V42    -0.5239407832686697
#>     Attrib V43    -0.22518629495336395
#>     Attrib V44    -0.37280231002341857
#>     Attrib V45    0.10066985991039709
#>     Attrib V46    0.028699299428003394
#>     Attrib V47    0.11613392168790113
#>     Attrib V48    1.1363888553338037
#>     Attrib V49    1.2726390760118886
#>     Attrib V5    0.5097549038390737
#>     Attrib V50    -0.47224358046525244
#>     Attrib V51    1.06074697945598
#>     Attrib V52    1.0163315551548344
#>     Attrib V53    1.3717186550734988
#>     Attrib V54    -0.07792083009270791
#>     Attrib V55    -0.5112699631390965
#>     Attrib V56    -0.7064010541320449
#>     Attrib V57    0.06248168782577811
#>     Attrib V58    0.8159176382224299
#>     Attrib V59    0.35394728553375626
#>     Attrib V6    0.46949312130131476
#>     Attrib V60    0.0050799343763849375
#>     Attrib V7    -0.5638465290429184
#>     Attrib V8    -0.2769228400841851
#>     Attrib V9    1.3130649643269148
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.20891318322196964
#>     Attrib V1    0.04920454166601042
#>     Attrib V10    0.07003896628099716
#>     Attrib V11    -0.2312387483502115
#>     Attrib V12    -0.20188618531027905
#>     Attrib V13    -0.01720128174443698
#>     Attrib V14    0.012977585007585215
#>     Attrib V15    -0.09434020874642779
#>     Attrib V16    -0.04864923841375562
#>     Attrib V17    0.025381675184403336
#>     Attrib V18    0.03393687082769438
#>     Attrib V19    0.01428036879628973
#>     Attrib V2    0.18237874955416075
#>     Attrib V20    -0.08642168516037325
#>     Attrib V21    -0.05769932972498424
#>     Attrib V22    -0.11754798354727586
#>     Attrib V23    0.010618566359599702
#>     Attrib V24    -0.11069643331859952
#>     Attrib V25    -0.16510117003754418
#>     Attrib V26    -0.21936291584745277
#>     Attrib V27    -0.165582667450879
#>     Attrib V28    -0.16622824884667503
#>     Attrib V29    -0.016035997669721466
#>     Attrib V3    0.05694165469286913
#>     Attrib V30    -0.14375300567253738
#>     Attrib V31    0.5364508367907996
#>     Attrib V32    0.22351274791429035
#>     Attrib V33    0.13161692034355715
#>     Attrib V34    0.2129337607579472
#>     Attrib V35    0.2089200540808528
#>     Attrib V36    0.427912110258936
#>     Attrib V37    0.44073296042609633
#>     Attrib V38    0.10744758425875456
#>     Attrib V39    0.03238214189063312
#>     Attrib V4    0.14348117049993706
#>     Attrib V40    0.19456335036841665
#>     Attrib V41    0.18808844989406784
#>     Attrib V42    0.17028835269566645
#>     Attrib V43    0.05009412284931511
#>     Attrib V44    0.013549757158576736
#>     Attrib V45    -0.28153197742514746
#>     Attrib V46    -0.10714543692765105
#>     Attrib V47    -0.048987651378646184
#>     Attrib V48    -0.2569111321744467
#>     Attrib V49    -0.24396337769054702
#>     Attrib V5    0.0841913538660595
#>     Attrib V50    0.33849834108031734
#>     Attrib V51    -0.06279314551880075
#>     Attrib V52    -0.13659688850835353
#>     Attrib V53    0.12190011374157811
#>     Attrib V54    -0.027694788424266842
#>     Attrib V55    0.10284683080162876
#>     Attrib V56    0.10796346560686435
#>     Attrib V57    0.10068463661613736
#>     Attrib V58    -0.12133895379381816
#>     Attrib V59    -0.12735799548268328
#>     Attrib V6    0.37923228418274585
#>     Attrib V60    -0.012141216420217982
#>     Attrib V7    0.29424822951006446
#>     Attrib V8    0.4081911700892618
#>     Attrib V9    -0.04348013403315078
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.5267835740298462
#>     Attrib V1    0.15782901317407028
#>     Attrib V10    0.36722419498144515
#>     Attrib V11    0.5545047260394945
#>     Attrib V12    0.7260063341352868
#>     Attrib V13    -0.0024554701350811203
#>     Attrib V14    -0.09231317312838805
#>     Attrib V15    -0.10486106432828782
#>     Attrib V16    -0.3270344742234198
#>     Attrib V17    -0.6103276043745192
#>     Attrib V18    -0.5531214981756055
#>     Attrib V19    -0.6721576638581336
#>     Attrib V2    -0.15379116171531768
#>     Attrib V20    -0.6635505756144842
#>     Attrib V21    -0.34557505058944266
#>     Attrib V22    -0.3525813893181712
#>     Attrib V23    -0.4820178779308914
#>     Attrib V24    -0.34104411719915534
#>     Attrib V25    -0.5462599859361444
#>     Attrib V26    -0.08535348498905848
#>     Attrib V27    0.36095145336251
#>     Attrib V28    0.49974228936746157
#>     Attrib V29    0.23828986633105148
#>     Attrib V3    0.016265399330040373
#>     Attrib V30    0.5810653629603437
#>     Attrib V31    -0.29958301063686976
#>     Attrib V32    0.23521779560396833
#>     Attrib V33    0.16204529737077736
#>     Attrib V34    -0.16326171290603125
#>     Attrib V35    -0.1655851505738968
#>     Attrib V36    -0.5585697643587638
#>     Attrib V37    -0.44513594469625123
#>     Attrib V38    -0.09594549760738418
#>     Attrib V39    0.08616412840743437
#>     Attrib V4    0.15333387282027036
#>     Attrib V40    -0.14382535154052126
#>     Attrib V41    0.22304172586414964
#>     Attrib V42    -0.35075868999026527
#>     Attrib V43    -0.26543724997433815
#>     Attrib V44    -0.23894641431963837
#>     Attrib V45    0.23894462000765204
#>     Attrib V46    0.03405385772869362
#>     Attrib V47    0.053258975916646786
#>     Attrib V48    0.7621377347167375
#>     Attrib V49    0.5582633736366941
#>     Attrib V5    0.08861675260117216
#>     Attrib V50    -0.11093782726778491
#>     Attrib V51    0.402585932380149
#>     Attrib V52    0.49368443046433774
#>     Attrib V53    0.31887761371512796
#>     Attrib V54    0.11632231508973623
#>     Attrib V55    -0.1576788648253529
#>     Attrib V56    -0.2715389194223936
#>     Attrib V57    0.34248372880622746
#>     Attrib V58    0.4935153012620569
#>     Attrib V59    0.3752120519644503
#>     Attrib V6    0.017722022119242238
#>     Attrib V60    0.22909518071916418
#>     Attrib V7    -0.16901526637101083
#>     Attrib V8    -0.20767211251113643
#>     Attrib V9    0.4917277266463591
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.6384108059887583
#>     Attrib V1    0.0110646277983293
#>     Attrib V10    -0.49716368841181574
#>     Attrib V11    -1.2946687073816043
#>     Attrib V12    -1.3599773021135872
#>     Attrib V13    -0.3304515819351844
#>     Attrib V14    0.2589829170325243
#>     Attrib V15    -0.06165858790141809
#>     Attrib V16    -0.04812597202639252
#>     Attrib V17    -0.2931318258258124
#>     Attrib V18    0.11746878446649632
#>     Attrib V19    -0.16848929267305562
#>     Attrib V2    0.36237104059318653
#>     Attrib V20    -0.4913821355567132
#>     Attrib V21    -0.5825350897083873
#>     Attrib V22    -0.9497116884763199
#>     Attrib V23    -0.5229265801523639
#>     Attrib V24    -0.11730577620308798
#>     Attrib V25    0.15047948211275275
#>     Attrib V26    0.03262521689431187
#>     Attrib V27    -0.046233284000257086
#>     Attrib V28    -0.22216886067201547
#>     Attrib V29    0.05423140288968771
#>     Attrib V3    0.01927605115987132
#>     Attrib V30    -0.9862808904896473
#>     Attrib V31    0.9895371553248163
#>     Attrib V32    -0.055605121783649375
#>     Attrib V33    -0.5109912919229863
#>     Attrib V34    -0.11452155062820973
#>     Attrib V35    -0.11453210565904366
#>     Attrib V36    0.813774859556069
#>     Attrib V37    0.5413329708952063
#>     Attrib V38    -0.3015956620408426
#>     Attrib V39    -0.5442621558252867
#>     Attrib V4    0.22183798225134777
#>     Attrib V40    -0.13944469232914558
#>     Attrib V41    -0.05672442269859246
#>     Attrib V42    0.46318772877152675
#>     Attrib V43    0.22080628836275987
#>     Attrib V44    -0.0799966603529591
#>     Attrib V45    -0.9866651095921047
#>     Attrib V46    -0.5168491324328154
#>     Attrib V47    -0.12742551148099945
#>     Attrib V48    -0.49849598477084034
#>     Attrib V49    -0.7676752164668109
#>     Attrib V5    -0.33990935032756225
#>     Attrib V50    1.2551033396442732
#>     Attrib V51    -0.20445416688059523
#>     Attrib V52    -0.6313718967145245
#>     Attrib V53    0.389463932972117
#>     Attrib V54    0.323877076100131
#>     Attrib V55    0.7877086084245557
#>     Attrib V56    0.32835965646292686
#>     Attrib V57    0.6381829500987898
#>     Attrib V58    -0.4860759974619624
#>     Attrib V59    0.078116590639076
#>     Attrib V6    -0.1337846947364571
#>     Attrib V60    0.5151034743279532
#>     Attrib V7    0.10135383038405628
#>     Attrib V8    0.8457256909303769
#>     Attrib V9    -0.9137170692793495
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.010540311342941276
#>     Attrib V1    0.03599730531125055
#>     Attrib V10    -0.019733780184352123
#>     Attrib V11    0.18931340917347073
#>     Attrib V12    0.1931414944478498
#>     Attrib V13    -0.07267895666541849
#>     Attrib V14    0.0859761673323392
#>     Attrib V15    0.026983642911830037
#>     Attrib V16    -0.02969677262128856
#>     Attrib V17    -0.07654136811718351
#>     Attrib V18    -0.10324390223705593
#>     Attrib V19    -0.22223262019067705
#>     Attrib V2    -0.06705620616927176
#>     Attrib V20    -0.15365060985706927
#>     Attrib V21    -0.1112086471805767
#>     Attrib V22    -0.07190716104850321
#>     Attrib V23    -0.16407996640324168
#>     Attrib V24    -0.015274544643430298
#>     Attrib V25    6.099975443458122E-4
#>     Attrib V26    -0.09396675232442947
#>     Attrib V27    0.056844290824970986
#>     Attrib V28    0.12634463433299234
#>     Attrib V29    -6.0479910988223796E-5
#>     Attrib V3    0.05921015524233948
#>     Attrib V30    0.0648338429353518
#>     Attrib V31    -0.30108195159514944
#>     Attrib V32    0.026681037587222043
#>     Attrib V33    0.06749277641367232
#>     Attrib V34    -0.09897695902279946
#>     Attrib V35    0.018395678127098216
#>     Attrib V36    -0.13924274693678312
#>     Attrib V37    -0.16619620887169095
#>     Attrib V38    0.02510974651199271
#>     Attrib V39    0.06348943612749665
#>     Attrib V4    0.08506868081735411
#>     Attrib V40    -0.055947721295344484
#>     Attrib V41    0.03766855181201378
#>     Attrib V42    -0.1384509575332513
#>     Attrib V43    0.030563369423401633
#>     Attrib V44    0.0014106205741922498
#>     Attrib V45    0.22347411788652186
#>     Attrib V46    0.04768856469259519
#>     Attrib V47    0.04880843493977844
#>     Attrib V48    0.2778457417922404
#>     Attrib V49    0.19849443179170903
#>     Attrib V5    0.0024279897301930165
#>     Attrib V50    -0.08030121088896908
#>     Attrib V51    0.15246984762087745
#>     Attrib V52    0.23873576387456644
#>     Attrib V53    0.07725658953880199
#>     Attrib V54    0.13145808096523934
#>     Attrib V55    0.037775464657645905
#>     Attrib V56    0.06666073563127453
#>     Attrib V57    0.23443720736718618
#>     Attrib V58    0.26443133207017233
#>     Attrib V59    0.2648245072274578
#>     Attrib V6    -0.055430671316033416
#>     Attrib V60    0.2339367383951083
#>     Attrib V7    -0.04927863044682084
#>     Attrib V8    -0.08062176499818104
#>     Attrib V9    0.13219653552509775
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.14210504715277594
#>     Attrib V1    0.05038842560462894
#>     Attrib V10    0.134468085577039
#>     Attrib V11    -0.08803990941331939
#>     Attrib V12    -0.08599536379693747
#>     Attrib V13    0.051340294715494304
#>     Attrib V14    -0.0170032539681734
#>     Attrib V15    -0.005991871088030544
#>     Attrib V16    0.04596345258187288
#>     Attrib V17    0.14419644312564467
#>     Attrib V18    0.10733219121957988
#>     Attrib V19    -0.02267224355159673
#>     Attrib V2    0.13870735236304763
#>     Attrib V20    -0.0980074958670135
#>     Attrib V21    -0.03004263223176106
#>     Attrib V22    -0.06528757699595754
#>     Attrib V23    0.017054888901250384
#>     Attrib V24    -0.11304465069615864
#>     Attrib V25    -0.12285254496444073
#>     Attrib V26    -0.13585645080955838
#>     Attrib V27    -0.1637452397553464
#>     Attrib V28    -0.15171054892656693
#>     Attrib V29    -0.09435513532789236
#>     Attrib V3    0.05833038646261992
#>     Attrib V30    -0.060400618909560194
#>     Attrib V31    0.44784729733631373
#>     Attrib V32    0.1731579978819902
#>     Attrib V33    0.0737430353513575
#>     Attrib V34    0.16686276141681022
#>     Attrib V35    0.16319764361419575
#>     Attrib V36    0.2872732968152724
#>     Attrib V37    0.36281005202986505
#>     Attrib V38    0.09673826509993802
#>     Attrib V39    0.09750917570514116
#>     Attrib V4    0.11128079584436576
#>     Attrib V40    0.19069896649901186
#>     Attrib V41    0.17673743264566397
#>     Attrib V42    0.14887308457812792
#>     Attrib V43    0.005128107349473154
#>     Attrib V44    -0.02104996509413125
#>     Attrib V45    -0.17081900187358934
#>     Attrib V46    -0.041962129685561934
#>     Attrib V47    -0.029961766542392094
#>     Attrib V48    -0.1764267187384861
#>     Attrib V49    -0.17852165696793795
#>     Attrib V5    0.07850374113080612
#>     Attrib V50    0.1627767889131252
#>     Attrib V51    -0.041356098989946674
#>     Attrib V52    -0.0643770455438191
#>     Attrib V53    0.07867252804611995
#>     Attrib V54    -0.04848293889874482
#>     Attrib V55    0.037583989769245194
#>     Attrib V56    0.1033246528034782
#>     Attrib V57    0.021081015487009906
#>     Attrib V58    -0.0556133853384282
#>     Attrib V59    -0.07242849962584798
#>     Attrib V6    0.3086825916495376
#>     Attrib V60    -0.03763505407066255
#>     Attrib V7    0.21780070290390874
#>     Attrib V8    0.2757959163556754
#>     Attrib V9    0.006149053589505432
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.07068771049806166
#>     Attrib V1    0.3401961652604548
#>     Attrib V10    -0.553623303753815
#>     Attrib V11    -0.09352972714831204
#>     Attrib V12    -0.14094788270611883
#>     Attrib V13    -0.385181069227922
#>     Attrib V14    0.16299418526364973
#>     Attrib V15    0.4000734867194837
#>     Attrib V16    0.449351614367652
#>     Attrib V17    0.37928879555711603
#>     Attrib V18    0.23255109951504638
#>     Attrib V19    -0.0022024225262463324
#>     Attrib V2    0.07470695251913294
#>     Attrib V20    0.3258413411342763
#>     Attrib V21    0.37874778274596765
#>     Attrib V22    0.43445006961133326
#>     Attrib V23    0.13446017480964356
#>     Attrib V24    0.002730832064469517
#>     Attrib V25    -0.45732939313155513
#>     Attrib V26    -0.8329600694732089
#>     Attrib V27    -0.6951847621744782
#>     Attrib V28    -0.40511448272198636
#>     Attrib V29    -0.6628934853955216
#>     Attrib V3    -0.01087754258327424
#>     Attrib V30    -0.16357314579297064
#>     Attrib V31    -1.1538590232784052
#>     Attrib V32    -0.2725024487543197
#>     Attrib V33    0.28648221913882543
#>     Attrib V34    -0.26085354947183786
#>     Attrib V35    -0.08586444299685245
#>     Attrib V36    -0.3919244654626165
#>     Attrib V37    -0.5714339374887397
#>     Attrib V38    0.10504829767202359
#>     Attrib V39    0.16021291003482832
#>     Attrib V4    0.06807715475696222
#>     Attrib V40    -0.0013595753864682832
#>     Attrib V41    -0.05825945587493748
#>     Attrib V42    0.11378674622718868
#>     Attrib V43    0.19407722445945902
#>     Attrib V44    0.21504226670762755
#>     Attrib V45    0.27630800308997905
#>     Attrib V46    -0.1551786778809917
#>     Attrib V47    -0.3120453345724348
#>     Attrib V48    0.22845421235361202
#>     Attrib V49    0.2760362591479373
#>     Attrib V5    -0.1415023040620819
#>     Attrib V50    -0.4418275868684654
#>     Attrib V51    -0.10980139628441533
#>     Attrib V52    0.16610998976822478
#>     Attrib V53    0.11609188758632803
#>     Attrib V54    0.546639770913668
#>     Attrib V55    -0.18675274321002938
#>     Attrib V56    0.4107325569098629
#>     Attrib V57    0.43492115821349886
#>     Attrib V58    0.6955931972360592
#>     Attrib V59    0.8617717375160583
#>     Attrib V6    -0.18208629741929347
#>     Attrib V60    0.5686509414018993
#>     Attrib V7    0.1343165134472476
#>     Attrib V8    -0.17718643014451843
#>     Attrib V9    0.06291097887706763
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.08631296756925837
#>     Attrib V1    0.2526626041780057
#>     Attrib V10    -0.4551158039881735
#>     Attrib V11    -0.031923588699276514
#>     Attrib V12    -0.008234068346747546
#>     Attrib V13    -0.3499934314244559
#>     Attrib V14    0.14515639636568525
#>     Attrib V15    0.2668067143783122
#>     Attrib V16    0.33079149479148795
#>     Attrib V17    0.22527389982029608
#>     Attrib V18    0.22644151101698468
#>     Attrib V19    -0.03684107739487786
#>     Attrib V2    -0.03133619458275752
#>     Attrib V20    0.199812958887338
#>     Attrib V21    0.33714036960984184
#>     Attrib V22    0.32276652106029957
#>     Attrib V23    0.12411517782561557
#>     Attrib V24    -0.05316075889822125
#>     Attrib V25    -0.40599539505113524
#>     Attrib V26    -0.6357856439238659
#>     Attrib V27    -0.4415228880077442
#>     Attrib V28    -0.16696775023367658
#>     Attrib V29    -0.4169113109596674
#>     Attrib V3    0.03410597714870547
#>     Attrib V30    0.010075154853889072
#>     Attrib V31    -1.0060846677452715
#>     Attrib V32    -0.22706611930204257
#>     Attrib V33    0.19485402843528182
#>     Attrib V34    -0.28867019935340316
#>     Attrib V35    -0.12574330135699938
#>     Attrib V36    -0.2755489786057962
#>     Attrib V37    -0.4927220746570766
#>     Attrib V38    -0.0022061883521604705
#>     Attrib V39    0.145014241835497
#>     Attrib V4    0.048417282270759934
#>     Attrib V40    -0.06274988621821272
#>     Attrib V41    -0.06071045302808158
#>     Attrib V42    0.07558638750628907
#>     Attrib V43    0.08970069959693805
#>     Attrib V44    0.15747364495824667
#>     Attrib V45    0.2681371384004698
#>     Attrib V46    -0.14056468503615877
#>     Attrib V47    -0.25272956234122235
#>     Attrib V48    0.18380875203894842
#>     Attrib V49    0.2994059812380311
#>     Attrib V5    -0.07793901834530305
#>     Attrib V50    -0.3697384075900994
#>     Attrib V51    0.009128463488153589
#>     Attrib V52    0.23395645623739758
#>     Attrib V53    0.12849081328795425
#>     Attrib V54    0.31062739436998077
#>     Attrib V55    -0.21843736176555306
#>     Attrib V56    0.29375309620266526
#>     Attrib V57    0.3473155609358248
#>     Attrib V58    0.6612519029820063
#>     Attrib V59    0.6866742176885547
#>     Attrib V6    -0.12319685409084065
#>     Attrib V60    0.43512082308667793
#>     Attrib V7    0.05015587269104669
#>     Attrib V8    -0.15434081045161505
#>     Attrib V9    0.05719013993908775
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
