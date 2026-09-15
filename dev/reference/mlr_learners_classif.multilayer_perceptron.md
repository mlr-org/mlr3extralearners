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
#>     Threshold    -0.7789148545057593
#>     Node 2    1.6771571735664097
#>     Node 3    1.736769491609702
#>     Node 4    0.926224543614361
#>     Node 5    -2.0988923251959006
#>     Node 6    0.6161937176478702
#>     Node 7    3.024029887210861
#>     Node 8    0.6764395949145677
#>     Node 9    3.305866944438933
#>     Node 10    -0.3194480795287721
#>     Node 11    1.291891451719882
#>     Node 12    1.705891584153351
#>     Node 13    0.3560871059687173
#>     Node 14    1.8701738124892917
#>     Node 15    -2.820233831308103
#>     Node 16    0.14550963835614542
#>     Node 17    0.4543036855529556
#>     Node 18    -0.7460935526193764
#>     Node 19    1.5944581950324668
#>     Node 20    1.6226149860867978
#>     Node 21    -2.1890915162835998
#>     Node 22    2.169540823775524
#>     Node 23    1.661275288184494
#>     Node 24    -1.2402755845338047
#>     Node 25    3.358827307390697
#>     Node 26    -0.03357519863355502
#>     Node 27    3.2088218348016895
#>     Node 28    -2.3105694113491304
#>     Node 29    1.081742477942934
#>     Node 30    0.02940384784323495
#>     Node 31    1.6568653075087125
#>     Node 32    1.2341844333567846
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.7930885305496448
#>     Node 2    -1.7368336478865
#>     Node 3    -1.714463027282423
#>     Node 4    -0.8863194733051187
#>     Node 5    2.102936823790054
#>     Node 6    -0.5932170876910676
#>     Node 7    -3.008937122493927
#>     Node 8    -0.7073338177966998
#>     Node 9    -3.2983479981670154
#>     Node 10    0.2629547242582215
#>     Node 11    -1.2608783374246844
#>     Node 12    -1.785047118469348
#>     Node 13    -0.2985873675999551
#>     Node 14    -1.80291093599193
#>     Node 15    2.7919031549818296
#>     Node 16    -0.15557459763826523
#>     Node 17    -0.4174260818320751
#>     Node 18    0.7855600983062898
#>     Node 19    -1.588912059291211
#>     Node 20    -1.6101963310168623
#>     Node 21    2.2319926139568826
#>     Node 22    -2.2131447484751536
#>     Node 23    -1.701953410292653
#>     Node 24    1.2185293479656885
#>     Node 25    -3.334944666641715
#>     Node 26    -0.03989268945073952
#>     Node 27    -3.2532732193328715
#>     Node 28    2.269611519559425
#>     Node 29    -1.1198367967305567
#>     Node 30    0.05617954082264623
#>     Node 31    -1.5946241816511928
#>     Node 32    -1.251219625308317
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.3355059400871738
#>     Attrib V1    0.3587318600922059
#>     Attrib V10    0.43402331710255526
#>     Attrib V11    0.8653983999524498
#>     Attrib V12    0.7633590634912772
#>     Attrib V13    0.06552306529430585
#>     Attrib V14    -0.3286240228923637
#>     Attrib V15    -0.6506714347729528
#>     Attrib V16    -0.5460195005391075
#>     Attrib V17    -0.23298285639608707
#>     Attrib V18    -0.05934235371396371
#>     Attrib V19    -0.18731407147250242
#>     Attrib V2    -0.17788400674521057
#>     Attrib V20    0.0492658948703987
#>     Attrib V21    -0.022324671683159544
#>     Attrib V22    -0.04824873152811698
#>     Attrib V23    0.34302538305825353
#>     Attrib V24    0.283049757942422
#>     Attrib V25    0.2714295165379727
#>     Attrib V26    0.4502771114302516
#>     Attrib V27    0.3178777058734647
#>     Attrib V28    0.509606638347464
#>     Attrib V29    0.5343378412103893
#>     Attrib V3    -0.11123331855467401
#>     Attrib V30    0.5441984113496637
#>     Attrib V31    -0.7151235066593188
#>     Attrib V32    -0.06339097259202964
#>     Attrib V33    0.49683507108949887
#>     Attrib V34    0.1900750363528331
#>     Attrib V35    -0.01935659172516611
#>     Attrib V36    -0.33855493882292215
#>     Attrib V37    -0.26533456814556755
#>     Attrib V38    0.15721833325640205
#>     Attrib V39    0.2753082484841921
#>     Attrib V4    0.4553182639723599
#>     Attrib V40    -0.05836699266310003
#>     Attrib V41    0.34830284625834956
#>     Attrib V42    0.021640262393071326
#>     Attrib V43    -0.07863948212028961
#>     Attrib V44    0.15620999725212295
#>     Attrib V45    0.13827696554978042
#>     Attrib V46    0.2030932199811019
#>     Attrib V47    0.2460614157469906
#>     Attrib V48    0.7309990113429944
#>     Attrib V49    0.5289759693976159
#>     Attrib V5    0.01132558414052765
#>     Attrib V50    -0.4286479743244913
#>     Attrib V51    0.6248147780096179
#>     Attrib V52    0.29455804825659965
#>     Attrib V53    0.18862685955508596
#>     Attrib V54    -0.03525069179808417
#>     Attrib V55    -0.48815688539420876
#>     Attrib V56    -0.6046480780504774
#>     Attrib V57    -0.26353615055385243
#>     Attrib V58    0.04516947862787014
#>     Attrib V59    0.47252424307720814
#>     Attrib V6    0.15427449324058884
#>     Attrib V60    -0.14112663334773445
#>     Attrib V7    -0.5170533543640352
#>     Attrib V8    0.1883751267863242
#>     Attrib V9    0.5155513745190323
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.23085768922368613
#>     Attrib V1    0.5224432312448862
#>     Attrib V10    -0.2572176306572121
#>     Attrib V11    -0.02439704885775082
#>     Attrib V12    -0.26609375216572456
#>     Attrib V13    -0.4017500012587202
#>     Attrib V14    0.06736844561663123
#>     Attrib V15    0.3548368916826828
#>     Attrib V16    0.03934748248814472
#>     Attrib V17    0.09420164609985425
#>     Attrib V18    -0.12784891225009326
#>     Attrib V19    -0.007418306726611162
#>     Attrib V2    -0.08051426101138014
#>     Attrib V20    0.46422179629103005
#>     Attrib V21    0.4196025177251144
#>     Attrib V22    0.19498774612600855
#>     Attrib V23    0.16160327662936816
#>     Attrib V24    -0.10924929717516178
#>     Attrib V25    -0.5012401331483944
#>     Attrib V26    -0.7047185135757955
#>     Attrib V27    -0.7692789646924947
#>     Attrib V28    -0.679323352544846
#>     Attrib V29    -0.22990532529877022
#>     Attrib V3    0.05340641817997209
#>     Attrib V30    0.17545755096219665
#>     Attrib V31    -0.9698029480401975
#>     Attrib V32    -0.31485984232027836
#>     Attrib V33    0.5674157735514643
#>     Attrib V34    0.02389246786216547
#>     Attrib V35    -0.18147439990679964
#>     Attrib V36    -0.4818060713939982
#>     Attrib V37    -0.5101324304249345
#>     Attrib V38    -0.07225679268135295
#>     Attrib V39    -0.07493434740551749
#>     Attrib V4    0.5048254041257527
#>     Attrib V40    -0.34239381429788673
#>     Attrib V41    -0.09042447034196727
#>     Attrib V42    0.11548279750471624
#>     Attrib V43    0.13309660744765542
#>     Attrib V44    -0.10432040326426749
#>     Attrib V45    -0.17801906486347216
#>     Attrib V46    -0.10402430910756891
#>     Attrib V47    -0.00546895079383687
#>     Attrib V48    0.21019271862938874
#>     Attrib V49    0.011605702105442699
#>     Attrib V5    0.11347171871780044
#>     Attrib V50    -0.31202679622356067
#>     Attrib V51    0.11214439008554572
#>     Attrib V52    -0.14296322496311484
#>     Attrib V53    0.052007508816576564
#>     Attrib V54    0.7260103662402557
#>     Attrib V55    0.04284348708544027
#>     Attrib V56    0.23763356153932047
#>     Attrib V57    0.33238462740465785
#>     Attrib V58    0.5995687754307109
#>     Attrib V59    1.131085800912521
#>     Attrib V6    -0.1485055730934284
#>     Attrib V60    0.3896471108548424
#>     Attrib V7    -0.17777611288332695
#>     Attrib V8    0.33008963317897977
#>     Attrib V9    0.09127657317466886
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.07089331418187322
#>     Attrib V1    0.27802924054890443
#>     Attrib V10    -0.09996388145860559
#>     Attrib V11    0.08040942971742313
#>     Attrib V12    -0.05786529835808227
#>     Attrib V13    -0.16583354228352337
#>     Attrib V14    0.04270254429466445
#>     Attrib V15    0.1388297997362874
#>     Attrib V16    -0.03265454732416586
#>     Attrib V17    0.047875404220197405
#>     Attrib V18    -0.03820444734564491
#>     Attrib V19    0.0032467925311407794
#>     Attrib V2    -0.07667761925968648
#>     Attrib V20    0.27643388761968285
#>     Attrib V21    0.27301147682739973
#>     Attrib V22    0.05766985335842145
#>     Attrib V23    0.12193157574944821
#>     Attrib V24    -0.02716590407048449
#>     Attrib V25    -0.26651859971007313
#>     Attrib V26    -0.32983688187717314
#>     Attrib V27    -0.4126694684263346
#>     Attrib V28    -0.28195291249964805
#>     Attrib V29    -0.0229015132364144
#>     Attrib V3    0.04993100314620818
#>     Attrib V30    0.11698378341940141
#>     Attrib V31    -0.5602023443507339
#>     Attrib V32    -0.17680342750100692
#>     Attrib V33    0.3750945696467409
#>     Attrib V34    0.1058270380404365
#>     Attrib V35    -0.06241684557784668
#>     Attrib V36    -0.2825885221323457
#>     Attrib V37    -0.3023303907492985
#>     Attrib V38    -0.032329570090080306
#>     Attrib V39    -0.003941721443334332
#>     Attrib V4    0.32070548429743256
#>     Attrib V40    -0.19051505998228835
#>     Attrib V41    -0.06402337377480037
#>     Attrib V42    0.041817313639078486
#>     Attrib V43    0.0043386345509858915
#>     Attrib V44    -0.03854303310858718
#>     Attrib V45    -0.009123488352331243
#>     Attrib V46    -0.05471717415361817
#>     Attrib V47    -0.03168536023748373
#>     Attrib V48    0.17962818555642648
#>     Attrib V49    0.07295207259689675
#>     Attrib V5    0.13270488404518613
#>     Attrib V50    -0.1935359570990237
#>     Attrib V51    0.18616531481140197
#>     Attrib V52    -0.030678206212616195
#>     Attrib V53    0.09660847721426612
#>     Attrib V54    0.32115401149941053
#>     Attrib V55    0.010202088061585858
#>     Attrib V56    0.0823380552778935
#>     Attrib V57    0.15048143490207444
#>     Attrib V58    0.28581683611971226
#>     Attrib V59    0.6147502359734418
#>     Attrib V6    -0.07346849690128683
#>     Attrib V60    0.20384509595277092
#>     Attrib V7    -0.13246881657089848
#>     Attrib V8    0.11084904965601967
#>     Attrib V9    0.14743740451448012
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.5463145713944798
#>     Attrib V1    -0.5034379751145378
#>     Attrib V10    0.0833988097724878
#>     Attrib V11    -0.6569308535221481
#>     Attrib V12    -0.48303658216526546
#>     Attrib V13    0.2608002752341952
#>     Attrib V14    0.3290618104272361
#>     Attrib V15    0.37296061755393156
#>     Attrib V16    0.4500528039101823
#>     Attrib V17    0.10587454920594373
#>     Attrib V18    0.078546090696013
#>     Attrib V19    -0.02619060836058342
#>     Attrib V2    0.42413673532121327
#>     Attrib V20    -0.5687646463389354
#>     Attrib V21    -0.3286129571448694
#>     Attrib V22    -0.24724640936548128
#>     Attrib V23    -0.5959387008766689
#>     Attrib V24    -0.2959597781726119
#>     Attrib V25    0.19566901258627886
#>     Attrib V26    0.1999166047923315
#>     Attrib V27    0.251958046885384
#>     Attrib V28    -0.08767850859737461
#>     Attrib V29    -0.5392863452715453
#>     Attrib V3    0.18859831109584405
#>     Attrib V30    -0.5054178301180632
#>     Attrib V31    1.42667519373682
#>     Attrib V32    0.47478118015094894
#>     Attrib V33    -0.6040414641981623
#>     Attrib V34    -0.011941570879961014
#>     Attrib V35    0.23287498848269947
#>     Attrib V36    0.6420613315415866
#>     Attrib V37    0.4972111735728664
#>     Attrib V38    -0.3061794516374113
#>     Attrib V39    -0.2790731297974059
#>     Attrib V4    -0.6595036309916227
#>     Attrib V40    0.40754487184649935
#>     Attrib V41    -0.12531916499335136
#>     Attrib V42    -0.02573212939159284
#>     Attrib V43    -0.1545496422264062
#>     Attrib V44    0.030874258868078364
#>     Attrib V45    0.08201496910481554
#>     Attrib V46    -0.054184417370329016
#>     Attrib V47    -0.1613748967355503
#>     Attrib V48    -0.6591524921699786
#>     Attrib V49    -0.43056614474358273
#>     Attrib V5    0.15666105256994484
#>     Attrib V50    0.8203363539240878
#>     Attrib V51    -0.48195351175950807
#>     Attrib V52    -0.0020865028288525236
#>     Attrib V53    -0.11949314738634512
#>     Attrib V54    -0.1476398472452776
#>     Attrib V55    0.45688561968085883
#>     Attrib V56    0.14160723830550753
#>     Attrib V57    -0.030579404023579757
#>     Attrib V58    -0.5407799034584458
#>     Attrib V59    -1.1653962412843255
#>     Attrib V6    0.1494091228912827
#>     Attrib V60    0.01427759279706062
#>     Attrib V7    0.7468820264801719
#>     Attrib V8    -0.3496645631621081
#>     Attrib V9    -0.37838605402692255
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.04048763025398275
#>     Attrib V1    0.24438274307087746
#>     Attrib V10    -0.0706495729577427
#>     Attrib V11    0.0490971049622899
#>     Attrib V12    0.020269906257605105
#>     Attrib V13    -0.13360890396571157
#>     Attrib V14    0.014585583542000723
#>     Attrib V15    0.05027195362928272
#>     Attrib V16    0.03579733042751093
#>     Attrib V17    0.009133415322471241
#>     Attrib V18    0.015570309745887205
#>     Attrib V19    -0.023587558656881735
#>     Attrib V2    0.010615910221742847
#>     Attrib V20    0.16587126666799823
#>     Attrib V21    0.141508996180446
#>     Attrib V22    -0.017082285560487465
#>     Attrib V23    0.04020951433630099
#>     Attrib V24    0.020063084135886148
#>     Attrib V25    -0.09739583895883026
#>     Attrib V26    -0.17879966241186945
#>     Attrib V27    -0.17550267997129085
#>     Attrib V28    -0.2033178951831
#>     Attrib V29    -0.06317483653235997
#>     Attrib V3    0.06832703315681954
#>     Attrib V30    0.045022297258352835
#>     Attrib V31    -0.3626615410556644
#>     Attrib V32    -0.05577215926178868
#>     Attrib V33    0.2666867414903174
#>     Attrib V34    0.08856571765542155
#>     Attrib V35    0.011914282615684394
#>     Attrib V36    -0.16713148638328126
#>     Attrib V37    -0.16020832764137335
#>     Attrib V38    -0.01606805223246535
#>     Attrib V39    -0.016353515775483708
#>     Attrib V4    0.29748282124391845
#>     Attrib V40    -0.1251795873800767
#>     Attrib V41    0.03826110706162837
#>     Attrib V42    0.02817719844527505
#>     Attrib V43    -0.01065810815999827
#>     Attrib V44    -0.04662443392674946
#>     Attrib V45    -0.052480026453879336
#>     Attrib V46    0.0036840546959109035
#>     Attrib V47    -0.004518098437697234
#>     Attrib V48    0.08250997973973782
#>     Attrib V49    0.022961896714095143
#>     Attrib V5    0.10023147747842232
#>     Attrib V50    -0.0971297334672563
#>     Attrib V51    0.12763479748976536
#>     Attrib V52    -0.02087788822563677
#>     Attrib V53    0.1093717786375173
#>     Attrib V54    0.2261470231544228
#>     Attrib V55    -0.0014123558202725687
#>     Attrib V56    0.06669748059786587
#>     Attrib V57    0.13421967060928008
#>     Attrib V58    0.19160119280548263
#>     Attrib V59    0.44904898989030284
#>     Attrib V6    0.010390427667130409
#>     Attrib V60    0.240746218716074
#>     Attrib V7    -0.06436504469703343
#>     Attrib V8    0.12189295506359334
#>     Attrib V9    0.1373538744507436
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.2764606216815814
#>     Attrib V1    0.34564998691719667
#>     Attrib V10    0.7085027293761426
#>     Attrib V11    1.265672800844644
#>     Attrib V12    1.255168786488814
#>     Attrib V13    0.4031533082585673
#>     Attrib V14    -0.3830259452377322
#>     Attrib V15    -0.9621037672805651
#>     Attrib V16    -0.6442051117932195
#>     Attrib V17    -0.1785918474227865
#>     Attrib V18    0.1690581213333673
#>     Attrib V19    -0.33623753975942156
#>     Attrib V2    0.07021489746124471
#>     Attrib V20    -0.14728346425161265
#>     Attrib V21    -0.05579428484326288
#>     Attrib V22    0.1449937909334576
#>     Attrib V23    0.6966202183308985
#>     Attrib V24    0.478997043484883
#>     Attrib V25    0.49272347744957723
#>     Attrib V26    1.1626863072893903
#>     Attrib V27    1.0204650613801125
#>     Attrib V28    1.129592607716906
#>     Attrib V29    1.094251459837728
#>     Attrib V3    -0.03175166395990067
#>     Attrib V30    0.4812318377697574
#>     Attrib V31    -0.8928923731640834
#>     Attrib V32    -0.6047805711255155
#>     Attrib V33    -0.3698607717664409
#>     Attrib V34    -0.4550597811456269
#>     Attrib V35    -0.3435353671421828
#>     Attrib V36    -0.4974949689407334
#>     Attrib V37    -0.04759288783403746
#>     Attrib V38    0.1500896723194689
#>     Attrib V39    0.418051342499526
#>     Attrib V4    0.6372085396961326
#>     Attrib V40    0.11133103307497791
#>     Attrib V41    0.5952867477700476
#>     Attrib V42    -0.03610677510789921
#>     Attrib V43    0.09933566723850114
#>     Attrib V44    0.707741156739485
#>     Attrib V45    0.46769247262233493
#>     Attrib V46    0.5815687858736118
#>     Attrib V47    0.5498383639208727
#>     Attrib V48    0.8772690859018234
#>     Attrib V49    0.6537137805514524
#>     Attrib V5    0.01869752851160646
#>     Attrib V50    -0.33413545088273083
#>     Attrib V51    1.1466428439941607
#>     Attrib V52    0.7512126630536953
#>     Attrib V53    0.868115367592252
#>     Attrib V54    0.04468280334309063
#>     Attrib V55    -0.8153413219516054
#>     Attrib V56    -0.9758797002713573
#>     Attrib V57    -0.3495529983551932
#>     Attrib V58    -0.09926529395594373
#>     Attrib V59    0.17333572095144822
#>     Attrib V6    0.5739547243902413
#>     Attrib V60    -0.3273927709683206
#>     Attrib V7    -0.5972180805076638
#>     Attrib V8    -0.02767945377142724
#>     Attrib V9    0.6111856729848104
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.0805203614106115
#>     Attrib V1    0.21915531738726163
#>     Attrib V10    -0.006255744484039122
#>     Attrib V11    0.11484077078007693
#>     Attrib V12    -0.011052290470931658
#>     Attrib V13    -0.11076616471097142
#>     Attrib V14    -0.053287687144851485
#>     Attrib V15    0.02165774641630562
#>     Attrib V16    0.0053676710675960755
#>     Attrib V17    -0.003666363343365156
#>     Attrib V18    -0.07465050994320692
#>     Attrib V19    -0.01800261115357124
#>     Attrib V2    -0.012405353817174935
#>     Attrib V20    0.12878605471355417
#>     Attrib V21    0.118818667031176
#>     Attrib V22    -0.013366416754289862
#>     Attrib V23    0.044989604265959986
#>     Attrib V24    0.013580973665222635
#>     Attrib V25    -0.14810258442314192
#>     Attrib V26    -0.16748523446283592
#>     Attrib V27    -0.1963881318408216
#>     Attrib V28    -0.13694772409263123
#>     Attrib V29    0.0070246396711726306
#>     Attrib V3    0.03594089679226967
#>     Attrib V30    0.09713437883083445
#>     Attrib V31    -0.4327106451873939
#>     Attrib V32    -0.11942684014097046
#>     Attrib V33    0.27573364669327727
#>     Attrib V34    0.08052818656350141
#>     Attrib V35    -0.03199375831500908
#>     Attrib V36    -0.1253431518807781
#>     Attrib V37    -0.1622037206747821
#>     Attrib V38    0.07901258438864976
#>     Attrib V39    0.004966318991805917
#>     Attrib V4    0.33913316783880515
#>     Attrib V40    -0.14470014905168144
#>     Attrib V41    -0.02652535373151294
#>     Attrib V42    -0.10311014986116339
#>     Attrib V43    -0.04376744800249565
#>     Attrib V44    0.01831835258259131
#>     Attrib V45    -2.685989616546187E-4
#>     Attrib V46    0.04261295685494819
#>     Attrib V47    0.03621360706856772
#>     Attrib V48    0.1930115394887285
#>     Attrib V49    0.07348549536208755
#>     Attrib V5    0.09020550434880807
#>     Attrib V50    -0.19390298739422193
#>     Attrib V51    0.13482630760194136
#>     Attrib V52    -0.002462370096417655
#>     Attrib V53    0.1025014594878085
#>     Attrib V54    0.28281570082211527
#>     Attrib V55    -0.046637421046841765
#>     Attrib V56    -0.0391049694107335
#>     Attrib V57    0.16521846884106928
#>     Attrib V58    0.15361405756429938
#>     Attrib V59    0.4638078603520049
#>     Attrib V6    -0.03208535987035298
#>     Attrib V60    0.2417425163065634
#>     Attrib V7    -0.08309364788599456
#>     Attrib V8    0.056862641295789884
#>     Attrib V9    0.12869462002863705
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.15199797222693281
#>     Attrib V1    0.20566841269351444
#>     Attrib V10    0.8509106774933165
#>     Attrib V11    1.364852625322175
#>     Attrib V12    1.4558552665724285
#>     Attrib V13    0.5130032281252794
#>     Attrib V14    -0.5670279909661738
#>     Attrib V15    -1.3484408245430988
#>     Attrib V16    -0.8095418069947723
#>     Attrib V17    -0.14094070567559935
#>     Attrib V18    0.36692860188895904
#>     Attrib V19    0.0700743169242197
#>     Attrib V2    -0.10021273818497217
#>     Attrib V20    0.06072833457897979
#>     Attrib V21    0.009883794752216837
#>     Attrib V22    0.24114787974471166
#>     Attrib V23    0.9737930318993604
#>     Attrib V24    0.8435372700760491
#>     Attrib V25    0.9035432790295389
#>     Attrib V26    1.3060501182583815
#>     Attrib V27    0.9220283151219801
#>     Attrib V28    1.0578142415606773
#>     Attrib V29    0.8674049989983721
#>     Attrib V3    -0.11745583128636798
#>     Attrib V30    0.4709786015212665
#>     Attrib V31    -0.6766458075264431
#>     Attrib V32    -0.15079669949389343
#>     Attrib V33    0.14458313030009035
#>     Attrib V34    0.07198777398135155
#>     Attrib V35    -0.04135941521908381
#>     Attrib V36    -0.4332016866805134
#>     Attrib V37    -0.3615587706492235
#>     Attrib V38    0.10983658792584358
#>     Attrib V39    0.7040445183683792
#>     Attrib V4    0.6343047067678769
#>     Attrib V40    0.3309536056428874
#>     Attrib V41    0.8510483690440683
#>     Attrib V42    -0.04497567982082731
#>     Attrib V43    -0.023533011083399086
#>     Attrib V44    0.42185170122908877
#>     Attrib V45    0.18438052826199114
#>     Attrib V46    0.4990113163928558
#>     Attrib V47    0.6540821502499243
#>     Attrib V48    1.1179166408842462
#>     Attrib V49    1.0478166323351008
#>     Attrib V5    -0.07269608909242994
#>     Attrib V50    -0.3162745811911069
#>     Attrib V51    1.3586400424416178
#>     Attrib V52    0.761595794555787
#>     Attrib V53    0.7917343418657289
#>     Attrib V54    -0.3415625755428038
#>     Attrib V55    -0.7149676391437465
#>     Attrib V56    -0.9292645210038096
#>     Attrib V57    -0.6066095491075856
#>     Attrib V58    -0.08143004117789264
#>     Attrib V59    0.22472518850348883
#>     Attrib V6    0.4689833452739618
#>     Attrib V60    -0.4197717493489642
#>     Attrib V7    -0.8086264702093219
#>     Attrib V8    0.21224983503950548
#>     Attrib V9    0.7798116099165407
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.23392194124769633
#>     Attrib V1    0.01955254505058585
#>     Attrib V10    -0.03202246522652778
#>     Attrib V11    -0.1260447147550142
#>     Attrib V12    -0.04801032959879432
#>     Attrib V13    0.06560728637950657
#>     Attrib V14    0.13164720043840294
#>     Attrib V15    0.025640618780863347
#>     Attrib V16    0.05653080026564813
#>     Attrib V17    -0.05331800662370502
#>     Attrib V18    0.02254337912093705
#>     Attrib V19    -0.024133601319599938
#>     Attrib V2    0.16254933892254747
#>     Attrib V20    -0.12996834517978853
#>     Attrib V21    -0.06663508282152655
#>     Attrib V22    -0.036298561254110864
#>     Attrib V23    -0.006464632250269553
#>     Attrib V24    -0.049304825514348574
#>     Attrib V25    -0.007737257645264467
#>     Attrib V26    -0.0430512000313944
#>     Attrib V27    -0.09291920362644752
#>     Attrib V28    -0.08525231337953658
#>     Attrib V29    -0.11240788919591181
#>     Attrib V3    0.10904422218751439
#>     Attrib V30    -0.04520063447359537
#>     Attrib V31    0.2837596368110161
#>     Attrib V32    0.04741722140553338
#>     Attrib V33    -0.02733919299052707
#>     Attrib V34    0.06064500277609684
#>     Attrib V35    0.11920793415336554
#>     Attrib V36    0.19338568695588468
#>     Attrib V37    0.14738348259808856
#>     Attrib V38    0.015036881030125092
#>     Attrib V39    -0.0018216489042206705
#>     Attrib V4    -0.0677322638951035
#>     Attrib V40    0.19938781976024847
#>     Attrib V41    0.13007610967029143
#>     Attrib V42    0.12235306409503444
#>     Attrib V43    0.0834495170105704
#>     Attrib V44    0.060361453023615085
#>     Attrib V45    0.01233771643191755
#>     Attrib V46    -0.0039935833143739585
#>     Attrib V47    0.049540814337688276
#>     Attrib V48    -0.10817045529924463
#>     Attrib V49    -0.06418260586127858
#>     Attrib V5    0.055501052710223875
#>     Attrib V50    0.21413293982912449
#>     Attrib V51    -0.04507473171360942
#>     Attrib V52    -3.085165481974039E-4
#>     Attrib V53    0.06371672193366405
#>     Attrib V54    -0.045134717480652155
#>     Attrib V55    0.09058298781696536
#>     Attrib V56    0.1259701428169029
#>     Attrib V57    0.05240508815604758
#>     Attrib V58    -0.034968332767312905
#>     Attrib V59    -0.14514501308379552
#>     Attrib V6    0.07753207863265282
#>     Attrib V60    0.03101786599625327
#>     Attrib V7    0.1386754449905605
#>     Attrib V8    0.05478352929911485
#>     Attrib V9    -0.09110714621278419
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.37980645882720804
#>     Attrib V1    0.2981478127036475
#>     Attrib V10    0.16993795281927418
#>     Attrib V11    0.5423414616537788
#>     Attrib V12    0.38720056221239135
#>     Attrib V13    -0.1808039194215966
#>     Attrib V14    -0.3040885759907384
#>     Attrib V15    -0.3598308276437621
#>     Attrib V16    -0.351248461791922
#>     Attrib V17    -0.15246971032411613
#>     Attrib V18    -0.14233042655044884
#>     Attrib V19    -0.18278114203530593
#>     Attrib V2    -0.2516978636851256
#>     Attrib V20    0.15445258615676896
#>     Attrib V21    0.00525753085804379
#>     Attrib V22    -0.0978436274026045
#>     Attrib V23    0.15773041187239292
#>     Attrib V24    0.06807233284566856
#>     Attrib V25    -0.014617866191282556
#>     Attrib V26    -0.021618618310113805
#>     Attrib V27    -0.03463120226879726
#>     Attrib V28    0.1557355847450451
#>     Attrib V29    0.3241845566728122
#>     Attrib V3    -0.2117532041502286
#>     Attrib V30    0.45471095666260014
#>     Attrib V31    -0.7221091749318801
#>     Attrib V32    -0.14837194520997576
#>     Attrib V33    0.508219163715993
#>     Attrib V34    0.21142303378900817
#>     Attrib V35    0.005074988016375674
#>     Attrib V36    -0.29787267452109706
#>     Attrib V37    -0.25326405784547384
#>     Attrib V38    0.17492456554321958
#>     Attrib V39    0.1347916159679691
#>     Attrib V4    0.34991482139326296
#>     Attrib V40    -0.2234558125868175
#>     Attrib V41    0.04469759895107325
#>     Attrib V42    -0.05461028848476354
#>     Attrib V43    -0.07916771341186664
#>     Attrib V44    0.09280428935939834
#>     Attrib V45    0.17962787703809258
#>     Attrib V46    0.11469868484341827
#>     Attrib V47    0.15057618220534447
#>     Attrib V48    0.5376366039400696
#>     Attrib V49    0.30726776077509294
#>     Attrib V5    -0.008802280630255024
#>     Attrib V50    -0.4052614696339897
#>     Attrib V51    0.4256172280480218
#>     Attrib V52    0.0699124116334952
#>     Attrib V53    -0.004292261053726449
#>     Attrib V54    0.16979045481513982
#>     Attrib V55    -0.35384263408854016
#>     Attrib V56    -0.38426609247016735
#>     Attrib V57    -0.09249293359033658
#>     Attrib V58    0.1856961035812495
#>     Attrib V59    0.46360785126494714
#>     Attrib V6    0.0913722762833463
#>     Attrib V60    -0.05989845077144288
#>     Attrib V7    -0.40512136152987893
#>     Attrib V8    0.20273600606686407
#>     Attrib V9    0.39394172340655914
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.398864828901787
#>     Attrib V1    0.48748167759838673
#>     Attrib V10    -0.22980091218924414
#>     Attrib V11    0.254677575025586
#>     Attrib V12    -0.12943416000187352
#>     Attrib V13    -0.40698880488949457
#>     Attrib V14    -0.03771211625100395
#>     Attrib V15    0.0771250608754207
#>     Attrib V16    -0.06441242909292902
#>     Attrib V17    0.05413174276715688
#>     Attrib V18    -0.08274078211857168
#>     Attrib V19    0.07107854040357481
#>     Attrib V2    -0.1896600748092942
#>     Attrib V20    0.45863038836875625
#>     Attrib V21    0.40326080556773386
#>     Attrib V22    0.22377354812592956
#>     Attrib V23    0.33891541189189556
#>     Attrib V24    0.04406861195262916
#>     Attrib V25    -0.3645043801578859
#>     Attrib V26    -0.5848825023449942
#>     Attrib V27    -0.6777187235715071
#>     Attrib V28    -0.6255375313480289
#>     Attrib V29    -0.07672716620981934
#>     Attrib V3    -0.0775591925427967
#>     Attrib V30    0.26766337871740464
#>     Attrib V31    -0.9805763480986665
#>     Attrib V32    -0.1807071860536932
#>     Attrib V33    0.855733570420029
#>     Attrib V34    0.2695092162795983
#>     Attrib V35    -0.12023866991049417
#>     Attrib V36    -0.5135020305519133
#>     Attrib V37    -0.6580425325976347
#>     Attrib V38    -0.06781159335236882
#>     Attrib V39    -0.09709988379270548
#>     Attrib V4    0.5597001592257818
#>     Attrib V40    -0.3037125908360134
#>     Attrib V41    0.022985737786390594
#>     Attrib V42    0.13728880710872163
#>     Attrib V43    0.12985092004219562
#>     Attrib V44    -0.24969318134599372
#>     Attrib V45    -0.20919411301996044
#>     Attrib V46    -0.08328972205059197
#>     Attrib V47    -0.029580078884364834
#>     Attrib V48    0.38314127193703235
#>     Attrib V49    0.11925890369119697
#>     Attrib V5    0.09747904874816742
#>     Attrib V50    -0.445231451326989
#>     Attrib V51    0.21299537519389095
#>     Attrib V52    -0.09487496180521234
#>     Attrib V53    0.03343147355781984
#>     Attrib V54    0.5122153419569354
#>     Attrib V55    -0.10512371070006415
#>     Attrib V56    0.12520550078104378
#>     Attrib V57    0.22986274378559426
#>     Attrib V58    0.5961910041129638
#>     Attrib V59    1.1829044189540387
#>     Attrib V6    -0.12312001538670346
#>     Attrib V60    0.3056696846218118
#>     Attrib V7    -0.23401091853489583
#>     Attrib V8    0.4272770381085886
#>     Attrib V9    0.280504499664604
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.13831022261838039
#>     Attrib V1    0.13354054253270137
#>     Attrib V10    -0.00494094188165054
#>     Attrib V11    0.05844795118194828
#>     Attrib V12    0.01929458022122157
#>     Attrib V13    0.024042432383766535
#>     Attrib V14    0.03163351661070198
#>     Attrib V15    -0.0013452280178483519
#>     Attrib V16    -0.05188494266694706
#>     Attrib V17    0.020888565660894327
#>     Attrib V18    -0.017577454878616235
#>     Attrib V19    -0.04317969635183832
#>     Attrib V2    0.03521634586981327
#>     Attrib V20    0.08201387499296693
#>     Attrib V21    0.03656443017899172
#>     Attrib V22    -0.07040972041324375
#>     Attrib V23    0.023973845763700735
#>     Attrib V24    -0.01591523362275471
#>     Attrib V25    -0.03567370729423852
#>     Attrib V26    -0.11821641162086248
#>     Attrib V27    -0.044266582168192306
#>     Attrib V28    -0.08749499432646798
#>     Attrib V29    0.0041661995471617246
#>     Attrib V3    0.13218253163250482
#>     Attrib V30    0.03730032995758494
#>     Attrib V31    -0.22774759278168658
#>     Attrib V32    -0.039280734825215775
#>     Attrib V33    0.12815507747302707
#>     Attrib V34    0.13229161569006137
#>     Attrib V35    0.040956796198059885
#>     Attrib V36    -0.023360002107867164
#>     Attrib V37    0.003554740749723152
#>     Attrib V38    0.04432242653556698
#>     Attrib V39    0.09220098820785762
#>     Attrib V4    0.20808828970386892
#>     Attrib V40    0.014257333145039432
#>     Attrib V41    0.027994313771705033
#>     Attrib V42    0.007167071748852347
#>     Attrib V43    -0.042002139111965
#>     Attrib V44    0.016812643510766837
#>     Attrib V45    -0.019273268084094467
#>     Attrib V46    0.06812627792725409
#>     Attrib V47    0.08686567971454755
#>     Attrib V48    0.08445320118349102
#>     Attrib V49    0.08261363883840342
#>     Attrib V5    0.12459098236264192
#>     Attrib V50    -0.06353413196233658
#>     Attrib V51    0.08934307188785451
#>     Attrib V52    0.01193134014394417
#>     Attrib V53    0.05310436518786546
#>     Attrib V54    0.10983737218074642
#>     Attrib V55    0.018992822172762654
#>     Attrib V56    0.020021455889234194
#>     Attrib V57    0.1053873164986041
#>     Attrib V58    0.0753267269059574
#>     Attrib V59    0.24685454267524257
#>     Attrib V6    0.03157127921269462
#>     Attrib V60    0.19510725397879958
#>     Attrib V7    0.013432924384387673
#>     Attrib V8    0.025142838391510162
#>     Attrib V9    0.08397595680911249
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.3824942529199483
#>     Attrib V1    0.5822245499798571
#>     Attrib V10    -0.1807266681346877
#>     Attrib V11    0.25035533818820976
#>     Attrib V12    -0.09305507652793539
#>     Attrib V13    -0.43205113273641044
#>     Attrib V14    -0.07862991280599776
#>     Attrib V15    0.14002835864988716
#>     Attrib V16    -0.12000587631299005
#>     Attrib V17    0.038806104821816845
#>     Attrib V18    -0.0970394109483711
#>     Attrib V19    0.009469391884485983
#>     Attrib V2    -0.22532573058898572
#>     Attrib V20    0.4735617711697478
#>     Attrib V21    0.4142556417237296
#>     Attrib V22    0.17562448400582906
#>     Attrib V23    0.3419257490125049
#>     Attrib V24    0.04185519061337296
#>     Attrib V25    -0.33781658267724524
#>     Attrib V26    -0.5490443995592602
#>     Attrib V27    -0.77637026506387
#>     Attrib V28    -0.7263656449854113
#>     Attrib V29    -0.2018465687278101
#>     Attrib V3    -0.09097536456636286
#>     Attrib V30    0.27766199990114404
#>     Attrib V31    -0.9212094855437625
#>     Attrib V32    -0.11158006096383606
#>     Attrib V33    0.9200668703059555
#>     Attrib V34    0.26147232322223524
#>     Attrib V35    -0.09990752806793289
#>     Attrib V36    -0.5846203003605497
#>     Attrib V37    -0.6741040624948342
#>     Attrib V38    -0.13963100537373202
#>     Attrib V39    -0.05812179593191462
#>     Attrib V4    0.5155964465216459
#>     Attrib V40    -0.33783152980425935
#>     Attrib V41    0.014939421568842877
#>     Attrib V42    0.15411194582824914
#>     Attrib V43    0.07869483597468717
#>     Attrib V44    -0.207243125971778
#>     Attrib V45    -0.301249820572521
#>     Attrib V46    -0.1286894001646171
#>     Attrib V47    -0.04434120300809703
#>     Attrib V48    0.41601717005786526
#>     Attrib V49    0.21173734177644568
#>     Attrib V5    0.05508533882005631
#>     Attrib V50    -0.4231982402497234
#>     Attrib V51    0.15734032857409957
#>     Attrib V52    -0.16600629183827634
#>     Attrib V53    -0.043402343000351624
#>     Attrib V54    0.5747672588252506
#>     Attrib V55    -0.04167933365767646
#>     Attrib V56    0.15511914566877255
#>     Attrib V57    0.20166654517116012
#>     Attrib V58    0.6561606676604849
#>     Attrib V59    1.2028556566993123
#>     Attrib V6    -0.07834577647329329
#>     Attrib V60    0.356689688736622
#>     Attrib V7    -0.24181976742533928
#>     Attrib V8    0.392820362621012
#>     Attrib V9    0.2818657297373434
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.6294338277766272
#>     Attrib V1    -0.7848384645608362
#>     Attrib V10    0.23744507836968984
#>     Attrib V11    -0.4981389738276986
#>     Attrib V12    0.0534117590593402
#>     Attrib V13    0.5390661873686483
#>     Attrib V14    0.10957229190296434
#>     Attrib V15    0.022198876650124013
#>     Attrib V16    0.24170744465428928
#>     Attrib V17    -0.06654523509721623
#>     Attrib V18    0.08233949958139648
#>     Attrib V19    -0.10836940347268804
#>     Attrib V2    0.43339692347462033
#>     Attrib V20    -0.7330721930916105
#>     Attrib V21    -0.584565157475998
#>     Attrib V22    -0.2323793837671608
#>     Attrib V23    -0.5616787102365745
#>     Attrib V24    -0.16276467109176546
#>     Attrib V25    0.4219954594158537
#>     Attrib V26    0.8069384119518757
#>     Attrib V27    0.9628398509910853
#>     Attrib V28    0.8645273983841468
#>     Attrib V29    0.11432616435463357
#>     Attrib V3    0.08042664208103194
#>     Attrib V30    -0.45449400667779594
#>     Attrib V31    1.3244573890436098
#>     Attrib V32    0.08086801832265791
#>     Attrib V33    -1.3306964873463423
#>     Attrib V34    -0.3583441587224987
#>     Attrib V35    0.17950922321788207
#>     Attrib V36    0.832934240408292
#>     Attrib V37    1.1032065654498289
#>     Attrib V38    0.10082548890347284
#>     Attrib V39    0.008808331197969692
#>     Attrib V4    -0.7307079991994162
#>     Attrib V40    0.4341752939384426
#>     Attrib V41    -0.19162678389788382
#>     Attrib V42    -0.43777278684633875
#>     Attrib V43    -0.2763494300854629
#>     Attrib V44    0.35901732777340567
#>     Attrib V45    0.4987228248814222
#>     Attrib V46    0.30713452413548503
#>     Attrib V47    0.009281584438220887
#>     Attrib V48    -0.6388489674367718
#>     Attrib V49    -0.41074412267612276
#>     Attrib V5    -0.013968340700536465
#>     Attrib V50    0.6511844672821149
#>     Attrib V51    -0.2700654987474692
#>     Attrib V52    0.12681838902769038
#>     Attrib V53    -0.02361988302461803
#>     Attrib V54    -0.5937821682202866
#>     Attrib V55    0.2342600399320743
#>     Attrib V56    -0.16368402548852518
#>     Attrib V57    -0.2713056493043583
#>     Attrib V58    -0.9230038303892449
#>     Attrib V59    -1.6631327279806887
#>     Attrib V6    0.12407202158066918
#>     Attrib V60    -0.2725606833738796
#>     Attrib V7    0.39383543014866124
#>     Attrib V8    -0.7168325702727375
#>     Attrib V9    -0.46488566352582394
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.15666074347856776
#>     Attrib V1    0.08443814234549202
#>     Attrib V10    0.032471297331593214
#>     Attrib V11    0.02118632769174852
#>     Attrib V12    0.006907449808340404
#>     Attrib V13    0.014518710152575037
#>     Attrib V14    0.0021494660478192746
#>     Attrib V15    0.0031536276848935074
#>     Attrib V16    0.05035654306302326
#>     Attrib V17    0.05382250404872529
#>     Attrib V18    0.03237083644079868
#>     Attrib V19    -0.0071281710672794745
#>     Attrib V2    0.03315417017772371
#>     Attrib V20    -0.02880300812117732
#>     Attrib V21    -0.04835140196208449
#>     Attrib V22    -0.06597351884374734
#>     Attrib V23    -0.0629922321226375
#>     Attrib V24    -0.0066102528203957865
#>     Attrib V25    -0.02647510936974762
#>     Attrib V26    -0.0860152485738424
#>     Attrib V27    -0.08564977633143224
#>     Attrib V28    -0.04663755849201933
#>     Attrib V29    -0.03874218310016275
#>     Attrib V3    0.11653334085087662
#>     Attrib V30    -0.03527625932769377
#>     Attrib V31    -0.11197629679229862
#>     Attrib V32    0.005079884097922938
#>     Attrib V33    0.06771585269361198
#>     Attrib V34    0.10759222139049564
#>     Attrib V35    0.05686261074062729
#>     Attrib V36    0.031896188153856156
#>     Attrib V37    0.06688049880109569
#>     Attrib V38    0.05347755237018065
#>     Attrib V39    0.05657156009803105
#>     Attrib V4    0.15419192797540773
#>     Attrib V40    0.016412239713331823
#>     Attrib V41    0.06388430106603923
#>     Attrib V42    0.06884139052534206
#>     Attrib V43    0.005255805753955306
#>     Attrib V44    0.006710627807830787
#>     Attrib V45    0.04461905638437117
#>     Attrib V46    0.07951978146750459
#>     Attrib V47    0.07551526494760404
#>     Attrib V48    0.061265361451351905
#>     Attrib V49    0.02002399313522199
#>     Attrib V5    0.10696315244667044
#>     Attrib V50    0.05318020445999801
#>     Attrib V51    0.13394473142848942
#>     Attrib V52    0.0823727661754594
#>     Attrib V53    0.09647526071043319
#>     Attrib V54    0.06208763361338462
#>     Attrib V55    0.07287556548827334
#>     Attrib V56    0.0602413536397651
#>     Attrib V57    0.1115807761809246
#>     Attrib V58    0.1064769467229428
#>     Attrib V59    0.08938208761745327
#>     Attrib V6    0.03696175106256937
#>     Attrib V60    0.1374429610683291
#>     Attrib V7    -0.0030998658187561083
#>     Attrib V8    0.02086843677324399
#>     Attrib V9    0.09666596424155648
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.02387008159777568
#>     Attrib V1    0.20386887323380248
#>     Attrib V10    0.04634550949863909
#>     Attrib V11    0.0974666341565231
#>     Attrib V12    -0.014001566475697906
#>     Attrib V13    -0.0997834017790768
#>     Attrib V14    -0.0018089414489482188
#>     Attrib V15    0.09265213924164663
#>     Attrib V16    -0.014819273517009079
#>     Attrib V17    0.006582146376434813
#>     Attrib V18    -0.03037692696644141
#>     Attrib V19    -0.002550910540785607
#>     Attrib V2    0.08861924540213229
#>     Attrib V20    0.08995510488052229
#>     Attrib V21    0.05188025020937891
#>     Attrib V22    0.029593110070912747
#>     Attrib V23    -0.012309752512350497
#>     Attrib V24    -0.014667959749925786
#>     Attrib V25    -0.1433434727861677
#>     Attrib V26    -0.15311209162229658
#>     Attrib V27    -0.12805479432549627
#>     Attrib V28    -0.1257071713556987
#>     Attrib V29    -0.06513849308202946
#>     Attrib V3    0.06119978960823902
#>     Attrib V30    0.05599788229179666
#>     Attrib V31    -0.23461347678807476
#>     Attrib V32    -0.10794306149986037
#>     Attrib V33    0.2239248246035454
#>     Attrib V34    0.07459388122688533
#>     Attrib V35    0.06574268376706753
#>     Attrib V36    -0.09076064208261266
#>     Attrib V37    -0.09869108152548511
#>     Attrib V38    0.08493778183571385
#>     Attrib V39    0.05165036618906261
#>     Attrib V4    0.24208464361580054
#>     Attrib V40    -0.09705423191926422
#>     Attrib V41    0.015023914936496557
#>     Attrib V42    -0.04250265628101479
#>     Attrib V43    0.021062321219641602
#>     Attrib V44    0.03364139441614103
#>     Attrib V45    0.042949980519987795
#>     Attrib V46    0.005945496078694373
#>     Attrib V47    -0.009989184331548509
#>     Attrib V48    0.149057179955088
#>     Attrib V49    0.017254114630608063
#>     Attrib V5    0.11318763259194854
#>     Attrib V50    -0.0674617232500258
#>     Attrib V51    0.128827359360794
#>     Attrib V52    0.009216399344595519
#>     Attrib V53    0.036642694993636836
#>     Attrib V54    0.17484260777500032
#>     Attrib V55    0.06503648191146415
#>     Attrib V56    0.030509147684060274
#>     Attrib V57    0.1483992945216621
#>     Attrib V58    0.08700422754967514
#>     Attrib V59    0.25323374470595184
#>     Attrib V6    0.009698799697022203
#>     Attrib V60    0.185939287778037
#>     Attrib V7    -0.08814615852846157
#>     Attrib V8    0.08791990786547553
#>     Attrib V9    0.11249766953388896
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.28690862863476085
#>     Attrib V1    -0.17527477570502406
#>     Attrib V10    -0.04323843122611788
#>     Attrib V11    -0.28990980318435966
#>     Attrib V12    -0.25935241326641423
#>     Attrib V13    0.05383963335466436
#>     Attrib V14    0.14840005079103222
#>     Attrib V15    0.1074492454108658
#>     Attrib V16    0.11119997490513706
#>     Attrib V17    -0.057229957279359596
#>     Attrib V18    0.03199740212890275
#>     Attrib V19    -0.07379533251944552
#>     Attrib V2    0.16313095082496185
#>     Attrib V20    -0.17538881608627954
#>     Attrib V21    -0.06656677605291912
#>     Attrib V22    -0.018404337335930186
#>     Attrib V23    -0.10189659337885464
#>     Attrib V24    -0.04983611045006047
#>     Attrib V25    0.12347770451675215
#>     Attrib V26    0.0785315948348147
#>     Attrib V27    0.05179087649892742
#>     Attrib V28    -0.06754834124822895
#>     Attrib V29    -0.21334044953908707
#>     Attrib V3    0.14219972557069993
#>     Attrib V30    -0.2259419084402846
#>     Attrib V31    0.4905140974264042
#>     Attrib V32    0.14990062310312852
#>     Attrib V33    -0.19732904641910512
#>     Attrib V34    0.007393650715714648
#>     Attrib V35    0.026700610425647548
#>     Attrib V36    0.288825577270886
#>     Attrib V37    0.11351989148914421
#>     Attrib V38    -0.2042968112600067
#>     Attrib V39    -0.12501956095932135
#>     Attrib V4    -0.2667028191979942
#>     Attrib V40    0.09115984965656829
#>     Attrib V41    -0.11123393076556896
#>     Attrib V42    0.033459286618735665
#>     Attrib V43    -0.05419619393913835
#>     Attrib V44    -0.052176429187005546
#>     Attrib V45    -0.11821167221359825
#>     Attrib V46    -0.09023779336329397
#>     Attrib V47    -0.018487225024991512
#>     Attrib V48    -0.29578169509408647
#>     Attrib V49    -0.15904949303427504
#>     Attrib V5    0.045307899004868965
#>     Attrib V50    0.2509143154037752
#>     Attrib V51    -0.17940560423890012
#>     Attrib V52    -0.047247802567172724
#>     Attrib V53    -0.08386058693443364
#>     Attrib V54    -0.14745708192126805
#>     Attrib V55    0.17975790175861645
#>     Attrib V56    0.11558507164236351
#>     Attrib V57    -0.0011886228521544133
#>     Attrib V58    -0.14763115185363324
#>     Attrib V59    -0.41187011834097015
#>     Attrib V6    -0.05047338594117684
#>     Attrib V60    0.008288767109259734
#>     Attrib V7    0.27458728078232053
#>     Attrib V8    -0.04705545501347963
#>     Attrib V9    -0.15082044817236495
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.4596267576025012
#>     Attrib V1    0.29298113229562567
#>     Attrib V10    0.4025354753374948
#>     Attrib V11    0.7358394967963823
#>     Attrib V12    0.709265444281441
#>     Attrib V13    0.06889312062156035
#>     Attrib V14    -0.22551097442375584
#>     Attrib V15    -0.3851649072765578
#>     Attrib V16    -0.47016805108675636
#>     Attrib V17    -0.3456397511231442
#>     Attrib V18    -0.2656899905684016
#>     Attrib V19    -0.39379509046141936
#>     Attrib V2    -0.12967362189115478
#>     Attrib V20    -0.22204898268468054
#>     Attrib V21    -0.1917245496470692
#>     Attrib V22    -0.17259188978213597
#>     Attrib V23    0.012412394447039572
#>     Attrib V24    0.06018590354284257
#>     Attrib V25    0.11269648419980237
#>     Attrib V26    0.3808254094625071
#>     Attrib V27    0.3691370614258788
#>     Attrib V28    0.4646912890550627
#>     Attrib V29    0.39983382663753275
#>     Attrib V3    -0.2228121421505237
#>     Attrib V30    0.3410998720809872
#>     Attrib V31    -0.6404896715651107
#>     Attrib V32    -0.24187477058122556
#>     Attrib V33    0.28448478378060027
#>     Attrib V34    0.029508490609742966
#>     Attrib V35    -0.04826082320764667
#>     Attrib V36    -0.3172147198982421
#>     Attrib V37    -0.20549328723789173
#>     Attrib V38    0.041916966880526825
#>     Attrib V39    0.16805208332331625
#>     Attrib V4    0.41088160499608684
#>     Attrib V40    -0.11797910332075984
#>     Attrib V41    0.1118235094925293
#>     Attrib V42    -0.14496353331646855
#>     Attrib V43    -0.1855406326739105
#>     Attrib V44    0.11038301157804982
#>     Attrib V45    0.295300851028308
#>     Attrib V46    0.29595111801350804
#>     Attrib V47    0.15896011259665196
#>     Attrib V48    0.6025274106045058
#>     Attrib V49    0.49277021112879305
#>     Attrib V5    -0.016899456794993772
#>     Attrib V50    -0.3613067939559417
#>     Attrib V51    0.4742445561939931
#>     Attrib V52    0.2949622319106587
#>     Attrib V53    0.21148011501435013
#>     Attrib V54    0.10168643621364117
#>     Attrib V55    -0.3593143800648422
#>     Attrib V56    -0.7067720066182431
#>     Attrib V57    -0.07277485556107662
#>     Attrib V58    0.2389704687579963
#>     Attrib V59    0.4041377521932641
#>     Attrib V6    0.304520290568601
#>     Attrib V60    0.0124573296821593
#>     Attrib V7    -0.2041187628636314
#>     Attrib V8    0.07868579689831504
#>     Attrib V9    0.4186194796723918
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.39019044796497876
#>     Attrib V1    0.4096083660877547
#>     Attrib V10    0.44295634375248466
#>     Attrib V11    0.7746645043501411
#>     Attrib V12    0.7212850103906364
#>     Attrib V13    0.053828682477488315
#>     Attrib V14    -0.26213793097376087
#>     Attrib V15    -0.4781229622850268
#>     Attrib V16    -0.4983644038185001
#>     Attrib V17    -0.29358671888073
#>     Attrib V18    -0.16895055838130926
#>     Attrib V19    -0.29562731410613213
#>     Attrib V2    -0.13556896279600972
#>     Attrib V20    -0.046953249341653965
#>     Attrib V21    -0.03629665453087088
#>     Attrib V22    -0.06150921822828089
#>     Attrib V23    0.21915036397302995
#>     Attrib V24    0.14982045761532486
#>     Attrib V25    0.1403950531298807
#>     Attrib V26    0.42501071718023137
#>     Attrib V27    0.4045834020245867
#>     Attrib V28    0.4863196377277841
#>     Attrib V29    0.5671825444209115
#>     Attrib V3    -0.19886330193356022
#>     Attrib V30    0.49260996797997597
#>     Attrib V31    -0.7077730952702656
#>     Attrib V32    -0.293602876271975
#>     Attrib V33    0.29097773108198066
#>     Attrib V34    0.03897795870026997
#>     Attrib V35    -0.04347559873922446
#>     Attrib V36    -0.1993046194479649
#>     Attrib V37    -0.06299671332412113
#>     Attrib V38    0.19298768181692288
#>     Attrib V39    0.2211118482842598
#>     Attrib V4    0.4295648008937654
#>     Attrib V40    -0.11430822399519443
#>     Attrib V41    0.2028335977292498
#>     Attrib V42    -0.16575483958942824
#>     Attrib V43    -0.10228481174412266
#>     Attrib V44    0.20661098912777287
#>     Attrib V45    0.22235740781760852
#>     Attrib V46    0.22319211551317394
#>     Attrib V47    0.17625812020073964
#>     Attrib V48    0.6302689002134716
#>     Attrib V49    0.4359572021229834
#>     Attrib V5    0.03244519404877336
#>     Attrib V50    -0.3688149721248963
#>     Attrib V51    0.6090703787916404
#>     Attrib V52    0.28018493433764774
#>     Attrib V53    0.16183217972763486
#>     Attrib V54    0.08936776265216184
#>     Attrib V55    -0.42817765039350375
#>     Attrib V56    -0.6511803052301105
#>     Attrib V57    -0.1762965044548226
#>     Attrib V58    0.0724758049572376
#>     Attrib V59    0.4391285792929935
#>     Attrib V6    0.25765897766980106
#>     Attrib V60    -0.01360150740605768
#>     Attrib V7    -0.2815656620700824
#>     Attrib V8    0.05643737367359696
#>     Attrib V9    0.4803967790737606
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.3859359336920396
#>     Attrib V1    -0.5858370491383454
#>     Attrib V10    0.16251667369653616
#>     Attrib V11    -0.4724128194668483
#>     Attrib V12    -0.06091745121162065
#>     Attrib V13    0.41021535793143715
#>     Attrib V14    0.14180598270673764
#>     Attrib V15    0.06049274337814944
#>     Attrib V16    0.2176271594827246
#>     Attrib V17    -0.07553020808244709
#>     Attrib V18    0.04134246941015538
#>     Attrib V19    -0.15091576740411644
#>     Attrib V2    0.335209138354503
#>     Attrib V20    -0.6027935055838102
#>     Attrib V21    -0.39720662236410037
#>     Attrib V22    -0.28406252123115355
#>     Attrib V23    -0.5711320550588364
#>     Attrib V24    -0.19701927773143907
#>     Attrib V25    0.3177589767994866
#>     Attrib V26    0.6179552569105053
#>     Attrib V27    0.7748311531492802
#>     Attrib V28    0.5993991435243373
#>     Attrib V29    -0.022659497997944405
#>     Attrib V3    0.023011939569307437
#>     Attrib V30    -0.40317671090278145
#>     Attrib V31    1.1549798075620887
#>     Attrib V32    0.03456619413869278
#>     Attrib V33    -1.0715788217452586
#>     Attrib V34    -0.27454832054167283
#>     Attrib V35    0.1863679923302192
#>     Attrib V36    0.6918704852337301
#>     Attrib V37    0.8845085308849792
#>     Attrib V38    5.826097719455987E-4
#>     Attrib V39    -0.034157822721316206
#>     Attrib V4    -0.6042044643421912
#>     Attrib V40    0.4248561744447824
#>     Attrib V41    -0.1029484631712188
#>     Attrib V42    -0.33468593180011236
#>     Attrib V43    -0.19600171882788914
#>     Attrib V44    0.23585346339406377
#>     Attrib V45    0.2928955366157991
#>     Attrib V46    0.17588671963769467
#>     Attrib V47    -0.03900606328739722
#>     Attrib V48    -0.5063208707082175
#>     Attrib V49    -0.353735132350588
#>     Attrib V5    -0.001806932490251461
#>     Attrib V50    0.5959637857295764
#>     Attrib V51    -0.3105253908073221
#>     Attrib V52    0.08105566356476347
#>     Attrib V53    -0.05411481717187323
#>     Attrib V54    -0.426972690553845
#>     Attrib V55    0.1722111602541924
#>     Attrib V56    -0.14255395166469853
#>     Attrib V57    -0.07030538873738305
#>     Attrib V58    -0.7449728700477225
#>     Attrib V59    -1.276182973465639
#>     Attrib V6    0.11978457568909685
#>     Attrib V60    -0.10622247689956425
#>     Attrib V7    0.46120512682249265
#>     Attrib V8    -0.6103242081078699
#>     Attrib V9    -0.38711991804613727
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.30138975000444546
#>     Attrib V1    0.6827783297162519
#>     Attrib V10    -0.34216913397401294
#>     Attrib V11    -0.06492914310297812
#>     Attrib V12    -0.41555322789060667
#>     Attrib V13    -0.5962520445180896
#>     Attrib V14    0.08477588133794146
#>     Attrib V15    0.4198332746457702
#>     Attrib V16    0.17167332709046465
#>     Attrib V17    0.12670199965361598
#>     Attrib V18    -0.15230997346312908
#>     Attrib V19    -0.11035337530111476
#>     Attrib V2    -0.08293926140946108
#>     Attrib V20    0.5676688647311088
#>     Attrib V21    0.5691309139849338
#>     Attrib V22    0.2281017030267714
#>     Attrib V23    0.12688650623097353
#>     Attrib V24    -0.14160516427929853
#>     Attrib V25    -0.7224087980686372
#>     Attrib V26    -0.9238141089824271
#>     Attrib V27    -0.9037570816487591
#>     Attrib V28    -0.8677615994854864
#>     Attrib V29    -0.18122317262760673
#>     Attrib V3    0.02814752592411434
#>     Attrib V30    0.13033511580055096
#>     Attrib V31    -1.170964851946845
#>     Attrib V32    -0.5320026438691426
#>     Attrib V33    0.455319546264028
#>     Attrib V34    -0.059142884337583475
#>     Attrib V35    -0.2750093743093038
#>     Attrib V36    -0.5695858051381147
#>     Attrib V37    -0.5128543177090861
#>     Attrib V38    -0.041994946310816156
#>     Attrib V39    -0.159692827312885
#>     Attrib V4    0.5943534743652262
#>     Attrib V40    -0.4338310352803092
#>     Attrib V41    -0.22114222239970033
#>     Attrib V42    0.08074676296221873
#>     Attrib V43    0.24669112549363276
#>     Attrib V44    -0.11577776802650655
#>     Attrib V45    -0.21324819184624022
#>     Attrib V46    -0.060295798960658745
#>     Attrib V47    -0.05523739011123731
#>     Attrib V48    0.30798679713713184
#>     Attrib V49    0.019998537486574323
#>     Attrib V5    0.17853729965092718
#>     Attrib V50    -0.328069901170033
#>     Attrib V51    0.10809307257953589
#>     Attrib V52    -0.22404700717432746
#>     Attrib V53    0.1282281521512456
#>     Attrib V54    0.9257640571190185
#>     Attrib V55    -0.033140008844797494
#>     Attrib V56    0.33882435837408353
#>     Attrib V57    0.45066053025098735
#>     Attrib V58    0.7107909916574795
#>     Attrib V59    1.3285004946589207
#>     Attrib V6    -0.09689754420783962
#>     Attrib V60    0.553235649997347
#>     Attrib V7    -0.10031515604591948
#>     Attrib V8    0.26849708233265274
#>     Attrib V9    0.10725408346934186
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.24999467008769297
#>     Attrib V1    0.5480911842092684
#>     Attrib V10    -0.3009113730785782
#>     Attrib V11    0.038158053870255844
#>     Attrib V12    -0.20970293714034713
#>     Attrib V13    -0.41046969563462704
#>     Attrib V14    0.04014238120997432
#>     Attrib V15    0.26714640692084335
#>     Attrib V16    0.002213911174343846
#>     Attrib V17    0.13558372094903393
#>     Attrib V18    -0.07831107736582753
#>     Attrib V19    -0.02186654306218776
#>     Attrib V2    -0.14397589173885583
#>     Attrib V20    0.43989169186049043
#>     Attrib V21    0.4132855148184413
#>     Attrib V22    0.19446274512214196
#>     Attrib V23    0.21869102551308164
#>     Attrib V24    -0.10035245637999457
#>     Attrib V25    -0.503648374529775
#>     Attrib V26    -0.6629964739967283
#>     Attrib V27    -0.7552729789119654
#>     Attrib V28    -0.6920622590546482
#>     Attrib V29    -0.1732044435823559
#>     Attrib V3    0.06248111852878161
#>     Attrib V30    0.1434209108846004
#>     Attrib V31    -0.9726150646414061
#>     Attrib V32    -0.3326192498984173
#>     Attrib V33    0.5340942154294167
#>     Attrib V34    0.05598088823543205
#>     Attrib V35    -0.12033918521233897
#>     Attrib V36    -0.43572035510040313
#>     Attrib V37    -0.42934083154035824
#>     Attrib V38    -0.02901631033533746
#>     Attrib V39    -0.09583021428451437
#>     Attrib V4    0.5610915720189878
#>     Attrib V40    -0.39315769817632334
#>     Attrib V41    -0.11507020386638446
#>     Attrib V42    0.043940667981148276
#>     Attrib V43    0.15122802890649076
#>     Attrib V44    -0.13293027171208904
#>     Attrib V45    -0.14550724370144524
#>     Attrib V46    -0.09417634946278115
#>     Attrib V47    0.01408887930974996
#>     Attrib V48    0.2109448471605869
#>     Attrib V49    0.04197027161663781
#>     Attrib V5    0.12792530402871602
#>     Attrib V50    -0.3403545662344151
#>     Attrib V51    0.12470303655705528
#>     Attrib V52    -0.11002047111814849
#>     Attrib V53    0.11088291688638177
#>     Attrib V54    0.659039974746196
#>     Attrib V55    -0.009674906247051111
#>     Attrib V56    0.2653974002621605
#>     Attrib V57    0.2701021137326676
#>     Attrib V58    0.5326290394829171
#>     Attrib V59    1.1367732096665293
#>     Attrib V6    -0.11842159111245436
#>     Attrib V60    0.4035322610266515
#>     Attrib V7    -0.13991524387024934
#>     Attrib V8    0.2734366669166917
#>     Attrib V9    0.136939970977927
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.307839780233675
#>     Attrib V1    -0.30777294515804826
#>     Attrib V10    -0.008879742891057887
#>     Attrib V11    -0.39088558992329236
#>     Attrib V12    -0.26019479639149
#>     Attrib V13    0.1422081223303687
#>     Attrib V14    0.2206736845395642
#>     Attrib V15    0.24307511421800757
#>     Attrib V16    0.20299255899171983
#>     Attrib V17    0.027730231242624675
#>     Attrib V18    -0.023738883290999525
#>     Attrib V19    -0.046958768321117665
#>     Attrib V2    0.21296733534687415
#>     Attrib V20    -0.3218724764458177
#>     Attrib V21    -0.20027317040444542
#>     Attrib V22    -0.15106623161353774
#>     Attrib V23    -0.2970623089086473
#>     Attrib V24    -0.1602845864432214
#>     Attrib V25    0.1187983991706965
#>     Attrib V26    0.1655323666846386
#>     Attrib V27    0.12999548376674652
#>     Attrib V28    -0.0032505745343509914
#>     Attrib V29    -0.30985613351639774
#>     Attrib V3    0.10421588797028246
#>     Attrib V30    -0.30012526960845387
#>     Attrib V31    0.8050332540849554
#>     Attrib V32    0.27002262828752965
#>     Attrib V33    -0.4206100218158757
#>     Attrib V34    -0.03802443975583436
#>     Attrib V35    0.08780661949206608
#>     Attrib V36    0.37661863871869766
#>     Attrib V37    0.22391876798917018
#>     Attrib V38    -0.23239752231530966
#>     Attrib V39    -0.2149013698572298
#>     Attrib V4    -0.34931201481828267
#>     Attrib V40    0.22424027381958045
#>     Attrib V41    -0.07019932408528284
#>     Attrib V42    -0.03191460512846088
#>     Attrib V43    -0.05177302548147104
#>     Attrib V44    -0.07606893262867491
#>     Attrib V45    -0.04001746759740883
#>     Attrib V46    -0.030079410730870167
#>     Attrib V47    -0.045103141548287165
#>     Attrib V48    -0.41680676384559756
#>     Attrib V49    -0.2929203984220529
#>     Attrib V5    0.028265770047460205
#>     Attrib V50    0.4810822216303015
#>     Attrib V51    -0.30525482021439687
#>     Attrib V52    0.04759873666555938
#>     Attrib V53    -0.12372538855719017
#>     Attrib V54    -0.16319189094054554
#>     Attrib V55    0.2783007182700161
#>     Attrib V56    0.12226519195354651
#>     Attrib V57    0.10056552693552236
#>     Attrib V58    -0.2532594476859339
#>     Attrib V59    -0.7007118936934852
#>     Attrib V6    0.058111105882636745
#>     Attrib V60    -0.07908149151992161
#>     Attrib V7    0.3590008667747343
#>     Attrib V8    -0.16450165861526322
#>     Attrib V9    -0.16259041421816783
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.339543313329637
#>     Attrib V1    0.23554163605226064
#>     Attrib V10    0.7302947229999602
#>     Attrib V11    1.3138127967316164
#>     Attrib V12    1.4374211441289393
#>     Attrib V13    0.45696575196340766
#>     Attrib V14    -0.3868788544402846
#>     Attrib V15    -1.1209656625286988
#>     Attrib V16    -0.7342494187034102
#>     Attrib V17    -0.09318424435743668
#>     Attrib V18    0.3045754254192098
#>     Attrib V19    -0.3008002478584798
#>     Attrib V2    0.0038343874041325164
#>     Attrib V20    -0.1744503408462345
#>     Attrib V21    -0.10587095838288485
#>     Attrib V22    0.21878905890781605
#>     Attrib V23    0.8134771347618657
#>     Attrib V24    0.5635664387384338
#>     Attrib V25    0.579203460135119
#>     Attrib V26    1.2516340548388836
#>     Attrib V27    1.1096973179748633
#>     Attrib V28    1.1958732973037514
#>     Attrib V29    1.0473458075384159
#>     Attrib V3    -0.026009149863713908
#>     Attrib V30    0.47073157739826793
#>     Attrib V31    -0.909756258938181
#>     Attrib V32    -0.5379796729633348
#>     Attrib V33    -0.3974311740084937
#>     Attrib V34    -0.44990085010485176
#>     Attrib V35    -0.3432136424447485
#>     Attrib V36    -0.5391067383320807
#>     Attrib V37    -0.19033065646291303
#>     Attrib V38    0.08551573875456489
#>     Attrib V39    0.5605832544606542
#>     Attrib V4    0.681786780702837
#>     Attrib V40    0.12640982210365603
#>     Attrib V41    0.697472650656181
#>     Attrib V42    0.024156146474663565
#>     Attrib V43    0.12607709449916496
#>     Attrib V44    0.8001560878231816
#>     Attrib V45    0.4511921189593244
#>     Attrib V46    0.5239166956667832
#>     Attrib V47    0.5197446636083588
#>     Attrib V48    0.9734026605436175
#>     Attrib V49    0.8619742482632025
#>     Attrib V5    0.024434811914850606
#>     Attrib V50    -0.3430672156339716
#>     Attrib V51    1.2593427393403005
#>     Attrib V52    0.8534165796471128
#>     Attrib V53    1.0744718751933426
#>     Attrib V54    -0.03434630804204245
#>     Attrib V55    -0.8878370277532169
#>     Attrib V56    -1.0220459305823717
#>     Attrib V57    -0.31405757509656956
#>     Attrib V58    -0.05078064357648159
#>     Attrib V59    0.2188240272702982
#>     Attrib V6    0.618570775375125
#>     Attrib V60    -0.44278319090090323
#>     Attrib V7    -0.7816290668809996
#>     Attrib V8    -0.03572556453424371
#>     Attrib V9    0.5701944218713165
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.21108898218938935
#>     Attrib V1    0.056342752507620546
#>     Attrib V10    0.003274843320008091
#>     Attrib V11    -0.04690527569540722
#>     Attrib V12    0.010351464929952179
#>     Attrib V13    -0.0013286613254107358
#>     Attrib V14    0.09708458776611487
#>     Attrib V15    0.019909586037464944
#>     Attrib V16    0.020929983447514146
#>     Attrib V17    0.04098291305216722
#>     Attrib V18    -0.046119802335585096
#>     Attrib V19    0.013146813303864836
#>     Attrib V2    0.13337269299610527
#>     Attrib V20    -0.05337281353480425
#>     Attrib V21    -0.037389088097238024
#>     Attrib V22    -0.05591335684854511
#>     Attrib V23    -0.039663162424624775
#>     Attrib V24    -0.04505168848217779
#>     Attrib V25    -0.01226896874681017
#>     Attrib V26    -0.06649121086325069
#>     Attrib V27    -0.04104209620006884
#>     Attrib V28    -0.025829797620576404
#>     Attrib V29    -0.021248758509313004
#>     Attrib V3    0.08631988293391488
#>     Attrib V30    -0.029818596812982465
#>     Attrib V31    0.018662002523186366
#>     Attrib V32    -0.0017772283561057233
#>     Attrib V33    0.041350369883443344
#>     Attrib V34    0.04174837031262923
#>     Attrib V35    0.13173464750065036
#>     Attrib V36    0.1508491586783448
#>     Attrib V37    0.1498970148613152
#>     Attrib V38    0.017233098400638264
#>     Attrib V39    0.07026491015980067
#>     Attrib V4    0.10613820630763933
#>     Attrib V40    0.10072124751555532
#>     Attrib V41    0.07567473684828331
#>     Attrib V42    0.10568837868715482
#>     Attrib V43    0.07144522156859956
#>     Attrib V44    0.07137174334856589
#>     Attrib V45    0.0316815137410254
#>     Attrib V46    0.04002300987078725
#>     Attrib V47    0.06385923783596084
#>     Attrib V48    0.07541494340407769
#>     Attrib V49    0.020830253735910707
#>     Attrib V5    0.048602193598221544
#>     Attrib V50    0.0847384101892122
#>     Attrib V51    0.029845667597494206
#>     Attrib V52    0.02093579744618292
#>     Attrib V53    0.027843093868277952
#>     Attrib V54    0.007711452106023598
#>     Attrib V55    0.06979726088549644
#>     Attrib V56    0.1119992698585146
#>     Attrib V57    0.10496458954251264
#>     Attrib V58    0.04063559573556698
#>     Attrib V59    0.05152575095577202
#>     Attrib V6    0.06542788777973813
#>     Attrib V60    0.1474287821807456
#>     Attrib V7    0.020008049363608078
#>     Attrib V8    0.08954613019289275
#>     Attrib V9    0.015238276540719894
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.3572276131310714
#>     Attrib V1    0.3852576446654049
#>     Attrib V10    0.8110633625171336
#>     Attrib V11    1.3153639086422606
#>     Attrib V12    1.3612304494787324
#>     Attrib V13    0.4898233663251678
#>     Attrib V14    -0.4131027775523184
#>     Attrib V15    -1.0322433077483602
#>     Attrib V16    -0.7599644041148023
#>     Attrib V17    -0.21802674774189468
#>     Attrib V18    0.26242551086346144
#>     Attrib V19    -0.30795412476265166
#>     Attrib V2    0.0037076230767830844
#>     Attrib V20    -0.17177756866276192
#>     Attrib V21    0.012630287466712055
#>     Attrib V22    0.2469269192493361
#>     Attrib V23    0.7644495639901895
#>     Attrib V24    0.5708739977117061
#>     Attrib V25    0.5291710017203802
#>     Attrib V26    1.2665292316055903
#>     Attrib V27    1.0023205558328525
#>     Attrib V28    1.0663947763513708
#>     Attrib V29    1.0318842853706305
#>     Attrib V3    -0.1169535407926603
#>     Attrib V30    0.5219015274906074
#>     Attrib V31    -0.9549559694222622
#>     Attrib V32    -0.603274541282434
#>     Attrib V33    -0.3583842623499473
#>     Attrib V34    -0.42732812157293454
#>     Attrib V35    -0.34774256333086756
#>     Attrib V36    -0.5101364005921738
#>     Attrib V37    -0.1597215257866255
#>     Attrib V38    0.11370809074316394
#>     Attrib V39    0.56198544029419
#>     Attrib V4    0.6844013952282926
#>     Attrib V40    0.10515981323385311
#>     Attrib V41    0.6352593450587134
#>     Attrib V42    -0.05923983747369066
#>     Attrib V43    0.08320268175259664
#>     Attrib V44    0.7392407109129597
#>     Attrib V45    0.4621328382370588
#>     Attrib V46    0.47206481068091183
#>     Attrib V47    0.48458049112679086
#>     Attrib V48    1.00780684398887
#>     Attrib V49    0.7734871475620317
#>     Attrib V5    0.005684041743428138
#>     Attrib V50    -0.31004180426903366
#>     Attrib V51    1.249327159016166
#>     Attrib V52    0.7373088951989768
#>     Attrib V53    0.9689068165544309
#>     Attrib V54    -0.06534468342691306
#>     Attrib V55    -0.8311514086420155
#>     Attrib V56    -1.0901129010498265
#>     Attrib V57    -0.4272013417422831
#>     Attrib V58    -0.027029062092898237
#>     Attrib V59    0.23299265495165652
#>     Attrib V6    0.6716515432719791
#>     Attrib V60    -0.43712782238704234
#>     Attrib V7    -0.6529215274049397
#>     Attrib V8    0.09303719820541755
#>     Attrib V9    0.6491604302924904
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.5147573487651957
#>     Attrib V1    -0.42311637593163226
#>     Attrib V10    -0.24538343007757288
#>     Attrib V11    -1.0200047575244993
#>     Attrib V12    -0.7319617639620893
#>     Attrib V13    0.09738949959183413
#>     Attrib V14    0.31734522396468484
#>     Attrib V15    0.5677436637630964
#>     Attrib V16    0.5266898982244117
#>     Attrib V17    -0.017264747563479316
#>     Attrib V18    -0.006474178167973436
#>     Attrib V19    0.012814174468748865
#>     Attrib V2    0.2703079215792296
#>     Attrib V20    -0.23304211017933832
#>     Attrib V21    -0.07799699872166793
#>     Attrib V22    -0.22788708524611942
#>     Attrib V23    -0.8627728450176848
#>     Attrib V24    -0.4425638930159436
#>     Attrib V25    -0.0648886457055256
#>     Attrib V26    -0.07768408149856745
#>     Attrib V27    0.14669109663339253
#>     Attrib V28    -0.07112301287423103
#>     Attrib V29    -0.5765262563983002
#>     Attrib V3    0.150276326446572
#>     Attrib V30    -0.5743869138754275
#>     Attrib V31    1.0683656889569118
#>     Attrib V32    0.13272750124340416
#>     Attrib V33    -0.6769768561332158
#>     Attrib V34    0.18847610568267534
#>     Attrib V35    0.5839103203017225
#>     Attrib V36    1.0573060193837032
#>     Attrib V37    0.8038450331356543
#>     Attrib V38    0.10404045070856242
#>     Attrib V39    -0.07363989229778321
#>     Attrib V4    -0.5866432709378494
#>     Attrib V40    0.38584363725961257
#>     Attrib V41    -0.3679716046656451
#>     Attrib V42    -0.3431461912909473
#>     Attrib V43    -0.19251415021015264
#>     Attrib V44    -0.07808613815941988
#>     Attrib V45    0.19492508182930238
#>     Attrib V46    -0.010047663175461463
#>     Attrib V47    -0.2778957909663778
#>     Attrib V48    -0.8202652859231886
#>     Attrib V49    -0.5801083986112218
#>     Attrib V5    -0.016285593817351382
#>     Attrib V50    0.7483768723262383
#>     Attrib V51    -0.8223234384985004
#>     Attrib V52    -0.28195134117203086
#>     Attrib V53    -0.3836407277843403
#>     Attrib V54    0.012249652828446393
#>     Attrib V55    0.5377815765629455
#>     Attrib V56    0.2582591761925961
#>     Attrib V57    0.25262567291249266
#>     Attrib V58    -0.6509447080175655
#>     Attrib V59    -0.9430700794474968
#>     Attrib V6    -0.19449860187769846
#>     Attrib V60    0.38617080296729084
#>     Attrib V7    0.7723420546415088
#>     Attrib V8    -0.4312162432153512
#>     Attrib V9    -0.503621941713795
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.2510435963347524
#>     Attrib V1    0.32584661403836324
#>     Attrib V10    -0.06261791946336853
#>     Attrib V11    0.3147662880817771
#>     Attrib V12    0.08464638941964257
#>     Attrib V13    -0.21600774603816483
#>     Attrib V14    -0.03748227750938255
#>     Attrib V15    -0.012990865432046562
#>     Attrib V16    -0.15426313123171123
#>     Attrib V17    -0.03698187886202305
#>     Attrib V18    -0.06851786147985307
#>     Attrib V19    -0.04523732489469294
#>     Attrib V2    -0.16769381375597223
#>     Attrib V20    0.31591985469354583
#>     Attrib V21    0.2761592842714302
#>     Attrib V22    0.14167125460106422
#>     Attrib V23    0.19067187487412188
#>     Attrib V24    0.11888937156204815
#>     Attrib V25    -0.1259963806872433
#>     Attrib V26    -0.31629019331732267
#>     Attrib V27    -0.39923973322538214
#>     Attrib V28    -0.32761953963256796
#>     Attrib V29    0.06401485128754199
#>     Attrib V3    -0.039644691910296175
#>     Attrib V30    0.20346664289304195
#>     Attrib V31    -0.6741568747856262
#>     Attrib V32    -0.11458833648609706
#>     Attrib V33    0.5389091745961265
#>     Attrib V34    0.14583979829053553
#>     Attrib V35    -0.09855868723028458
#>     Attrib V36    -0.40855971314227685
#>     Attrib V37    -0.40597519224434686
#>     Attrib V38    -0.020552177859573688
#>     Attrib V39    0.014118130599527974
#>     Attrib V4    0.3587699196488733
#>     Attrib V40    -0.2599983339157315
#>     Attrib V41    0.004673263998022281
#>     Attrib V42    0.006580550964198047
#>     Attrib V43    0.0550059883778904
#>     Attrib V44    -0.13131084269770213
#>     Attrib V45    -0.0356558939284137
#>     Attrib V46    -0.028000932298424066
#>     Attrib V47    0.02976442298039174
#>     Attrib V48    0.2738789187147159
#>     Attrib V49    0.10525872386990313
#>     Attrib V5    0.03869379867053023
#>     Attrib V50    -0.31569142522785326
#>     Attrib V51    0.23937959370760603
#>     Attrib V52    0.029082261964725648
#>     Attrib V53    0.013452240011179244
#>     Attrib V54    0.32642334723218147
#>     Attrib V55    -0.012965796232756973
#>     Attrib V56    -0.013861818420202517
#>     Attrib V57    0.06214035535086195
#>     Attrib V58    0.35904510745620116
#>     Attrib V59    0.7079978202832942
#>     Attrib V6    -0.022485757372904536
#>     Attrib V60    0.17115285669238942
#>     Attrib V7    -0.22281500379536473
#>     Attrib V8    0.2288749259676567
#>     Attrib V9    0.23772487155053307
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.16391803855460582
#>     Attrib V1    0.07698684660410036
#>     Attrib V10    0.07322220834962956
#>     Attrib V11    0.014867956322341308
#>     Attrib V12    0.03818170754369799
#>     Attrib V13    0.06226788156921497
#>     Attrib V14    0.05862437243704461
#>     Attrib V15    0.05364671171567486
#>     Attrib V16    0.03948267044847536
#>     Attrib V17    0.07000450334044968
#>     Attrib V18    0.002410237720029972
#>     Attrib V19    -0.045271329988244756
#>     Attrib V2    0.13398882183410396
#>     Attrib V20    -0.073780043614833
#>     Attrib V21    -0.0145079903053794
#>     Attrib V22    -0.03841207861442834
#>     Attrib V23    -0.031536275110808136
#>     Attrib V24    -0.05879921855913108
#>     Attrib V25    0.008344388708305794
#>     Attrib V26    -0.015260010478068225
#>     Attrib V27    -0.0798818163752408
#>     Attrib V28    -0.05220824186257607
#>     Attrib V29    -0.08746473587269714
#>     Attrib V3    0.09226641175037105
#>     Attrib V30    -4.448103052066329E-5
#>     Attrib V31    0.07925417650297105
#>     Attrib V32    -0.00939307877564309
#>     Attrib V33    -0.018569867408383477
#>     Attrib V34    0.029855629730059303
#>     Attrib V35    0.10181151572733897
#>     Attrib V36    0.08973063015867969
#>     Attrib V37    0.13723926601945516
#>     Attrib V38    0.011008439949798948
#>     Attrib V39    0.11267716814459838
#>     Attrib V4    0.11173325111672845
#>     Attrib V40    0.12637334581152607
#>     Attrib V41    0.1003058648496405
#>     Attrib V42    0.12383881075369746
#>     Attrib V43    0.03944481633102929
#>     Attrib V44    0.02767999227672255
#>     Attrib V45    0.05058820091810678
#>     Attrib V46    0.06631126013955485
#>     Attrib V47    0.0687831732895236
#>     Attrib V48    0.07239202648317934
#>     Attrib V49    0.016299267520274288
#>     Attrib V5    0.05399163989175053
#>     Attrib V50    0.04386535994145277
#>     Attrib V51    0.034534420682229776
#>     Attrib V52    0.049869673236148555
#>     Attrib V53    0.041656617515266926
#>     Attrib V54    0.023474171456383277
#>     Attrib V55    0.05053661502570844
#>     Attrib V56    0.1264158284438581
#>     Attrib V57    0.051470849596794044
#>     Attrib V58    0.06790893661140116
#>     Attrib V59    0.08270574575556765
#>     Attrib V6    0.038012558863552134
#>     Attrib V60    0.11344250460606523
#>     Attrib V7    -0.003893665480185247
#>     Attrib V8    0.05078052818172162
#>     Attrib V9    0.02600205210916275
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.15915603171070508
#>     Attrib V1    0.504554964807146
#>     Attrib V10    -0.2796738630356791
#>     Attrib V11    -0.017955996669667882
#>     Attrib V12    -0.3250534453761058
#>     Attrib V13    -0.38205101585045126
#>     Attrib V14    0.07894896300180036
#>     Attrib V15    0.32025129961500565
#>     Attrib V16    0.0752697765683723
#>     Attrib V17    0.13465687358459913
#>     Attrib V18    -0.06079285607928179
#>     Attrib V19    -0.026400037368025504
#>     Attrib V2    -0.03442061554968709
#>     Attrib V20    0.4788874954913874
#>     Attrib V21    0.3829904343563696
#>     Attrib V22    0.19173759735020185
#>     Attrib V23    0.1630898370325111
#>     Attrib V24    -0.0804171659287286
#>     Attrib V25    -0.5523762343427002
#>     Attrib V26    -0.6793505839343894
#>     Attrib V27    -0.7449072815903084
#>     Attrib V28    -0.7089683479532555
#>     Attrib V29    -0.19643882228691723
#>     Attrib V3    0.019673802076540278
#>     Attrib V30    0.08956877594104026
#>     Attrib V31    -0.8774219124268445
#>     Attrib V32    -0.36406456833743683
#>     Attrib V33    0.48942133861462095
#>     Attrib V34    0.08879885330065079
#>     Attrib V35    -0.1042278453587901
#>     Attrib V36    -0.42659523746581374
#>     Attrib V37    -0.40498877464161237
#>     Attrib V38    0.036217793605251826
#>     Attrib V39    -0.11828867023089727
#>     Attrib V4    0.5153557542293677
#>     Attrib V40    -0.34237265831637886
#>     Attrib V41    -0.13740899622849384
#>     Attrib V42    0.031041895912684893
#>     Attrib V43    0.14089441911913955
#>     Attrib V44    -0.07620435765966828
#>     Attrib V45    -0.1804530934485858
#>     Attrib V46    -0.08782924876051097
#>     Attrib V47    -0.03321375369237739
#>     Attrib V48    0.22019141900784442
#>     Attrib V49    0.01240090132078223
#>     Attrib V5    0.11515566514591492
#>     Attrib V50    -0.3037686681376773
#>     Attrib V51    0.11375358429020425
#>     Attrib V52    -0.1690622103193702
#>     Attrib V53    0.10715693067077052
#>     Attrib V54    0.6956106237728457
#>     Attrib V55    0.040153223454398486
#>     Attrib V56    0.2384855699327445
#>     Attrib V57    0.29172597861961597
#>     Attrib V58    0.47013617020062554
#>     Attrib V59    1.0403747505842214
#>     Attrib V6    -0.0979687522625668
#>     Attrib V60    0.45058574570166654
#>     Attrib V7    -0.08938504987757293
#>     Attrib V8    0.261550543476532
#>     Attrib V9    0.13619871628065938
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.12154810371510329
#>     Attrib V1    0.42472780521118053
#>     Attrib V10    -0.24130272866316188
#>     Attrib V11    0.014111989274356187
#>     Attrib V12    -0.1742536996729676
#>     Attrib V13    -0.33553974312693446
#>     Attrib V14    0.0702568295823176
#>     Attrib V15    0.2088956199964995
#>     Attrib V16    0.051867239139639566
#>     Attrib V17    0.050276957419809525
#>     Attrib V18    0.0014478653019890967
#>     Attrib V19    -0.04688357262464535
#>     Attrib V2    -0.07920350715530058
#>     Attrib V20    0.3680739773624167
#>     Attrib V21    0.3510415052942486
#>     Attrib V22    0.11681684394502444
#>     Attrib V23    0.16093152828552354
#>     Attrib V24    -0.07093319233070952
#>     Attrib V25    -0.4337451983469399
#>     Attrib V26    -0.5296874734803692
#>     Attrib V27    -0.54787845922255
#>     Attrib V28    -0.4596924924519644
#>     Attrib V29    -0.11136971157842497
#>     Attrib V3    0.07161987459541529
#>     Attrib V30    0.13146495473740819
#>     Attrib V31    -0.7810589506524384
#>     Attrib V32    -0.2996872710231251
#>     Attrib V33    0.40122573879565276
#>     Attrib V34    0.07240792730953352
#>     Attrib V35    -0.105567691000165
#>     Attrib V36    -0.2788247569065822
#>     Attrib V37    -0.33163316939480614
#>     Attrib V38    -0.01550019569255021
#>     Attrib V39    -0.03023835435426308
#>     Attrib V4    0.40274256914968687
#>     Attrib V40    -0.296772034803118
#>     Attrib V41    -0.12313376323356814
#>     Attrib V42    0.042443597818924234
#>     Attrib V43    0.02083354671711034
#>     Attrib V44    -0.06216404155186113
#>     Attrib V45    -0.08157204786585401
#>     Attrib V46    -0.05217505316818905
#>     Attrib V47    -0.030415301063361284
#>     Attrib V48    0.146604121983538
#>     Attrib V49    0.06341551713158486
#>     Attrib V5    0.12292024838445288
#>     Attrib V50    -0.26210292054412343
#>     Attrib V51    0.16451485665419546
#>     Attrib V52    -0.05596628006836561
#>     Attrib V53    0.09093118584441941
#>     Attrib V54    0.4534379468092166
#>     Attrib V55    -0.02364983847523655
#>     Attrib V56    0.15471844787922345
#>     Attrib V57    0.20060871528732935
#>     Attrib V58    0.43847834750890646
#>     Attrib V59    0.8076562374650592
#>     Attrib V6    -0.04955355256909586
#>     Attrib V60    0.3435976535719398
#>     Attrib V7    -0.09758466308120703
#>     Attrib V8    0.2220715564678002
#>     Attrib V9    0.1286159157590798
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
