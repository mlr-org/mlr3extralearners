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
#>     Threshold    -0.2262339495858905
#>     Node 2    1.6713956049172964
#>     Node 3    1.5235242984834498
#>     Node 4    0.8151206088791088
#>     Node 5    -2.5053661007639807
#>     Node 6    0.5372582550664057
#>     Node 7    3.0368863420361474
#>     Node 8    0.7002301820962328
#>     Node 9    2.7567408574775807
#>     Node 10    -2.5540011205340427
#>     Node 11    0.9057278355711765
#>     Node 12    1.5603806953555477
#>     Node 13    0.693838944174331
#>     Node 14    1.5618617370885601
#>     Node 15    -2.0883545591070067
#>     Node 16    -0.6657153193149068
#>     Node 17    -0.6728833209791322
#>     Node 18    0.4387305991709057
#>     Node 19    2.021664161344295
#>     Node 20    1.7341254414155718
#>     Node 21    -2.1007471428050457
#>     Node 22    1.0904663666936567
#>     Node 23    1.7574918995269666
#>     Node 24    -0.15310222264526013
#>     Node 25    3.3710549244048242
#>     Node 26    -1.4668785547664096
#>     Node 27    1.4543476657497743
#>     Node 28    -2.6554290123413256
#>     Node 29    1.2361713277310038
#>     Node 30    0.20362393887599248
#>     Node 31    0.6738752298349759
#>     Node 32    0.08745114235698315
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.26173476935408674
#>     Node 2    -1.7136428606997536
#>     Node 3    -1.5098100506712722
#>     Node 4    -0.7741694762939565
#>     Node 5    2.5238340459902315
#>     Node 6    -0.5157737016357438
#>     Node 7    -3.0486952696371943
#>     Node 8    -0.7345835187558828
#>     Node 9    -2.768197892059062
#>     Node 10    2.501717694838304
#>     Node 11    -0.8685175256790343
#>     Node 12    -1.6300734625954385
#>     Node 13    -0.6394165247545557
#>     Node 14    -1.4909202375806132
#>     Node 15    2.082634999754928
#>     Node 16    0.6509470060422596
#>     Node 17    0.706987897569713
#>     Node 18    -0.3982223342250099
#>     Node 19    -2.036273402838485
#>     Node 20    -1.7198918078507934
#>     Node 21    2.163606072018697
#>     Node 22    -1.136016157678961
#>     Node 23    -1.7912683533765121
#>     Node 24    0.13522013209746658
#>     Node 25    -3.3739989375208927
#>     Node 26    1.39104304488187
#>     Node 27    -1.489866709602818
#>     Node 28    2.608640542285374
#>     Node 29    -1.2653855323784309
#>     Node 30    -0.12823864422400397
#>     Node 31    -0.614103920991151
#>     Node 32    -0.10768486249590503
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.021512667814301976
#>     Attrib V1    0.13519783609763344
#>     Attrib V10    -0.2270880174298331
#>     Attrib V11    0.4496510902649126
#>     Attrib V12    0.3866945660378281
#>     Attrib V13    0.02117611866400361
#>     Attrib V14    0.1327675164811542
#>     Attrib V15    0.2153392979164843
#>     Attrib V16    -0.11038516031108112
#>     Attrib V17    -0.04651697739409713
#>     Attrib V18    -0.29520561534438516
#>     Attrib V19    -0.05131030491962763
#>     Attrib V2    -0.03362729531627616
#>     Attrib V20    0.7677182586414002
#>     Attrib V21    0.5449917418527712
#>     Attrib V22    -0.056106656702145666
#>     Attrib V23    0.27208983612605864
#>     Attrib V24    0.5376103205764577
#>     Attrib V25    -0.6101028042600751
#>     Attrib V26    -0.40136045393003894
#>     Attrib V27    -0.14625906650658804
#>     Attrib V28    -0.43316092729437083
#>     Attrib V29    -0.17224660240727704
#>     Attrib V3    0.09678490955380349
#>     Attrib V30    0.04646070022569522
#>     Attrib V31    -1.0690093416916293
#>     Attrib V32    -0.47805840059863136
#>     Attrib V33    -0.06754716574665853
#>     Attrib V34    0.03547608688486424
#>     Attrib V35    -0.19245915853932394
#>     Attrib V36    -0.3241339158849132
#>     Attrib V37    -0.4803710659241837
#>     Attrib V38    0.11121334009973644
#>     Attrib V39    0.03855068485797837
#>     Attrib V4    0.07744920781054472
#>     Attrib V40    -0.27607258141554075
#>     Attrib V41    -0.17640110426695627
#>     Attrib V42    0.08944172154885123
#>     Attrib V43    0.3962755201334139
#>     Attrib V44    0.4540889371570224
#>     Attrib V45    0.4477939805643645
#>     Attrib V46    0.3614216619085465
#>     Attrib V47    -0.06258656829461114
#>     Attrib V48    0.047715222281820076
#>     Attrib V49    0.15348123291634735
#>     Attrib V5    -0.07979809030394264
#>     Attrib V50    -0.5355953337546847
#>     Attrib V51    -0.19117073635890722
#>     Attrib V52    -0.04421027310936653
#>     Attrib V53    0.7660131376739309
#>     Attrib V54    0.28802409651766325
#>     Attrib V55    -0.3627291216581567
#>     Attrib V56    0.3320887962868674
#>     Attrib V57    -0.2293084034951338
#>     Attrib V58    0.3031163556461857
#>     Attrib V59    0.6691371897751418
#>     Attrib V6    -0.445705999526788
#>     Attrib V60    -0.006093378242501999
#>     Attrib V7    -0.4764906168900057
#>     Attrib V8    0.12265338258396492
#>     Attrib V9    0.2478461123263385
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.2507237033088857
#>     Attrib V1    0.11322787878852816
#>     Attrib V10    -0.13318887624593742
#>     Attrib V11    0.5492001670925973
#>     Attrib V12    0.49553675198553604
#>     Attrib V13    0.09850366462589276
#>     Attrib V14    -0.01780414804009309
#>     Attrib V15    0.15470230846431832
#>     Attrib V16    -0.23013776856040177
#>     Attrib V17    -0.11959093807916124
#>     Attrib V18    -0.4060937330206011
#>     Attrib V19    -0.08347243172439663
#>     Attrib V2    -0.04564504928071922
#>     Attrib V20    0.5340792652381304
#>     Attrib V21    0.2919596026468885
#>     Attrib V22    -0.07583950128524096
#>     Attrib V23    0.3893847765527202
#>     Attrib V24    0.6316328948726708
#>     Attrib V25    -0.5712442248526091
#>     Attrib V26    -0.3313906505226776
#>     Attrib V27    -0.046947814304473555
#>     Attrib V28    -0.25658627570354664
#>     Attrib V29    -0.14218703616432027
#>     Attrib V3    -0.02169448637697632
#>     Attrib V30    0.042480237976953265
#>     Attrib V31    -0.8639404876477804
#>     Attrib V32    -0.23367496629503345
#>     Attrib V33    0.008046075679838127
#>     Attrib V34    3.059061029243392E-4
#>     Attrib V35    -0.17088646837262653
#>     Attrib V36    -0.43305591855504505
#>     Attrib V37    -0.5059586059913669
#>     Attrib V38    -0.1048271150458768
#>     Attrib V39    -0.08935287018666334
#>     Attrib V4    0.013784636348866154
#>     Attrib V40    -0.3985223602384993
#>     Attrib V41    -0.06523319217574679
#>     Attrib V42    0.013102210905378038
#>     Attrib V43    0.24269906551550888
#>     Attrib V44    0.41646344662556195
#>     Attrib V45    0.45764558959950447
#>     Attrib V46    0.4664288573267343
#>     Attrib V47    0.1437301582429773
#>     Attrib V48    0.162922513944826
#>     Attrib V49    0.1897632055225912
#>     Attrib V5    -0.06862902795401069
#>     Attrib V50    -0.5164724947752803
#>     Attrib V51    -0.17064909605834805
#>     Attrib V52    0.08486305348283711
#>     Attrib V53    0.6052888758656388
#>     Attrib V54    0.24721326391464873
#>     Attrib V55    -0.3773343635968073
#>     Attrib V56    0.17180699649873551
#>     Attrib V57    -0.21780434872573656
#>     Attrib V58    0.3985069077753126
#>     Attrib V59    0.5334434966609227
#>     Attrib V6    -0.29513081534239727
#>     Attrib V60    -0.16684594125198696
#>     Attrib V7    -0.5123356370890138
#>     Attrib V8    0.039434611101270195
#>     Attrib V9    0.24357550695064586
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.008297289940568987
#>     Attrib V1    0.038293236672821675
#>     Attrib V10    -0.1477360257472929
#>     Attrib V11    0.20314211246230174
#>     Attrib V12    0.19675323759659372
#>     Attrib V13    0.06625305412579353
#>     Attrib V14    0.09620295776303901
#>     Attrib V15    0.15397383413248417
#>     Attrib V16    -0.05102960983921349
#>     Attrib V17    0.009065580113294017
#>     Attrib V18    -0.15474027431984114
#>     Attrib V19    -0.021905625047236504
#>     Attrib V2    -0.012977782107820529
#>     Attrib V20    0.30798526862893416
#>     Attrib V21    0.235991763317654
#>     Attrib V22    -0.08789825142328511
#>     Attrib V23    0.13977449193134311
#>     Attrib V24    0.26843094431307685
#>     Attrib V25    -0.3172170377710979
#>     Attrib V26    -0.20415458333716727
#>     Attrib V27    -0.14684560794304843
#>     Attrib V28    -0.21410958235922622
#>     Attrib V29    -0.09685755588206416
#>     Attrib V3    0.06480718654674532
#>     Attrib V30    -0.04765567782110761
#>     Attrib V31    -0.45945639406885375
#>     Attrib V32    -0.179699359512784
#>     Attrib V33    0.011348176136171135
#>     Attrib V34    0.04112054689764302
#>     Attrib V35    -0.07917551248712154
#>     Attrib V36    -0.21268612740595433
#>     Attrib V37    -0.277745111266947
#>     Attrib V38    -0.06641037903610919
#>     Attrib V39    -0.008543432842043995
#>     Attrib V4    0.04171913494575908
#>     Attrib V40    -0.16012016696577608
#>     Attrib V41    -0.0788422137194792
#>     Attrib V42    0.042241494059618856
#>     Attrib V43    0.1132879686453683
#>     Attrib V44    0.20316280669487377
#>     Attrib V45    0.2858682133652735
#>     Attrib V46    0.17293044560257329
#>     Attrib V47    -0.0050915824375262686
#>     Attrib V48    0.08931558203036508
#>     Attrib V49    0.13731646438764622
#>     Attrib V5    0.02081680456075592
#>     Attrib V50    -0.2116912790753565
#>     Attrib V51    -0.05117086572331106
#>     Attrib V52    -0.017470210459847684
#>     Attrib V53    0.38468959099491606
#>     Attrib V54    0.11838523025160445
#>     Attrib V55    -0.13471108663730116
#>     Attrib V56    0.19096329576972282
#>     Attrib V57    -0.022925088113927943
#>     Attrib V58    0.2073609074969204
#>     Attrib V59    0.3395638140505181
#>     Attrib V6    -0.17697035534569092
#>     Attrib V60    -0.027101546724087953
#>     Attrib V7    -0.22735341300593268
#>     Attrib V8    0.005923396534320542
#>     Attrib V9    0.11484598488036918
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.7289456876874527
#>     Attrib V1    -0.2069759174429705
#>     Attrib V10    0.10006189790946561
#>     Attrib V11    -1.1008894814005274
#>     Attrib V12    -1.026257977255494
#>     Attrib V13    -0.1853827843633991
#>     Attrib V14    0.2671875495466399
#>     Attrib V15    0.0335762621657368
#>     Attrib V16    0.4669091511343066
#>     Attrib V17    0.24111331762271118
#>     Attrib V18    0.6424053926520027
#>     Attrib V19    0.3029547569334502
#>     Attrib V2    0.23017082653371676
#>     Attrib V20    -0.5725363472393604
#>     Attrib V21    -0.18063726937969868
#>     Attrib V22    0.22720633341357258
#>     Attrib V23    -0.70846753067803
#>     Attrib V24    -1.1489794264872533
#>     Attrib V25    1.027812418633541
#>     Attrib V26    0.44232168546949807
#>     Attrib V27    -0.17237559828648336
#>     Attrib V28    0.1076474110679014
#>     Attrib V29    -0.028202570134911727
#>     Attrib V3    0.22637236445890227
#>     Attrib V30    -0.10683632127668892
#>     Attrib V31    1.1533043853699922
#>     Attrib V32    0.13399724502474414
#>     Attrib V33    -0.03773058265961837
#>     Attrib V34    -0.05520645623978452
#>     Attrib V35    0.22813098873013693
#>     Attrib V36    0.6862591828323287
#>     Attrib V37    0.6193169849965559
#>     Attrib V38    0.07871787736461343
#>     Attrib V39    0.1700779217827444
#>     Attrib V4    0.06779989231013639
#>     Attrib V40    0.7322573526184051
#>     Attrib V41    -0.10129564661762497
#>     Attrib V42    0.13837509935558354
#>     Attrib V43    -0.33234634748555975
#>     Attrib V44    -0.6716052280980357
#>     Attrib V45    -0.8522414752374472
#>     Attrib V46    -0.9844637234768
#>     Attrib V47    -0.4022602914303372
#>     Attrib V48    -0.46396241916241715
#>     Attrib V49    -0.43753183684501246
#>     Attrib V5    0.0750342221835008
#>     Attrib V50    0.8651455466976764
#>     Attrib V51    0.24202934287468233
#>     Attrib V52    -0.20469046561549292
#>     Attrib V53    -0.8317391871943565
#>     Attrib V54    -0.08957035986993735
#>     Attrib V55    0.781482449656199
#>     Attrib V56    0.02597343529924376
#>     Attrib V57    0.4354278169090941
#>     Attrib V58    -0.563008524237328
#>     Attrib V59    -0.5498004176621469
#>     Attrib V6    0.24258994366324851
#>     Attrib V60    0.4232679914285616
#>     Attrib V7    0.8042501766221721
#>     Attrib V8    0.13033446438724625
#>     Attrib V9    -0.5063409248208623
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.015955973149497368
#>     Attrib V1    0.11722393829109214
#>     Attrib V10    -0.11428566688544187
#>     Attrib V11    0.1359909231445768
#>     Attrib V12    0.17355078367213989
#>     Attrib V13    -0.002611158919853073
#>     Attrib V14    0.039836404799097905
#>     Attrib V15    0.056738942082079
#>     Attrib V16    0.02450362905879833
#>     Attrib V17    -0.008146389599410489
#>     Attrib V18    -0.05483758984265549
#>     Attrib V19    -0.05731717771358645
#>     Attrib V2    0.04770689110881267
#>     Attrib V20    0.14180504613978293
#>     Attrib V21    0.09448593652091727
#>     Attrib V22    -0.11432901065124601
#>     Attrib V23    0.048275056549517824
#>     Attrib V24    0.21542538851171697
#>     Attrib V25    -0.10798261536798519
#>     Attrib V26    -0.11077682309309303
#>     Attrib V27    -0.03999786533776475
#>     Attrib V28    -0.17499146307997587
#>     Attrib V29    -0.09677711080705194
#>     Attrib V3    0.06154904079079332
#>     Attrib V30    -0.04466899281741541
#>     Attrib V31    -0.3020808508433394
#>     Attrib V32    -0.06954973922819149
#>     Attrib V33    0.027869735832809002
#>     Attrib V34    0.007140631075748732
#>     Attrib V35    -0.021399911472788365
#>     Attrib V36    -0.1539908451684618
#>     Attrib V37    -0.17822224728856445
#>     Attrib V38    -0.04664909735995764
#>     Attrib V39    -0.012550060219741416
#>     Attrib V4    0.10634101201173113
#>     Attrib V40    -0.1224031378776897
#>     Attrib V41    0.02584843671061468
#>     Attrib V42    0.052601375759474746
#>     Attrib V43    0.08889600226266986
#>     Attrib V44    0.13599049344825556
#>     Attrib V45    0.18419784419947158
#>     Attrib V46    0.14309264886848597
#>     Attrib V47    -0.010935692836203279
#>     Attrib V48    0.0036132013117051204
#>     Attrib V49    0.04056011171567094
#>     Attrib V5    0.03230560515014173
#>     Attrib V50    -0.12974291659043172
#>     Attrib V51    -0.05000095093695097
#>     Attrib V52    -0.04268660442559159
#>     Attrib V53    0.2773351652590884
#>     Attrib V54    0.06661061822369037
#>     Attrib V55    -0.081756787668252
#>     Attrib V56    0.15754647215771342
#>     Attrib V57    0.035513239154171705
#>     Attrib V58    0.18703709179085348
#>     Attrib V59    0.2986240737455031
#>     Attrib V6    -0.0049021589750917575
#>     Attrib V60    0.04570770164366926
#>     Attrib V7    -0.09890745764380124
#>     Attrib V8    0.0822448419617405
#>     Attrib V9    0.10327942489268876
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.4284432272437699
#>     Attrib V1    0.3443252979756934
#>     Attrib V10    0.7419572180627227
#>     Attrib V11    1.4126814102852199
#>     Attrib V12    0.8757267277284235
#>     Attrib V13    0.313666811014439
#>     Attrib V14    -0.43125816415218243
#>     Attrib V15    -0.6385428392947579
#>     Attrib V16    -0.839610783951419
#>     Attrib V17    -0.4183182011690702
#>     Attrib V18    -0.3284407885895128
#>     Attrib V19    0.012015643957042741
#>     Attrib V2    0.13878716906807204
#>     Attrib V20    0.23950881382891515
#>     Attrib V21    0.0725702700321645
#>     Attrib V22    -0.04357700710104587
#>     Attrib V23    1.0487169571194959
#>     Attrib V24    0.8967229288769343
#>     Attrib V25    -0.5562582210020707
#>     Attrib V26    0.524223368681795
#>     Attrib V27    0.9134805005404224
#>     Attrib V28    1.0038860416071331
#>     Attrib V29    0.8213331235647037
#>     Attrib V3    0.0713546726166835
#>     Attrib V30    0.031089846666650718
#>     Attrib V31    -1.0129983873776227
#>     Attrib V32    -0.006285874874606654
#>     Attrib V33    -0.16413236934565126
#>     Attrib V34    -0.1268785105363114
#>     Attrib V35    -0.06919701644854517
#>     Attrib V36    -0.7930125512954245
#>     Attrib V37    -0.45001068228176266
#>     Attrib V38    -0.21683869885686594
#>     Attrib V39    -0.18278497839429816
#>     Attrib V4    0.25264878639514265
#>     Attrib V40    -0.48411908912146584
#>     Attrib V41    0.6876320756838341
#>     Attrib V42    -0.12642976764940164
#>     Attrib V43    -0.16266908641785904
#>     Attrib V44    0.5365385574190537
#>     Attrib V45    0.8657816562519245
#>     Attrib V46    1.2745551716714885
#>     Attrib V47    0.7541889821355282
#>     Attrib V48    0.5618976989421636
#>     Attrib V49    0.6217070417293625
#>     Attrib V5    0.6009130632590752
#>     Attrib V50    -0.22337188503339192
#>     Attrib V51    0.3234175631668669
#>     Attrib V52    0.772588656149314
#>     Attrib V53    0.4703404594967057
#>     Attrib V54    -0.2612756485816144
#>     Attrib V55    -0.4830368677039208
#>     Attrib V56    -0.4908807294208307
#>     Attrib V57    -0.8144425906065184
#>     Attrib V58    0.4673693438966995
#>     Attrib V59    0.1412327005881715
#>     Attrib V6    0.5083883931285755
#>     Attrib V60    -0.5888637176957927
#>     Attrib V7    -0.25266883622080666
#>     Attrib V8    -0.24460796328200582
#>     Attrib V9    1.0613820396352724
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.07293340225989546
#>     Attrib V1    0.06513375984390908
#>     Attrib V10    -0.08555366832790162
#>     Attrib V11    0.23580557766851892
#>     Attrib V12    0.18065370848111115
#>     Attrib V13    0.04778575883622148
#>     Attrib V14    -0.022208841209510628
#>     Attrib V15    0.05281655884430191
#>     Attrib V16    -0.012166163391944753
#>     Attrib V17    -0.011382323041286935
#>     Attrib V18    -0.16834219643716117
#>     Attrib V19    -0.03272167182431403
#>     Attrib V2    0.02384655133205106
#>     Attrib V20    0.16885827746088358
#>     Attrib V21    0.11228460045782268
#>     Attrib V22    -0.11020844299765922
#>     Attrib V23    0.12383046715716135
#>     Attrib V24    0.3168084772917772
#>     Attrib V25    -0.22278368507667168
#>     Attrib V26    -0.12100122740781152
#>     Attrib V27    -0.0626359981457504
#>     Attrib V28    -0.15462318167333347
#>     Attrib V29    -0.05902413119316493
#>     Attrib V3    0.027812284880587995
#>     Attrib V30    -0.004081174093358692
#>     Attrib V31    -0.3825666603537515
#>     Attrib V32    -0.1076318725816904
#>     Attrib V33    0.03488012171600321
#>     Attrib V34    0.020221161779086134
#>     Attrib V35    -0.08171688428217203
#>     Attrib V36    -0.16442037217327538
#>     Attrib V37    -0.26101735770175244
#>     Attrib V38    -0.008508172285848768
#>     Attrib V39    -0.03627379380414321
#>     Attrib V4    0.10573307852569834
#>     Attrib V40    -0.17460013358994564
#>     Attrib V41    -0.028503830998677333
#>     Attrib V42    -0.062402070545873906
#>     Attrib V43    0.08851156714279916
#>     Attrib V44    0.2140293084649882
#>     Attrib V45    0.240063361603757
#>     Attrib V46    0.22677250487708628
#>     Attrib V47    0.047018203190580934
#>     Attrib V48    0.11217443683779053
#>     Attrib V49    0.115574012376074
#>     Attrib V5    0.007104313799914543
#>     Attrib V50    -0.2538128894183103
#>     Attrib V51    -0.08291885889439608
#>     Attrib V52    -0.015310265036010703
#>     Attrib V53    0.34621531149542006
#>     Attrib V54    0.11813625156629498
#>     Attrib V55    -0.1449078357786191
#>     Attrib V56    0.09801555024680354
#>     Attrib V57    0.01121562020328837
#>     Attrib V58    0.17813153845672172
#>     Attrib V59    0.3303029555854003
#>     Attrib V6    -0.10559717719630064
#>     Attrib V60    0.013706973636574025
#>     Attrib V7    -0.17075551471529785
#>     Attrib V8    0.013230307523466062
#>     Attrib V9    0.10105243631687703
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.36070569678437975
#>     Attrib V1    0.2888628456431684
#>     Attrib V10    0.7137696147225129
#>     Attrib V11    1.2817396834609356
#>     Attrib V12    0.912654351706791
#>     Attrib V13    0.3376038055524424
#>     Attrib V14    -0.4581875849425298
#>     Attrib V15    -0.577894466229335
#>     Attrib V16    -0.7619024369056308
#>     Attrib V17    -0.3526602444755032
#>     Attrib V18    -0.3258505549406728
#>     Attrib V19    -0.10531240748275855
#>     Attrib V2    0.08315741065224856
#>     Attrib V20    0.09461917532258597
#>     Attrib V21    -0.007621633430424321
#>     Attrib V22    -0.09795179458600829
#>     Attrib V23    0.8572377161046493
#>     Attrib V24    0.8533802893692106
#>     Attrib V25    -0.43442515584067537
#>     Attrib V26    0.4919464686323829
#>     Attrib V27    0.8616657501564129
#>     Attrib V28    0.848979721965265
#>     Attrib V29    0.6041429800191899
#>     Attrib V3    0.011333653357892496
#>     Attrib V30    0.016797671959787406
#>     Attrib V31    -0.888637304275827
#>     Attrib V32    0.05915694108867154
#>     Attrib V33    -0.12503535634646182
#>     Attrib V34    -0.05735108817000268
#>     Attrib V35    -0.08800020730720237
#>     Attrib V36    -0.7091859792791801
#>     Attrib V37    -0.47722796433235054
#>     Attrib V38    -0.22135039546586702
#>     Attrib V39    -0.1139309487603873
#>     Attrib V4    0.22588427890910162
#>     Attrib V40    -0.4872134122003443
#>     Attrib V41    0.5917289326438818
#>     Attrib V42    -0.1625891506459793
#>     Attrib V43    -0.07827704817284958
#>     Attrib V44    0.45949342685007083
#>     Attrib V45    0.7929081264024339
#>     Attrib V46    1.1788818635222025
#>     Attrib V47    0.6989829102502977
#>     Attrib V48    0.5218932087126373
#>     Attrib V49    0.5913959509612188
#>     Attrib V5    0.5360378138931955
#>     Attrib V50    -0.24551723367968267
#>     Attrib V51    0.30398605630817577
#>     Attrib V52    0.6909181888829471
#>     Attrib V53    0.5107889815301697
#>     Attrib V54    -0.22023069852597277
#>     Attrib V55    -0.38498594642852335
#>     Attrib V56    -0.44457691545521505
#>     Attrib V57    -0.737866247899445
#>     Attrib V58    0.4232190460118082
#>     Attrib V59    0.14895290337542963
#>     Attrib V6    0.4610101546409073
#>     Attrib V60    -0.5636994563087693
#>     Attrib V7    -0.2667968164360826
#>     Attrib V8    -0.15630295915038053
#>     Attrib V9    0.9186923798407037
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.8084790710248674
#>     Attrib V1    -0.19154195628705148
#>     Attrib V10    4.2228369713021827E-4
#>     Attrib V11    -1.1898933378794359
#>     Attrib V12    -0.9748792588290437
#>     Attrib V13    -0.1116890884420185
#>     Attrib V14    0.3736068232689568
#>     Attrib V15    0.032724051607080626
#>     Attrib V16    0.5078565370587947
#>     Attrib V17    0.15788500242114814
#>     Attrib V18    0.6410319080211258
#>     Attrib V19    0.3125205855586391
#>     Attrib V2    0.16178206682271543
#>     Attrib V20    -0.4632249693661018
#>     Attrib V21    -0.11543094202843641
#>     Attrib V22    0.20997184512273312
#>     Attrib V23    -0.7760224753698295
#>     Attrib V24    -1.1529659238198111
#>     Attrib V25    1.0068729232065037
#>     Attrib V26    0.4264877455596469
#>     Attrib V27    -0.2102339960191344
#>     Attrib V28    0.0879294865444095
#>     Attrib V29    -0.045370942299452495
#>     Attrib V3    0.19941748582416288
#>     Attrib V30    -0.053868013245993523
#>     Attrib V31    1.1368479729717504
#>     Attrib V32    -0.06182593966219855
#>     Attrib V33    -0.04300514390161454
#>     Attrib V34    0.004433038306959846
#>     Attrib V35    0.2420959796569739
#>     Attrib V36    0.6837263856892883
#>     Attrib V37    0.6211421512449807
#>     Attrib V38    0.1652405281441036
#>     Attrib V39    0.21615557038218133
#>     Attrib V4    0.0857297735214717
#>     Attrib V40    0.793938927414516
#>     Attrib V41    -0.08224558627364502
#>     Attrib V42    0.1373532659176747
#>     Attrib V43    -0.27841978154311825
#>     Attrib V44    -0.6931443410619701
#>     Attrib V45    -0.8089089980467479
#>     Attrib V46    -0.989935550250981
#>     Attrib V47    -0.43695525713503247
#>     Attrib V48    -0.5457692237899732
#>     Attrib V49    -0.4898856552778178
#>     Attrib V5    0.0019509653854803523
#>     Attrib V50    0.8439686111687522
#>     Attrib V51    0.20510896492241387
#>     Attrib V52    -0.33720853062920736
#>     Attrib V53    -0.7069010794295199
#>     Attrib V54    -0.04257487162504638
#>     Attrib V55    0.7254906932489369
#>     Attrib V56    0.03304432946811667
#>     Attrib V57    0.4755654732248799
#>     Attrib V58    -0.6131194466072383
#>     Attrib V59    -0.5164760579289943
#>     Attrib V6    0.17319644395373157
#>     Attrib V60    0.47129532722270395
#>     Attrib V7    0.7805904748292131
#>     Attrib V8    0.14569781819294872
#>     Attrib V9    -0.5543753211475643
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.0012814921328076372
#>     Attrib V1    0.059529928016904335
#>     Attrib V10    -0.16779904120712205
#>     Attrib V11    0.2300314219162646
#>     Attrib V12    0.2534934680999388
#>     Attrib V13    -0.008642426163649701
#>     Attrib V14    0.05898282620734373
#>     Attrib V15    0.1290029986951258
#>     Attrib V16    -0.021698186635722812
#>     Attrib V17    0.05910989917469168
#>     Attrib V18    -0.12465173898430473
#>     Attrib V19    -0.026486145451090473
#>     Attrib V2    -0.02661110812827591
#>     Attrib V20    0.38994319062062394
#>     Attrib V21    0.20936788864362965
#>     Attrib V22    -0.10392704894026877
#>     Attrib V23    0.13585803391551277
#>     Attrib V24    0.312699441943727
#>     Attrib V25    -0.2783725983195035
#>     Attrib V26    -0.26716080788731494
#>     Attrib V27    -0.1504051880772723
#>     Attrib V28    -0.2906883291000223
#>     Attrib V29    -0.17587497983261138
#>     Attrib V3    0.0033293724400241197
#>     Attrib V30    -0.037098201959250565
#>     Attrib V31    -0.5591584596290471
#>     Attrib V32    -0.23722726939551253
#>     Attrib V33    -0.014167941958532566
#>     Attrib V34    0.06843152528644678
#>     Attrib V35    -0.0671764880922086
#>     Attrib V36    -0.1996910811004517
#>     Attrib V37    -0.3181038660012879
#>     Attrib V38    0.023245398970176957
#>     Attrib V39    -0.01774268485331851
#>     Attrib V4    0.05661807270984877
#>     Attrib V40    -0.192092837297654
#>     Attrib V41    -0.13018471434869605
#>     Attrib V42    0.010932474769261662
#>     Attrib V43    0.1442926389365065
#>     Attrib V44    0.227730387003762
#>     Attrib V45    0.2937171639358747
#>     Attrib V46    0.19011952328176526
#>     Attrib V47    0.017400593901464995
#>     Attrib V48    0.07772478348644844
#>     Attrib V49    0.09524997192912622
#>     Attrib V5    0.006681289096911473
#>     Attrib V50    -0.24685078278347827
#>     Attrib V51    -0.03671119928951597
#>     Attrib V52    -0.0491399132586796
#>     Attrib V53    0.4061437451498534
#>     Attrib V54    0.22566355309800226
#>     Attrib V55    -0.13723077315516244
#>     Attrib V56    0.21411359415576334
#>     Attrib V57    -0.022853997275820034
#>     Attrib V58    0.2537723529887234
#>     Attrib V59    0.3519022539935336
#>     Attrib V6    -0.1553174977302791
#>     Attrib V60    0.011796207369059888
#>     Attrib V7    -0.28431625729388466
#>     Attrib V8    0.08010457691750582
#>     Attrib V9    0.11259334238211821
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.12091700107936378
#>     Attrib V1    0.0704104725743393
#>     Attrib V10    -0.2900819431904123
#>     Attrib V11    0.47574091780744093
#>     Attrib V12    0.33225713810110935
#>     Attrib V13    0.003301845061007271
#>     Attrib V14    0.10291663884082192
#>     Attrib V15    0.1943718537848089
#>     Attrib V16    -0.07092850417991428
#>     Attrib V17    -0.050274735048414
#>     Attrib V18    -0.31861250831469423
#>     Attrib V19    0.0016495970645162778
#>     Attrib V2    0.006927701204467706
#>     Attrib V20    0.6448999786798675
#>     Attrib V21    0.4249323127226109
#>     Attrib V22    -0.04373601852018969
#>     Attrib V23    0.29495338204654536
#>     Attrib V24    0.5022235878702266
#>     Attrib V25    -0.6006977625765648
#>     Attrib V26    -0.38953115231104535
#>     Attrib V27    -0.12416069734125632
#>     Attrib V28    -0.46716357135896364
#>     Attrib V29    -0.16758064865263678
#>     Attrib V3    0.006223355174616917
#>     Attrib V30    -0.01748854698739847
#>     Attrib V31    -0.9889667165946577
#>     Attrib V32    -0.459253862298121
#>     Attrib V33    -0.01156623983497151
#>     Attrib V34    0.04432825835824777
#>     Attrib V35    -0.19811632730778814
#>     Attrib V36    -0.3460325047660865
#>     Attrib V37    -0.49666141597345476
#>     Attrib V38    0.04000128641354721
#>     Attrib V39    -0.02742391037705065
#>     Attrib V4    0.1119782288608142
#>     Attrib V40    -0.26351332365131663
#>     Attrib V41    -0.191158889390442
#>     Attrib V42    2.485636913265997E-4
#>     Attrib V43    0.3435768553006797
#>     Attrib V44    0.3345598292756545
#>     Attrib V45    0.44596523688507217
#>     Attrib V46    0.40261389649942225
#>     Attrib V47    -0.040313774598275794
#>     Attrib V48    0.09771563614062483
#>     Attrib V49    0.14340051651164626
#>     Attrib V5    -0.08979710527626544
#>     Attrib V50    -0.5215412112322081
#>     Attrib V51    -0.16879923693336077
#>     Attrib V52    0.008804769855657544
#>     Attrib V53    0.7616385426505694
#>     Attrib V54    0.29126258184175535
#>     Attrib V55    -0.3498444787577044
#>     Attrib V56    0.32762733068264815
#>     Attrib V57    -0.11086931522633584
#>     Attrib V58    0.3857854512333056
#>     Attrib V59    0.6543051757301053
#>     Attrib V6    -0.3836879695766173
#>     Attrib V60    -0.0061584452289680635
#>     Attrib V7    -0.4186619758322879
#>     Attrib V8    0.13632412587215967
#>     Attrib V9    0.23862442034481962
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.05055733069762018
#>     Attrib V1    0.08584503030832798
#>     Attrib V10    -0.13008457194713463
#>     Attrib V11    0.18450024908469326
#>     Attrib V12    0.1729420259071827
#>     Attrib V13    0.09761368201600172
#>     Attrib V14    0.05538853825668519
#>     Attrib V15    0.06613480749179765
#>     Attrib V16    -0.06814984405385945
#>     Attrib V17    0.02012217575470682
#>     Attrib V18    -0.11031108686874626
#>     Attrib V19    -0.03985329623402055
#>     Attrib V2    0.005155890064513584
#>     Attrib V20    0.2536466894270204
#>     Attrib V21    0.15704874969495414
#>     Attrib V22    -0.09704234363236755
#>     Attrib V23    0.1428294845006268
#>     Attrib V24    0.27327713352881355
#>     Attrib V25    -0.16207337517961756
#>     Attrib V26    -0.17732221553869434
#>     Attrib V27    -0.04476185147805276
#>     Attrib V28    -0.221212079107262
#>     Attrib V29    -0.09331636544363682
#>     Attrib V3    0.08978785378406227
#>     Attrib V30    -0.048144426630815966
#>     Attrib V31    -0.43958825406392055
#>     Attrib V32    -0.14565692008052228
#>     Attrib V33    -0.020166523449334492
#>     Attrib V34    0.06089451724316845
#>     Attrib V35    -0.067817337729853
#>     Attrib V36    -0.17793456273403996
#>     Attrib V37    -0.21676870922243704
#>     Attrib V38    -0.026308911447501825
#>     Attrib V39    0.03559392171306191
#>     Attrib V4    0.08359137668867901
#>     Attrib V40    -0.12035321512032687
#>     Attrib V41    -0.03410790220625815
#>     Attrib V42    0.020757915126163814
#>     Attrib V43    0.06816343090961019
#>     Attrib V44    0.15571189110046815
#>     Attrib V45    0.17678786197675955
#>     Attrib V46    0.19738410526175962
#>     Attrib V47    0.041560082663568934
#>     Attrib V48    0.03221739832543975
#>     Attrib V49    0.11249533872749837
#>     Attrib V5    0.03467743318329298
#>     Attrib V50    -0.21680309960007962
#>     Attrib V51    -0.08017627919190443
#>     Attrib V52    -0.04008326222603243
#>     Attrib V53    0.3188366329610345
#>     Attrib V54    0.1035301112396266
#>     Attrib V55    -0.11393551783622227
#>     Attrib V56    0.151296978405968
#>     Attrib V57    -0.011584730022054363
#>     Attrib V58    0.1780133052882499
#>     Attrib V59    0.33945630353884204
#>     Attrib V6    -0.06296333958727948
#>     Attrib V60    0.05047017642430216
#>     Attrib V7    -0.11044631361130583
#>     Attrib V8    0.0117377386013941
#>     Attrib V9    0.08091642215397087
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.14275966591222178
#>     Attrib V1    0.1616768093906354
#>     Attrib V10    -0.18618116249691385
#>     Attrib V11    0.5268489262590611
#>     Attrib V12    0.42744773938703773
#>     Attrib V13    0.005287210689089435
#>     Attrib V14    -0.0023038759992833843
#>     Attrib V15    0.21240267025496995
#>     Attrib V16    -0.14616950668983586
#>     Attrib V17    -0.057556344105593085
#>     Attrib V18    -0.33203087649191604
#>     Attrib V19    -0.10634747326861463
#>     Attrib V2    -0.025532169570044713
#>     Attrib V20    0.5832199523939728
#>     Attrib V21    0.3499503816419936
#>     Attrib V22    -0.10034912720815363
#>     Attrib V23    0.3585601404357009
#>     Attrib V24    0.5643734442477856
#>     Attrib V25    -0.5400530673206748
#>     Attrib V26    -0.3296121945529168
#>     Attrib V27    -0.16588400972182407
#>     Attrib V28    -0.47045945880027484
#>     Attrib V29    -0.24542752779251345
#>     Attrib V3    -0.044555217063601146
#>     Attrib V30    -0.014054409197581375
#>     Attrib V31    -0.8722611220066689
#>     Attrib V32    -0.3383863172418491
#>     Attrib V33    0.013463986030547912
#>     Attrib V34    0.01332478801355277
#>     Attrib V35    -0.19140834272783946
#>     Attrib V36    -0.42463039729852325
#>     Attrib V37    -0.4911345234486289
#>     Attrib V38    -0.07347437022269683
#>     Attrib V39    -0.05822970010205358
#>     Attrib V4    0.03641893094269224
#>     Attrib V40    -0.36084852952620045
#>     Attrib V41    -0.18227684762538296
#>     Attrib V42    -0.03629449263712233
#>     Attrib V43    0.20878722311711173
#>     Attrib V44    0.3754794925975369
#>     Attrib V45    0.36928530180065045
#>     Attrib V46    0.40869878585379
#>     Attrib V47    0.027733445871928022
#>     Attrib V48    0.17429372979399083
#>     Attrib V49    0.2269814963288741
#>     Attrib V5    -0.12383930374714378
#>     Attrib V50    -0.4846588261849626
#>     Attrib V51    -0.16303308399174596
#>     Attrib V52    0.03229146849635713
#>     Attrib V53    0.653582857565897
#>     Attrib V54    0.32580167363501256
#>     Attrib V55    -0.3191696730103383
#>     Attrib V56    0.277350964609651
#>     Attrib V57    -0.1288545139131757
#>     Attrib V58    0.39372244265127015
#>     Attrib V59    0.5854795158410215
#>     Attrib V6    -0.2998621118055732
#>     Attrib V60    -4.311720721893339E-4
#>     Attrib V7    -0.4228178841331626
#>     Attrib V8    0.04127873135470226
#>     Attrib V9    0.23674658245918015
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.6145814484730832
#>     Attrib V1    -0.208310695061852
#>     Attrib V10    0.05209885813662232
#>     Attrib V11    -0.9918363171350882
#>     Attrib V12    -0.7802865532059889
#>     Attrib V13    -0.13581082177541057
#>     Attrib V14    0.22914029944583783
#>     Attrib V15    0.07840700039133677
#>     Attrib V16    0.4243847562891882
#>     Attrib V17    0.18703062814940122
#>     Attrib V18    0.5211596729147546
#>     Attrib V19    0.30442169189170987
#>     Attrib V2    0.11516038771335546
#>     Attrib V20    -0.41810320074486246
#>     Attrib V21    -0.17992523602004176
#>     Attrib V22    0.21416770884740224
#>     Attrib V23    -0.6391808492856824
#>     Attrib V24    -0.9282706588986487
#>     Attrib V25    0.8406315652933157
#>     Attrib V26    0.4245585524015461
#>     Attrib V27    -0.18378295152130567
#>     Attrib V28    0.12124178095070826
#>     Attrib V29    -0.0010403933782054606
#>     Attrib V3    0.19212842666593488
#>     Attrib V30    -0.10346760297362412
#>     Attrib V31    0.9268346762735358
#>     Attrib V32    0.04663864051078598
#>     Attrib V33    -0.0699495878820562
#>     Attrib V34    0.026462247821493836
#>     Attrib V35    0.20570009076134252
#>     Attrib V36    0.5869770683977978
#>     Attrib V37    0.5948466176257758
#>     Attrib V38    0.10199414175080286
#>     Attrib V39    0.17276709194860776
#>     Attrib V4    0.09970919486706374
#>     Attrib V40    0.6178714296895986
#>     Attrib V41    -0.06584974754129712
#>     Attrib V42    0.07114417004265186
#>     Attrib V43    -0.30136251854370744
#>     Attrib V44    -0.622989228957084
#>     Attrib V45    -0.6613227553997223
#>     Attrib V46    -0.7608410111625166
#>     Attrib V47    -0.33696567935633065
#>     Attrib V48    -0.40667721230017134
#>     Attrib V49    -0.3782696939251638
#>     Attrib V5    0.06401736271526239
#>     Attrib V50    0.7087417064433997
#>     Attrib V51    0.20989260505269278
#>     Attrib V52    -0.22204593805098027
#>     Attrib V53    -0.6069566304701597
#>     Attrib V54    -0.10335921742729826
#>     Attrib V55    0.6095975290854986
#>     Attrib V56    0.0376370273522506
#>     Attrib V57    0.3475239508618763
#>     Attrib V58    -0.4935251434876618
#>     Attrib V59    -0.47862596612044084
#>     Attrib V6    0.18139434117824943
#>     Attrib V60    0.3486945802182571
#>     Attrib V7    0.6268077981949193
#>     Attrib V8    0.10134628566225772
#>     Attrib V9    -0.401863522437711
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1781298220981683
#>     Attrib V1    -0.09154894783865095
#>     Attrib V10    0.011707671436096674
#>     Attrib V11    -0.3189841030737182
#>     Attrib V12    -0.2826609650689503
#>     Attrib V13    -0.03110908501089882
#>     Attrib V14    0.012404169002759157
#>     Attrib V15    -0.019430771953684173
#>     Attrib V16    0.16416471629646207
#>     Attrib V17    0.11989739085805823
#>     Attrib V18    0.23190908039389688
#>     Attrib V19    0.1255106095623004
#>     Attrib V2    -0.04299514946915059
#>     Attrib V20    -0.1330067934986557
#>     Attrib V21    -0.03873744516677524
#>     Attrib V22    0.07271486048820704
#>     Attrib V23    -0.1863157851685005
#>     Attrib V24    -0.22338456324308828
#>     Attrib V25    0.2998022864354308
#>     Attrib V26    0.09108454694138632
#>     Attrib V27    -0.08073379381709261
#>     Attrib V28    0.03324670765401876
#>     Attrib V29    -0.03226582462527347
#>     Attrib V3    0.03884135257136221
#>     Attrib V30    -0.10428067969145248
#>     Attrib V31    0.17093696727833937
#>     Attrib V32    -0.0022562022865894094
#>     Attrib V33    -0.021463228078892033
#>     Attrib V34    0.06302114881174976
#>     Attrib V35    0.09716682992492004
#>     Attrib V36    0.18731824105986114
#>     Attrib V37    0.21406295896685043
#>     Attrib V38    0.023112362362546914
#>     Attrib V39    0.042740730652162454
#>     Attrib V4    0.013040062135732243
#>     Attrib V40    0.175264365375681
#>     Attrib V41    0.018150810016585826
#>     Attrib V42    0.0965608034765229
#>     Attrib V43    -0.09111148149840333
#>     Attrib V44    -0.2199322446261048
#>     Attrib V45    -0.22508120093880307
#>     Attrib V46    -0.24762276366404232
#>     Attrib V47    -0.13519864989283017
#>     Attrib V48    -0.1912345902382959
#>     Attrib V49    -0.19696659496729876
#>     Attrib V5    0.019904179249438995
#>     Attrib V50    0.20618280943332704
#>     Attrib V51    0.07638129061902385
#>     Attrib V52    -0.051342672459041845
#>     Attrib V53    -0.14801926545047886
#>     Attrib V54    -0.07170770820680893
#>     Attrib V55    0.13837817595560414
#>     Attrib V56    -0.003855870504109073
#>     Attrib V57    0.12007937604242717
#>     Attrib V58    -0.12965854837019203
#>     Attrib V59    -0.19910446242203172
#>     Attrib V6    0.08190950662911975
#>     Attrib V60    0.08346193430940718
#>     Attrib V7    0.18637379085546144
#>     Attrib V8    -0.027842704482126623
#>     Attrib V9    -0.10369776294790173
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.11865083277037682
#>     Attrib V1    -0.06592344852044828
#>     Attrib V10    0.04430719961398453
#>     Attrib V11    -0.29830725885314263
#>     Attrib V12    -0.31338540066954657
#>     Attrib V13    -0.09027510995084839
#>     Attrib V14    0.03352044112215609
#>     Attrib V15    0.06700821452534138
#>     Attrib V16    0.12941368631281755
#>     Attrib V17    0.07408210814940544
#>     Attrib V18    0.19019093124187889
#>     Attrib V19    0.13711663781765884
#>     Attrib V2    0.05970874118630073
#>     Attrib V20    -0.11539550801222835
#>     Attrib V21    -0.015180502070876739
#>     Attrib V22    0.14490308135081614
#>     Attrib V23    -0.18203566958479073
#>     Attrib V24    -0.24152413887323387
#>     Attrib V25    0.266361901277635
#>     Attrib V26    0.08397432844089316
#>     Attrib V27    -0.0769714500898826
#>     Attrib V28    0.005572251741087102
#>     Attrib V29    -0.06086062338138778
#>     Attrib V3    0.014628654141304064
#>     Attrib V30    -0.04186956492767818
#>     Attrib V31    0.26208845957586424
#>     Attrib V32    -0.06139271585290449
#>     Attrib V33    0.028166176723344583
#>     Attrib V34    0.013634757476095723
#>     Attrib V35    0.15303528160123311
#>     Attrib V36    0.18512304528226461
#>     Attrib V37    0.17363683022075554
#>     Attrib V38    0.07332003458966016
#>     Attrib V39    0.07429856809344493
#>     Attrib V4    0.004847749277967338
#>     Attrib V40    0.19307856113464786
#>     Attrib V41    0.03905897845329571
#>     Attrib V42    0.05975126649370792
#>     Attrib V43    -0.04199576780469865
#>     Attrib V44    -0.17509656496987308
#>     Attrib V45    -0.2123316518640661
#>     Attrib V46    -0.31449526806355044
#>     Attrib V47    -0.19411686906967712
#>     Attrib V48    -0.1565169642545055
#>     Attrib V49    -0.2211224593613215
#>     Attrib V5    0.018161526134312288
#>     Attrib V50    0.17642798967338252
#>     Attrib V51    0.03100422684037118
#>     Attrib V52    -0.11469132342045982
#>     Attrib V53    -0.22524052987703927
#>     Attrib V54    -0.06549919636336553
#>     Attrib V55    0.1632923861230838
#>     Attrib V56    0.0029437791612238703
#>     Attrib V57    0.14953591095471777
#>     Attrib V58    -0.22482664436341585
#>     Attrib V59    -0.20404797703000396
#>     Attrib V6    0.08452748247148666
#>     Attrib V60    0.09511537324402446
#>     Attrib V7    0.18504442738270924
#>     Attrib V8    0.05093387029708611
#>     Attrib V9    -0.13187375028271062
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.11262594799630629
#>     Attrib V1    0.08965091303326149
#>     Attrib V10    -0.04040322198818925
#>     Attrib V11    0.1284240115444276
#>     Attrib V12    0.09951349981523747
#>     Attrib V13    0.021808248779906347
#>     Attrib V14    0.052826253977854905
#>     Attrib V15    0.04028483777245714
#>     Attrib V16    -0.004145235786878861
#>     Attrib V17    -0.01218334280881151
#>     Attrib V18    -0.014823281467163711
#>     Attrib V19    -0.06321085833252466
#>     Attrib V2    0.057286293751848585
#>     Attrib V20    0.1289819423902097
#>     Attrib V21    0.09000903393928637
#>     Attrib V22    -0.0850927124995434
#>     Attrib V23    0.03907588224509923
#>     Attrib V24    0.12205721205840143
#>     Attrib V25    -0.11367131312179388
#>     Attrib V26    -0.07621105561494032
#>     Attrib V27    -0.05212314337562674
#>     Attrib V28    -0.1473799528562698
#>     Attrib V29    -0.0948911771977343
#>     Attrib V3    0.1117569724771898
#>     Attrib V30    -0.08032677353627492
#>     Attrib V31    -0.26802127239238105
#>     Attrib V32    -0.10726287677966988
#>     Attrib V33    1.5125041299615753E-4
#>     Attrib V34    0.058450648102094646
#>     Attrib V35    -0.04073041781211383
#>     Attrib V36    -0.03643521779031648
#>     Attrib V37    -0.1552759894153855
#>     Attrib V38    -0.032021459825970315
#>     Attrib V39    0.039815748383404945
#>     Attrib V4    0.06290373500141387
#>     Attrib V40    -0.09896857193845206
#>     Attrib V41    -0.05411999566884747
#>     Attrib V42    0.010635883624994088
#>     Attrib V43    0.06538858839458159
#>     Attrib V44    0.14708033619965538
#>     Attrib V45    0.10644832357897994
#>     Attrib V46    0.09760278301515868
#>     Attrib V47    0.04945324139204066
#>     Attrib V48    0.04890527586276189
#>     Attrib V49    0.08981002281694819
#>     Attrib V5    0.048603358844322826
#>     Attrib V50    -0.14564394333869135
#>     Attrib V51    0.03544527349747229
#>     Attrib V52    -0.010769477527735485
#>     Attrib V53    0.22997407208778692
#>     Attrib V54    0.05766530352397148
#>     Attrib V55    1.750498037757505E-4
#>     Attrib V56    0.1612374985844977
#>     Attrib V57    -0.012471254152932156
#>     Attrib V58    0.15444132228166535
#>     Attrib V59    0.25189261956660497
#>     Attrib V6    -0.05332426120813826
#>     Attrib V60    0.07856278892424522
#>     Attrib V7    -0.052532361783120866
#>     Attrib V8    0.0882487882748687
#>     Attrib V9    0.07866595354579595
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.43750497547268896
#>     Attrib V1    0.17561413358407787
#>     Attrib V10    0.24570075667389293
#>     Attrib V11    0.9118781724653569
#>     Attrib V12    0.7274448811686672
#>     Attrib V13    0.08727768616023068
#>     Attrib V14    -0.2894673979925171
#>     Attrib V15    -0.2544301344889267
#>     Attrib V16    -0.5234110896769975
#>     Attrib V17    -0.31380047108477216
#>     Attrib V18    -0.4315668374210104
#>     Attrib V19    -0.20005028098250588
#>     Attrib V2    0.018237476881044882
#>     Attrib V20    -0.06748890350215551
#>     Attrib V21    -0.2699328186934475
#>     Attrib V22    -0.3471355782561889
#>     Attrib V23    0.4268962340172914
#>     Attrib V24    0.7150243751422826
#>     Attrib V25    -0.4483751622593299
#>     Attrib V26    0.1517823613697317
#>     Attrib V27    0.52815233847873
#>     Attrib V28    0.4664483192504317
#>     Attrib V29    0.30095432452328447
#>     Attrib V3    -0.09522689960154139
#>     Attrib V30    -0.004548980536444342
#>     Attrib V31    -0.6636705947452258
#>     Attrib V32    0.08076135778955149
#>     Attrib V33    0.026571717410131746
#>     Attrib V34    -0.022320652331206947
#>     Attrib V35    -0.13826088871823786
#>     Attrib V36    -0.6439774706520869
#>     Attrib V37    -0.6001569778544197
#>     Attrib V38    -0.31112564245039337
#>     Attrib V39    -0.2330017804376613
#>     Attrib V4    0.14120688301598788
#>     Attrib V40    -0.4233734610713832
#>     Attrib V41    0.33705073814682934
#>     Attrib V42    -0.060976571505562446
#>     Attrib V43    -0.030884972112309467
#>     Attrib V44    0.4042309735474753
#>     Attrib V45    0.7188252578176315
#>     Attrib V46    0.8795380516154238
#>     Attrib V47    0.44662777611446025
#>     Attrib V48    0.5186260944863565
#>     Attrib V49    0.5054081487293294
#>     Attrib V5    0.3177105591556493
#>     Attrib V50    -0.3867223670823194
#>     Attrib V51    0.04366900936410425
#>     Attrib V52    0.5560952868147271
#>     Attrib V53    0.5608639464916647
#>     Attrib V54    -0.08892799111100477
#>     Attrib V55    -0.2694733942975475
#>     Attrib V56    -0.308096357069212
#>     Attrib V57    -0.3200364415165877
#>     Attrib V58    0.5011771914851676
#>     Attrib V59    0.2998685986058605
#>     Attrib V6    0.2769414856197242
#>     Attrib V60    -0.3667595608816733
#>     Attrib V7    -0.2473645665118311
#>     Attrib V8    0.021619139190089096
#>     Attrib V9    0.5676830542118554
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.175565900592869
#>     Attrib V1    0.13436967091860716
#>     Attrib V10    -0.13309753990582596
#>     Attrib V11    0.6110424011289547
#>     Attrib V12    0.5652679096690808
#>     Attrib V13    0.10595040205284009
#>     Attrib V14    0.05338373895165601
#>     Attrib V15    0.13079959016438397
#>     Attrib V16    -0.25719328701958444
#>     Attrib V17    -0.09625808375219362
#>     Attrib V18    -0.3260163694897868
#>     Attrib V19    -0.0031028313338715575
#>     Attrib V2    -0.06424138924443192
#>     Attrib V20    0.7534401764089239
#>     Attrib V21    0.5557025793547772
#>     Attrib V22    0.03450812021342437
#>     Attrib V23    0.4527518571056799
#>     Attrib V24    0.6493030463692739
#>     Attrib V25    -0.6359277627428223
#>     Attrib V26    -0.27022101900240575
#>     Attrib V27    0.026603106503473924
#>     Attrib V28    -0.3511606607440828
#>     Attrib V29    -0.016645190402021892
#>     Attrib V3    -0.013949256961325027
#>     Attrib V30    0.1341704021170061
#>     Attrib V31    -1.0199453315595732
#>     Attrib V32    -0.4954668818455255
#>     Attrib V33    -0.07530366972298438
#>     Attrib V34    0.05195734665284286
#>     Attrib V35    -0.09104598790449069
#>     Attrib V36    -0.26563511614948226
#>     Attrib V37    -0.3590464714226599
#>     Attrib V38    0.13238346879883084
#>     Attrib V39    0.0012370819644896304
#>     Attrib V4    0.06128012852437323
#>     Attrib V40    -0.3471358704925059
#>     Attrib V41    -0.08028774249674692
#>     Attrib V42    -0.007661711221703137
#>     Attrib V43    0.43769093555640315
#>     Attrib V44    0.5861781877491737
#>     Attrib V45    0.5832608449649314
#>     Attrib V46    0.4926060566485804
#>     Attrib V47    0.005890828293705853
#>     Attrib V48    0.10926618066398314
#>     Attrib V49    0.20806249393062906
#>     Attrib V5    -0.04600221663687429
#>     Attrib V50    -0.599644214854883
#>     Attrib V51    -0.13090397341959303
#>     Attrib V52    -0.003221263654802497
#>     Attrib V53    0.7269135083629299
#>     Attrib V54    0.2409929162233624
#>     Attrib V55    -0.43365339639687683
#>     Attrib V56    0.2589710006203704
#>     Attrib V57    -0.40742237897945893
#>     Attrib V58    0.3467115852212534
#>     Attrib V59    0.6143127754205198
#>     Attrib V6    -0.39106358261443885
#>     Attrib V60    -0.12542051981906505
#>     Attrib V7    -0.546935390589066
#>     Attrib V8    -0.05190412651604392
#>     Attrib V9    0.362260484464521
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.5793290766271453
#>     Attrib V1    -0.16962109695173827
#>     Attrib V10    0.036022234375348884
#>     Attrib V11    -0.9933319832698394
#>     Attrib V12    -0.8402350278562083
#>     Attrib V13    -0.14184733844653832
#>     Attrib V14    0.2402052192227743
#>     Attrib V15    0.0356136140324337
#>     Attrib V16    0.41645851146078894
#>     Attrib V17    0.19027948464070332
#>     Attrib V18    0.5555580209170298
#>     Attrib V19    0.26187949656528586
#>     Attrib V2    0.13589659245460872
#>     Attrib V20    -0.40150990689095817
#>     Attrib V21    -0.0802614085995835
#>     Attrib V22    0.1718640288908729
#>     Attrib V23    -0.6665778678276408
#>     Attrib V24    -0.9523338429501825
#>     Attrib V25    0.8663576460764825
#>     Attrib V26    0.4123927728041021
#>     Attrib V27    -0.16400392785376072
#>     Attrib V28    0.08721596528210689
#>     Attrib V29    -0.0014149770316594762
#>     Attrib V3    0.15530543840827246
#>     Attrib V30    -0.073860502181621
#>     Attrib V31    0.9640549150387454
#>     Attrib V32    0.0047264470835436025
#>     Attrib V33    -0.0701322472328341
#>     Attrib V34    -0.015745947623235272
#>     Attrib V35    0.18477100082869247
#>     Attrib V36    0.5748302876086681
#>     Attrib V37    0.5849993708855349
#>     Attrib V38    0.07709550069905183
#>     Attrib V39    0.17854268136318352
#>     Attrib V4    0.1388974592656589
#>     Attrib V40    0.6728393933263068
#>     Attrib V41    -0.014407452452271792
#>     Attrib V42    0.08022817121242191
#>     Attrib V43    -0.25617837545965133
#>     Attrib V44    -0.58933889641689
#>     Attrib V45    -0.7192197697270922
#>     Attrib V46    -0.8231838383574663
#>     Attrib V47    -0.3690931466930728
#>     Attrib V48    -0.39568574466680484
#>     Attrib V49    -0.40633611052208457
#>     Attrib V5    0.06029470624555728
#>     Attrib V50    0.7043633925677515
#>     Attrib V51    0.21213850751591784
#>     Attrib V52    -0.17803005483194081
#>     Attrib V53    -0.6480580019111741
#>     Attrib V54    -0.07544277860799184
#>     Attrib V55    0.597559422893844
#>     Attrib V56    -0.012393255067136627
#>     Attrib V57    0.440612179379162
#>     Attrib V58    -0.505415299410206
#>     Attrib V59    -0.43671254972445367
#>     Attrib V6    0.16491972284038484
#>     Attrib V60    0.40498523119351315
#>     Attrib V7    0.6955428283302388
#>     Attrib V8    0.07310758683404829
#>     Attrib V9    -0.38445106571064164
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.009138139052282616
#>     Attrib V1    0.1492404717602111
#>     Attrib V10    -0.2108781754371806
#>     Attrib V11    0.23792741200285297
#>     Attrib V12    0.2122720104316048
#>     Attrib V13    -0.013662288189571143
#>     Attrib V14    0.1167077312557857
#>     Attrib V15    0.17398179923974524
#>     Attrib V16    0.06956418086965223
#>     Attrib V17    0.0434907183222871
#>     Attrib V18    -0.18264177558231898
#>     Attrib V19    -0.046142283333110067
#>     Attrib V2    0.03986860754827464
#>     Attrib V20    0.46000751843732923
#>     Attrib V21    0.2826556493199363
#>     Attrib V22    -0.10783547648370659
#>     Attrib V23    0.11190979145287748
#>     Attrib V24    0.4005775398980144
#>     Attrib V25    -0.39007481548728357
#>     Attrib V26    -0.354395626912238
#>     Attrib V27    -0.25138774798145264
#>     Attrib V28    -0.5110928108946154
#>     Attrib V29    -0.2464501602201505
#>     Attrib V3    0.030231319516084924
#>     Attrib V30    -0.10557080300143107
#>     Attrib V31    -0.5942541306114262
#>     Attrib V32    -0.2847268935884753
#>     Attrib V33    -0.04271046599621726
#>     Attrib V34    0.008857943685053432
#>     Attrib V35    -0.1535138004003004
#>     Attrib V36    -0.24921852199897926
#>     Attrib V37    -0.36386487466134376
#>     Attrib V38    -0.05509487000851316
#>     Attrib V39    -0.04300360885527523
#>     Attrib V4    0.08057208719625164
#>     Attrib V40    -0.2002089328728579
#>     Attrib V41    -0.21514313101953972
#>     Attrib V42    -0.011560315853801366
#>     Attrib V43    0.2276621153251015
#>     Attrib V44    0.21550718049223225
#>     Attrib V45    0.21038689594062804
#>     Attrib V46    0.22448697997970446
#>     Attrib V47    -0.0676097436384555
#>     Attrib V48    0.10496861438855426
#>     Attrib V49    0.13075115235197401
#>     Attrib V5    -0.04878736524805574
#>     Attrib V50    -0.3123758942813993
#>     Attrib V51    -0.11966119015861841
#>     Attrib V52    -0.016745476791136853
#>     Attrib V53    0.48382259443205733
#>     Attrib V54    0.29723891713716183
#>     Attrib V55    -0.13744064410365384
#>     Attrib V56    0.32674818163971
#>     Attrib V57    0.0074756936579697805
#>     Attrib V58    0.3373855528531581
#>     Attrib V59    0.4934975378886542
#>     Attrib V6    -0.20938241911029867
#>     Attrib V60    0.10789682782635747
#>     Attrib V7    -0.26038919569272145
#>     Attrib V8    0.02575544870537368
#>     Attrib V9    0.11058745166190564
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.10559659411806961
#>     Attrib V1    0.1345638177477276
#>     Attrib V10    -0.2708907947430477
#>     Attrib V11    0.5465096481362836
#>     Attrib V12    0.487015660634874
#>     Attrib V13    0.04126626490068816
#>     Attrib V14    0.08030071566180545
#>     Attrib V15    0.18779495437746765
#>     Attrib V16    -0.18371697430006115
#>     Attrib V17    -0.04934432728768244
#>     Attrib V18    -0.3654157206496866
#>     Attrib V19    -0.05524345749038024
#>     Attrib V2    -0.08625612076860094
#>     Attrib V20    0.7279618858799508
#>     Attrib V21    0.477404708343668
#>     Attrib V22    -0.04221391567193107
#>     Attrib V23    0.3468091845820427
#>     Attrib V24    0.5654848275355427
#>     Attrib V25    -0.6039384820543954
#>     Attrib V26    -0.31892159133228803
#>     Attrib V27    -0.13870767908752538
#>     Attrib V28    -0.508631423099532
#>     Attrib V29    -0.19629359730426896
#>     Attrib V3    0.07063185105971558
#>     Attrib V30    0.04282890721204647
#>     Attrib V31    -1.0671204066141546
#>     Attrib V32    -0.5361595928935354
#>     Attrib V33    -0.08097510530209559
#>     Attrib V34    0.023499050643783905
#>     Attrib V35    -0.1265691451606058
#>     Attrib V36    -0.3089793042505346
#>     Attrib V37    -0.417263834777916
#>     Attrib V38    0.07315805526867221
#>     Attrib V39    0.02286368799051397
#>     Attrib V4    0.12238275809082125
#>     Attrib V40    -0.3600538361630999
#>     Attrib V41    -0.22593477654894237
#>     Attrib V42    0.001768514598595316
#>     Attrib V43    0.4127010789261885
#>     Attrib V44    0.4463112974842489
#>     Attrib V45    0.5352860391644426
#>     Attrib V46    0.424429134413432
#>     Attrib V47    -0.006877447654598366
#>     Attrib V48    -0.0018337422127319531
#>     Attrib V49    0.1717862681924701
#>     Attrib V5    -0.12403588562362716
#>     Attrib V50    -0.582679041549389
#>     Attrib V51    -0.2319095569128001
#>     Attrib V52    -0.007385610940914724
#>     Attrib V53    0.835523547673262
#>     Attrib V54    0.26902532678009333
#>     Attrib V55    -0.377712625543292
#>     Attrib V56    0.3767810941132377
#>     Attrib V57    -0.2577539115037677
#>     Attrib V58    0.34566311656748594
#>     Attrib V59    0.6820113070955727
#>     Attrib V6    -0.4109013141253175
#>     Attrib V60    -0.045375401937703536
#>     Attrib V7    -0.5108392705679751
#>     Attrib V8    0.08111771913119692
#>     Attrib V9    0.2842766548525049
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.11612935410700036
#>     Attrib V1    0.03449332313421431
#>     Attrib V10    0.01021281972270913
#>     Attrib V11    -0.06282221542598514
#>     Attrib V12    -0.03869152663971495
#>     Attrib V13    -0.03211267611954281
#>     Attrib V14    0.03731187647561335
#>     Attrib V15    0.07009845392016101
#>     Attrib V16    0.04300440182223565
#>     Attrib V17    0.10074820364051572
#>     Attrib V18    0.043673487492035666
#>     Attrib V19    0.018412131955769084
#>     Attrib V2    0.04180143172097099
#>     Attrib V20    -0.043792671968559675
#>     Attrib V21    -0.02652911534123758
#>     Attrib V22    -0.04712178308083793
#>     Attrib V23    -0.04907999620385312
#>     Attrib V24    -0.13351767643826468
#>     Attrib V25    0.024322212770542417
#>     Attrib V26    0.015745155472783587
#>     Attrib V27    -0.09469843341064568
#>     Attrib V28    -0.01671570117891524
#>     Attrib V29    -0.04781275714701621
#>     Attrib V3    0.05173370499811212
#>     Attrib V30    -0.05233692312762422
#>     Attrib V31    2.3599349589064912E-4
#>     Attrib V32    0.03142455907840948
#>     Attrib V33    -0.00902563857247325
#>     Attrib V34    0.04516467488643227
#>     Attrib V35    0.08338763372865955
#>     Attrib V36    0.11547776981370085
#>     Attrib V37    0.06794505627174781
#>     Attrib V38    0.0334823497562156
#>     Attrib V39    0.03233728311963976
#>     Attrib V4    0.10423095303613597
#>     Attrib V40    0.1253876096160803
#>     Attrib V41    0.08312744351318163
#>     Attrib V42    0.020875410290220015
#>     Attrib V43    0.034865410523197984
#>     Attrib V44    -0.0527882706052009
#>     Attrib V45    -0.07550702613212483
#>     Attrib V46    -0.03058201190065668
#>     Attrib V47    0.01655164374930622
#>     Attrib V48    -0.04198163853662772
#>     Attrib V49    -0.06143849318080539
#>     Attrib V5    0.04165579595137702
#>     Attrib V50    0.1186850398481625
#>     Attrib V51    0.07645505946135252
#>     Attrib V52    0.057425294469420254
#>     Attrib V53    -0.0138098283680335
#>     Attrib V54    -0.0058348084467215715
#>     Attrib V55    0.08639745030154992
#>     Attrib V56    0.09029423149934883
#>     Attrib V57    0.1424939112970179
#>     Attrib V58    0.025782060586811015
#>     Attrib V59    0.018876075082374467
#>     Attrib V6    0.10710232141867945
#>     Attrib V60    0.03124349377958607
#>     Attrib V7    0.04901870490903713
#>     Attrib V8    0.0496541896066177
#>     Attrib V9    0.056031857437493
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.4630180868262273
#>     Attrib V1    0.3242190261305355
#>     Attrib V10    0.7543379918620768
#>     Attrib V11    1.4462896396977496
#>     Attrib V12    1.017139437260065
#>     Attrib V13    0.40726456574461406
#>     Attrib V14    -0.4176654192792035
#>     Attrib V15    -0.6493802298811765
#>     Attrib V16    -0.8722910159318602
#>     Attrib V17    -0.3663855641278053
#>     Attrib V18    -0.2847933250399776
#>     Attrib V19    -0.015754798934030093
#>     Attrib V2    0.205962187533155
#>     Attrib V20    0.12864612191426278
#>     Attrib V21    0.07117729333495174
#>     Attrib V22    0.06192791507125448
#>     Attrib V23    1.0640361379377057
#>     Attrib V24    0.8482365554438208
#>     Attrib V25    -0.5496942367012578
#>     Attrib V26    0.49815157486783446
#>     Attrib V27    0.9867747163924518
#>     Attrib V28    1.2522959266390332
#>     Attrib V29    0.9284421940705582
#>     Attrib V3    0.11915839336307071
#>     Attrib V30    0.01288448818746807
#>     Attrib V31    -0.8656376470020876
#>     Attrib V32    0.11539077873160189
#>     Attrib V33    -0.2330856511798717
#>     Attrib V34    -0.08401610812204238
#>     Attrib V35    0.0315000063034506
#>     Attrib V36    -0.7952673459616986
#>     Attrib V37    -0.4575866522478695
#>     Attrib V38    -0.3084465448634194
#>     Attrib V39    -0.08935301188159034
#>     Attrib V4    0.31443876017733513
#>     Attrib V40    -0.5390499528108006
#>     Attrib V41    0.6695893872994587
#>     Attrib V42    -0.17431423373432625
#>     Attrib V43    -0.18685688264570036
#>     Attrib V44    0.5491708096798559
#>     Attrib V45    0.850611400940564
#>     Attrib V46    1.3079392361499367
#>     Attrib V47    0.797971888289912
#>     Attrib V48    0.5909886459222913
#>     Attrib V49    0.7245962499100407
#>     Attrib V5    0.7303145755316379
#>     Attrib V50    -0.17811964731161592
#>     Attrib V51    0.37446972691971847
#>     Attrib V52    0.8359882549959067
#>     Attrib V53    0.3381480540031802
#>     Attrib V54    -0.19842017387408967
#>     Attrib V55    -0.240967346259464
#>     Attrib V56    -0.6273479329900759
#>     Attrib V57    -0.7301468396325183
#>     Attrib V58    0.5467464183505689
#>     Attrib V59    0.06066109765006998
#>     Attrib V6    0.5264195234485847
#>     Attrib V60    -0.6820429408395439
#>     Attrib V7    -0.4172273295038415
#>     Attrib V8    -0.37555260941226376
#>     Attrib V9    0.9771722713477391
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.4285765359525158
#>     Attrib V1    -0.12533853315376803
#>     Attrib V10    -0.003258954794497926
#>     Attrib V11    -0.6870269801862839
#>     Attrib V12    -0.5388783745285033
#>     Attrib V13    -0.08993982377134126
#>     Attrib V14    0.21085918332909323
#>     Attrib V15    0.01886854459440496
#>     Attrib V16    0.26670506812128925
#>     Attrib V17    0.16168239859628875
#>     Attrib V18    0.34276073057837825
#>     Attrib V19    0.25408497519386725
#>     Attrib V2    0.08221012287378666
#>     Attrib V20    -0.21092490697322352
#>     Attrib V21    -0.021222148063388846
#>     Attrib V22    0.164363922372826
#>     Attrib V23    -0.39488596060713343
#>     Attrib V24    -0.6103864772623186
#>     Attrib V25    0.5925895969471765
#>     Attrib V26    0.21697384720487384
#>     Attrib V27    -0.0992418402334371
#>     Attrib V28    0.08209105190429063
#>     Attrib V29    0.002822402605067838
#>     Attrib V3    0.0761964371590337
#>     Attrib V30    -0.06775461622270834
#>     Attrib V31    0.5293231915718329
#>     Attrib V32    -0.07071503184948505
#>     Attrib V33    -0.03885130563488812
#>     Attrib V34    -0.010985380313809669
#>     Attrib V35    0.2152822658372635
#>     Attrib V36    0.45590641430813933
#>     Attrib V37    0.4380042034457523
#>     Attrib V38    0.07405147640669542
#>     Attrib V39    0.1377069828150562
#>     Attrib V4    0.08347606579449694
#>     Attrib V40    0.42979510070577115
#>     Attrib V41    -0.02508533984003243
#>     Attrib V42    0.12545851398035962
#>     Attrib V43    -0.13534462108720366
#>     Attrib V44    -0.3802544491410518
#>     Attrib V45    -0.4630173794688287
#>     Attrib V46    -0.5691959360521781
#>     Attrib V47    -0.2821593572617
#>     Attrib V48    -0.29192127981567756
#>     Attrib V49    -0.31479324319554175
#>     Attrib V5    -0.01781588339585908
#>     Attrib V50    0.42395323461317136
#>     Attrib V51    0.06763340405744084
#>     Attrib V52    -0.17837286333859664
#>     Attrib V53    -0.414794352911602
#>     Attrib V54    -0.07110921834994736
#>     Attrib V55    0.35360695876346004
#>     Attrib V56    0.03490367481439531
#>     Attrib V57    0.2619572460958072
#>     Attrib V58    -0.3528991728170544
#>     Attrib V59    -0.2800866185612338
#>     Attrib V6    0.13676929476253769
#>     Attrib V60    0.30196260252216117
#>     Attrib V7    0.40371786165546064
#>     Attrib V8    0.06938443600049345
#>     Attrib V9    -0.29796842865817225
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.18329737832610757
#>     Attrib V1    0.18101297573842054
#>     Attrib V10    -0.1630328963579916
#>     Attrib V11    0.49515824210812975
#>     Attrib V12    0.4158318673102069
#>     Attrib V13    0.05264899464764274
#>     Attrib V14    -0.0077536740368824774
#>     Attrib V15    0.15703358754357094
#>     Attrib V16    -0.15600703603285118
#>     Attrib V17    -0.11362186190471475
#>     Attrib V18    -0.2852928469112149
#>     Attrib V19    -0.07839242353430463
#>     Attrib V2    -0.034025604735249286
#>     Attrib V20    0.5462655145974273
#>     Attrib V21    0.39226426344800697
#>     Attrib V22    -0.06570770826518237
#>     Attrib V23    0.3032898023219484
#>     Attrib V24    0.5973027695229542
#>     Attrib V25    -0.5447295877633318
#>     Attrib V26    -0.2623255386244074
#>     Attrib V27    -0.11198428104213148
#>     Attrib V28    -0.44343698637614276
#>     Attrib V29    -0.17315295441397205
#>     Attrib V3    -0.006901241657317145
#>     Attrib V30    -0.025409306165847648
#>     Attrib V31    -0.8781593281222028
#>     Attrib V32    -0.36865678679697644
#>     Attrib V33    -0.052551316952452465
#>     Attrib V34    0.04331151994167924
#>     Attrib V35    -0.1821164579245129
#>     Attrib V36    -0.36641218330969066
#>     Attrib V37    -0.4661041360463634
#>     Attrib V38    -0.008722216019069277
#>     Attrib V39    -0.01740397946374163
#>     Attrib V4    0.059514533692099816
#>     Attrib V40    -0.38346871277592437
#>     Attrib V41    -0.14379910612988708
#>     Attrib V42    -0.025517717149296962
#>     Attrib V43    0.18868455441689647
#>     Attrib V44    0.35498877872076456
#>     Attrib V45    0.46240532690908737
#>     Attrib V46    0.35931988093684764
#>     Attrib V47    -0.017224715855317096
#>     Attrib V48    0.12553124409138877
#>     Attrib V49    0.1394983747203797
#>     Attrib V5    -0.08420518286218592
#>     Attrib V50    -0.4417068491275147
#>     Attrib V51    -0.1337315343305517
#>     Attrib V52    0.030616133613427323
#>     Attrib V53    0.6932427583850623
#>     Attrib V54    0.2918386965353144
#>     Attrib V55    -0.3062506923566446
#>     Attrib V56    0.18733351270263993
#>     Attrib V57    -0.16352098654630193
#>     Attrib V58    0.36086549280522695
#>     Attrib V59    0.5836389393780171
#>     Attrib V6    -0.2496936196645525
#>     Attrib V60    -0.03122764593629759
#>     Attrib V7    -0.4421655300921418
#>     Attrib V8    0.07162805110732674
#>     Attrib V9    0.26627580859957145
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.7501185276584993
#>     Attrib V1    -0.3073792335661185
#>     Attrib V10    -0.04985860045057363
#>     Attrib V11    -1.2703244176788355
#>     Attrib V12    -1.1452752775637558
#>     Attrib V13    -0.25454249236761034
#>     Attrib V14    0.2922833383028108
#>     Attrib V15    0.09215237078369917
#>     Attrib V16    0.586722058208626
#>     Attrib V17    0.1519564583899118
#>     Attrib V18    0.6724577799720496
#>     Attrib V19    0.2597513240853675
#>     Attrib V2    0.11535829585748361
#>     Attrib V20    -0.5487643976179454
#>     Attrib V21    -0.15942969922547556
#>     Attrib V22    0.17721325926233913
#>     Attrib V23    -0.9050895357888675
#>     Attrib V24    -1.1854454649885737
#>     Attrib V25    0.9925616573676661
#>     Attrib V26    0.40683499578106497
#>     Attrib V27    -0.20917588140515725
#>     Attrib V28    0.10239289585471593
#>     Attrib V29    -0.06270098495674274
#>     Attrib V3    0.2137161675679073
#>     Attrib V30    -0.10992841664838689
#>     Attrib V31    1.1631893045775052
#>     Attrib V32    0.12379131233802966
#>     Attrib V33    -0.0647678792543921
#>     Attrib V34    -0.006236898398157568
#>     Attrib V35    0.21545990591692146
#>     Attrib V36    0.7272402514122741
#>     Attrib V37    0.5879953127543335
#>     Attrib V38    0.12444280159509427
#>     Attrib V39    0.22688773970001078
#>     Attrib V4    0.1459727353184777
#>     Attrib V40    0.7872249246831742
#>     Attrib V41    -0.08945515699739646
#>     Attrib V42    0.09559191063369907
#>     Attrib V43    -0.3364466261749649
#>     Attrib V44    -0.7986009618131034
#>     Attrib V45    -0.8721014589059974
#>     Attrib V46    -1.026396927175021
#>     Attrib V47    -0.5257810595630371
#>     Attrib V48    -0.5111081070448187
#>     Attrib V49    -0.4731777562810332
#>     Attrib V5    -0.03092745958851011
#>     Attrib V50    0.8532484824437285
#>     Attrib V51    0.14677772394576882
#>     Attrib V52    -0.18241744057756604
#>     Attrib V53    -0.7994815575515125
#>     Attrib V54    -0.015011863037270519
#>     Attrib V55    0.8600310427602029
#>     Attrib V56    0.006824491579831882
#>     Attrib V57    0.5785764822464838
#>     Attrib V58    -0.5171141756356112
#>     Attrib V59    -0.5213978454752977
#>     Attrib V6    0.19529297216711172
#>     Attrib V60    0.44504045936322406
#>     Attrib V7    0.8369206833834786
#>     Attrib V8    0.2792292699243584
#>     Attrib V9    -0.4635504024923258
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.09721447842418607
#>     Attrib V1    0.07172760869557102
#>     Attrib V10    -0.2050928892977069
#>     Attrib V11    0.4371226636589998
#>     Attrib V12    0.37728465246023785
#>     Attrib V13    0.051035056008463364
#>     Attrib V14    0.09364622148092634
#>     Attrib V15    0.15199432301742352
#>     Attrib V16    -0.12640684741829056
#>     Attrib V17    -0.06022595398908871
#>     Attrib V18    -0.2706875505750074
#>     Attrib V19    -0.08409074040648133
#>     Attrib V2    -0.03938264987577763
#>     Attrib V20    0.5494694060991946
#>     Attrib V21    0.3699175781295841
#>     Attrib V22    -0.030630319901147087
#>     Attrib V23    0.22342755820745747
#>     Attrib V24    0.5154301088952167
#>     Attrib V25    -0.40088039941912057
#>     Attrib V26    -0.30512420322931716
#>     Attrib V27    -0.10764112002737752
#>     Attrib V28    -0.36751257854291974
#>     Attrib V29    -0.12178776134973957
#>     Attrib V3    0.05116291036277631
#>     Attrib V30    -0.08836828807111372
#>     Attrib V31    -0.7662730601172156
#>     Attrib V32    -0.3100658783333273
#>     Attrib V33    -0.03540460391075193
#>     Attrib V34    0.0393705925384992
#>     Attrib V35    -0.11545413244975242
#>     Attrib V36    -0.3136578888419219
#>     Attrib V37    -0.3682869293694942
#>     Attrib V38    -0.010880275657080283
#>     Attrib V39    -0.016951492614780874
#>     Attrib V4    0.030644446780826326
#>     Attrib V40    -0.28517860549683244
#>     Attrib V41    -0.10204131614443712
#>     Attrib V42    -0.02357431019768326
#>     Attrib V43    0.2613199021851493
#>     Attrib V44    0.2571959391218768
#>     Attrib V45    0.4151532346839097
#>     Attrib V46    0.3483505593957191
#>     Attrib V47    0.050817482150414386
#>     Attrib V48    0.0879376233852859
#>     Attrib V49    0.13652767818910475
#>     Attrib V5    -0.08604516612500336
#>     Attrib V50    -0.3724116398224185
#>     Attrib V51    -0.10640101362184298
#>     Attrib V52    0.028552441760830827
#>     Attrib V53    0.5610392810481585
#>     Attrib V54    0.21116228410262297
#>     Attrib V55    -0.2234998529445151
#>     Attrib V56    0.24050840945900093
#>     Attrib V57    -0.1262343818901069
#>     Attrib V58    0.28161014773476595
#>     Attrib V59    0.46540103784182046
#>     Attrib V6    -0.2358713404331805
#>     Attrib V60    -0.022192454109722003
#>     Attrib V7    -0.3841262404007843
#>     Attrib V8    0.04975226829811587
#>     Attrib V9    0.19383369007931758
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.11763319470290454
#>     Attrib V1    0.1095417249921883
#>     Attrib V10    0.05477270896464823
#>     Attrib V11    0.07918397723106585
#>     Attrib V12    0.09720149972831714
#>     Attrib V13    0.0697586691696179
#>     Attrib V14    0.053364647390260096
#>     Attrib V15    0.048404717011369544
#>     Attrib V16    0.011784848515233913
#>     Attrib V17    0.06453941267282222
#>     Attrib V18    -0.021886339549556953
#>     Attrib V19    -0.045675914654959605
#>     Attrib V2    0.09095717360537406
#>     Attrib V20    -0.010388227847779645
#>     Attrib V21    0.021902673961391773
#>     Attrib V22    -0.06571195927803035
#>     Attrib V23    -0.014083369587872142
#>     Attrib V24    0.009300400222043525
#>     Attrib V25    -0.014397333589140238
#>     Attrib V26    0.0011178976700901438
#>     Attrib V27    -0.049259737410979096
#>     Attrib V28    -0.047102960448151036
#>     Attrib V29    -0.07907366843317788
#>     Attrib V3    0.05824777597639923
#>     Attrib V30    -0.007988718555136304
#>     Attrib V31    -0.05117622538303347
#>     Attrib V32    -0.058433540228478985
#>     Attrib V33    -0.01412806330779009
#>     Attrib V34    0.016380225745186758
#>     Attrib V35    0.06080748485683709
#>     Attrib V36    -0.01975584533950313
#>     Attrib V37    0.0058684546831253145
#>     Attrib V38    -0.02276742542708512
#>     Attrib V39    0.08316885435639329
#>     Attrib V4    0.12628176599610028
#>     Attrib V40    0.019891406619486022
#>     Attrib V41    0.034394661881287786
#>     Attrib V42    0.06677839234184557
#>     Attrib V43    0.02372168419819351
#>     Attrib V44    0.02585366721878909
#>     Attrib V45    0.09151217956517861
#>     Attrib V46    0.06476137209476393
#>     Attrib V47    -0.007084662357328872
#>     Attrib V48    0.05336360299742015
#>     Attrib V49    0.01877142645165864
#>     Attrib V5    0.03178403649770789
#>     Attrib V50    -0.02584781222511399
#>     Attrib V51    0.006773203967069733
#>     Attrib V52    0.00962771342199812
#>     Attrib V53    0.13256647066324465
#>     Attrib V54    0.05373755460713352
#>     Attrib V55    0.011001596246427724
#>     Attrib V56    0.15076711622864108
#>     Attrib V57    0.040195873434731154
#>     Attrib V58    0.13600106023850203
#>     Attrib V59    0.17565413421380888
#>     Attrib V6    0.03536132880472485
#>     Attrib V60    0.06731271459041674
#>     Attrib V7    -0.05706040820928468
#>     Attrib V8    0.034914344671504484
#>     Attrib V9    0.043703748352831924
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.054651236553239356
#>     Attrib V1    0.09891322375553828
#>     Attrib V10    -0.12490317464709445
#>     Attrib V11    0.18637425019743695
#>     Attrib V12    0.11618384536205847
#>     Attrib V13    0.061404695276585174
#>     Attrib V14    0.11266262764454174
#>     Attrib V15    0.13298050260656205
#>     Attrib V16    0.006787295522967738
#>     Attrib V17    0.06941361846820136
#>     Attrib V18    -0.055897326248460666
#>     Attrib V19    -0.015155233117410214
#>     Attrib V2    0.08930117215429259
#>     Attrib V20    0.27560362271966016
#>     Attrib V21    0.11532238169088596
#>     Attrib V22    -0.03754320872044658
#>     Attrib V23    0.10225897754187996
#>     Attrib V24    0.2407644662080321
#>     Attrib V25    -0.23113032121694643
#>     Attrib V26    -0.16349099468907405
#>     Attrib V27    -0.16678739773488396
#>     Attrib V28    -0.31563990045631396
#>     Attrib V29    -0.18463927494769164
#>     Attrib V3    0.01998678155601096
#>     Attrib V30    -0.09671291917360493
#>     Attrib V31    -0.35426960084579495
#>     Attrib V32    -0.1854594345575789
#>     Attrib V33    0.013541724197967214
#>     Attrib V34    0.048314255392695904
#>     Attrib V35    -0.013247483072515545
#>     Attrib V36    -0.14396942161416187
#>     Attrib V37    -0.18176057405543294
#>     Attrib V38    0.02630368275136412
#>     Attrib V39    -0.028219073973097964
#>     Attrib V4    0.11092548771452869
#>     Attrib V40    -0.13205424365222374
#>     Attrib V41    -0.10983791820417257
#>     Attrib V42    -0.020414810254064244
#>     Attrib V43    0.13017653655725114
#>     Attrib V44    0.17623406871988062
#>     Attrib V45    0.1495047175481482
#>     Attrib V46    0.11985720424955507
#>     Attrib V47    -0.022991122721295627
#>     Attrib V48    0.0422589847008193
#>     Attrib V49    0.07487699095844955
#>     Attrib V5    -0.009976866932655338
#>     Attrib V50    -0.19572759466839468
#>     Attrib V51    -0.08434090018545291
#>     Attrib V52    -0.03501097990135868
#>     Attrib V53    0.33600109007443807
#>     Attrib V54    0.20878578941097004
#>     Attrib V55    -0.03057893418273921
#>     Attrib V56    0.15470655294757515
#>     Attrib V57    0.012046380104082854
#>     Attrib V58    0.15874697766283577
#>     Attrib V59    0.3119161213271529
#>     Attrib V6    -0.1005821377570403
#>     Attrib V60    0.05405846266153549
#>     Attrib V7    -0.14208257090933538
#>     Attrib V8    0.05553682013563419
#>     Attrib V9    0.09879712184233398
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.12784675739781154
#>     Attrib V1    0.09940798749267621
#>     Attrib V10    -0.033643841705082715
#>     Attrib V11    0.04337506430313362
#>     Attrib V12    0.02751707544206155
#>     Attrib V13    -0.030406204085694385
#>     Attrib V14    0.08857228019021177
#>     Attrib V15    0.04782016420696376
#>     Attrib V16    0.044424816686725
#>     Attrib V17    0.0060313571394688134
#>     Attrib V18    0.05025142529420664
#>     Attrib V19    -0.060752816540205576
#>     Attrib V2    0.04787949461272385
#>     Attrib V20    -0.00819118231187416
#>     Attrib V21    -0.004150645163553484
#>     Attrib V22    -0.06811426114644335
#>     Attrib V23    0.0010603648770958138
#>     Attrib V24    -0.002239925208003669
#>     Attrib V25    -0.06040734811412551
#>     Attrib V26    -0.052272699472506706
#>     Attrib V27    -0.05316725921297795
#>     Attrib V28    -0.01986150115582586
#>     Attrib V29    -0.029834015983187783
#>     Attrib V3    0.1069851220425143
#>     Attrib V30    0.0017649519867441348
#>     Attrib V31    -0.09032849600500537
#>     Attrib V32    -0.03814127129773231
#>     Attrib V33    0.04611318806394908
#>     Attrib V34    0.05717036696952594
#>     Attrib V35    0.07519094471044299
#>     Attrib V36    0.08137567922435723
#>     Attrib V37    0.027485856893900002
#>     Attrib V38    -0.016501520223995345
#>     Attrib V39    0.051421363767550105
#>     Attrib V4    0.07261416654256678
#>     Attrib V40    0.016012114552756793
#>     Attrib V41    0.002996373107660659
#>     Attrib V42    0.05252056788507796
#>     Attrib V43    -0.01497406889830686
#>     Attrib V44    0.05740517345735861
#>     Attrib V45    0.0835241823715146
#>     Attrib V46    0.035282149954150355
#>     Attrib V47    -0.00927765570812157
#>     Attrib V48    -0.03735584399574771
#>     Attrib V49    0.04730757102606628
#>     Attrib V5    0.09101931772369784
#>     Attrib V50    -0.0145608606412771
#>     Attrib V51    0.0369184293012306
#>     Attrib V52    0.03571238024553299
#>     Attrib V53    0.10781376520523601
#>     Attrib V54    -0.003618342944185985
#>     Attrib V55    0.02458538326295871
#>     Attrib V56    0.0913095568457197
#>     Attrib V57    0.07602076749824023
#>     Attrib V58    0.13850514155831123
#>     Attrib V59    0.08478476464539109
#>     Attrib V6    0.09170762233740704
#>     Attrib V60    0.03943124088282532
#>     Attrib V7    0.032987359263094616
#>     Attrib V8    0.09228558580852186
#>     Attrib V9    0.0692193399683619
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
#>  0.2608696 
```
