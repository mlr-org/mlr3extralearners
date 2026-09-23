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
#>     Threshold    -0.9459164126721741
#>     Node 2    1.9508397381567513
#>     Node 3    1.5510212939349608
#>     Node 4    1.524833958932359
#>     Node 5    -2.398942708413092
#>     Node 6    1.700456549147638
#>     Node 7    3.324936289238133
#>     Node 8    0.9590741816324776
#>     Node 9    2.4073007202792
#>     Node 10    -1.7294404662589975
#>     Node 11    1.2556960662356733
#>     Node 12    1.5959900813156527
#>     Node 13    0.05816110906495862
#>     Node 14    1.217359660229973
#>     Node 15    -2.505285253350927
#>     Node 16    0.17642349821824932
#>     Node 17    1.1778401752720336
#>     Node 18    -1.7412093794737264
#>     Node 19    1.9373887281088673
#>     Node 20    1.4619670840202876
#>     Node 21    -2.3359472071263845
#>     Node 22    1.3476681133733421
#>     Node 23    1.6902874478426266
#>     Node 24    -0.651439540904454
#>     Node 25    4.783228466864457
#>     Node 26    0.12624069167973576
#>     Node 27    2.701496060172485
#>     Node 28    -1.175126763805102
#>     Node 29    1.1584563236922318
#>     Node 30    -1.341678300923258
#>     Node 31    1.6206093028451332
#>     Node 32    0.8454381418424807
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.9429012200239291
#>     Node 2    -1.9807059949106591
#>     Node 3    -1.544389598012675
#>     Node 4    -1.4984239560859247
#>     Node 5    2.4198123300264993
#>     Node 6    -1.6930719183385126
#>     Node 7    -3.3051054008142255
#>     Node 8    -0.9791330621212816
#>     Node 9    -2.3805614314723793
#>     Node 10    1.651346884490866
#>     Node 11    -1.214922885456118
#>     Node 12    -1.6501772352262878
#>     Node 13    0.005589128171896829
#>     Node 14    -1.1462077401410704
#>     Node 15    2.489034276778728
#>     Node 16    -0.18779645383742988
#>     Node 17    -1.1551394131269823
#>     Node 18    1.7713700710942168
#>     Node 19    -1.9079581647041497
#>     Node 20    -1.4450042400746528
#>     Node 21    2.3742292181129847
#>     Node 22    -1.4104873691284923
#>     Node 23    -1.7484889343270167
#>     Node 24    0.6461757216180631
#>     Node 25    -4.767871181883052
#>     Node 26    -0.20218761663317655
#>     Node 27    -2.7285631512471378
#>     Node 28    1.125618975613716
#>     Node 29    -1.1751745198410586
#>     Node 30    1.4094998279281217
#>     Node 31    -1.5790810152250656
#>     Node 32    -0.873027995090844
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.15830772507311464
#>     Attrib V1    0.10108701649482443
#>     Attrib V10    -0.2084131490192962
#>     Attrib V11    0.2802210700756315
#>     Attrib V12    0.6916720423622382
#>     Attrib V13    -0.20402414645703132
#>     Attrib V14    -0.4406341346633544
#>     Attrib V15    -0.15645606028203965
#>     Attrib V16    0.15898383148695305
#>     Attrib V17    -0.11183613312784418
#>     Attrib V18    -0.30324326222315284
#>     Attrib V19    -0.2329546808351882
#>     Attrib V2    0.349523891749842
#>     Attrib V20    0.38213264144756454
#>     Attrib V21    0.06777067923168034
#>     Attrib V22    0.5423670336728198
#>     Attrib V23    0.5955650393612018
#>     Attrib V24    0.19698333385272299
#>     Attrib V25    -0.2571101418568412
#>     Attrib V26    -0.8810138225919483
#>     Attrib V27    -0.02549416222820263
#>     Attrib V28    0.9045757581382384
#>     Attrib V29    0.744516446318305
#>     Attrib V3    -0.28808948553236335
#>     Attrib V30    0.5384154200220381
#>     Attrib V31    -1.0212797012330403
#>     Attrib V32    0.7883345279726871
#>     Attrib V33    0.21598773328818904
#>     Attrib V34    -0.3671345547514505
#>     Attrib V35    -0.5515933617541198
#>     Attrib V36    -0.5263922451185377
#>     Attrib V37    0.07110133641873687
#>     Attrib V38    0.3596035149343967
#>     Attrib V39    0.044155017643234706
#>     Attrib V4    0.21689494980165314
#>     Attrib V40    -0.36228840618458485
#>     Attrib V41    0.604871382192995
#>     Attrib V42    0.33560059455696833
#>     Attrib V43    -0.2300567583185585
#>     Attrib V44    0.41139722150626634
#>     Attrib V45    0.8978532045589721
#>     Attrib V46    0.23144574541022628
#>     Attrib V47    -0.14881943143972187
#>     Attrib V48    0.23393643506306716
#>     Attrib V49    0.4104964144848681
#>     Attrib V5    -0.24893319865285005
#>     Attrib V50    -1.0676276925605377
#>     Attrib V51    0.11170725455653815
#>     Attrib V52    0.7244408608358995
#>     Attrib V53    -0.19239427696975356
#>     Attrib V54    0.29524027921380397
#>     Attrib V55    -0.26320960279984956
#>     Attrib V56    -0.09696929986832506
#>     Attrib V57    0.21985837352550447
#>     Attrib V58    -0.27171465777000403
#>     Attrib V59    0.44349289163484046
#>     Attrib V6    -0.2422724742983005
#>     Attrib V60    0.4668576134767851
#>     Attrib V7    -0.8943795090509193
#>     Attrib V8    -0.5749908982263326
#>     Attrib V9    0.4688224253124558
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.05974365025521616
#>     Attrib V1    0.23420999334010853
#>     Attrib V10    -0.45717121445546266
#>     Attrib V11    -0.20249289697948847
#>     Attrib V12    -0.11036994353593531
#>     Attrib V13    -0.2207267358715725
#>     Attrib V14    0.1998420737540534
#>     Attrib V15    0.5323840895760488
#>     Attrib V16    0.5120531764422985
#>     Attrib V17    0.0762006850878505
#>     Attrib V18    -0.16982185431479055
#>     Attrib V19    0.10276401014704123
#>     Attrib V2    0.3926488462872863
#>     Attrib V20    0.4782635250690621
#>     Attrib V21    0.242190227914835
#>     Attrib V22    0.43204929418600874
#>     Attrib V23    0.4317109175789214
#>     Attrib V24    0.1740959796824686
#>     Attrib V25    -0.2304043737653787
#>     Attrib V26    -0.9178650272103906
#>     Attrib V27    -0.4888953835051311
#>     Attrib V28    0.238502083915482
#>     Attrib V29    0.2882631632341357
#>     Attrib V3    -0.12995788782085832
#>     Attrib V30    0.1551142539324294
#>     Attrib V31    -0.7851085318402138
#>     Attrib V32    0.6448370902336438
#>     Attrib V33    0.25776039092870834
#>     Attrib V34    -0.3288756244466239
#>     Attrib V35    -0.58855590036033
#>     Attrib V36    -0.7496092102751728
#>     Attrib V37    -0.36324763534084775
#>     Attrib V38    0.1685275565283218
#>     Attrib V39    0.17569056611492992
#>     Attrib V4    0.20512315084572544
#>     Attrib V40    -0.30351296611151407
#>     Attrib V41    0.2246166282383461
#>     Attrib V42    0.2458760794768456
#>     Attrib V43    -0.1951670574642502
#>     Attrib V44    0.2760511523715605
#>     Attrib V45    0.4096710328255092
#>     Attrib V46    -0.014633243714461225
#>     Attrib V47    -0.08870700138609111
#>     Attrib V48    0.24042167263129757
#>     Attrib V49    0.34305842935281267
#>     Attrib V5    -0.2724749672539614
#>     Attrib V50    -0.6199032224641112
#>     Attrib V51    0.04684183898728391
#>     Attrib V52    0.2943450014636644
#>     Attrib V53    0.07999304940604628
#>     Attrib V54    0.34353236856749064
#>     Attrib V55    0.4727147304993901
#>     Attrib V56    0.34107733480073754
#>     Attrib V57    0.40716140815254837
#>     Attrib V58    0.3449576193440411
#>     Attrib V59    0.5322826011257872
#>     Attrib V6    -0.1607207391918363
#>     Attrib V60    0.20571151725367828
#>     Attrib V7    -0.36244022995353925
#>     Attrib V8    -0.2935090150440771
#>     Attrib V9    0.034535926185084345
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.06313898698498167
#>     Attrib V1    0.21236255170906043
#>     Attrib V10    -0.588725775729269
#>     Attrib V11    -0.36602210566367105
#>     Attrib V12    -0.2933196070360086
#>     Attrib V13    -0.23554267974174561
#>     Attrib V14    0.2972656633748664
#>     Attrib V15    0.5900848171444578
#>     Attrib V16    0.5733966732471321
#>     Attrib V17    0.19692190373817914
#>     Attrib V18    -0.07299652491848459
#>     Attrib V19    0.10598690078222184
#>     Attrib V2    0.3249178659242083
#>     Attrib V20    0.5125801659766267
#>     Attrib V21    0.3867759495622868
#>     Attrib V22    0.32447723882639523
#>     Attrib V23    0.3596417388902244
#>     Attrib V24    0.14295986451513437
#>     Attrib V25    -0.2691036179885619
#>     Attrib V26    -0.8796986391158683
#>     Attrib V27    -0.6106550393769397
#>     Attrib V28    0.09740591452425743
#>     Attrib V29    0.24114178301195394
#>     Attrib V3    -0.04884134095776417
#>     Attrib V30    -0.01596974375418713
#>     Attrib V31    -0.8391918491902077
#>     Attrib V32    0.47653697317693516
#>     Attrib V33    0.2922401777528175
#>     Attrib V34    -0.2100249736215505
#>     Attrib V35    -0.4724986473081021
#>     Attrib V36    -0.6108171439315923
#>     Attrib V37    -0.28748139498831254
#>     Attrib V38    0.21599229672111622
#>     Attrib V39    0.2081164144985579
#>     Attrib V4    0.2161521846384009
#>     Attrib V40    -0.28425192524084714
#>     Attrib V41    0.10194284866512175
#>     Attrib V42    0.2799706112888753
#>     Attrib V43    -0.1317824127378657
#>     Attrib V44    0.3137332371328071
#>     Attrib V45    0.40568039047624443
#>     Attrib V46    -0.052732111185771924
#>     Attrib V47    -0.19165232010921324
#>     Attrib V48    0.20352277575166378
#>     Attrib V49    0.28458957348534125
#>     Attrib V5    -0.191180928637415
#>     Attrib V50    -0.4578585112688814
#>     Attrib V51    0.0471429014329421
#>     Attrib V52    0.11698221090657035
#>     Attrib V53    0.16557149502856106
#>     Attrib V54    0.3399296416772664
#>     Attrib V55    0.47544218350413314
#>     Attrib V56    0.39657661436867936
#>     Attrib V57    0.44919173521920347
#>     Attrib V58    0.3089341992140128
#>     Attrib V59    0.5324637605834867
#>     Attrib V6    -0.11430911243554896
#>     Attrib V60    0.199812477759494
#>     Attrib V7    -0.19411229294091914
#>     Attrib V8    -0.30001986823149246
#>     Attrib V9    -0.01790073364540855
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.7875481469785466
#>     Attrib V1    0.18728201102004563
#>     Attrib V10    -0.3671370309102809
#>     Attrib V11    -0.9765486390538188
#>     Attrib V12    -1.1269039043131286
#>     Attrib V13    -0.19881045779015344
#>     Attrib V14    0.2787998744372345
#>     Attrib V15    -0.02546090791843186
#>     Attrib V16    -0.3361160378265147
#>     Attrib V17    0.2963204001096016
#>     Attrib V18    0.6375316382688645
#>     Attrib V19    0.13241953021149416
#>     Attrib V2    -0.057186913702777266
#>     Attrib V20    -0.6971376862033741
#>     Attrib V21    -0.2989396148729217
#>     Attrib V22    -0.7092428031259815
#>     Attrib V23    -0.7293395918074298
#>     Attrib V24    -0.3450882684774254
#>     Attrib V25    0.381307728263843
#>     Attrib V26    0.7269476837242763
#>     Attrib V27    -0.03216665199340702
#>     Attrib V28    -0.7156672960573345
#>     Attrib V29    -0.16873986652335368
#>     Attrib V3    0.48091993705998004
#>     Attrib V30    -0.18598958948299413
#>     Attrib V31    1.232377686984689
#>     Attrib V32    -0.5366692751837565
#>     Attrib V33    -0.22964654429265005
#>     Attrib V34    0.05365272143939251
#>     Attrib V35    0.7336242967819802
#>     Attrib V36    0.8459316706967409
#>     Attrib V37    0.14734176939676447
#>     Attrib V38    -0.6606917123561331
#>     Attrib V39    -0.48593595823734237
#>     Attrib V4    -0.30045295486104173
#>     Attrib V40    0.18687696105892734
#>     Attrib V41    -0.6451514093598872
#>     Attrib V42    -0.041831602247531054
#>     Attrib V43    0.12943182455214142
#>     Attrib V44    -0.3370751009925179
#>     Attrib V45    -0.8060053881281383
#>     Attrib V46    -0.2245830516949066
#>     Attrib V47    0.45350687953103225
#>     Attrib V48    0.19659133629067507
#>     Attrib V49    -0.33635860894758024
#>     Attrib V5    -0.026614330738645654
#>     Attrib V50    1.6586344720342212
#>     Attrib V51    0.15718665628417358
#>     Attrib V52    -0.49216563786481804
#>     Attrib V53    0.0296560704505119
#>     Attrib V54    0.2358767059838212
#>     Attrib V55    -0.11593447564002907
#>     Attrib V56    0.33860460794983127
#>     Attrib V57    -0.4601074893706647
#>     Attrib V58    0.04093335523391826
#>     Attrib V59    -0.5751343416808535
#>     Attrib V6    -0.1015005763231053
#>     Attrib V60    -0.011107055783485918
#>     Attrib V7    0.44552374815917184
#>     Attrib V8    0.19944857959718648
#>     Attrib V9    -0.9298411182077373
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.013391879312727272
#>     Attrib V1    0.3179514751482037
#>     Attrib V10    -0.7292236116199922
#>     Attrib V11    -0.5479956177067326
#>     Attrib V12    -0.38976516379847403
#>     Attrib V13    -0.31293791727402004
#>     Attrib V14    0.3242400033539485
#>     Attrib V15    0.6531238850305954
#>     Attrib V16    0.6926114014749135
#>     Attrib V17    0.17768994633431168
#>     Attrib V18    -0.07187489448647841
#>     Attrib V19    0.029492673989319946
#>     Attrib V2    0.3640699186677858
#>     Attrib V20    0.5062822291156933
#>     Attrib V21    0.4195991982369072
#>     Attrib V22    0.2777606668958103
#>     Attrib V23    0.2519523266442619
#>     Attrib V24    0.15739874559056005
#>     Attrib V25    -0.2154274489653117
#>     Attrib V26    -0.9043856196448921
#>     Attrib V27    -0.6761676596478629
#>     Attrib V28    -0.17168267307406063
#>     Attrib V29    0.01868619951678017
#>     Attrib V3    -0.06907881186396769
#>     Attrib V30    -0.19774331778599274
#>     Attrib V31    -0.8892283902265397
#>     Attrib V32    0.5200462879317619
#>     Attrib V33    0.3355205652436351
#>     Attrib V34    -0.20625270542219584
#>     Attrib V35    -0.4719165000971993
#>     Attrib V36    -0.5963912179237623
#>     Attrib V37    -0.2195267973763556
#>     Attrib V38    0.2891377928271826
#>     Attrib V39    0.22736333210553233
#>     Attrib V4    0.2865062019848538
#>     Attrib V40    -0.3286527233139825
#>     Attrib V41    0.10055748361112699
#>     Attrib V42    0.29939505408542944
#>     Attrib V43    -0.07311361106002158
#>     Attrib V44    0.26221854328216204
#>     Attrib V45    0.23156041875657812
#>     Attrib V46    -0.054847633719219066
#>     Attrib V47    -0.23616959532759269
#>     Attrib V48    0.11485746896441282
#>     Attrib V49    0.1574497673732908
#>     Attrib V5    -0.2180095042920389
#>     Attrib V50    -0.38917312079116917
#>     Attrib V51    -0.01084394291804398
#>     Attrib V52    -0.02477275214965459
#>     Attrib V53    0.1996486981138724
#>     Attrib V54    0.4601792235463767
#>     Attrib V55    0.559847541670192
#>     Attrib V56    0.466818067650072
#>     Attrib V57    0.54472569675598
#>     Attrib V58    0.4013439464658394
#>     Attrib V59    0.6543550106961379
#>     Attrib V6    -7.172342371054307E-4
#>     Attrib V60    0.3206479485720428
#>     Attrib V7    -0.061850948089405756
#>     Attrib V8    -0.22405757506050683
#>     Attrib V9    -0.10339396927216227
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.2139198938258812
#>     Attrib V1    0.3165587350926313
#>     Attrib V10    0.9679960578289694
#>     Attrib V11    1.4321075341843874
#>     Attrib V12    1.7619873646698776
#>     Attrib V13    0.37394524288937264
#>     Attrib V14    -0.5468560448003557
#>     Attrib V15    -0.744606728431554
#>     Attrib V16    -0.6152935397823697
#>     Attrib V17    -0.9064478098963957
#>     Attrib V18    -0.686695498860642
#>     Attrib V19    -0.6164204483664495
#>     Attrib V2    0.3275895220431904
#>     Attrib V20    -0.28909162857937015
#>     Attrib V21    -0.2858374620412684
#>     Attrib V22    0.6799378867210556
#>     Attrib V23    0.6613625447176584
#>     Attrib V24    0.2411668183273634
#>     Attrib V25    0.19542375420655494
#>     Attrib V26    0.318294836350725
#>     Attrib V27    1.097505082690847
#>     Attrib V28    1.4807047267673952
#>     Attrib V29    0.8535825534859387
#>     Attrib V3    -0.2143965208527939
#>     Attrib V30    0.35031818827961747
#>     Attrib V31    -0.44923572947559665
#>     Attrib V32    0.3183533501317504
#>     Attrib V33    -0.30617388965263637
#>     Attrib V34    -0.09551553808407187
#>     Attrib V35    0.13963229514437356
#>     Attrib V36    -0.03203783908016721
#>     Attrib V37    0.3634067878378945
#>     Attrib V38    0.04548432929634317
#>     Attrib V39    -0.04321577271092224
#>     Attrib V4    0.10069784947292747
#>     Attrib V40    0.2861874216767234
#>     Attrib V41    1.0077184094914298
#>     Attrib V42    -0.11777939158969514
#>     Attrib V43    -0.4394933864933157
#>     Attrib V44    -0.17520539466517812
#>     Attrib V45    0.706306912316024
#>     Attrib V46    0.6864790538835903
#>     Attrib V47    0.4450677917772987
#>     Attrib V48    0.38254638874873237
#>     Attrib V49    0.6696329319955027
#>     Attrib V5    0.05054326883780175
#>     Attrib V50    -0.5718169291423231
#>     Attrib V51    0.5179887193364604
#>     Attrib V52    1.0567383344456824
#>     Attrib V53    0.0253417072340527
#>     Attrib V54    0.26541107616059484
#>     Attrib V55    -0.4997510029997036
#>     Attrib V56    -0.447127151321932
#>     Attrib V57    0.13774005185068303
#>     Attrib V58    -0.1503990027213693
#>     Attrib V59    0.4106835902934958
#>     Attrib V6    0.07072152926417288
#>     Attrib V60    1.1705892825062973
#>     Attrib V7    -0.663131554204409
#>     Attrib V8    -0.6732013562476786
#>     Attrib V9    1.1094608693158734
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.16741306704304054
#>     Attrib V1    0.1213315407517476
#>     Attrib V10    -0.20911920649972157
#>     Attrib V11    0.08276120667080879
#>     Attrib V12    0.2147152678152676
#>     Attrib V13    -0.09731354791024589
#>     Attrib V14    -0.06981569940826328
#>     Attrib V15    0.09708414359814366
#>     Attrib V16    0.23127869581939273
#>     Attrib V17    -0.07245613240484876
#>     Attrib V18    -0.18191000539886848
#>     Attrib V19    -0.08929843628444349
#>     Attrib V2    0.18701122503492265
#>     Attrib V20    0.1135350908665545
#>     Attrib V21    -0.015922879286894114
#>     Attrib V22    0.09887431234109614
#>     Attrib V23    0.13305024453075376
#>     Attrib V24    0.05961473511449692
#>     Attrib V25    -0.14525386965975343
#>     Attrib V26    -0.42831459710657527
#>     Attrib V27    -0.008736379107190087
#>     Attrib V28    0.4075917927307222
#>     Attrib V29    0.2943757907573349
#>     Attrib V3    -0.14153505728382382
#>     Attrib V30    0.11302531408238344
#>     Attrib V31    -0.5503656254408422
#>     Attrib V32    0.3549517657915237
#>     Attrib V33    0.1478405990038714
#>     Attrib V34    -0.13623746815280896
#>     Attrib V35    -0.24924730425899996
#>     Attrib V36    -0.30559791631753225
#>     Attrib V37    -0.1318647654149586
#>     Attrib V38    0.1437299389724837
#>     Attrib V39    -0.002000885209436679
#>     Attrib V4    0.19477298110397512
#>     Attrib V40    -0.26359465958806194
#>     Attrib V41    0.13964199237567584
#>     Attrib V42    0.014741490008958068
#>     Attrib V43    -0.11663408348329103
#>     Attrib V44    0.21271679335508328
#>     Attrib V45    0.3390036636557522
#>     Attrib V46    0.046017667970516624
#>     Attrib V47    -0.07687362060124404
#>     Attrib V48    0.19830502776764575
#>     Attrib V49    0.19875959041743008
#>     Attrib V5    -0.14653930198616447
#>     Attrib V50    -0.5155563009411768
#>     Attrib V51    0.024741933957192538
#>     Attrib V52    0.26495430374791334
#>     Attrib V53    0.1714994285526736
#>     Attrib V54    0.24723322157797287
#>     Attrib V55    0.07721224396985077
#>     Attrib V56    0.04909053464670365
#>     Attrib V57    0.3628322232855415
#>     Attrib V58    0.024887071044876672
#>     Attrib V59    0.39171920379332725
#>     Attrib V6    -0.17154271193947918
#>     Attrib V60    0.3170910922143952
#>     Attrib V7    -0.3998805845482749
#>     Attrib V8    -0.36494223378657115
#>     Attrib V9    0.11120957601490965
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.10274152309791904
#>     Attrib V1    0.21768450104455161
#>     Attrib V10    0.7108289207803388
#>     Attrib V11    1.005323324536771
#>     Attrib V12    1.3016831565268456
#>     Attrib V13    0.20138615736749477
#>     Attrib V14    -0.4551794568986334
#>     Attrib V15    -0.5064989627606584
#>     Attrib V16    -0.3912379134372438
#>     Attrib V17    -0.6662475809076438
#>     Attrib V18    -0.5602991166070799
#>     Attrib V19    -0.593203222535075
#>     Attrib V2    0.22707542599493621
#>     Attrib V20    -0.3503203463107923
#>     Attrib V21    -0.38086712134350925
#>     Attrib V22    0.3369981358876604
#>     Attrib V23    0.34619584348430227
#>     Attrib V24    0.15327397228322395
#>     Attrib V25    0.13392427536913973
#>     Attrib V26    0.28610495487078536
#>     Attrib V27    1.0693242930054363
#>     Attrib V28    1.1984511942619989
#>     Attrib V29    0.5657893103758619
#>     Attrib V3    -0.18187161447117503
#>     Attrib V30    0.2602675919449341
#>     Attrib V31    -0.3764068138041999
#>     Attrib V32    0.29699811572462437
#>     Attrib V33    -0.2547216247802187
#>     Attrib V34    -0.14044520741888863
#>     Attrib V35    0.014588095176948493
#>     Attrib V36    0.02341378950751805
#>     Attrib V37    0.31212813184239224
#>     Attrib V38    0.0732533572487671
#>     Attrib V39    -0.06717109996216682
#>     Attrib V4    0.16397800009309124
#>     Attrib V40    -0.003646449234946558
#>     Attrib V41    0.5980449783386539
#>     Attrib V42    -0.17356624728415693
#>     Attrib V43    -0.20878130837929829
#>     Attrib V44    -0.04631157614627792
#>     Attrib V45    0.5736277368031155
#>     Attrib V46    0.4762699850380118
#>     Attrib V47    0.2609561275942342
#>     Attrib V48    0.29759206689750944
#>     Attrib V49    0.5362630322051595
#>     Attrib V5    0.034965301055725345
#>     Attrib V50    -0.5210440526818476
#>     Attrib V51    0.41327738157153565
#>     Attrib V52    0.8951961257872236
#>     Attrib V53    0.20146517936118913
#>     Attrib V54    0.2394400951277
#>     Attrib V55    -0.24833019960676148
#>     Attrib V56    -0.31237498767011795
#>     Attrib V57    0.23080265068509412
#>     Attrib V58    -0.05219092992776477
#>     Attrib V59    0.4034462331286619
#>     Attrib V6    0.0014990699872527264
#>     Attrib V60    0.877676695259402
#>     Attrib V7    -0.58209103642859
#>     Attrib V8    -0.4464726930783558
#>     Attrib V9    0.7705511134207245
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.1164874810329061
#>     Attrib V1    -0.07987757487093221
#>     Attrib V10    0.43415863686406436
#>     Attrib V11    0.04732481800640115
#>     Attrib V12    -0.05174722796365908
#>     Attrib V13    0.14699162905662363
#>     Attrib V14    -0.09182838394162134
#>     Attrib V15    -0.4453163528016513
#>     Attrib V16    -0.4483741408206872
#>     Attrib V17    -0.08091670743198805
#>     Attrib V18    0.21643345922075155
#>     Attrib V19    0.031902157583963024
#>     Attrib V2    -0.3372791456791154
#>     Attrib V20    -0.4562683036095875
#>     Attrib V21    -0.29695905852550597
#>     Attrib V22    -0.5864227899850726
#>     Attrib V23    -0.5230858813742146
#>     Attrib V24    -0.2798329715085077
#>     Attrib V25    0.11850135154315235
#>     Attrib V26    0.8085011096389041
#>     Attrib V27    0.5007329765927097
#>     Attrib V28    -0.21691557549964496
#>     Attrib V29    -0.4357213741218003
#>     Attrib V3    0.20095197591785036
#>     Attrib V30    -0.09447965615466487
#>     Attrib V31    0.9470808917143041
#>     Attrib V32    -0.7494175419152609
#>     Attrib V33    -0.3304165986064864
#>     Attrib V34    0.19918223545584324
#>     Attrib V35    0.5606851461113529
#>     Attrib V36    0.6465639828274814
#>     Attrib V37    0.21669406308125885
#>     Attrib V38    -0.2707532947285488
#>     Attrib V39    -0.27112574078921364
#>     Attrib V4    -0.19622912724738695
#>     Attrib V40    0.2610222022107593
#>     Attrib V41    -0.3325649603503334
#>     Attrib V42    -0.28724689942490234
#>     Attrib V43    0.19017692880148737
#>     Attrib V44    -0.1992518406551016
#>     Attrib V45    -0.43634987516725293
#>     Attrib V46    -0.1484560981163695
#>     Attrib V47    0.0658420673540768
#>     Attrib V48    -0.2803241197041566
#>     Attrib V49    -0.42539194284501564
#>     Attrib V5    0.2885532920698202
#>     Attrib V50    0.7566565811089888
#>     Attrib V51    -0.06653628031184415
#>     Attrib V52    -0.26965145579871475
#>     Attrib V53    0.03581425135440312
#>     Attrib V54    -0.18065676747453854
#>     Attrib V55    -0.39514139119816666
#>     Attrib V56    -0.2392591122924282
#>     Attrib V57    -0.40348999454644147
#>     Attrib V58    -0.2828380419354959
#>     Attrib V59    -0.5311530635418863
#>     Attrib V6    0.17560280179387136
#>     Attrib V60    -0.3078089135214024
#>     Attrib V7    0.3997073733389567
#>     Attrib V8    0.48063305272644263
#>     Attrib V9    -0.123611850896367
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.13251790542956615
#>     Attrib V1    0.10002597712854197
#>     Attrib V10    -0.3542914921755054
#>     Attrib V11    0.0021090214350255342
#>     Attrib V12    0.1689304997953182
#>     Attrib V13    -0.18887382686639767
#>     Attrib V14    0.011368393250280403
#>     Attrib V15    0.23008174331680342
#>     Attrib V16    0.35582849591279253
#>     Attrib V17    0.04886002359810297
#>     Attrib V18    -0.11810577481815479
#>     Attrib V19    -0.022058258629653712
#>     Attrib V2    0.2241256119505198
#>     Attrib V20    0.3906792569976157
#>     Attrib V21    0.12006732555791681
#>     Attrib V22    0.31883605499724754
#>     Attrib V23    0.3874931158257767
#>     Attrib V24    0.1435963133352436
#>     Attrib V25    -0.15113443299647736
#>     Attrib V26    -0.66326508546514
#>     Attrib V27    -0.12815846989925994
#>     Attrib V28    0.532586704608232
#>     Attrib V29    0.45527254162683817
#>     Attrib V3    -0.23867658894234986
#>     Attrib V30    0.21693472406326936
#>     Attrib V31    -0.8471455777448761
#>     Attrib V32    0.4398428106159641
#>     Attrib V33    0.165969035597714
#>     Attrib V34    -0.17687054405996155
#>     Attrib V35    -0.30259615307279
#>     Attrib V36    -0.417050284738233
#>     Attrib V37    -0.14264515881417686
#>     Attrib V38    0.2637728134337369
#>     Attrib V39    0.08342383669948976
#>     Attrib V4    0.15098136340759213
#>     Attrib V40    -0.3303688521509194
#>     Attrib V41    0.17894285642383378
#>     Attrib V42    0.17603683355210276
#>     Attrib V43    -0.11677370870916322
#>     Attrib V44    0.35088883692209083
#>     Attrib V45    0.5531960527304958
#>     Attrib V46    0.05008377268351121
#>     Attrib V47    -0.10611851064448985
#>     Attrib V48    0.20473097630680928
#>     Attrib V49    0.2836198007082146
#>     Attrib V5    -0.2147694153683277
#>     Attrib V50    -0.6310047285488403
#>     Attrib V51    0.10505210977935787
#>     Attrib V52    0.27032149821483115
#>     Attrib V53    0.060768639806866066
#>     Attrib V54    0.29643309622242603
#>     Attrib V55    0.19325584074678576
#>     Attrib V56    0.15885070151874373
#>     Attrib V57    0.3151232441210646
#>     Attrib V58    0.11214077683645099
#>     Attrib V59    0.38348321578712247
#>     Attrib V6    -0.13071955246978734
#>     Attrib V60    0.235718452077803
#>     Attrib V7    -0.47020972105075026
#>     Attrib V8    -0.3642733882724789
#>     Attrib V9    0.15193422563032577
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.29481450656331465
#>     Attrib V1    -0.004457360817651138
#>     Attrib V10    0.023740573669876752
#>     Attrib V11    0.4987331814915972
#>     Attrib V12    0.6501343601310601
#>     Attrib V13    -0.09582862141386499
#>     Attrib V14    -0.21430702095747078
#>     Attrib V15    -0.1304024509878241
#>     Attrib V16    0.06716541067390853
#>     Attrib V17    -0.2910061855844421
#>     Attrib V18    -0.3088795492618577
#>     Attrib V19    -0.18374290570815713
#>     Attrib V2    0.15881692182247067
#>     Attrib V20    -0.007211970041088775
#>     Attrib V21    -0.2767643685184342
#>     Attrib V22    0.23785735148443024
#>     Attrib V23    0.3596617396055641
#>     Attrib V24    0.0978823825509247
#>     Attrib V25    -0.18026557764093976
#>     Attrib V26    -0.31074275668839135
#>     Attrib V27    0.6382234973657941
#>     Attrib V28    1.0914979791993364
#>     Attrib V29    0.7203250182113784
#>     Attrib V3    -0.34263557007559287
#>     Attrib V30    0.37814134201716604
#>     Attrib V31    -0.6507801107949942
#>     Attrib V32    0.33818328636365536
#>     Attrib V33    0.025980568011572957
#>     Attrib V34    -0.13853085405796065
#>     Attrib V35    -0.18964885736455203
#>     Attrib V36    -0.287591377326375
#>     Attrib V37    -0.08886713667084976
#>     Attrib V38    0.051028072311723294
#>     Attrib V39    -0.1203153450564806
#>     Attrib V4    0.20342480097721258
#>     Attrib V40    -0.18224969294134055
#>     Attrib V41    0.3996447158761343
#>     Attrib V42    0.011951889939468852
#>     Attrib V43    -0.14782144918814932
#>     Attrib V44    0.16587028826295722
#>     Attrib V45    0.7166747452725722
#>     Attrib V46    0.33695519371820776
#>     Attrib V47    0.01903097202945567
#>     Attrib V48    0.29660989124122045
#>     Attrib V49    0.4186820836990622
#>     Attrib V5    -0.07563049368337815
#>     Attrib V50    -0.6649709353593457
#>     Attrib V51    0.1702992012250936
#>     Attrib V52    0.7519539384897242
#>     Attrib V53    0.11459662929217396
#>     Attrib V54    0.24251862065476293
#>     Attrib V55    -0.03166458398261033
#>     Attrib V56    -0.19549201757015625
#>     Attrib V57    0.3446676054698379
#>     Attrib V58    0.04279050812636205
#>     Attrib V59    0.4510702628247986
#>     Attrib V6    -0.1481087524402756
#>     Attrib V60    0.5299146932292756
#>     Attrib V7    -0.6070456067647465
#>     Attrib V8    -0.2808030981621601
#>     Attrib V9    0.4846909934210587
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.20903211564499072
#>     Attrib V1    0.07881934821135742
#>     Attrib V10    -0.023058372052640826
#>     Attrib V11    0.00957677525019896
#>     Attrib V12    -0.00519263494132897
#>     Attrib V13    0.0478726004902753
#>     Attrib V14    0.0712240464141955
#>     Attrib V15    0.02084859362480819
#>     Attrib V16    0.003312647929870312
#>     Attrib V17    0.021712659617793
#>     Attrib V18    -0.011586254463976868
#>     Attrib V19    -0.0434407409038623
#>     Attrib V2    0.08762878931183342
#>     Attrib V20    -0.0025357441867922574
#>     Attrib V21    -0.03587961994128578
#>     Attrib V22    -0.09200923578426463
#>     Attrib V23    -0.00395119860916884
#>     Attrib V24    -0.011730061996177555
#>     Attrib V25    0.0016606541855483823
#>     Attrib V26    -0.0859744437171322
#>     Attrib V27    -0.0021487674902392084
#>     Attrib V28    -0.04159639755710589
#>     Attrib V29    -0.009761149826769714
#>     Attrib V3    0.1506049691801553
#>     Attrib V30    0.006169008815120586
#>     Attrib V31    -0.06365150191292877
#>     Attrib V32    0.039934343074935194
#>     Attrib V33    0.02828975505469212
#>     Attrib V34    0.05905542085961589
#>     Attrib V35    0.026944976727353454
#>     Attrib V36    0.024322672804229287
#>     Attrib V37    0.040688785288933785
#>     Attrib V38    0.02660372522567357
#>     Attrib V39    0.09178027027919732
#>     Attrib V4    0.12339187198241977
#>     Attrib V40    0.06358456380682499
#>     Attrib V41    0.06331937013142828
#>     Attrib V42    0.06969747906839446
#>     Attrib V43    0.01019187116357002
#>     Attrib V44    0.0741636330336545
#>     Attrib V45    0.028840350630385793
#>     Attrib V46    0.04463752398340908
#>     Attrib V47    0.043926218192251114
#>     Attrib V48    0.009769471082803115
#>     Attrib V49    0.059073152443162094
#>     Attrib V5    0.08425554505914092
#>     Attrib V50    -0.006379101704153892
#>     Attrib V51    0.039318521450917764
#>     Attrib V52    0.025648277830394996
#>     Attrib V53    0.09316655694009891
#>     Attrib V54    0.049765372182834965
#>     Attrib V55    0.07205159912151324
#>     Attrib V56    0.09582647712967415
#>     Attrib V57    0.13472289453052272
#>     Attrib V58    0.08977882941705265
#>     Attrib V59    0.14846438865847664
#>     Attrib V6    0.0728409337311651
#>     Attrib V60    0.14914010848559645
#>     Attrib V7    0.06748728569182089
#>     Attrib V8    0.022344353965324568
#>     Attrib V9    0.035817364174942655
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.14572912332504923
#>     Attrib V1    0.30175384883810563
#>     Attrib V10    -0.34060957687916493
#>     Attrib V11    -0.009727082124437788
#>     Attrib V12    0.0755841867186235
#>     Attrib V13    -0.2072816596049914
#>     Attrib V14    0.1233562102142426
#>     Attrib V15    0.36220413033895343
#>     Attrib V16    0.323871401303727
#>     Attrib V17    0.0030437773826262463
#>     Attrib V18    -0.10632265886769081
#>     Attrib V19    -0.03910858669589154
#>     Attrib V2    0.22361083597371964
#>     Attrib V20    0.23991256024420557
#>     Attrib V21    0.04665740481848464
#>     Attrib V22    0.0859225777027772
#>     Attrib V23    0.15364307816885037
#>     Attrib V24    0.028753077981373387
#>     Attrib V25    -0.20475667215940946
#>     Attrib V26    -0.6453707931497936
#>     Attrib V27    -0.3047350124599144
#>     Attrib V28    0.09251946426819543
#>     Attrib V29    0.04255695263890332
#>     Attrib V3    -0.17658016837781315
#>     Attrib V30    -0.06059519680614352
#>     Attrib V31    -0.6348788096799205
#>     Attrib V32    0.35050299167033944
#>     Attrib V33    0.2048881505730358
#>     Attrib V34    -0.12201318768481044
#>     Attrib V35    -0.26008670089147246
#>     Attrib V36    -0.44467265430507397
#>     Attrib V37    -0.23478720791480398
#>     Attrib V38    0.11063294795520838
#>     Attrib V39    0.08873789149146785
#>     Attrib V4    0.18306677022805065
#>     Attrib V40    -0.2726302240991371
#>     Attrib V41    0.05962626555811928
#>     Attrib V42    0.028193045549069966
#>     Attrib V43    -0.11951682276755908
#>     Attrib V44    0.22550183139546753
#>     Attrib V45    0.2164090735497145
#>     Attrib V46    -0.016140270576316486
#>     Attrib V47    -0.10762712683402754
#>     Attrib V48    0.2738624693135739
#>     Attrib V49    0.2691191411105775
#>     Attrib V5    -0.16862545312603047
#>     Attrib V50    -0.4034342771146453
#>     Attrib V51    0.03810670438192187
#>     Attrib V52    0.2006385291158013
#>     Attrib V53    0.18912189730595927
#>     Attrib V54    0.46741110322716967
#>     Attrib V55    0.40653527231714087
#>     Attrib V56    0.2469985028934152
#>     Attrib V57    0.4635530005583994
#>     Attrib V58    0.2714380586700735
#>     Attrib V59    0.6021977147085844
#>     Attrib V6    -0.13667884381931183
#>     Attrib V60    0.38293575398540547
#>     Attrib V7    -0.3011694735215834
#>     Attrib V8    -0.3291846207920732
#>     Attrib V9    0.010554607077635286
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.4661744633767396
#>     Attrib V1    0.07997983809917003
#>     Attrib V10    0.025264357173123947
#>     Attrib V11    -0.4633783831397594
#>     Attrib V12    -0.48867850582707806
#>     Attrib V13    -0.19626046276335538
#>     Attrib V14    -0.12705543688601403
#>     Attrib V15    -0.21919728179712689
#>     Attrib V16    -0.5689639673033664
#>     Attrib V17    -0.2721027992991055
#>     Attrib V18    0.049876156771015596
#>     Attrib V19    -0.1075568335824417
#>     Attrib V2    -0.11470639964858387
#>     Attrib V20    -0.975653720673229
#>     Attrib V21    -0.9204976447774028
#>     Attrib V22    -0.9674360108791018
#>     Attrib V23    -0.9469423669750673
#>     Attrib V24    -0.2931595651976361
#>     Attrib V25    0.3909858004112676
#>     Attrib V26    1.305021145431788
#>     Attrib V27    0.6991050017299905
#>     Attrib V28    -0.4084368056111022
#>     Attrib V29    -0.12345600896465651
#>     Attrib V3    0.30580055304832593
#>     Attrib V30    -0.0913650185916478
#>     Attrib V31    1.5053820460702174
#>     Attrib V32    -0.6339100612277644
#>     Attrib V33    -0.7104690329908886
#>     Attrib V34    0.09466850764284157
#>     Attrib V35    0.752450842239808
#>     Attrib V36    0.7342386194824646
#>     Attrib V37    0.30597789300529876
#>     Attrib V38    -0.9009893343819636
#>     Attrib V39    -0.7361372111701471
#>     Attrib V4    -0.5464051402700528
#>     Attrib V40    0.10774734645899545
#>     Attrib V41    -0.7246983010141889
#>     Attrib V42    -0.2884131224768416
#>     Attrib V43    0.17936555028198098
#>     Attrib V44    -0.5603195450552418
#>     Attrib V45    -0.6565609354055918
#>     Attrib V46    0.07575521418907968
#>     Attrib V47    0.60953950782369
#>     Attrib V48    0.10819397369815029
#>     Attrib V49    -0.3761509340006108
#>     Attrib V5    -0.14314823978406252
#>     Attrib V50    1.1355604120874407
#>     Attrib V51    0.2679415540082057
#>     Attrib V52    -0.06392609853057456
#>     Attrib V53    0.3268243190101104
#>     Attrib V54    -0.3697935054230518
#>     Attrib V55    -0.24339222670442126
#>     Attrib V56    0.046670177040731724
#>     Attrib V57    -0.6171500871033695
#>     Attrib V58    -0.18257375337538012
#>     Attrib V59    -0.7611879419640255
#>     Attrib V6    -0.39453382478112414
#>     Attrib V60    -0.11064956754998063
#>     Attrib V7    -0.1275010035648753
#>     Attrib V8    0.006870983315537046
#>     Attrib V9    -0.6740857258448342
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1766525477297349
#>     Attrib V1    0.11288301595450217
#>     Attrib V10    -0.029877089139487018
#>     Attrib V11    -0.0049593506407273275
#>     Attrib V12    0.007310061776250256
#>     Attrib V13    0.011844080734637566
#>     Attrib V14    0.06243819054037443
#>     Attrib V15    0.06595955707877785
#>     Attrib V16    0.12231641843747326
#>     Attrib V17    0.04960444488190485
#>     Attrib V18    0.01826223833539096
#>     Attrib V19    -0.01891079612057211
#>     Attrib V2    0.08772995612545381
#>     Attrib V20    -0.03685987019965921
#>     Attrib V21    -0.08360810239124661
#>     Attrib V22    -0.08762511770785263
#>     Attrib V23    -0.08066665430947868
#>     Attrib V24    -0.0030186311676122304
#>     Attrib V25    -0.027474165013485246
#>     Attrib V26    -0.12705026279964252
#>     Attrib V27    -0.07404328849279546
#>     Attrib V28    0.005156811504512766
#>     Attrib V29    -0.03531983034553014
#>     Attrib V3    0.11014409954180374
#>     Attrib V30    -0.06519862357254118
#>     Attrib V31    -0.12394857368808902
#>     Attrib V32    0.08517556583401396
#>     Attrib V33    0.040038712748646794
#>     Attrib V34    0.04143982260859927
#>     Attrib V35    0.006614713350147895
#>     Attrib V36    -0.020588234047924186
#>     Attrib V37    0.0275106092920962
#>     Attrib V38    0.04783193349552143
#>     Attrib V39    0.048628507673703913
#>     Attrib V4    0.142531700821129
#>     Attrib V40    -0.026531822485964203
#>     Attrib V41    0.06573625695916631
#>     Attrib V42    0.09838631460614684
#>     Attrib V43    0.02365037936911302
#>     Attrib V44    0.052018130033305625
#>     Attrib V45    0.08849586139684774
#>     Attrib V46    0.039467295140861954
#>     Attrib V47    0.00795669400872048
#>     Attrib V48    0.04487301733456701
#>     Attrib V49    0.029463172362895904
#>     Attrib V5    0.04543587591918956
#>     Attrib V50    0.033530582089403224
#>     Attrib V51    0.11530765034092126
#>     Attrib V52    0.10749651440961798
#>     Attrib V53    0.18420121048044547
#>     Attrib V54    0.0978165741996914
#>     Attrib V55    0.15574035800450384
#>     Attrib V56    0.1388825529879931
#>     Attrib V57    0.20571147697775297
#>     Attrib V58    0.1695128264077057
#>     Attrib V59    0.13206833408452523
#>     Attrib V6    0.03703507794824464
#>     Attrib V60    0.16307490069736127
#>     Attrib V7    -0.02976021471098321
#>     Attrib V8    -0.03781791241760239
#>     Attrib V9    0.06390928393480352
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.023415112591987544
#>     Attrib V1    0.26738651826393006
#>     Attrib V10    -0.45192221283319656
#>     Attrib V11    -0.29174558947861606
#>     Attrib V12    -0.28052777015300073
#>     Attrib V13    -0.24483575378198222
#>     Attrib V14    0.22069311134308003
#>     Attrib V15    0.5175067539991534
#>     Attrib V16    0.4654178390326184
#>     Attrib V17    0.13286744410082152
#>     Attrib V18    -0.04961454208415118
#>     Attrib V19    0.07668853327184066
#>     Attrib V2    0.33597448227324545
#>     Attrib V20    0.3481000086727131
#>     Attrib V21    0.2252427344159699
#>     Attrib V22    0.23915696620020052
#>     Attrib V23    0.1646411437059425
#>     Attrib V24    0.10943251895559176
#>     Attrib V25    -0.21594062160705593
#>     Attrib V26    -0.69604391696232
#>     Attrib V27    -0.4978852268657834
#>     Attrib V28    -0.10453550244154858
#>     Attrib V29    0.004954583727233418
#>     Attrib V3    -0.06500434050746313
#>     Attrib V30    -0.09335002494578523
#>     Attrib V31    -0.6060831909732567
#>     Attrib V32    0.32482007091859344
#>     Attrib V33    0.2569151771530076
#>     Attrib V34    -0.15975483574339322
#>     Attrib V35    -0.28177693418683214
#>     Attrib V36    -0.42919017442136725
#>     Attrib V37    -0.21174918207900678
#>     Attrib V38    0.225649672318159
#>     Attrib V39    0.15885923232987312
#>     Attrib V4    0.2044129826490417
#>     Attrib V40    -0.27648130154096034
#>     Attrib V41    0.05875337379767304
#>     Attrib V42    0.1459965102310198
#>     Attrib V43    -0.017788859403329086
#>     Attrib V44    0.23275056744886613
#>     Attrib V45    0.2272702984613324
#>     Attrib V46    -0.0877054433896562
#>     Attrib V47    -0.19082191649486724
#>     Attrib V48    0.17548030949178225
#>     Attrib V49    0.12123270633090251
#>     Attrib V5    -0.17376844733052957
#>     Attrib V50    -0.3029529116726122
#>     Attrib V51    0.03913476242851614
#>     Attrib V52    0.04233636630371578
#>     Attrib V53    0.1586161113727284
#>     Attrib V54    0.33903749498316904
#>     Attrib V55    0.481415834428779
#>     Attrib V56    0.3464057159141718
#>     Attrib V57    0.45146380134002234
#>     Attrib V58    0.2612324401464163
#>     Attrib V59    0.4444829923795128
#>     Attrib V6    -0.06535615686402321
#>     Attrib V60    0.24800600653588753
#>     Attrib V7    -0.17092251685548396
#>     Attrib V8    -0.18705724207459623
#>     Attrib V9    -0.07809578338741814
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.14755483966231067
#>     Attrib V1    -0.14400419079760826
#>     Attrib V10    0.4713382303867216
#>     Attrib V11    0.032159119255898094
#>     Attrib V12    -0.08549909093404728
#>     Attrib V13    0.1290654309488762
#>     Attrib V14    -0.15149414429095265
#>     Attrib V15    -0.4686572878038607
#>     Attrib V16    -0.5025057065765219
#>     Attrib V17    -0.10819583564200305
#>     Attrib V18    0.22019392344980873
#>     Attrib V19    -0.03495211433472447
#>     Attrib V2    -0.33882051420615034
#>     Attrib V20    -0.48572822118796144
#>     Attrib V21    -0.3184108074249077
#>     Attrib V22    -0.6218675319116612
#>     Attrib V23    -0.5830195889764823
#>     Attrib V24    -0.2827198583795831
#>     Attrib V25    0.16419481417985715
#>     Attrib V26    0.8729051825551383
#>     Attrib V27    0.5514643157735744
#>     Attrib V28    -0.2402773829490399
#>     Attrib V29    -0.4437652096116253
#>     Attrib V3    0.27198087007687904
#>     Attrib V30    -0.1762854552511511
#>     Attrib V31    0.9883050962566665
#>     Attrib V32    -0.7463708476494276
#>     Attrib V33    -0.41785228984000816
#>     Attrib V34    0.1903374503970195
#>     Attrib V35    0.539927034681658
#>     Attrib V36    0.7114330835526871
#>     Attrib V37    0.19570215185707637
#>     Attrib V38    -0.3851380544862831
#>     Attrib V39    -0.27135389428571977
#>     Attrib V4    -0.23336995590016657
#>     Attrib V40    0.2242243833558015
#>     Attrib V41    -0.40950909979363426
#>     Attrib V42    -0.27559284126269445
#>     Attrib V43    0.20416743028636491
#>     Attrib V44    -0.2280222831472348
#>     Attrib V45    -0.5542867812497798
#>     Attrib V46    -0.13924779996589734
#>     Attrib V47    0.12858820175996144
#>     Attrib V48    -0.2829031292214476
#>     Attrib V49    -0.4202934918392818
#>     Attrib V5    0.3008608864099899
#>     Attrib V50    0.7023261236998843
#>     Attrib V51    0.012819738728610777
#>     Attrib V52    -0.2292638303300844
#>     Attrib V53    0.028966884042027942
#>     Attrib V54    -0.2612476092092432
#>     Attrib V55    -0.3925344073500647
#>     Attrib V56    -0.19662101041926744
#>     Attrib V57    -0.443177246488707
#>     Attrib V58    -0.2787437392496615
#>     Attrib V59    -0.5250095338671456
#>     Attrib V6    0.11653466280385522
#>     Attrib V60    -0.22558431395535125
#>     Attrib V7    0.42543450164573926
#>     Attrib V8    0.5236213461022903
#>     Attrib V9    -0.09710991766234685
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.2418663377931403
#>     Attrib V1    0.08281833808783108
#>     Attrib V10    0.30727599222653706
#>     Attrib V11    0.727055121345594
#>     Attrib V12    1.0650208449696514
#>     Attrib V13    -0.011475838703436676
#>     Attrib V14    -0.3213865611091098
#>     Attrib V15    -0.27676700489399503
#>     Attrib V16    -0.2201766490022019
#>     Attrib V17    -0.49942984009201163
#>     Attrib V18    -0.48218078936519204
#>     Attrib V19    -0.44659503758254615
#>     Attrib V2    0.16223349800218925
#>     Attrib V20    -0.31846499997743977
#>     Attrib V21    -0.5187292062656682
#>     Attrib V22    0.12602819657244704
#>     Attrib V23    0.19149163248204992
#>     Attrib V24    0.0960767436344005
#>     Attrib V25    -0.03053180444325728
#>     Attrib V26    -0.021715919098681556
#>     Attrib V27    0.8319738586389899
#>     Attrib V28    1.0679570487398167
#>     Attrib V29    0.47827057753438357
#>     Attrib V3    -0.26794435167377767
#>     Attrib V30    0.2385190199990225
#>     Attrib V31    -0.4334510043692713
#>     Attrib V32    0.31265221161926776
#>     Attrib V33    -0.0714838790438732
#>     Attrib V34    -0.11522397485575082
#>     Attrib V35    -0.01640556941065606
#>     Attrib V36    -0.10060841233898253
#>     Attrib V37    0.045226475163524786
#>     Attrib V38    -0.010278568565476515
#>     Attrib V39    -0.15503895305368506
#>     Attrib V4    0.20825540876250562
#>     Attrib V40    -0.08941011834640707
#>     Attrib V41    0.43459065552373144
#>     Attrib V42    -0.07220673744482246
#>     Attrib V43    -0.24279706475797322
#>     Attrib V44    0.0027412087469019224
#>     Attrib V45    0.6430288751944487
#>     Attrib V46    0.358274456598374
#>     Attrib V47    0.050061449140662455
#>     Attrib V48    0.2959708320787587
#>     Attrib V49    0.5317018421163989
#>     Attrib V5    0.016674220644526068
#>     Attrib V50    -0.6011373885147795
#>     Attrib V51    0.20040981326886623
#>     Attrib V52    0.8661800124921237
#>     Attrib V53    0.1870579853486854
#>     Attrib V54    0.2699109267485583
#>     Attrib V55    -0.03270266011927529
#>     Attrib V56    -0.355444962993231
#>     Attrib V57    0.37141717817879866
#>     Attrib V58    0.08179544054786846
#>     Attrib V59    0.4458653602657657
#>     Attrib V6    -0.07679808464833633
#>     Attrib V60    0.7167900718735009
#>     Attrib V7    -0.5759148311237597
#>     Attrib V8    -0.35411114112979447
#>     Attrib V9    0.5655023369309672
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.1869539296770838
#>     Attrib V1    0.0761723042298363
#>     Attrib V10    -0.26918824261824925
#>     Attrib V11    0.0866985592929725
#>     Attrib V12    0.2970178992839293
#>     Attrib V13    -0.04211968725341329
#>     Attrib V14    0.10697587466793518
#>     Attrib V15    0.23124124471528296
#>     Attrib V16    0.2757253462984503
#>     Attrib V17    -0.09107916339802406
#>     Attrib V18    -0.17149722242268767
#>     Attrib V19    0.01351537848875665
#>     Attrib V2    0.23173400881534195
#>     Attrib V20    0.3740269399482904
#>     Attrib V21    0.14603294412602869
#>     Attrib V22    0.5367660934140601
#>     Attrib V23    0.6840294504000154
#>     Attrib V24    0.3351349107431239
#>     Attrib V25    -0.05405686046945269
#>     Attrib V26    -0.4084527886583349
#>     Attrib V27    0.20438159178263443
#>     Attrib V28    0.8465588795838803
#>     Attrib V29    0.7972797775024999
#>     Attrib V3    -0.33995261726748155
#>     Attrib V30    0.3697333749767082
#>     Attrib V31    -0.8205920603460565
#>     Attrib V32    0.4340920032839595
#>     Attrib V33    0.08327443988455217
#>     Attrib V34    -0.25511114046954086
#>     Attrib V35    -0.30834621535678763
#>     Attrib V36    -0.350182191894524
#>     Attrib V37    -0.01576212805852069
#>     Attrib V38    0.30688168423004764
#>     Attrib V39    0.14021828238144382
#>     Attrib V4    0.16051103201682348
#>     Attrib V40    -0.23168479819546053
#>     Attrib V41    0.39306008520339714
#>     Attrib V42    0.16959520468049424
#>     Attrib V43    -0.016702654453788764
#>     Attrib V44    0.45979198264233745
#>     Attrib V45    0.6474407193747118
#>     Attrib V46    0.14560221553918143
#>     Attrib V47    -0.13750473337817565
#>     Attrib V48    0.19448607373024585
#>     Attrib V49    0.4377494564627167
#>     Attrib V5    -0.222687826377617
#>     Attrib V50    -0.7242754934856872
#>     Attrib V51    0.15324734496424464
#>     Attrib V52    0.41032061020533617
#>     Attrib V53    0.03897897912778827
#>     Attrib V54    0.27022886760712633
#>     Attrib V55    0.2589969195875492
#>     Attrib V56    0.10807341293889404
#>     Attrib V57    0.14047883585349877
#>     Attrib V58    0.13990600092703478
#>     Attrib V59    0.4563309628404473
#>     Attrib V6    -0.08600551240598935
#>     Attrib V60    0.29781806563593954
#>     Attrib V7    -0.41286740127303134
#>     Attrib V8    -0.4484678232107103
#>     Attrib V9    0.24119413307610751
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.03605144575530746
#>     Attrib V1    -0.1850093061361307
#>     Attrib V10    0.5341032841585105
#>     Attrib V11    0.023926826500451102
#>     Attrib V12    0.061320593777137
#>     Attrib V13    0.12308817925515093
#>     Attrib V14    -0.25524968111312263
#>     Attrib V15    -0.5431653002731778
#>     Attrib V16    -0.6013592800794282
#>     Attrib V17    -0.15375318787663264
#>     Attrib V18    0.15450238655432916
#>     Attrib V19    -0.08523874398192505
#>     Attrib V2    -0.4533181385790208
#>     Attrib V20    -0.8210355849327267
#>     Attrib V21    -0.6395322245811123
#>     Attrib V22    -0.9914907475221733
#>     Attrib V23    -0.9995774432868966
#>     Attrib V24    -0.466601615395325
#>     Attrib V25    0.06921212812444491
#>     Attrib V26    1.0442837425626672
#>     Attrib V27    0.7214391297760202
#>     Attrib V28    -0.39490374242699483
#>     Attrib V29    -0.6715120283005435
#>     Attrib V3    0.21282817845108173
#>     Attrib V30    -0.2301011860592091
#>     Attrib V31    1.4314696619770095
#>     Attrib V32    -0.9119779954348374
#>     Attrib V33    -0.6120183199457417
#>     Attrib V34    0.1439442201441061
#>     Attrib V35    0.5796371005733271
#>     Attrib V36    0.6423700490211949
#>     Attrib V37    0.1308577285369081
#>     Attrib V38    -0.7041149584498649
#>     Attrib V39    -0.5080198409058251
#>     Attrib V4    -0.27169023752077803
#>     Attrib V40    0.37855602345627193
#>     Attrib V41    -0.36953076220871883
#>     Attrib V42    -0.41963910985172664
#>     Attrib V43    0.2253856888968256
#>     Attrib V44    -0.47692831724899676
#>     Attrib V45    -0.7813350673977038
#>     Attrib V46    -0.19034836527407817
#>     Attrib V47    0.1317582258073944
#>     Attrib V48    -0.23088154525859075
#>     Attrib V49    -0.5781059207977065
#>     Attrib V5    0.3967610456453022
#>     Attrib V50    0.8223115693304068
#>     Attrib V51    0.005441471534543942
#>     Attrib V52    -0.15125353955734328
#>     Attrib V53    0.1688559452943529
#>     Attrib V54    -0.37879821676517433
#>     Attrib V55    -0.5521131039286808
#>     Attrib V56    -0.352637144740463
#>     Attrib V57    -0.3203267565699178
#>     Attrib V58    -0.3859496986054589
#>     Attrib V59    -0.5635712502690127
#>     Attrib V6    0.12734273512100003
#>     Attrib V60    -0.11964235809547738
#>     Attrib V7    0.4267583798201133
#>     Attrib V8    0.49698410247597496
#>     Attrib V9    -0.1611796985847683
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.0037207525995288093
#>     Attrib V1    0.3199187289442549
#>     Attrib V10    -0.5487015550246047
#>     Attrib V11    -0.3756514650917387
#>     Attrib V12    -0.2903155024056869
#>     Attrib V13    -0.2503702196844888
#>     Attrib V14    0.30937004785569394
#>     Attrib V15    0.4990853396299801
#>     Attrib V16    0.5569071897876997
#>     Attrib V17    0.14667153560155458
#>     Attrib V18    -0.07551742196980858
#>     Attrib V19    0.029556373955328043
#>     Attrib V2    0.3018600406324204
#>     Attrib V20    0.4034562885879084
#>     Attrib V21    0.25251066605221345
#>     Attrib V22    0.14038977155293025
#>     Attrib V23    0.1292033082313458
#>     Attrib V24    0.150463218228851
#>     Attrib V25    -0.2101924404142062
#>     Attrib V26    -0.7654669630562962
#>     Attrib V27    -0.6081091165332394
#>     Attrib V28    -0.25589865357615854
#>     Attrib V29    -0.05315931393982526
#>     Attrib V3    -0.09670220726615492
#>     Attrib V30    -0.23126039871659657
#>     Attrib V31    -0.6457235107295778
#>     Attrib V32    0.3741513017025743
#>     Attrib V33    0.21039575330311172
#>     Attrib V34    -0.1223216884936615
#>     Attrib V35    -0.33966805656328897
#>     Attrib V36    -0.4443772540549637
#>     Attrib V37    -0.19578279685537223
#>     Attrib V38    0.21640164933127298
#>     Attrib V39    0.16840686196635798
#>     Attrib V4    0.21786445112715067
#>     Attrib V40    -0.2173271305187964
#>     Attrib V41    -0.027604534434027574
#>     Attrib V42    0.13667669044766073
#>     Attrib V43    0.004988255262108403
#>     Attrib V44    0.1978626045239306
#>     Attrib V45    0.08636150823795076
#>     Attrib V46    -0.0602304742968177
#>     Attrib V47    -0.2148498951633668
#>     Attrib V48    0.18372503786445077
#>     Attrib V49    0.16550676790688176
#>     Attrib V5    -0.148808428539391
#>     Attrib V50    -0.3205508935393812
#>     Attrib V51    -0.0029977232380733
#>     Attrib V52    0.03466460070702115
#>     Attrib V53    0.21725240246322694
#>     Attrib V54    0.4621177753130945
#>     Attrib V55    0.5719529880804649
#>     Attrib V56    0.4170374050757417
#>     Attrib V57    0.4847308687117635
#>     Attrib V58    0.39212538395624086
#>     Attrib V59    0.5779634969685742
#>     Attrib V6    -0.023686796756708293
#>     Attrib V60    0.2984251132413444
#>     Attrib V7    -0.06517340658845515
#>     Attrib V8    -0.2825190405199321
#>     Attrib V9    -0.10937399682967931
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.07206426539914601
#>     Attrib V1    0.31814221221320454
#>     Attrib V10    -0.7981728503035671
#>     Attrib V11    -0.4805545398930736
#>     Attrib V12    -0.2752501066525096
#>     Attrib V13    -0.21067690644719037
#>     Attrib V14    0.3725770692591563
#>     Attrib V15    0.6448377935457492
#>     Attrib V16    0.5988295753837539
#>     Attrib V17    0.24807333778733687
#>     Attrib V18    -0.05554864773694116
#>     Attrib V19    0.07585981991553123
#>     Attrib V2    0.2891367250137403
#>     Attrib V20    0.49114339988735384
#>     Attrib V21    0.35972375066782714
#>     Attrib V22    0.2755857113155364
#>     Attrib V23    0.29099313976878366
#>     Attrib V24    0.16644413793748566
#>     Attrib V25    -0.16784310232070318
#>     Attrib V26    -0.7968721337885156
#>     Attrib V27    -0.6673483575435305
#>     Attrib V28    -0.14783609112256071
#>     Attrib V29    -0.037394875449087074
#>     Attrib V3    -0.09287412339164824
#>     Attrib V30    -0.2732276339188368
#>     Attrib V31    -0.9330212399836159
#>     Attrib V32    0.42818785148348976
#>     Attrib V33    0.3020681501754358
#>     Attrib V34    -0.16744972309079528
#>     Attrib V35    -0.38079490944286815
#>     Attrib V36    -0.5040723948677317
#>     Attrib V37    -0.15689472806620403
#>     Attrib V38    0.3594908958700881
#>     Attrib V39    0.2913584290342397
#>     Attrib V4    0.3015817113258833
#>     Attrib V40    -0.31994508548557343
#>     Attrib V41    0.027033357805769067
#>     Attrib V42    0.2105580383174573
#>     Attrib V43    0.003010852945301725
#>     Attrib V44    0.286075042205752
#>     Attrib V45    0.21282027921590457
#>     Attrib V46    -0.11152484559739322
#>     Attrib V47    -0.23444382964528832
#>     Attrib V48    0.1031581492857327
#>     Attrib V49    0.17908639385720868
#>     Attrib V5    -0.18514163616049475
#>     Attrib V50    -0.44109464481842553
#>     Attrib V51    -0.052234655636403504
#>     Attrib V52    0.06092406986044458
#>     Attrib V53    0.2758233968018408
#>     Attrib V54    0.6199231768510014
#>     Attrib V55    0.659430422411708
#>     Attrib V56    0.515340286072147
#>     Attrib V57    0.5225587881820464
#>     Attrib V58    0.3686498107833532
#>     Attrib V59    0.7505675428701393
#>     Attrib V6    -0.009783768620954043
#>     Attrib V60    0.2815524288478221
#>     Attrib V7    -0.07531417304894325
#>     Attrib V8    -0.32580914915485837
#>     Attrib V9    -0.19879776277488614
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.09213543266631778
#>     Attrib V1    -0.037243764606363125
#>     Attrib V10    0.06841729776584876
#>     Attrib V11    -0.09074290428423382
#>     Attrib V12    -0.1468754073670084
#>     Attrib V13    -0.0035420193269258197
#>     Attrib V14    0.03440734849282873
#>     Attrib V15    -0.03323869412978373
#>     Attrib V16    -0.09399387106548043
#>     Attrib V17    0.148975141124121
#>     Attrib V18    0.14570340598434162
#>     Attrib V19    0.05591371863987224
#>     Attrib V2    -0.1366970004432835
#>     Attrib V20    -0.15331921869559828
#>     Attrib V21    -0.07211176161591852
#>     Attrib V22    -0.2320853758151121
#>     Attrib V23    -0.1409220613920252
#>     Attrib V24    -0.07931894538501245
#>     Attrib V25    0.0646872584055555
#>     Attrib V26    0.22666298462399578
#>     Attrib V27    -0.02224829516220635
#>     Attrib V28    -0.1400801070211447
#>     Attrib V29    -0.16142917703470208
#>     Attrib V3    0.11943579637902538
#>     Attrib V30    -0.01781579584983183
#>     Attrib V31    0.3519305222138156
#>     Attrib V32    -0.1961721126020862
#>     Attrib V33    -0.07511056786054215
#>     Attrib V34    0.0817683769461783
#>     Attrib V35    0.17039810717674092
#>     Attrib V36    0.2928710106027438
#>     Attrib V37    0.0019857272886659397
#>     Attrib V38    -0.11324467876800985
#>     Attrib V39    -0.05128930743941281
#>     Attrib V4    0.002802314778391285
#>     Attrib V40    0.15243835788219756
#>     Attrib V41    -0.11551295647376963
#>     Attrib V42    -0.11175112235058493
#>     Attrib V43    0.08205206359134729
#>     Attrib V44    -0.11992568595422166
#>     Attrib V45    -0.29446464806312755
#>     Attrib V46    -0.12013034189767009
#>     Attrib V47    0.011081221224580657
#>     Attrib V48    -0.1403658799172264
#>     Attrib V49    -0.22748033818425015
#>     Attrib V5    0.08652051748996159
#>     Attrib V50    0.31341785956409324
#>     Attrib V51    -0.006657245877370386
#>     Attrib V52    -0.13068105405439637
#>     Attrib V53    -0.08526941937376079
#>     Attrib V54    -0.07025993938532549
#>     Attrib V55    -0.1122444244846907
#>     Attrib V56    0.0012076805583169964
#>     Attrib V57    -0.05119802439564141
#>     Attrib V58    -0.04029093797901909
#>     Attrib V59    -0.1302489578853612
#>     Attrib V6    0.13246946422958766
#>     Attrib V60    -0.13193357057624075
#>     Attrib V7    0.23854636853908118
#>     Attrib V8    0.29215858685276336
#>     Attrib V9    -0.024292214890940748
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    -0.07173390762240744
#>     Attrib V1    0.39319496589030284
#>     Attrib V10    1.4078638267368808
#>     Attrib V11    2.1890257325514053
#>     Attrib V12    2.394160254149301
#>     Attrib V13    0.7214494336630335
#>     Attrib V14    -0.6102841015256356
#>     Attrib V15    -0.9462968168791726
#>     Attrib V16    -0.8298925865460469
#>     Attrib V17    -1.1157160823831929
#>     Attrib V18    -0.8545958068069155
#>     Attrib V19    -0.6420167325872811
#>     Attrib V2    0.8529631220638365
#>     Attrib V20    -0.033637586974719275
#>     Attrib V21    -0.004769072257460541
#>     Attrib V22    1.250736674573662
#>     Attrib V23    1.1044095060611379
#>     Attrib V24    0.3569551030424437
#>     Attrib V25    0.36071302357413504
#>     Attrib V26    0.590113529693313
#>     Attrib V27    1.2511170858268295
#>     Attrib V28    1.871369282439643
#>     Attrib V29    1.3447617766775004
#>     Attrib V3    -0.06923352070092217
#>     Attrib V30    0.7353784269443994
#>     Attrib V31    -0.4947305189670225
#>     Attrib V32    0.3400044805876595
#>     Attrib V33    -0.540000794767458
#>     Attrib V34    -0.125976889143013
#>     Attrib V35    0.12864087186144355
#>     Attrib V36    -0.3694895009559832
#>     Attrib V37    0.15192087055233539
#>     Attrib V38    -0.09918319453909238
#>     Attrib V39    0.22617180737262316
#>     Attrib V4    -0.051529460815581025
#>     Attrib V40    0.5665237512160528
#>     Attrib V41    1.200237749720157
#>     Attrib V42    -0.22965868095629774
#>     Attrib V43    -0.6113250160095438
#>     Attrib V44    -0.11315374211104835
#>     Attrib V45    1.2275495585322325
#>     Attrib V46    1.084230480066882
#>     Attrib V47    0.7236867616174928
#>     Attrib V48    0.428351800346652
#>     Attrib V49    1.1327377914898142
#>     Attrib V5    -0.15662354036831264
#>     Attrib V50    -0.5793238956921019
#>     Attrib V51    0.6913634439404139
#>     Attrib V52    1.6500491533303636
#>     Attrib V53    0.1876779076587418
#>     Attrib V54    0.31845205314995023
#>     Attrib V55    -0.3035598946064976
#>     Attrib V56    -0.37872992239285463
#>     Attrib V57    -0.2969444431354605
#>     Attrib V58    -0.10397290982127086
#>     Attrib V59    -0.2759535266015214
#>     Attrib V6    -0.0226528304514319
#>     Attrib V60    0.5200322566973067
#>     Attrib V7    -1.0842801764208005
#>     Attrib V8    -0.5463332527199365
#>     Attrib V9    1.591360072968766
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.19918373629308472
#>     Attrib V1    0.12196909563618474
#>     Attrib V10    -0.0419159683696505
#>     Attrib V11    -0.022008760287814563
#>     Attrib V12    0.037366556923257736
#>     Attrib V13    -0.029899374183041644
#>     Attrib V14    0.1319122798969201
#>     Attrib V15    0.06552680073958754
#>     Attrib V16    0.06855681244457254
#>     Attrib V17    0.04097073266947921
#>     Attrib V18    -0.056025996386324835
#>     Attrib V19    0.010939185603956656
#>     Attrib V2    0.14498061391329028
#>     Attrib V20    -0.004217121051918027
#>     Attrib V21    -0.04118600263397399
#>     Attrib V22    -0.07845426766928702
#>     Attrib V23    -0.05349126565302839
#>     Attrib V24    -0.0488840364770679
#>     Attrib V25    -0.0413576212688375
#>     Attrib V26    -0.1094000706478245
#>     Attrib V27    -0.023660817967016468
#>     Attrib V28    0.021919959473287263
#>     Attrib V29    -0.007778396439324087
#>     Attrib V3    0.06431317766064902
#>     Attrib V30    -0.033630900792171604
#>     Attrib V31    -0.11447606808187574
#>     Attrib V32    0.02757227219744246
#>     Attrib V33    0.07105548370720789
#>     Attrib V34    3.597013449666967E-4
#>     Attrib V35    0.07671138255394967
#>     Attrib V36    0.0574112359133881
#>     Attrib V37    0.06561912482453193
#>     Attrib V38    0.02538545124654114
#>     Attrib V39    0.061455498381445144
#>     Attrib V4    0.1629113947500365
#>     Attrib V40    -4.609735762153665E-4
#>     Attrib V41    0.03811652614197219
#>     Attrib V42    0.07352799498419928
#>     Attrib V43    0.0463530117675395
#>     Attrib V44    0.09617909988915901
#>     Attrib V45    0.07272868271547556
#>     Attrib V46    -0.004026879671607223
#>     Attrib V47    -0.020454013937037573
#>     Attrib V48    0.08947683679299534
#>     Attrib V49    0.039665759937604794
#>     Attrib V5    0.008007004610227618
#>     Attrib V50    0.014349975210485168
#>     Attrib V51    0.04248296639896386
#>     Attrib V52    0.045583838991861664
#>     Attrib V53    0.11988633839959427
#>     Attrib V54    0.10652790613381499
#>     Attrib V55    0.1277154324931929
#>     Attrib V56    0.1393242111362857
#>     Attrib V57    0.20919858202228345
#>     Attrib V58    0.12836443019645147
#>     Attrib V59    0.1748444607610599
#>     Attrib V6    0.06596922988542442
#>     Attrib V60    0.1982194822930313
#>     Attrib V7    -0.04001474590208935
#>     Attrib V8    0.026253186438727687
#>     Attrib V9    0.021029823042435385
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.21229320171923993
#>     Attrib V1    0.37473069570162554
#>     Attrib V10    0.7771015242746409
#>     Attrib V11    1.1010049458718247
#>     Attrib V12    1.4371681446780988
#>     Attrib V13    0.18703477336293722
#>     Attrib V14    -0.5289186441502465
#>     Attrib V15    -0.5379419632678669
#>     Attrib V16    -0.45702043120167346
#>     Attrib V17    -0.8274512249754511
#>     Attrib V18    -0.6515792903258627
#>     Attrib V19    -0.6779235202590973
#>     Attrib V2    0.28293102695714545
#>     Attrib V20    -0.4455103417197052
#>     Attrib V21    -0.46385474936722615
#>     Attrib V22    0.3292578401798232
#>     Attrib V23    0.285962301066309
#>     Attrib V24    0.12438599257400497
#>     Attrib V25    0.05947457842601022
#>     Attrib V26    0.2969724688144447
#>     Attrib V27    1.1341233729371556
#>     Attrib V28    1.2849318072207239
#>     Attrib V29    0.6001593566603428
#>     Attrib V3    -0.20727484203791852
#>     Attrib V30    0.26251131242834214
#>     Attrib V31    -0.4956186216642657
#>     Attrib V32    0.24456033412223085
#>     Attrib V33    -0.34769821830756076
#>     Attrib V34    -0.18240533654945393
#>     Attrib V35    0.058114820505634095
#>     Attrib V36    0.06758610856651398
#>     Attrib V37    0.42221640620944295
#>     Attrib V38    0.10048183009681665
#>     Attrib V39    -0.09596944664250064
#>     Attrib V4    0.1947841246291273
#>     Attrib V40    -0.06917800235608695
#>     Attrib V41    0.5830586970674594
#>     Attrib V42    -0.22979052267856104
#>     Attrib V43    -0.3514675603768592
#>     Attrib V44    -0.029241536367441402
#>     Attrib V45    0.6690705571044633
#>     Attrib V46    0.4599835290174473
#>     Attrib V47    0.2202855954427435
#>     Attrib V48    0.34732925090800293
#>     Attrib V49    0.47909040384605533
#>     Attrib V5    0.0849670242052422
#>     Attrib V50    -0.6102420246894072
#>     Attrib V51    0.49584140491584056
#>     Attrib V52    0.9751175740159078
#>     Attrib V53    0.16147365694399676
#>     Attrib V54    0.3320258008657948
#>     Attrib V55    -0.3067536248342348
#>     Attrib V56    -0.3779636085098268
#>     Attrib V57    0.285658935534562
#>     Attrib V58    -0.07437953898963867
#>     Attrib V59    0.5125022158859504
#>     Attrib V6    0.03338815521246093
#>     Attrib V60    1.0734097190321596
#>     Attrib V7    -0.6647017760480748
#>     Attrib V8    -0.49789497209515915
#>     Attrib V9    0.8925112975555266
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.12525406154868068
#>     Attrib V1    -0.05067262376475192
#>     Attrib V10    0.17449226879796545
#>     Attrib V11    -0.14607576069848824
#>     Attrib V12    -0.26934750439632615
#>     Attrib V13    0.06493387567100294
#>     Attrib V14    0.03757975932492297
#>     Attrib V15    -0.12663899856676744
#>     Attrib V16    -0.17743532721985958
#>     Attrib V17    0.0637504837861061
#>     Attrib V18    0.26177870697392625
#>     Attrib V19    0.0402476910756298
#>     Attrib V2    -0.28114639703158817
#>     Attrib V20    -0.3077171284396954
#>     Attrib V21    -0.14470068634421598
#>     Attrib V22    -0.42103919187621003
#>     Attrib V23    -0.4335542176955869
#>     Attrib V24    -0.1618875155656501
#>     Attrib V25    0.06612421722389669
#>     Attrib V26    0.4331039305201695
#>     Attrib V27    0.17646515338369942
#>     Attrib V28    -0.2770541806476843
#>     Attrib V29    -0.3314389337468472
#>     Attrib V3    0.21586409457366565
#>     Attrib V30    -0.13217839174356927
#>     Attrib V31    0.6133658020395052
#>     Attrib V32    -0.4205231338180446
#>     Attrib V33    -0.18306099579032833
#>     Attrib V34    0.13549933043410353
#>     Attrib V35    0.3653732240511015
#>     Attrib V36    0.4811347283754334
#>     Attrib V37    0.051399502457188974
#>     Attrib V38    -0.1706038996157108
#>     Attrib V39    -0.10638622076093258
#>     Attrib V4    -0.04376045733413993
#>     Attrib V40    0.1699104970128672
#>     Attrib V41    -0.26849969824951586
#>     Attrib V42    -0.1894601474786362
#>     Attrib V43    0.09964165078667223
#>     Attrib V44    -0.18754612276153593
#>     Attrib V45    -0.3866396044329871
#>     Attrib V46    -0.18749470939259127
#>     Attrib V47    -0.04471423759074532
#>     Attrib V48    -0.17181890504564903
#>     Attrib V49    -0.3267102819057945
#>     Attrib V5    0.17873391792509166
#>     Attrib V50    0.6134836542678238
#>     Attrib V51    -0.10309288710483396
#>     Attrib V52    -0.2505876483143013
#>     Attrib V53    -0.0634339751002045
#>     Attrib V54    -0.028033519423754732
#>     Attrib V55    -0.21171476365823796
#>     Attrib V56    -0.09074198910594579
#>     Attrib V57    -0.2087298870034704
#>     Attrib V58    -0.0903968756422227
#>     Attrib V59    -0.29002961419584317
#>     Attrib V6    0.1570123832343581
#>     Attrib V60    -0.21951864634356463
#>     Attrib V7    0.43700089062654085
#>     Attrib V8    0.4478784458604673
#>     Attrib V9    -0.07906983487564792
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.2274545122285835
#>     Attrib V1    -0.009422690305034042
#>     Attrib V10    -0.1697481848508454
#>     Attrib V11    0.2533308649288842
#>     Attrib V12    0.38263950072598196
#>     Attrib V13    -0.046087380296944515
#>     Attrib V14    0.015531668742937299
#>     Attrib V15    0.0774734322584892
#>     Attrib V16    0.13180397065570623
#>     Attrib V17    -0.13208676753076887
#>     Attrib V18    -0.17543003853840214
#>     Attrib V19    -0.15313222700390006
#>     Attrib V2    0.12271962102862524
#>     Attrib V20    0.16409160322598662
#>     Attrib V21    -0.0178439693517913
#>     Attrib V22    0.31087218619219437
#>     Attrib V23    0.3451405519897824
#>     Attrib V24    0.2331418329724544
#>     Attrib V25    0.02388526347880882
#>     Attrib V26    -0.29627691001032663
#>     Attrib V27    0.2721397878515209
#>     Attrib V28    0.7193510789595836
#>     Attrib V29    0.5991936434842916
#>     Attrib V3    -0.2371494672633172
#>     Attrib V30    0.2359436922565509
#>     Attrib V31    -0.5771475527910724
#>     Attrib V32    0.3860859869815003
#>     Attrib V33    0.04456703509573583
#>     Attrib V34    -0.19600510737328727
#>     Attrib V35    -0.2108995038013423
#>     Attrib V36    -0.3150405807655536
#>     Attrib V37    -0.024472297883797678
#>     Attrib V38    0.1407436454236439
#>     Attrib V39    0.04745112480702218
#>     Attrib V4    0.07375249474682599
#>     Attrib V40    -0.20333018304949857
#>     Attrib V41    0.2967324948552138
#>     Attrib V42    0.08708463405364973
#>     Attrib V43    -0.025125650058724976
#>     Attrib V44    0.23100031743608332
#>     Attrib V45    0.544279080614717
#>     Attrib V46    0.1333105822796569
#>     Attrib V47    -0.02585689277139395
#>     Attrib V48    0.20168491452680562
#>     Attrib V49    0.3194537238032254
#>     Attrib V5    -0.20951566980099431
#>     Attrib V50    -0.5365271357628956
#>     Attrib V51    0.08057505642977797
#>     Attrib V52    0.43031532888014695
#>     Attrib V53    0.10386447560762946
#>     Attrib V54    0.22374680227152308
#>     Attrib V55    0.16128570409998885
#>     Attrib V56    0.01994069669846472
#>     Attrib V57    0.23282201133513636
#>     Attrib V58    0.03961104039051475
#>     Attrib V59    0.3503968659597721
#>     Attrib V6    -0.10551437085373004
#>     Attrib V60    0.28898344231696177
#>     Attrib V7    -0.46576540432601976
#>     Attrib V8    -0.31738379449388787
#>     Attrib V9    0.25518686207691815
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.09314842487900676
#>     Attrib V1    -0.06770070012352769
#>     Attrib V10    0.39387354127795626
#>     Attrib V11    0.007441675577372707
#>     Attrib V12    -0.079409691561378
#>     Attrib V13    0.1306614803167644
#>     Attrib V14    -0.08776755287739924
#>     Attrib V15    -0.299387175053877
#>     Attrib V16    -0.3482920233706115
#>     Attrib V17    0.026727856251810605
#>     Attrib V18    0.15534119883138905
#>     Attrib V19    0.0014141180035737526
#>     Attrib V2    -0.25656623553735086
#>     Attrib V20    -0.4030771797072248
#>     Attrib V21    -0.2310020082021909
#>     Attrib V22    -0.4947814137351345
#>     Attrib V23    -0.4739904273203787
#>     Attrib V24    -0.2433065357188256
#>     Attrib V25    0.14018749516949933
#>     Attrib V26    0.6774475080332143
#>     Attrib V27    0.3643954235431506
#>     Attrib V28    -0.19243208342818266
#>     Attrib V29    -0.4068453500625724
#>     Attrib V3    0.1771660073875945
#>     Attrib V30    -0.09236262748924422
#>     Attrib V31    0.8734431599542578
#>     Attrib V32    -0.5726987678513796
#>     Attrib V33    -0.3142283250731441
#>     Attrib V34    0.11375654728277919
#>     Attrib V35    0.4316919357288421
#>     Attrib V36    0.4664775441773961
#>     Attrib V37    0.14073318248915123
#>     Attrib V38    -0.32358163013071967
#>     Attrib V39    -0.17050537317460657
#>     Attrib V4    -0.12120114047971016
#>     Attrib V40    0.21412220524116238
#>     Attrib V41    -0.3056971446700997
#>     Attrib V42    -0.1815146223421474
#>     Attrib V43    0.12154912919636669
#>     Attrib V44    -0.2612968599176951
#>     Attrib V45    -0.4326459165471874
#>     Attrib V46    -0.13632171710149676
#>     Attrib V47    0.03174838918112985
#>     Attrib V48    -0.1945981338173964
#>     Attrib V49    -0.37402239271975185
#>     Attrib V5    0.20598806319163337
#>     Attrib V50    0.5944972709206979
#>     Attrib V51    -0.07930815952737005
#>     Attrib V52    -0.24960305916976042
#>     Attrib V53    -0.008733473948936648
#>     Attrib V54    -0.1547372023697909
#>     Attrib V55    -0.3375388330579425
#>     Attrib V56    -0.11207885225655294
#>     Attrib V57    -0.32011210189580497
#>     Attrib V58    -0.17289458608610303
#>     Attrib V59    -0.3791673633831868
#>     Attrib V6    0.1227872291636351
#>     Attrib V60    -0.2176976139840489
#>     Attrib V7    0.31126630551466644
#>     Attrib V8    0.4081188124854006
#>     Attrib V9    -0.11324798688141574
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.0272265618409661
#>     Attrib V1    0.30669985946222983
#>     Attrib V10    -0.6946976399561353
#>     Attrib V11    -0.45188496347052654
#>     Attrib V12    -0.3974705176793294
#>     Attrib V13    -0.2168180925706276
#>     Attrib V14    0.3615873250729024
#>     Attrib V15    0.6450699473392386
#>     Attrib V16    0.6075657153462711
#>     Attrib V17    0.217270138112807
#>     Attrib V18    -0.06086336722589479
#>     Attrib V19    0.04250789568673865
#>     Attrib V2    0.3775019642473403
#>     Attrib V20    0.49356997920423734
#>     Attrib V21    0.30875848422450447
#>     Attrib V22    0.2571626860470378
#>     Attrib V23    0.22549330998798253
#>     Attrib V24    0.15793409934048563
#>     Attrib V25    -0.22706938036430974
#>     Attrib V26    -0.7936062596615057
#>     Attrib V27    -0.6885935845244825
#>     Attrib V28    -0.21904772374372794
#>     Attrib V29    -0.04512548965749897
#>     Attrib V3    -0.1297285997314301
#>     Attrib V30    -0.24755631080527613
#>     Attrib V31    -0.805243610234877
#>     Attrib V32    0.39890330279110664
#>     Attrib V33    0.3032576645971099
#>     Attrib V34    -0.13295855356347022
#>     Attrib V35    -0.3662966491158921
#>     Attrib V36    -0.5075393021899164
#>     Attrib V37    -0.16735157370236944
#>     Attrib V38    0.3630005376816165
#>     Attrib V39    0.22628610748830733
#>     Attrib V4    0.252518933805448
#>     Attrib V40    -0.281228201448141
#>     Attrib V41    -0.008918062037350984
#>     Attrib V42    0.2081518736116193
#>     Attrib V43    -0.014458743642354834
#>     Attrib V44    0.29704261740975363
#>     Attrib V45    0.1584074918931464
#>     Attrib V46    -0.08987835270243572
#>     Attrib V47    -0.22633425702739765
#>     Attrib V48    0.13994828689386085
#>     Attrib V49    0.15396214086340476
#>     Attrib V5    -0.21389693305754162
#>     Attrib V50    -0.38379009961837957
#>     Attrib V51    -0.029767524935309805
#>     Attrib V52    -0.0038031521167234653
#>     Attrib V53    0.24703575142696862
#>     Attrib V54    0.5825563707999426
#>     Attrib V55    0.6495556010960488
#>     Attrib V56    0.4087374141524713
#>     Attrib V57    0.49994199195037
#>     Attrib V58    0.32981377024308656
#>     Attrib V59    0.6149831182801752
#>     Attrib V6    -0.03902382429265467
#>     Attrib V60    0.27625474331237615
#>     Attrib V7    -0.05259807832979945
#>     Attrib V8    -0.2542295932544316
#>     Attrib V9    -0.13480331419348635
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.07097202130617164
#>     Attrib V1    0.23167133212374433
#>     Attrib V10    -0.4274255579526136
#>     Attrib V11    -0.2168477925725973
#>     Attrib V12    -0.17754969085540556
#>     Attrib V13    -0.1716300907833952
#>     Attrib V14    0.2792608010153643
#>     Attrib V15    0.3899937194583476
#>     Attrib V16    0.3934376878729263
#>     Attrib V17    0.07783960884378197
#>     Attrib V18    0.03480412925805246
#>     Attrib V19    0.010876651569194144
#>     Attrib V2    0.21414773766031334
#>     Attrib V20    0.26991821343423966
#>     Attrib V21    0.16678824998616004
#>     Attrib V22    0.06856556902700216
#>     Attrib V23    0.10387172813343915
#>     Attrib V24    0.03139784432002521
#>     Attrib V25    -0.18369144510389174
#>     Attrib V26    -0.48704577601062415
#>     Attrib V27    -0.34980524554836145
#>     Attrib V28    -0.04129737449532785
#>     Attrib V29    -0.0017235147603755702
#>     Attrib V3    0.01857338130014605
#>     Attrib V30    -0.09789879042420915
#>     Attrib V31    -0.5260260365709218
#>     Attrib V32    0.1923438949473379
#>     Attrib V33    0.14477056638450775
#>     Attrib V34    -0.07329269709016416
#>     Attrib V35    -0.17137183445490753
#>     Attrib V36    -0.22645485646826566
#>     Attrib V37    -0.15871259283422937
#>     Attrib V38    0.07676651542122737
#>     Attrib V39    0.11591149309076007
#>     Attrib V4    0.1482449758050933
#>     Attrib V40    -0.19160223670671045
#>     Attrib V41    -0.022748417663585315
#>     Attrib V42    0.13381064616370233
#>     Attrib V43    -0.05294959370348653
#>     Attrib V44    0.18734423390356275
#>     Attrib V45    0.1673952408289634
#>     Attrib V46    -0.04076319577602255
#>     Attrib V47    -0.11147207036130871
#>     Attrib V48    0.0668175009979113
#>     Attrib V49    0.14627072351537737
#>     Attrib V5    -0.10289359216321356
#>     Attrib V50    -0.22967292697263156
#>     Attrib V51    0.05229003085318271
#>     Attrib V52    0.08677165781212091
#>     Attrib V53    0.237668661264908
#>     Attrib V54    0.27555794747916756
#>     Attrib V55    0.3764685973824324
#>     Attrib V56    0.276176850780421
#>     Attrib V57    0.33717562226989856
#>     Attrib V58    0.31569713843128944
#>     Attrib V59    0.37921168304238234
#>     Attrib V6    -0.022756605214634115
#>     Attrib V60    0.21007530748605904
#>     Attrib V7    -0.0978965840454322
#>     Attrib V8    -0.12948681515924915
#>     Attrib V9    -0.06539910989625926
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
#>  0.2173913 
```
