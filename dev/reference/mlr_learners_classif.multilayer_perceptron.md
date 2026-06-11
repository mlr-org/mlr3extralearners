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
#>     Threshold    -0.08590850253199524
#>     Node 2    1.9816654688837547
#>     Node 3    1.4907636400035797
#>     Node 4    0.45152532919006755
#>     Node 5    -2.1908636155305645
#>     Node 6    1.0332044342120088
#>     Node 7    3.211724036462329
#>     Node 8    0.41304358023531307
#>     Node 9    3.255535785786963
#>     Node 10    -1.5160515748548156
#>     Node 11    0.9775625293320359
#>     Node 12    1.75516463765794
#>     Node 13    0.8656436896673229
#>     Node 14    1.8222418569510488
#>     Node 15    -1.7664929276159045
#>     Node 16    0.31097586442683106
#>     Node 17    -0.4616342370818829
#>     Node 18    0.20578375626977646
#>     Node 19    1.7320690892800423
#>     Node 20    1.7429306854574367
#>     Node 21    -2.8421436362690056
#>     Node 22    1.1354004976502188
#>     Node 23    2.0536095403765855
#>     Node 24    -0.5698134902636607
#>     Node 25    2.42014952266659
#>     Node 26    -1.2815905276903226
#>     Node 27    1.8756468607340189
#>     Node 28    -3.6249616381464165
#>     Node 29    1.3945647378315653
#>     Node 30    -0.028548893176326858
#>     Node 31    1.947003919872665
#>     Node 32    0.7591849661030647
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.10693836415752832
#>     Node 2    -2.023435495199459
#>     Node 3    -1.474017390851673
#>     Node 4    -0.42769480822551076
#>     Node 5    2.2099237331282797
#>     Node 6    -1.0133200905164914
#>     Node 7    -3.211614229766298
#>     Node 8    -0.4635090321669152
#>     Node 9    -3.2603977644650475
#>     Node 10    1.4717149544822874
#>     Node 11    -0.956953494110976
#>     Node 12    -1.8294332141766898
#>     Node 13    -0.8132242198833258
#>     Node 14    -1.7549557977901322
#>     Node 15    1.7763214402150098
#>     Node 16    -0.3441767192705949
#>     Node 17    0.4906421415506214
#>     Node 18    -0.1769331731391128
#>     Node 19    -1.7271848401127496
#>     Node 20    -1.7085418958106493
#>     Node 21    2.904927176461496
#>     Node 22    -1.19689408694236
#>     Node 23    -2.0784520791338386
#>     Node 24    0.558108684355358
#>     Node 25    -2.410870903498033
#>     Node 26    1.22524124653804
#>     Node 27    -1.9050762487899104
#>     Node 28    3.574207076152921
#>     Node 29    -1.4233097356686235
#>     Node 30    0.09120913502253544
#>     Node 31    -1.8887549334437865
#>     Node 32    -0.7895824178504135
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.16036539584178106
#>     Attrib V1    0.3431498541561672
#>     Attrib V10    0.17539567037755938
#>     Attrib V11    0.34994097907141675
#>     Attrib V12    -0.07486445674960793
#>     Attrib V13    -0.30979943616888905
#>     Attrib V14    -0.48800682371172505
#>     Attrib V15    0.019706619137709998
#>     Attrib V16    0.2961007845946614
#>     Attrib V17    0.08853101747300225
#>     Attrib V18    -0.17122787232066056
#>     Attrib V19    0.23873635448561667
#>     Attrib V2    0.2062517385057663
#>     Attrib V20    0.6102931673832238
#>     Attrib V21    0.5918038350440012
#>     Attrib V22    0.09792716555792243
#>     Attrib V23    0.12030494179311942
#>     Attrib V24    0.1935668780098356
#>     Attrib V25    -0.8889939818487452
#>     Attrib V26    -0.6957997829019537
#>     Attrib V27    -0.45377192680849465
#>     Attrib V28    -0.3818581468525065
#>     Attrib V29    -0.6074857298537881
#>     Attrib V3    -0.013026093879475285
#>     Attrib V30    0.2447066412153459
#>     Attrib V31    -0.9928179221123035
#>     Attrib V32    -0.029734701639281987
#>     Attrib V33    0.6416941680329863
#>     Attrib V34    0.15056706543566162
#>     Attrib V35    -0.36168311209910853
#>     Attrib V36    -0.8371445744039498
#>     Attrib V37    -0.8948788175166991
#>     Attrib V38    0.23072453984772254
#>     Attrib V39    0.13397029534959254
#>     Attrib V4    0.4399653388905108
#>     Attrib V40    -0.5572856765912305
#>     Attrib V41    -0.2563581361494497
#>     Attrib V42    0.30942843017517596
#>     Attrib V43    0.7255281426144479
#>     Attrib V44    0.6014107592898728
#>     Attrib V45    0.39437638998468977
#>     Attrib V46    -0.0905222709743689
#>     Attrib V47    -0.524147130159763
#>     Attrib V48    0.03746566517178112
#>     Attrib V49    0.5734676307312422
#>     Attrib V5    -0.17995786870043415
#>     Attrib V50    -0.6047986094445361
#>     Attrib V51    -0.0038036608724031896
#>     Attrib V52    -0.43155785005173347
#>     Attrib V53    -0.18230427064976545
#>     Attrib V54    0.3246702463571853
#>     Attrib V55    0.03524843379354268
#>     Attrib V56    0.09167118313284732
#>     Attrib V57    0.4665401077898541
#>     Attrib V58    0.5302966694890991
#>     Attrib V59    0.5945000579762879
#>     Attrib V6    -0.8359707352293105
#>     Attrib V60    0.21264951688980488
#>     Attrib V7    -0.036859436706859795
#>     Attrib V8    -0.1078603235546836
#>     Attrib V9    0.2774844532751996
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.12380777985553174
#>     Attrib V1    0.2561008117127907
#>     Attrib V10    0.09858056639819889
#>     Attrib V11    0.19225812802450765
#>     Attrib V12    -0.06651990801717292
#>     Attrib V13    -0.16709880052183892
#>     Attrib V14    -0.30809778686978223
#>     Attrib V15    0.14225427621848405
#>     Attrib V16    0.24660411345696395
#>     Attrib V17    0.06192987888008221
#>     Attrib V18    -0.17605241098551055
#>     Attrib V19    0.20301446787610017
#>     Attrib V2    0.2402123895017671
#>     Attrib V20    0.3988408204547594
#>     Attrib V21    0.3488624008075763
#>     Attrib V22    0.056588325126221535
#>     Attrib V23    -0.010251591412329605
#>     Attrib V24    0.03864377174971324
#>     Attrib V25    -0.7083660437757109
#>     Attrib V26    -0.6019622438356663
#>     Attrib V27    -0.45914002814188254
#>     Attrib V28    -0.4236918487023893
#>     Attrib V29    -0.5587534582065065
#>     Attrib V3    0.0011986608064540522
#>     Attrib V30    0.14923907112321852
#>     Attrib V31    -0.7085238489637145
#>     Attrib V32    -0.0034018459378704303
#>     Attrib V33    0.5375917749617175
#>     Attrib V34    0.09735748160749576
#>     Attrib V35    -0.2795472222490726
#>     Attrib V36    -0.6276155243979978
#>     Attrib V37    -0.6800057993335139
#>     Attrib V38    0.07255287708399477
#>     Attrib V39    0.08477030091099391
#>     Attrib V4    0.3396496157022278
#>     Attrib V40    -0.42393785375838194
#>     Attrib V41    -0.21817609803228255
#>     Attrib V42    0.1615284098984606
#>     Attrib V43    0.4300774238595507
#>     Attrib V44    0.42000678538627784
#>     Attrib V45    0.2967311657164129
#>     Attrib V46    -0.0828691620793329
#>     Attrib V47    -0.38380343163716424
#>     Attrib V48    -0.022591946698020803
#>     Attrib V49    0.4028820363720108
#>     Attrib V5    -0.16751665366054247
#>     Attrib V50    -0.4362846232963867
#>     Attrib V51    -0.04199402249067982
#>     Attrib V52    -0.3263745153003954
#>     Attrib V53    -0.1950510486884053
#>     Attrib V54    0.3443398855029556
#>     Attrib V55    0.1060116502516629
#>     Attrib V56    0.09503446440462654
#>     Attrib V57    0.4089026983265803
#>     Attrib V58    0.4579367946443282
#>     Attrib V59    0.4577528234922516
#>     Attrib V6    -0.5829421316376799
#>     Attrib V60    0.17086594560120671
#>     Attrib V7    -5.518618593592057E-4
#>     Attrib V8    -0.052973209927991476
#>     Attrib V9    0.16832064534190128
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.12346818147849914
#>     Attrib V1    0.009161932683931772
#>     Attrib V10    0.04256222773895711
#>     Attrib V11    0.07452768144276953
#>     Attrib V12    0.02195991574017389
#>     Attrib V13    -0.005527436198133571
#>     Attrib V14    -0.04661756457874546
#>     Attrib V15    0.06650768417927282
#>     Attrib V16    0.05162486570218165
#>     Attrib V17    -0.003939449795265806
#>     Attrib V18    -0.08560792475782707
#>     Attrib V19    -0.0069739000147219996
#>     Attrib V2    0.08446370801854092
#>     Attrib V20    0.05746618438106377
#>     Attrib V21    0.03784976028142828
#>     Attrib V22    -0.12144018146094693
#>     Attrib V23    -0.08085218508023663
#>     Attrib V24    -0.09859317429858855
#>     Attrib V25    -0.3341300408290605
#>     Attrib V26    -0.21799405067023506
#>     Attrib V27    -0.13452669186013036
#>     Attrib V28    -0.028888647294431087
#>     Attrib V29    -0.0435317146088183
#>     Attrib V3    0.04080256696743247
#>     Attrib V30    0.05640076970425737
#>     Attrib V31    -0.2131382490922505
#>     Attrib V32    0.021235405601682664
#>     Attrib V33    0.21346232670816145
#>     Attrib V34    0.10824252785277985
#>     Attrib V35    -0.032568825669762436
#>     Attrib V36    -0.1751629256639758
#>     Attrib V37    -0.16203732601597626
#>     Attrib V38    0.001211190447487634
#>     Attrib V39    0.0540405864191872
#>     Attrib V4    0.11593349512165105
#>     Attrib V40    -0.07560786991159274
#>     Attrib V41    -0.06715181348784763
#>     Attrib V42    0.03147057230816107
#>     Attrib V43    0.11063996246892123
#>     Attrib V44    0.13200285138544135
#>     Attrib V45    0.1522666037650318
#>     Attrib V46    -0.021419167795286676
#>     Attrib V47    -0.11117969898388314
#>     Attrib V48    0.07325793050983782
#>     Attrib V49    0.22294013927774328
#>     Attrib V5    0.02617049281510279
#>     Attrib V50    -0.06337316385765943
#>     Attrib V51    0.03670635322566302
#>     Attrib V52    -0.04095315860445661
#>     Attrib V53    0.04465165314923256
#>     Attrib V54    0.0531631469192604
#>     Attrib V55    0.024805930231595885
#>     Attrib V56    0.05296555153721229
#>     Attrib V57    0.17429993596608168
#>     Attrib V58    0.1252133498681017
#>     Attrib V59    0.08974098506306363
#>     Attrib V6    -0.1869873300904364
#>     Attrib V60    -0.014404926948377614
#>     Attrib V7    -0.031139868154315183
#>     Attrib V8    -0.05322807054527654
#>     Attrib V9    0.10804769220898071
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.3058507402677077
#>     Attrib V1    0.12520978484720058
#>     Attrib V10    -0.7264069099816521
#>     Attrib V11    -0.7652484987426248
#>     Attrib V12    -0.7782354180953894
#>     Attrib V13    -0.5266867499638059
#>     Attrib V14    0.36023869111015777
#>     Attrib V15    0.3016155201453092
#>     Attrib V16    0.22005297202997065
#>     Attrib V17    0.570690294225526
#>     Attrib V18    0.36132771817030973
#>     Attrib V19    -0.050070737674344404
#>     Attrib V2    -0.3781992002093504
#>     Attrib V20    -0.16945430512192125
#>     Attrib V21    -0.1438698854857916
#>     Attrib V22    -0.34903040668927726
#>     Attrib V23    -0.6270088835324591
#>     Attrib V24    -0.6388034462046212
#>     Attrib V25    0.3241186148527121
#>     Attrib V26    -0.3074772777356067
#>     Attrib V27    -0.99589933083652
#>     Attrib V28    -1.1260444964611582
#>     Attrib V29    -0.5553880781423678
#>     Attrib V3    0.2518008652659665
#>     Attrib V30    -0.07753442209638664
#>     Attrib V31    0.9767882236605416
#>     Attrib V32    -0.018802303307256175
#>     Attrib V33    -0.2996346080853744
#>     Attrib V34    -0.08374030938193293
#>     Attrib V35    0.01476404544452971
#>     Attrib V36    0.7206555246441929
#>     Attrib V37    0.42793195293051894
#>     Attrib V38    -0.0025589166559280034
#>     Attrib V39    -0.09188644711658127
#>     Attrib V4    -0.2783396538285734
#>     Attrib V40    -0.10056957384415033
#>     Attrib V41    -0.7245690095939442
#>     Attrib V42    0.1124860653354681
#>     Attrib V43    -0.53601314832512
#>     Attrib V44    -0.2449898847127514
#>     Attrib V45    -0.3693511796334536
#>     Attrib V46    -0.36315189769418366
#>     Attrib V47    -0.23221934934692717
#>     Attrib V48    -0.7373932910529024
#>     Attrib V49    -1.3628006557749075
#>     Attrib V5    -0.33887127304234943
#>     Attrib V50    0.19917417478650784
#>     Attrib V51    -0.36392629745468896
#>     Attrib V52    -0.445406783537025
#>     Attrib V53    -0.6293544243033904
#>     Attrib V54    -0.2440262362495811
#>     Attrib V55    0.6130803193981373
#>     Attrib V56    0.322439774005637
#>     Attrib V57    0.1288018654743601
#>     Attrib V58    -0.17176767439142562
#>     Attrib V59    0.12058359125048106
#>     Attrib V6    0.12910133770928311
#>     Attrib V60    0.18213874688693119
#>     Attrib V7    0.4590288161180883
#>     Attrib V8    0.7073094124257501
#>     Attrib V9    -0.4152046288872237
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.05182892434017023
#>     Attrib V1    0.2003296700870743
#>     Attrib V10    0.03387313092674272
#>     Attrib V11    0.1500753058856164
#>     Attrib V12    0.005171489064854526
#>     Attrib V13    -0.16078456552185144
#>     Attrib V14    -0.2577018046585378
#>     Attrib V15    0.050187194592242426
#>     Attrib V16    0.22813443332690084
#>     Attrib V17    0.016105141749600604
#>     Attrib V18    -0.07095112425675101
#>     Attrib V19    0.10264384564564753
#>     Attrib V2    0.182203199948734
#>     Attrib V20    0.2954606056025244
#>     Attrib V21    0.2945602380997284
#>     Attrib V22    0.01919559826077459
#>     Attrib V23    0.029837201512588597
#>     Attrib V24    0.12775238130743782
#>     Attrib V25    -0.44052790652093055
#>     Attrib V26    -0.39907379385306607
#>     Attrib V27    -0.2642104003508882
#>     Attrib V28    -0.32231279600156953
#>     Attrib V29    -0.3934138557297142
#>     Attrib V3    -0.008942296743787673
#>     Attrib V30    0.0425780834437596
#>     Attrib V31    -0.5693585668983236
#>     Attrib V32    -0.005224664886310871
#>     Attrib V33    0.38501428112952296
#>     Attrib V34    0.07823399086983132
#>     Attrib V35    -0.18228073544687123
#>     Attrib V36    -0.499506451338966
#>     Attrib V37    -0.49111294415938
#>     Attrib V38    0.05258144980397294
#>     Attrib V39    0.04020550594206165
#>     Attrib V4    0.28989302606934997
#>     Attrib V40    -0.33253607658584433
#>     Attrib V41    -0.0822703157826696
#>     Attrib V42    0.13077222232018415
#>     Attrib V43    0.30782588125684907
#>     Attrib V44    0.2671550828184114
#>     Attrib V45    0.23395850253174988
#>     Attrib V46    -0.03237141800991286
#>     Attrib V47    -0.3036201917829772
#>     Attrib V48    -0.016406982657037824
#>     Attrib V49    0.29770205943712386
#>     Attrib V5    -0.08602518414341757
#>     Attrib V50    -0.2805102265586572
#>     Attrib V51    0.01624487880466551
#>     Attrib V52    -0.2768288421753107
#>     Attrib V53    -0.026747482489187128
#>     Attrib V54    0.2146566444723346
#>     Attrib V55    0.0076269901682824125
#>     Attrib V56    0.060863454756273506
#>     Attrib V57    0.32863826033798815
#>     Attrib V58    0.3160212043789473
#>     Attrib V59    0.3445581319560392
#>     Attrib V6    -0.3488864089731861
#>     Attrib V60    0.14538228533721356
#>     Attrib V7    0.0272202502636769
#>     Attrib V8    -0.03797125505613028
#>     Attrib V9    0.18770668358681233
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.41863185538081427
#>     Attrib V1    -0.12945181990079047
#>     Attrib V10    1.1667327280211977
#>     Attrib V11    1.1044193138826528
#>     Attrib V12    1.1657469447552595
#>     Attrib V13    0.9900044601599758
#>     Attrib V14    -0.5094457090637217
#>     Attrib V15    -0.5975022733568829
#>     Attrib V16    -0.5531130955555246
#>     Attrib V17    -0.8857447443576895
#>     Attrib V18    -0.6102142570597627
#>     Attrib V19    -0.09280142858065721
#>     Attrib V2    0.5881513955130897
#>     Attrib V20    0.13712048448517936
#>     Attrib V21    0.07376468785035366
#>     Attrib V22    0.4937239331923583
#>     Attrib V23    1.1858481716680913
#>     Attrib V24    1.2012597081314098
#>     Attrib V25    0.24663137728617246
#>     Attrib V26    0.8037614565911896
#>     Attrib V27    1.3790797398988788
#>     Attrib V28    1.3333884636989546
#>     Attrib V29    0.36084086051481273
#>     Attrib V3    -0.1837145066160561
#>     Attrib V30    -0.3303556895422618
#>     Attrib V31    -1.0961148808513594
#>     Attrib V32    0.047113280687853275
#>     Attrib V33    0.21600910849210567
#>     Attrib V34    0.09332386346425922
#>     Attrib V35    0.19716693985702502
#>     Attrib V36    -0.8316197660620732
#>     Attrib V37    -0.4759460396412498
#>     Attrib V38    -0.21328273035169443
#>     Attrib V39    0.02020067307492531
#>     Attrib V4    0.28145666462892877
#>     Attrib V40    0.4299230963570458
#>     Attrib V41    1.4504406204400346
#>     Attrib V42    -0.07665943345203086
#>     Attrib V43    0.35398258535632615
#>     Attrib V44    0.03303807362958136
#>     Attrib V45    0.41475443534398687
#>     Attrib V46    0.45743575959148863
#>     Attrib V47    0.5623468851358291
#>     Attrib V48    1.113142731390953
#>     Attrib V49    1.6790330533527413
#>     Attrib V5    0.7774674309790097
#>     Attrib V50    -0.012699138024228599
#>     Attrib V51    0.6761947964199982
#>     Attrib V52    0.530337067652224
#>     Attrib V53    0.7048490880651863
#>     Attrib V54    0.272357252958067
#>     Attrib V55    -0.9330337121648979
#>     Attrib V56    -0.3686375666813269
#>     Attrib V57    -0.234240036786262
#>     Attrib V58    -0.032395759792084484
#>     Attrib V59    -0.21971211079984557
#>     Attrib V6    0.20992874502597295
#>     Attrib V60    -0.2798693710262257
#>     Attrib V7    -0.40528033505030187
#>     Attrib V8    -0.7754387104330145
#>     Attrib V9    0.7205281754726384
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.04405727107523039
#>     Attrib V1    0.012021048222725293
#>     Attrib V10    0.08263411798245741
#>     Attrib V11    0.12014828445414251
#>     Attrib V12    0.021172629897853866
#>     Attrib V13    -0.013838802871614084
#>     Attrib V14    -0.13456010378493402
#>     Attrib V15    6.5960435159662E-4
#>     Attrib V16    0.1043679878481299
#>     Attrib V17    -0.005358491955911846
#>     Attrib V18    -0.09106454891960779
#>     Attrib V19    0.007084872086665113
#>     Attrib V2    0.11493274211017514
#>     Attrib V20    -1.3562714525442517E-4
#>     Attrib V21    -0.009128169316573046
#>     Attrib V22    -0.10575490365942494
#>     Attrib V23    -0.061633401719579095
#>     Attrib V24    -0.013246797779328386
#>     Attrib V25    -0.25339737620076214
#>     Attrib V26    -0.16160667726780292
#>     Attrib V27    -0.07531480668124266
#>     Attrib V28    -0.034023197928146766
#>     Attrib V29    -0.05580593685268613
#>     Attrib V3    0.006538402925815858
#>     Attrib V30    0.07293656011659697
#>     Attrib V31    -0.21281034425661924
#>     Attrib V32    0.038597279461607556
#>     Attrib V33    0.21627461864838898
#>     Attrib V34    0.09177966101343586
#>     Attrib V35    -0.03372010690171466
#>     Attrib V36    -0.10673290878168933
#>     Attrib V37    -0.13210516417334695
#>     Attrib V38    0.08005822082974623
#>     Attrib V39    0.03125001478899794
#>     Attrib V4    0.17919593328626746
#>     Attrib V40    -0.09378189174871229
#>     Attrib V41    -0.039279034155586895
#>     Attrib V42    -0.06355244453462731
#>     Attrib V43    0.11160774614294847
#>     Attrib V44    0.15958163903719624
#>     Attrib V45    0.12181622465495281
#>     Attrib V46    0.04087363170200498
#>     Attrib V47    -0.06556607099589953
#>     Attrib V48    0.09796639184067246
#>     Attrib V49    0.20952479109296096
#>     Attrib V5    -0.0060279793870768004
#>     Attrib V50    -0.11943920614329646
#>     Attrib V51    -0.012044945375295173
#>     Attrib V52    -0.0456222940432797
#>     Attrib V53    0.05713257722372234
#>     Attrib V54    0.09775677045075418
#>     Attrib V55    -0.011325612253440732
#>     Attrib V56    -0.013162069430280803
#>     Attrib V57    0.19757766672662064
#>     Attrib V58    0.09988387361286331
#>     Attrib V59    0.10226488178233303
#>     Attrib V6    -0.16751801150050835
#>     Attrib V60    0.026142908749742302
#>     Attrib V7    -0.012150722290260782
#>     Attrib V8    -0.04100153955363267
#>     Attrib V9    0.10025759931088934
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.329319604319718
#>     Attrib V1    -0.19547514449390377
#>     Attrib V10    1.1904594119894032
#>     Attrib V11    1.0220116655601936
#>     Attrib V12    1.2151259186098355
#>     Attrib V13    1.0577101024424262
#>     Attrib V14    -0.5365787994110364
#>     Attrib V15    -0.5958785042854892
#>     Attrib V16    -0.5589596038205201
#>     Attrib V17    -0.8692960273417094
#>     Attrib V18    -0.611060312892464
#>     Attrib V19    -0.18663108281784535
#>     Attrib V2    0.5453605970364571
#>     Attrib V20    -0.016922685315974045
#>     Attrib V21    0.01951526342989284
#>     Attrib V22    0.5071790403410659
#>     Attrib V23    1.1006699197746201
#>     Attrib V24    1.244255086247351
#>     Attrib V25    0.4464405484331498
#>     Attrib V26    0.8906953303784344
#>     Attrib V27    1.4009934462771236
#>     Attrib V28    1.2566913473501942
#>     Attrib V29    0.21431246561369505
#>     Attrib V3    -0.2006380185052994
#>     Attrib V30    -0.39964176955804775
#>     Attrib V31    -1.0481142023355983
#>     Attrib V32    0.10300308360997364
#>     Attrib V33    0.22023518733213665
#>     Attrib V34    0.1286227190311362
#>     Attrib V35    0.18877645558133138
#>     Attrib V36    -0.7560756645405629
#>     Attrib V37    -0.49158475869663204
#>     Attrib V38    -0.2455010386119274
#>     Attrib V39    0.07864009517221572
#>     Attrib V4    0.24143105266041875
#>     Attrib V40    0.4287918210606862
#>     Attrib V41    1.461485542508876
#>     Attrib V42    -0.16372244339070316
#>     Attrib V43    0.3190552355983459
#>     Attrib V44    -0.04590820242656482
#>     Attrib V45    0.38042710366178284
#>     Attrib V46    0.48096231037864823
#>     Attrib V47    0.5901181305905435
#>     Attrib V48    1.123463364542101
#>     Attrib V49    1.6708297524550504
#>     Attrib V5    0.7653664485800482
#>     Attrib V50    -0.002087811031413119
#>     Attrib V51    0.7372720322395995
#>     Attrib V52    0.537627429114054
#>     Attrib V53    0.854055479067537
#>     Attrib V54    0.24310016603677223
#>     Attrib V55    -0.8695579775035399
#>     Attrib V56    -0.34691473513164633
#>     Attrib V57    -0.2559948529120568
#>     Attrib V58    -0.058902168486849454
#>     Attrib V59    -0.2381177081488364
#>     Attrib V6    0.3591447275391626
#>     Attrib V60    -0.3757104897411811
#>     Attrib V7    -0.365086406353178
#>     Attrib V8    -0.6801441062854685
#>     Attrib V9    0.655045342852446
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.36191478721283543
#>     Attrib V1    0.132476144684671
#>     Attrib V10    -0.4607554646519076
#>     Attrib V11    -0.6234950935350374
#>     Attrib V12    -0.3970487774299111
#>     Attrib V13    -0.15998553816673422
#>     Attrib V14    0.47818245498062434
#>     Attrib V15    0.0793391091800933
#>     Attrib V16    0.02566374043627461
#>     Attrib V17    0.3294951459650844
#>     Attrib V18    0.44989015446174485
#>     Attrib V19    0.038513410566460585
#>     Attrib V2    -0.2725258502529353
#>     Attrib V20    -0.09454200429643332
#>     Attrib V21    -0.11085990818148199
#>     Attrib V22    -0.05652151193483604
#>     Attrib V23    -0.1627362823928662
#>     Attrib V24    -0.3082882548573866
#>     Attrib V25    0.6229338403621302
#>     Attrib V26    0.23477124491079585
#>     Attrib V27    -0.2363534039765163
#>     Attrib V28    -0.3296007386747546
#>     Attrib V29    -0.11662194572308257
#>     Attrib V3    0.28762275359227324
#>     Attrib V30    -0.12917114829152715
#>     Attrib V31    0.8837676470934493
#>     Attrib V32    -0.19479975760534357
#>     Attrib V33    -0.5654936981011941
#>     Attrib V34    -0.2092511656606176
#>     Attrib V35    0.1336737088566604
#>     Attrib V36    0.6864924502346214
#>     Attrib V37    0.5188086928037076
#>     Attrib V38    0.015308748489076806
#>     Attrib V39    -0.032825073068991364
#>     Attrib V4    -0.17738416035781054
#>     Attrib V40    0.2288968628137601
#>     Attrib V41    -0.2420292277502304
#>     Attrib V42    0.06166500572120173
#>     Attrib V43    -0.4147384008279579
#>     Attrib V44    -0.2839934734490609
#>     Attrib V45    -0.37626640749835183
#>     Attrib V46    -0.10692200696682957
#>     Attrib V47    0.23215797850901695
#>     Attrib V48    -0.39481825014960953
#>     Attrib V49    -0.942600729903627
#>     Attrib V5    0.0066341098759936795
#>     Attrib V50    0.5737737144472823
#>     Attrib V51    -0.08118431624242277
#>     Attrib V52    -0.04731558994529365
#>     Attrib V53    -0.08418286650798076
#>     Attrib V54    -0.18293266583866363
#>     Attrib V55    0.318596786952532
#>     Attrib V56    0.2223592656290276
#>     Attrib V57    -0.051410166428944776
#>     Attrib V58    -0.2934744625617021
#>     Attrib V59    -0.07328160186309467
#>     Attrib V6    0.3111062863451109
#>     Attrib V60    0.14687059460845273
#>     Attrib V7    0.17097263494898904
#>     Attrib V8    0.3602081452000823
#>     Attrib V9    -0.38305500798024134
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.0918715169438339
#>     Attrib V1    0.0846756017345156
#>     Attrib V10    0.06769116727052546
#>     Attrib V11    0.17416714441005857
#>     Attrib V12    0.04081510176186973
#>     Attrib V13    -0.1585717885248685
#>     Attrib V14    -0.2562947821276068
#>     Attrib V15    0.01845356666382742
#>     Attrib V16    0.1605191246249795
#>     Attrib V17    0.0811493930349093
#>     Attrib V18    -0.06516141946540152
#>     Attrib V19    0.06752752402012921
#>     Attrib V2    0.12334891488151827
#>     Attrib V20    0.2333471363071815
#>     Attrib V21    0.13067719516916557
#>     Attrib V22    -0.09891081434590018
#>     Attrib V23    -0.07833511315777295
#>     Attrib V24    -0.05790851224048416
#>     Attrib V25    -0.5638521697002443
#>     Attrib V26    -0.5120640019562419
#>     Attrib V27    -0.3086037698735259
#>     Attrib V28    -0.234996653509235
#>     Attrib V29    -0.2813161532277617
#>     Attrib V3    -0.0814817682350545
#>     Attrib V30    0.13166894563377293
#>     Attrib V31    -0.5072066699966685
#>     Attrib V32    0.011871877857165428
#>     Attrib V33    0.3898087148041989
#>     Attrib V34    0.17256254436246599
#>     Attrib V35    -0.13559790753153783
#>     Attrib V36    -0.4030792637329563
#>     Attrib V37    -0.4304192184262961
#>     Attrib V38    0.12162629917455685
#>     Attrib V39    0.03415091848372465
#>     Attrib V4    0.21121855681323537
#>     Attrib V40    -0.3034659763482495
#>     Attrib V41    -0.20155860437577894
#>     Attrib V42    0.0320757313431497
#>     Attrib V43    0.27943820075245235
#>     Attrib V44    0.29530058020356875
#>     Attrib V45    0.26041170380705564
#>     Attrib V46    -0.029450905622159244
#>     Attrib V47    -0.23047269526250988
#>     Attrib V48    0.08283468311354492
#>     Attrib V49    0.3422744408869716
#>     Attrib V5    -0.07634806694363909
#>     Attrib V50    -0.2537745671425273
#>     Attrib V51    0.03930732243083283
#>     Attrib V52    -0.2086279834352358
#>     Attrib V53    -0.09965558529585825
#>     Attrib V54    0.22199570651965092
#>     Attrib V55    0.034131195643931585
#>     Attrib V56    0.03901294374777234
#>     Attrib V57    0.27091103493824703
#>     Attrib V58    0.27083135521940055
#>     Attrib V59    0.16116228515450925
#>     Attrib V6    -0.3413843112766565
#>     Attrib V60    0.019963421733233993
#>     Attrib V7    -0.05042007403210302
#>     Attrib V8    -0.06123078659642822
#>     Attrib V9    0.16316124088827463
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.04885835322184081
#>     Attrib V1    0.251540934835616
#>     Attrib V10    0.11529611484218524
#>     Attrib V11    0.3732336920652482
#>     Attrib V12    -0.07565242756643406
#>     Attrib V13    -0.2469549217683441
#>     Attrib V14    -0.44461359696093045
#>     Attrib V15    0.009292326574310665
#>     Attrib V16    0.2902969870737547
#>     Attrib V17    0.06293106151353615
#>     Attrib V18    -0.17195579803542765
#>     Attrib V19    0.2610919842996541
#>     Attrib V2    0.2562110601964509
#>     Attrib V20    0.48056129607171677
#>     Attrib V21    0.46756590006882337
#>     Attrib V22    0.12347273120557774
#>     Attrib V23    0.10401716585536848
#>     Attrib V24    0.11836331659943011
#>     Attrib V25    -0.8606959862696908
#>     Attrib V26    -0.6691927432122867
#>     Attrib V27    -0.3818165636466528
#>     Attrib V28    -0.3861354903776835
#>     Attrib V29    -0.5129283504121686
#>     Attrib V3    -0.0995684944749026
#>     Attrib V30    0.18231419866659518
#>     Attrib V31    -0.9059615195678252
#>     Attrib V32    -0.046927962447266026
#>     Attrib V33    0.6505928928936722
#>     Attrib V34    0.16530419880430175
#>     Attrib V35    -0.3264947096095052
#>     Attrib V36    -0.7563896000373936
#>     Attrib V37    -0.8039871845858971
#>     Attrib V38    0.18625583454250705
#>     Attrib V39    0.06740402540737055
#>     Attrib V4    0.4375598731786863
#>     Attrib V40    -0.4821015548252775
#>     Attrib V41    -0.2262506834301943
#>     Attrib V42    0.19810416524609908
#>     Attrib V43    0.6531263596873448
#>     Attrib V44    0.4760315971225564
#>     Attrib V45    0.4062811695494612
#>     Attrib V46    -0.0150064400895119
#>     Attrib V47    -0.4649800777980368
#>     Attrib V48    0.07975754590085617
#>     Attrib V49    0.5496175265979591
#>     Attrib V5    -0.1789834817833403
#>     Attrib V50    -0.5583052207082453
#>     Attrib V51    -0.0014966371624758527
#>     Attrib V52    -0.3764184282316452
#>     Attrib V53    -0.1532059574819855
#>     Attrib V54    0.328225705687807
#>     Attrib V55    -0.0013331707225617967
#>     Attrib V56    0.08177606276041538
#>     Attrib V57    0.4911299701678009
#>     Attrib V58    0.5070004894394915
#>     Attrib V59    0.526473259473386
#>     Attrib V6    -0.735957839720629
#>     Attrib V60    0.16958907132568
#>     Attrib V7    -0.019757335642942218
#>     Attrib V8    -0.11595312414940405
#>     Attrib V9    0.2676903183172178
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.13394602149120474
#>     Attrib V1    0.13114770913454607
#>     Attrib V10    0.04729395570879269
#>     Attrib V11    0.1361262212922852
#>     Attrib V12    -0.015214271058003735
#>     Attrib V13    -0.027554597353514267
#>     Attrib V14    -0.20855478708737385
#>     Attrib V15    0.02289027204480259
#>     Attrib V16    0.10757641357368304
#>     Attrib V17    0.02715448415141953
#>     Attrib V18    -0.09763410570428772
#>     Attrib V19    0.09019383304298628
#>     Attrib V2    0.137547226822987
#>     Attrib V20    0.27435614916688267
#>     Attrib V21    0.24349268245094213
#>     Attrib V22    0.014056645094341558
#>     Attrib V23    0.07216706166221835
#>     Attrib V24    0.10051681877932998
#>     Attrib V25    -0.37105475314420877
#>     Attrib V26    -0.3686085130828258
#>     Attrib V27    -0.1914232728053311
#>     Attrib V28    -0.24648306011252102
#>     Attrib V29    -0.2849775132050947
#>     Attrib V3    0.03392576424080808
#>     Attrib V30    0.03675306123269809
#>     Attrib V31    -0.5391324941066694
#>     Attrib V32    -0.027893820298322446
#>     Attrib V33    0.2934091351431922
#>     Attrib V34    0.12599771370051419
#>     Attrib V35    -0.16795244943151555
#>     Attrib V36    -0.41626969209744324
#>     Attrib V37    -0.3939181505307926
#>     Attrib V38    0.06049238441611266
#>     Attrib V39    0.10128900023521929
#>     Attrib V4    0.23159829715738184
#>     Attrib V40    -0.22922168504573143
#>     Attrib V41    -0.08699052622991105
#>     Attrib V42    0.07755102458035375
#>     Attrib V43    0.21936125291503822
#>     Attrib V44    0.21139091744994956
#>     Attrib V45    0.14797265684925648
#>     Attrib V46    -0.008630966031289912
#>     Attrib V47    -0.20446525411280783
#>     Attrib V48    0.0015268050698011883
#>     Attrib V49    0.3122052054452923
#>     Attrib V5    -0.04941471531297715
#>     Attrib V50    -0.28566509790869793
#>     Attrib V51    -0.006308489025682149
#>     Attrib V52    -0.22921297196289522
#>     Attrib V53    -0.036280041130828486
#>     Attrib V54    0.17524648903630638
#>     Attrib V55    0.0026092065314867307
#>     Attrib V56    0.027481913473231336
#>     Attrib V57    0.26377515282460157
#>     Attrib V58    0.23641226652892663
#>     Attrib V59    0.2851183621750812
#>     Attrib V6    -0.31647856989896633
#>     Attrib V60    0.12783237883398257
#>     Attrib V7    0.032963403950060845
#>     Attrib V8    -0.12409378213262345
#>     Attrib V9    0.11801966851301032
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.09826110012141441
#>     Attrib V1    0.31351639602018255
#>     Attrib V10    0.17399185028718364
#>     Attrib V11    0.39302171401256647
#>     Attrib V12    0.007041797681007961
#>     Attrib V13    -0.23796283594138126
#>     Attrib V14    -0.49165114196011994
#>     Attrib V15    0.06165319680329317
#>     Attrib V16    0.24109383465394982
#>     Attrib V17    0.07667508354506133
#>     Attrib V18    -0.17861453968804597
#>     Attrib V19    0.1754434858717993
#>     Attrib V2    0.24108426780985756
#>     Attrib V20    0.4208222064996798
#>     Attrib V21    0.40359043803063643
#>     Attrib V22    0.031598765039555526
#>     Attrib V23    0.05330436110407144
#>     Attrib V24    0.10020059526915319
#>     Attrib V25    -0.7941758960029365
#>     Attrib V26    -0.6161532562105451
#>     Attrib V27    -0.5061379905834157
#>     Attrib V28    -0.5434931169639614
#>     Attrib V29    -0.6876545097293959
#>     Attrib V3    -0.10160440495567734
#>     Attrib V30    0.17233237394028975
#>     Attrib V31    -0.7810428580287603
#>     Attrib V32    0.017879622540918783
#>     Attrib V33    0.6860615574907527
#>     Attrib V34    0.18488157356575022
#>     Attrib V35    -0.2859549902742998
#>     Attrib V36    -0.7619955580571844
#>     Attrib V37    -0.7789899575983519
#>     Attrib V38    0.10153090958728166
#>     Attrib V39    0.07245036839538191
#>     Attrib V4    0.3571862582837631
#>     Attrib V40    -0.5510747929890695
#>     Attrib V41    -0.2897907942388585
#>     Attrib V42    0.13250437733901796
#>     Attrib V43    0.5181976150980894
#>     Attrib V44    0.5328999715507473
#>     Attrib V45    0.34775636290321077
#>     Attrib V46    -0.04984117261988644
#>     Attrib V47    -0.4833109362426802
#>     Attrib V48    0.08859810675075393
#>     Attrib V49    0.6038231993848788
#>     Attrib V5    -0.2558080364057224
#>     Attrib V50    -0.5399209370231515
#>     Attrib V51    -0.05818776485000473
#>     Attrib V52    -0.42909650066167176
#>     Attrib V53    -0.2624090325559506
#>     Attrib V54    0.3548823570991744
#>     Attrib V55    0.07456274987802179
#>     Attrib V56    0.11014406387471419
#>     Attrib V57    0.43309719023102045
#>     Attrib V58    0.5013761772565387
#>     Attrib V59    0.4778865010778844
#>     Attrib V6    -0.6419594579332097
#>     Attrib V60    0.20727505647322514
#>     Attrib V7    1.8504699609937393E-4
#>     Attrib V8    -0.1487426691172945
#>     Attrib V9    0.28044567674247445
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.3900770654847319
#>     Attrib V1    0.02666696788951137
#>     Attrib V10    -0.5258588168486406
#>     Attrib V11    -0.7318085647504536
#>     Attrib V12    -0.3953314099369306
#>     Attrib V13    -0.2299907686971565
#>     Attrib V14    0.5249103897690524
#>     Attrib V15    0.1553874373459917
#>     Attrib V16    0.006925268365635861
#>     Attrib V17    0.3850148341188462
#>     Attrib V18    0.49403923077131545
#>     Attrib V19    0.07362783953720355
#>     Attrib V2    -0.35387153051029324
#>     Attrib V20    -0.15368055504550754
#>     Attrib V21    -0.23632339158901633
#>     Attrib V22    -0.07301209030704986
#>     Attrib V23    -0.2672028763791752
#>     Attrib V24    -0.36898879695238146
#>     Attrib V25    0.7736293669863713
#>     Attrib V26    0.4041878228883024
#>     Attrib V27    -0.14999155465714678
#>     Attrib V28    -0.21062151416749927
#>     Attrib V29    0.05104880769350818
#>     Attrib V3    0.3696510502911929
#>     Attrib V30    -0.18824176786274224
#>     Attrib V31    1.068246584158088
#>     Attrib V32    -0.14362261064223752
#>     Attrib V33    -0.7134323453763236
#>     Attrib V34    -0.17369671983654403
#>     Attrib V35    0.226144698704173
#>     Attrib V36    0.848680697185292
#>     Attrib V37    0.6594272989785509
#>     Attrib V38    -0.06362647816463066
#>     Attrib V39    -0.04196106227602731
#>     Attrib V4    -0.1923918049792595
#>     Attrib V40    0.31217013749646566
#>     Attrib V41    -0.3280011424482957
#>     Attrib V42    -0.003356743383896918
#>     Attrib V43    -0.4749863846183271
#>     Attrib V44    -0.40772696349332754
#>     Attrib V45    -0.49130642186067813
#>     Attrib V46    0.026908373858242858
#>     Attrib V47    0.4090137064268598
#>     Attrib V48    -0.35399651526510373
#>     Attrib V49    -1.0157116883620456
#>     Attrib V5    0.06591244887319266
#>     Attrib V50    0.794927220779588
#>     Attrib V51    -0.05472465496397469
#>     Attrib V52    0.11647033457170157
#>     Attrib V53    0.059501478587812295
#>     Attrib V54    -0.23466207981976242
#>     Attrib V55    0.4445803357334674
#>     Attrib V56    0.2737338781655508
#>     Attrib V57    -0.11760111520341865
#>     Attrib V58    -0.32714069778499943
#>     Attrib V59    -0.13923787102065577
#>     Attrib V6    0.3409066349213953
#>     Attrib V60    0.17766232020854542
#>     Attrib V7    0.07102752145812585
#>     Attrib V8    0.3957428245351072
#>     Attrib V9    -0.4279744743953463
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.13239356710081446
#>     Attrib V1    0.060946438927213596
#>     Attrib V10    0.05442837601006843
#>     Attrib V11    0.06807056135611972
#>     Attrib V12    0.03136343321663308
#>     Attrib V13    0.017620922606764202
#>     Attrib V14    -0.07880380797430422
#>     Attrib V15    0.008061296109904813
#>     Attrib V16    0.09628042957054567
#>     Attrib V17    0.03451347208007054
#>     Attrib V18    -0.011173018322257615
#>     Attrib V19    0.004159863944599493
#>     Attrib V2    0.06014617400034696
#>     Attrib V20    -0.003629634122340163
#>     Attrib V21    -0.05619651065834807
#>     Attrib V22    -0.13379110812573788
#>     Attrib V23    -0.12922826826639452
#>     Attrib V24    -0.02720257393716211
#>     Attrib V25    -0.18249601553709613
#>     Attrib V26    -0.170587733906511
#>     Attrib V27    -0.09386281062364282
#>     Attrib V28    -0.05386119473736326
#>     Attrib V29    -0.08991064758907136
#>     Attrib V3    0.053109770765062014
#>     Attrib V30    -0.010269533421537322
#>     Attrib V31    -0.1974426346691108
#>     Attrib V32    0.03343772759799084
#>     Attrib V33    0.14358941257076527
#>     Attrib V34    0.11336856182789373
#>     Attrib V35    -0.023669187016822225
#>     Attrib V36    -0.1253332979660111
#>     Attrib V37    -0.10167947469479073
#>     Attrib V38    0.03357146432841433
#>     Attrib V39    0.04300555265166846
#>     Attrib V4    0.1501292469177701
#>     Attrib V40    -0.09872486780645183
#>     Attrib V41    -0.03221559658361246
#>     Attrib V42    0.050042096251803385
#>     Attrib V43    0.09836382295813097
#>     Attrib V44    0.07484068499622824
#>     Attrib V45    0.11855486166727548
#>     Attrib V46    0.041402969972441556
#>     Attrib V47    -0.053704859749047824
#>     Attrib V48    0.04238413602506547
#>     Attrib V49    0.13063308210330982
#>     Attrib V5    0.025444534863599287
#>     Attrib V50    -0.003388663123498921
#>     Attrib V51    0.06825058707565503
#>     Attrib V52    0.0011815721858095458
#>     Attrib V53    0.08108674741114932
#>     Attrib V54    0.08745397495810205
#>     Attrib V55    0.07767547496839892
#>     Attrib V56    0.05953273989422462
#>     Attrib V57    0.17292203890102542
#>     Attrib V58    0.17957813282031282
#>     Attrib V59    0.06981891603937138
#>     Attrib V6    -0.0937184641659732
#>     Attrib V60    0.057267227561245276
#>     Attrib V7    -0.009922624632655863
#>     Attrib V8    -0.019223160587757637
#>     Attrib V9    0.11108183544125662
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.1656586516894027
#>     Attrib V1    0.04103851547140492
#>     Attrib V10    -0.1172360138347239
#>     Attrib V11    -0.2523410127104106
#>     Attrib V12    -0.21257009881673547
#>     Attrib V13    -0.17370802022855772
#>     Attrib V14    0.09669897311132726
#>     Attrib V15    0.03883558757581303
#>     Attrib V16    -0.05013392157589468
#>     Attrib V17    0.03865591493182067
#>     Attrib V18    0.12816191959248696
#>     Attrib V19    0.030207668440005896
#>     Attrib V2    0.003368829487694215
#>     Attrib V20    -0.08844708508694112
#>     Attrib V21    -0.07428477353402244
#>     Attrib V22    0.04316312093762891
#>     Attrib V23    -0.08363909649426247
#>     Attrib V24    -0.06161521952704915
#>     Attrib V25    0.23665450032696744
#>     Attrib V26    0.06806801206619953
#>     Attrib V27    -0.08588933823344502
#>     Attrib V28    -0.14300926088747756
#>     Attrib V29    -0.1091552775365519
#>     Attrib V3    0.13650575153531022
#>     Attrib V30    -0.07914381261267785
#>     Attrib V31    0.372701504085982
#>     Attrib V32    0.04485324797471729
#>     Attrib V33    -0.04245824935636193
#>     Attrib V34    -0.01798971513095604
#>     Attrib V35    0.18870675881576823
#>     Attrib V36    0.2735796087305468
#>     Attrib V37    0.22536065302486571
#>     Attrib V38    0.09605757364639751
#>     Attrib V39    0.08377866266878138
#>     Attrib V4    -0.013123104127118283
#>     Attrib V40    0.17730307906735718
#>     Attrib V41    0.07694358202967727
#>     Attrib V42    0.08783736779573881
#>     Attrib V43    0.005414812448659685
#>     Attrib V44    -0.006400798454759616
#>     Attrib V45    -0.11609057823969166
#>     Attrib V46    -0.016348707671466654
#>     Attrib V47    0.07629279756926076
#>     Attrib V48    -0.0478403138632118
#>     Attrib V49    -0.2940514445177718
#>     Attrib V5    0.06754242100351332
#>     Attrib V50    0.24129667097446778
#>     Attrib V51    0.0031770417277991996
#>     Attrib V52    -0.005053456770547995
#>     Attrib V53    0.03063913352216545
#>     Attrib V54    -0.07773141866845701
#>     Attrib V55    0.12104770313222585
#>     Attrib V56    0.13569121185214084
#>     Attrib V57    0.06269112989348374
#>     Attrib V58    -0.08634537913705848
#>     Attrib V59    -0.08411659106882594
#>     Attrib V6    0.12900333239438558
#>     Attrib V60    0.03575051420365008
#>     Attrib V7    -0.06234456503117002
#>     Attrib V8    0.08047909277349276
#>     Attrib V9    -0.09787481781066304
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.18500732775205317
#>     Attrib V1    0.07106228832563538
#>     Attrib V10    0.0605010606993142
#>     Attrib V11    0.04905359523540665
#>     Attrib V12    0.004667370636141152
#>     Attrib V13    -0.018967048998743387
#>     Attrib V14    -0.025901144707805277
#>     Attrib V15    -0.0015774351414198663
#>     Attrib V16    0.04775332132129433
#>     Attrib V17    -0.011098681640476435
#>     Attrib V18    0.03204996032686463
#>     Attrib V19    -0.037292332975057504
#>     Attrib V2    0.10818262402695501
#>     Attrib V20    0.05144760040359194
#>     Attrib V21    0.022568664295107087
#>     Attrib V22    -0.06800780200402566
#>     Attrib V23    -0.04577989905508017
#>     Attrib V24    -0.05919505495088784
#>     Attrib V25    -0.11530225669104906
#>     Attrib V26    -0.08473805179771972
#>     Attrib V27    -0.05836815652660907
#>     Attrib V28    -0.09070368110608056
#>     Attrib V29    -0.11608687915636531
#>     Attrib V3    0.11239644164117653
#>     Attrib V30    -0.04809201396185274
#>     Attrib V31    -0.13452896742306916
#>     Attrib V32    0.009240553853525553
#>     Attrib V33    0.11397969392694828
#>     Attrib V34    0.10002422145302832
#>     Attrib V35    -0.002712682160748571
#>     Attrib V36    0.020008504376016905
#>     Attrib V37    -0.05620046868615151
#>     Attrib V38    0.03472209638962772
#>     Attrib V39    0.08340837268976017
#>     Attrib V4    0.10185836962204024
#>     Attrib V40    -0.04800961931570241
#>     Attrib V41    -0.04619290148605805
#>     Attrib V42    0.028821094913887495
#>     Attrib V43    0.0906358526135076
#>     Attrib V44    0.13330279453659927
#>     Attrib V45    0.03862724276049984
#>     Attrib V46    0.005263596668184384
#>     Attrib V47    0.015455780322951782
#>     Attrib V48    0.046613665641240934
#>     Attrib V49    0.13459100965201423
#>     Attrib V5    0.05755537378679521
#>     Attrib V50    -0.04445139980644485
#>     Attrib V51    0.0887116439676319
#>     Attrib V52    -0.030336453384507266
#>     Attrib V53    0.0440200327505665
#>     Attrib V54    0.0478884654034703
#>     Attrib V55    0.0785426728500218
#>     Attrib V56    0.08909976923561119
#>     Attrib V57    0.09798090212139507
#>     Attrib V58    0.10940902774176028
#>     Attrib V59    0.10975281574659299
#>     Attrib V6    -0.07958714236093084
#>     Attrib V60    0.07711408060467423
#>     Attrib V7    0.028920260456912344
#>     Attrib V8    0.05778153871080275
#>     Attrib V9    0.0870720527429924
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.3051404662827215
#>     Attrib V1    0.13109611986580424
#>     Attrib V10    0.469098555727034
#>     Attrib V11    0.6359767533241931
#>     Attrib V12    0.49365116912788687
#>     Attrib V13    0.3023434952737354
#>     Attrib V14    -0.48172454645975954
#>     Attrib V15    -0.06803210109418398
#>     Attrib V16    -0.08094282347938911
#>     Attrib V17    -0.41421117621071807
#>     Attrib V18    -0.48549095126666464
#>     Attrib V19    0.15924343085212445
#>     Attrib V2    0.3174194652927754
#>     Attrib V20    0.3968508219305512
#>     Attrib V21    0.40701051499155844
#>     Attrib V22    0.33602708267412756
#>     Attrib V23    0.471515921755324
#>     Attrib V24    0.6905071343297916
#>     Attrib V25    -0.31091228511280616
#>     Attrib V26    0.027028801359484076
#>     Attrib V27    0.3759222511782093
#>     Attrib V28    0.37230553469991096
#>     Attrib V29    -0.18950225434349666
#>     Attrib V3    -0.24338003889698692
#>     Attrib V30    0.015816849923392037
#>     Attrib V31    -1.1091875674206304
#>     Attrib V32    -0.12400358744719353
#>     Attrib V33    0.452330088838977
#>     Attrib V34    0.08144949328149022
#>     Attrib V35    -0.11238113562164591
#>     Attrib V36    -0.8225310050954892
#>     Attrib V37    -0.7612850438645098
#>     Attrib V38    0.08772834070067807
#>     Attrib V39    0.0992792197809934
#>     Attrib V4    0.28878962294171134
#>     Attrib V40    -0.28976837681846185
#>     Attrib V41    0.3353458952372079
#>     Attrib V42    0.16684240718575216
#>     Attrib V43    0.5118202664696349
#>     Attrib V44    0.3037765078962688
#>     Attrib V45    0.556480734849016
#>     Attrib V46    0.07509372245436925
#>     Attrib V47    -0.26758465745952337
#>     Attrib V48    0.2829230969798602
#>     Attrib V49    0.9872507305165769
#>     Attrib V5    0.020177794090103802
#>     Attrib V50    -0.6164040998140602
#>     Attrib V51    0.11631380487268653
#>     Attrib V52    -0.20884913156980686
#>     Attrib V53    0.1264955929447465
#>     Attrib V54    0.4149110727390936
#>     Attrib V55    -0.34650486011930093
#>     Attrib V56    -0.21482457092108634
#>     Attrib V57    0.16912909785654318
#>     Attrib V58    0.39380545886163393
#>     Attrib V59    0.33253016626212206
#>     Attrib V6    -0.4889235270216291
#>     Attrib V60    0.12312017725354929
#>     Attrib V7    -0.1832417181149654
#>     Attrib V8    -0.49728353658988833
#>     Attrib V9    0.27555443750672276
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    -0.08870581457591104
#>     Attrib V1    0.33255350727808347
#>     Attrib V10    0.26184500715023695
#>     Attrib V11    0.37344801565413993
#>     Attrib V12    0.015692932308549994
#>     Attrib V13    -0.22101024032128075
#>     Attrib V14    -0.5130870183041892
#>     Attrib V15    -0.05472342486712443
#>     Attrib V16    0.13169774955511349
#>     Attrib V17    -0.021209255739584567
#>     Attrib V18    -0.19415469847375355
#>     Attrib V19    0.25826854530592
#>     Attrib V2    0.19335875215873632
#>     Attrib V20    0.6152478487666242
#>     Attrib V21    0.6536434776819195
#>     Attrib V22    0.32663213406721703
#>     Attrib V23    0.3828519931059004
#>     Attrib V24    0.39164019767465214
#>     Attrib V25    -0.6389787326197527
#>     Attrib V26    -0.3985825926557292
#>     Attrib V27    -0.19924437607464077
#>     Attrib V28    -0.28653676218002144
#>     Attrib V29    -0.5187732417376817
#>     Attrib V3    -0.11989570508935433
#>     Attrib V30    0.19359953452471435
#>     Attrib V31    -0.9130197304425979
#>     Attrib V32    -0.10643400139279482
#>     Attrib V33    0.5267203684730756
#>     Attrib V34    0.034375668655117694
#>     Attrib V35    -0.2627500573082848
#>     Attrib V36    -0.6710214873226981
#>     Attrib V37    -0.7076782833041502
#>     Attrib V38    0.2705948287247654
#>     Attrib V39    0.10527055623583412
#>     Attrib V4    0.3932484583010039
#>     Attrib V40    -0.5302929805142725
#>     Attrib V41    -0.15897741098166185
#>     Attrib V42    0.22839055997861496
#>     Attrib V43    0.7292267251289812
#>     Attrib V44    0.6003073646699117
#>     Attrib V45    0.44063284713240225
#>     Attrib V46    -0.038203825617980136
#>     Attrib V47    -0.43552339708689597
#>     Attrib V48    0.049175604121280206
#>     Attrib V49    0.5847933211486906
#>     Attrib V5    -0.09382549902174582
#>     Attrib V50    -0.5081826605198015
#>     Attrib V51    0.1484474379353413
#>     Attrib V52    -0.39467484681115333
#>     Attrib V53    -0.13118905131390712
#>     Attrib V54    0.37662975270803284
#>     Attrib V55    -0.05992377948199355
#>     Attrib V56    0.0011276696940456918
#>     Attrib V57    0.33032775612904963
#>     Attrib V58    0.48327594218085307
#>     Attrib V59    0.47005322414160494
#>     Attrib V6    -0.7041717459934338
#>     Attrib V60    0.11960621045506979
#>     Attrib V7    -0.018431603735595232
#>     Attrib V8    -0.24424843792166318
#>     Attrib V9    0.2979251632951073
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.3186199355996866
#>     Attrib V1    0.17804039294076257
#>     Attrib V10    -1.0479825889802155
#>     Attrib V11    -0.9822506471300309
#>     Attrib V12    -1.0138382478124612
#>     Attrib V13    -0.8368415305499797
#>     Attrib V14    0.42692414827524167
#>     Attrib V15    0.4583146277831253
#>     Attrib V16    0.4458714996170854
#>     Attrib V17    0.7615470674736703
#>     Attrib V18    0.5000608755287342
#>     Attrib V19    0.016534376602434647
#>     Attrib V2    -0.5338628505781501
#>     Attrib V20    -0.08154932586088894
#>     Attrib V21    -0.07642687268451752
#>     Attrib V22    -0.5499261672430276
#>     Attrib V23    -1.0207769697298819
#>     Attrib V24    -0.9967851138375786
#>     Attrib V25    -0.05875240024481255
#>     Attrib V26    -0.582678818831087
#>     Attrib V27    -1.2574498821201516
#>     Attrib V28    -1.2807080160581992
#>     Attrib V29    -0.41924489030624706
#>     Attrib V3    0.1921760821313005
#>     Attrib V30    0.17002625822581213
#>     Attrib V31    1.078125630992952
#>     Attrib V32    -0.10793760512622007
#>     Attrib V33    -0.26364148107932345
#>     Attrib V34    -0.05855131054352865
#>     Attrib V35    -0.12720651019415136
#>     Attrib V36    0.7657175848471465
#>     Attrib V37    0.502165628877343
#>     Attrib V38    0.0994780443800035
#>     Attrib V39    -0.06322663527878636
#>     Attrib V4    -0.19849091195530671
#>     Attrib V40    -0.27497768998618627
#>     Attrib V41    -1.1170726956017223
#>     Attrib V42    0.06928454417842662
#>     Attrib V43    -0.42658777791803887
#>     Attrib V44    -0.12138214934369662
#>     Attrib V45    -0.3913644618760911
#>     Attrib V46    -0.4291560781714458
#>     Attrib V47    -0.4669593384773182
#>     Attrib V48    -1.0009703640509096
#>     Attrib V49    -1.628746984137023
#>     Attrib V5    -0.5932631665689018
#>     Attrib V50    0.10148058073778451
#>     Attrib V51    -0.6010775247026747
#>     Attrib V52    -0.5034963831779833
#>     Attrib V53    -0.7397954370984237
#>     Attrib V54    -0.2753386127502731
#>     Attrib V55    0.7699559428531213
#>     Attrib V56    0.3199897059451477
#>     Attrib V57    0.33078560511791044
#>     Attrib V58    -0.049739151143693094
#>     Attrib V59    0.2518629337448516
#>     Attrib V6    -0.1603906433711558
#>     Attrib V60    0.3143524008118623
#>     Attrib V7    0.4417926132499089
#>     Attrib V8    0.7209784367377977
#>     Attrib V9    -0.5394404397322465
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.10823685244767503
#>     Attrib V1    0.23120492367695789
#>     Attrib V10    0.06395254605395927
#>     Attrib V11    0.16331020696888754
#>     Attrib V12    -0.05616500438097252
#>     Attrib V13    -0.18614795777770926
#>     Attrib V14    -0.22836727288732991
#>     Attrib V15    0.04951671391151745
#>     Attrib V16    0.2737652691862624
#>     Attrib V17    0.07876317446586349
#>     Attrib V18    -0.092858684120079
#>     Attrib V19    0.10103249678621168
#>     Attrib V2    0.21487418742284448
#>     Attrib V20    0.2772845570469353
#>     Attrib V21    0.21945453990665115
#>     Attrib V22    -0.07601042871055538
#>     Attrib V23    -0.13680838649539523
#>     Attrib V24    -0.008756592393644388
#>     Attrib V25    -0.647603976221446
#>     Attrib V26    -0.5628054402745647
#>     Attrib V27    -0.43034120557593764
#>     Attrib V28    -0.4411124485018428
#>     Attrib V29    -0.35833071423639806
#>     Attrib V3    -0.034043884555051813
#>     Attrib V30    0.08839055599536288
#>     Attrib V31    -0.486959033035621
#>     Attrib V32    8.667082163393443E-4
#>     Attrib V33    0.39890213685614156
#>     Attrib V34    0.11993523725880027
#>     Attrib V35    -0.220770986499242
#>     Attrib V36    -0.4863250145251066
#>     Attrib V37    -0.4928791576128465
#>     Attrib V38    0.05936723553203685
#>     Attrib V39    0.026338898585281673
#>     Attrib V4    0.27490552370834637
#>     Attrib V40    -0.328235118109886
#>     Attrib V41    -0.26288404088115425
#>     Attrib V42    0.03794839382686949
#>     Attrib V43    0.3486179975670104
#>     Attrib V44    0.28903881435606915
#>     Attrib V45    0.18017055410203503
#>     Attrib V46    -0.016490689819947384
#>     Attrib V47    -0.35400470801049355
#>     Attrib V48    0.059254647798575616
#>     Attrib V49    0.3473672699556829
#>     Attrib V5    -0.12169906972967519
#>     Attrib V50    -0.328471422980146
#>     Attrib V51    -0.038750814995725635
#>     Attrib V52    -0.2434134115750965
#>     Attrib V53    -0.13682232129352445
#>     Attrib V54    0.2638077583428905
#>     Attrib V55    0.09942085271162032
#>     Attrib V56    0.09947932133970673
#>     Attrib V57    0.32820802562929563
#>     Attrib V58    0.35923220544206064
#>     Attrib V59    0.3040853885266131
#>     Attrib V6    -0.3976839659851793
#>     Attrib V60    0.15154801076741428
#>     Attrib V7    0.0335819446725094
#>     Attrib V8    -0.1351216076434279
#>     Attrib V9    0.1693928549618127
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.06906562911969685
#>     Attrib V1    0.3567780818240057
#>     Attrib V10    0.21706712518730104
#>     Attrib V11    0.4859168131040653
#>     Attrib V12    0.026620337597137864
#>     Attrib V13    -0.2535171752607847
#>     Attrib V14    -0.5993560526027293
#>     Attrib V15    -0.04078746477615835
#>     Attrib V16    0.2085668492376583
#>     Attrib V17    0.07274270833913095
#>     Attrib V18    -0.24979181079627524
#>     Attrib V19    0.2451809540441059
#>     Attrib V2    0.16164646679659406
#>     Attrib V20    0.6081840426906847
#>     Attrib V21    0.5963602535078086
#>     Attrib V22    0.19366173640239268
#>     Attrib V23    0.2634723511151707
#>     Attrib V24    0.3245357506022787
#>     Attrib V25    -0.7774955915903877
#>     Attrib V26    -0.5309780710402778
#>     Attrib V27    -0.39516875037362253
#>     Attrib V28    -0.4397096924572323
#>     Attrib V29    -0.7509733271662854
#>     Attrib V3    -0.0661305794674532
#>     Attrib V30    0.2039590948130861
#>     Attrib V31    -0.9974854398439977
#>     Attrib V32    -0.05170876294111678
#>     Attrib V33    0.6819247038201124
#>     Attrib V34    0.1265650400567875
#>     Attrib V35    -0.2806523926003251
#>     Attrib V36    -0.8482192514313756
#>     Attrib V37    -0.8889546317366535
#>     Attrib V38    0.2087743333782445
#>     Attrib V39    0.12041289045688862
#>     Attrib V4    0.49347583749468404
#>     Attrib V40    -0.6806999477536337
#>     Attrib V41    -0.2939920426365874
#>     Attrib V42    0.2877845125731766
#>     Attrib V43    0.8098847651552042
#>     Attrib V44    0.6221811598831182
#>     Attrib V45    0.5275228972720023
#>     Attrib V46    -0.040844875406668375
#>     Attrib V47    -0.47700776556370544
#>     Attrib V48    -0.0049495311710487785
#>     Attrib V49    0.651701583634455
#>     Attrib V5    -0.21304428246051732
#>     Attrib V50    -0.6405034897525862
#>     Attrib V51    -0.023503073773749515
#>     Attrib V52    -0.5088609505431653
#>     Attrib V53    -0.19434559855270303
#>     Attrib V54    0.3675385042154399
#>     Attrib V55    -0.005101265970412953
#>     Attrib V56    0.07950059239658401
#>     Attrib V57    0.4477211651314795
#>     Attrib V58    0.5673395141425225
#>     Attrib V59    0.5978216270916491
#>     Attrib V6    -0.8435733252272022
#>     Attrib V60    0.1475733735910733
#>     Attrib V7    -0.035405681399115464
#>     Attrib V8    -0.15480503286960573
#>     Attrib V9    0.35256914294225317
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.1595398286556679
#>     Attrib V1    0.011247589584210444
#>     Attrib V10    -0.20618924958147886
#>     Attrib V11    -0.30425356037604123
#>     Attrib V12    -0.19743659808168929
#>     Attrib V13    -0.17782232148143262
#>     Attrib V14    0.11542349375996015
#>     Attrib V15    0.010597150722207689
#>     Attrib V16    -0.08117677692059029
#>     Attrib V17    0.08117169683969903
#>     Attrib V18    0.11368018050031276
#>     Attrib V19    0.012732257753625575
#>     Attrib V2    -0.0974946589038813
#>     Attrib V20    -0.04494522507602321
#>     Attrib V21    -0.04721482355051774
#>     Attrib V22    -0.03156449070141281
#>     Attrib V23    -0.018322088081957823
#>     Attrib V24    -0.11416702286569756
#>     Attrib V25    0.2605783061528615
#>     Attrib V26    0.13998342293364666
#>     Attrib V27    -0.13013336201783943
#>     Attrib V28    -0.1444843624150112
#>     Attrib V29    -0.09213580615351841
#>     Attrib V3    0.1147023757976203
#>     Attrib V30    -0.1501503284488462
#>     Attrib V31    0.2833283999539578
#>     Attrib V32    0.07045141110435682
#>     Attrib V33    -0.1793239893714114
#>     Attrib V34    -0.027245606610481084
#>     Attrib V35    0.1234562228779845
#>     Attrib V36    0.3406425185484478
#>     Attrib V37    0.21785185211042854
#>     Attrib V38    0.024767629912008485
#>     Attrib V39    0.017092735625155495
#>     Attrib V4    -2.31762725695663E-4
#>     Attrib V40    0.19330945410801176
#>     Attrib V41    0.021176514188264585
#>     Attrib V42    0.036868249036819165
#>     Attrib V43    -0.029209355141797923
#>     Attrib V44    -0.08181534161298078
#>     Attrib V45    -0.204431908776774
#>     Attrib V46    0.010854096841443055
#>     Attrib V47    0.1697966472351396
#>     Attrib V48    -0.08650177038316949
#>     Attrib V49    -0.3077835735397866
#>     Attrib V5    0.02387119647548268
#>     Attrib V50    0.29626949913229367
#>     Attrib V51    0.040625772883756274
#>     Attrib V52    0.11633607635840176
#>     Attrib V53    0.01523228392301653
#>     Attrib V54    -0.09770355296863996
#>     Attrib V55    0.10715919635681828
#>     Attrib V56    0.13301156378140405
#>     Attrib V57    0.024538077347789115
#>     Attrib V58    -0.050010184597416345
#>     Attrib V59    -0.04480465644725707
#>     Attrib V6    0.1423201782245705
#>     Attrib V60    0.0042534654850258135
#>     Attrib V7    -0.07552285872855606
#>     Attrib V8    0.06861490986366013
#>     Attrib V9    -0.08527402394663824
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.32742649129582
#>     Attrib V1    -0.2193065706778535
#>     Attrib V10    0.7849798872821906
#>     Attrib V11    0.8626357572458215
#>     Attrib V12    0.89866010256229
#>     Attrib V13    0.5614039776558357
#>     Attrib V14    -0.41830257751207034
#>     Attrib V15    -0.45371153115993634
#>     Attrib V16    -0.3300453484106779
#>     Attrib V17    -0.5455660176835689
#>     Attrib V18    -0.31597793467778484
#>     Attrib V19    0.0059143419645459995
#>     Attrib V2    0.444700841797524
#>     Attrib V20    0.0782167955574614
#>     Attrib V21    0.07682627199294002
#>     Attrib V22    0.40965566170054957
#>     Attrib V23    0.8222608559276536
#>     Attrib V24    0.7210337878079188
#>     Attrib V25    -0.2063682147336995
#>     Attrib V26    0.38391298579207483
#>     Attrib V27    1.1359396819057863
#>     Attrib V28    1.1454886306182173
#>     Attrib V29    0.44235223203611096
#>     Attrib V3    -0.16562773025928854
#>     Attrib V30    -0.03201730291143864
#>     Attrib V31    -0.9534523385100809
#>     Attrib V32    0.10804150998472685
#>     Attrib V33    0.23387691405957
#>     Attrib V34    0.04983161233924882
#>     Attrib V35    0.021475549548156767
#>     Attrib V36    -0.7442535821126766
#>     Attrib V37    -0.5083224948117061
#>     Attrib V38    -0.10845170772271767
#>     Attrib V39    0.08860387196851838
#>     Attrib V4    0.23763207342550718
#>     Attrib V40    0.13338539775184652
#>     Attrib V41    0.846771301100993
#>     Attrib V42    -0.0890293555523696
#>     Attrib V43    0.5152337713799908
#>     Attrib V44    0.28299679852627835
#>     Attrib V45    0.31507115371234184
#>     Attrib V46    0.3147968813897364
#>     Attrib V47    0.28201220556660883
#>     Attrib V48    0.8676854489874318
#>     Attrib V49    1.5547686872291948
#>     Attrib V5    0.45837443533897004
#>     Attrib V50    -0.09102836541664158
#>     Attrib V51    0.4014218931915248
#>     Attrib V52    0.5112164618592291
#>     Attrib V53    0.6193152100980029
#>     Attrib V54    0.26895863925697694
#>     Attrib V55    -0.6086484205967404
#>     Attrib V56    -0.2872032498286753
#>     Attrib V57    -0.10445155178872477
#>     Attrib V58    0.11712514274953724
#>     Attrib V59    -0.1594597195838159
#>     Attrib V6    -0.0139057613870994
#>     Attrib V60    -0.34051399946078004
#>     Attrib V7    -0.555399777813188
#>     Attrib V8    -0.7923952346464147
#>     Attrib V9    0.42264561395817
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.35372853474547883
#>     Attrib V1    0.03843324158931154
#>     Attrib V10    -0.389300849074075
#>     Attrib V11    -0.563701855167153
#>     Attrib V12    -0.39264221801539323
#>     Attrib V13    -0.28453843592801226
#>     Attrib V14    0.34731716833073273
#>     Attrib V15    -0.064366107109554
#>     Attrib V16    -0.15773445169264663
#>     Attrib V17    0.14509274578806927
#>     Attrib V18    0.24752567996047067
#>     Attrib V19    0.04414510742432616
#>     Attrib V2    -0.21364382856358224
#>     Attrib V20    -0.09206433923474157
#>     Attrib V21    -0.11525977566956976
#>     Attrib V22    -0.05509902681836766
#>     Attrib V23    -0.10505669888360264
#>     Attrib V24    -0.21662564439839704
#>     Attrib V25    0.6144210537911753
#>     Attrib V26    0.3113123560326339
#>     Attrib V27    0.006876827566172787
#>     Attrib V28    -0.0994579859301606
#>     Attrib V29    -0.0058604005444148535
#>     Attrib V3    0.2218703198584634
#>     Attrib V30    -0.24409412057631022
#>     Attrib V31    0.6026231533562169
#>     Attrib V32    -0.10800664411297253
#>     Attrib V33    -0.4458396666967014
#>     Attrib V34    -0.190450868291202
#>     Attrib V35    0.2808162327034449
#>     Attrib V36    0.7595595309752948
#>     Attrib V37    0.6164509261349274
#>     Attrib V38    0.02113512336665271
#>     Attrib V39    0.0033687053157666082
#>     Attrib V4    -0.05935476494558454
#>     Attrib V40    0.16933233657870342
#>     Attrib V41    -0.23754970932759645
#>     Attrib V42    0.0550995895649424
#>     Attrib V43    -0.21557120510637182
#>     Attrib V44    -0.14515750596627122
#>     Attrib V45    -0.327839160466411
#>     Attrib V46    -0.025487923820213594
#>     Attrib V47    0.23217042682187375
#>     Attrib V48    -0.25263636398453737
#>     Attrib V49    -0.7010142243738144
#>     Attrib V5    0.02903219434074672
#>     Attrib V50    0.6041382916057187
#>     Attrib V51    -0.04053954715336901
#>     Attrib V52    0.1665296564721388
#>     Attrib V53    0.046776614664837395
#>     Attrib V54    -0.17676425301626955
#>     Attrib V55    0.23491047805132706
#>     Attrib V56    0.1597326212399634
#>     Attrib V57    -0.07765895183513526
#>     Attrib V58    -0.1572323454079327
#>     Attrib V59    -0.14698208323611683
#>     Attrib V6    0.2728323523724091
#>     Attrib V60    0.08363869261706876
#>     Attrib V7    -0.048050744464851074
#>     Attrib V8    0.1982605911438674
#>     Attrib V9    -0.31963555321221665
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.044528963444439226
#>     Attrib V1    0.35557408926385714
#>     Attrib V10    0.2995200903848711
#>     Attrib V11    0.49153709150164693
#>     Attrib V12    0.05176817189058671
#>     Attrib V13    -0.1737767493234241
#>     Attrib V14    -0.6399613908758697
#>     Attrib V15    -0.057756267401796645
#>     Attrib V16    0.19601581791078232
#>     Attrib V17    -0.0688189373246231
#>     Attrib V18    -0.22254900306282355
#>     Attrib V19    0.23355352072726834
#>     Attrib V2    0.2145618856376285
#>     Attrib V20    0.5269441343793382
#>     Attrib V21    0.5949766129570004
#>     Attrib V22    0.21225620971961756
#>     Attrib V23    0.22256583926431217
#>     Attrib V24    0.41029117453086766
#>     Attrib V25    -0.7182880235225132
#>     Attrib V26    -0.4277857586652419
#>     Attrib V27    -0.31000334923407186
#>     Attrib V28    -0.37492816600870693
#>     Attrib V29    -0.6455306126178016
#>     Attrib V3    -0.1503723809248344
#>     Attrib V30    0.160536835849177
#>     Attrib V31    -0.9647443486939403
#>     Attrib V32    -0.015197593889982198
#>     Attrib V33    0.6321360463462296
#>     Attrib V34    0.12783764390229113
#>     Attrib V35    -0.33626414365372237
#>     Attrib V36    -0.8717715184864138
#>     Attrib V37    -0.9185869659153983
#>     Attrib V38    0.18485006533655202
#>     Attrib V39    0.12103061357914462
#>     Attrib V4    0.40300097760107806
#>     Attrib V40    -0.6395523519007612
#>     Attrib V41    -0.1560061345742711
#>     Attrib V42    0.24086753276824996
#>     Attrib V43    0.6360377405945242
#>     Attrib V44    0.5789718904731254
#>     Attrib V45    0.5463475724565966
#>     Attrib V46    -0.059790614473481156
#>     Attrib V47    -0.4883546347525336
#>     Attrib V48    0.14721321574429092
#>     Attrib V49    0.7109460416520913
#>     Attrib V5    -0.16719529768230235
#>     Attrib V50    -0.5633424868634346
#>     Attrib V51    0.04554609431435531
#>     Attrib V52    -0.45648842948342117
#>     Attrib V53    -0.1367659508998895
#>     Attrib V54    0.40960883664588466
#>     Attrib V55    -0.032193108314880904
#>     Attrib V56    -0.06387162634315417
#>     Attrib V57    0.4248158027137079
#>     Attrib V58    0.5347141250091428
#>     Attrib V59    0.5354903896008897
#>     Attrib V6    -0.6896642651132674
#>     Attrib V60    0.14635709528219665
#>     Attrib V7    -0.07258691617183181
#>     Attrib V8    -0.16626836617747576
#>     Attrib V9    0.3520039734110397
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.3637273803363988
#>     Attrib V1    0.25537962365436356
#>     Attrib V10    -1.242876254108919
#>     Attrib V11    -1.0338861819652838
#>     Attrib V12    -1.2937327742904245
#>     Attrib V13    -1.0903971657365545
#>     Attrib V14    0.4496776067636176
#>     Attrib V15    0.6371089524533202
#>     Attrib V16    0.6277850146032006
#>     Attrib V17    0.8333375099847237
#>     Attrib V18    0.6246046924045402
#>     Attrib V19    0.0819954325209046
#>     Attrib V2    -0.638230499513209
#>     Attrib V20    -0.026765929298767987
#>     Attrib V21    0.04950109235201554
#>     Attrib V22    -0.5656413686567181
#>     Attrib V23    -1.3032127668125084
#>     Attrib V24    -1.3029667276794503
#>     Attrib V25    -0.4029838215365069
#>     Attrib V26    -0.865603671846111
#>     Attrib V27    -1.4888581484501753
#>     Attrib V28    -1.4884393645434268
#>     Attrib V29    -0.3800553596115989
#>     Attrib V3    0.19109628043799337
#>     Attrib V30    0.42621706441490176
#>     Attrib V31    1.1156634679472448
#>     Attrib V32    -0.06267472071100687
#>     Attrib V33    -0.24001111585969995
#>     Attrib V34    -0.10498326335977597
#>     Attrib V35    -0.23774369034172574
#>     Attrib V36    0.8176212902016744
#>     Attrib V37    0.44903276963011224
#>     Attrib V38    0.2773128546930026
#>     Attrib V39    -0.08133121946387195
#>     Attrib V4    -0.27599930623620944
#>     Attrib V40    -0.6001333698034718
#>     Attrib V41    -1.6449630355989047
#>     Attrib V42    0.1162982787382275
#>     Attrib V43    -0.2733959943473469
#>     Attrib V44    5.986295095732003E-4
#>     Attrib V45    -0.3635483748315655
#>     Attrib V46    -0.4401889832229362
#>     Attrib V47    -0.6113437087655841
#>     Attrib V48    -1.1806353150642859
#>     Attrib V49    -1.7607464844081586
#>     Attrib V5    -0.9226986728683388
#>     Attrib V50    0.03894894921474494
#>     Attrib V51    -0.8365268794264948
#>     Attrib V52    -0.5529805347405465
#>     Attrib V53    -0.8848011807141871
#>     Attrib V54    -0.15803335052613904
#>     Attrib V55    1.0210338966728265
#>     Attrib V56    0.3440202193130457
#>     Attrib V57    0.22281977958230204
#>     Attrib V58    0.059585189189613544
#>     Attrib V59    0.23768934530161803
#>     Attrib V6    -0.36731133595375
#>     Attrib V60    0.2612997968058043
#>     Attrib V7    0.4104154827475062
#>     Attrib V8    0.8229668372369852
#>     Attrib V9    -0.6169846277646623
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.05089306089323617
#>     Attrib V1    0.20751217287823834
#>     Attrib V10    0.13423101019990277
#>     Attrib V11    0.3590357666262955
#>     Attrib V12    0.04546240532907742
#>     Attrib V13    -0.13773240491138042
#>     Attrib V14    -0.36157276947263817
#>     Attrib V15    0.0224889571839432
#>     Attrib V16    0.1831428741155698
#>     Attrib V17    -0.011078251545191329
#>     Attrib V18    -0.1946719695263955
#>     Attrib V19    0.13680961012086743
#>     Attrib V2    0.18863627052221946
#>     Attrib V20    0.45231969130830535
#>     Attrib V21    0.43743454769987955
#>     Attrib V22    0.12977245997754144
#>     Attrib V23    0.05554844936555996
#>     Attrib V24    0.22096170715767294
#>     Attrib V25    -0.6028085634743626
#>     Attrib V26    -0.5198200454358093
#>     Attrib V27    -0.3339124564942678
#>     Attrib V28    -0.34992101017168736
#>     Attrib V29    -0.46013466130068714
#>     Attrib V3    -0.04716730778231696
#>     Attrib V30    0.05049910506091352
#>     Attrib V31    -0.7746501806495226
#>     Attrib V32    -0.005234301723660014
#>     Attrib V33    0.5315903225049109
#>     Attrib V34    0.13553770170336968
#>     Attrib V35    -0.24914764463092978
#>     Attrib V36    -0.682580676250811
#>     Attrib V37    -0.6843547476563802
#>     Attrib V38    0.11660798851306368
#>     Attrib V39    0.0819663759280552
#>     Attrib V4    0.28784189662202714
#>     Attrib V40    -0.45366788143776204
#>     Attrib V41    -0.1476800222098815
#>     Attrib V42    0.1344667016350893
#>     Attrib V43    0.528469439955555
#>     Attrib V44    0.35857737124998806
#>     Attrib V45    0.3974467032688567
#>     Attrib V46    -0.019827134442417564
#>     Attrib V47    -0.3391818863889163
#>     Attrib V48    0.067308074842329
#>     Attrib V49    0.5163639665594741
#>     Attrib V5    -0.1713610637360723
#>     Attrib V50    -0.42694080480445573
#>     Attrib V51    0.04194252152952101
#>     Attrib V52    -0.32743962912311514
#>     Attrib V53    -0.14183951640270898
#>     Attrib V54    0.2814190763859553
#>     Attrib V55    0.036929468549439175
#>     Attrib V56    0.04007458609640705
#>     Attrib V57    0.35317996095164983
#>     Attrib V58    0.3784979501337103
#>     Attrib V59    0.3829910091614261
#>     Attrib V6    -0.5447680478902212
#>     Attrib V60    0.14300801735254237
#>     Attrib V7    -0.03185436646573432
#>     Attrib V8    -0.13381879442222186
#>     Attrib V9    0.2291536666081612
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.16500453881860394
#>     Attrib V1    0.0828548859989541
#>     Attrib V10    0.05624822115999934
#>     Attrib V11    -0.017493158409818764
#>     Attrib V12    0.023307967583812372
#>     Attrib V13    0.016220428922905004
#>     Attrib V14    0.031732866103151784
#>     Attrib V15    0.035747431768151754
#>     Attrib V16    0.03748313265249326
#>     Attrib V17    0.08961150318890987
#>     Attrib V18    0.04102667577781395
#>     Attrib V19    -0.013261995111980514
#>     Attrib V2    0.08828969742908135
#>     Attrib V20    -0.026665534073738676
#>     Attrib V21    0.0027293657542754052
#>     Attrib V22    -0.02564252035009965
#>     Attrib V23    -0.03506991345474459
#>     Attrib V24    -0.07452786399696511
#>     Attrib V25    0.022614637514171854
#>     Attrib V26    0.005122785491268873
#>     Attrib V27    -0.07197325249346506
#>     Attrib V28    -0.07771129987590832
#>     Attrib V29    -0.12930658432590522
#>     Attrib V3    0.07633346951331063
#>     Attrib V30    -0.026201315896649906
#>     Attrib V31    0.0711127910610251
#>     Attrib V32    0.004518474617990071
#>     Attrib V33    -0.0025627630893462244
#>     Attrib V34    0.01689418752269546
#>     Attrib V35    0.08175727870301853
#>     Attrib V36    0.06090671473722403
#>     Attrib V37    0.10626986942569842
#>     Attrib V38    0.02619033453044293
#>     Attrib V39    0.12305840573934718
#>     Attrib V4    0.11785163377680681
#>     Attrib V40    0.09246641537908794
#>     Attrib V41    0.05364227652856468
#>     Attrib V42    0.09289017704752564
#>     Attrib V43    0.040968882479651476
#>     Attrib V44    0.026259281874130173
#>     Attrib V45    0.027803959483169226
#>     Attrib V46    0.034414943889066615
#>     Attrib V47    0.028277356693230594
#>     Attrib V48    0.06038215796334558
#>     Attrib V49    -0.0010321277300303425
#>     Attrib V5    0.04430115853357035
#>     Attrib V50    0.0562858220159344
#>     Attrib V51    0.024944827926420776
#>     Attrib V52    0.00793335598116189
#>     Attrib V53    0.04906513568983356
#>     Attrib V54    0.03208218841882789
#>     Attrib V55    0.04041299259768026
#>     Attrib V56    0.1321787371336172
#>     Attrib V57    0.07219202758548603
#>     Attrib V58    0.09087212369665186
#>     Attrib V59    0.08947912165636251
#>     Attrib V6    0.04056230012881794
#>     Attrib V60    0.053424356904911416
#>     Attrib V7    -0.05303962997648704
#>     Attrib V8    0.021902950762663322
#>     Attrib V9    0.02165331712147466
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.15360472544894646
#>     Attrib V1    0.3375698910147497
#>     Attrib V10    0.06867917806793972
#>     Attrib V11    0.3130755571397208
#>     Attrib V12    -0.11268489449602773
#>     Attrib V13    -0.2381587253623954
#>     Attrib V14    -0.379897458148506
#>     Attrib V15    0.12028247402646519
#>     Attrib V16    0.321739688079314
#>     Attrib V17    0.14642549114221085
#>     Attrib V18    -0.15165098826250895
#>     Attrib V19    0.17136707230803505
#>     Attrib V2    0.28554645208837076
#>     Attrib V20    0.4638513893970779
#>     Attrib V21    0.3765404490256361
#>     Attrib V22    0.02126093858739338
#>     Attrib V23    -0.02079386518520141
#>     Attrib V24    0.08115101139983534
#>     Attrib V25    -0.8967981890788228
#>     Attrib V26    -0.6905422464156107
#>     Attrib V27    -0.6137360382898824
#>     Attrib V28    -0.6647227440080679
#>     Attrib V29    -0.7214317651305212
#>     Attrib V3    -0.04367987651251015
#>     Attrib V30    0.1349583235171143
#>     Attrib V31    -0.7607437743135858
#>     Attrib V32    -0.03239710864114323
#>     Attrib V33    0.6728078318310172
#>     Attrib V34    0.2245048312344271
#>     Attrib V35    -0.28811013114265205
#>     Attrib V36    -0.7331003023935113
#>     Attrib V37    -0.7858564124769905
#>     Attrib V38    0.17912253882468412
#>     Attrib V39    0.04176351823468946
#>     Attrib V4    0.4231921376760899
#>     Attrib V40    -0.5971149485504452
#>     Attrib V41    -0.39404697818993106
#>     Attrib V42    0.17653553416404302
#>     Attrib V43    0.5843293202014602
#>     Attrib V44    0.5673965496903233
#>     Attrib V45    0.39347724698620695
#>     Attrib V46    -0.09242173822794891
#>     Attrib V47    -0.5443087352706931
#>     Attrib V48    -0.032364987281668686
#>     Attrib V49    0.4517180257186715
#>     Attrib V5    -0.2594865900948679
#>     Attrib V50    -0.5693527746910954
#>     Attrib V51    -0.06776511079348853
#>     Attrib V52    -0.47937114961130695
#>     Attrib V53    -0.24360635764993838
#>     Attrib V54    0.38481782682431687
#>     Attrib V55    0.1414259735889931
#>     Attrib V56    0.11573383149462368
#>     Attrib V57    0.47805583576161187
#>     Attrib V58    0.48353920762483915
#>     Attrib V59    0.5350432869333495
#>     Attrib V6    -0.6302741581999031
#>     Attrib V60    0.24453001599778507
#>     Attrib V7    0.0894254634826043
#>     Attrib V8    -0.04961696775184038
#>     Attrib V9    0.28500552451670685
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.09632151133743828
#>     Attrib V1    0.13830644439089632
#>     Attrib V10    -0.0061708202740362065
#>     Attrib V11    0.12265917317816581
#>     Attrib V12    -0.010696229864536902
#>     Attrib V13    -0.13513715315244096
#>     Attrib V14    -0.127608832517257
#>     Attrib V15    0.06332217916152162
#>     Attrib V16    0.17142412749865493
#>     Attrib V17    0.017524538296086307
#>     Attrib V18    -8.560762988702717E-4
#>     Attrib V19    0.03484548526656307
#>     Attrib V2    0.13084981198565748
#>     Attrib V20    0.17775330629790906
#>     Attrib V21    0.15131183471955437
#>     Attrib V22    -0.05759751894550578
#>     Attrib V23    -0.03999427349109686
#>     Attrib V24    -0.05649457700787616
#>     Attrib V25    -0.5165856243515232
#>     Attrib V26    -0.40452031594291155
#>     Attrib V27    -0.25407341484537194
#>     Attrib V28    -0.19586981386562344
#>     Attrib V29    -0.21931165967658908
#>     Attrib V3    0.014136428929946284
#>     Attrib V30    0.10919260783910562
#>     Attrib V31    -0.4249354986566356
#>     Attrib V32    -0.01094706689238569
#>     Attrib V33    0.3260643529133798
#>     Attrib V34    0.10978076574171261
#>     Attrib V35    -0.11987431288265478
#>     Attrib V36    -0.27713927791628296
#>     Attrib V37    -0.31320095539834364
#>     Attrib V38    0.04789859147576216
#>     Attrib V39    0.06618004255526681
#>     Attrib V4    0.18392018731229515
#>     Attrib V40    -0.2503731928412003
#>     Attrib V41    -0.16803573311773654
#>     Attrib V42    0.052857717481619215
#>     Attrib V43    0.19753555968833283
#>     Attrib V44    0.24456517934287011
#>     Attrib V45    0.20888521373590763
#>     Attrib V46    -0.016543979768194942
#>     Attrib V47    -0.22238130028510159
#>     Attrib V48    0.0018139274500958802
#>     Attrib V49    0.2974400809783602
#>     Attrib V5    -0.06384688120366028
#>     Attrib V50    -0.24027557867825824
#>     Attrib V51    0.0010328980569881477
#>     Attrib V52    -0.1374730874760131
#>     Attrib V53    -0.044596742192037166
#>     Attrib V54    0.13635051895683376
#>     Attrib V55    0.021056294750727688
#>     Attrib V56    0.03633049037591042
#>     Attrib V57    0.22370998409772028
#>     Attrib V58    0.269344527201232
#>     Attrib V59    0.17163310892756628
#>     Attrib V6    -0.26532224500668133
#>     Attrib V60    0.052767636098168216
#>     Attrib V7    0.0011643824099036649
#>     Attrib V8    -0.03753116366727099
#>     Attrib V9    0.13692451231304884
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
