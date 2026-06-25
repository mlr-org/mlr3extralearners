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
#>     Threshold    -0.40757551460581365
#>     Node 2    2.1853879450063802
#>     Node 3    1.564052975274061
#>     Node 4    -0.015277850666121393
#>     Node 5    -2.0954701526344626
#>     Node 6    0.9912919015961706
#>     Node 7    3.6753935458565583
#>     Node 8    0.6798950042693463
#>     Node 9    2.817390906616512
#>     Node 10    -2.793343376401645
#>     Node 11    0.4072275434862461
#>     Node 12    1.766817536988716
#>     Node 13    1.2609200496043003
#>     Node 14    1.5433278282934808
#>     Node 15    -2.0623149998464285
#>     Node 16    -0.9349513305572666
#>     Node 17    0.038612585393933634
#>     Node 18    1.0627852078992754
#>     Node 19    2.224105452958948
#>     Node 20    1.4378162388876594
#>     Node 21    -1.7281289572388787
#>     Node 22    0.3475088877820215
#>     Node 23    2.231227580386471
#>     Node 24    -1.1759614810274335
#>     Node 25    4.214681695177871
#>     Node 26    -0.06606999313161305
#>     Node 27    1.600559107454616
#>     Node 28    -2.0952950806008164
#>     Node 29    1.1950521531835478
#>     Node 30    0.44141893608436616
#>     Node 31    0.36524764939831156
#>     Node 32    -0.12283868353082822
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.4320830485697135
#>     Node 2    -2.222279959479643
#>     Node 3    -1.5363160299093077
#>     Node 4    0.05121946493831411
#>     Node 5    2.110220166881784
#>     Node 6    -0.9635465496676334
#>     Node 7    -3.6867217236237972
#>     Node 8    -0.7127429224016746
#>     Node 9    -2.8283629751335253
#>     Node 10    2.7487346628626192
#>     Node 11    -0.3752331167958733
#>     Node 12    -1.8303629233647103
#>     Node 13    -1.1991203459659665
#>     Node 14    -1.4621191265719937
#>     Node 15    2.0615324638385806
#>     Node 16    0.9160372182755433
#>     Node 17    -0.010432072693018886
#>     Node 18    -1.0154466048636168
#>     Node 19    -2.2280041878301526
#>     Node 20    -1.4328201782463006
#>     Node 21    1.7852507507585749
#>     Node 22    -0.3984654965272227
#>     Node 23    -2.2620914504910523
#>     Node 24    1.1607435507293928
#>     Node 25    -4.221396852329059
#>     Node 26    -0.021425261275631352
#>     Node 27    -1.6394419900089026
#>     Node 28    2.050438759634597
#>     Node 29    -1.2221868408012508
#>     Node 30    -0.3652765543189268
#>     Node 31    -0.31022508157337325
#>     Node 32    0.09966663479096914
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.27912181023631755
#>     Attrib V1    0.30915353002225565
#>     Attrib V10    -0.2845532662345373
#>     Attrib V11    0.029419232978030372
#>     Attrib V12    -0.011867820152050101
#>     Attrib V13    -0.5522454384242943
#>     Attrib V14    -0.37476617335452095
#>     Attrib V15    0.18215566869383393
#>     Attrib V16    0.05584856057086132
#>     Attrib V17    0.14036385464266204
#>     Attrib V18    -0.2886914857644229
#>     Attrib V19    0.16460414358482886
#>     Attrib V2    0.32069402032512184
#>     Attrib V20    1.0165187562658389
#>     Attrib V21    1.0340555349994305
#>     Attrib V22    0.3316952074393624
#>     Attrib V23    0.10839694957744934
#>     Attrib V24    0.27787783642819924
#>     Attrib V25    -0.41901914782424626
#>     Attrib V26    -0.8216003542199336
#>     Attrib V27    -1.0432069499562882
#>     Attrib V28    -0.7381347682607932
#>     Attrib V29    -0.3671588280117288
#>     Attrib V3    0.42468827215773247
#>     Attrib V30    0.1327086034053602
#>     Attrib V31    -1.1310567497412751
#>     Attrib V32    -0.7950134689136787
#>     Attrib V33    -0.21600303358090966
#>     Attrib V34    -0.14553036578968667
#>     Attrib V35    -0.2077864306489278
#>     Attrib V36    -0.9109630054335439
#>     Attrib V37    -0.9181932164499691
#>     Attrib V38    0.2433130421511269
#>     Attrib V39    0.3929937189678793
#>     Attrib V4    0.4078947806706752
#>     Attrib V40    -0.42352780417316443
#>     Attrib V41    -0.11915787196347878
#>     Attrib V42    0.47980565004397474
#>     Attrib V43    0.2875434422511873
#>     Attrib V44    0.22624851655592274
#>     Attrib V45    0.49656643330869626
#>     Attrib V46    0.06005608690675773
#>     Attrib V47    -0.22902439572071595
#>     Attrib V48    0.13560704346153968
#>     Attrib V49    -0.04434582873521321
#>     Attrib V5    -0.19568383490327101
#>     Attrib V50    -0.4545270447793746
#>     Attrib V51    0.09455362836304179
#>     Attrib V52    0.4080791674577241
#>     Attrib V53    0.3508837506093732
#>     Attrib V54    0.30699295077879885
#>     Attrib V55    0.4713299405234335
#>     Attrib V56    0.9338164253974643
#>     Attrib V57    0.5512221243939857
#>     Attrib V58    0.5462438698427668
#>     Attrib V59    0.7417115770936116
#>     Attrib V6    -0.13968143824106286
#>     Attrib V60    0.10393043029279564
#>     Attrib V7    -0.4745815738709925
#>     Attrib V8    0.10303955393586932
#>     Attrib V9    0.21829327253271644
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.19697323552800172
#>     Attrib V1    0.21409467366471005
#>     Attrib V10    -0.199074939225324
#>     Attrib V11    0.008098055878581272
#>     Attrib V12    0.006060439316661784
#>     Attrib V13    -0.38066449708653993
#>     Attrib V14    -0.2654481584758863
#>     Attrib V15    0.2174477438533835
#>     Attrib V16    0.061816225123529606
#>     Attrib V17    0.1205381693743131
#>     Attrib V18    -0.2541167157554412
#>     Attrib V19    0.18561417796997015
#>     Attrib V2    0.30830889335607803
#>     Attrib V20    0.7204650676296834
#>     Attrib V21    0.6861727523679892
#>     Attrib V22    0.27773244667648345
#>     Attrib V23    0.09911764755208574
#>     Attrib V24    0.21516780241026817
#>     Attrib V25    -0.27320897164462155
#>     Attrib V26    -0.6120888576176271
#>     Attrib V27    -0.7867158052610668
#>     Attrib V28    -0.5555869593841665
#>     Attrib V29    -0.3698305660014568
#>     Attrib V3    0.3311023355727027
#>     Attrib V30    0.09667345821046915
#>     Attrib V31    -0.7565325999850016
#>     Attrib V32    -0.5210758123948095
#>     Attrib V33    -0.11363287687680335
#>     Attrib V34    -0.1370323748769546
#>     Attrib V35    -0.14925938082436382
#>     Attrib V36    -0.6889084198905958
#>     Attrib V37    -0.7031387309064492
#>     Attrib V38    0.10486893177477918
#>     Attrib V39    0.28845473779626757
#>     Attrib V4    0.32225779318400943
#>     Attrib V40    -0.3053351891138207
#>     Attrib V41    -0.08201435538206552
#>     Attrib V42    0.31383074072273653
#>     Attrib V43    0.14637212661337057
#>     Attrib V44    0.12804073084128653
#>     Attrib V45    0.33767292996202675
#>     Attrib V46    0.03122137536937682
#>     Attrib V47    -0.13389678620055767
#>     Attrib V48    0.0700868922380287
#>     Attrib V49    -0.023210624296546842
#>     Attrib V5    -0.15070002349090722
#>     Attrib V50    -0.3255510558547961
#>     Attrib V51    0.04535428980203094
#>     Attrib V52    0.3463577247867259
#>     Attrib V53    0.2725080743652471
#>     Attrib V54    0.2539742957629716
#>     Attrib V55    0.39190685478415804
#>     Attrib V56    0.7080801223173627
#>     Attrib V57    0.45293344557436466
#>     Attrib V58    0.5038068370056555
#>     Attrib V59    0.564424501043183
#>     Attrib V6    -0.11430880382885693
#>     Attrib V60    0.08970556628297999
#>     Attrib V7    -0.42458142393609505
#>     Attrib V8    0.10146981943575736
#>     Attrib V9    0.1651950717616754
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.2022825839207394
#>     Attrib V1    0.034824967205454666
#>     Attrib V10    0.0037907870831013985
#>     Attrib V11    -0.006271438332000303
#>     Attrib V12    -0.013288960459113736
#>     Attrib V13    0.0470490470207914
#>     Attrib V14    0.08098553390592488
#>     Attrib V15    0.06939155767656506
#>     Attrib V16    0.012801935844738117
#>     Attrib V17    0.011272570517854536
#>     Attrib V18    -0.027472091650456866
#>     Attrib V19    -0.014310000889241547
#>     Attrib V2    0.024186936071706026
#>     Attrib V20    -0.012631723288671681
#>     Attrib V21    0.017670550209768997
#>     Attrib V22    -0.078763494088665
#>     Attrib V23    -0.06108426299597514
#>     Attrib V24    -0.09348728167273271
#>     Attrib V25    -0.0886597430071167
#>     Attrib V26    -0.05497915701654235
#>     Attrib V27    -0.10339112071596898
#>     Attrib V28    -0.032724141138694963
#>     Attrib V29    -0.02812729471790807
#>     Attrib V3    0.1351050187903849
#>     Attrib V30    -0.023269335181298118
#>     Attrib V31    -0.023991331173015187
#>     Attrib V32    -0.01408277683286494
#>     Attrib V33    0.059424104850663344
#>     Attrib V34    0.06088153425658753
#>     Attrib V35    0.0778025908249819
#>     Attrib V36    0.05105048692459809
#>     Attrib V37    0.052861855687429855
#>     Attrib V38    0.0021499277430369473
#>     Attrib V39    0.060597543055529335
#>     Attrib V4    0.06391683719415857
#>     Attrib V40    0.09156970759482444
#>     Attrib V41    0.07929081397816086
#>     Attrib V42    0.12181401893219854
#>     Attrib V43    0.019387739890622268
#>     Attrib V44    0.027294729850134532
#>     Attrib V45    0.08264698407626936
#>     Attrib V46    -7.886184639296846E-4
#>     Attrib V47    0.01128848089274439
#>     Attrib V48    0.034792876838241366
#>     Attrib V49    0.047191756814941116
#>     Attrib V5    0.09340087984602242
#>     Attrib V50    0.07149992025605272
#>     Attrib V51    0.09839428228489334
#>     Attrib V52    0.022992323553675774
#>     Attrib V53    0.1044463744575533
#>     Attrib V54    0.01303489139497581
#>     Attrib V55    0.04266697325577664
#>     Attrib V56    0.11885568018356674
#>     Attrib V57    0.14257600327421213
#>     Attrib V58    0.0918299578104968
#>     Attrib V59    0.10040296470529529
#>     Attrib V6    0.022831799826059315
#>     Attrib V60    0.05860233571069057
#>     Attrib V7    0.04261077580464114
#>     Attrib V8    0.017255220974889435
#>     Attrib V9    0.04692129028179956
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.3445215477258938
#>     Attrib V1    0.1417932526331777
#>     Attrib V10    -0.13367928295998516
#>     Attrib V11    -0.6505341425225322
#>     Attrib V12    -0.7616636943939621
#>     Attrib V13    0.21691475887849962
#>     Attrib V14    0.6913320916263567
#>     Attrib V15    0.3693457042609672
#>     Attrib V16    0.19442574646172914
#>     Attrib V17    0.10414141314361748
#>     Attrib V18    0.6621722967780909
#>     Attrib V19    -0.11646910425455072
#>     Attrib V2    -0.0893412387300212
#>     Attrib V20    -0.5612302502975138
#>     Attrib V21    -0.385709911295352
#>     Attrib V22    -0.14522823770153476
#>     Attrib V23    -0.013402837277761023
#>     Attrib V24    -0.5514618606107023
#>     Attrib V25    0.014251083908700533
#>     Attrib V26    0.1593655614648169
#>     Attrib V27    0.45111061936685826
#>     Attrib V28    -0.11072509954434352
#>     Attrib V29    -0.3589490274465519
#>     Attrib V3    0.05330606211754872
#>     Attrib V30    -0.5191108242605426
#>     Attrib V31    0.9137576475566446
#>     Attrib V32    0.31418380954630815
#>     Attrib V33    0.24866558248805015
#>     Attrib V34    0.08540668617374922
#>     Attrib V35    -0.016019002405388977
#>     Attrib V36    0.6578317858496946
#>     Attrib V37    0.7076936339869091
#>     Attrib V38    -0.3672315292728023
#>     Attrib V39    -0.7128716355619581
#>     Attrib V4    -0.17411758489882798
#>     Attrib V40    0.28089073513888657
#>     Attrib V41    -0.2550971903701308
#>     Attrib V42    -0.2028148968968152
#>     Attrib V43    -0.030680458159163235
#>     Attrib V44    -0.15736268892488803
#>     Attrib V45    -0.5722516231101593
#>     Attrib V46    -0.14680735565400324
#>     Attrib V47    0.04748711778358515
#>     Attrib V48    -0.680903960564736
#>     Attrib V49    -0.2767080208620298
#>     Attrib V5    0.42367631027209923
#>     Attrib V50    1.1703299261669755
#>     Attrib V51    -0.32487043909984437
#>     Attrib V52    -0.7739331039691041
#>     Attrib V53    -0.03684111403332995
#>     Attrib V54    0.8011389173346946
#>     Attrib V55    0.17381161878791032
#>     Attrib V56    -0.29614189938821
#>     Attrib V57    -0.0188846586414012
#>     Attrib V58    -0.24580227184907869
#>     Attrib V59    -0.46256370093240623
#>     Attrib V6    0.15885826534325112
#>     Attrib V60    0.18697873344049473
#>     Attrib V7    1.0422830962271248
#>     Attrib V8    0.036374789304363
#>     Attrib V9    -0.5101138934738042
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.13740081559985884
#>     Attrib V1    0.18887293750267478
#>     Attrib V10    -0.18078136654763016
#>     Attrib V11    0.03281100846672031
#>     Attrib V12    0.034585964668711895
#>     Attrib V13    -0.2963176360043291
#>     Attrib V14    -0.19438648909609413
#>     Attrib V15    0.07999584701135709
#>     Attrib V16    0.11627316831035232
#>     Attrib V17    0.07627356470253037
#>     Attrib V18    -0.11491041229510264
#>     Attrib V19    0.13836014492930337
#>     Attrib V2    0.1724113223334628
#>     Attrib V20    0.4971647446077007
#>     Attrib V21    0.4887179475888273
#>     Attrib V22    0.12328650034430376
#>     Attrib V23    0.038566766902658416
#>     Attrib V24    0.18068632410721414
#>     Attrib V25    -0.13155973572737054
#>     Attrib V26    -0.3531911795614978
#>     Attrib V27    -0.4896783074196705
#>     Attrib V28    -0.41499450761368023
#>     Attrib V29    -0.25801217968343654
#>     Attrib V3    0.21480307712830213
#>     Attrib V30    0.03439089267614887
#>     Attrib V31    -0.5169666744020042
#>     Attrib V32    -0.28487623944463636
#>     Attrib V33    -0.014693198589069829
#>     Attrib V34    -0.0373426527823516
#>     Attrib V35    -0.05534020246335891
#>     Attrib V36    -0.5025197717081092
#>     Attrib V37    -0.5343813411302718
#>     Attrib V38    0.032247821574545074
#>     Attrib V39    0.17114639806472992
#>     Attrib V4    0.24973334934000793
#>     Attrib V40    -0.22043650589683456
#>     Attrib V41    0.021701469213654068
#>     Attrib V42    0.24666238298254656
#>     Attrib V43    0.058036277520602635
#>     Attrib V44    -0.011348462071712145
#>     Attrib V45    0.21596494321669535
#>     Attrib V46    0.01851327247819044
#>     Attrib V47    -0.1223753835634248
#>     Attrib V48    0.05827356489557483
#>     Attrib V49    0.024649410360201317
#>     Attrib V5    -0.11258402265399366
#>     Attrib V50    -0.19863973521288245
#>     Attrib V51    0.0883416122024652
#>     Attrib V52    0.18602294853427612
#>     Attrib V53    0.26542871958777076
#>     Attrib V54    0.08714034093293375
#>     Attrib V55    0.24647768731775568
#>     Attrib V56    0.48100199509963104
#>     Attrib V57    0.33228851716876895
#>     Attrib V58    0.3840759912071855
#>     Attrib V59    0.46164366034271065
#>     Attrib V6    -0.03845918442430661
#>     Attrib V60    0.09317444371279916
#>     Attrib V7    -0.2934828923196514
#>     Attrib V8    0.09433458263212559
#>     Attrib V9    0.18402603155552377
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.22428505772196447
#>     Attrib V1    -0.029003511777481224
#>     Attrib V10    1.200380108205597
#>     Attrib V11    1.6271269736853602
#>     Attrib V12    1.5645193487469058
#>     Attrib V13    0.6572651677558061
#>     Attrib V14    -0.3066684482376612
#>     Attrib V15    -0.8369220369538556
#>     Attrib V16    -0.4765046762307949
#>     Attrib V17    -0.4958934328157728
#>     Attrib V18    -0.5962721178497519
#>     Attrib V19    0.06640405333639832
#>     Attrib V2    0.3470446559231843
#>     Attrib V20    -0.040468080109233376
#>     Attrib V21    0.05226449196204858
#>     Attrib V22    0.31749985199426695
#>     Attrib V23    0.41595956719841015
#>     Attrib V24    0.7971678483749054
#>     Attrib V25    0.8977839486848213
#>     Attrib V26    1.4167492334970406
#>     Attrib V27    1.0790556380518275
#>     Attrib V28    1.2008659058657014
#>     Attrib V29    0.7979812011878243
#>     Attrib V3    0.20898398843261842
#>     Attrib V30    0.22800202817560827
#>     Attrib V31    -0.5684684615968397
#>     Attrib V32    0.0032964155198569123
#>     Attrib V33    -0.5216876889604568
#>     Attrib V34    -0.22265129184535082
#>     Attrib V35    0.19010635537639498
#>     Attrib V36    -0.29019096520193893
#>     Attrib V37    -0.5011171571376246
#>     Attrib V38    -0.08394355704209806
#>     Attrib V39    0.5395938627073671
#>     Attrib V4    0.26414969245869424
#>     Attrib V40    0.46178481011746175
#>     Attrib V41    1.1382086699261056
#>     Attrib V42    0.08952178032630435
#>     Attrib V43    -0.23336379166242385
#>     Attrib V44    0.14286496637964666
#>     Attrib V45    0.3787298604665269
#>     Attrib V46    0.3984858951572898
#>     Attrib V47    0.49106121890900056
#>     Attrib V48    0.9850229356481536
#>     Attrib V49    0.6467360260862551
#>     Attrib V5    0.34588650483565364
#>     Attrib V50    -0.7797478064965567
#>     Attrib V51    0.8440455471413378
#>     Attrib V52    1.01903555503368
#>     Attrib V53    0.49579802171628284
#>     Attrib V54    -0.9283232899654986
#>     Attrib V55    -0.7885267765312454
#>     Attrib V56    -0.45324654894409944
#>     Attrib V57    -0.4591607041967297
#>     Attrib V58    0.016485931645017774
#>     Attrib V59    0.17320859988728857
#>     Attrib V6    0.6214209128582212
#>     Attrib V60    -0.08618692831482651
#>     Attrib V7    -0.5229674859569547
#>     Attrib V8    0.12607499518941312
#>     Attrib V9    0.9321027578251132
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.03750196053400092
#>     Attrib V1    0.07879527292068095
#>     Attrib V10    -0.07581394888326203
#>     Attrib V11    0.11425438274183128
#>     Attrib V12    0.05494620736629265
#>     Attrib V13    -0.13643598513856356
#>     Attrib V14    -0.16887571163544432
#>     Attrib V15    0.04152327462531199
#>     Attrib V16    0.07609544590910318
#>     Attrib V17    0.027561725369169884
#>     Attrib V18    -0.18894759033635206
#>     Attrib V19    0.07711147648131132
#>     Attrib V2    0.13929775542638123
#>     Attrib V20    0.2682895577085531
#>     Attrib V21    0.2855520970244443
#>     Attrib V22    0.005278169009066285
#>     Attrib V23    -0.05774765535094837
#>     Attrib V24    0.14982180727355718
#>     Attrib V25    -0.08496046364051626
#>     Attrib V26    -0.1554335343083042
#>     Attrib V27    -0.26663853643781515
#>     Attrib V28    -0.1562459521807888
#>     Attrib V29    -0.08098860187688627
#>     Attrib V3    0.16074632252279397
#>     Attrib V30    0.0877022217620193
#>     Attrib V31    -0.3648615817459295
#>     Attrib V32    -0.22874483948943145
#>     Attrib V33    -0.052616194468011454
#>     Attrib V34    -0.037165190578268927
#>     Attrib V35    -0.055276587074367514
#>     Attrib V36    -0.32600322634909135
#>     Attrib V37    -0.39912993498512056
#>     Attrib V38    0.0849040582299482
#>     Attrib V39    0.15107323102851844
#>     Attrib V4    0.24075787799552575
#>     Attrib V40    -0.13535111178077747
#>     Attrib V41    -0.005218850784706273
#>     Attrib V42    0.06195533292459317
#>     Attrib V43    0.03911619895071846
#>     Attrib V44    0.10822507692244941
#>     Attrib V45    0.22503989419824547
#>     Attrib V46    0.06561202211286542
#>     Attrib V47    -0.04642669803658984
#>     Attrib V48    0.1667864768226773
#>     Attrib V49    0.07570880009879387
#>     Attrib V5    -0.0678586926583287
#>     Attrib V50    -0.2514801873056694
#>     Attrib V51    0.042821498319692036
#>     Attrib V52    0.19436664296876557
#>     Attrib V53    0.29569674474833574
#>     Attrib V54    0.06316596772512234
#>     Attrib V55    0.19678262140542943
#>     Attrib V56    0.2881085470519898
#>     Attrib V57    0.27416730700409936
#>     Attrib V58    0.25607457809706
#>     Attrib V59    0.36364227723813364
#>     Attrib V6    -0.08865980678607577
#>     Attrib V60    0.07017178257452902
#>     Attrib V7    -0.25316979123817807
#>     Attrib V8    0.008194166782835466
#>     Attrib V9    0.1144098688236664
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.1273942670464679
#>     Attrib V1    -0.08091327462637413
#>     Attrib V10    0.9986130497746214
#>     Attrib V11    1.339618139507281
#>     Attrib V12    1.3136698462652385
#>     Attrib V13    0.5432091850870409
#>     Attrib V14    -0.3583739304446089
#>     Attrib V15    -0.7360999038694629
#>     Attrib V16    -0.38509115399417443
#>     Attrib V17    -0.3729675866582126
#>     Attrib V18    -0.5220651653247971
#>     Attrib V19    0.01023525106662029
#>     Attrib V2    0.09860273150191749
#>     Attrib V20    -0.09892250559077552
#>     Attrib V21    0.010206804013953031
#>     Attrib V22    0.1594620136654157
#>     Attrib V23    0.15741285719357517
#>     Attrib V24    0.5949653842997455
#>     Attrib V25    0.7336931376652365
#>     Attrib V26    1.1574341981227243
#>     Attrib V27    0.8423297442668626
#>     Attrib V28    0.9010300173251716
#>     Attrib V29    0.4833319763146131
#>     Attrib V3    0.0649035469164295
#>     Attrib V30    0.2311101187904021
#>     Attrib V31    -0.36639783109241786
#>     Attrib V32    0.22495394065619762
#>     Attrib V33    -0.2004565818006714
#>     Attrib V34    0.01849369034678475
#>     Attrib V35    0.2545783927488451
#>     Attrib V36    -0.17997009057556362
#>     Attrib V37    -0.5327312725757121
#>     Attrib V38    -0.06727197353546424
#>     Attrib V39    0.46079702880788415
#>     Attrib V4    0.257654682983429
#>     Attrib V40    0.23523397662369294
#>     Attrib V41    0.8127781114789723
#>     Attrib V42    -0.03499287483351364
#>     Attrib V43    -0.17689449501314206
#>     Attrib V44    0.0029589048583935755
#>     Attrib V45    0.31225887859300583
#>     Attrib V46    0.3201230562700286
#>     Attrib V47    0.39217321435132024
#>     Attrib V48    0.866993292460465
#>     Attrib V49    0.6614596673027887
#>     Attrib V5    0.15142481210028905
#>     Attrib V50    -0.6242270230636757
#>     Attrib V51    0.7090056473622266
#>     Attrib V52    0.7849350156650146
#>     Attrib V53    0.3721363891490316
#>     Attrib V54    -0.9031915635617344
#>     Attrib V55    -0.4343810059199193
#>     Attrib V56    -0.3180906791073981
#>     Attrib V57    -0.40313368136202893
#>     Attrib V58    0.14849547554897677
#>     Attrib V59    0.2657471097886033
#>     Attrib V6    0.33912681584963555
#>     Attrib V60    -0.12119802943441335
#>     Attrib V7    -0.5733591816451657
#>     Attrib V8    0.20977200266863544
#>     Attrib V9    0.7801244655189638
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.19105756942210433
#>     Attrib V1    0.11994011284662796
#>     Attrib V10    -0.8183604976016778
#>     Attrib V11    -1.2606259573069207
#>     Attrib V12    -1.12754384210475
#>     Attrib V13    -0.28871764120831317
#>     Attrib V14    0.5170385630640159
#>     Attrib V15    0.709322441204708
#>     Attrib V16    0.45320769831699
#>     Attrib V17    0.3479936776400634
#>     Attrib V18    0.67077474640086
#>     Attrib V19    -0.14172333898547781
#>     Attrib V2    -0.03170871382084609
#>     Attrib V20    -0.14097723643431648
#>     Attrib V21    -0.1047609567859007
#>     Attrib V22    -0.206210668474384
#>     Attrib V23    -0.1717687145142071
#>     Attrib V24    -0.6959670782089055
#>     Attrib V25    -0.6205723251962483
#>     Attrib V26    -0.9281385232487952
#>     Attrib V27    -0.5352842837862325
#>     Attrib V28    -0.7693775348572408
#>     Attrib V29    -0.6337169514357174
#>     Attrib V3    -0.009620967874625089
#>     Attrib V30    -0.5052455081665391
#>     Attrib V31    0.43252981687183917
#>     Attrib V32    -0.2731692788212522
#>     Attrib V33    0.21779959972802704
#>     Attrib V34    0.08435439918253543
#>     Attrib V35    -0.24580188625411323
#>     Attrib V36    0.250524351534656
#>     Attrib V37    0.613334504744782
#>     Attrib V38    -0.06109804605248588
#>     Attrib V39    -0.6125965136404697
#>     Attrib V4    -0.372739719150048
#>     Attrib V40    -0.05336919188847812
#>     Attrib V41    -0.7401498500597521
#>     Attrib V42    -0.16359589882156672
#>     Attrib V43    0.11601415733245601
#>     Attrib V44    -0.12211721612177205
#>     Attrib V45    -0.40895546420190315
#>     Attrib V46    -0.22327898348595046
#>     Attrib V47    -0.37942767727734383
#>     Attrib V48    -1.1409723102033245
#>     Attrib V49    -0.7767385553748055
#>     Attrib V5    -0.18420114958848816
#>     Attrib V50    0.8583132142064233
#>     Attrib V51    -0.8322990536103441
#>     Attrib V52    -0.9185970942498708
#>     Attrib V53    -0.009166303277380106
#>     Attrib V54    0.9482972610900364
#>     Attrib V55    0.24916109144342122
#>     Attrib V56    0.0405749712739154
#>     Attrib V57    0.3285364712731349
#>     Attrib V58    -0.14294372971389324
#>     Attrib V59    -0.47522647426931036
#>     Attrib V6    -0.09521243675615335
#>     Attrib V60    0.25491492447397596
#>     Attrib V7    0.8955814330909444
#>     Attrib V8    -0.11650585047917936
#>     Attrib V9    -0.7993563579817606
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.13371328756508977
#>     Attrib V1    0.050931978025833616
#>     Attrib V10    -0.0414122830954922
#>     Attrib V11    0.07306813495952347
#>     Attrib V12    0.07620009428182072
#>     Attrib V13    -0.11709872493383909
#>     Attrib V14    -0.08086101930237384
#>     Attrib V15    -5.289141947881331E-4
#>     Attrib V16    0.0037061323073992332
#>     Attrib V17    0.03296251779629931
#>     Attrib V18    -0.0983464032665946
#>     Attrib V19    -0.011383657147160397
#>     Attrib V2    0.023581133446337627
#>     Attrib V20    0.1525778858009775
#>     Attrib V21    0.07272693385048719
#>     Attrib V22    -0.10362850326438192
#>     Attrib V23    -0.12425990626553195
#>     Attrib V24    -0.008821206416636135
#>     Attrib V25    -0.05570696801872131
#>     Attrib V26    -0.13770937468010108
#>     Attrib V27    -0.15618683286173504
#>     Attrib V28    -0.0736651394679452
#>     Attrib V29    -0.0698887896362179
#>     Attrib V3    0.07358018306081256
#>     Attrib V30    0.07108686621022937
#>     Attrib V31    -0.22736751572156766
#>     Attrib V32    -0.1457440557259842
#>     Attrib V33    -0.03446144522209047
#>     Attrib V34    0.043150568577006256
#>     Attrib V35    0.048598684934611835
#>     Attrib V36    -0.15914834139447914
#>     Attrib V37    -0.2269485206594107
#>     Attrib V38    0.072869936815967
#>     Attrib V39    0.09315977513994389
#>     Attrib V4    0.13367753876690944
#>     Attrib V40    -0.051077531221579195
#>     Attrib V41    -0.0016550165574557734
#>     Attrib V42    0.09622245995303234
#>     Attrib V43    0.03934616287890893
#>     Attrib V44    0.09836128899086156
#>     Attrib V45    0.20772615609515466
#>     Attrib V46    0.039597259659963684
#>     Attrib V47    0.02068772901477323
#>     Attrib V48    0.14203374951017816
#>     Attrib V49    0.055141728981249236
#>     Attrib V5    0.01815627816220712
#>     Attrib V50    -0.06776554575926705
#>     Attrib V51    0.13156132908065632
#>     Attrib V52    0.10167551900591723
#>     Attrib V53    0.17108071732768046
#>     Attrib V54    0.09943190324257553
#>     Attrib V55    0.1816708189343636
#>     Attrib V56    0.2114880715880398
#>     Attrib V57    0.20583601823785969
#>     Attrib V58    0.23227979321533043
#>     Attrib V59    0.19952928719284746
#>     Attrib V6    -0.005900831040837528
#>     Attrib V60    0.04359851685260631
#>     Attrib V7    -0.17176013187063566
#>     Attrib V8    0.07585676923668755
#>     Attrib V9    0.09489229246275205
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.18681989744496943
#>     Attrib V1    0.2310260392066717
#>     Attrib V10    -0.3035495090543514
#>     Attrib V11    0.05034310909697755
#>     Attrib V12    -0.07113143019308145
#>     Attrib V13    -0.47844559249448854
#>     Attrib V14    -0.3032323377232411
#>     Attrib V15    0.17570109512202692
#>     Attrib V16    0.10811699774954209
#>     Attrib V17    0.13668422455113527
#>     Attrib V18    -0.26218643020757854
#>     Attrib V19    0.1900550757653199
#>     Attrib V2    0.3437822177852816
#>     Attrib V20    0.7905496702018805
#>     Attrib V21    0.7953816960036753
#>     Attrib V22    0.30899084510928104
#>     Attrib V23    0.12271744617608518
#>     Attrib V24    0.19882216494265562
#>     Attrib V25    -0.3884358333518269
#>     Attrib V26    -0.7127742917815388
#>     Attrib V27    -0.8445598637606999
#>     Attrib V28    -0.6636755534086517
#>     Attrib V29    -0.30504280651450244
#>     Attrib V3    0.30211553239498
#>     Attrib V30    0.07394331303124536
#>     Attrib V31    -0.9291986733602475
#>     Attrib V32    -0.7128980654773597
#>     Attrib V33    -0.14550886058100973
#>     Attrib V34    -0.10167684072230393
#>     Attrib V35    -0.17278405886473797
#>     Attrib V36    -0.7561166354675892
#>     Attrib V37    -0.7588649099478507
#>     Attrib V38    0.1809927931856207
#>     Attrib V39    0.27068782927110113
#>     Attrib V4    0.3860512924781286
#>     Attrib V40    -0.3340531175721058
#>     Attrib V41    -0.1335755791467206
#>     Attrib V42    0.323823645482284
#>     Attrib V43    0.2374761192327207
#>     Attrib V44    0.11430569522128572
#>     Attrib V45    0.4365173283567183
#>     Attrib V46    0.1142014199152466
#>     Attrib V47    -0.19169280543722544
#>     Attrib V48    0.10895476765018489
#>     Attrib V49    -0.06437783558924232
#>     Attrib V5    -0.16316444049753495
#>     Attrib V50    -0.37453728180435397
#>     Attrib V51    0.09521203795590932
#>     Attrib V52    0.378413088226829
#>     Attrib V53    0.3691935850173528
#>     Attrib V54    0.29623559014525236
#>     Attrib V55    0.38020934152909913
#>     Attrib V56    0.7990803393614294
#>     Attrib V57    0.5417921361496983
#>     Attrib V58    0.5237812908876373
#>     Attrib V59    0.6255547017568494
#>     Attrib V6    -0.10655600838705598
#>     Attrib V60    0.0988214892295313
#>     Attrib V7    -0.37645618629283006
#>     Attrib V8    0.10310079623886098
#>     Attrib V9    0.20496812035483544
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.2480911081795388
#>     Attrib V1    0.18779939761810102
#>     Attrib V10    -0.20249034568764082
#>     Attrib V11    0.05442246150431529
#>     Attrib V12    0.010282592056382532
#>     Attrib V13    -0.2722540329023463
#>     Attrib V14    -0.2431313263220377
#>     Attrib V15    0.07763968971978225
#>     Attrib V16    0.042433919540937726
#>     Attrib V17    0.1356731059004998
#>     Attrib V18    -0.17483330151559973
#>     Attrib V19    0.17093195368795439
#>     Attrib V2    0.18044955573332339
#>     Attrib V20    0.6421811364900784
#>     Attrib V21    0.6084936561102327
#>     Attrib V22    0.17475277426312721
#>     Attrib V23    0.11660033830143285
#>     Attrib V24    0.2222398201464087
#>     Attrib V25    -0.17229837933023387
#>     Attrib V26    -0.48759021601330477
#>     Attrib V27    -0.6173320433993071
#>     Attrib V28    -0.5087513861629581
#>     Attrib V29    -0.26508086624957294
#>     Attrib V3    0.2889222310025965
#>     Attrib V30    0.05926821939979618
#>     Attrib V31    -0.6922884367887301
#>     Attrib V32    -0.4051230782153811
#>     Attrib V33    -0.06950508140262349
#>     Attrib V34    -0.00856362977383322
#>     Attrib V35    -0.10502648336463251
#>     Attrib V36    -0.5830414476789749
#>     Attrib V37    -0.635431315467747
#>     Attrib V38    0.07642230756466527
#>     Attrib V39    0.2809691682762852
#>     Attrib V4    0.28276679555202083
#>     Attrib V40    -0.2393437047960136
#>     Attrib V41    -0.036644731894810656
#>     Attrib V42    0.28275488435395874
#>     Attrib V43    0.06419972857052783
#>     Attrib V44    0.01264218623977351
#>     Attrib V45    0.23417891470489077
#>     Attrib V46    0.038271496000047776
#>     Attrib V47    -0.10228552378052487
#>     Attrib V48    0.0941810801878775
#>     Attrib V49    0.07131672161067638
#>     Attrib V5    -0.1219950629251312
#>     Attrib V50    -0.3004882601351009
#>     Attrib V51    0.09189598743929978
#>     Attrib V52    0.24025359629010665
#>     Attrib V53    0.2409561880448641
#>     Attrib V54    0.09609653740853305
#>     Attrib V55    0.2974161384369683
#>     Attrib V56    0.56745329803091
#>     Attrib V57    0.3746437207554159
#>     Attrib V58    0.4078666594975954
#>     Attrib V59    0.544315765269775
#>     Attrib V6    -0.06616808923165818
#>     Attrib V60    0.1359196500829461
#>     Attrib V7    -0.3190156781975198
#>     Attrib V8    0.04422000810401254
#>     Attrib V9    0.17347706747307215
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.23612777972519572
#>     Attrib V1    0.27854763004910416
#>     Attrib V10    -0.2271900542840462
#>     Attrib V11    0.03284636205751116
#>     Attrib V12    -0.028730564078179734
#>     Attrib V13    -0.4259381034840062
#>     Attrib V14    -0.2807138127047187
#>     Attrib V15    0.2171962218280724
#>     Attrib V16    0.06478081266323282
#>     Attrib V17    0.14426704685418404
#>     Attrib V18    -0.1996005606128487
#>     Attrib V19    0.1119365633844785
#>     Attrib V2    0.3066285008725877
#>     Attrib V20    0.6831386741492658
#>     Attrib V21    0.6678220889927328
#>     Attrib V22    0.2224741115121327
#>     Attrib V23    0.10837379720095733
#>     Attrib V24    0.15310150476642073
#>     Attrib V25    -0.3094343057534533
#>     Attrib V26    -0.5867094576870854
#>     Attrib V27    -0.79998240761874
#>     Attrib V28    -0.6343680411358387
#>     Attrib V29    -0.37729538929362155
#>     Attrib V3    0.2559659527342329
#>     Attrib V30    0.03550454168671091
#>     Attrib V31    -0.7353392833028369
#>     Attrib V32    -0.5693564765817175
#>     Attrib V33    -0.10724732323078914
#>     Attrib V34    -0.1100089026524348
#>     Attrib V35    -0.11549130622720848
#>     Attrib V36    -0.6587877346532748
#>     Attrib V37    -0.6107218111366862
#>     Attrib V38    0.103603900479595
#>     Attrib V39    0.2506240955130815
#>     Attrib V4    0.2988160822806358
#>     Attrib V40    -0.32093396893868226
#>     Attrib V41    -0.15222442913093673
#>     Attrib V42    0.2314969961960817
#>     Attrib V43    0.11632309494666793
#>     Attrib V44    0.13458931816613037
#>     Attrib V45    0.2884334115130503
#>     Attrib V46    0.07934300099454229
#>     Attrib V47    -0.1686267286350189
#>     Attrib V48    0.09560172181040348
#>     Attrib V49    0.02377654046990248
#>     Attrib V5    -0.17623334650864617
#>     Attrib V50    -0.26735866648836726
#>     Attrib V51    0.0384291210519009
#>     Attrib V52    0.2788284789577705
#>     Attrib V53    0.2818834888030631
#>     Attrib V54    0.3054514656301731
#>     Attrib V55    0.4049354279732723
#>     Attrib V56    0.6864932838339312
#>     Attrib V57    0.46721735901277006
#>     Attrib V58    0.4753368923162182
#>     Attrib V59    0.5140542977454334
#>     Attrib V6    -0.08813055334327984
#>     Attrib V60    0.1327118492767487
#>     Attrib V7    -0.3549015450274759
#>     Attrib V8    0.031316924780706044
#>     Attrib V9    0.1699212678028204
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.15823410108808708
#>     Attrib V1    -0.062094499160043844
#>     Attrib V10    -0.24084936179902622
#>     Attrib V11    -0.7133302406466756
#>     Attrib V12    -0.612148317286799
#>     Attrib V13    0.19006007086514057
#>     Attrib V14    0.6713507507827475
#>     Attrib V15    0.4328079740976045
#>     Attrib V16    0.25413737809211256
#>     Attrib V17    -0.012064440670472344
#>     Attrib V18    0.505260414267394
#>     Attrib V19    -0.25924075725582435
#>     Attrib V2    -0.2490159646699109
#>     Attrib V20    -0.7896850707613929
#>     Attrib V21    -0.7460374869476785
#>     Attrib V22    -0.4489760031417746
#>     Attrib V23    -0.39957855089339955
#>     Attrib V24    -0.6647207431349651
#>     Attrib V25    -0.08852823432087482
#>     Attrib V26    0.1558527817151749
#>     Attrib V27    0.44376342739149865
#>     Attrib V28    0.011930690731736865
#>     Attrib V29    -0.3342684480162064
#>     Attrib V3    -0.08062793619770202
#>     Attrib V30    -0.6108446409232645
#>     Attrib V31    0.9148959412425055
#>     Attrib V32    0.34830181529329224
#>     Attrib V33    0.19756676158207814
#>     Attrib V34    0.14825053649380768
#>     Attrib V35    -0.1113801724690794
#>     Attrib V36    0.4514958793572447
#>     Attrib V37    0.5830389927951349
#>     Attrib V38    -0.4983734617543864
#>     Attrib V39    -0.7366525135351164
#>     Attrib V4    -0.22320924456035132
#>     Attrib V40    0.326280575401183
#>     Attrib V41    -0.23365255392078227
#>     Attrib V42    -0.3233108246897442
#>     Attrib V43    -0.11533091926519823
#>     Attrib V44    -0.2730732725845016
#>     Attrib V45    -0.5430126053193803
#>     Attrib V46    -0.07310289364190937
#>     Attrib V47    0.012592310028081331
#>     Attrib V48    -0.5661964085267001
#>     Attrib V49    -0.2702796199121548
#>     Attrib V5    0.22230784025641595
#>     Attrib V50    1.0316726837583392
#>     Attrib V51    -0.3829321512829825
#>     Attrib V52    -0.6917509349557195
#>     Attrib V53    0.25028259153956395
#>     Attrib V54    0.6908336559450421
#>     Attrib V55    0.26860327157392627
#>     Attrib V56    -0.42302591993726646
#>     Attrib V57    0.010721976248990451
#>     Attrib V58    -0.1101856268870021
#>     Attrib V59    -0.4476107679668416
#>     Attrib V6    -0.013279562118005683
#>     Attrib V60    0.25927671784083445
#>     Attrib V7    0.825764124515661
#>     Attrib V8    0.02851264879391772
#>     Attrib V9    -0.5757998154075203
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1959403982377455
#>     Attrib V1    0.0687309933540837
#>     Attrib V10    -0.04469344231708346
#>     Attrib V11    -0.28988510721626987
#>     Attrib V12    -0.2981524131026525
#>     Attrib V13    0.12950480824732133
#>     Attrib V14    0.2536255471535871
#>     Attrib V15    0.1270927693009032
#>     Attrib V16    0.1739499220542271
#>     Attrib V17    0.1236371541777225
#>     Attrib V18    0.3400325844349038
#>     Attrib V19    2.5931730596442584E-4
#>     Attrib V2    -0.07421514119082326
#>     Attrib V20    -0.23496415852792346
#>     Attrib V21    -0.17138447888960395
#>     Attrib V22    -0.02768770116784877
#>     Attrib V23    0.024053479215901803
#>     Attrib V24    -0.13190708043695254
#>     Attrib V25    0.031175446104847546
#>     Attrib V26    -0.026516630286862786
#>     Attrib V27    0.082464900921689
#>     Attrib V28    -0.06560422156716636
#>     Attrib V29    -0.19199329875013663
#>     Attrib V3    0.08586780878625676
#>     Attrib V30    -0.3360891821339746
#>     Attrib V31    0.2250782497577564
#>     Attrib V32    0.08633319252057267
#>     Attrib V33    0.07602688752604425
#>     Attrib V34    0.08916220285088754
#>     Attrib V35    0.06614996319013074
#>     Attrib V36    0.3762271665910565
#>     Attrib V37    0.4190235098136545
#>     Attrib V38    -0.12136325439955588
#>     Attrib V39    -0.26844923020881856
#>     Attrib V4    -0.030641572886920213
#>     Attrib V40    0.10511182394270413
#>     Attrib V41    -1.6388924845974617E-4
#>     Attrib V42    -0.01155235855178712
#>     Attrib V43    -0.07854339432305112
#>     Attrib V44    -0.21823018101763514
#>     Attrib V45    -0.31098266150714116
#>     Attrib V46    -0.10303334309685927
#>     Attrib V47    -0.018767791974963435
#>     Attrib V48    -0.3616184809608082
#>     Attrib V49    -0.22699937356939207
#>     Attrib V5    0.20850500129995778
#>     Attrib V50    0.4006512673682393
#>     Attrib V51    -0.03283252903718797
#>     Attrib V52    -0.2702766376024081
#>     Attrib V53    -0.02618051636846737
#>     Attrib V54    0.2266420321260554
#>     Attrib V55    -0.03429095702927089
#>     Attrib V56    -0.0661243794081418
#>     Attrib V57    0.05750888593837372
#>     Attrib V58    -0.03034898379567256
#>     Attrib V59    -0.16118611825386311
#>     Attrib V6    0.15047774945674497
#>     Attrib V60    0.21388471891437094
#>     Attrib V7    0.43974743614509265
#>     Attrib V8    -0.03268663869936295
#>     Attrib V9    -0.17980210448999082
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.12496458942292714
#>     Attrib V1    0.10174899972804427
#>     Attrib V10    0.05233088031179143
#>     Attrib V11    0.04472683807683625
#>     Attrib V12    -0.03499072145634743
#>     Attrib V13    -0.037912575396862915
#>     Attrib V14    1.5240670716941746E-4
#>     Attrib V15    0.08037646192751931
#>     Attrib V16    0.02990623045866149
#>     Attrib V17    0.005003189482073734
#>     Attrib V18    -0.039696989004064674
#>     Attrib V19    -0.0020606185042932237
#>     Attrib V2    0.09984983679946932
#>     Attrib V20    -0.03450138203068227
#>     Attrib V21    -0.034753825621425975
#>     Attrib V22    -0.023808711473921173
#>     Attrib V23    -0.09960787356500743
#>     Attrib V24    -0.03333058595906669
#>     Attrib V25    -0.07852248674337964
#>     Attrib V26    -0.07812627269078645
#>     Attrib V27    -0.0680055489103593
#>     Attrib V28    -0.07552717768755805
#>     Attrib V29    -0.09694038653380678
#>     Attrib V3    0.08786893415589954
#>     Attrib V30    0.013858089514210574
#>     Attrib V31    -0.008714717402253068
#>     Attrib V32    -0.05847190411811116
#>     Attrib V33    0.06851911378548028
#>     Attrib V34    0.016167599617617177
#>     Attrib V35    0.10923681826358261
#>     Attrib V36    0.013462380609665979
#>     Attrib V37    0.002375575911877034
#>     Attrib V38    0.08650014346018198
#>     Attrib V39    0.08431044357737176
#>     Attrib V4    0.09081337511244499
#>     Attrib V40    0.02914525080734158
#>     Attrib V41    0.1161210230744849
#>     Attrib V42    0.08122086367576094
#>     Attrib V43    0.0831723893551302
#>     Attrib V44    0.05834911695693755
#>     Attrib V45    0.0994512773828162
#>     Attrib V46    0.006324420547475245
#>     Attrib V47    -0.018610893527230263
#>     Attrib V48    0.07874251191484163
#>     Attrib V49    7.268143033328146E-4
#>     Attrib V5    0.0484505556900218
#>     Attrib V50    0.023554909753393763
#>     Attrib V51    0.07052040031119483
#>     Attrib V52    0.006539569574229881
#>     Attrib V53    0.0684648131857526
#>     Attrib V54    0.029306484654383957
#>     Attrib V55    0.09768472591735432
#>     Attrib V56    0.12309273557340508
#>     Attrib V57    0.17694859279110672
#>     Attrib V58    0.08389113527496832
#>     Attrib V59    0.0835753147660909
#>     Attrib V6    0.061466809855145924
#>     Attrib V60    0.08097659051405197
#>     Attrib V7    -0.010893761918468489
#>     Attrib V8    0.08498696436023874
#>     Attrib V9    0.051270958839192006
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.22499542497962294
#>     Attrib V1    0.1841492719255114
#>     Attrib V10    -0.1497483824558042
#>     Attrib V11    0.03795918719635876
#>     Attrib V12    -0.01783519956189011
#>     Attrib V13    -0.2955121577782944
#>     Attrib V14    -0.2059934612037002
#>     Attrib V15    0.08643000481182479
#>     Attrib V16    0.08260599336152821
#>     Attrib V17    0.0782978348783726
#>     Attrib V18    -0.10553019102694476
#>     Attrib V19    0.10090331130526695
#>     Attrib V2    0.20248706352839416
#>     Attrib V20    0.5289672500508017
#>     Attrib V21    0.5299529160077747
#>     Attrib V22    0.15231608965416302
#>     Attrib V23    0.05098567240144944
#>     Attrib V24    0.14109441051398042
#>     Attrib V25    -0.18506849790095123
#>     Attrib V26    -0.38614540012793575
#>     Attrib V27    -0.5463757262470961
#>     Attrib V28    -0.43074951405452544
#>     Attrib V29    -0.2603112713790025
#>     Attrib V3    0.2668130639778384
#>     Attrib V30    0.002847517779017027
#>     Attrib V31    -0.5799339689501439
#>     Attrib V32    -0.388094254407378
#>     Attrib V33    -0.07570825315411674
#>     Attrib V34    -0.020517588564955867
#>     Attrib V35    -0.11289817322434327
#>     Attrib V36    -0.4360713727124022
#>     Attrib V37    -0.5510762794321392
#>     Attrib V38    0.0650975621435644
#>     Attrib V39    0.22962346800581948
#>     Attrib V4    0.21229590738091078
#>     Attrib V40    -0.2521443006932166
#>     Attrib V41    -0.10158841606250187
#>     Attrib V42    0.2013603438556073
#>     Attrib V43    0.07517803827438291
#>     Attrib V44    0.06774753755699858
#>     Attrib V45    0.2007201948054981
#>     Attrib V46    0.009367761743249542
#>     Attrib V47    -0.08251678553475915
#>     Attrib V48    0.08418733612117865
#>     Attrib V49    0.04872371347647518
#>     Attrib V5    -0.1106979319220852
#>     Attrib V50    -0.2752367513990203
#>     Attrib V51    0.13329464727757684
#>     Attrib V52    0.21798362521614068
#>     Attrib V53    0.2478238128639509
#>     Attrib V54    0.09787805304416104
#>     Attrib V55    0.30431122837437996
#>     Attrib V56    0.5131791009699592
#>     Attrib V57    0.2828668995921118
#>     Attrib V58    0.36431179185048745
#>     Attrib V59    0.45499774046296887
#>     Attrib V6    -0.09630522865224989
#>     Attrib V60    0.12612993698545844
#>     Attrib V7    -0.2685237851731968
#>     Attrib V8    0.08842938068308395
#>     Attrib V9    0.1559105611881069
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.46261382225071523
#>     Attrib V1    -0.2006738748395812
#>     Attrib V10    0.48600422998768356
#>     Attrib V11    0.9137731412793259
#>     Attrib V12    1.0209960566642737
#>     Attrib V13    0.2816797592943095
#>     Attrib V14    -0.1666934639871126
#>     Attrib V15    -0.1860054598323719
#>     Attrib V16    -0.24091207060125774
#>     Attrib V17    -0.3356765273924804
#>     Attrib V18    -0.6338289745314984
#>     Attrib V19    -0.3417920499961635
#>     Attrib V2    0.19535261675548168
#>     Attrib V20    -0.3378360246251747
#>     Attrib V21    -0.3128164995095741
#>     Attrib V22    -0.33558297769362083
#>     Attrib V23    -0.4639724339711257
#>     Attrib V24    0.11587970776812495
#>     Attrib V25    0.0728335942541707
#>     Attrib V26    0.4681132230374504
#>     Attrib V27    0.7479394439835526
#>     Attrib V28    0.9077702994696799
#>     Attrib V29    0.5474058753174222
#>     Attrib V3    0.0947808338730855
#>     Attrib V30    0.2153603312338519
#>     Attrib V31    -0.4712873013776899
#>     Attrib V32    -0.21386319543307375
#>     Attrib V33    -0.5064770887565829
#>     Attrib V34    -0.2532018013029292
#>     Attrib V35    0.08242504056661115
#>     Attrib V36    -0.3358584157215387
#>     Attrib V37    -0.3761566294071036
#>     Attrib V38    0.06854714546700494
#>     Attrib V39    0.2676765740898067
#>     Attrib V4    0.315763228380648
#>     Attrib V40    0.0023642382816867224
#>     Attrib V41    0.27355682987198954
#>     Attrib V42    -0.11650305339815085
#>     Attrib V43    -0.016562544614687653
#>     Attrib V44    0.34817426107340027
#>     Attrib V45    0.5610097786434651
#>     Attrib V46    0.3099344019320285
#>     Attrib V47    0.07385263953081347
#>     Attrib V48    0.5961475626748821
#>     Attrib V49    0.3087953867544191
#>     Attrib V5    0.06815443492469775
#>     Attrib V50    -0.7768195001759735
#>     Attrib V51    0.20937221411485082
#>     Attrib V52    0.8159841131208598
#>     Attrib V53    0.7085694087291071
#>     Attrib V54    -0.5056724261901161
#>     Attrib V55    0.05738181003447327
#>     Attrib V56    -0.21662110716673122
#>     Attrib V57    -0.021061297240434325
#>     Attrib V58    0.39096421408681487
#>     Attrib V59    0.2925904994057745
#>     Attrib V6    0.17148773346042445
#>     Attrib V60    0.11965999004914604
#>     Attrib V7    -0.42932072592068066
#>     Attrib V8    0.04083236449987038
#>     Attrib V9    0.3747978432295386
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.0056626135571027116
#>     Attrib V1    0.16129859824755297
#>     Attrib V10    -0.06240015758139657
#>     Attrib V11    0.3456548525697221
#>     Attrib V12    0.319206141228776
#>     Attrib V13    -0.25225228710676584
#>     Attrib V14    -0.38027334019325654
#>     Attrib V15    -0.0871671383303835
#>     Attrib V16    -0.08892656335578326
#>     Attrib V17    0.10698741058891258
#>     Attrib V18    -0.24878101563035007
#>     Attrib V19    0.2960346229601985
#>     Attrib V2    0.15584915605764596
#>     Attrib V20    0.7807465735353198
#>     Attrib V21    0.7899555623606134
#>     Attrib V22    0.35708048377348295
#>     Attrib V23    0.23818872088415421
#>     Attrib V24    0.45635511475268203
#>     Attrib V25    -0.03356053089639802
#>     Attrib V26    -0.1489007861934282
#>     Attrib V27    -0.4060887748505966
#>     Attrib V28    -0.23548918720836323
#>     Attrib V29    0.04438885334932635
#>     Attrib V3    0.14486822352777246
#>     Attrib V30    0.3199651454856401
#>     Attrib V31    -0.8745962253154302
#>     Attrib V32    -0.5954692535595042
#>     Attrib V33    -0.1551688817942182
#>     Attrib V34    -0.05612549361599192
#>     Attrib V35    0.12161453040686299
#>     Attrib V36    -0.3448553945590424
#>     Attrib V37    -0.5267750750241735
#>     Attrib V38    0.3265480048054249
#>     Attrib V39    0.3909810167860866
#>     Attrib V4    0.2882110762207163
#>     Attrib V40    -0.3998363580249946
#>     Attrib V41    -0.026465188825431953
#>     Attrib V42    0.24536530884883287
#>     Attrib V43    0.27787128626219565
#>     Attrib V44    0.35473626194886687
#>     Attrib V45    0.5188961537793036
#>     Attrib V46    0.05157002015927444
#>     Attrib V47    -0.16649860636340721
#>     Attrib V48    0.23546509560719944
#>     Attrib V49    0.09407205669965418
#>     Attrib V5    -0.15981260861475668
#>     Attrib V50    -0.5619688984206099
#>     Attrib V51    0.23231407417841343
#>     Attrib V52    0.40034697356774596
#>     Attrib V53    0.06424609945700517
#>     Attrib V54    -0.12297229213341812
#>     Attrib V55    0.16857521276848836
#>     Attrib V56    0.5801163227762639
#>     Attrib V57    0.14968636566057103
#>     Attrib V58    0.35575946772115935
#>     Attrib V59    0.5756544923987615
#>     Attrib V6    -0.12286213626625456
#>     Attrib V60    -0.0038308175258041856
#>     Attrib V7    -0.5580275392336455
#>     Attrib V8    -0.03746902766734992
#>     Attrib V9    0.2836653095928237
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.1094859365883197
#>     Attrib V1    0.040895372542638156
#>     Attrib V10    -0.1121588227237348
#>     Attrib V11    -0.5709318316770651
#>     Attrib V12    -0.5983356301609111
#>     Attrib V13    0.16221678794422986
#>     Attrib V14    0.5093625947517243
#>     Attrib V15    0.23471078114442342
#>     Attrib V16    0.15922273080343502
#>     Attrib V17    0.026088842079008592
#>     Attrib V18    0.4850944944036284
#>     Attrib V19    -0.23421301968202596
#>     Attrib V2    -0.1706752068992646
#>     Attrib V20    -0.5926419175805225
#>     Attrib V21    -0.47327363228225017
#>     Attrib V22    -0.28593119281868407
#>     Attrib V23    -0.1975823956142529
#>     Attrib V24    -0.5103245256440414
#>     Attrib V25    -0.028446271551853225
#>     Attrib V26    0.18393788254490534
#>     Attrib V27    0.46594964701257935
#>     Attrib V28    0.026901517016176612
#>     Attrib V29    -0.17594057213571776
#>     Attrib V3    -0.09191616206692439
#>     Attrib V30    -0.36630123936624237
#>     Attrib V31    0.8018132270321248
#>     Attrib V32    0.20367370811297383
#>     Attrib V33    0.10816786586990805
#>     Attrib V34    0.06754016410093028
#>     Attrib V35    0.02818362425089995
#>     Attrib V36    0.7004094748241547
#>     Attrib V37    0.8748740363542121
#>     Attrib V38    -0.213841069473658
#>     Attrib V39    -0.5243552363518108
#>     Attrib V4    -0.1636347190098293
#>     Attrib V40    0.32950637509857056
#>     Attrib V41    -0.09860191771556065
#>     Attrib V42    -0.2813863332878427
#>     Attrib V43    0.04469373429844361
#>     Attrib V44    0.07171847562909621
#>     Attrib V45    -0.36170994623151975
#>     Attrib V46    -0.06861419741151545
#>     Attrib V47    0.004716409904005165
#>     Attrib V48    -0.4837709721230611
#>     Attrib V49    -0.23536687687320543
#>     Attrib V5    0.3120073039060656
#>     Attrib V50    0.8614491963433575
#>     Attrib V51    -0.3123607983832757
#>     Attrib V52    -0.61806412147649
#>     Attrib V53    0.003853446200259352
#>     Attrib V54    0.5543930096361337
#>     Attrib V55    -0.09254173460015817
#>     Attrib V56    -0.43546155210284904
#>     Attrib V57    -0.006595330764660147
#>     Attrib V58    -0.348106625270115
#>     Attrib V59    -0.4951973718285626
#>     Attrib V6    0.11459850516168305
#>     Attrib V60    0.0665364273561868
#>     Attrib V7    0.8362991678273531
#>     Attrib V8    -0.018710730974309357
#>     Attrib V9    -0.3779783284622505
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.1594956999434015
#>     Attrib V1    0.14290988755386913
#>     Attrib V10    -0.018877498062993683
#>     Attrib V11    0.07628058484395267
#>     Attrib V12    0.03466444814701398
#>     Attrib V13    -0.09697245940823261
#>     Attrib V14    -0.03200147231259353
#>     Attrib V15    -0.002087833074462524
#>     Attrib V16    0.06309550042207959
#>     Attrib V17    0.00850742173456041
#>     Attrib V18    -0.1173363492937153
#>     Attrib V19    -0.04125735697234617
#>     Attrib V2    0.10935729838042033
#>     Attrib V20    0.10106294165042677
#>     Attrib V21    0.056073498171620176
#>     Attrib V22    -0.11413943638665704
#>     Attrib V23    -0.16310322211873685
#>     Attrib V24    0.027370471822695152
#>     Attrib V25    -0.09541747017992129
#>     Attrib V26    -0.1282170963821781
#>     Attrib V27    -0.16213364213180972
#>     Attrib V28    -0.1520136044902396
#>     Attrib V29    -0.0545116128668366
#>     Attrib V3    0.11546098313451741
#>     Attrib V30    0.01567636899648209
#>     Attrib V31    -0.1429797033430229
#>     Attrib V32    -0.13274273988569463
#>     Attrib V33    -0.07895489070025265
#>     Attrib V34    -0.02388290709781396
#>     Attrib V35    0.010433163436626454
#>     Attrib V36    -0.16381311761252282
#>     Attrib V37    -0.1813459640894446
#>     Attrib V38    0.003415661073010048
#>     Attrib V39    0.06684088877454734
#>     Attrib V4    0.18104488896786733
#>     Attrib V40    -0.026333897056621366
#>     Attrib V41    -0.02308689369985072
#>     Attrib V42    0.05967617118531499
#>     Attrib V43    0.09496212592996782
#>     Attrib V44    0.06367280669295251
#>     Attrib V45    0.10442114721426303
#>     Attrib V46    0.0878594615450812
#>     Attrib V47    -0.031873287959632506
#>     Attrib V48    0.14088131137882506
#>     Attrib V49    0.07335361173608067
#>     Attrib V5    0.03124306128456854
#>     Attrib V50    -0.07144719593603242
#>     Attrib V51    0.058474614526077544
#>     Attrib V52    0.14041879345808508
#>     Attrib V53    0.19085013596155612
#>     Attrib V54    0.10874756607778091
#>     Attrib V55    0.21869993915956368
#>     Attrib V56    0.25727012671833144
#>     Attrib V57    0.21803864663907918
#>     Attrib V58    0.28397601899490876
#>     Attrib V59    0.24290666912999018
#>     Attrib V6    0.0048803748509611946
#>     Attrib V60    0.10675550681431846
#>     Attrib V7    -0.10753650036233922
#>     Attrib V8    -0.010769183117444413
#>     Attrib V9    0.09593885952541736
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.16910924202952624
#>     Attrib V1    0.3042066339186237
#>     Attrib V10    -0.3209416764713484
#>     Attrib V11    0.122862109505945
#>     Attrib V12    0.0727157326905524
#>     Attrib V13    -0.5250700547984595
#>     Attrib V14    -0.4299817338231367
#>     Attrib V15    0.15060074810948956
#>     Attrib V16    -0.001076328296124611
#>     Attrib V17    0.17399487764663277
#>     Attrib V18    -0.33332824345913425
#>     Attrib V19    0.20591827125927392
#>     Attrib V2    0.2879010308162514
#>     Attrib V20    1.0194133492343176
#>     Attrib V21    1.0314749942774384
#>     Attrib V22    0.375027814223934
#>     Attrib V23    0.1887293624699351
#>     Attrib V24    0.31820407341022827
#>     Attrib V25    -0.39952986448514854
#>     Attrib V26    -0.7379367239358093
#>     Attrib V27    -1.0630596941974595
#>     Attrib V28    -0.794862387914845
#>     Attrib V29    -0.36374313784595375
#>     Attrib V3    0.40219843071762196
#>     Attrib V30    0.14428242906508837
#>     Attrib V31    -1.1531840952645616
#>     Attrib V32    -0.852421903342035
#>     Attrib V33    -0.20170968036106068
#>     Attrib V34    -0.15472661346773975
#>     Attrib V35    -0.12504448872241308
#>     Attrib V36    -0.8995066570766014
#>     Attrib V37    -0.8872938232188288
#>     Attrib V38    0.21920625402927968
#>     Attrib V39    0.3994349267886216
#>     Attrib V4    0.4722148749475593
#>     Attrib V40    -0.5413453245203304
#>     Attrib V41    -0.17915163284684413
#>     Attrib V42    0.43969812186262264
#>     Attrib V43    0.33329388676911753
#>     Attrib V44    0.23250377357458826
#>     Attrib V45    0.5847028433317251
#>     Attrib V46    0.09717192376444757
#>     Attrib V47    -0.16735156262076362
#>     Attrib V48    0.1341215137420523
#>     Attrib V49    0.018945074521962545
#>     Attrib V5    -0.2505232556327857
#>     Attrib V50    -0.49101854895351044
#>     Attrib V51    0.09707666284451959
#>     Attrib V52    0.4739476290405219
#>     Attrib V53    0.329114854572786
#>     Attrib V54    0.24658605999103597
#>     Attrib V55    0.48828688268072906
#>     Attrib V56    0.9987584293729035
#>     Attrib V57    0.5442390107028844
#>     Attrib V58    0.6019475983844275
#>     Attrib V59    0.7929033748769355
#>     Attrib V6    -0.11526329478706376
#>     Attrib V60    0.056443018275065863
#>     Attrib V7    -0.5222193937606129
#>     Attrib V8    0.0677054807295078
#>     Attrib V9    0.2571974659765096
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.20586151545472647
#>     Attrib V1    0.09748896942334444
#>     Attrib V10    -0.13606058790238698
#>     Attrib V11    -0.4146542003283615
#>     Attrib V12    -0.419569913230205
#>     Attrib V13    0.09933167416220413
#>     Attrib V14    0.3885327738873819
#>     Attrib V15    0.24517729744276204
#>     Attrib V16    0.11839061416022581
#>     Attrib V17    0.1010396923123283
#>     Attrib V18    0.34197536010893936
#>     Attrib V19    -0.04624853585708133
#>     Attrib V2    -0.06936736395072228
#>     Attrib V20    -0.2519218625662695
#>     Attrib V21    -0.18557746431922384
#>     Attrib V22    -0.07766349847280889
#>     Attrib V23    0.05545513004308029
#>     Attrib V24    -0.2707039093599663
#>     Attrib V25    0.0053823206801174575
#>     Attrib V26    0.09100351765980799
#>     Attrib V27    0.1792826729869828
#>     Attrib V28    -0.049382972458282
#>     Attrib V29    -0.2373403388751667
#>     Attrib V3    0.047221181309630274
#>     Attrib V30    -0.3788556634358327
#>     Attrib V31    0.33984713025374647
#>     Attrib V32    0.0982525078305621
#>     Attrib V33    0.05371345585614981
#>     Attrib V34    0.04146413945749824
#>     Attrib V35    0.027456144705137794
#>     Attrib V36    0.4618746514504779
#>     Attrib V37    0.4264681470303124
#>     Attrib V38    -0.18000987505032354
#>     Attrib V39    -0.39130219689227597
#>     Attrib V4    -0.04490053437534532
#>     Attrib V40    0.15918992423052217
#>     Attrib V41    -0.0797379310179681
#>     Attrib V42    -0.12930165423684678
#>     Attrib V43    -0.015938830612394345
#>     Attrib V44    -0.2091145159021275
#>     Attrib V45    -0.41961870601177
#>     Attrib V46    -0.122028334858977
#>     Attrib V47    0.01162430468998695
#>     Attrib V48    -0.4603173401261028
#>     Attrib V49    -0.25864042951212995
#>     Attrib V5    0.19298128408670254
#>     Attrib V50    0.5938490732911584
#>     Attrib V51    -0.13671587664038615
#>     Attrib V52    -0.3811805983823899
#>     Attrib V53    -0.07327315826591392
#>     Attrib V54    0.39186408036718934
#>     Attrib V55    5.4262830260061504E-5
#>     Attrib V56    -0.08114831942460254
#>     Attrib V57    0.08743838031062222
#>     Attrib V58    -0.10411329524329908
#>     Attrib V59    -0.2022288260346552
#>     Attrib V6    0.12860839671045354
#>     Attrib V60    0.15695407444664344
#>     Attrib V7    0.5351281470265435
#>     Attrib V8    -0.0071087819279117915
#>     Attrib V9    -0.25108117465427865
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.15619269552270465
#>     Attrib V1    -0.15802422881524072
#>     Attrib V10    1.2854906488759237
#>     Attrib V11    1.7678097293576
#>     Attrib V12    1.8003675541530477
#>     Attrib V13    0.7653388162503671
#>     Attrib V14    -0.3543242646478321
#>     Attrib V15    -1.0555025095897823
#>     Attrib V16    -0.5295318164331105
#>     Attrib V17    -0.46806898282709447
#>     Attrib V18    -0.524447053281571
#>     Attrib V19    0.285384226011278
#>     Attrib V2    0.25618903390663395
#>     Attrib V20    -0.08386840368850035
#>     Attrib V21    -0.04174444893586817
#>     Attrib V22    0.4447647966426743
#>     Attrib V23    0.5875753841945704
#>     Attrib V24    0.9829968817655437
#>     Attrib V25    1.1370726368354702
#>     Attrib V26    1.6764016306714529
#>     Attrib V27    1.2090434447136482
#>     Attrib V28    1.3163366021598755
#>     Attrib V29    0.7265666880930343
#>     Attrib V3    0.15818409557909868
#>     Attrib V30    0.22815058268527785
#>     Attrib V31    -0.5500799689325497
#>     Attrib V32    0.22872891635634623
#>     Attrib V33    -0.38392240557985213
#>     Attrib V34    -0.07771646511466149
#>     Attrib V35    0.31101625225869706
#>     Attrib V36    -0.25802559941554903
#>     Attrib V37    -0.7278978324963548
#>     Attrib V38    -0.09836649113888433
#>     Attrib V39    0.7635423854860168
#>     Attrib V4    0.3106154235010391
#>     Attrib V40    0.5009166610884354
#>     Attrib V41    1.3539098052982188
#>     Attrib V42    0.1474957716839388
#>     Attrib V43    -0.3631002834634025
#>     Attrib V44    -0.020727979113827483
#>     Attrib V45    0.30063181766830177
#>     Attrib V46    0.33990892741835055
#>     Attrib V47    0.5306278885956462
#>     Attrib V48    1.1450203883369976
#>     Attrib V49    0.9387340009496241
#>     Attrib V5    0.37043872934818267
#>     Attrib V50    -0.773148323909277
#>     Attrib V51    1.094250596778417
#>     Attrib V52    1.189263832108653
#>     Attrib V53    0.5253580480303559
#>     Attrib V54    -1.149804021948262
#>     Attrib V55    -0.8372739871881281
#>     Attrib V56    -0.5329249788182534
#>     Attrib V57    -0.5181126229714232
#>     Attrib V58    0.15315272444449846
#>     Attrib V59    0.26649940441848113
#>     Attrib V6    0.6230182713728956
#>     Attrib V60    -0.09343365140713719
#>     Attrib V7    -0.672324457890456
#>     Attrib V8    0.17739220750029455
#>     Attrib V9    0.9600740694895303
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.2059434493998501
#>     Attrib V1    0.09424610043637124
#>     Attrib V10    -0.0013414068451304125
#>     Attrib V11    -0.013041834808161321
#>     Attrib V12    0.01694191729885063
#>     Attrib V13    -0.009331379303551206
#>     Attrib V14    0.07111370089203482
#>     Attrib V15    0.008057955786714343
#>     Attrib V16    0.023688524826519897
#>     Attrib V17    0.04099768609053811
#>     Attrib V18    -0.051145893936521865
#>     Attrib V19    0.03572661945962927
#>     Attrib V2    0.0658054636555482
#>     Attrib V20    -0.004716118427209627
#>     Attrib V21    -9.143351880377925E-4
#>     Attrib V22    -0.06716974801305287
#>     Attrib V23    -0.06761101301336896
#>     Attrib V24    -0.06463123381447831
#>     Attrib V25    -0.043282465642949436
#>     Attrib V26    -0.07190870663277334
#>     Attrib V27    -0.03569293044729111
#>     Attrib V28    -0.03158895372965793
#>     Attrib V29    -0.044187144041445386
#>     Attrib V3    0.07199739787506818
#>     Attrib V30    -0.03171565960194359
#>     Attrib V31    -0.0873212824280198
#>     Attrib V32    -0.05578320877759043
#>     Attrib V33    0.04880336283013298
#>     Attrib V34    0.019099293309251877
#>     Attrib V35    0.11221966772248843
#>     Attrib V36    0.08644768873083516
#>     Attrib V37    0.0825547800636677
#>     Attrib V38    0.017723532564533583
#>     Attrib V39    0.05949514976226265
#>     Attrib V4    0.12939495678620688
#>     Attrib V40    0.0397176758784192
#>     Attrib V41    0.06778908926164781
#>     Attrib V42    0.10189476199078089
#>     Attrib V43    0.050265137764381775
#>     Attrib V44    0.03750025451147887
#>     Attrib V45    0.051883782471341136
#>     Attrib V46    0.00745397948869578
#>     Attrib V47    4.305136141157768E-4
#>     Attrib V48    0.0757510775314653
#>     Attrib V49    0.02109782071458843
#>     Attrib V5    0.023999075491497327
#>     Attrib V50    0.04200857393282985
#>     Attrib V51    0.04626739690301282
#>     Attrib V52    0.016973696438297273
#>     Attrib V53    0.07118063948240924
#>     Attrib V54    0.04636324269944116
#>     Attrib V55    0.05853470500689012
#>     Attrib V56    0.11963666214062567
#>     Attrib V57    0.15670425412114763
#>     Attrib V58    0.1226350281972824
#>     Attrib V59    0.13721230387007224
#>     Attrib V6    0.08946762524791645
#>     Attrib V60    0.13140079925172243
#>     Attrib V7    0.007289040640499423
#>     Attrib V8    0.06430993951056915
#>     Attrib V9    0.02074102061146182
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.03822219158387855
#>     Attrib V1    0.23813509921367904
#>     Attrib V10    -0.129523267228104
#>     Attrib V11    0.23137021327821886
#>     Attrib V12    0.1843544682491059
#>     Attrib V13    -0.3574700987114202
#>     Attrib V14    -0.40471489985513986
#>     Attrib V15    0.059089559775038186
#>     Attrib V16    0.015250380523414646
#>     Attrib V17    0.10011689053749681
#>     Attrib V18    -0.21744362418444746
#>     Attrib V19    0.195281888123019
#>     Attrib V2    0.27564201121946796
#>     Attrib V20    0.7417993601180591
#>     Attrib V21    0.7969966379771312
#>     Attrib V22    0.2601661086777375
#>     Attrib V23    0.09163391924822177
#>     Attrib V24    0.38481926500941066
#>     Attrib V25    -0.22834512337765095
#>     Attrib V26    -0.416511852927677
#>     Attrib V27    -0.7059890623083004
#>     Attrib V28    -0.5097631698381685
#>     Attrib V29    -0.19982029074298743
#>     Attrib V3    0.2463441005418557
#>     Attrib V30    0.17103445227676772
#>     Attrib V31    -0.8505565292945109
#>     Attrib V32    -0.5647872231228493
#>     Attrib V33    -0.15976423219081096
#>     Attrib V34    -0.06742576402578457
#>     Attrib V35    -0.09146891433189837
#>     Attrib V36    -0.7130180888490737
#>     Attrib V37    -0.7987146448545943
#>     Attrib V38    0.1872752925569028
#>     Attrib V39    0.37291218060665854
#>     Attrib V4    0.34477571628443643
#>     Attrib V40    -0.435058152324546
#>     Attrib V41    -0.06777971384080349
#>     Attrib V42    0.3080979550758357
#>     Attrib V43    0.14289605527143415
#>     Attrib V44    0.18887167339724567
#>     Attrib V45    0.472970727358184
#>     Attrib V46    0.022477933617341368
#>     Attrib V47    -0.19986171572784203
#>     Attrib V48    0.2502458796483512
#>     Attrib V49    0.0368232072497428
#>     Attrib V5    -0.194650073849121
#>     Attrib V50    -0.42668561057374726
#>     Attrib V51    0.1389998627502353
#>     Attrib V52    0.4528161097265524
#>     Attrib V53    0.2930829837231624
#>     Attrib V54    0.04546742473946859
#>     Attrib V55    0.36410110787633804
#>     Attrib V56    0.6258362278536933
#>     Attrib V57    0.3818044432204664
#>     Attrib V58    0.47976143923193265
#>     Attrib V59    0.6425143583537215
#>     Attrib V6    -0.07871488968543307
#>     Attrib V60    0.10889323109565725
#>     Attrib V7    -0.5538573532939165
#>     Attrib V8    0.07867738151467422
#>     Attrib V9    0.29864809461773834
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.13008077722052916
#>     Attrib V1    -0.010747121419659176
#>     Attrib V10    -0.3266941913178807
#>     Attrib V11    -0.7334840426014948
#>     Attrib V12    -0.7971569441505346
#>     Attrib V13    0.08501890126530318
#>     Attrib V14    0.6190709254210475
#>     Attrib V15    0.37661932650134533
#>     Attrib V16    0.2791169555348836
#>     Attrib V17    -0.041363986283205464
#>     Attrib V18    0.5830476783799281
#>     Attrib V19    -0.3085227760490172
#>     Attrib V2    -0.27462808766728136
#>     Attrib V20    -0.7667777014913291
#>     Attrib V21    -0.6350565021450463
#>     Attrib V22    -0.4516742479418569
#>     Attrib V23    -0.3624278420059741
#>     Attrib V24    -0.5954529438425653
#>     Attrib V25    -0.15680994135451387
#>     Attrib V26    -0.01788747477249005
#>     Attrib V27    0.4498876224304042
#>     Attrib V28    -0.07978547490933505
#>     Attrib V29    -0.4364779041615889
#>     Attrib V3    -0.07448712351838034
#>     Attrib V30    -0.6062362109013322
#>     Attrib V31    0.8989863128465462
#>     Attrib V32    0.38010747161816066
#>     Attrib V33    0.20942840627998996
#>     Attrib V34    0.13622279339342291
#>     Attrib V35    -0.045326434587609724
#>     Attrib V36    0.6029105784429799
#>     Attrib V37    0.5801049545676417
#>     Attrib V38    -0.4054671291825124
#>     Attrib V39    -0.6677966777744653
#>     Attrib V4    -0.15670887899914362
#>     Attrib V40    0.3355509680017356
#>     Attrib V41    -0.19736658956291703
#>     Attrib V42    -0.3375797556817162
#>     Attrib V43    -0.05000044697392084
#>     Attrib V44    -0.17444444456493266
#>     Attrib V45    -0.5344553248964633
#>     Attrib V46    -0.1714042285153058
#>     Attrib V47    -0.15715520198954527
#>     Attrib V48    -0.6904759092465137
#>     Attrib V49    -0.3111331439360214
#>     Attrib V5    0.2316499568405237
#>     Attrib V50    1.0184535782395256
#>     Attrib V51    -0.5312672634973337
#>     Attrib V52    -0.65604666933277
#>     Attrib V53    0.20348593476338522
#>     Attrib V54    0.7813372755228633
#>     Attrib V55    0.3171638419462211
#>     Attrib V56    -0.45253820058740896
#>     Attrib V57    0.10512425143160704
#>     Attrib V58    -0.06395120563474657
#>     Attrib V59    -0.4139763423764969
#>     Attrib V6    0.08970470503612846
#>     Attrib V60    0.1524697453378221
#>     Attrib V7    0.9438063850004956
#>     Attrib V8    0.19311780097879272
#>     Attrib V9    -0.4817292361719849
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.16095259876139587
#>     Attrib V1    0.14050589712050046
#>     Attrib V10    -0.18158934008595728
#>     Attrib V11    0.1398769137160819
#>     Attrib V12    0.07601330191975901
#>     Attrib V13    -0.32037407153922565
#>     Attrib V14    -0.215348074968467
#>     Attrib V15    0.08153922502688506
#>     Attrib V16    0.039052072878737645
#>     Attrib V17    0.10235298465373673
#>     Attrib V18    -0.19196257740609604
#>     Attrib V19    0.1383371593578352
#>     Attrib V2    0.17345479358011193
#>     Attrib V20    0.6311367778891969
#>     Attrib V21    0.6123681139951521
#>     Attrib V22    0.2303148280765472
#>     Attrib V23    0.04703142497204594
#>     Attrib V24    0.2672566955732224
#>     Attrib V25    -0.1285447514640757
#>     Attrib V26    -0.4443742270843462
#>     Attrib V27    -0.629032580544579
#>     Attrib V28    -0.4786658818903871
#>     Attrib V29    -0.22544721768939852
#>     Attrib V3    0.25933096390956084
#>     Attrib V30    0.021651114113221535
#>     Attrib V31    -0.6170626235809081
#>     Attrib V32    -0.3747496731540241
#>     Attrib V33    -0.04137695532687494
#>     Attrib V34    -0.02399924683844293
#>     Attrib V35    -0.0585598191647371
#>     Attrib V36    -0.5689428244320569
#>     Attrib V37    -0.6114616967721904
#>     Attrib V38    0.07980787988879688
#>     Attrib V39    0.24913232194871468
#>     Attrib V4    0.2339882820646549
#>     Attrib V40    -0.2560231286262317
#>     Attrib V41    -0.02217238339238749
#>     Attrib V42    0.21757748806966248
#>     Attrib V43    0.12086028648631353
#>     Attrib V44    -0.03004611484857566
#>     Attrib V45    0.30611747884646406
#>     Attrib V46    0.027128852353685815
#>     Attrib V47    -0.10344963964420523
#>     Attrib V48    0.12483926915518472
#>     Attrib V49    0.033967326275267
#>     Attrib V5    -0.1664957807877233
#>     Attrib V50    -0.2751541860529095
#>     Attrib V51    0.13421303997896922
#>     Attrib V52    0.30898929645308304
#>     Attrib V53    0.20943960647087356
#>     Attrib V54    0.06436455211690102
#>     Attrib V55    0.3546163945867899
#>     Attrib V56    0.5640098275638665
#>     Attrib V57    0.3621674574644656
#>     Attrib V58    0.3998779156614217
#>     Attrib V59    0.4856736116019616
#>     Attrib V6    -0.0696841140918198
#>     Attrib V60    0.09621933976227683
#>     Attrib V7    -0.39127107474282996
#>     Attrib V8    0.08080854466763727
#>     Attrib V9    0.19860204752197128
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.12825294860073375
#>     Attrib V1    0.1304042249981435
#>     Attrib V10    0.01231095583381355
#>     Attrib V11    0.09094993003517765
#>     Attrib V12    0.09476574019153769
#>     Attrib V13    -0.03205570528877581
#>     Attrib V14    -0.06792625526106062
#>     Attrib V15    0.02694289494628955
#>     Attrib V16    6.816061700666724E-4
#>     Attrib V17    0.01984325026287882
#>     Attrib V18    -0.13589823268296894
#>     Attrib V19    -0.03077508131881079
#>     Attrib V2    0.11764853977981574
#>     Attrib V20    0.09375546070648744
#>     Attrib V21    0.1316328874141505
#>     Attrib V22    -0.058403526957411245
#>     Attrib V23    -0.09459808081531197
#>     Attrib V24    0.007807721645348109
#>     Attrib V25    -0.03235526762082875
#>     Attrib V26    -0.04868480301943276
#>     Attrib V27    -0.13152838365176805
#>     Attrib V28    -0.058774760847627415
#>     Attrib V29    -0.1000138972398994
#>     Attrib V3    0.11994934026124886
#>     Attrib V30    0.0580337270383736
#>     Attrib V31    -0.15748426275654276
#>     Attrib V32    -0.1531464158584767
#>     Attrib V33    -0.08145766583375119
#>     Attrib V34    -0.03653409609985808
#>     Attrib V35    0.027999504991257283
#>     Attrib V36    -0.2040558529035665
#>     Attrib V37    -0.1833303578854904
#>     Attrib V38    0.015560563785558064
#>     Attrib V39    0.17118105717116183
#>     Attrib V4    0.1973704126890982
#>     Attrib V40    -0.027929262794874295
#>     Attrib V41    0.0350365942455553
#>     Attrib V42    0.12070739517038086
#>     Attrib V43    0.030090527509239795
#>     Attrib V44    0.026850127916116868
#>     Attrib V45    0.15900232733032665
#>     Attrib V46    0.0419773714097301
#>     Attrib V47    -0.04346808259205849
#>     Attrib V48    0.13468657158616723
#>     Attrib V49    0.044768640502287016
#>     Attrib V5    -0.04592457527548552
#>     Attrib V50    -0.1186803722344369
#>     Attrib V51    0.04666574607033066
#>     Attrib V52    0.14739370658171974
#>     Attrib V53    0.22352173259411404
#>     Attrib V54    0.06486258151245274
#>     Attrib V55    0.14713947501802713
#>     Attrib V56    0.26699964427284223
#>     Attrib V57    0.16278858579018318
#>     Attrib V58    0.25680720544952035
#>     Attrib V59    0.2867574990141708
#>     Attrib V6    -0.011516259198762374
#>     Attrib V60    0.09235531470156974
#>     Attrib V7    -0.18215904311924022
#>     Attrib V8    0.019120497590272848
#>     Attrib V9    0.0682415151296365
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.15479961140335596
#>     Attrib V1    0.12040498807525161
#>     Attrib V10    -0.04101216021922184
#>     Attrib V11    0.10640753143496141
#>     Attrib V12    -0.004657795064074109
#>     Attrib V13    -0.05364384722140978
#>     Attrib V14    -0.027367164783480447
#>     Attrib V15    0.0398016921809408
#>     Attrib V16    0.006937716908246701
#>     Attrib V17    0.03209724586229111
#>     Attrib V18    -0.07756887260399999
#>     Attrib V19    0.0054638947522402375
#>     Attrib V2    0.1368992137806015
#>     Attrib V20    0.1717953228753347
#>     Attrib V21    0.08513072345640314
#>     Attrib V22    1.5650269554285773E-4
#>     Attrib V23    -0.036819320974995816
#>     Attrib V24    0.06432672004269271
#>     Attrib V25    -0.09266712707612393
#>     Attrib V26    -0.08732308379830815
#>     Attrib V27    -0.19160343595341753
#>     Attrib V28    -0.17816025255428694
#>     Attrib V29    -0.12476879637101175
#>     Attrib V3    0.09834222410202782
#>     Attrib V30    -0.010727226166897688
#>     Attrib V31    -0.20206103068161685
#>     Attrib V32    -0.16620405781302808
#>     Attrib V33    -0.015165631657651554
#>     Attrib V34    0.008559507135633106
#>     Attrib V35    0.04623724219401049
#>     Attrib V36    -0.18028106930723606
#>     Attrib V37    -0.1737316254626239
#>     Attrib V38    0.06660774038872203
#>     Attrib V39    0.055697236244530934
#>     Attrib V4    0.18784088048586603
#>     Attrib V40    -0.06766027194835696
#>     Attrib V41    -0.007680033583007197
#>     Attrib V42    0.07771828222841207
#>     Attrib V43    0.07777661436496969
#>     Attrib V44    0.09891029688853077
#>     Attrib V45    0.1287244935324734
#>     Attrib V46    0.04156233533008184
#>     Attrib V47    -0.009909183142038145
#>     Attrib V48    0.11316721435954172
#>     Attrib V49    0.06731860085610193
#>     Attrib V5    -0.010751833334063595
#>     Attrib V50    -0.09886926821171972
#>     Attrib V51    0.05117552112917354
#>     Attrib V52    0.12241976591865963
#>     Attrib V53    0.19474842786095758
#>     Attrib V54    0.13229419710013166
#>     Attrib V55    0.19957242717039836
#>     Attrib V56    0.19009046765304416
#>     Attrib V57    0.19007708040524576
#>     Attrib V58    0.18914972030380173
#>     Attrib V59    0.24563259488932376
#>     Attrib V6    -0.018342263511075683
#>     Attrib V60    0.07272110162057356
#>     Attrib V7    -0.11764433516943466
#>     Attrib V8    0.0426702060627807
#>     Attrib V9    0.11595398326178954
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.15759575531148945
#>     Attrib V1    0.11271472945545287
#>     Attrib V10    -0.025647918299623363
#>     Attrib V11    0.016862021175776305
#>     Attrib V12    -0.016931128101727654
#>     Attrib V13    -0.013950874990385645
#>     Attrib V14    0.09864054713516303
#>     Attrib V15    0.0524245596650243
#>     Attrib V16    0.07038543192974717
#>     Attrib V17    0.0012703402522974258
#>     Attrib V18    0.06729054181657294
#>     Attrib V19    -0.05117033379943184
#>     Attrib V2    0.023844352852600642
#>     Attrib V20    -0.01920470071342717
#>     Attrib V21    -0.010937264247138439
#>     Attrib V22    -0.06877083035746709
#>     Attrib V23    -0.014323869755409857
#>     Attrib V24    -0.059961369784044614
#>     Attrib V25    -0.09347301428134461
#>     Attrib V26    -0.08636323920127906
#>     Attrib V27    -0.07415663955444209
#>     Attrib V28    -0.05013537011445327
#>     Attrib V29    -0.07484958194044965
#>     Attrib V3    0.1221986020173312
#>     Attrib V30    -0.015090549528861847
#>     Attrib V31    -0.05894666073714583
#>     Attrib V32    -0.027681165329924082
#>     Attrib V33    0.05618397480573448
#>     Attrib V34    0.05627250102628944
#>     Attrib V35    0.0869805078330512
#>     Attrib V36    0.13999483009195185
#>     Attrib V37    0.09128026852343726
#>     Attrib V38    -0.00649013414177357
#>     Attrib V39    0.03592757390768686
#>     Attrib V4    0.06002626458668981
#>     Attrib V40    0.04417947572393822
#>     Attrib V41    0.048802556032508784
#>     Attrib V42    0.09631273308483977
#>     Attrib V43    -0.01412637204464522
#>     Attrib V44    0.022154359188081018
#>     Attrib V45    0.043893867042873944
#>     Attrib V46    0.013908810728131346
#>     Attrib V47    0.012676381458126402
#>     Attrib V48    -0.027210085151390635
#>     Attrib V49    0.04428232130124892
#>     Attrib V5    0.08267282242345916
#>     Attrib V50    0.017412805092495424
#>     Attrib V51    0.07782514502615054
#>     Attrib V52    0.04870564538058784
#>     Attrib V53    0.06948143678181869
#>     Attrib V54    0.014715548195933273
#>     Attrib V55    0.019019962684722655
#>     Attrib V56    0.07766442651989831
#>     Attrib V57    0.10525199229127105
#>     Attrib V58    0.15006883133053303
#>     Attrib V59    0.07813023083980025
#>     Attrib V6    0.10689738398884205
#>     Attrib V60    0.0868443933580787
#>     Attrib V7    0.09273549199793567
#>     Attrib V8    0.08933892588845196
#>     Attrib V9    0.05245131904668417
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
