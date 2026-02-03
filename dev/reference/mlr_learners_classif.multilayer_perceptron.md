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
#>     Threshold    0.30607493163722815
#>     Node 2    2.34361436437546
#>     Node 3    1.6866917381665956
#>     Node 4    1.096582130557491
#>     Node 5    -1.875472732916615
#>     Node 6    1.9519429107985806
#>     Node 7    2.8997187837962315
#>     Node 8    1.2269758686367687
#>     Node 9    4.66857848387704
#>     Node 10    -1.643694647538594
#>     Node 11    1.1667535029645753
#>     Node 12    1.6716212530166772
#>     Node 13    0.4351395622900138
#>     Node 14    1.5562397827121701
#>     Node 15    -3.1163656178216024
#>     Node 16    0.30297022371011195
#>     Node 17    0.40716102884241107
#>     Node 18    -1.5707170835487416
#>     Node 19    2.1137130286738723
#>     Node 20    1.788129281619605
#>     Node 21    -2.4210341594383036
#>     Node 22    0.7882339896068634
#>     Node 23    0.4287444803838691
#>     Node 24    -1.4002099622950894
#>     Node 25    4.7841406311772285
#>     Node 26    -1.1528123504441374
#>     Node 27    1.4720333255825697
#>     Node 28    -2.777021299125498
#>     Node 29    1.1035693406750804
#>     Node 30    -0.3007970691801808
#>     Node 31    1.4798339456631087
#>     Node 32    -0.10158059446047202
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.2931629237310312
#>     Node 2    -2.3816507821172284
#>     Node 3    -1.669224514782015
#>     Node 4    -1.055503722423432
#>     Node 5    1.8946639195186255
#>     Node 6    -1.9307427806027841
#>     Node 7    -2.8958240378187705
#>     Node 8    -1.260187817067796
#>     Node 9    -4.668699103933102
#>     Node 10    1.6022525115007016
#>     Node 11    -1.1362870370040776
#>     Node 12    -1.7365458145881718
#>     Node 13    -0.38627411856297045
#>     Node 14    -1.5063800009320107
#>     Node 15    3.0953852182531216
#>     Node 16    -0.32369327193066316
#>     Node 17    -0.3771552569749787
#>     Node 18    1.6424924220573398
#>     Node 19    -2.11190294552902
#>     Node 20    -1.7708201312852687
#>     Node 21    2.4768144122366076
#>     Node 22    -0.8412750974965443
#>     Node 23    -0.4789583850555138
#>     Node 24    1.414799399696981
#>     Node 25    -4.772166718071278
#>     Node 26    1.0860177247528826
#>     Node 27    -1.5295455470275414
#>     Node 28    2.7272985034993904
#>     Node 29    -1.1403296406075667
#>     Node 30    0.36711059314209665
#>     Node 31    -1.4281470662470064
#>     Node 32    0.074951782986983
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.13613593663429585
#>     Attrib V1    0.11500936751303016
#>     Attrib V10    -0.21687386206806075
#>     Attrib V11    -0.1944704801948204
#>     Attrib V12    0.17603028023898193
#>     Attrib V13    0.28559288675949057
#>     Attrib V14    -0.13975528130443005
#>     Attrib V15    0.5920420631190172
#>     Attrib V16    0.7628475172017091
#>     Attrib V17    0.44688025029991696
#>     Attrib V18    -0.258048850286875
#>     Attrib V19    -0.007765421092653543
#>     Attrib V2    0.136063585325736
#>     Attrib V20    0.809518776597056
#>     Attrib V21    0.8293027477890421
#>     Attrib V22    0.6373807336627436
#>     Attrib V23    0.1591333989907742
#>     Attrib V24    0.1486314882482282
#>     Attrib V25    -0.3827196602438467
#>     Attrib V26    -1.271047738098844
#>     Attrib V27    -1.2866435624190573
#>     Attrib V28    -0.09169731600119298
#>     Attrib V29    -0.6501055239243849
#>     Attrib V3    -0.007486834402466291
#>     Attrib V30    0.11291419179514378
#>     Attrib V31    -1.4243914532500297
#>     Attrib V32    0.15722083598629105
#>     Attrib V33    0.8474971579040211
#>     Attrib V34    -0.1808436363351856
#>     Attrib V35    -0.640130143557141
#>     Attrib V36    -1.023377520043637
#>     Attrib V37    -1.0043626827842278
#>     Attrib V38    0.029458892959443612
#>     Attrib V39    0.30306692494144216
#>     Attrib V4    0.3104193856900216
#>     Attrib V40    -0.10815437784986384
#>     Attrib V41    -0.010090748353555185
#>     Attrib V42    0.7209111418347104
#>     Attrib V43    0.1369147311941469
#>     Attrib V44    0.34006566084216
#>     Attrib V45    0.6127976272811823
#>     Attrib V46    0.2943979917925931
#>     Attrib V47    -0.4351847807908595
#>     Attrib V48    -0.13537565352643796
#>     Attrib V49    0.3709876517396778
#>     Attrib V5    -0.27678196337252364
#>     Attrib V50    -1.06993867513218
#>     Attrib V51    -0.3066827981520865
#>     Attrib V52    0.04640634995932865
#>     Attrib V53    0.14806355382460262
#>     Attrib V54    0.8951596360755737
#>     Attrib V55    -0.25331838963629094
#>     Attrib V56    0.41838643628440864
#>     Attrib V57    0.46936799827946596
#>     Attrib V58    0.6086199064849098
#>     Attrib V59    0.8417006649379534
#>     Attrib V6    -0.33044270403908693
#>     Attrib V60    0.665093908257971
#>     Attrib V7    0.4881860381314711
#>     Attrib V8    0.22967518338986687
#>     Attrib V9    0.588616967953736
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.036774688771942475
#>     Attrib V1    -0.11500554462606033
#>     Attrib V10    0.021869100650007165
#>     Attrib V11    -0.010014291283371978
#>     Attrib V12    0.339821469112055
#>     Attrib V13    0.21517985609492404
#>     Attrib V14    -0.37361708708846797
#>     Attrib V15    0.2751168749424895
#>     Attrib V16    0.3744114694087512
#>     Attrib V17    0.22317264802474798
#>     Attrib V18    -0.2507873539975753
#>     Attrib V19    0.021066137745010392
#>     Attrib V2    -0.050678870228924755
#>     Attrib V20    0.38253537371040064
#>     Attrib V21    0.3243435362087703
#>     Attrib V22    0.45765381162942737
#>     Attrib V23    0.17904308365984234
#>     Attrib V24    0.24409979045992689
#>     Attrib V25    -0.003123263826479556
#>     Attrib V26    -0.6732100230473919
#>     Attrib V27    -0.8714263517082914
#>     Attrib V28    -0.17206788241607135
#>     Attrib V29    -0.8534475422839884
#>     Attrib V3    -0.15704599232227692
#>     Attrib V30    0.09815410264996387
#>     Attrib V31    -0.83076202674385
#>     Attrib V32    0.30124202724673976
#>     Attrib V33    0.7621018971798702
#>     Attrib V34    0.032360935372134074
#>     Attrib V35    -0.32384255542527857
#>     Attrib V36    -0.8239414394432532
#>     Attrib V37    -0.8986802124055479
#>     Attrib V38    -0.19155013589732836
#>     Attrib V39    0.06949235302957826
#>     Attrib V4    0.23688800287137532
#>     Attrib V40    -0.1156857822778894
#>     Attrib V41    0.015134985671936309
#>     Attrib V42    0.38568323349073147
#>     Attrib V43    0.0027616020236139703
#>     Attrib V44    0.12616394746560713
#>     Attrib V45    0.41923711158617166
#>     Attrib V46    0.1688546084211755
#>     Attrib V47    -0.24038446634250996
#>     Attrib V48    0.07634048503709925
#>     Attrib V49    0.43761217188241375
#>     Attrib V5    -0.210040830041048
#>     Attrib V50    -0.8563791677939162
#>     Attrib V51    -0.1649509215349689
#>     Attrib V52    0.15197975625650184
#>     Attrib V53    0.07200715955314241
#>     Attrib V54    0.776264643066963
#>     Attrib V55    -0.14257798106504804
#>     Attrib V56    0.15702632813286194
#>     Attrib V57    0.2441641048228968
#>     Attrib V58    0.49138673978936814
#>     Attrib V59    0.6172971656039639
#>     Attrib V6    -0.26988617438236784
#>     Attrib V60    0.4486531984110127
#>     Attrib V7    0.2812610511696385
#>     Attrib V8    0.11489777272373486
#>     Attrib V9    0.528609583135229
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.14325849194305018
#>     Attrib V1    0.06390575024454336
#>     Attrib V10    0.11796766735620062
#>     Attrib V11    0.05237782404912734
#>     Attrib V12    0.21297432341516528
#>     Attrib V13    0.048058937244803666
#>     Attrib V14    -0.14230627745054927
#>     Attrib V15    0.18945203392246296
#>     Attrib V16    0.10848474395338147
#>     Attrib V17    -0.07783420787308885
#>     Attrib V18    -0.28713906332295613
#>     Attrib V19    -0.1979618267177739
#>     Attrib V2    -0.025517430390031376
#>     Attrib V20    -0.07365124567326159
#>     Attrib V21    -0.04479335454850046
#>     Attrib V22    -0.1946585945884924
#>     Attrib V23    -0.38128595723989617
#>     Attrib V24    -0.34200736297804507
#>     Attrib V25    -0.2863649262399753
#>     Attrib V26    -0.3751917362843821
#>     Attrib V27    -0.23980034989503074
#>     Attrib V28    0.2658126838277285
#>     Attrib V29    0.027677760888561925
#>     Attrib V3    0.0011318402068388777
#>     Attrib V30    0.1927598840974753
#>     Attrib V31    -0.24031013632346043
#>     Attrib V32    0.1747507138279735
#>     Attrib V33    0.2838001539111235
#>     Attrib V34    0.07874490033851025
#>     Attrib V35    -0.11159447728928489
#>     Attrib V36    -0.47010937301523925
#>     Attrib V37    -0.379157539319181
#>     Attrib V38    -0.1551745897551524
#>     Attrib V39    -0.023347932174640557
#>     Attrib V4    0.34772466913290406
#>     Attrib V40    -0.1308894188741533
#>     Attrib V41    -0.019587943798106657
#>     Attrib V42    -0.026424334679821453
#>     Attrib V43    -0.25325666603073194
#>     Attrib V44    -0.16756095370857346
#>     Attrib V45    0.22363842386782665
#>     Attrib V46    0.053468189632770134
#>     Attrib V47    -0.06068738895856252
#>     Attrib V48    0.2894137149816957
#>     Attrib V49    0.35515321455524973
#>     Attrib V5    0.06550959169786913
#>     Attrib V50    -0.26189882322297386
#>     Attrib V51    0.07675206669703415
#>     Attrib V52    0.28530097153224826
#>     Attrib V53    0.1962217360863579
#>     Attrib V54    0.23522840364212244
#>     Attrib V55    0.07712218783249193
#>     Attrib V56    -0.045480688003016086
#>     Attrib V57    0.21201460525954685
#>     Attrib V58    0.17646908057310676
#>     Attrib V59    0.5371647291511517
#>     Attrib V6    -0.1913417057378935
#>     Attrib V60    0.29567010057271126
#>     Attrib V7    -0.021176021992806868
#>     Attrib V8    -0.044950638341134184
#>     Attrib V9    0.24291318188362016
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.2429839414604633
#>     Attrib V1    0.07982836451608502
#>     Attrib V10    -0.1362514303889269
#>     Attrib V11    -0.17857549279715676
#>     Attrib V12    -0.6838362274341249
#>     Attrib V13    -0.35745313658451244
#>     Attrib V14    0.5057879379620961
#>     Attrib V15    0.06833273162480877
#>     Attrib V16    0.37092633024354627
#>     Attrib V17    0.796472236381334
#>     Attrib V18    1.1617116016579139
#>     Attrib V19    0.24642431052006536
#>     Attrib V2    0.11770402487984961
#>     Attrib V20    -0.5181922719353945
#>     Attrib V21    -0.3833792258917989
#>     Attrib V22    -0.23640282502496834
#>     Attrib V23    0.015310994470188731
#>     Attrib V24    -0.27030245681382536
#>     Attrib V25    0.15847130900800938
#>     Attrib V26    0.34619315153283586
#>     Attrib V27    0.2662259628682727
#>     Attrib V28    -0.2844891019694749
#>     Attrib V29    0.2714740524935259
#>     Attrib V3    -0.053794825034170796
#>     Attrib V30    0.218464873219052
#>     Attrib V31    1.4552314611706776
#>     Attrib V32    0.6495443705920163
#>     Attrib V33    0.15190019738247798
#>     Attrib V34    0.16828068013331418
#>     Attrib V35    0.36138528717343815
#>     Attrib V36    0.9610529573919107
#>     Attrib V37    0.6985228611399636
#>     Attrib V38    -0.16143086839138998
#>     Attrib V39    -0.21556704629308765
#>     Attrib V4    -0.20210136067287524
#>     Attrib V40    0.44083628182476486
#>     Attrib V41    0.0666038809233082
#>     Attrib V42    -0.1997615113005562
#>     Attrib V43    -0.1003749555144414
#>     Attrib V44    -0.026532588464647483
#>     Attrib V45    -0.6873050879701771
#>     Attrib V46    -0.48191537935110396
#>     Attrib V47    0.12761579891934902
#>     Attrib V48    -0.04674219984553435
#>     Attrib V49    -0.4208676704414805
#>     Attrib V5    0.28069950703090296
#>     Attrib V50    0.7636513155187399
#>     Attrib V51    0.11985112921543573
#>     Attrib V52    -0.27757929565902356
#>     Attrib V53    -0.3789249593946347
#>     Attrib V54    -0.22428617743956974
#>     Attrib V55    0.20380443724522634
#>     Attrib V56    0.16423352650817924
#>     Attrib V57    0.09783239174612102
#>     Attrib V58    -0.2910132437708719
#>     Attrib V59    -0.4416873483761461
#>     Attrib V6    0.7144466460903109
#>     Attrib V60    -0.052680460284342485
#>     Attrib V7    0.3964205776299074
#>     Attrib V8    0.5153990340236607
#>     Attrib V9    -0.4458757675386387
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.004701718517309811
#>     Attrib V1    -0.13546235158954267
#>     Attrib V10    -0.04050809278710701
#>     Attrib V11    0.00826315616903136
#>     Attrib V12    0.38793787564519366
#>     Attrib V13    0.17650380574963262
#>     Attrib V14    -0.4616830473211528
#>     Attrib V15    0.23316894874679614
#>     Attrib V16    0.504747897746236
#>     Attrib V17    0.276448305880515
#>     Attrib V18    -0.21589174749848
#>     Attrib V19    -0.015820481774451105
#>     Attrib V2    -0.10670967239662175
#>     Attrib V20    0.4717143636231018
#>     Attrib V21    0.45393161558953316
#>     Attrib V22    0.4977156538124584
#>     Attrib V23    0.22633754334701373
#>     Attrib V24    0.3827247749094385
#>     Attrib V25    0.040364317396977246
#>     Attrib V26    -0.7603701065002044
#>     Attrib V27    -1.0044302464854422
#>     Attrib V28    -0.29433192225972254
#>     Attrib V29    -1.0144275410977819
#>     Attrib V3    -0.23145739277048089
#>     Attrib V30    0.02842843321006668
#>     Attrib V31    -1.0368894374171134
#>     Attrib V32    0.26989128985541727
#>     Attrib V33    0.8659903638457747
#>     Attrib V34    0.059885358142812976
#>     Attrib V35    -0.34569037618106546
#>     Attrib V36    -0.9232811906358234
#>     Attrib V37    -1.0562850530290704
#>     Attrib V38    -0.19741672343062192
#>     Attrib V39    0.06899919839740468
#>     Attrib V4    0.22312089768453694
#>     Attrib V40    -0.18856218652780704
#>     Attrib V41    -0.02432998752956613
#>     Attrib V42    0.5423105902158014
#>     Attrib V43    0.10391529982617531
#>     Attrib V44    0.21169555405577833
#>     Attrib V45    0.508795332032559
#>     Attrib V46    0.27001745185798304
#>     Attrib V47    -0.28760486605336216
#>     Attrib V48    0.07112583304914773
#>     Attrib V49    0.4812261199124544
#>     Attrib V5    -0.2797937307465635
#>     Attrib V50    -0.9420816366228555
#>     Attrib V51    -0.15163074939306984
#>     Attrib V52    0.066860565606943
#>     Attrib V53    0.16130144135884078
#>     Attrib V54    0.8585284076839853
#>     Attrib V55    -0.2805620323803229
#>     Attrib V56    0.24840420843530697
#>     Attrib V57    0.3050224495298391
#>     Attrib V58    0.5502959818788222
#>     Attrib V59    0.6890963400064762
#>     Attrib V6    -0.25371365793942763
#>     Attrib V60    0.6051973006078412
#>     Attrib V7    0.43513324470541326
#>     Attrib V8    0.16768202000053523
#>     Attrib V9    0.6982898433881267
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.641950157759763
#>     Attrib V1    0.08704728384488238
#>     Attrib V10    0.9612223459546481
#>     Attrib V11    0.9084250825746242
#>     Attrib V12    1.0516296741173203
#>     Attrib V13    0.09689464090994664
#>     Attrib V14    -0.7373737431493913
#>     Attrib V15    -0.021310922326012352
#>     Attrib V16    -0.09381348059715827
#>     Attrib V17    -0.6191461935020592
#>     Attrib V18    -0.6464567410114125
#>     Attrib V19    -0.13969925223637394
#>     Attrib V2    -0.21461759675004358
#>     Attrib V20    -0.23905883881359005
#>     Attrib V21    -0.31931227470968815
#>     Attrib V22    -0.04427337714332365
#>     Attrib V23    -0.19046391898159584
#>     Attrib V24    -0.18289465791672227
#>     Attrib V25    0.009243432215886879
#>     Attrib V26    0.7008865743832111
#>     Attrib V27    1.1381781547079468
#>     Attrib V28    1.758282278349985
#>     Attrib V29    1.1240953547625137
#>     Attrib V3    0.07597918670721748
#>     Attrib V30    0.8002170393052042
#>     Attrib V31    -0.23507414858217499
#>     Attrib V32    -0.1913474104319935
#>     Attrib V33    -0.31638157141052825
#>     Attrib V34    0.1969134183108715
#>     Attrib V35    0.483572472330907
#>     Attrib V36    -0.18698560634408487
#>     Attrib V37    0.4235862720606922
#>     Attrib V38    0.08500331444953121
#>     Attrib V39    -0.23543591595074692
#>     Attrib V4    0.5767809178193798
#>     Attrib V40    0.003139889844597267
#>     Attrib V41    0.9976775815785154
#>     Attrib V42    -0.22771226117305252
#>     Attrib V43    -0.5054583832024511
#>     Attrib V44    -0.54376649248981
#>     Attrib V45    0.3068639198732669
#>     Attrib V46    0.511104655827261
#>     Attrib V47    0.19821247496875935
#>     Attrib V48    0.26824856098107963
#>     Attrib V49    0.5621945288785491
#>     Attrib V5    0.4259279446798086
#>     Attrib V50    -0.4109025305244709
#>     Attrib V51    0.4967908562143336
#>     Attrib V52    0.732368624648997
#>     Attrib V53    0.8272274467751283
#>     Attrib V54    0.27060736234939814
#>     Attrib V55    0.048509648424991024
#>     Attrib V56    -0.6674500215578072
#>     Attrib V57    -0.013433582914073138
#>     Attrib V58    0.2655828607913739
#>     Attrib V59    0.46948674718952266
#>     Attrib V6    -0.04716933882654429
#>     Attrib V60    0.490190311012373
#>     Attrib V7    -0.38654653990943516
#>     Attrib V8    -0.3703315836483169
#>     Attrib V9    0.7752711427774511
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.1909060458207892
#>     Attrib V1    0.05871004174099228
#>     Attrib V10    0.2841376711197671
#>     Attrib V11    0.23945935555210518
#>     Attrib V12    0.35234203643523837
#>     Attrib V13    0.014660716027895825
#>     Attrib V14    -0.29062009401565436
#>     Attrib V15    0.07561392747560479
#>     Attrib V16    0.06181291249155672
#>     Attrib V17    -0.2558044189415656
#>     Attrib V18    -0.4418610382284743
#>     Attrib V19    -0.29857446838673823
#>     Attrib V2    -0.015700916618869937
#>     Attrib V20    -0.3206566051768846
#>     Attrib V21    -0.34529144521822003
#>     Attrib V22    -0.4146240490412487
#>     Attrib V23    -0.5624216130575768
#>     Attrib V24    -0.3689522444121579
#>     Attrib V25    -0.194961656418202
#>     Attrib V26    -0.10565243975499757
#>     Attrib V27    0.07106970924021334
#>     Attrib V28    0.41139515141000194
#>     Attrib V29    0.1110188902518032
#>     Attrib V3    -0.0022341207163058185
#>     Attrib V30    0.2621840213019903
#>     Attrib V31    -0.0529272583656765
#>     Attrib V32    0.2620333208804096
#>     Attrib V33    0.257222340129588
#>     Attrib V34    0.1571855824792537
#>     Attrib V35    -0.02800384353103178
#>     Attrib V36    -0.3842815201178772
#>     Attrib V37    -0.28304378594088864
#>     Attrib V38    -0.1096179514745396
#>     Attrib V39    -0.11394656531839366
#>     Attrib V4    0.36451757958457615
#>     Attrib V40    -0.1502162197481783
#>     Attrib V41    0.032121329945807506
#>     Attrib V42    -0.21487002283297452
#>     Attrib V43    -0.32684901192201926
#>     Attrib V44    -0.23636975079687858
#>     Attrib V45    0.12224606257754801
#>     Attrib V46    0.17066772670486496
#>     Attrib V47    0.08668282711055436
#>     Attrib V48    0.3733297264463977
#>     Attrib V49    0.34152468389253554
#>     Attrib V5    0.06791804790063168
#>     Attrib V50    -0.25583697020881685
#>     Attrib V51    0.1178828999541341
#>     Attrib V52    0.3411840131593839
#>     Attrib V53    0.26111299584563114
#>     Attrib V54    0.24970474053912867
#>     Attrib V55    0.11546975094909946
#>     Attrib V56    -0.17448659957409154
#>     Attrib V57    0.22943019609813575
#>     Attrib V58    0.14418702028672803
#>     Attrib V59    0.45342532304012745
#>     Attrib V6    -0.1584075430839853
#>     Attrib V60    0.35868375728522406
#>     Attrib V7    -0.06252153701705045
#>     Attrib V8    -0.07718178650890589
#>     Attrib V9    0.2817760636890888
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.49255114243914855
#>     Attrib V1    -0.4062944629004888
#>     Attrib V10    1.5818566070757312
#>     Attrib V11    1.3181169987666703
#>     Attrib V12    1.534184996809005
#>     Attrib V13    0.312161276979273
#>     Attrib V14    -1.2004818652837372
#>     Attrib V15    -0.37010386076988283
#>     Attrib V16    -0.2285183666329628
#>     Attrib V17    -0.5380809916587516
#>     Attrib V18    -0.24120810227444034
#>     Attrib V19    0.4904210862494405
#>     Attrib V2    -0.5437028045200026
#>     Attrib V20    0.059986431327703954
#>     Attrib V21    -0.09004211453609284
#>     Attrib V22    0.5865511735283266
#>     Attrib V23    0.7601895293903292
#>     Attrib V24    0.6532239935296894
#>     Attrib V25    0.5928581172375971
#>     Attrib V26    1.3586183094171862
#>     Attrib V27    1.3753637897397628
#>     Attrib V28    1.9413410856428597
#>     Attrib V29    1.1530256859892927
#>     Attrib V3    0.05900884445280448
#>     Attrib V30    1.1231744720956531
#>     Attrib V31    0.015182891061616455
#>     Attrib V32    -0.18719063349449563
#>     Attrib V33    -0.586234671182139
#>     Attrib V34    0.3805348097752386
#>     Attrib V35    0.5405404515360187
#>     Attrib V36    -0.6914322851829247
#>     Attrib V37    -0.1492170241644728
#>     Attrib V38    -0.3670355631493902
#>     Attrib V39    -0.3142271664091482
#>     Attrib V4    0.643294543990812
#>     Attrib V40    0.3716082756025171
#>     Attrib V41    2.052806066453726
#>     Attrib V42    0.1355602913276151
#>     Attrib V43    -0.28856028128559486
#>     Attrib V44    -0.6815848955838946
#>     Attrib V45    0.27170041177390447
#>     Attrib V46    0.8486944549967983
#>     Attrib V47    0.7555462468373821
#>     Attrib V48    0.8077692977142625
#>     Attrib V49    1.2881339338571984
#>     Attrib V5    0.46493421759575765
#>     Attrib V50    -0.2171954693373704
#>     Attrib V51    1.214029256927288
#>     Attrib V52    1.4579712342811924
#>     Attrib V53    1.4995145376470642
#>     Attrib V54    -0.01735960916280195
#>     Attrib V55    -0.35120775540780796
#>     Attrib V56    -0.6751164379924067
#>     Attrib V57    -0.41916180485416726
#>     Attrib V58    0.3458914665459069
#>     Attrib V59    -0.019613329868344596
#>     Attrib V6    -0.1451292560508424
#>     Attrib V60    0.029708603572804554
#>     Attrib V7    -0.697635701539921
#>     Attrib V8    -0.44182741353881017
#>     Attrib V9    1.082792636257246
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.466131704721049
#>     Attrib V1    0.3902666102954063
#>     Attrib V10    -0.06873757659198114
#>     Attrib V11    -0.19028262398737095
#>     Attrib V12    -0.524357276507687
#>     Attrib V13    -0.1965940386933538
#>     Attrib V14    0.9248742236281904
#>     Attrib V15    0.12925086066807961
#>     Attrib V16    0.08935789517831888
#>     Attrib V17    0.245955409539806
#>     Attrib V18    0.6565731271907023
#>     Attrib V19    0.21572528534699814
#>     Attrib V2    0.24131988573504207
#>     Attrib V20    -0.02130066492093464
#>     Attrib V21    -0.30807637178849234
#>     Attrib V22    -0.6540185271471312
#>     Attrib V23    -0.26034314716344475
#>     Attrib V24    -0.33957191813900167
#>     Attrib V25    0.05266730717234919
#>     Attrib V26    0.35171519280139435
#>     Attrib V27    0.38069922814756607
#>     Attrib V28    -0.32935684991403297
#>     Attrib V29    0.04048137098675846
#>     Attrib V3    0.13480993337184877
#>     Attrib V30    -0.5474054456381744
#>     Attrib V31    0.8340481949544218
#>     Attrib V32    -0.02436858623117379
#>     Attrib V33    -0.3570517598615913
#>     Attrib V34    -0.041415193274412024
#>     Attrib V35    0.10795118147609838
#>     Attrib V36    0.6366558387142243
#>     Attrib V37    0.4332264079544173
#>     Attrib V38    -0.07990686789526262
#>     Attrib V39    -0.3266342779902621
#>     Attrib V4    -0.03208933537720977
#>     Attrib V40    -0.11110415354925503
#>     Attrib V41    -0.7519620615570671
#>     Attrib V42    -0.7666722614534581
#>     Attrib V43    -0.5312946839378923
#>     Attrib V44    -0.46185634293044997
#>     Attrib V45    -0.8785178765116464
#>     Attrib V46    -0.5392191997930748
#>     Attrib V47    0.11159820038452672
#>     Attrib V48    -0.1063457108926812
#>     Attrib V49    -0.5015182128935177
#>     Attrib V5    0.21188059508538779
#>     Attrib V50    1.1322981486409156
#>     Attrib V51    0.14976553696809372
#>     Attrib V52    -0.09530733211587213
#>     Attrib V53    -0.10266600764574461
#>     Attrib V54    -0.24443520168714994
#>     Attrib V55    0.5179266878792008
#>     Attrib V56    0.09208953207432885
#>     Attrib V57    0.34773509115012957
#>     Attrib V58    -0.38271994804798415
#>     Attrib V59    -0.42611563574073524
#>     Attrib V6    0.5304592708634404
#>     Attrib V60    -0.04507488844708778
#>     Attrib V7    0.2014299771793143
#>     Attrib V8    0.266010302732861
#>     Attrib V9    -0.5954178650393299
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.24220070734823215
#>     Attrib V1    -0.05236583854778219
#>     Attrib V10    0.12211028532567926
#>     Attrib V11    0.08047856824378605
#>     Attrib V12    0.32500894459902585
#>     Attrib V13    -0.010593524239173344
#>     Attrib V14    -0.38013248622635193
#>     Attrib V15    0.05432140413383872
#>     Attrib V16    0.10954892509661328
#>     Attrib V17    0.004396784784749864
#>     Attrib V18    -0.22527041581039733
#>     Attrib V19    -0.14227157130230703
#>     Attrib V2    -0.15996101397099263
#>     Attrib V20    0.06612776265726249
#>     Attrib V21    0.0030607546995248002
#>     Attrib V22    -0.013210762506836804
#>     Attrib V23    -0.18757539641071486
#>     Attrib V24    -0.10082270452783582
#>     Attrib V25    -0.06431262535753159
#>     Attrib V26    -0.3571610168168265
#>     Attrib V27    -0.321452864164461
#>     Attrib V28    0.12119442784404272
#>     Attrib V29    -0.2952201654831917
#>     Attrib V3    -0.19760765315083692
#>     Attrib V30    0.1894029525444301
#>     Attrib V31    -0.38781580914147307
#>     Attrib V32    0.1986626065630165
#>     Attrib V33    0.3841838469876806
#>     Attrib V34    0.17112384270819017
#>     Attrib V35    -0.07182372767691741
#>     Attrib V36    -0.5540144813174659
#>     Attrib V37    -0.5742047361696145
#>     Attrib V38    -0.150432549205361
#>     Attrib V39    -0.09329701243603247
#>     Attrib V4    0.26978616226011737
#>     Attrib V40    -0.1984484802862061
#>     Attrib V41    -0.05988892924024767
#>     Attrib V42    0.00737080755958144
#>     Attrib V43    -0.18808928735073263
#>     Attrib V44    -0.11415431520493526
#>     Attrib V45    0.2813991177812017
#>     Attrib V46    0.06557733585601495
#>     Attrib V47    -0.07039022051786974
#>     Attrib V48    0.30559240602087867
#>     Attrib V49    0.38064454576579815
#>     Attrib V5    -0.034880496369779905
#>     Attrib V50    -0.43648342456713274
#>     Attrib V51    0.060974216247674504
#>     Attrib V52    0.22747091240474157
#>     Attrib V53    0.12355965378427387
#>     Attrib V54    0.436101568096745
#>     Attrib V55    -0.01861905800296518
#>     Attrib V56    -0.07455660153766687
#>     Attrib V57    0.13520220619705098
#>     Attrib V58    0.21830902392869103
#>     Attrib V59    0.4460280681196705
#>     Attrib V6    -0.19752001140306163
#>     Attrib V60    0.26141944358268726
#>     Attrib V7    -0.03392287766196485
#>     Attrib V8    -0.029417880613631972
#>     Attrib V9    0.33702393445490547
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.144723350400708
#>     Attrib V1    0.08963927248180413
#>     Attrib V10    -0.20451190558861002
#>     Attrib V11    -0.13798708015924488
#>     Attrib V12    0.10964025570370631
#>     Attrib V13    0.17039583606794023
#>     Attrib V14    -0.1313557165629697
#>     Attrib V15    0.42020539284364083
#>     Attrib V16    0.5388711458204802
#>     Attrib V17    0.26599339886395534
#>     Attrib V18    -0.19230507400598332
#>     Attrib V19    0.060290818163285916
#>     Attrib V2    0.10240526775959957
#>     Attrib V20    0.4907476781931209
#>     Attrib V21    0.4862782329528022
#>     Attrib V22    0.41553629157785066
#>     Attrib V23    0.03473877164150791
#>     Attrib V24    -0.04033233704772708
#>     Attrib V25    -0.3599424475629534
#>     Attrib V26    -0.9487315908790153
#>     Attrib V27    -0.8277878249777227
#>     Attrib V28    0.005061979305691093
#>     Attrib V29    -0.3448500075614995
#>     Attrib V3    -0.08586827260829039
#>     Attrib V30    0.09951472220421331
#>     Attrib V31    -0.9884506426636976
#>     Attrib V32    0.10440432995212885
#>     Attrib V33    0.6474890013811205
#>     Attrib V34    -0.03750741464633299
#>     Attrib V35    -0.4044573048027533
#>     Attrib V36    -0.7824276768016443
#>     Attrib V37    -0.7476773400878614
#>     Attrib V38    -0.019985716363889777
#>     Attrib V39    0.11221740601293369
#>     Attrib V4    0.4163927623196973
#>     Attrib V40    -0.10900957014972364
#>     Attrib V41    0.03263539580009372
#>     Attrib V42    0.3696387509758273
#>     Attrib V43    0.0017828612052714445
#>     Attrib V44    0.03995087021614081
#>     Attrib V45    0.45211403284324186
#>     Attrib V46    0.22137114567591537
#>     Attrib V47    -0.32900187274717413
#>     Attrib V48    0.02652578734908168
#>     Attrib V49    0.32947463999506615
#>     Attrib V5    -0.10808272764561369
#>     Attrib V50    -0.7782086979274765
#>     Attrib V51    -0.19271702661058412
#>     Attrib V52    0.15236865331171137
#>     Attrib V53    0.19236765440213277
#>     Attrib V54    0.6494585750050963
#>     Attrib V55    -0.15115011073352633
#>     Attrib V56    0.1945024194427425
#>     Attrib V57    0.4116832084610206
#>     Attrib V58    0.4477591594893558
#>     Attrib V59    0.771576041779145
#>     Attrib V6    -0.2146501088667593
#>     Attrib V60    0.5144000873199136
#>     Attrib V7    0.31919115763926464
#>     Attrib V8    0.0963341564697757
#>     Attrib V9    0.3910923712881091
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.17735185289673774
#>     Attrib V1    0.10691588375545158
#>     Attrib V10    -0.021281818912144475
#>     Attrib V11    0.020271666754229624
#>     Attrib V12    0.10870620966678834
#>     Attrib V13    0.07974043402771801
#>     Attrib V14    0.006242087210104319
#>     Attrib V15    0.09112625929568612
#>     Attrib V16    0.053031440724458805
#>     Attrib V17    0.040241493007257656
#>     Attrib V18    -0.05892978969525193
#>     Attrib V19    -0.09000651549519964
#>     Attrib V2    0.03924429090990494
#>     Attrib V20    -0.006480586161824187
#>     Attrib V21    -0.06425620807772121
#>     Attrib V22    -0.1773803644115603
#>     Attrib V23    -0.1921719161413191
#>     Attrib V24    -0.1279873053966642
#>     Attrib V25    -0.0461559517658408
#>     Attrib V26    -0.15868043899375442
#>     Attrib V27    -0.0851431268006815
#>     Attrib V28    -0.016323486968894175
#>     Attrib V29    -0.08090623523931413
#>     Attrib V3    0.11647616145386716
#>     Attrib V30    0.006267824685994128
#>     Attrib V31    -0.18244218922842756
#>     Attrib V32    0.046494491217240794
#>     Attrib V33    0.1069922674148833
#>     Attrib V34    0.11785625833925298
#>     Attrib V35    0.036013269969538374
#>     Attrib V36    -0.11423065610256829
#>     Attrib V37    -0.08182488943633141
#>     Attrib V38    0.0099574051960229
#>     Attrib V39    0.0841731434580064
#>     Attrib V4    0.1823543716510051
#>     Attrib V40    0.0076737336589863805
#>     Attrib V41    -0.015961424026753275
#>     Attrib V42    -4.2160480891776715E-4
#>     Attrib V43    -0.07388280542444628
#>     Attrib V44    0.009807122013073492
#>     Attrib V45    0.06691879520307115
#>     Attrib V46    0.1285544504855594
#>     Attrib V47    0.07530402348506861
#>     Attrib V48    0.08922222292303679
#>     Attrib V49    0.1283649184439809
#>     Attrib V5    0.0864777027703932
#>     Attrib V50    -0.07892649174474854
#>     Attrib V51    0.04190055048568049
#>     Attrib V52    0.13410440260046566
#>     Attrib V53    0.15843694836068978
#>     Attrib V54    0.1469163794140318
#>     Attrib V55    0.12102482745840337
#>     Attrib V56    0.11641887257483792
#>     Attrib V57    0.2372218795667975
#>     Attrib V58    0.13877168753655655
#>     Attrib V59    0.352362446271345
#>     Attrib V6    0.004664406865395908
#>     Attrib V60    0.3221605563590037
#>     Attrib V7    0.07128343525531353
#>     Attrib V8    -0.05751030103857128
#>     Attrib V9    0.07889320743092952
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.1652286978555186
#>     Attrib V1    0.01981396584165513
#>     Attrib V10    0.08896820242140763
#>     Attrib V11    0.16634012895127182
#>     Attrib V12    0.4620208478540622
#>     Attrib V13    0.02388348257270828
#>     Attrib V14    -0.5300060155976424
#>     Attrib V15    0.08088004197994356
#>     Attrib V16    0.13211743751392885
#>     Attrib V17    0.06619771677283573
#>     Attrib V18    -0.2766684211905661
#>     Attrib V19    -0.1652016882565374
#>     Attrib V2    -0.0658883047003592
#>     Attrib V20    0.06045803780611774
#>     Attrib V21    0.0035709363054961672
#>     Attrib V22    0.08012626592138128
#>     Attrib V23    -0.06554695368671232
#>     Attrib V24    0.10949058874105462
#>     Attrib V25    0.10831146840630135
#>     Attrib V26    -0.3522274295406461
#>     Attrib V27    -0.705643474111631
#>     Attrib V28    -0.40521066283583557
#>     Attrib V29    -0.9728985762979708
#>     Attrib V3    -0.23668493684418876
#>     Attrib V30    -0.027689394292782173
#>     Attrib V31    -0.44430683317243513
#>     Attrib V32    0.38725779854103815
#>     Attrib V33    0.6847305483138039
#>     Attrib V34    0.26300370690292
#>     Attrib V35    -0.06884736200685233
#>     Attrib V36    -0.6904270316621691
#>     Attrib V37    -0.708260952588657
#>     Attrib V38    -0.198563693610264
#>     Attrib V39    0.02254166329526852
#>     Attrib V4    0.21366975691262532
#>     Attrib V40    -0.15911932298880493
#>     Attrib V41    -0.14204960727797614
#>     Attrib V42    -0.0023663487420614703
#>     Attrib V43    -0.16071641059830968
#>     Attrib V44    -0.04733972856185355
#>     Attrib V45    0.2170546415058406
#>     Attrib V46    0.08285502102183767
#>     Attrib V47    -0.16877440613186404
#>     Attrib V48    0.3573765953808527
#>     Attrib V49    0.5190961531707832
#>     Attrib V5    -0.17553305356807916
#>     Attrib V50    -0.6472946662298633
#>     Attrib V51    -0.07080235391860618
#>     Attrib V52    0.2200028666254687
#>     Attrib V53    0.04861011921280545
#>     Attrib V54    0.6772889899229168
#>     Attrib V55    0.022947248083815507
#>     Attrib V56    0.10995340937895531
#>     Attrib V57    0.20527976025801903
#>     Attrib V58    0.33773663524705144
#>     Attrib V59    0.5888611221680192
#>     Attrib V6    -0.268932647141494
#>     Attrib V60    0.4366317742162637
#>     Attrib V7    0.1170586711224106
#>     Attrib V8    -0.15974368152440818
#>     Attrib V9    0.40687102373902284
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    0.49152689402183075
#>     Attrib V1    0.5127125343368544
#>     Attrib V10    -0.32284907321924355
#>     Attrib V11    -0.4430600480749055
#>     Attrib V12    -0.5974306777940082
#>     Attrib V13    -0.6305187847656311
#>     Attrib V14    0.7763075241869154
#>     Attrib V15    -0.11344560914063548
#>     Attrib V16    -0.5077385640553786
#>     Attrib V17    -0.5588750095723297
#>     Attrib V18    0.20149731554185352
#>     Attrib V19    -0.13297343201485534
#>     Attrib V2    0.039091563461024284
#>     Attrib V20    -0.8077288102473258
#>     Attrib V21    -1.063512500247603
#>     Attrib V22    -1.41342332331399
#>     Attrib V23    -1.2047718545829187
#>     Attrib V24    -1.2659561540002178
#>     Attrib V25    -0.5541815924719452
#>     Attrib V26    0.4456713711220381
#>     Attrib V27    1.2193843231468795
#>     Attrib V28    0.30128900457099916
#>     Attrib V29    1.172435617894611
#>     Attrib V3    0.31942600733247206
#>     Attrib V30    -0.49097634528988593
#>     Attrib V31    1.3094385542043678
#>     Attrib V32    -0.3039360264261079
#>     Attrib V33    -1.004399131682641
#>     Attrib V34    0.3358117076916971
#>     Attrib V35    0.8059178313695302
#>     Attrib V36    1.504226944924536
#>     Attrib V37    1.6595342780239946
#>     Attrib V38    0.24124288352215364
#>     Attrib V39    -0.07048037014024124
#>     Attrib V4    -0.3106637774502894
#>     Attrib V40    0.3745920285399119
#>     Attrib V41    0.13450591557629168
#>     Attrib V42    -1.0151990392592172
#>     Attrib V43    -0.6257937016914585
#>     Attrib V44    -0.9168028066502819
#>     Attrib V45    -1.0998564008165153
#>     Attrib V46    -0.6165916000766214
#>     Attrib V47    0.12611869860075883
#>     Attrib V48    -0.17346735737434085
#>     Attrib V49    -0.9535522758075267
#>     Attrib V5    0.35293784717280463
#>     Attrib V50    1.4581293895758185
#>     Attrib V51    -0.12614929483651768
#>     Attrib V52    -0.5503268730738639
#>     Attrib V53    -0.16192316832983172
#>     Attrib V54    -1.087905686092951
#>     Attrib V55    0.6102871623047231
#>     Attrib V56    -0.5041152537902229
#>     Attrib V57    0.001609104654711247
#>     Attrib V58    -0.9691522698977626
#>     Attrib V59    -0.5267843206221536
#>     Attrib V6    0.5281962437347283
#>     Attrib V60    -0.22370069902065176
#>     Attrib V7    -0.3744178328653952
#>     Attrib V8    -0.27935687349311744
#>     Attrib V9    -1.3592826974744932
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.17782358450880573
#>     Attrib V1    0.08553719289188932
#>     Attrib V10    0.02703099582182557
#>     Attrib V11    0.012338856276001734
#>     Attrib V12    0.08518810734866693
#>     Attrib V13    0.03658394500268219
#>     Attrib V14    -0.029044484140291787
#>     Attrib V15    0.06529291576811114
#>     Attrib V16    0.10457189856929844
#>     Attrib V17    0.04576605228607714
#>     Attrib V18    -0.02737593837494502
#>     Attrib V19    -0.07123651299084349
#>     Attrib V2    0.0018830486909992168
#>     Attrib V20    -0.09261723199830736
#>     Attrib V21    -0.13462525830055633
#>     Attrib V22    -0.18206885986083965
#>     Attrib V23    -0.25341771489488185
#>     Attrib V24    -0.12089767439460379
#>     Attrib V25    -0.06764370318771552
#>     Attrib V26    -0.12408651598431077
#>     Attrib V27    -0.10945381095830027
#>     Attrib V28    0.021114008112675494
#>     Attrib V29    -0.08371710435986486
#>     Attrib V3    0.0817515130090385
#>     Attrib V30    -0.02739262659206656
#>     Attrib V31    -0.1141210619665396
#>     Attrib V32    0.05807956185452029
#>     Attrib V33    0.08518965054861703
#>     Attrib V34    0.11049443390190596
#>     Attrib V35    0.054285145773329525
#>     Attrib V36    -0.06720739316416162
#>     Attrib V37    -0.034564338953230855
#>     Attrib V38    0.02433385042241245
#>     Attrib V39    0.04801541507722364
#>     Attrib V4    0.14150850247421257
#>     Attrib V40    -0.01842857410044221
#>     Attrib V41    -0.0057743350888427945
#>     Attrib V42    0.02550438139672838
#>     Attrib V43    -0.03259858542238486
#>     Attrib V44    -0.006121325900174871
#>     Attrib V45    0.08927835996061416
#>     Attrib V46    0.11743564214953797
#>     Attrib V47    0.05519915372028815
#>     Attrib V48    0.0735449683876411
#>     Attrib V49    0.04466423722054584
#>     Attrib V5    0.056609039160343766
#>     Attrib V50    0.014259635944442762
#>     Attrib V51    0.11084060114141384
#>     Attrib V52    0.16331557592862858
#>     Attrib V53    0.17040788359643544
#>     Attrib V54    0.10188797218276972
#>     Attrib V55    0.13305792359196658
#>     Attrib V56    0.12650725506702792
#>     Attrib V57    0.22442037336622866
#>     Attrib V58    0.17146376761072632
#>     Attrib V59    0.19952316191302974
#>     Attrib V6    0.01880981807515424
#>     Attrib V60    0.25958480138123985
#>     Attrib V7    0.035351408339673374
#>     Attrib V8    -0.0365364705933957
#>     Attrib V9    0.11421082295219478
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.10733605626386301
#>     Attrib V1    0.12536921464886971
#>     Attrib V10    0.0742132040694883
#>     Attrib V11    0.06605037765682768
#>     Attrib V12    0.08478605127326833
#>     Attrib V13    -0.02746973907675357
#>     Attrib V14    -0.024181260709480037
#>     Attrib V15    0.1685063543057024
#>     Attrib V16    0.08863609539242624
#>     Attrib V17    0.007171717475041585
#>     Attrib V18    -0.10006148023809533
#>     Attrib V19    -0.08930091815357938
#>     Attrib V2    0.09683092424636586
#>     Attrib V20    -0.089709056004827
#>     Attrib V21    -0.13099371940411572
#>     Attrib V22    -0.13448838436806287
#>     Attrib V23    -0.28549888441084137
#>     Attrib V24    -0.1736454358603598
#>     Attrib V25    -0.14860439178936174
#>     Attrib V26    -0.15266090295426363
#>     Attrib V27    -0.10832389472560945
#>     Attrib V28    0.003128034777376984
#>     Attrib V29    -0.12801983317355686
#>     Attrib V3    0.04113144806400882
#>     Attrib V30    0.035809874963054135
#>     Attrib V31    -0.07833664020213038
#>     Attrib V32    0.012650135094695349
#>     Attrib V33    0.14886236345035853
#>     Attrib V34    0.05003527261093328
#>     Attrib V35    0.08594936221337383
#>     Attrib V36    -0.11384854402599709
#>     Attrib V37    -0.10578525380625418
#>     Attrib V38    0.059835835865238406
#>     Attrib V39    0.0536621341578569
#>     Attrib V4    0.15927294728658462
#>     Attrib V40    -0.05374469211510252
#>     Attrib V41    -0.01445539696995681
#>     Attrib V42    -0.03833228476025073
#>     Attrib V43    -0.002435186598074011
#>     Attrib V44    0.04472614273359488
#>     Attrib V45    0.1328462672579092
#>     Attrib V46    0.07874919789058264
#>     Attrib V47    0.006022668541608956
#>     Attrib V48    0.14949612365639364
#>     Attrib V49    0.06079529437282979
#>     Attrib V5    0.054433321736246515
#>     Attrib V50    -0.04045411907160801
#>     Attrib V51    0.07946323889352912
#>     Attrib V52    0.13506527090056886
#>     Attrib V53    0.10902227589745356
#>     Attrib V54    0.1408770910043738
#>     Attrib V55    0.1737251856542102
#>     Attrib V56    0.1327254244122368
#>     Attrib V57    0.27634345835653074
#>     Attrib V58    0.11102982919518029
#>     Attrib V59    0.2523742405162263
#>     Attrib V6    -0.009964025254499914
#>     Attrib V60    0.2953435162573181
#>     Attrib V7    -0.009420781532082909
#>     Attrib V8    0.031647001681664476
#>     Attrib V9    0.11701201215514212
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.5260915543174934
#>     Attrib V1    0.3309284935014929
#>     Attrib V10    -0.11490922023134607
#>     Attrib V11    -0.17912754472954778
#>     Attrib V12    -0.5343808651008605
#>     Attrib V13    -0.18754378455043122
#>     Attrib V14    0.9369814378979133
#>     Attrib V15    0.23749717855907
#>     Attrib V16    0.13975425091577479
#>     Attrib V17    0.2196947414025016
#>     Attrib V18    0.5395074910623957
#>     Attrib V19    0.10434986272069946
#>     Attrib V2    0.2568773947899745
#>     Attrib V20    -0.039823626622237734
#>     Attrib V21    -0.369712797381633
#>     Attrib V22    -0.7588020897705083
#>     Attrib V23    -0.404653480537581
#>     Attrib V24    -0.3422881080848784
#>     Attrib V25    0.161348288490216
#>     Attrib V26    0.4751830400716904
#>     Attrib V27    0.4624797679429585
#>     Attrib V28    -0.276952204172931
#>     Attrib V29    0.057557091553414326
#>     Attrib V3    0.209413898059418
#>     Attrib V30    -0.6878738819668093
#>     Attrib V31    0.5802463747869069
#>     Attrib V32    -0.16370116280572408
#>     Attrib V33    -0.5046245768797883
#>     Attrib V34    -0.1325881190196071
#>     Attrib V35    -0.0015700377398140753
#>     Attrib V36    0.5653583277787381
#>     Attrib V37    0.3103050882516152
#>     Attrib V38    -0.20612418487868572
#>     Attrib V39    -0.3272863516943225
#>     Attrib V4    -0.11868033068870697
#>     Attrib V40    -0.2394133279535091
#>     Attrib V41    -0.8777805070074506
#>     Attrib V42    -0.6824663150263048
#>     Attrib V43    -0.4950652570896367
#>     Attrib V44    -0.4428329859476203
#>     Attrib V45    -0.8769113291393296
#>     Attrib V46    -0.46180824844820767
#>     Attrib V47    0.21085773410737182
#>     Attrib V48    -0.012328672943000501
#>     Attrib V49    -0.4478576021347155
#>     Attrib V5    0.1620237674437119
#>     Attrib V50    0.9862008168258384
#>     Attrib V51    0.2260218397245396
#>     Attrib V52    -0.0669264772463391
#>     Attrib V53    -0.08090788649844062
#>     Attrib V54    -0.23837872211320263
#>     Attrib V55    0.630021593532961
#>     Attrib V56    0.1843902797084326
#>     Attrib V57    0.3495611437908658
#>     Attrib V58    -0.3285779898895938
#>     Attrib V59    -0.2889071230311262
#>     Attrib V6    0.30270270897901275
#>     Attrib V60    0.06256357420015513
#>     Attrib V7    0.07623777188816834
#>     Attrib V8    0.21997865594249028
#>     Attrib V9    -0.6084709024661046
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.5516455927016813
#>     Attrib V1    -0.2861286276486733
#>     Attrib V10    0.68963227878609
#>     Attrib V11    0.5823512285594356
#>     Attrib V12    0.8999278302990995
#>     Attrib V13    -0.006526947460454085
#>     Attrib V14    -0.7482965328883934
#>     Attrib V15    -0.0724283621297169
#>     Attrib V16    -0.12602999642448398
#>     Attrib V17    -0.4058014612142449
#>     Attrib V18    -0.42776344680146905
#>     Attrib V19    -0.05038164950066465
#>     Attrib V2    -0.4491245992149156
#>     Attrib V20    -0.259768171570262
#>     Attrib V21    -0.3345116013507951
#>     Attrib V22    0.02388017492771322
#>     Attrib V23    -0.04850132001582512
#>     Attrib V24    0.14950233772621954
#>     Attrib V25    0.2608351353734732
#>     Attrib V26    0.5338568050976817
#>     Attrib V27    0.6574783606053853
#>     Attrib V28    1.0213817552623292
#>     Attrib V29    0.2860412836685484
#>     Attrib V3    -0.27325411322776977
#>     Attrib V30    0.5388785883347773
#>     Attrib V31    -0.17646834566915076
#>     Attrib V32    0.07604181501043111
#>     Attrib V33    0.08836655033393778
#>     Attrib V34    0.31837298216535254
#>     Attrib V35    0.35868295856449156
#>     Attrib V36    -0.3830099127130804
#>     Attrib V37    -0.23056054510278995
#>     Attrib V38    -0.2431921500356067
#>     Attrib V39    -0.2948711072815629
#>     Attrib V4    0.4788292095846572
#>     Attrib V40    -0.05173719193956786
#>     Attrib V41    0.6794259876838981
#>     Attrib V42    -0.10549252381370826
#>     Attrib V43    -0.3481723720811342
#>     Attrib V44    -0.4368654670908312
#>     Attrib V45    0.3226328568005188
#>     Attrib V46    0.3382335515313649
#>     Attrib V47    0.06243369482905649
#>     Attrib V48    0.41674478516500135
#>     Attrib V49    0.7143407322538073
#>     Attrib V5    0.23632117589272705
#>     Attrib V50    -0.49634744609239556
#>     Attrib V51    0.34535330151833293
#>     Attrib V52    0.6232261585051418
#>     Attrib V53    0.7325373113215882
#>     Attrib V54    0.35431770833777204
#>     Attrib V55    0.051235876098223526
#>     Attrib V56    -0.6165771403765377
#>     Attrib V57    0.005429725295709948
#>     Attrib V58    0.33822753356359786
#>     Attrib V59    0.40644644901359983
#>     Attrib V6    -0.1377863725579248
#>     Attrib V60    0.27762261981194314
#>     Attrib V7    -0.26016367892961667
#>     Attrib V8    -0.1717576014787271
#>     Attrib V9    0.6424899606266483
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.022669396933732593
#>     Attrib V1    0.17071935048519632
#>     Attrib V10    -0.185189287034687
#>     Attrib V11    -0.12032762746866665
#>     Attrib V12    0.2753307578183705
#>     Attrib V13    0.234261003817779
#>     Attrib V14    -0.17258825481790444
#>     Attrib V15    0.44354006869444185
#>     Attrib V16    0.5343550788843957
#>     Attrib V17    0.3575277911154435
#>     Attrib V18    -0.1415645568024778
#>     Attrib V19    0.07932346495598988
#>     Attrib V2    0.09824549210264562
#>     Attrib V20    0.6326466468325301
#>     Attrib V21    0.6520746976804408
#>     Attrib V22    0.5477752496621968
#>     Attrib V23    0.18967868014787734
#>     Attrib V24    0.17630918984436217
#>     Attrib V25    -0.23712946406005497
#>     Attrib V26    -0.900024033528536
#>     Attrib V27    -0.9419855165547317
#>     Attrib V28    -0.11459479524969375
#>     Attrib V29    -0.49511908341784094
#>     Attrib V3    -0.10266368478632527
#>     Attrib V30    0.14527741149851148
#>     Attrib V31    -1.059221748709018
#>     Attrib V32    0.029143145101281062
#>     Attrib V33    0.6317228223917418
#>     Attrib V34    -0.1412946000711533
#>     Attrib V35    -0.46080989879129225
#>     Attrib V36    -0.7841278985506976
#>     Attrib V37    -0.7784305961594272
#>     Attrib V38    0.025151564382266272
#>     Attrib V39    0.21010399575192495
#>     Attrib V4    0.3261469296577226
#>     Attrib V40    -0.12931039651171636
#>     Attrib V41    0.009539368088807162
#>     Attrib V42    0.48299075531282554
#>     Attrib V43    0.12741148019934914
#>     Attrib V44    0.23632312485387746
#>     Attrib V45    0.4683953512598604
#>     Attrib V46    0.1643120345314786
#>     Attrib V47    -0.39960158808373664
#>     Attrib V48    -0.041133184624124276
#>     Attrib V49    0.35995882545974134
#>     Attrib V5    -0.1333726420580532
#>     Attrib V50    -0.8521486811989223
#>     Attrib V51    -0.13677534623252652
#>     Attrib V52    0.13839655165838513
#>     Attrib V53    0.21742200115391358
#>     Attrib V54    0.8109866664443199
#>     Attrib V55    -0.1434242516962166
#>     Attrib V56    0.29167803861625
#>     Attrib V57    0.35645402868589987
#>     Attrib V58    0.5392637480930165
#>     Attrib V59    0.7901793290833187
#>     Attrib V6    -0.23189054267651774
#>     Attrib V60    0.5446205868845821
#>     Attrib V7    0.38611096880258583
#>     Attrib V8    0.04239412643134198
#>     Attrib V9    0.4648458493876551
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.37121566559922764
#>     Attrib V1    0.4758345917444676
#>     Attrib V10    -0.428469110424033
#>     Attrib V11    -0.5433222904005791
#>     Attrib V12    -0.6660108368691532
#>     Attrib V13    -0.5542612125916344
#>     Attrib V14    0.759200347952202
#>     Attrib V15    -0.08928919859478522
#>     Attrib V16    -0.40538797705756824
#>     Attrib V17    -0.404641917921855
#>     Attrib V18    0.2144006297932299
#>     Attrib V19    -0.221584711787594
#>     Attrib V2    0.06671264514058109
#>     Attrib V20    -0.7004656854417931
#>     Attrib V21    -0.7955856042243004
#>     Attrib V22    -1.278034279510355
#>     Attrib V23    -0.9761158675320262
#>     Attrib V24    -0.9315859116374634
#>     Attrib V25    -0.36419227165387247
#>     Attrib V26    0.40292191025317264
#>     Attrib V27    1.0636381307080898
#>     Attrib V28    0.15731763731206125
#>     Attrib V29    0.9241526138460643
#>     Attrib V3    0.26464052154176154
#>     Attrib V30    -0.4577836222914038
#>     Attrib V31    1.2344643030320985
#>     Attrib V32    -0.2413049159579244
#>     Attrib V33    -0.8251536376802842
#>     Attrib V34    0.2161784907333384
#>     Attrib V35    0.5374008327011202
#>     Attrib V36    1.1374236372604036
#>     Attrib V37    1.2991312191452906
#>     Attrib V38    0.11555150842310072
#>     Attrib V39    -0.08073373237266811
#>     Attrib V4    -0.271277357868032
#>     Attrib V40    0.37252716096080146
#>     Attrib V41    0.1307871993557591
#>     Attrib V42    -0.8018861277028227
#>     Attrib V43    -0.44607316481666653
#>     Attrib V44    -0.6810331463887027
#>     Attrib V45    -1.0020792231790066
#>     Attrib V46    -0.5661653289666569
#>     Attrib V47    0.09600092561366627
#>     Attrib V48    -0.1327956522376507
#>     Attrib V49    -0.879595790400027
#>     Attrib V5    0.3069286555701325
#>     Attrib V50    1.2734610080657414
#>     Attrib V51    -0.13396601933298746
#>     Attrib V52    -0.4100190274764028
#>     Attrib V53    -0.09610240319410597
#>     Attrib V54    -0.9598155543962491
#>     Attrib V55    0.4563563511505565
#>     Attrib V56    -0.3225870472211044
#>     Attrib V57    0.19302590594274577
#>     Attrib V58    -0.8301647227992395
#>     Attrib V59    -0.3911409285262034
#>     Attrib V6    0.5298684897688031
#>     Attrib V60    -0.1417207062492867
#>     Attrib V7    -0.22649464028795885
#>     Attrib V8    -0.2449425983737261
#>     Attrib V9    -1.2110918438702647
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.021566064272811086
#>     Attrib V1    0.25872016025499867
#>     Attrib V10    -0.007624768063278518
#>     Attrib V11    0.025888176195650783
#>     Attrib V12    0.1795009579530271
#>     Attrib V13    0.015121814586521953
#>     Attrib V14    -0.017617517420063247
#>     Attrib V15    0.13332710762864272
#>     Attrib V16    0.19219829232948057
#>     Attrib V17    0.05098090144782813
#>     Attrib V18    -0.11469003917794239
#>     Attrib V19    -0.12951973503495676
#>     Attrib V2    0.13636802544965707
#>     Attrib V20    0.007109946577329054
#>     Attrib V21    -0.05168335201441446
#>     Attrib V22    -0.21222097850398813
#>     Attrib V23    -0.3837141235632878
#>     Attrib V24    -0.19972238038245219
#>     Attrib V25    -0.20450579049741568
#>     Attrib V26    -0.37726141167044863
#>     Attrib V27    -0.35020499178733305
#>     Attrib V28    -0.158007170634996
#>     Attrib V29    -0.23150342552308167
#>     Attrib V3    0.05013078924090113
#>     Attrib V30    -0.08835948631212646
#>     Attrib V31    -0.24398774373994822
#>     Attrib V32    0.05028407660741609
#>     Attrib V33    0.16450025007548447
#>     Attrib V34    0.09191661240728854
#>     Attrib V35    0.009866939578416648
#>     Attrib V36    -0.21671643894520293
#>     Attrib V37    -0.20287676002450994
#>     Attrib V38    -0.011391210687568609
#>     Attrib V39    0.05519704580762078
#>     Attrib V4    0.30134546822530445
#>     Attrib V40    -0.051565637224830915
#>     Attrib V41    -0.13239624697124963
#>     Attrib V42    -0.06413030967916239
#>     Attrib V43    -0.04084433643266548
#>     Attrib V44    -0.05434393310055057
#>     Attrib V45    0.05049769393024282
#>     Attrib V46    0.08315594922236935
#>     Attrib V47    -0.07296550212716518
#>     Attrib V48    0.17257544507999775
#>     Attrib V49    0.1694322987494117
#>     Attrib V5    0.08294514034050916
#>     Attrib V50    -0.130055256707897
#>     Attrib V51    9.283820048072463E-4
#>     Attrib V52    0.19868524449375458
#>     Attrib V53    0.15441099399663313
#>     Attrib V54    0.31019001455456047
#>     Attrib V55    0.2030901843603596
#>     Attrib V56    0.17098709397474843
#>     Attrib V57    0.32910851295065735
#>     Attrib V58    0.2527686466742953
#>     Attrib V59    0.5379066978429968
#>     Attrib V6    -0.07326108564846794
#>     Attrib V60    0.41467132645621296
#>     Attrib V7    0.0497550134651216
#>     Attrib V8    -0.09580179261232583
#>     Attrib V9    0.10052737584593839
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.09273520020627408
#>     Attrib V1    0.15749458952099393
#>     Attrib V10    -0.03807851622761464
#>     Attrib V11    0.06157528703894689
#>     Attrib V12    0.1813401946957261
#>     Attrib V13    0.040972827283475566
#>     Attrib V14    -9.154934871501218E-4
#>     Attrib V15    0.09361070686087632
#>     Attrib V16    0.04649806834246549
#>     Attrib V17    0.07696061122157591
#>     Attrib V18    -0.05197796358489627
#>     Attrib V19    -0.07117244015353083
#>     Attrib V2    0.04300110073662885
#>     Attrib V20    -0.05003389410861942
#>     Attrib V21    -0.10414020575513969
#>     Attrib V22    -0.15994991003508094
#>     Attrib V23    -0.22430794146882066
#>     Attrib V24    -0.17834496930078583
#>     Attrib V25    -0.09111228594883877
#>     Attrib V26    -0.11793333694365851
#>     Attrib V27    -0.193217973826069
#>     Attrib V28    -0.08663536297130202
#>     Attrib V29    -0.18809499116090164
#>     Attrib V3    0.09531438979027289
#>     Attrib V30    -0.05049882414554181
#>     Attrib V31    -0.16366874939397022
#>     Attrib V32    0.032715558841466146
#>     Attrib V33    0.12060646407353412
#>     Attrib V34    0.07587692585324181
#>     Attrib V35    0.11186045025641102
#>     Attrib V36    -0.08403752479328994
#>     Attrib V37    -0.060802677719622715
#>     Attrib V38    -0.005146956579358688
#>     Attrib V39    0.030703998648607015
#>     Attrib V4    0.23011825991243756
#>     Attrib V40    -0.06734542383921156
#>     Attrib V41    -0.06847096296035805
#>     Attrib V42    -0.053482809663348306
#>     Attrib V43    -0.003110519647401567
#>     Attrib V44    0.016620768290122226
#>     Attrib V45    0.12068111855573467
#>     Attrib V46    0.09469134175784412
#>     Attrib V47    0.06530605457169741
#>     Attrib V48    0.07122971136875583
#>     Attrib V49    0.10106017657217384
#>     Attrib V5    0.06910278743054334
#>     Attrib V50    -0.08988019998727177
#>     Attrib V51    0.027064124420923798
#>     Attrib V52    0.21858279907005393
#>     Attrib V53    0.18487376909706388
#>     Attrib V54    0.16594752979657507
#>     Attrib V55    0.15684437081001001
#>     Attrib V56    0.17873090985567325
#>     Attrib V57    0.21655903637922186
#>     Attrib V58    0.15917172193643858
#>     Attrib V59    0.3833035937959835
#>     Attrib V6    -0.015134158719095564
#>     Attrib V60    0.2720858461945266
#>     Attrib V7    0.028095110420892782
#>     Attrib V8    -0.05957502633344323
#>     Attrib V9    0.08630003439671469
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.4038418421448736
#>     Attrib V1    0.28701674096886315
#>     Attrib V10    -0.15994920733534732
#>     Attrib V11    -0.19702810983872632
#>     Attrib V12    -0.48829552521526115
#>     Attrib V13    -0.22104196311836008
#>     Attrib V14    0.8164616956246287
#>     Attrib V15    0.25324472739001697
#>     Attrib V16    0.12242532487774559
#>     Attrib V17    0.3237227846592691
#>     Attrib V18    0.5111254393330028
#>     Attrib V19    0.12757189454381893
#>     Attrib V2    0.1964394817543695
#>     Attrib V20    -0.07654801880960965
#>     Attrib V21    -0.33933759843322137
#>     Attrib V22    -0.6513445300528784
#>     Attrib V23    -0.2746732091853192
#>     Attrib V24    -0.2935769308298582
#>     Attrib V25    0.11806465860555998
#>     Attrib V26    0.40742690537762305
#>     Attrib V27    0.3321519464321641
#>     Attrib V28    -0.25679962560729586
#>     Attrib V29    0.06051689312479177
#>     Attrib V3    0.09786598059162534
#>     Attrib V30    -0.5386838259706157
#>     Attrib V31    0.6061228412153431
#>     Attrib V32    -0.028828345303580635
#>     Attrib V33    -0.42635268045431607
#>     Attrib V34    -0.1080848946490366
#>     Attrib V35    0.040273833992686275
#>     Attrib V36    0.5487449158570036
#>     Attrib V37    0.31574257482928075
#>     Attrib V38    -0.15444168721288465
#>     Attrib V39    -0.31437159140930365
#>     Attrib V4    -0.05300695420569333
#>     Attrib V40    -0.10331829413945307
#>     Attrib V41    -0.6522275874678406
#>     Attrib V42    -0.6146074143952721
#>     Attrib V43    -0.3654536091826957
#>     Attrib V44    -0.41470760502483034
#>     Attrib V45    -0.8062951675087086
#>     Attrib V46    -0.42033689816328984
#>     Attrib V47    0.16197842661160686
#>     Attrib V48    -0.06213551069195195
#>     Attrib V49    -0.49587616495643183
#>     Attrib V5    0.09884810906346779
#>     Attrib V50    0.9564750714434597
#>     Attrib V51    0.16645274667979273
#>     Attrib V52    -0.028782698471169897
#>     Attrib V53    -0.13213811260803093
#>     Attrib V54    -0.2130736918452166
#>     Attrib V55    0.5238410834127726
#>     Attrib V56    0.1749850814716877
#>     Attrib V57    0.417319769926594
#>     Attrib V58    -0.2866024445358086
#>     Attrib V59    -0.3088412141850494
#>     Attrib V6    0.3839464946963369
#>     Attrib V60    -0.011282428976259487
#>     Attrib V7    0.06644083311614721
#>     Attrib V8    0.23327643966699305
#>     Attrib V9    -0.49983788083817143
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.9255758349071987
#>     Attrib V1    0.043239683544443325
#>     Attrib V10    1.451702170374809
#>     Attrib V11    1.2759647267980523
#>     Attrib V12    1.7373174435674235
#>     Attrib V13    0.27864320718529095
#>     Attrib V14    -1.1234916356042384
#>     Attrib V15    -0.1862873914864679
#>     Attrib V16    -0.21812619259922877
#>     Attrib V17    -0.6709300119075855
#>     Attrib V18    -0.5731882271375597
#>     Attrib V19    0.04682064249051372
#>     Attrib V2    -0.23302052398493414
#>     Attrib V20    -0.2441715923435323
#>     Attrib V21    -0.27582245463041577
#>     Attrib V22    0.40904620090521054
#>     Attrib V23    0.3573423014254083
#>     Attrib V24    0.2482258366285652
#>     Attrib V25    0.23158841357552074
#>     Attrib V26    1.1355246353075545
#>     Attrib V27    1.654063762389014
#>     Attrib V28    2.342920784684774
#>     Attrib V29    1.4991637588986269
#>     Attrib V3    0.35144723264159955
#>     Attrib V30    1.0321796142950928
#>     Attrib V31    -0.09285244588001233
#>     Attrib V32    -0.18411331651740528
#>     Attrib V33    -0.7739269796662359
#>     Attrib V34    0.16530440801172727
#>     Attrib V35    0.4787401618062631
#>     Attrib V36    -0.664643373428895
#>     Attrib V37    0.2925854922678181
#>     Attrib V38    -0.1953131772537621
#>     Attrib V39    -0.4104588875194043
#>     Attrib V4    0.7488855530633791
#>     Attrib V40    0.28380182701473555
#>     Attrib V41    2.159849809317829
#>     Attrib V42    -0.018388458864146976
#>     Attrib V43    -0.5031951458719287
#>     Attrib V44    -0.736984570571147
#>     Attrib V45    0.3574684890700964
#>     Attrib V46    0.7628356787770632
#>     Attrib V47    0.4318450368545407
#>     Attrib V48    0.5251951718506005
#>     Attrib V49    1.0737740753540903
#>     Attrib V5    0.8143521396987591
#>     Attrib V50    -0.4162665180362645
#>     Attrib V51    0.978905974377231
#>     Attrib V52    1.2224097594611265
#>     Attrib V53    1.4115809577135514
#>     Attrib V54    0.08280397135177406
#>     Attrib V55    -0.3221914677309209
#>     Attrib V56    -0.7672719030273966
#>     Attrib V57    -0.20609577581463212
#>     Attrib V58    0.40090752627131127
#>     Attrib V59    0.4895226135027174
#>     Attrib V6    0.157956547334718
#>     Attrib V60    0.49312162175414964
#>     Attrib V7    -0.789325203351367
#>     Attrib V8    -0.7993062629174623
#>     Attrib V9    0.8875564586982343
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.3599338075303936
#>     Attrib V1    0.2176616065457188
#>     Attrib V10    -0.13437489945472497
#>     Attrib V11    -0.24115187563964458
#>     Attrib V12    -0.47370129240171244
#>     Attrib V13    -0.2151468266644268
#>     Attrib V14    0.6518479241637603
#>     Attrib V15    0.10019490934974747
#>     Attrib V16    0.12521048555359032
#>     Attrib V17    0.3328773470409913
#>     Attrib V18    0.542830430322288
#>     Attrib V19    0.16566529474185968
#>     Attrib V2    0.15883827841879566
#>     Attrib V20    -0.10743024278613277
#>     Attrib V21    -0.21136461420881977
#>     Attrib V22    -0.3806572984471343
#>     Attrib V23    -0.10615825627755322
#>     Attrib V24    -0.19140451643555154
#>     Attrib V25    0.07085404931210243
#>     Attrib V26    0.19982950940625566
#>     Attrib V27    0.22173150203026046
#>     Attrib V28    -0.27896014713417744
#>     Attrib V29    0.0871207769004054
#>     Attrib V3    0.012099998437820038
#>     Attrib V30    -0.2930465863215975
#>     Attrib V31    0.7162007889252207
#>     Attrib V32    0.11357755217205806
#>     Attrib V33    -0.13663379110043936
#>     Attrib V34    -0.009406559915960937
#>     Attrib V35    0.1541651386805441
#>     Attrib V36    0.5768100128900782
#>     Attrib V37    0.43706271180809414
#>     Attrib V38    -0.13098643464844567
#>     Attrib V39    -0.22312563989886297
#>     Attrib V4    -0.053327321196056945
#>     Attrib V40    0.03184803041429075
#>     Attrib V41    -0.36287030863557473
#>     Attrib V42    -0.3964337132078265
#>     Attrib V43    -0.2638982284245474
#>     Attrib V44    -0.23539342862036297
#>     Attrib V45    -0.6180148075274732
#>     Attrib V46    -0.3990161521935961
#>     Attrib V47    0.05189777541916836
#>     Attrib V48    -0.05831809372226149
#>     Attrib V49    -0.43142713634856067
#>     Attrib V5    0.10550512753992962
#>     Attrib V50    0.7383206183714307
#>     Attrib V51    0.06905900843660262
#>     Attrib V52    -0.13543784660032093
#>     Attrib V53    -0.1616216659048616
#>     Attrib V54    -0.22131872997778504
#>     Attrib V55    0.3111099896184045
#>     Attrib V56    0.13951918672323063
#>     Attrib V57    0.30922183536968767
#>     Attrib V58    -0.22805651692587325
#>     Attrib V59    -0.2715459018298881
#>     Attrib V6    0.4844622059679328
#>     Attrib V60    0.04862765047898854
#>     Attrib V7    0.1969695041501128
#>     Attrib V8    0.30984356200416824
#>     Attrib V9    -0.4136839185017072
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.38973111538400096
#>     Attrib V1    -0.13738960115334004
#>     Attrib V10    0.20374087225085807
#>     Attrib V11    0.2599922672256171
#>     Attrib V12    0.6545875576866348
#>     Attrib V13    0.2395635169949031
#>     Attrib V14    -0.6241394124853911
#>     Attrib V15    0.010378766531752239
#>     Attrib V16    0.08439654034051021
#>     Attrib V17    -0.02672203023439733
#>     Attrib V18    -0.16759049803924164
#>     Attrib V19    -0.0063305918809235815
#>     Attrib V2    -0.1769752070542074
#>     Attrib V20    0.06783548821083943
#>     Attrib V21    0.07634394092234734
#>     Attrib V22    0.2819221071713006
#>     Attrib V23    0.13571663254920788
#>     Attrib V24    0.4259779509284058
#>     Attrib V25    0.2889255668687081
#>     Attrib V26    -0.021204276038881822
#>     Attrib V27    -0.3491392603058631
#>     Attrib V28    0.06788151190014943
#>     Attrib V29    -0.504558362910788
#>     Attrib V3    -0.26821694190039075
#>     Attrib V30    0.2322258374425595
#>     Attrib V31    -0.4625010217184611
#>     Attrib V32    0.21962688823514007
#>     Attrib V33    0.43055219518670274
#>     Attrib V34    0.1894203547924017
#>     Attrib V35    -0.09741215580709486
#>     Attrib V36    -0.7609077067680052
#>     Attrib V37    -0.8124544111845227
#>     Attrib V38    -0.2598489258841901
#>     Attrib V39    -0.04266353016516841
#>     Attrib V4    0.2916996022790694
#>     Attrib V40    -0.21588110511932504
#>     Attrib V41    0.11777166538847286
#>     Attrib V42    0.12154279139972697
#>     Attrib V43    -0.1284245557722236
#>     Attrib V44    -0.07485334797533685
#>     Attrib V45    0.3548783968639663
#>     Attrib V46    0.09430226960789398
#>     Attrib V47    -0.21360308143780568
#>     Attrib V48    0.29569873557512055
#>     Attrib V49    0.5680950869367379
#>     Attrib V5    -0.036424314568274226
#>     Attrib V50    -0.7187840962556813
#>     Attrib V51    0.04633764817697362
#>     Attrib V52    0.3450035778342503
#>     Attrib V53    0.4342480133015365
#>     Attrib V54    0.7406105601487357
#>     Attrib V55    -0.0637078872394273
#>     Attrib V56    -0.17875011862425927
#>     Attrib V57    0.05045977312469102
#>     Attrib V58    0.40595260502950675
#>     Attrib V59    0.6474099396838906
#>     Attrib V6    -0.15634806292854966
#>     Attrib V60    0.30983465793661724
#>     Attrib V7    0.0323568697702198
#>     Attrib V8    -0.11591999180412164
#>     Attrib V9    0.5351903583570832
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    0.4212375324796741
#>     Attrib V1    0.528057079299954
#>     Attrib V10    -0.5889550371908233
#>     Attrib V11    -0.6808559428292816
#>     Attrib V12    -0.7719116396355822
#>     Attrib V13    -0.5756747801370917
#>     Attrib V14    0.8818845889438329
#>     Attrib V15    -0.03733749298341748
#>     Attrib V16    -0.364762946904494
#>     Attrib V17    -0.4468419582985619
#>     Attrib V18    0.3450226372343643
#>     Attrib V19    -0.22288645322417075
#>     Attrib V2    0.10984720235020252
#>     Attrib V20    -0.8159571165296924
#>     Attrib V21    -0.936239048113728
#>     Attrib V22    -1.5350534966267473
#>     Attrib V23    -1.2973136477753986
#>     Attrib V24    -1.1723361663936251
#>     Attrib V25    -0.5908313103810829
#>     Attrib V26    0.09313471728039924
#>     Attrib V27    0.9108153443680889
#>     Attrib V28    -0.1163729041716923
#>     Attrib V29    0.7498093315596004
#>     Attrib V3    0.4235064183749129
#>     Attrib V30    -0.7764513760299573
#>     Attrib V31    1.1915988077757171
#>     Attrib V32    -0.22612338190661352
#>     Attrib V33    -0.8386609472640524
#>     Attrib V34    0.4253400296841452
#>     Attrib V35    0.7322634183512525
#>     Attrib V36    1.2550975923992873
#>     Attrib V37    1.1723744198834254
#>     Attrib V38    0.03426525076742792
#>     Attrib V39    -0.09147454362281673
#>     Attrib V4    -0.26750433971167714
#>     Attrib V40    0.41006180160065414
#>     Attrib V41    0.11937311671341046
#>     Attrib V42    -0.8535319227699619
#>     Attrib V43    -0.4993591554709503
#>     Attrib V44    -0.8320228098335479
#>     Attrib V45    -1.129948240114974
#>     Attrib V46    -0.6121698579329695
#>     Attrib V47    0.1422006903467512
#>     Attrib V48    -0.07659163088761337
#>     Attrib V49    -0.9748768131151374
#>     Attrib V5    0.2521048832357382
#>     Attrib V50    1.494770388464671
#>     Attrib V51    -0.29387069667367793
#>     Attrib V52    -0.43828128496840024
#>     Attrib V53    -0.14130628563130093
#>     Attrib V54    -1.034612300873784
#>     Attrib V55    0.5851224118389503
#>     Attrib V56    -0.31469813341208613
#>     Attrib V57    0.15614232794023256
#>     Attrib V58    -0.9123864113677628
#>     Attrib V59    -0.3621448080808352
#>     Attrib V6    0.5152517076574484
#>     Attrib V60    -0.1509936953351794
#>     Attrib V7    -0.2591943625229703
#>     Attrib V8    -0.180618437440403
#>     Attrib V9    -1.4254083938886297
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.3069024129844906
#>     Attrib V1    -0.19972804957107593
#>     Attrib V10    0.17208752523433196
#>     Attrib V11    0.22899917455924715
#>     Attrib V12    0.4502087818665671
#>     Attrib V13    0.08326295244145857
#>     Attrib V14    -0.40530599408706564
#>     Attrib V15    -0.014473859789606523
#>     Attrib V16    -7.248377790511436E-4
#>     Attrib V17    -0.10395956939944606
#>     Attrib V18    -0.23078074936528256
#>     Attrib V19    -0.11518825417738426
#>     Attrib V2    -0.2429133322745408
#>     Attrib V20    0.040422346958057645
#>     Attrib V21    -0.004759961801597444
#>     Attrib V22    0.12283065310367869
#>     Attrib V23    -0.05877475106388679
#>     Attrib V24    0.11775954411981115
#>     Attrib V25    0.14503953793802543
#>     Attrib V26    -0.07804916758494083
#>     Attrib V27    -0.07157977322074735
#>     Attrib V28    0.32396727745247295
#>     Attrib V29    -0.06287495295067544
#>     Attrib V3    -0.16180987875655609
#>     Attrib V30    0.24529098437767233
#>     Attrib V31    -0.34186426845070506
#>     Attrib V32    0.1397471076825561
#>     Attrib V33    0.2752709988634885
#>     Attrib V34    0.11926539398669714
#>     Attrib V35    -0.01730797042910617
#>     Attrib V36    -0.5306984595533549
#>     Attrib V37    -0.4563588590463662
#>     Attrib V38    -0.19476584713029793
#>     Attrib V39    -0.08829519049774433
#>     Attrib V4    0.2080185829894091
#>     Attrib V40    -0.13942358775873487
#>     Attrib V41    0.15313415149134277
#>     Attrib V42    -0.00399433484080698
#>     Attrib V43    -0.11196677296800868
#>     Attrib V44    -0.1888048446545261
#>     Attrib V45    0.28978687156201327
#>     Attrib V46    0.13080329649703645
#>     Attrib V47    -0.05468943270123707
#>     Attrib V48    0.2345876865564204
#>     Attrib V49    0.3921974764873041
#>     Attrib V5    -0.06784881934772602
#>     Attrib V50    -0.4960530647376326
#>     Attrib V51    0.06816289168591018
#>     Attrib V52    0.32286417261954614
#>     Attrib V53    0.2894347732636454
#>     Attrib V54    0.3761551799167446
#>     Attrib V55    -0.01946838451584943
#>     Attrib V56    -0.18041603145233778
#>     Attrib V57    0.005469729968384412
#>     Attrib V58    0.18395611427486466
#>     Attrib V59    0.35907585039140555
#>     Attrib V6    -0.15158951158193243
#>     Attrib V60    0.20033398966388824
#>     Attrib V7    -0.048730007113673174
#>     Attrib V8    -0.09652426165143958
#>     Attrib V9    0.38452696330139235
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.20343694523152656
#>     Attrib V1    0.09074585769194668
#>     Attrib V10    0.01737429763833522
#>     Attrib V11    -0.042476126652038065
#>     Attrib V12    -0.07418351646017445
#>     Attrib V13    7.489158201284421E-4
#>     Attrib V14    0.12845983860678753
#>     Attrib V15    0.03955165627247153
#>     Attrib V16    0.062330311851234416
#>     Attrib V17    0.14660322453684133
#>     Attrib V18    0.15859388617012082
#>     Attrib V19    -0.05429490827633113
#>     Attrib V2    0.07160610484252615
#>     Attrib V20    -0.14381888381089178
#>     Attrib V21    -0.09336691212954781
#>     Attrib V22    -0.1407032994250547
#>     Attrib V23    -0.07031399551412466
#>     Attrib V24    -0.14434207370949084
#>     Attrib V25    -0.056086983922980393
#>     Attrib V26    -0.01106481557462309
#>     Attrib V27    -0.06650435148202495
#>     Attrib V28    -0.11776828699083358
#>     Attrib V29    -0.046907683482529994
#>     Attrib V3    0.012352411038482784
#>     Attrib V30    0.005007667697625321
#>     Attrib V31    0.31012475444529425
#>     Attrib V32    0.12759507763379613
#>     Attrib V33    0.06058983786232225
#>     Attrib V34    0.11149605950912132
#>     Attrib V35    0.20437754441196987
#>     Attrib V36    0.2666567442297403
#>     Attrib V37    0.26045782355099517
#>     Attrib V38    0.009633572896752565
#>     Attrib V39    0.09781672031790947
#>     Attrib V4    -0.002715188953015238
#>     Attrib V40    0.21191951420227098
#>     Attrib V41    0.14569620615558798
#>     Attrib V42    0.08869388737788662
#>     Attrib V43    0.057066888106741466
#>     Attrib V44    0.054503531974378135
#>     Attrib V45    -0.06813446205957112
#>     Attrib V46    -0.0016687936860497186
#>     Attrib V47    0.029615480604338645
#>     Attrib V48    -0.030072233963370137
#>     Attrib V49    -0.15414869354081331
#>     Attrib V5    0.05299665656925805
#>     Attrib V50    0.12382017798061559
#>     Attrib V51    0.027024261340197073
#>     Attrib V52    -0.02341864328238846
#>     Attrib V53    -0.014271124045357731
#>     Attrib V54    -0.07383023121159331
#>     Attrib V55    0.04309189953861358
#>     Attrib V56    0.12740187426877417
#>     Attrib V57    0.07735989324984568
#>     Attrib V58    0.052668736797789696
#>     Attrib V59    0.0022543532608704144
#>     Attrib V6    0.23918898760603718
#>     Attrib V60    0.10385583164398776
#>     Attrib V7    0.09815997491315011
#>     Attrib V8    0.1141217929916324
#>     Attrib V9    -0.043111166413519406
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.02072316725613951
#>     Attrib V1    0.27522955335530214
#>     Attrib V10    -0.3050546490199824
#>     Attrib V11    -0.10408060716366846
#>     Attrib V12    0.17792914202384172
#>     Attrib V13    0.11205183504754547
#>     Attrib V14    -0.10574500530563029
#>     Attrib V15    0.34600836526195633
#>     Attrib V16    0.38525719840406675
#>     Attrib V17    0.30610680790395317
#>     Attrib V18    -0.07167524459550569
#>     Attrib V19    -0.036859749624315714
#>     Attrib V2    0.2107201426213171
#>     Attrib V20    0.39853382352431815
#>     Attrib V21    0.26599554470737574
#>     Attrib V22    0.22286415375066873
#>     Attrib V23    -0.03896647838671273
#>     Attrib V24    0.10879871612983295
#>     Attrib V25    -0.13286095732867415
#>     Attrib V26    -0.6603907867326628
#>     Attrib V27    -0.8992727645818428
#>     Attrib V28    -0.470248671486288
#>     Attrib V29    -0.7761360903266088
#>     Attrib V3    -0.005154847730838593
#>     Attrib V30    -0.19632024490732228
#>     Attrib V31    -0.7243247820458364
#>     Attrib V32    0.07556478857085433
#>     Attrib V33    0.5551918873247333
#>     Attrib V34    0.12176684397697654
#>     Attrib V35    -0.13350082248685774
#>     Attrib V36    -0.5324014886901479
#>     Attrib V37    -0.496337015854099
#>     Attrib V38    0.10560960252685869
#>     Attrib V39    0.19646653915765286
#>     Attrib V4    0.2197439065960839
#>     Attrib V40    -0.07888083191827157
#>     Attrib V41    -0.16678411377579536
#>     Attrib V42    0.19273706664164672
#>     Attrib V43    0.035728244622179536
#>     Attrib V44    0.09340028948790793
#>     Attrib V45    0.22523303937470132
#>     Attrib V46    0.055096843624828445
#>     Attrib V47    -0.27908044755151407
#>     Attrib V48    0.01321718997475604
#>     Attrib V49    0.19786190299415482
#>     Attrib V5    -0.13762429610500276
#>     Attrib V50    -0.5765825353818862
#>     Attrib V51    -0.1944502729450611
#>     Attrib V52    0.07936463117515112
#>     Attrib V53    0.21697054641213132
#>     Attrib V54    0.6976305042557356
#>     Attrib V55    0.07236417800372247
#>     Attrib V56    0.31863134052310293
#>     Attrib V57    0.4515952158198558
#>     Attrib V58    0.302959059700494
#>     Attrib V59    0.6962612493260567
#>     Attrib V6    -0.15534790878074312
#>     Attrib V60    0.517158669433409
#>     Attrib V7    0.2510200932340394
#>     Attrib V8    -0.12103525139624109
#>     Attrib V9    0.1918201062300682
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.2001270706949241
#>     Attrib V1    0.09631784974767858
#>     Attrib V10    -0.0422215133045812
#>     Attrib V11    0.008215726490836118
#>     Attrib V12    -0.005859400924589045
#>     Attrib V13    -0.05209004715240138
#>     Attrib V14    0.10263359973567779
#>     Attrib V15    0.04837991396181458
#>     Attrib V16    0.05282637239397011
#>     Attrib V17    0.005536623214124739
#>     Attrib V18    0.08389418730947666
#>     Attrib V19    -0.09646021159256912
#>     Attrib V2    0.024971620219536982
#>     Attrib V20    -0.07363966752652355
#>     Attrib V21    -0.08656371357924064
#>     Attrib V22    -0.14521157709873447
#>     Attrib V23    -0.07007693115130453
#>     Attrib V24    -0.09815819300048374
#>     Attrib V25    -0.11691169200122378
#>     Attrib V26    -0.07472333698834867
#>     Attrib V27    -0.06979541221537712
#>     Attrib V28    -0.03636895657574182
#>     Attrib V29    -0.03065868446449751
#>     Attrib V3    0.07992790754814749
#>     Attrib V30    0.031465422386850475
#>     Attrib V31    0.06679851363219426
#>     Attrib V32    0.07077684976914435
#>     Attrib V33    0.09562329743052454
#>     Attrib V34    0.11742555056117279
#>     Attrib V35    0.14192119903139885
#>     Attrib V36    0.18180291921837793
#>     Attrib V37    0.11053330842685252
#>     Attrib V38    0.008795742479909843
#>     Attrib V39    0.06143561573344801
#>     Attrib V4    0.006404744671938919
#>     Attrib V40    0.08419496783691918
#>     Attrib V41    0.0321332107749486
#>     Attrib V42    0.0491756914665481
#>     Attrib V43    0.014128496877036819
#>     Attrib V44    0.11325854789176694
#>     Attrib V45    0.04579482643081462
#>     Attrib V46    0.06578104463069669
#>     Attrib V47    0.05595200145873873
#>     Attrib V48    -0.03313194015147432
#>     Attrib V49    -0.009919872789127608
#>     Attrib V5    0.0822743720518205
#>     Attrib V50    0.03799741285798988
#>     Attrib V51    0.07839180846979045
#>     Attrib V52    0.09374847379581219
#>     Attrib V53    0.06143657657858336
#>     Attrib V54    -0.034409495013661036
#>     Attrib V55    0.05847357580930956
#>     Attrib V56    0.10608551165948533
#>     Attrib V57    0.11946273779862475
#>     Attrib V58    0.12693366721517815
#>     Attrib V59    0.04678639906866098
#>     Attrib V6    0.15805443627990817
#>     Attrib V60    0.13586071669427655
#>     Attrib V7    0.09706497107731175
#>     Attrib V8    0.09870385298563278
#>     Attrib V9    0.06461699080742328
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
#>  0.1449275 
```
