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
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
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
#> • Packages: mlr3, mlr3extralearners, and RWeka
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
#>     Threshold    -0.7654684936101197
#>     Node 2    3.073838943758589
#>     Node 3    2.110129611048198
#>     Node 4    1.0367204455929624
#>     Node 5    -2.0918782981033797
#>     Node 6    0.6586030252434141
#>     Node 7    3.4785713850425743
#>     Node 8    0.6768442310489982
#>     Node 9    2.8648139288371763
#>     Node 10    -1.8084846220802584
#>     Node 11    1.2860595390657672
#>     Node 12    1.7821027955653308
#>     Node 13    -0.01896508508478032
#>     Node 14    1.8109839468224125
#>     Node 15    -2.3990798313342148
#>     Node 16    -0.34108333918319567
#>     Node 17    1.3130725170387396
#>     Node 18    -1.0262617795945748
#>     Node 19    1.4930334336342768
#>     Node 20    1.8074820392873725
#>     Node 21    -2.2503883101593605
#>     Node 22    1.3106640261634512
#>     Node 23    0.35971199599980164
#>     Node 24    -1.236641499667908
#>     Node 25    4.523954290681692
#>     Node 26    -0.6901669696610464
#>     Node 27    2.463979669200688
#>     Node 28    -2.144927932880792
#>     Node 29    0.9347270494709523
#>     Node 30    -0.06058433032327078
#>     Node 31    1.1037282928378596
#>     Node 32    0.11482636769666686
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.7840481551130634
#>     Node 2    -3.1277860198027563
#>     Node 3    -2.095534447567824
#>     Node 4    -1.0069587659136228
#>     Node 5    2.1094370073424007
#>     Node 6    -0.6416680029965595
#>     Node 7    -3.4572901194434196
#>     Node 8    -0.7188465173380398
#>     Node 9    -2.836292260034711
#>     Node 10    1.748371206603964
#>     Node 11    -1.2608121134297317
#>     Node 12    -1.861491083456894
#>     Node 13    0.07049031112215046
#>     Node 14    -1.748596911619694
#>     Node 15    2.409131178620691
#>     Node 16    0.3246538989869784
#>     Node 17    -1.287175605473579
#>     Node 18    1.070984052247437
#>     Node 19    -1.5015747427641992
#>     Node 20    -1.8007379724500958
#>     Node 21    2.304186233650012
#>     Node 22    -1.3604057381820294
#>     Node 23    -0.40878826200317936
#>     Node 24    1.2299036110902046
#>     Node 25    -4.503271157914791
#>     Node 26    0.6092307219344658
#>     Node 27    -2.4946199754768346
#>     Node 28    2.108698771829341
#>     Node 29    -0.9737019132312732
#>     Node 30    0.1364894866151896
#>     Node 31    -1.0481526500797826
#>     Node 32    -0.13725919526835242
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.47863089778695056
#>     Attrib V1    0.5179950476777554
#>     Attrib V10    1.2245255334203955
#>     Attrib V11    1.3253228386643452
#>     Attrib V12    1.310449621579257
#>     Attrib V13    0.3675229191272753
#>     Attrib V14    -0.6312605025992416
#>     Attrib V15    -0.6162588687677597
#>     Attrib V16    -0.9524772796679511
#>     Attrib V17    -0.6812741743040057
#>     Attrib V18    -0.15498887946826928
#>     Attrib V19    -0.45739206065282506
#>     Attrib V2    0.7664741700594823
#>     Attrib V20    -0.41736473987923856
#>     Attrib V21    -0.27724245650285645
#>     Attrib V22    0.22937952631532638
#>     Attrib V23    0.8013050683059487
#>     Attrib V24    0.25403401452478963
#>     Attrib V25    0.18373439868929042
#>     Attrib V26    0.5119008611059351
#>     Attrib V27    0.8631403429913679
#>     Attrib V28    1.658735646092706
#>     Attrib V29    1.1348463963407585
#>     Attrib V3    -0.242686651255161
#>     Attrib V30    0.4559155473500829
#>     Attrib V31    -0.6893573824752327
#>     Attrib V32    -0.06963220743569278
#>     Attrib V33    -0.2187780324970493
#>     Attrib V34    -0.2039395054529027
#>     Attrib V35    0.7704032654457864
#>     Attrib V36    -0.738514280634692
#>     Attrib V37    -0.4036544453056632
#>     Attrib V38    -0.5655719026892045
#>     Attrib V39    0.3143246513615933
#>     Attrib V4    0.2490192968948975
#>     Attrib V40    0.2950408882201708
#>     Attrib V41    1.015946953224138
#>     Attrib V42    -0.22781978887017232
#>     Attrib V43    -6.259039652040102E-5
#>     Attrib V44    0.3977076856279114
#>     Attrib V45    0.8561468377095275
#>     Attrib V46    0.3542373367650825
#>     Attrib V47    0.15817461675182487
#>     Attrib V48    0.5175094297936867
#>     Attrib V49    0.7154416253219719
#>     Attrib V5    0.8670801486385306
#>     Attrib V50    -0.4494477043805878
#>     Attrib V51    0.7644867801605423
#>     Attrib V52    0.4085333663734521
#>     Attrib V53    0.3305670365488146
#>     Attrib V54    -0.5941019604200041
#>     Attrib V55    -0.19784832249460194
#>     Attrib V56    -0.2736229596171772
#>     Attrib V57    -0.3031908723569168
#>     Attrib V58    0.036289559455548945
#>     Attrib V59    -0.027613184493239885
#>     Attrib V6    0.16611368381215008
#>     Attrib V60    0.4773755614590602
#>     Attrib V7    -0.38663296859990226
#>     Attrib V8    -0.5863401533803742
#>     Attrib V9    1.4748779763270168
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.13993781278111136
#>     Attrib V1    0.652077114828448
#>     Attrib V10    0.2946651744034464
#>     Attrib V11    0.1406668009939495
#>     Attrib V12    0.06567410457321489
#>     Attrib V13    -0.14698025186317246
#>     Attrib V14    0.038439915418820005
#>     Attrib V15    0.2624674896497145
#>     Attrib V16    0.3028067246700692
#>     Attrib V17    0.19821054502739818
#>     Attrib V18    -0.019055634308687657
#>     Attrib V19    0.1905158975250771
#>     Attrib V2    0.11562613638505878
#>     Attrib V20    0.5424435259204502
#>     Attrib V21    0.6889141464041724
#>     Attrib V22    0.787663870787062
#>     Attrib V23    0.39817602080742764
#>     Attrib V24    -0.0876309603866319
#>     Attrib V25    -0.22833067226646084
#>     Attrib V26    -0.8392072069654655
#>     Attrib V27    -0.7502520808930428
#>     Attrib V28    0.02588557732834217
#>     Attrib V29    -0.09056556740022947
#>     Attrib V3    -0.38208140570488547
#>     Attrib V30    0.12475953347337557
#>     Attrib V31    -1.4413513517382868
#>     Attrib V32    -0.08054985742175452
#>     Attrib V33    0.3159709870516469
#>     Attrib V34    -0.7309863010829639
#>     Attrib V35    -0.7918815815464821
#>     Attrib V36    -0.6821543895362475
#>     Attrib V37    -0.35128008683779693
#>     Attrib V38    0.40997315588608907
#>     Attrib V39    0.41408671404992853
#>     Attrib V4    0.5069621715778622
#>     Attrib V40    -0.02915901738901883
#>     Attrib V41    0.5053516254739432
#>     Attrib V42    0.4944644182754036
#>     Attrib V43    0.10459699253060577
#>     Attrib V44    0.307753104788255
#>     Attrib V45    -0.06744756085546492
#>     Attrib V46    -0.48145848804735214
#>     Attrib V47    -0.39371951603205535
#>     Attrib V48    0.00638728810360762
#>     Attrib V49    0.06548015829795431
#>     Attrib V5    0.10406784584709368
#>     Attrib V50    -0.278399552625824
#>     Attrib V51    0.27838794664375455
#>     Attrib V52    -0.0020709798628750177
#>     Attrib V53    -0.12859884275919736
#>     Attrib V54    0.7405700316459092
#>     Attrib V55    -0.4166405880203848
#>     Attrib V56    0.4456254368175736
#>     Attrib V57    0.37462032504690473
#>     Attrib V58    0.23121539247105002
#>     Attrib V59    1.0948414532098336
#>     Attrib V6    -0.3036632122038421
#>     Attrib V60    0.6781153431677719
#>     Attrib V7    -0.014329344324765595
#>     Attrib V8    0.1149235457433152
#>     Attrib V9    0.2954480041814347
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.04822281760874388
#>     Attrib V1    0.3153395184505051
#>     Attrib V10    0.2244940626460904
#>     Attrib V11    0.18267007845976863
#>     Attrib V12    0.14838079577924304
#>     Attrib V13    -0.03025202010964132
#>     Attrib V14    -0.02155613947062469
#>     Attrib V15    0.09494546249487983
#>     Attrib V16    0.0596432734017508
#>     Attrib V17    0.07847472085006015
#>     Attrib V18    0.03256671875462664
#>     Attrib V19    0.0706591982757722
#>     Attrib V2    0.12691719153098494
#>     Attrib V20    0.26903049365676956
#>     Attrib V21    0.3937455769910551
#>     Attrib V22    0.4219004972018796
#>     Attrib V23    0.3285180505404831
#>     Attrib V24    0.014227673197021305
#>     Attrib V25    -0.08230792682047093
#>     Attrib V26    -0.35331380634159215
#>     Attrib V27    -0.3541392549782767
#>     Attrib V28    0.15905505408219786
#>     Attrib V29    0.1071606334656084
#>     Attrib V3    -0.22866101376838946
#>     Attrib V30    0.08584347152214987
#>     Attrib V31    -0.7919067171479022
#>     Attrib V32    -0.06193342532501393
#>     Attrib V33    0.15164019460159828
#>     Attrib V34    -0.3450707977074047
#>     Attrib V35    -0.28795922478608044
#>     Attrib V36    -0.4558613970639807
#>     Attrib V37    -0.24541426580722564
#>     Attrib V38    0.06366675326351251
#>     Attrib V39    0.1781807525365991
#>     Attrib V4    0.22206699986996226
#>     Attrib V40    -0.006690112348854147
#>     Attrib V41    0.31787444367765144
#>     Attrib V42    0.20550618558114878
#>     Attrib V43    0.02967261475747494
#>     Attrib V44    0.18520222779025827
#>     Attrib V45    0.08544521862786697
#>     Attrib V46    -0.2546814889819204
#>     Attrib V47    -0.2327273291016213
#>     Attrib V48    0.05516743369263103
#>     Attrib V49    0.1200513526272939
#>     Attrib V5    0.16626178133837963
#>     Attrib V50    -0.1771975583740079
#>     Attrib V51    0.2741219902295201
#>     Attrib V52    -0.009503503741332258
#>     Attrib V53    0.05935387682736018
#>     Attrib V54    0.25622152237228385
#>     Attrib V55    -0.21966194527654823
#>     Attrib V56    0.19322923703421158
#>     Attrib V57    0.14929124773744992
#>     Attrib V58    0.055443684509602395
#>     Attrib V59    0.5263646098020035
#>     Attrib V6    -0.18148896386129915
#>     Attrib V60    0.38048116067996135
#>     Attrib V7    -0.09602175569986603
#>     Attrib V8    -0.12125383435354264
#>     Attrib V9    0.32815798263265716
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.11458392296246156
#>     Attrib V1    -0.42054384132287226
#>     Attrib V10    -0.3617702768621728
#>     Attrib V11    -0.3412793288647363
#>     Attrib V12    -0.29765640842574925
#>     Attrib V13    0.16349249691231799
#>     Attrib V14    0.28088517482756914
#>     Attrib V15    0.10784089943176377
#>     Attrib V16    -0.08062707552000448
#>     Attrib V17    -0.1190521407737512
#>     Attrib V18    -0.10009719574475356
#>     Attrib V19    -0.07047766739266698
#>     Attrib V2    -0.27701088743966434
#>     Attrib V20    -0.5082873919122474
#>     Attrib V21    -0.5613304032936842
#>     Attrib V22    -0.8072295928846899
#>     Attrib V23    -0.5763213254164734
#>     Attrib V24    0.09812660157020761
#>     Attrib V25    0.3005359359784194
#>     Attrib V26    0.6278138878012062
#>     Attrib V27    0.34773978574541164
#>     Attrib V28    -0.6841685289904664
#>     Attrib V29    -0.4695954165283048
#>     Attrib V3    0.612185396124838
#>     Attrib V30    -0.1877502613814961
#>     Attrib V31    1.6455674841458285
#>     Attrib V32    0.33276147591575567
#>     Attrib V33    -0.14359065149698697
#>     Attrib V34    0.5265154803278319
#>     Attrib V35    0.13984022508580352
#>     Attrib V36    0.38348767746984863
#>     Attrib V37    -0.14254236484580116
#>     Attrib V38    -0.6129866540820668
#>     Attrib V39    -0.5770294175494963
#>     Attrib V4    -0.3433785596393802
#>     Attrib V40    -0.01335072834282245
#>     Attrib V41    -0.6796031461856031
#>     Attrib V42    -0.13339598086948848
#>     Attrib V43    0.010879210196591505
#>     Attrib V44    -0.4761473390972121
#>     Attrib V45    -0.4014726886893689
#>     Attrib V46    0.16274255628521175
#>     Attrib V47    0.2091562983335689
#>     Attrib V48    -0.29896488607939103
#>     Attrib V49    -0.4173492803466135
#>     Attrib V5    -0.09546275195995353
#>     Attrib V50    0.4598999745058106
#>     Attrib V51    -0.5039070084845982
#>     Attrib V52    -0.03496759254923049
#>     Attrib V53    0.20493684455341415
#>     Attrib V54    -0.24476330524674908
#>     Attrib V55    0.5370120511554684
#>     Attrib V56    -0.1775646713346029
#>     Attrib V57    -0.2239144074093161
#>     Attrib V58    0.08207103736471177
#>     Attrib V59    -0.669270386343945
#>     Attrib V6    0.49573388529851564
#>     Attrib V60    -0.4579927826983501
#>     Attrib V7    0.49294712392108814
#>     Attrib V8    0.5232124279771216
#>     Attrib V9    -0.5316362322557927
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.017071156295318652
#>     Attrib V1    0.25597978430723195
#>     Attrib V10    0.10294703407326215
#>     Attrib V11    0.11128278619391324
#>     Attrib V12    0.16545591451982122
#>     Attrib V13    -0.03777735352985993
#>     Attrib V14    -0.0030200655326114677
#>     Attrib V15    0.053576718595884115
#>     Attrib V16    0.09902619805708869
#>     Attrib V17    0.025667802218057725
#>     Attrib V18    0.08290344180840076
#>     Attrib V19    0.045051619903336365
#>     Attrib V2    0.09749202358027852
#>     Attrib V20    0.16633707686567864
#>     Attrib V21    0.22291782834587826
#>     Attrib V22    0.21609925355739465
#>     Attrib V23    0.17209200338797914
#>     Attrib V24    0.05381936712977467
#>     Attrib V25    0.019662682118881745
#>     Attrib V26    -0.19583575934233266
#>     Attrib V27    -0.1740420455790173
#>     Attrib V28    -0.010637352455388402
#>     Attrib V29    -0.04412377225894806
#>     Attrib V3    -0.1217575175681118
#>     Attrib V30    -0.022512579759203174
#>     Attrib V31    -0.5039104034410311
#>     Attrib V32    0.011416160854609626
#>     Attrib V33    0.08425139032020644
#>     Attrib V34    -0.24177933199102475
#>     Attrib V35    -0.17689789613353815
#>     Attrib V36    -0.32999987166514183
#>     Attrib V37    -0.1705938583797087
#>     Attrib V38    -0.006953989513077983
#>     Attrib V39    0.05010532674588326
#>     Attrib V4    0.20029474168044842
#>     Attrib V40    -0.06853939140608668
#>     Attrib V41    0.23142090012761998
#>     Attrib V42    0.1374829851930755
#>     Attrib V43    0.049799727530070025
#>     Attrib V44    0.08447721819649039
#>     Attrib V45    -0.010004795726555953
#>     Attrib V46    -0.13938362930035456
#>     Attrib V47    -0.14847013735309827
#>     Attrib V48    -0.029996465236396045
#>     Attrib V49    0.010671360350164397
#>     Attrib V5    0.11213103471216554
#>     Attrib V50    -0.08453018262684522
#>     Attrib V51    0.15742918668336597
#>     Attrib V52    -0.002686327543351375
#>     Attrib V53    0.11918077577433692
#>     Attrib V54    0.20865640664341262
#>     Attrib V55    -0.11878819867785545
#>     Attrib V56    0.14443727612614263
#>     Attrib V57    0.13935761780232273
#>     Attrib V58    0.09278347313023552
#>     Attrib V59    0.4131381572630359
#>     Attrib V6    -0.016877967790404128
#>     Attrib V60    0.3579059818868665
#>     Attrib V7    -0.041539322328398624
#>     Attrib V8    -0.029434062802028566
#>     Attrib V9    0.2122398965566957
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.4719120216556703
#>     Attrib V1    0.5194006917191567
#>     Attrib V10    1.1742643846110838
#>     Attrib V11    1.4680462299320454
#>     Attrib V12    1.4058876718826887
#>     Attrib V13    0.36702395571256147
#>     Attrib V14    -0.7117229421208175
#>     Attrib V15    -0.7205035643445408
#>     Attrib V16    -1.03325320646938
#>     Attrib V17    -0.7892480994126329
#>     Attrib V18    -0.22907713943805166
#>     Attrib V19    -0.41907005266786806
#>     Attrib V2    0.8710183026341294
#>     Attrib V20    -0.4221875492616354
#>     Attrib V21    -0.3401948098453805
#>     Attrib V22    0.11210698877023588
#>     Attrib V23    0.8515866288963959
#>     Attrib V24    0.3497837908906166
#>     Attrib V25    0.27508229390934025
#>     Attrib V26    0.8360972093079656
#>     Attrib V27    1.0122792076859166
#>     Attrib V28    1.584617807480114
#>     Attrib V29    1.1275531587752485
#>     Attrib V3    -0.12907028827836184
#>     Attrib V30    0.32189008935656416
#>     Attrib V31    -0.5012667903417628
#>     Attrib V32    -0.09131078632531275
#>     Attrib V33    -0.25774604454899763
#>     Attrib V34    -0.14028765454307038
#>     Attrib V35    0.846908267305403
#>     Attrib V36    -0.7459484829866347
#>     Attrib V37    -0.30503466124034956
#>     Attrib V38    -0.6646971327058494
#>     Attrib V39    0.3496106498479652
#>     Attrib V4    0.1624892289961664
#>     Attrib V40    0.4316090388422471
#>     Attrib V41    1.0219914383108173
#>     Attrib V42    -0.3418291119133925
#>     Attrib V43    -0.08415555596887761
#>     Attrib V44    0.29506734737427465
#>     Attrib V45    0.9161555747304803
#>     Attrib V46    0.5987531831096219
#>     Attrib V47    0.3331195935855753
#>     Attrib V48    0.5331619358060397
#>     Attrib V49    0.7690003626161902
#>     Attrib V5    0.8231933811658089
#>     Attrib V50    -0.38340912761236356
#>     Attrib V51    0.7923761553989452
#>     Attrib V52    0.4310222986703239
#>     Attrib V53    0.39455511432924273
#>     Attrib V54    -0.7239656120739194
#>     Attrib V55    -0.1680124341388574
#>     Attrib V56    -0.31008344105020685
#>     Attrib V57    -0.21221891101567666
#>     Attrib V58    0.09472031806049111
#>     Attrib V59    -0.19599916145299692
#>     Attrib V6    0.3403958161643476
#>     Attrib V60    0.4753842317817576
#>     Attrib V7    -0.31831304994234055
#>     Attrib V8    -0.6531822863934574
#>     Attrib V9    1.5899932493912075
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.07563406516532134
#>     Attrib V1    0.207424766521737
#>     Attrib V10    0.2237296929947035
#>     Attrib V11    0.20069270925994814
#>     Attrib V12    0.1717866814129904
#>     Attrib V13    0.004392193708312736
#>     Attrib V14    -0.1319573651455586
#>     Attrib V15    -0.045862153622542506
#>     Attrib V16    -0.012891251760000234
#>     Attrib V17    -0.04117261804578179
#>     Attrib V18    -0.04011605181339068
#>     Attrib V19    0.002289606155761432
#>     Attrib V2    0.11277218057770828
#>     Attrib V20    0.0716432994198039
#>     Attrib V21    0.1311941115178924
#>     Attrib V22    0.18489850679072362
#>     Attrib V23    0.18021713723289184
#>     Attrib V24    0.018361682063604962
#>     Attrib V25    -0.04454475261140715
#>     Attrib V26    -0.16072585874319043
#>     Attrib V27    -0.11579952627238617
#>     Attrib V28    0.21699872994897992
#>     Attrib V29    0.1423786873191796
#>     Attrib V3    -0.19561965434259435
#>     Attrib V30    0.06586043948003321
#>     Attrib V31    -0.5203844873077877
#>     Attrib V32    -0.020699237658446362
#>     Attrib V33    0.08777317153498022
#>     Attrib V34    -0.1776125605651963
#>     Attrib V35    -0.04857473202868164
#>     Attrib V36    -0.22051945910771353
#>     Attrib V37    -0.1002514060276932
#>     Attrib V38    0.09271895571759244
#>     Attrib V39    0.1217440022322468
#>     Attrib V4    0.19232215768609184
#>     Attrib V40    -0.029198138000234075
#>     Attrib V41    0.22548969390963414
#>     Attrib V42    -0.0301862365025173
#>     Attrib V43    0.01492559936763938
#>     Attrib V44    0.18446228566824782
#>     Attrib V45    0.12426829598912494
#>     Attrib V46    -0.06600997283733079
#>     Attrib V47    -0.0751296884797814
#>     Attrib V48    0.1496501566192354
#>     Attrib V49    0.14361601015356548
#>     Attrib V5    0.13138875944719852
#>     Attrib V50    -0.15104980572196647
#>     Attrib V51    0.1794676186878408
#>     Attrib V52    0.018881007052062606
#>     Attrib V53    0.08318076979109318
#>     Attrib V54    0.15415304830861146
#>     Attrib V55    -0.1745873120814953
#>     Attrib V56    0.024602418518953333
#>     Attrib V57    0.11641910527827376
#>     Attrib V58    -0.006921953690420189
#>     Attrib V59    0.32786479324292733
#>     Attrib V6    -0.12246827076464148
#>     Attrib V60    0.32509810838593206
#>     Attrib V7    -0.12926440174949777
#>     Attrib V8    -0.19610899905328108
#>     Attrib V9    0.27088443799805917
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.412795596376014
#>     Attrib V1    0.4671489267811569
#>     Attrib V10    1.0578493815019077
#>     Attrib V11    1.102410415403584
#>     Attrib V12    1.1545408267861095
#>     Attrib V13    0.3783897722996467
#>     Attrib V14    -0.668488862002188
#>     Attrib V15    -0.5139017760201232
#>     Attrib V16    -0.8871473032654178
#>     Attrib V17    -0.8017522396124103
#>     Attrib V18    -0.4470672181703007
#>     Attrib V19    -0.6311349001338031
#>     Attrib V2    0.8568121786772959
#>     Attrib V20    -0.5700016160513531
#>     Attrib V21    -0.4575134145153703
#>     Attrib V22    -0.038787314013018416
#>     Attrib V23    0.6061675179732944
#>     Attrib V24    0.35520384537319943
#>     Attrib V25    0.1699253358685649
#>     Attrib V26    0.46588095407107255
#>     Attrib V27    0.7285386964505142
#>     Attrib V28    1.2678353243133473
#>     Attrib V29    0.8735551596428517
#>     Attrib V3    -0.09510680667085124
#>     Attrib V30    0.3445532537398504
#>     Attrib V31    -0.14643043214158458
#>     Attrib V32    0.20961076074379723
#>     Attrib V33    -0.0014873399614151604
#>     Attrib V34    0.12003584150949326
#>     Attrib V35    0.7592638447589545
#>     Attrib V36    -0.7685641944160829
#>     Attrib V37    -0.40797804985254416
#>     Attrib V38    -0.8520281659060596
#>     Attrib V39    -0.008997097574442505
#>     Attrib V4    0.08796005743134694
#>     Attrib V40    0.1660882298787722
#>     Attrib V41    0.8577423573058517
#>     Attrib V42    -0.30996320891597334
#>     Attrib V43    -5.044744253337923E-4
#>     Attrib V44    0.10546491116295675
#>     Attrib V45    0.6606860212125588
#>     Attrib V46    0.45026527048134124
#>     Attrib V47    0.20708441505578556
#>     Attrib V48    0.3630666684274034
#>     Attrib V49    0.6384109953343745
#>     Attrib V5    0.6938535820913995
#>     Attrib V50    -0.36658151676885314
#>     Attrib V51    0.7084471176088006
#>     Attrib V52    0.4270346892484476
#>     Attrib V53    0.544908744902329
#>     Attrib V54    -0.43888197618942293
#>     Attrib V55    -0.018329412273188267
#>     Attrib V56    -0.19548970784469105
#>     Attrib V57    -0.19658442997418485
#>     Attrib V58    0.1813683466804827
#>     Attrib V59    -0.11988313826632276
#>     Attrib V6    0.2416239458004861
#>     Attrib V60    0.4499550398837092
#>     Attrib V7    -0.37068539758506786
#>     Attrib V8    -0.5766598061407454
#>     Attrib V9    1.3054003267244654
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.27103921419939925
#>     Attrib V1    -0.3701377641991507
#>     Attrib V10    -0.41017409341010613
#>     Attrib V11    -0.40231936734128215
#>     Attrib V12    -0.28918362851464663
#>     Attrib V13    0.18982147276113726
#>     Attrib V14    0.45780662642726266
#>     Attrib V15    0.09437212988744105
#>     Attrib V16    0.08017216489356764
#>     Attrib V17    -0.0152794638745483
#>     Attrib V18    0.08175878599936481
#>     Attrib V19    0.08931311551105099
#>     Attrib V2    -0.3817922897320803
#>     Attrib V20    -0.2695333321673864
#>     Attrib V21    -0.38322302483866205
#>     Attrib V22    -0.6624488141620526
#>     Attrib V23    -0.5691999992482685
#>     Attrib V24    -0.0337712731728623
#>     Attrib V25    0.20166157409309532
#>     Attrib V26    0.5401959012309898
#>     Attrib V27    0.2925743197767913
#>     Attrib V28    -0.5941412798298775
#>     Attrib V29    -0.47597613768263947
#>     Attrib V3    0.49471945146832746
#>     Attrib V30    -0.24754332454948458
#>     Attrib V31    1.2391587417036771
#>     Attrib V32    0.025420496438545055
#>     Attrib V33    -0.16021709420976793
#>     Attrib V34    0.4271099406960714
#>     Attrib V35    0.062018954468257
#>     Attrib V36    0.5564371659174792
#>     Attrib V37    0.05687553811851871
#>     Attrib V38    -0.19398719786339935
#>     Attrib V39    -0.31802119256722783
#>     Attrib V4    -0.20762157148766275
#>     Attrib V40    0.026986544095203988
#>     Attrib V41    -0.6555918949285247
#>     Attrib V42    -0.15571160536099615
#>     Attrib V43    1.3101269218988601E-5
#>     Attrib V44    -0.35262620667915284
#>     Attrib V45    -0.2852764967455417
#>     Attrib V46    0.13870950679478958
#>     Attrib V47    0.1927664115087531
#>     Attrib V48    -0.24207118858764648
#>     Attrib V49    -0.36079079186718377
#>     Attrib V5    -0.10983820339985532
#>     Attrib V50    0.48963606270629906
#>     Attrib V51    -0.483948213670601
#>     Attrib V52    -0.05931951574357963
#>     Attrib V53    0.142364181673095
#>     Attrib V54    -0.17935805528908838
#>     Attrib V55    0.42140778152744524
#>     Attrib V56    -0.1748593632098447
#>     Attrib V57    -0.10232243197231554
#>     Attrib V58    0.031529374352499036
#>     Attrib V59    -0.5376980133042397
#>     Attrib V6    0.45257427073140943
#>     Attrib V60    -0.41448690803880606
#>     Attrib V7    0.47977743114361776
#>     Attrib V8    0.51168861122648
#>     Attrib V9    -0.5895473422202372
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.05058528075921632
#>     Attrib V1    0.39709076972848245
#>     Attrib V10    0.23414163783947206
#>     Attrib V11    0.1937321141361461
#>     Attrib V12    0.1697144857327614
#>     Attrib V13    -0.1379761516569139
#>     Attrib V14    -0.06942354214245777
#>     Attrib V15    0.050667040551899765
#>     Attrib V16    0.134892288660377
#>     Attrib V17    0.1745700193376131
#>     Attrib V18    0.107067628606808
#>     Attrib V19    0.10813188714842778
#>     Attrib V2    0.0897573693076818
#>     Attrib V20    0.41283063479270393
#>     Attrib V21    0.4571292795645433
#>     Attrib V22    0.5049815476509215
#>     Attrib V23    0.3130843736398757
#>     Attrib V24    -0.05527885025623583
#>     Attrib V25    -0.09155748579933745
#>     Attrib V26    -0.47699368410210813
#>     Attrib V27    -0.38649235423021894
#>     Attrib V28    0.15909765538422563
#>     Attrib V29    0.05016395759244427
#>     Attrib V3    -0.3721497122297589
#>     Attrib V30    0.07434210866943576
#>     Attrib V31    -1.0954573180795153
#>     Attrib V32    -0.17175139931038555
#>     Attrib V33    0.11102662170141375
#>     Attrib V34    -0.43022330306849715
#>     Attrib V35    -0.3239204967751626
#>     Attrib V36    -0.38376142666654944
#>     Attrib V37    -0.17906491832337726
#>     Attrib V38    0.34270478485040723
#>     Attrib V39    0.2831124121303691
#>     Attrib V4    0.2853292401151317
#>     Attrib V40    -0.040792350794440345
#>     Attrib V41    0.29237512393644993
#>     Attrib V42    0.20156407287980388
#>     Attrib V43    0.05805045074528236
#>     Attrib V44    0.28441160216246175
#>     Attrib V45    0.1178286478263964
#>     Attrib V46    -0.27031330335050724
#>     Attrib V47    -0.21567506099032402
#>     Attrib V48    0.091317015743108
#>     Attrib V49    0.09815112546297192
#>     Attrib V5    0.14948802857470156
#>     Attrib V50    -0.17786972366435042
#>     Attrib V51    0.32645397581735675
#>     Attrib V52    -0.06804567525323123
#>     Attrib V53    -0.0421378150444851
#>     Attrib V54    0.44824762396877377
#>     Attrib V55    -0.27998770082141733
#>     Attrib V56    0.23498243804099694
#>     Attrib V57    0.22547079171535103
#>     Attrib V58    0.07710964621867715
#>     Attrib V59    0.6182684814329209
#>     Attrib V6    -0.18168606553046254
#>     Attrib V60    0.474067405201986
#>     Attrib V7    -0.11575990724275469
#>     Attrib V8    -0.05311064899546599
#>     Attrib V9    0.3239276881147699
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.09975776428308675
#>     Attrib V1    0.5317008529555789
#>     Attrib V10    0.17863805083259557
#>     Attrib V11    0.15775746799775459
#>     Attrib V12    0.011992379230418376
#>     Attrib V13    -0.15932771377556204
#>     Attrib V14    0.051645000090707514
#>     Attrib V15    0.18329237252483999
#>     Attrib V16    0.33283925418604904
#>     Attrib V17    0.216450308678023
#>     Attrib V18    0.059285639922340684
#>     Attrib V19    0.2234571439941805
#>     Attrib V2    0.11627070314357404
#>     Attrib V20    0.472848377070533
#>     Attrib V21    0.6180894032500373
#>     Attrib V22    0.6812535403528813
#>     Attrib V23    0.3291770080316051
#>     Attrib V24    -0.12085660161335433
#>     Attrib V25    -0.2609973154613634
#>     Attrib V26    -0.7472509939009538
#>     Attrib V27    -0.6288491117726834
#>     Attrib V28    -0.03999989020293235
#>     Attrib V29    -0.05026232949931218
#>     Attrib V3    -0.3973610315470408
#>     Attrib V30    0.01309328938699319
#>     Attrib V31    -1.3578371539421623
#>     Attrib V32    -0.15872242314088159
#>     Attrib V33    0.2604608408891019
#>     Attrib V34    -0.5886228747551017
#>     Attrib V35    -0.6574899640629418
#>     Attrib V36    -0.5356351634959534
#>     Attrib V37    -0.2572252016743308
#>     Attrib V38    0.4488580577754699
#>     Attrib V39    0.3325075803041936
#>     Attrib V4    0.4639934334675715
#>     Attrib V40    -0.011086546302124972
#>     Attrib V41    0.3952403011511753
#>     Attrib V42    0.3404774071105897
#>     Attrib V43    0.11132520968656671
#>     Attrib V44    0.20102183828706044
#>     Attrib V45    -0.03343081898059702
#>     Attrib V46    -0.3436809348706616
#>     Attrib V47    -0.3632498759795775
#>     Attrib V48    0.06752972140636838
#>     Attrib V49    0.04018117319531639
#>     Attrib V5    0.11363076248449006
#>     Attrib V50    -0.252230226422456
#>     Attrib V51    0.298977805657754
#>     Attrib V52    -0.00552791795796993
#>     Attrib V53    -0.03540793984504522
#>     Attrib V54    0.6297990868905144
#>     Attrib V55    -0.3993744286925915
#>     Attrib V56    0.38671224801692117
#>     Attrib V57    0.3908735276088845
#>     Attrib V58    0.1823118564569974
#>     Attrib V59    0.9981513473507232
#>     Attrib V6    -0.25095094521177463
#>     Attrib V60    0.6667308773093873
#>     Attrib V7    0.05650625527686257
#>     Attrib V8    0.07748016425099925
#>     Attrib V9    0.286555638916915
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.21666042897804383
#>     Attrib V1    0.02005945930872837
#>     Attrib V10    0.003984903153641878
#>     Attrib V11    0.01054094685142422
#>     Attrib V12    0.012672019946768549
#>     Attrib V13    0.08084895668112939
#>     Attrib V14    0.06733598245936004
#>     Attrib V15    0.020102083303323543
#>     Attrib V16    -0.00961254543493446
#>     Attrib V17    0.024981164193199554
#>     Attrib V18    0.003626811810272927
#>     Attrib V19    -0.032273246193018953
#>     Attrib V2    0.025352399995779876
#>     Attrib V20    -0.018256879276937695
#>     Attrib V21    -0.03131277051693045
#>     Attrib V22    -0.06784094786007776
#>     Attrib V23    0.012740993719065478
#>     Attrib V24    -0.003707110462385937
#>     Attrib V25    0.028999717476582604
#>     Attrib V26    -0.04949399510022021
#>     Attrib V27    -0.010408459300400802
#>     Attrib V28    -0.0992766568577724
#>     Attrib V29    -0.041220494171609404
#>     Attrib V3    0.12090484541283336
#>     Attrib V30    0.0021012718690906567
#>     Attrib V31    -0.007469068998765994
#>     Attrib V32    0.03153246746755109
#>     Attrib V33    0.025480088462356547
#>     Attrib V34    0.0902933211121781
#>     Attrib V35    0.04252268814201343
#>     Attrib V36    0.053581897761179595
#>     Attrib V37    0.05158247330238173
#>     Attrib V38    0.026299614252607715
#>     Attrib V39    0.10449384487791419
#>     Attrib V4    0.07318939129233369
#>     Attrib V40    0.08906071495664535
#>     Attrib V41    0.056905157132106275
#>     Attrib V42    0.0759205085605539
#>     Attrib V43    0.0505774378435971
#>     Attrib V44    0.06854510258114539
#>     Attrib V45    0.01755998960686366
#>     Attrib V46    0.09160677656725175
#>     Attrib V47    0.09956987523116193
#>     Attrib V48    0.007104406344084029
#>     Attrib V49    0.041921800882778526
#>     Attrib V5    0.11854214407811793
#>     Attrib V50    0.03266128437418797
#>     Attrib V51    0.03784046584131674
#>     Attrib V52    0.03249009294495653
#>     Attrib V53    0.0654295995303161
#>     Attrib V54    -0.016920059987280075
#>     Attrib V55    0.03969091333358265
#>     Attrib V56    0.05121362309948575
#>     Attrib V57    0.048888361425707065
#>     Attrib V58    0.03183304323160137
#>     Attrib V59    0.10127534518774131
#>     Attrib V6    0.15188622938051338
#>     Attrib V60    0.1563323154524334
#>     Attrib V7    0.14175072635300318
#>     Attrib V8    0.060434709536309
#>     Attrib V9    0.024654882460406362
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.04843607533289481
#>     Attrib V1    0.6518253751912333
#>     Attrib V10    0.31387272288604334
#>     Attrib V11    0.2636460687519237
#>     Attrib V12    0.1536367373569546
#>     Attrib V13    -0.1656932129565273
#>     Attrib V14    -0.07239362629312401
#>     Attrib V15    0.16390735731950137
#>     Attrib V16    0.1977628327470285
#>     Attrib V17    0.1823273081693808
#>     Attrib V18    0.05670736030864344
#>     Attrib V19    0.10077001620811163
#>     Attrib V2    0.1228561204628784
#>     Attrib V20    0.4282370705834005
#>     Attrib V21    0.581899134762038
#>     Attrib V22    0.6692247874359742
#>     Attrib V23    0.3886031943431698
#>     Attrib V24    -0.09484891572418994
#>     Attrib V25    -0.15905082919484767
#>     Attrib V26    -0.5922492257671083
#>     Attrib V27    -0.5810424182339404
#>     Attrib V28    0.048423162307322784
#>     Attrib V29    -0.008279162690983888
#>     Attrib V3    -0.4655232998448484
#>     Attrib V30    0.13401704130261274
#>     Attrib V31    -1.2839323604658766
#>     Attrib V32    -0.11089488528398218
#>     Attrib V33    0.24980569604788258
#>     Attrib V34    -0.6574570376378698
#>     Attrib V35    -0.6077601670310723
#>     Attrib V36    -0.6261476443186205
#>     Attrib V37    -0.2996373156967304
#>     Attrib V38    0.3338598525757321
#>     Attrib V39    0.35774727371251075
#>     Attrib V4    0.421939532003175
#>     Attrib V40    -0.042587255931857575
#>     Attrib V41    0.4216041043230494
#>     Attrib V42    0.3244879946773546
#>     Attrib V43    0.06195318733420635
#>     Attrib V44    0.30622124792954125
#>     Attrib V45    -0.05908392161670805
#>     Attrib V46    -0.3896329490362688
#>     Attrib V47    -0.38160189307566506
#>     Attrib V48    0.0793779349514674
#>     Attrib V49    0.13007617021949944
#>     Attrib V5    0.09050110599316351
#>     Attrib V50    -0.2657512953025362
#>     Attrib V51    0.28015095771182275
#>     Attrib V52    -0.06447587349784398
#>     Attrib V53    -0.10407282585985421
#>     Attrib V54    0.6186397980568452
#>     Attrib V55    -0.3753191196438956
#>     Attrib V56    0.3714057314147794
#>     Attrib V57    0.29424982996726
#>     Attrib V58    0.1555206832502913
#>     Attrib V59    0.932604270664011
#>     Attrib V6    -0.26215236567526545
#>     Attrib V60    0.6801657376168102
#>     Attrib V7    -0.01843834228794816
#>     Attrib V8    -0.025644100818875772
#>     Attrib V9    0.3651081178675641
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.6514731149914367
#>     Attrib V1    -0.5182135673714034
#>     Attrib V10    -0.8436567000348557
#>     Attrib V11    -0.8206650513629217
#>     Attrib V12    -0.5972908717673967
#>     Attrib V13    0.11666320175812644
#>     Attrib V14    0.7921595422168811
#>     Attrib V15    0.341734585811516
#>     Attrib V16    0.33346757876336564
#>     Attrib V17    0.24957689268414107
#>     Attrib V18    0.22828409133383915
#>     Attrib V19    0.4452271169657925
#>     Attrib V2    -0.7471653505354816
#>     Attrib V20    0.004591640050661071
#>     Attrib V21    -0.16192686795430808
#>     Attrib V22    -0.6217584110092211
#>     Attrib V23    -0.8613929908095997
#>     Attrib V24    -0.04269319760088789
#>     Attrib V25    0.3959432885000526
#>     Attrib V26    0.8772500005616668
#>     Attrib V27    0.41096555527726275
#>     Attrib V28    -0.8374247141383745
#>     Attrib V29    -0.7765553993216344
#>     Attrib V3    0.7784930792057774
#>     Attrib V30    -0.5364884822421989
#>     Attrib V31    1.3871424184901746
#>     Attrib V32    -0.07817357264321775
#>     Attrib V33    -0.27994626484515267
#>     Attrib V34    0.4692411315575889
#>     Attrib V35    -0.13166420758985992
#>     Attrib V36    0.9718384268795158
#>     Attrib V37    0.19857716351627283
#>     Attrib V38    0.15558325665735517
#>     Attrib V39    -0.13797686801475842
#>     Attrib V4    -0.12305676687725545
#>     Attrib V40    0.0231993788993157
#>     Attrib V41    -1.0933275136480556
#>     Attrib V42    -0.037543681200883375
#>     Attrib V43    0.12044535051485279
#>     Attrib V44    -0.4295371497982523
#>     Attrib V45    -0.5151808829659447
#>     Attrib V46    0.2648163540383332
#>     Attrib V47    0.38167638590623626
#>     Attrib V48    -0.26567572842046655
#>     Attrib V49    -0.43116215982886136
#>     Attrib V5    -0.3435854893966607
#>     Attrib V50    0.8286568787736037
#>     Attrib V51    -0.6580336097987793
#>     Attrib V52    -0.226472775010463
#>     Attrib V53    0.07841129372382334
#>     Attrib V54    -0.03443345828525814
#>     Attrib V55    0.6123066076824991
#>     Attrib V56    0.03853867809504158
#>     Attrib V57    0.08916362400338788
#>     Attrib V58    0.046044923194463426
#>     Attrib V59    -0.3050889256211068
#>     Attrib V6    0.351704803238827
#>     Attrib V60    -0.33965681622093585
#>     Attrib V7    0.6121056304529338
#>     Attrib V8    0.694958606224083
#>     Attrib V9    -1.196534272611703
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.18523295829880126
#>     Attrib V1    -0.0549084796342922
#>     Attrib V10    -0.0527112228199615
#>     Attrib V11    -0.08868089388551205
#>     Attrib V12    -0.07949432442734992
#>     Attrib V13    0.03565351931912743
#>     Attrib V14    0.04511784608379105
#>     Attrib V15    0.04421978002432524
#>     Attrib V16    0.1238322578391424
#>     Attrib V17    0.11824452977778312
#>     Attrib V18    0.10274016545835153
#>     Attrib V19    0.052367417186518044
#>     Attrib V2    -0.05202045505205477
#>     Attrib V20    -0.07783749619048758
#>     Attrib V21    -0.07110193424795207
#>     Attrib V22    -0.04908831221664333
#>     Attrib V23    -0.05820025657918989
#>     Attrib V24    0.0472698464402359
#>     Attrib V25    0.03422578383554661
#>     Attrib V26    -0.010164458310310496
#>     Attrib V27    -0.08985763352206444
#>     Attrib V28    -0.20850715382813872
#>     Attrib V29    -0.15954336977939504
#>     Attrib V3    0.16716346075735325
#>     Attrib V30    -0.07624188896840464
#>     Attrib V31    0.1837524041130558
#>     Attrib V32    0.01708963279337705
#>     Attrib V33    -0.012024054642012439
#>     Attrib V34    0.15426838911592136
#>     Attrib V35    0.07207768328183248
#>     Attrib V36    0.1764023880891857
#>     Attrib V37    0.09950029624667256
#>     Attrib V38    0.007101416084884638
#>     Attrib V39    -0.008175162605172129
#>     Attrib V4    0.011609774867231182
#>     Attrib V40    0.05260894812296418
#>     Attrib V41    -0.01570616916832557
#>     Attrib V42    0.0908219098038743
#>     Attrib V43    0.0584432354687655
#>     Attrib V44    -0.0399319570182603
#>     Attrib V45    -0.00422950346330005
#>     Attrib V46    0.1137386646695465
#>     Attrib V47    0.0909592745673047
#>     Attrib V48    -0.07934969507924876
#>     Attrib V49    -0.10484812751753848
#>     Attrib V5    0.06799196142522326
#>     Attrib V50    0.14322860673875698
#>     Attrib V51    0.01549785550644281
#>     Attrib V52    0.06203633842722332
#>     Attrib V53    0.09020644651493508
#>     Attrib V54    -0.06270863468968348
#>     Attrib V55    0.10761552314965354
#>     Attrib V56    0.038490491659448574
#>     Attrib V57    0.027785776989468335
#>     Attrib V58    0.07419383112392013
#>     Attrib V59    -0.07823618469803778
#>     Attrib V6    0.2117299612484859
#>     Attrib V60    0.02191262271552587
#>     Attrib V7    0.17678977287424924
#>     Attrib V8    0.14484652021636207
#>     Attrib V9    -0.04190974902453823
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.06609380663513842
#>     Attrib V1    0.4626009511153242
#>     Attrib V10    0.261779487111595
#>     Attrib V11    0.19196378214518472
#>     Attrib V12    0.09045160021852487
#>     Attrib V13    -0.13622965792394803
#>     Attrib V14    -0.04337680998090087
#>     Attrib V15    0.16771685623081622
#>     Attrib V16    0.18186792738684915
#>     Attrib V17    0.14398212161650148
#>     Attrib V18    0.06486571013289559
#>     Attrib V19    0.13950703489753452
#>     Attrib V2    0.15876470363221787
#>     Attrib V20    0.34701163326459333
#>     Attrib V21    0.45412280975305086
#>     Attrib V22    0.568628907136408
#>     Attrib V23    0.2725493783202687
#>     Attrib V24    -0.020859857314011795
#>     Attrib V25    -0.14593928541762724
#>     Attrib V26    -0.489108020702157
#>     Attrib V27    -0.439937434901584
#>     Attrib V28    0.02339051716630061
#>     Attrib V29    -0.051275627572117594
#>     Attrib V3    -0.32526428092717236
#>     Attrib V30    0.06610005150252293
#>     Attrib V31    -0.9616664341630149
#>     Attrib V32    -0.10928796407041663
#>     Attrib V33    0.19315070672941329
#>     Attrib V34    -0.5033153289011079
#>     Attrib V35    -0.4174385096669946
#>     Attrib V36    -0.49102432384868405
#>     Attrib V37    -0.2569837838699517
#>     Attrib V38    0.28615817895498286
#>     Attrib V39    0.27141814120248486
#>     Attrib V4    0.3143799113845794
#>     Attrib V40    -0.09064574975372307
#>     Attrib V41    0.3367760182229523
#>     Attrib V42    0.21628951590354534
#>     Attrib V43    0.1070647086218935
#>     Attrib V44    0.23733629058578956
#>     Attrib V45    0.033056115871233666
#>     Attrib V46    -0.3162681590721
#>     Attrib V47    -0.30331747543706344
#>     Attrib V48    0.07400491483160787
#>     Attrib V49    0.0463520399644003
#>     Attrib V5    0.0986062884777629
#>     Attrib V50    -0.176276053602599
#>     Attrib V51    0.2754160926790323
#>     Attrib V52    -0.042246849140628706
#>     Attrib V53    -0.025202063376231553
#>     Attrib V54    0.41972094072653154
#>     Attrib V55    -0.22753313535194258
#>     Attrib V56    0.27609468074612437
#>     Attrib V57    0.28595657214209697
#>     Attrib V58    0.0657843978869767
#>     Attrib V59    0.6685111771357745
#>     Attrib V6    -0.1760705793496679
#>     Attrib V60    0.5425620666988572
#>     Attrib V7    -0.09267359537488107
#>     Attrib V8    -0.0038391762620262307
#>     Attrib V9    0.2864713768075573
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.3088567140620988
#>     Attrib V1    -0.2101590621008632
#>     Attrib V10    -0.26372207074881826
#>     Attrib V11    -0.2762992801305037
#>     Attrib V12    -0.26471668956751016
#>     Attrib V13    0.04671813750777853
#>     Attrib V14    0.3123154494677932
#>     Attrib V15    0.08706971458833909
#>     Attrib V16    0.12141000721860082
#>     Attrib V17    0.07266296900889359
#>     Attrib V18    0.1608261301790262
#>     Attrib V19    0.090006199034174
#>     Attrib V2    -0.2857485107023503
#>     Attrib V20    -0.01263505831951293
#>     Attrib V21    -0.01929592407243563
#>     Attrib V22    -0.17099752686385006
#>     Attrib V23    -0.23818473754495098
#>     Attrib V24    -0.005726165428506769
#>     Attrib V25    0.22896654649391818
#>     Attrib V26    0.3509529901435526
#>     Attrib V27    0.1431486154951475
#>     Attrib V28    -0.4022720388445711
#>     Attrib V29    -0.3418546712417577
#>     Attrib V3    0.31974544198660854
#>     Attrib V30    -0.25892964889063896
#>     Attrib V31    0.5075709571285423
#>     Attrib V32    -0.06551227957514015
#>     Attrib V33    -0.12166834956492953
#>     Attrib V34    0.18083429346640886
#>     Attrib V35    -0.09330697644042432
#>     Attrib V36    0.43895953499100626
#>     Attrib V37    -0.009239059151950134
#>     Attrib V38    -0.046580635170028604
#>     Attrib V39    -0.07684893640111394
#>     Attrib V4    -0.0914235956008246
#>     Attrib V40    -0.05412904593365805
#>     Attrib V41    -0.5019193776429062
#>     Attrib V42    -0.038686814968342274
#>     Attrib V43    0.03667039277217019
#>     Attrib V44    -0.14028993652145202
#>     Attrib V45    -0.2726379187731361
#>     Attrib V46    0.03630705536452495
#>     Attrib V47    0.1579428251584621
#>     Attrib V48    -0.15637388508710096
#>     Attrib V49    -0.21227411277226088
#>     Attrib V5    -0.08314815780970822
#>     Attrib V50    0.2548907745307571
#>     Attrib V51    -0.2338465946645328
#>     Attrib V52    -0.07544484695501409
#>     Attrib V53    -0.036899998646652374
#>     Attrib V54    -0.12665231606709873
#>     Attrib V55    0.23173721690475238
#>     Attrib V56    -0.014566474332901142
#>     Attrib V57    -0.0433558950380434
#>     Attrib V58    -0.023962926979043116
#>     Attrib V59    -0.16456918149552155
#>     Attrib V6    0.18527370052175945
#>     Attrib V60    -0.11418625968174742
#>     Attrib V7    0.3425318978505422
#>     Attrib V8    0.36801673917406247
#>     Attrib V9    -0.42178054202707144
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.07420030412208393
#>     Attrib V1    0.47771668538172213
#>     Attrib V10    0.32202036295823755
#>     Attrib V11    0.31438902073018477
#>     Attrib V12    0.37975624184864076
#>     Attrib V13    -0.039163687843329166
#>     Attrib V14    -0.17295084915325745
#>     Attrib V15    0.04582429049680189
#>     Attrib V16    -0.01949279053889635
#>     Attrib V17    -1.4722316943427443E-4
#>     Attrib V18    -0.023995353818413133
#>     Attrib V19    0.024728607435328887
#>     Attrib V2    0.2205475270966977
#>     Attrib V20    0.17203195627059226
#>     Attrib V21    0.3185779498527714
#>     Attrib V22    0.6184813382947285
#>     Attrib V23    0.5219456738428625
#>     Attrib V24    0.1824634832990047
#>     Attrib V25    0.07519370222849074
#>     Attrib V26    -0.321859082398548
#>     Attrib V27    -0.305621805839936
#>     Attrib V28    0.24545052085869132
#>     Attrib V29    0.18689486495762034
#>     Attrib V3    -0.4257925742981633
#>     Attrib V30    0.2748256038848459
#>     Attrib V31    -0.9009967746420627
#>     Attrib V32    0.04955360443366993
#>     Attrib V33    0.2691168266752087
#>     Attrib V34    -0.5325812817714103
#>     Attrib V35    -0.4579604996061993
#>     Attrib V36    -0.818550907483703
#>     Attrib V37    -0.578540630674003
#>     Attrib V38    -0.11791401347988521
#>     Attrib V39    0.025822160980837255
#>     Attrib V4    0.3741144333256539
#>     Attrib V40    -0.050652518118250424
#>     Attrib V41    0.5536401393368783
#>     Attrib V42    0.3768338878379332
#>     Attrib V43    0.0813194121425933
#>     Attrib V44    0.13926388201966838
#>     Attrib V45    0.02674881711091085
#>     Attrib V46    -0.31808415678433566
#>     Attrib V47    -0.3788587944849074
#>     Attrib V48    -0.06193474184639149
#>     Attrib V49    0.10856140734981211
#>     Attrib V5    0.22028981142206872
#>     Attrib V50    -0.40010464441282084
#>     Attrib V51    0.33765784476634386
#>     Attrib V52    0.0657939444082996
#>     Attrib V53    0.11300523918097584
#>     Attrib V54    0.41552536275687496
#>     Attrib V55    -0.2989614051841187
#>     Attrib V56    0.18620343762715533
#>     Attrib V57    0.04917882543352919
#>     Attrib V58    0.13829587220149742
#>     Attrib V59    0.7107187384859477
#>     Attrib V6    -0.1872166255860438
#>     Attrib V60    0.5915872869465167
#>     Attrib V7    -0.08636896253192661
#>     Attrib V8    -0.13188109846371854
#>     Attrib V9    0.4507636304478888
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    -0.10284821016061785
#>     Attrib V1    0.6195741706125998
#>     Attrib V10    0.2399438555341918
#>     Attrib V11    0.15673935782726187
#>     Attrib V12    0.15520091848939246
#>     Attrib V13    -0.15349954360108908
#>     Attrib V14    0.024150540249689434
#>     Attrib V15    0.16189710344562794
#>     Attrib V16    0.2370304442258634
#>     Attrib V17    0.19263723700766172
#>     Attrib V18    0.0920224874357325
#>     Attrib V19    0.16970850319188285
#>     Attrib V2    0.0862343427653894
#>     Attrib V20    0.4652109012543315
#>     Attrib V21    0.6301540271902025
#>     Attrib V22    0.6818489234067922
#>     Attrib V23    0.3713021707831237
#>     Attrib V24    -0.079854158045713
#>     Attrib V25    -0.20310131145812962
#>     Attrib V26    -0.6459584934607934
#>     Attrib V27    -0.5414872457824683
#>     Attrib V28    0.040597359917063695
#>     Attrib V29    0.040597743204624885
#>     Attrib V3    -0.4546709219918442
#>     Attrib V30    0.10109167639099137
#>     Attrib V31    -1.331524204044616
#>     Attrib V32    -0.17092543204666097
#>     Attrib V33    0.21155064929637524
#>     Attrib V34    -0.676103450044287
#>     Attrib V35    -0.6567839793284662
#>     Attrib V36    -0.5075424529508401
#>     Attrib V37    -0.22834284080175324
#>     Attrib V38    0.43645126272895707
#>     Attrib V39    0.3393284994044906
#>     Attrib V4    0.4315080015270048
#>     Attrib V40    -0.03917559637960419
#>     Attrib V41    0.43905397654917055
#>     Attrib V42    0.3131192045774067
#>     Attrib V43    0.10628544641821909
#>     Attrib V44    0.30110994102945643
#>     Attrib V45    -0.029961670108020897
#>     Attrib V46    -0.43145660958423987
#>     Attrib V47    -0.41543749253357276
#>     Attrib V48    0.04576463079927107
#>     Attrib V49    0.06558182682342113
#>     Attrib V5    0.15699790191395038
#>     Attrib V50    -0.27035408983058046
#>     Attrib V51    0.36072915725087273
#>     Attrib V52    -0.011226349314509054
#>     Attrib V53    -0.08129660512562775
#>     Attrib V54    0.6188339648523155
#>     Attrib V55    -0.36794090670473606
#>     Attrib V56    0.3524824382118297
#>     Attrib V57    0.2885923183791293
#>     Attrib V58    0.1355858238906145
#>     Attrib V59    0.9738949247618504
#>     Attrib V6    -0.2263895765446033
#>     Attrib V60    0.6945703484410476
#>     Attrib V7    0.048036557576453705
#>     Attrib V8    -0.03085166500011765
#>     Attrib V9    0.31505434304863505
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.042985454590756644
#>     Attrib V1    -0.537404724946378
#>     Attrib V10    -0.40061309333844547
#>     Attrib V11    -0.37914727106551915
#>     Attrib V12    -0.18127077464368857
#>     Attrib V13    0.21086445388763614
#>     Attrib V14    0.17851698753716896
#>     Attrib V15    0.007099259319624051
#>     Attrib V16    -0.15990248305613056
#>     Attrib V17    -0.17845099022636401
#>     Attrib V18    -0.059533550201661116
#>     Attrib V19    -0.08868419192681062
#>     Attrib V2    -0.20382662196152845
#>     Attrib V20    -0.5447591247675176
#>     Attrib V21    -0.672362870823537
#>     Attrib V22    -0.9276567973209617
#>     Attrib V23    -0.6104434178372862
#>     Attrib V24    0.1272936417598215
#>     Attrib V25    0.24159007846204325
#>     Attrib V26    0.6810724944358996
#>     Attrib V27    0.4180007519809418
#>     Attrib V28    -0.5626689607514427
#>     Attrib V29    -0.3646194054761669
#>     Attrib V3    0.6039249804011755
#>     Attrib V30    -0.2234707872871706
#>     Attrib V31    1.7668834872897268
#>     Attrib V32    0.2680645089469599
#>     Attrib V33    -0.22157511055636153
#>     Attrib V34    0.6705385690696734
#>     Attrib V35    0.3985878131105567
#>     Attrib V36    0.43613773760137503
#>     Attrib V37    0.057100190870323926
#>     Attrib V38    -0.709870100491972
#>     Attrib V39    -0.5818843428226463
#>     Attrib V4    -0.36367990105326115
#>     Attrib V40    0.06374043607425459
#>     Attrib V41    -0.5328930734253658
#>     Attrib V42    -0.321892052418157
#>     Attrib V43    -0.016639905185033315
#>     Attrib V44    -0.483058672714124
#>     Attrib V45    -0.2728565461373411
#>     Attrib V46    0.2951654288642023
#>     Attrib V47    0.2721056221845299
#>     Attrib V48    -0.20191409338513958
#>     Attrib V49    -0.3414580644096453
#>     Attrib V5    -0.015282094620463607
#>     Attrib V50    0.3835518875211696
#>     Attrib V51    -0.46873790180988456
#>     Attrib V52    0.028998422929451446
#>     Attrib V53    0.2725049200877761
#>     Attrib V54    -0.4281901327982102
#>     Attrib V55    0.49195995781197527
#>     Attrib V56    -0.3238741678712978
#>     Attrib V57    -0.2408438223600538
#>     Attrib V58    0.016108273492426405
#>     Attrib V59    -0.8486094562161323
#>     Attrib V6    0.475008564810901
#>     Attrib V60    -0.5167664569271325
#>     Attrib V7    0.32508195592339595
#>     Attrib V8    0.24627624119665592
#>     Attrib V9    -0.42062280245664535
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.14442381148402053
#>     Attrib V1    0.48946175590091145
#>     Attrib V10    0.14786942007839152
#>     Attrib V11    0.0701624426849779
#>     Attrib V12    0.03869301323830001
#>     Attrib V13    -0.12735476341839458
#>     Attrib V14    0.06909173604659165
#>     Attrib V15    0.1531678973898133
#>     Attrib V16    0.31764569373357066
#>     Attrib V17    0.20762225286875818
#>     Attrib V18    0.08363312829916082
#>     Attrib V19    0.14344097705199843
#>     Attrib V2    0.09611716719338466
#>     Attrib V20    0.4139691459744981
#>     Attrib V21    0.48065418041368885
#>     Attrib V22    0.4578905917074127
#>     Attrib V23    0.18026429210381323
#>     Attrib V24    -0.02879157733520065
#>     Attrib V25    -0.1839777768091018
#>     Attrib V26    -0.5956767074155485
#>     Attrib V27    -0.5939536375355736
#>     Attrib V28    -0.21341467317071625
#>     Attrib V29    -0.17091230433563753
#>     Attrib V3    -0.26355077409881306
#>     Attrib V30    -0.09784231586740932
#>     Attrib V31    -0.9450798189249855
#>     Attrib V32    -0.09831036231823798
#>     Attrib V33    0.12615930800225336
#>     Attrib V34    -0.4376804031848987
#>     Attrib V35    -0.46762476504751893
#>     Attrib V36    -0.39101459523639814
#>     Attrib V37    -0.15196756949928278
#>     Attrib V38    0.28937130646477804
#>     Attrib V39    0.23231396780143745
#>     Attrib V4    0.33108453484949946
#>     Attrib V40    -0.022279901178739625
#>     Attrib V41    0.22851144414342744
#>     Attrib V42    0.22341346915815502
#>     Attrib V43    0.1165850422141927
#>     Attrib V44    0.15616724140278673
#>     Attrib V45    -0.13447352525834044
#>     Attrib V46    -0.2726307229148308
#>     Attrib V47    -0.3000671505713232
#>     Attrib V48    0.0517818442898135
#>     Attrib V49    0.05000731450874749
#>     Attrib V5    0.09580918062471613
#>     Attrib V50    -0.13900776588128963
#>     Attrib V51    0.20979496805229828
#>     Attrib V52    -0.025502362751450056
#>     Attrib V53    -0.004506727682368793
#>     Attrib V54    0.5628907251924973
#>     Attrib V55    -0.1930441375971502
#>     Attrib V56    0.3463857979012524
#>     Attrib V57    0.3228525797339694
#>     Attrib V58    0.1967543264984437
#>     Attrib V59    0.761523295422272
#>     Attrib V6    -0.13395583971654684
#>     Attrib V60    0.5894690582887678
#>     Attrib V7    0.023272208419660358
#>     Attrib V8    -0.06164142748824667
#>     Attrib V9    0.18465874916721878
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.07500726597152804
#>     Attrib V1    0.19953777252109672
#>     Attrib V10    0.06588526367866261
#>     Attrib V11    0.1317102603942587
#>     Attrib V12    0.17302779421319525
#>     Attrib V13    0.041741318409072393
#>     Attrib V14    0.05322354061510497
#>     Attrib V15    0.012753753885019304
#>     Attrib V16    -0.03269961688968851
#>     Attrib V17    0.05784333044202885
#>     Attrib V18    0.04627614762839626
#>     Attrib V19    0.03003670528314627
#>     Attrib V2    0.030363720594221728
#>     Attrib V20    0.049084251188968836
#>     Attrib V21    0.046356214980771415
#>     Attrib V22    0.0854028898655412
#>     Attrib V23    0.07301183744319027
#>     Attrib V24    -0.06625693490902049
#>     Attrib V25    -0.01311254915174699
#>     Attrib V26    -0.07964666035697361
#>     Attrib V27    -0.13482834152899925
#>     Attrib V28    -0.01382826724017121
#>     Attrib V29    -0.05968035944429634
#>     Attrib V3    -0.033075773462762914
#>     Attrib V30    -0.08248987689815042
#>     Attrib V31    -0.349772335559591
#>     Attrib V32    -0.04416660079969067
#>     Attrib V33    0.019561445450596383
#>     Attrib V34    -0.1317072776173414
#>     Attrib V35    5.118697584378036E-4
#>     Attrib V36    -0.09240666004085295
#>     Attrib V37    0.00233639403581124
#>     Attrib V38    0.04914866284846807
#>     Attrib V39    0.09205921513064219
#>     Attrib V4    0.21029909653090773
#>     Attrib V40    -0.046658322904233045
#>     Attrib V41    0.10603123169604715
#>     Attrib V42    0.03405271736810527
#>     Attrib V43    0.09948248883278345
#>     Attrib V44    0.09989182034889642
#>     Attrib V45    0.05296711276083644
#>     Attrib V46    -0.061571071370380676
#>     Attrib V47    0.004516392523628121
#>     Attrib V48    0.0496818359086139
#>     Attrib V49    0.07299302555434854
#>     Attrib V5    0.12946669203345265
#>     Attrib V50    -0.04364505387283685
#>     Attrib V51    0.11094267972634934
#>     Attrib V52    0.1071436104977193
#>     Attrib V53    0.10362555603353277
#>     Attrib V54    0.16435566153106554
#>     Attrib V55    -0.0025223270658660205
#>     Attrib V56    0.1470441670201733
#>     Attrib V57    0.0823374001077279
#>     Attrib V58    0.05410173367716991
#>     Attrib V59    0.3155420058700391
#>     Attrib V6    0.00263368419378079
#>     Attrib V60    0.25727022070609346
#>     Attrib V7    -0.0496165500835266
#>     Attrib V8    -0.08802275230653812
#>     Attrib V9    0.11383897591087956
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.2560069989597132
#>     Attrib V1    -0.257305192576303
#>     Attrib V10    -0.33831377967214804
#>     Attrib V11    -0.32229812264904084
#>     Attrib V12    -0.2550794466116003
#>     Attrib V13    0.060820561488051234
#>     Attrib V14    0.3613181418509783
#>     Attrib V15    0.17352576055538277
#>     Attrib V16    0.10062500182229987
#>     Attrib V17    0.13438984524834047
#>     Attrib V18    0.08871916849301822
#>     Attrib V19    0.11738541007266899
#>     Attrib V2    -0.34364221641552667
#>     Attrib V20    -0.08060809673600629
#>     Attrib V21    -0.13118356804256728
#>     Attrib V22    -0.3225479875652166
#>     Attrib V23    -0.32809687414484884
#>     Attrib V24    -0.03584742573824037
#>     Attrib V25    0.20921969103325586
#>     Attrib V26    0.4302223993430019
#>     Attrib V27    0.1563095050220478
#>     Attrib V28    -0.4289391305383319
#>     Attrib V29    -0.3701918741028212
#>     Attrib V3    0.3275883496380573
#>     Attrib V30    -0.24134512198133876
#>     Attrib V31    0.6879203423124487
#>     Attrib V32    0.006150596550102602
#>     Attrib V33    -0.17862347390937527
#>     Attrib V34    0.21350300927676075
#>     Attrib V35    -0.058550737302534524
#>     Attrib V36    0.4675855977851459
#>     Attrib V37    -0.009476667081814263
#>     Attrib V38    -0.06737489204891305
#>     Attrib V39    -0.17621731148377395
#>     Attrib V4    -0.05160629432175812
#>     Attrib V40    -0.005395185846310807
#>     Attrib V41    -0.5163222217305027
#>     Attrib V42    -0.08901401784473237
#>     Attrib V43    0.07296932247791632
#>     Attrib V44    -0.2590460855594414
#>     Attrib V45    -0.30617026602488934
#>     Attrib V46    0.09921449279444704
#>     Attrib V47    0.19214543479351961
#>     Attrib V48    -0.17474288994454332
#>     Attrib V49    -0.3003277332001653
#>     Attrib V5    -0.141493104864685
#>     Attrib V50    0.3921384580803233
#>     Attrib V51    -0.30568425724344794
#>     Attrib V52    -0.01001690714194809
#>     Attrib V53    -0.045070512693162985
#>     Attrib V54    -0.11055417116140417
#>     Attrib V55    0.3002949240331641
#>     Attrib V56    -0.02729911486313638
#>     Attrib V57    0.047938806274933014
#>     Attrib V58    0.004521344427135097
#>     Attrib V59    -0.25479520828780916
#>     Attrib V6    0.28115698727252575
#>     Attrib V60    -0.22610203808719456
#>     Attrib V7    0.33511462460476765
#>     Attrib V8    0.3970331392258305
#>     Attrib V9    -0.4362442422384313
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.11247299885744966
#>     Attrib V1    0.11324584677370184
#>     Attrib V10    1.3669357332258243
#>     Attrib V11    1.718004651560126
#>     Attrib V12    1.5819794993173477
#>     Attrib V13    0.8172843624620231
#>     Attrib V14    0.21626855979490073
#>     Attrib V15    -0.6098188505298087
#>     Attrib V16    -0.9238757326502074
#>     Attrib V17    -0.5636903558638758
#>     Attrib V18    0.1773094817013963
#>     Attrib V19    -0.20318330929224074
#>     Attrib V2    0.05463149818063567
#>     Attrib V20    -0.2988791778110464
#>     Attrib V21    0.013889301280943232
#>     Attrib V22    0.40529060217971274
#>     Attrib V23    0.5980416622390645
#>     Attrib V24    0.08372917973951141
#>     Attrib V25    0.8144195267082489
#>     Attrib V26    1.40765703813648
#>     Attrib V27    1.5705347280434618
#>     Attrib V28    2.2029483237958543
#>     Attrib V29    1.742094690894159
#>     Attrib V3    -0.5599846366313229
#>     Attrib V30    0.8132391417102042
#>     Attrib V31    -0.4106945232573724
#>     Attrib V32    -0.11434485725341693
#>     Attrib V33    -0.5277173837040825
#>     Attrib V34    -1.01202931956452
#>     Attrib V35    -0.41872196347528784
#>     Attrib V36    -0.7672964211365494
#>     Attrib V37    -0.6503978457850013
#>     Attrib V38    -0.23957180433666983
#>     Attrib V39    1.1033251197068814
#>     Attrib V4    0.5558598044355189
#>     Attrib V40    0.43253569814637666
#>     Attrib V41    0.48559167333208836
#>     Attrib V42    -0.21128077202285572
#>     Attrib V43    -0.08453941855300545
#>     Attrib V44    0.575970382594236
#>     Attrib V45    0.7569894902490985
#>     Attrib V46    0.21106563986760338
#>     Attrib V47    0.3683416765300344
#>     Attrib V48    1.0385651416344233
#>     Attrib V49    1.147349362477396
#>     Attrib V5    0.383465457946213
#>     Attrib V50    -0.33584026935930533
#>     Attrib V51    0.7017377325337208
#>     Attrib V52    0.299960671379982
#>     Attrib V53    -0.287196984253426
#>     Attrib V54    -0.9939926547096969
#>     Attrib V55    -0.30367525285309366
#>     Attrib V56    -0.35847502699812384
#>     Attrib V57    -0.14601058370963427
#>     Attrib V58    -0.11638568026218472
#>     Attrib V59    -0.16182978701228729
#>     Attrib V6    0.15174197862463365
#>     Attrib V60    0.13198248819421396
#>     Attrib V7    0.027406686672600187
#>     Attrib V8    -0.12076341191797021
#>     Attrib V9    1.4331585953870458
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.21628975360074157
#>     Attrib V1    -0.15902771974942273
#>     Attrib V10    -0.21270135913675556
#>     Attrib V11    -0.23982838824739722
#>     Attrib V12    -0.1587289556871115
#>     Attrib V13    -0.008590690389145424
#>     Attrib V14    0.22322724571247154
#>     Attrib V15    0.05158202863197692
#>     Attrib V16    0.07474889211889515
#>     Attrib V17    0.10075638181263587
#>     Attrib V18    0.03483440944950897
#>     Attrib V19    0.1158945659367987
#>     Attrib V2    -0.17556406903790517
#>     Attrib V20    -0.03353873311026324
#>     Attrib V21    -0.024597272723282528
#>     Attrib V22    -0.09884711502489799
#>     Attrib V23    -0.131997269572347
#>     Attrib V24    0.01925756811834622
#>     Attrib V25    0.16115569336392283
#>     Attrib V26    0.17690479114385355
#>     Attrib V27    0.07933905845791717
#>     Attrib V28    -0.23224322989627763
#>     Attrib V29    -0.17958416620098405
#>     Attrib V3    0.12412764618697582
#>     Attrib V30    -0.12631576640652983
#>     Attrib V31    0.3054345606684913
#>     Attrib V32    -0.06707439854766178
#>     Attrib V33    -0.052738169647874596
#>     Attrib V34    0.07411582370489177
#>     Attrib V35    7.520967509027917E-4
#>     Attrib V36    0.29908394564076896
#>     Attrib V37    0.06068427758457997
#>     Attrib V38    -0.044248987026692714
#>     Attrib V39    -0.05429776303816476
#>     Attrib V4    -0.02747032431535516
#>     Attrib V40    -0.02306876640614621
#>     Attrib V41    -0.29928363282258474
#>     Attrib V42    0.0012331391974627838
#>     Attrib V43    0.038372652504046846
#>     Attrib V44    -0.10012563745284749
#>     Attrib V45    -0.1578252725075752
#>     Attrib V46    -0.004460702302900538
#>     Attrib V47    0.03974665740416531
#>     Attrib V48    -0.08187780935845594
#>     Attrib V49    -0.1916753388671314
#>     Attrib V5    -0.10570745530096527
#>     Attrib V50    0.16642742897365212
#>     Attrib V51    -0.21893226562736118
#>     Attrib V52    -0.0828706026894825
#>     Attrib V53    -0.06351376602853737
#>     Attrib V54    -0.11647623918405434
#>     Attrib V55    0.08937218609106742
#>     Attrib V56    -0.015405022313751402
#>     Attrib V57    0.013165849067578166
#>     Attrib V58    -0.048882688355724076
#>     Attrib V59    -0.11436783950763858
#>     Attrib V6    0.1859897485446653
#>     Attrib V60    -0.043645946917178303
#>     Attrib V7    0.1847344701099434
#>     Attrib V8    0.23569048148464664
#>     Attrib V9    -0.3013234420571094
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.5757153660213631
#>     Attrib V1    0.5757690631838427
#>     Attrib V10    0.9624882099560037
#>     Attrib V11    0.9170492202477931
#>     Attrib V12    0.9245807562400533
#>     Attrib V13    0.23499203612719888
#>     Attrib V14    -0.6351016333893673
#>     Attrib V15    -0.45080005889699415
#>     Attrib V16    -0.8480553637145849
#>     Attrib V17    -0.7962289798938943
#>     Attrib V18    -0.4362863738865669
#>     Attrib V19    -0.6530811592595289
#>     Attrib V2    0.7068016547008384
#>     Attrib V20    -0.5673030883211162
#>     Attrib V21    -0.40987546900655436
#>     Attrib V22    -0.0014586415073621105
#>     Attrib V23    0.38267772955241763
#>     Attrib V24    0.09843549256714078
#>     Attrib V25    -0.05003751506284724
#>     Attrib V26    0.22939250658395033
#>     Attrib V27    0.5168256399021148
#>     Attrib V28    1.19569667882742
#>     Attrib V29    0.8718398343748053
#>     Attrib V3    -0.2381874239005638
#>     Attrib V30    0.3065026201152906
#>     Attrib V31    -0.46205685517172634
#>     Attrib V32    0.0335444908344709
#>     Attrib V33    0.01873097068321115
#>     Attrib V34    0.13405053941416215
#>     Attrib V35    0.8180254673311785
#>     Attrib V36    -0.5562791556845805
#>     Attrib V37    -0.2729630431667741
#>     Attrib V38    -0.5939918605008542
#>     Attrib V39    0.05113269806164593
#>     Attrib V4    0.127092974942021
#>     Attrib V40    0.06653593389164154
#>     Attrib V41    0.7728383496654506
#>     Attrib V42    -0.2869146978584335
#>     Attrib V43    -0.14975021121433235
#>     Attrib V44    0.1521889856295208
#>     Attrib V45    0.6835683109810402
#>     Attrib V46    0.26222532723663455
#>     Attrib V47    0.08434250690985313
#>     Attrib V48    0.4877132322630727
#>     Attrib V49    0.5474770629880902
#>     Attrib V5    0.6272915005150673
#>     Attrib V50    -0.2676429169478699
#>     Attrib V51    0.6139293471114462
#>     Attrib V52    0.2812672978296134
#>     Attrib V53    0.26525712501599663
#>     Attrib V54    -0.2808598085175684
#>     Attrib V55    -0.08364286443972156
#>     Attrib V56    -0.23788916698123308
#>     Attrib V57    -0.09874047383389195
#>     Attrib V58    0.11065690474624895
#>     Attrib V59    0.023494276723745138
#>     Attrib V6    0.13012754250336214
#>     Attrib V60    0.5089423150071541
#>     Attrib V7    -0.39390965625860913
#>     Attrib V8    -0.654385411989134
#>     Attrib V9    1.1628274789292947
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.49150493160303077
#>     Attrib V1    -0.4751442629438291
#>     Attrib V10    -0.6550789698871062
#>     Attrib V11    -0.634322651668472
#>     Attrib V12    -0.5472681281430682
#>     Attrib V13    0.1492792991146843
#>     Attrib V14    0.6706967428490772
#>     Attrib V15    0.287325299731075
#>     Attrib V16    0.26717400195568336
#>     Attrib V17    0.1457707259872955
#>     Attrib V18    0.24080341391137902
#>     Attrib V19    0.2618601927562624
#>     Attrib V2    -0.6929365835073338
#>     Attrib V20    -0.11714332256479945
#>     Attrib V21    -0.21239499017914093
#>     Attrib V22    -0.616699944183171
#>     Attrib V23    -0.7798321335901683
#>     Attrib V24    -0.05868034560620417
#>     Attrib V25    0.2917357110559889
#>     Attrib V26    0.7069090840050836
#>     Attrib V27    0.38561858288519935
#>     Attrib V28    -0.7887445852900031
#>     Attrib V29    -0.6515998282814346
#>     Attrib V3    0.6276305606828809
#>     Attrib V30    -0.4305823215645476
#>     Attrib V31    1.254098925868624
#>     Attrib V32    0.0037811827805111233
#>     Attrib V33    -0.26448415665863906
#>     Attrib V34    0.43892475596972785
#>     Attrib V35    -0.045234421618183765
#>     Attrib V36    0.8653135755390912
#>     Attrib V37    0.1106407867121743
#>     Attrib V38    0.05330347403657383
#>     Attrib V39    -0.17964965923380127
#>     Attrib V4    -0.0999803083279976
#>     Attrib V40    -0.01139259987937384
#>     Attrib V41    -0.9329783444240598
#>     Attrib V42    -0.10705642385820406
#>     Attrib V43    0.0681036698021612
#>     Attrib V44    -0.4012223006932322
#>     Attrib V45    -0.4103054832731331
#>     Attrib V46    0.2123579025386222
#>     Attrib V47    0.270692043275052
#>     Attrib V48    -0.2492540602369311
#>     Attrib V49    -0.42836500027432955
#>     Attrib V5    -0.26024813504182714
#>     Attrib V50    0.7135043945316782
#>     Attrib V51    -0.6265834148402204
#>     Attrib V52    -0.08056993129199509
#>     Attrib V53    0.010675246786371185
#>     Attrib V54    -0.09049955114943321
#>     Attrib V55    0.5388796718786091
#>     Attrib V56    -0.10294946593195722
#>     Attrib V57    0.04910790594086122
#>     Attrib V58    0.07660232427392749
#>     Attrib V59    -0.38714651633950925
#>     Attrib V6    0.41624136113695565
#>     Attrib V60    -0.3701943408389775
#>     Attrib V7    0.6519235574065806
#>     Attrib V8    0.6728569140549772
#>     Attrib V9    -0.8616355701336896
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.02359030078616751
#>     Attrib V1    0.323003402398815
#>     Attrib V10    0.17122947059907964
#>     Attrib V11    0.2227843348628498
#>     Attrib V12    0.18221379277491323
#>     Attrib V13    -0.04985542393531954
#>     Attrib V14    0.014224687649987362
#>     Attrib V15    0.06893125909110936
#>     Attrib V16    0.06775086015238302
#>     Attrib V17    0.07268648189376936
#>     Attrib V18    0.06681994286661316
#>     Attrib V19    0.05839754718273415
#>     Attrib V2    0.11123741915111052
#>     Attrib V20    0.30343276480969017
#>     Attrib V21    0.38204424952293237
#>     Attrib V22    0.44479186658319814
#>     Attrib V23    0.2292932283486875
#>     Attrib V24    0.03707545011283812
#>     Attrib V25    -0.015629137695688036
#>     Attrib V26    -0.3712671204854816
#>     Attrib V27    -0.32965955753236104
#>     Attrib V28    0.044817202693926916
#>     Attrib V29    0.05704715774089302
#>     Attrib V3    -0.21179643942819995
#>     Attrib V30    -0.011682711457953951
#>     Attrib V31    -0.7597172301636675
#>     Attrib V32    -0.06013705722306817
#>     Attrib V33    0.10739798028322298
#>     Attrib V34    -0.3511699133965668
#>     Attrib V35    -0.2799359528378558
#>     Attrib V36    -0.4032628503236325
#>     Attrib V37    -0.17107812099267575
#>     Attrib V38    0.14038666631246988
#>     Attrib V39    0.19662088909045708
#>     Attrib V4    0.20911087560520014
#>     Attrib V40    -0.029719043045336895
#>     Attrib V41    0.290872158434304
#>     Attrib V42    0.12859686130351206
#>     Attrib V43    0.10292361096554029
#>     Attrib V44    0.12199834752968328
#>     Attrib V45    0.058758865903236764
#>     Attrib V46    -0.20754732699698702
#>     Attrib V47    -0.17434052964788813
#>     Attrib V48    0.03002354968559344
#>     Attrib V49    0.05025707999980979
#>     Attrib V5    0.08573544703941635
#>     Attrib V50    -0.1438936898560043
#>     Attrib V51    0.2386144703720811
#>     Attrib V52    0.029976341403757344
#>     Attrib V53    0.0140468175390705
#>     Attrib V54    0.32371494458277833
#>     Attrib V55    -0.11883851104900123
#>     Attrib V56    0.2062360874505605
#>     Attrib V57    0.16781739965836423
#>     Attrib V58    0.06508489408281015
#>     Attrib V59    0.4977086071575441
#>     Attrib V6    -0.12037433193451866
#>     Attrib V60    0.42598607843831376
#>     Attrib V7    -0.08652492095935914
#>     Attrib V8    -0.06590408080695859
#>     Attrib V9    0.2628216952129397
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.17562126599071134
#>     Attrib V1    0.03994350441478821
#>     Attrib V10    0.05625705550347099
#>     Attrib V11    0.004866669601627904
#>     Attrib V12    0.03546669304392099
#>     Attrib V13    0.06649995841874574
#>     Attrib V14    0.07364369610506447
#>     Attrib V15    0.07079007202243812
#>     Attrib V16    0.057885479630031614
#>     Attrib V17    0.08372496628241453
#>     Attrib V18    0.02055138928347148
#>     Attrib V19    -0.03525039673955717
#>     Attrib V2    0.05791865545555195
#>     Attrib V20    -0.08130991635031233
#>     Attrib V21    -0.024358949048765476
#>     Attrib V22    -0.035495413235130696
#>     Attrib V23    -0.0239941224774361
#>     Attrib V24    -0.04137429121269087
#>     Attrib V25    0.032860183854261066
#>     Attrib V26    0.03705608325630782
#>     Attrib V27    -0.05832140403081081
#>     Attrib V28    -0.09620155732467944
#>     Attrib V29    -0.12155871794750191
#>     Attrib V3    0.06825146680060977
#>     Attrib V30    0.003247993011970359
#>     Attrib V31    0.1267655876339266
#>     Attrib V32    -0.005925936320520781
#>     Attrib V33    -0.01326381755272088
#>     Attrib V34    0.033961289320619495
#>     Attrib V35    0.08397371776622166
#>     Attrib V36    0.09028668405744192
#>     Attrib V37    0.09242082688841279
#>     Attrib V38    -0.00793696333895411
#>     Attrib V39    0.09358287346859734
#>     Attrib V4    0.07410260295472039
#>     Attrib V40    0.09189389583338922
#>     Attrib V41    0.04670091981193884
#>     Attrib V42    0.10366595662687415
#>     Attrib V43    0.06730491268867583
#>     Attrib V44    0.017996726880452767
#>     Attrib V45    0.03842906442591948
#>     Attrib V46    0.07062121062744135
#>     Attrib V47    0.05138470463782477
#>     Attrib V48    0.038012991147075056
#>     Attrib V49    -0.02309474692161634
#>     Attrib V5    0.04270694438869097
#>     Attrib V50    0.04985665625829752
#>     Attrib V51    0.02024733592926117
#>     Attrib V52    0.04979494575136576
#>     Attrib V53    0.06603791754150169
#>     Attrib V54    -0.00568765571057105
#>     Attrib V55    0.03620304836940133
#>     Attrib V56    0.09117910489290926
#>     Attrib V57    0.009048240063025797
#>     Attrib V58    0.0691838179720507
#>     Attrib V59    0.08418076118351195
#>     Attrib V6    0.14868643047043467
#>     Attrib V60    0.12138753300086483
#>     Attrib V7    0.07368857557622414
#>     Attrib V8    0.09311234226873086
#>     Attrib V9    -0.009581236152829523
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.13665465866973278
#>     Attrib V1    0.3821103421779677
#>     Attrib V10    0.09829039377211772
#>     Attrib V11    0.10865432579611006
#>     Attrib V12    0.03188769959945851
#>     Attrib V13    -0.05277058641417754
#>     Attrib V14    0.07663545373124028
#>     Attrib V15    0.16272841989987372
#>     Attrib V16    0.2049941185262144
#>     Attrib V17    0.18414100822131163
#>     Attrib V18    0.10620836621059297
#>     Attrib V19    0.1415935196761502
#>     Attrib V2    0.12242521172986989
#>     Attrib V20    0.367646411912781
#>     Attrib V21    0.35835869278114924
#>     Attrib V22    0.41341010683435403
#>     Attrib V23    0.20969916089862564
#>     Attrib V24    -0.020739001446873018
#>     Attrib V25    -0.15873141398694296
#>     Attrib V26    -0.4348858198895974
#>     Attrib V27    -0.4916588032354579
#>     Attrib V28    -0.16704815182893876
#>     Attrib V29    -0.1781476386918314
#>     Attrib V3    -0.25108463797672836
#>     Attrib V30    -0.10818787449610098
#>     Attrib V31    -0.8110276715852303
#>     Attrib V32    -0.10138069646560914
#>     Attrib V33    0.1324889900518524
#>     Attrib V34    -0.34436267021990263
#>     Attrib V35    -0.33388050563720667
#>     Attrib V36    -0.3370898551178769
#>     Attrib V37    -0.09693931131808531
#>     Attrib V38    0.2963764464494298
#>     Attrib V39    0.20284613378331054
#>     Attrib V4    0.2805904648168916
#>     Attrib V40    -0.04203783474704042
#>     Attrib V41    0.1935335640206624
#>     Attrib V42    0.17319274519176128
#>     Attrib V43    0.09635846769201115
#>     Attrib V44    0.18426468582323255
#>     Attrib V45    -0.07759573391168882
#>     Attrib V46    -0.2431296283694014
#>     Attrib V47    -0.20677143745108975
#>     Attrib V48    0.03718731877564324
#>     Attrib V49    0.0481609872337304
#>     Attrib V5    0.0599944123863185
#>     Attrib V50    -0.13418679878817616
#>     Attrib V51    0.18260159971621318
#>     Attrib V52    -0.008690712751344715
#>     Attrib V53    0.05655414440081977
#>     Attrib V54    0.49832750007042387
#>     Attrib V55    -0.11543894043325388
#>     Attrib V56    0.23124957233161644
#>     Attrib V57    0.2624080891144665
#>     Attrib V58    0.09736713363407618
#>     Attrib V59    0.6285776161203067
#>     Attrib V6    -0.14070580335024918
#>     Attrib V60    0.4847275047494097
#>     Attrib V7    -0.025581156046842607
#>     Attrib V8    -0.02970791493523504
#>     Attrib V9    0.18176836474868271
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.14142912526284127
#>     Attrib V1    0.11210971622054594
#>     Attrib V10    0.03203642581235798
#>     Attrib V11    0.07961567681971433
#>     Attrib V12    0.07745150333959588
#>     Attrib V13    -0.0029565307868370952
#>     Attrib V14    0.09581304934008955
#>     Attrib V15    0.04139711418678609
#>     Attrib V16    0.023561561041689202
#>     Attrib V17    -0.03311017012841029
#>     Attrib V18    0.050774553035128775
#>     Attrib V19    -0.061083086933890876
#>     Attrib V2    0.031248806876639546
#>     Attrib V20    -0.007282268427001003
#>     Attrib V21    -0.001982149239887663
#>     Attrib V22    -0.017364631477269615
#>     Attrib V23    0.03216212447230059
#>     Attrib V24    -0.03690420119713721
#>     Attrib V25    -0.051655609210463235
#>     Attrib V26    -0.059947697131801744
#>     Attrib V27    -0.047826164577408174
#>     Attrib V28    0.03619147055107677
#>     Attrib V29    -0.004991281050360705
#>     Attrib V3    0.038421158030606806
#>     Attrib V30    0.018859833175012688
#>     Attrib V31    -0.13220211705841045
#>     Attrib V32    -0.0155923823971703
#>     Attrib V33    0.03814735767533266
#>     Attrib V34    9.614654159952981E-4
#>     Attrib V35    0.04189830583281199
#>     Attrib V36    0.048768745625502104
#>     Attrib V37    0.010534994460355804
#>     Attrib V38    6.598618231009849E-4
#>     Attrib V39    0.09344951080583677
#>     Attrib V4    0.07741499177976013
#>     Attrib V40    0.012988526590984538
#>     Attrib V41    0.03329356765260006
#>     Attrib V42    0.0626998598727768
#>     Attrib V43    0.033079594325098806
#>     Attrib V44    0.11443864965162576
#>     Attrib V45    0.09583982533765681
#>     Attrib V46    0.032657363387436626
#>     Attrib V47    0.035349477482899974
#>     Attrib V48    0.04233694736140573
#>     Attrib V49    0.09461275322838991
#>     Attrib V5    0.11850422376942783
#>     Attrib V50    0.008522339262313331
#>     Attrib V51    0.10841546060030974
#>     Attrib V52    0.09886896954393164
#>     Attrib V53    0.07385432889512861
#>     Attrib V54    0.016851704031835564
#>     Attrib V55    0.0011801441688212195
#>     Attrib V56    0.06078530577240879
#>     Attrib V57    0.053446559579736895
#>     Attrib V58    0.09706447764637767
#>     Attrib V59    0.11522201772384433
#>     Attrib V6    0.09948562382614563
#>     Attrib V60    0.16631186447378074
#>     Attrib V7    0.04163917134403091
#>     Attrib V8    0.0560775053842219
#>     Attrib V9    0.10878924648645437
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
