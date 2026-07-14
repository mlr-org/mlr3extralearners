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
#>     Threshold    0.19356621513538236
#>     Node 2    2.2134997740686457
#>     Node 3    2.329174759824836
#>     Node 4    1.3320820947939436
#>     Node 5    -2.391331859150139
#>     Node 6    1.496621700252319
#>     Node 7    2.311925043910007
#>     Node 8    1.1129927697134172
#>     Node 9    2.0791640161401808
#>     Node 10    -0.42283268042654243
#>     Node 11    1.6858345982692056
#>     Node 12    2.2993995763315684
#>     Node 13    0.4329698021023675
#>     Node 14    2.1579079161385635
#>     Node 15    -2.7004021342751767
#>     Node 16    0.4759263584728073
#>     Node 17    0.9626040996674198
#>     Node 18    -0.4898700032951573
#>     Node 19    1.962678355064944
#>     Node 20    1.8304599737440879
#>     Node 21    -2.640468651561843
#>     Node 22    1.0034325603884973
#>     Node 23    1.4873856617252799
#>     Node 24    -1.949675880002307
#>     Node 25    4.218969535715381
#>     Node 26    0.23443672130407192
#>     Node 27    2.0695599957544775
#>     Node 28    -2.5099141567640975
#>     Node 29    1.1881791711977832
#>     Node 30    -1.3123213556410485
#>     Node 31    1.6443760038252035
#>     Node 32    0.4040021408062491
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.17113924273922582
#>     Node 2    -2.255443612520578
#>     Node 3    -2.318256215179781
#>     Node 4    -1.2926396372460307
#>     Node 5    2.39593277407089
#>     Node 6    -1.4759101278121323
#>     Node 7    -2.3058569588172606
#>     Node 8    -1.139366420698784
#>     Node 9    -2.070334921099131
#>     Node 10    0.36208654597001705
#>     Node 11    -1.654769645278017
#>     Node 12    -2.3830991068450436
#>     Node 13    -0.37046067693497753
#>     Node 14    -2.0960191865903828
#>     Node 15    2.6797218367828735
#>     Node 16    -0.4846587152092661
#>     Node 17    -0.9238859697656373
#>     Node 18    0.5290067010368212
#>     Node 19    -1.9448636959263514
#>     Node 20    -1.8181997345435927
#>     Node 21    2.6895055072932537
#>     Node 22    -1.051832680568514
#>     Node 23    -1.535063639737014
#>     Node 24    1.9235330568155504
#>     Node 25    -4.228244992435315
#>     Node 26    -0.3089326916582195
#>     Node 27    -2.089112080822379
#>     Node 28    2.453963418673132
#>     Node 29    -1.2177430262749596
#>     Node 30    1.3629689725302885
#>     Node 31    -1.590806528521158
#>     Node 32    -0.41472855903847855
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.14943360152506965
#>     Attrib V1    -0.4917388391750305
#>     Attrib V10    -0.05625536041177441
#>     Attrib V11    0.056202464278353695
#>     Attrib V12    0.5212539281003266
#>     Attrib V13    0.09394608760598565
#>     Attrib V14    -0.32796459665636907
#>     Attrib V15    -0.5236518616417155
#>     Attrib V16    -0.19792871426333905
#>     Attrib V17    -0.12068288164472402
#>     Attrib V18    0.3071014962147689
#>     Attrib V19    0.9742819808957153
#>     Attrib V2    -0.17531132871154267
#>     Attrib V20    0.4598733188306013
#>     Attrib V21    0.3420776164242258
#>     Attrib V22    0.4720702592686931
#>     Attrib V23    0.8516725127362934
#>     Attrib V24    0.6916195249556208
#>     Attrib V25    0.18811433113469186
#>     Attrib V26    -0.5778387128314942
#>     Attrib V27    -1.0849898180937059
#>     Attrib V28    0.10769932631632063
#>     Attrib V29    -0.6907572362027756
#>     Attrib V3    -0.1273882270791139
#>     Attrib V30    -0.1947262105227898
#>     Attrib V31    -0.887602417873529
#>     Attrib V32    0.3228662469893218
#>     Attrib V33    0.37809353030769693
#>     Attrib V34    0.04964452066955185
#>     Attrib V35    9.390184590352913E-4
#>     Attrib V36    -0.7613233754993614
#>     Attrib V37    -1.8561120861322764
#>     Attrib V38    -0.20799080727470623
#>     Attrib V39    -0.02532021696023194
#>     Attrib V4    0.5289346505230575
#>     Attrib V40    -0.7294794000011574
#>     Attrib V41    0.21762424697340318
#>     Attrib V42    0.2917456511195331
#>     Attrib V43    0.5470979494000275
#>     Attrib V44    1.0955385259327248
#>     Attrib V45    0.5353530806048242
#>     Attrib V46    -0.020483329699962416
#>     Attrib V47    0.1531456956849886
#>     Attrib V48    0.4932340327900217
#>     Attrib V49    0.8140820582906859
#>     Attrib V5    0.042926725578585616
#>     Attrib V50    -0.8644075494771937
#>     Attrib V51    0.16618662525220845
#>     Attrib V52    0.8497459878078183
#>     Attrib V53    0.5349745015054521
#>     Attrib V54    0.2807022278846898
#>     Attrib V55    -0.046156169878666914
#>     Attrib V56    0.43943355621223973
#>     Attrib V57    -0.021310595103108534
#>     Attrib V58    0.3730562226227652
#>     Attrib V59    0.5434439546376819
#>     Attrib V6    -0.07945703742694865
#>     Attrib V60    0.587479433213488
#>     Attrib V7    -0.25792809971160957
#>     Attrib V8    0.048040239128962686
#>     Attrib V9    0.5781378917006084
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.37237794557937187
#>     Attrib V1    0.18017467233925866
#>     Attrib V10    -0.42921264263021414
#>     Attrib V11    -0.56343833969734
#>     Attrib V12    -0.23295581970993037
#>     Attrib V13    -0.28935311158804433
#>     Attrib V14    -0.11109111049248577
#>     Attrib V15    0.27147023054392005
#>     Attrib V16    0.29061313734338634
#>     Attrib V17    -0.18698439624500135
#>     Attrib V18    -0.1191493401695736
#>     Attrib V19    0.5278975300584899
#>     Attrib V2    0.03390508649192652
#>     Attrib V20    0.5959022347822929
#>     Attrib V21    0.49746560338899265
#>     Attrib V22    0.22699860004335312
#>     Attrib V23    0.21614411765614835
#>     Attrib V24    0.07603023019206057
#>     Attrib V25    -0.39621278332391735
#>     Attrib V26    -1.2097823528596077
#>     Attrib V27    -1.507877649109649
#>     Attrib V28    -0.05139684849657217
#>     Attrib V29    -0.31208394988507554
#>     Attrib V3    -0.1882681623538613
#>     Attrib V30    -0.09624731668749997
#>     Attrib V31    -0.8499655383603274
#>     Attrib V32    0.0752296420671558
#>     Attrib V33    0.5212880926951962
#>     Attrib V34    0.08419821012269342
#>     Attrib V35    -0.10872574726321094
#>     Attrib V36    -0.7595600130112463
#>     Attrib V37    -1.3125011205796624
#>     Attrib V38    0.036028315846805915
#>     Attrib V39    -0.025704134354533687
#>     Attrib V4    0.40984340574137185
#>     Attrib V40    -0.7199842927328188
#>     Attrib V41    0.016212322778112465
#>     Attrib V42    0.39550154117471664
#>     Attrib V43    0.4140489552517247
#>     Attrib V44    0.9355516206038814
#>     Attrib V45    0.5989723602531798
#>     Attrib V46    0.07914719731741253
#>     Attrib V47    -0.03970272506977541
#>     Attrib V48    -0.060025144001717046
#>     Attrib V49    0.17268017888489023
#>     Attrib V5    -0.043601675249374854
#>     Attrib V50    -0.6869851863487563
#>     Attrib V51    -0.26470494871204653
#>     Attrib V52    0.24849686286632972
#>     Attrib V53    0.4155646121288867
#>     Attrib V54    0.793964128561059
#>     Attrib V55    0.1798521759272427
#>     Attrib V56    0.37162241760645826
#>     Attrib V57    0.368914695672381
#>     Attrib V58    0.38125074160999306
#>     Attrib V59    0.8648139766471592
#>     Attrib V6    -0.2233142396861815
#>     Attrib V60    0.706871775620537
#>     Attrib V7    -0.07770948138868802
#>     Attrib V8    0.29914678614001544
#>     Attrib V9    0.27028386658348197
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.22587641053913313
#>     Attrib V1    0.13768275296905547
#>     Attrib V10    -0.2719434169510621
#>     Attrib V11    -0.23127659374545312
#>     Attrib V12    -0.07488576266887997
#>     Attrib V13    -0.17822330229510558
#>     Attrib V14    -0.03354180963534063
#>     Attrib V15    0.16228558498439907
#>     Attrib V16    0.18629200089744974
#>     Attrib V17    -0.11921251079781493
#>     Attrib V18    -0.07744399614314966
#>     Attrib V19    0.2947615107268647
#>     Attrib V2    0.02138055974953626
#>     Attrib V20    0.3374803834026351
#>     Attrib V21    0.32940857388039857
#>     Attrib V22    0.04057958311820767
#>     Attrib V23    0.04554904547138687
#>     Attrib V24    -0.04538613101972491
#>     Attrib V25    -0.3582363792935834
#>     Attrib V26    -0.7622308408382324
#>     Attrib V27    -0.8495976927691526
#>     Attrib V28    0.105252432454005
#>     Attrib V29    -0.08324027701372556
#>     Attrib V3    -0.08526166818850657
#>     Attrib V30    -0.028414538739338115
#>     Attrib V31    -0.5005839598493592
#>     Attrib V32    0.03962215525607114
#>     Attrib V33    0.2461147424677537
#>     Attrib V34    0.012845318746760861
#>     Attrib V35    -0.03478949204974576
#>     Attrib V36    -0.38782677882593686
#>     Attrib V37    -0.7008481585009999
#>     Attrib V38    0.08849426719030389
#>     Attrib V39    0.09034814328406739
#>     Attrib V4    0.2674880506136062
#>     Attrib V40    -0.36192609383483565
#>     Attrib V41    0.05547493825238119
#>     Attrib V42    0.21613241839814318
#>     Attrib V43    0.2042230586920163
#>     Attrib V44    0.5352235669586859
#>     Attrib V45    0.4060756826551281
#>     Attrib V46    -0.03320580410469193
#>     Attrib V47    -0.0988329846981436
#>     Attrib V48    0.034146793285976404
#>     Attrib V49    0.19059244188603433
#>     Attrib V5    0.02363287613511527
#>     Attrib V50    -0.5029070788210315
#>     Attrib V51    -0.11012675288585903
#>     Attrib V52    0.2262430377614795
#>     Attrib V53    0.3631554234553726
#>     Attrib V54    0.37158803251022793
#>     Attrib V55    0.1097307025053329
#>     Attrib V56    0.18776251863050553
#>     Attrib V57    0.2563973989030086
#>     Attrib V58    0.2137547676972897
#>     Attrib V59    0.6091820910571328
#>     Attrib V6    -0.13529301195709273
#>     Attrib V60    0.4704509905218906
#>     Attrib V7    -0.07545170728506802
#>     Attrib V8    0.08349963521025454
#>     Attrib V9    0.18818849753450412
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.19482248860450987
#>     Attrib V1    1.025399800759116
#>     Attrib V10    -0.7802906730487214
#>     Attrib V11    -0.9466106343988315
#>     Attrib V12    -1.1122247038646538
#>     Attrib V13    -0.5938887839548864
#>     Attrib V14    0.3515152191059289
#>     Attrib V15    0.9106359904950935
#>     Attrib V16    0.46041005806764496
#>     Attrib V17    0.3829852155119499
#>     Attrib V18    -0.07014629345858087
#>     Attrib V19    -0.6136817428203232
#>     Attrib V2    0.18640008522309393
#>     Attrib V20    0.24809384448405183
#>     Attrib V21    0.19118417080096178
#>     Attrib V22    -0.43203932888813357
#>     Attrib V23    -0.7906638085582324
#>     Attrib V24    -0.5545089019425764
#>     Attrib V25    -0.31389929663771116
#>     Attrib V26    -0.2173603978004083
#>     Attrib V27    -0.39159099158682814
#>     Attrib V28    -1.445187417780863
#>     Attrib V29    -0.07351229138747867
#>     Attrib V3    0.19525968388538142
#>     Attrib V30    -0.24455558975580294
#>     Attrib V31    0.727668630223014
#>     Attrib V32    -0.3809801709771207
#>     Attrib V33    0.07834763847305384
#>     Attrib V34    0.27798447653988867
#>     Attrib V35    -3.3303150384452634E-4
#>     Attrib V36    0.4375343973067965
#>     Attrib V37    1.30293270337391
#>     Attrib V38    0.22607030023208746
#>     Attrib V39    -0.3038745149745086
#>     Attrib V4    -0.5358289610164625
#>     Attrib V40    0.3696464825956797
#>     Attrib V41    -0.46691265062370635
#>     Attrib V42    0.08622094291435475
#>     Attrib V43    -0.23463121179923294
#>     Attrib V44    -0.7498449494257146
#>     Attrib V45    -0.601968116249935
#>     Attrib V46    -0.09665036105280411
#>     Attrib V47    -0.3036835954590439
#>     Attrib V48    -0.8638900135998133
#>     Attrib V49    -1.2558248669978982
#>     Attrib V5    0.10148955355492886
#>     Attrib V50    1.082221965313275
#>     Attrib V51    -0.4158037012744885
#>     Attrib V52    -1.3707805916837885
#>     Attrib V53    -0.320179242760055
#>     Attrib V54    0.715356706280874
#>     Attrib V55    0.4605166111340942
#>     Attrib V56    -0.03658511597959934
#>     Attrib V57    0.3852760713926731
#>     Attrib V58    -0.4050595441457567
#>     Attrib V59    0.14841205345321473
#>     Attrib V6    -0.1057174257422529
#>     Attrib V60    -0.218035219814406
#>     Attrib V7    0.41035461514658367
#>     Attrib V8    -0.044501231738920795
#>     Attrib V9    -1.0923238326547857
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.28328932418346475
#>     Attrib V1    0.3469335627158615
#>     Attrib V10    -0.4732726983267329
#>     Attrib V11    -0.3121999129460818
#>     Attrib V12    0.00250872182812621
#>     Attrib V13    -0.18166147361974133
#>     Attrib V14    -0.025398199547107588
#>     Attrib V15    0.1796547721563337
#>     Attrib V16    0.2509027942840971
#>     Attrib V17    -0.16117031418950403
#>     Attrib V18    -0.06445203380540299
#>     Attrib V19    0.23985824401081202
#>     Attrib V2    0.1456296152997844
#>     Attrib V20    0.4057578437013917
#>     Attrib V21    0.3101313882762619
#>     Attrib V22    -0.0050672584936597605
#>     Attrib V23    -0.022576929453395237
#>     Attrib V24    0.026823230244458755
#>     Attrib V25    -0.23785026345572163
#>     Attrib V26    -0.7502742454253889
#>     Attrib V27    -0.8923196951995453
#>     Attrib V28    -0.22229909643573145
#>     Attrib V29    -0.35907899776354896
#>     Attrib V3    -0.06624623656429689
#>     Attrib V30    -0.19921496069510067
#>     Attrib V31    -0.5063649768492173
#>     Attrib V32    0.014341699276956051
#>     Attrib V33    0.26522800976721483
#>     Attrib V34    0.10500231521000199
#>     Attrib V35    0.07404368677581549
#>     Attrib V36    -0.30001218006102714
#>     Attrib V37    -0.5577433922923072
#>     Attrib V38    0.20407617353480248
#>     Attrib V39    0.08804318737832903
#>     Attrib V4    0.2879820159235992
#>     Attrib V40    -0.3753075095937859
#>     Attrib V41    0.06091148584118827
#>     Attrib V42    0.20193966884463105
#>     Attrib V43    0.23565914978834063
#>     Attrib V44    0.42952546730346647
#>     Attrib V45    0.31945829702926154
#>     Attrib V46    -0.005784518459291785
#>     Attrib V47    -0.12543842219807141
#>     Attrib V48    -0.0831894634435506
#>     Attrib V49    0.053942573707001375
#>     Attrib V5    -0.03720165926298189
#>     Attrib V50    -0.35677797489252716
#>     Attrib V51    -0.1742475966850593
#>     Attrib V52    0.13818307543800368
#>     Attrib V53    0.4459076471939482
#>     Attrib V54    0.662209438479744
#>     Attrib V55    0.24003489041611922
#>     Attrib V56    0.2885702589883179
#>     Attrib V57    0.3855658144991145
#>     Attrib V58    0.223161280118932
#>     Attrib V59    0.7633432984987929
#>     Attrib V6    -0.0969751321284707
#>     Attrib V60    0.5699418631488112
#>     Attrib V7    -0.039048060196551077
#>     Attrib V8    0.0841870759839707
#>     Attrib V9    0.0656025039597194
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.3863558200354831
#>     Attrib V1    -0.43991731082101143
#>     Attrib V10    0.7591906269758449
#>     Attrib V11    1.0568441809807643
#>     Attrib V12    0.9379482319944229
#>     Attrib V13    0.49892906327828124
#>     Attrib V14    -0.0696586173753663
#>     Attrib V15    -0.523036411819408
#>     Attrib V16    -0.2719500846891355
#>     Attrib V17    -0.5192780328587159
#>     Attrib V18    -0.27310781928290373
#>     Attrib V19    0.24340458057918762
#>     Attrib V2    0.029018041414084702
#>     Attrib V20    -0.3333274739521798
#>     Attrib V21    -0.1181211252775216
#>     Attrib V22    0.23779524464510732
#>     Attrib V23    0.43287642215172106
#>     Attrib V24    0.1260982922267914
#>     Attrib V25    0.013306360686965113
#>     Attrib V26    0.2794885738424962
#>     Attrib V27    0.8462317648033334
#>     Attrib V28    1.799541388595403
#>     Attrib V29    0.8790417797751316
#>     Attrib V3    -0.11219083840860888
#>     Attrib V30    0.5829646714764549
#>     Attrib V31    -0.5252636097370867
#>     Attrib V32    0.1733423279306955
#>     Attrib V33    -0.29603327742245966
#>     Attrib V34    -0.45874633928400743
#>     Attrib V35    -0.03880248338181391
#>     Attrib V36    -0.06828764392323783
#>     Attrib V37    -0.4212535725161258
#>     Attrib V38    0.17837753609226073
#>     Attrib V39    0.5228206609778088
#>     Attrib V4    0.39588114441104094
#>     Attrib V40    -0.030624146323121763
#>     Attrib V41    0.5449574158321274
#>     Attrib V42    -0.05270242915517442
#>     Attrib V43    0.06799726460841636
#>     Attrib V44    0.4419375777790673
#>     Attrib V45    0.4070333625721844
#>     Attrib V46    0.01605666650626539
#>     Attrib V47    0.16592349175758858
#>     Attrib V48    0.6571379170015222
#>     Attrib V49    0.8966121896724325
#>     Attrib V5    -0.058377996890148796
#>     Attrib V50    -0.9865062346740041
#>     Attrib V51    0.25566886440507
#>     Attrib V52    1.1305855365305448
#>     Attrib V53    0.2722262297890084
#>     Attrib V54    -0.48307633885890927
#>     Attrib V55    -0.2697533538603189
#>     Attrib V56    -0.21964611331747172
#>     Attrib V57    -0.20635262017065123
#>     Attrib V58    0.2903166490957868
#>     Attrib V59    0.17782368367900173
#>     Attrib V6    0.0645841952629844
#>     Attrib V60    0.4267485055978624
#>     Attrib V7    -0.27816682491553724
#>     Attrib V8    0.08106178502574872
#>     Attrib V9    0.8929990680859732
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.24567552714628121
#>     Attrib V1    0.2100609260232112
#>     Attrib V10    -0.03762566884539849
#>     Attrib V11    0.09356761344510643
#>     Attrib V12    0.14170430469149536
#>     Attrib V13    -0.06135815763295895
#>     Attrib V14    -0.06724394920180164
#>     Attrib V15    0.0332475068274005
#>     Attrib V16    0.11035575058131894
#>     Attrib V17    -0.26425959870845944
#>     Attrib V18    -0.2427859940027021
#>     Attrib V19    0.09728308704629718
#>     Attrib V2    0.10443311813360805
#>     Attrib V20    0.06497229444861592
#>     Attrib V21    0.05126597844023728
#>     Attrib V22    -0.16578447125820645
#>     Attrib V23    -0.19893135393557698
#>     Attrib V24    -0.12308076853483818
#>     Attrib V25    -0.2814173995717589
#>     Attrib V26    -0.37517654819823537
#>     Attrib V27    -0.3056278199600219
#>     Attrib V28    0.18079708399500333
#>     Attrib V29    -0.0809375367344803
#>     Attrib V3    -0.06455282659908838
#>     Attrib V30    0.04465834841559776
#>     Attrib V31    -0.29651270445267214
#>     Attrib V32    0.030333260393175333
#>     Attrib V33    0.10827601620341583
#>     Attrib V34    0.0024242424443304787
#>     Attrib V35    0.09759344654753441
#>     Attrib V36    -0.010124582871558015
#>     Attrib V37    -0.24048339245449557
#>     Attrib V38    0.32053486236547835
#>     Attrib V39    0.17853710574548123
#>     Attrib V4    0.29905716245501324
#>     Attrib V40    -0.1708696001205824
#>     Attrib V41    0.11427048339024849
#>     Attrib V42    0.03279257829035482
#>     Attrib V43    0.19516346732206974
#>     Attrib V44    0.4179524240397949
#>     Attrib V45    0.32101871011945493
#>     Attrib V46    0.0282740154868456
#>     Attrib V47    -0.01686428171382666
#>     Attrib V48    0.16679599297642217
#>     Attrib V49    0.22157617959982645
#>     Attrib V5    -0.014110796633831335
#>     Attrib V50    -0.36400227171853844
#>     Attrib V51    -0.056818878445332496
#>     Attrib V52    0.24688304051456675
#>     Attrib V53    0.38221855932593185
#>     Attrib V54    0.4947054211596086
#>     Attrib V55    0.17879169416557317
#>     Attrib V56    0.009417245084521604
#>     Attrib V57    0.310473614282284
#>     Attrib V58    0.16108744460428528
#>     Attrib V59    0.6273049572160462
#>     Attrib V6    -0.1239940402889277
#>     Attrib V60    0.5603525449485771
#>     Attrib V7    -0.03253273245959831
#>     Attrib V8    0.07014633205809533
#>     Attrib V9    0.1336294990383494
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.3453055976787212
#>     Attrib V1    -0.4667402383034117
#>     Attrib V10    0.8182469733200722
#>     Attrib V11    1.0332212876333335
#>     Attrib V12    1.1368400902741749
#>     Attrib V13    0.5014616262795278
#>     Attrib V14    -0.28591707880996
#>     Attrib V15    -0.6190215641591348
#>     Attrib V16    -0.33416571853363225
#>     Attrib V17    -0.5175523301042255
#>     Attrib V18    -0.32690552305462267
#>     Attrib V19    0.054531129585986764
#>     Attrib V2    -0.13718418530161633
#>     Attrib V20    -0.5057745210925791
#>     Attrib V21    -0.2967562982065976
#>     Attrib V22    0.0750147570507342
#>     Attrib V23    0.18206361426994935
#>     Attrib V24    0.24775228486608694
#>     Attrib V25    0.42142940938092344
#>     Attrib V26    0.5159102504227931
#>     Attrib V27    0.7005109408015261
#>     Attrib V28    1.1245965478033593
#>     Attrib V29    -0.05732065984511866
#>     Attrib V3    -0.2955222793139049
#>     Attrib V30    0.1784752173510724
#>     Attrib V31    -0.33569310598408947
#>     Attrib V32    0.33184438145860184
#>     Attrib V33    -0.06371477554805328
#>     Attrib V34    -0.05587751948135142
#>     Attrib V35    0.21193080555619329
#>     Attrib V36    0.12134126728284612
#>     Attrib V37    -0.4099559336811047
#>     Attrib V38    0.08930871110314205
#>     Attrib V39    0.47176607717783625
#>     Attrib V4    0.22227704192246273
#>     Attrib V40    0.016689999737262297
#>     Attrib V41    0.3569978597023508
#>     Attrib V42    -0.31624344767739887
#>     Attrib V43    -0.005898642764066413
#>     Attrib V44    0.15546510611581787
#>     Attrib V45    0.1722692631448539
#>     Attrib V46    -0.08357634310459519
#>     Attrib V47    0.11170741059227506
#>     Attrib V48    0.6614293457149707
#>     Attrib V49    0.7848728742304959
#>     Attrib V5    -0.20378609339309992
#>     Attrib V50    -0.8952438720155373
#>     Attrib V51    0.2470661721184899
#>     Attrib V52    0.8926029324057697
#>     Attrib V53    0.28093216175127655
#>     Attrib V54    -0.21183594098730885
#>     Attrib V55    -0.14465297521699924
#>     Attrib V56    -0.1639257402157326
#>     Attrib V57    -0.16735762487023878
#>     Attrib V58    0.13509543877460828
#>     Attrib V59    0.2343661601291276
#>     Attrib V6    -0.030769779452459185
#>     Attrib V60    0.5716922431922082
#>     Attrib V7    -0.17673788804092744
#>     Attrib V8    0.046230176772130996
#>     Attrib V9    0.7708736815805578
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.2856235920573213
#>     Attrib V1    0.15980627625993402
#>     Attrib V10    -0.06875457248193133
#>     Attrib V11    -0.13524677539649013
#>     Attrib V12    -0.1285552580292107
#>     Attrib V13    -0.02415607462860977
#>     Attrib V14    0.13011051661571676
#>     Attrib V15    0.07152017230413948
#>     Attrib V16    0.08186865739702258
#>     Attrib V17    0.12279448706302427
#>     Attrib V18    0.14571430910040534
#>     Attrib V19    -0.13787648698164828
#>     Attrib V2    0.07328844893747545
#>     Attrib V20    -0.09795519441323271
#>     Attrib V21    -0.03274159636617876
#>     Attrib V22    -0.02512673563989775
#>     Attrib V23    0.001994078529358593
#>     Attrib V24    -0.13024139603638935
#>     Attrib V25    -0.10147016477608664
#>     Attrib V26    -0.0646661865750602
#>     Attrib V27    -0.09415008587206483
#>     Attrib V28    -0.26099363623726846
#>     Attrib V29    0.018100177645071224
#>     Attrib V3    0.10840015990645648
#>     Attrib V30    0.14670324706485438
#>     Attrib V31    0.310012467336424
#>     Attrib V32    0.010561369388488099
#>     Attrib V33    0.16012622008551589
#>     Attrib V34    0.16604362364550967
#>     Attrib V35    0.08814100016374793
#>     Attrib V36    0.1912432515524207
#>     Attrib V37    0.2804048979367661
#>     Attrib V38    0.006298836900780408
#>     Attrib V39    -0.0509897211981268
#>     Attrib V4    -0.030421776731704313
#>     Attrib V40    0.23556166085194907
#>     Attrib V41    0.10259194723265364
#>     Attrib V42    0.04214667622163483
#>     Attrib V43    -0.018719361018739743
#>     Attrib V44    -0.10392025974450739
#>     Attrib V45    -0.12277617762899698
#>     Attrib V46    -0.006868183104287724
#>     Attrib V47    0.02983712716128665
#>     Attrib V48    -0.1063996872463227
#>     Attrib V49    -0.16468069747191594
#>     Attrib V5    0.0713831663402961
#>     Attrib V50    0.301203794805261
#>     Attrib V51    0.04461961615838798
#>     Attrib V52    -0.14329328326060892
#>     Attrib V53    -0.08804256633131556
#>     Attrib V54    -0.04543135241214954
#>     Attrib V55    0.06794813890770057
#>     Attrib V56    0.028737480994681534
#>     Attrib V57    0.036755308736652066
#>     Attrib V58    -0.01833574538533581
#>     Attrib V59    -0.11386477246569751
#>     Attrib V6    0.17005655619796292
#>     Attrib V60    -0.09424119177858763
#>     Attrib V7    0.14212018932807097
#>     Attrib V8    0.08999648341851799
#>     Attrib V9    -0.11553005766408288
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.2866920737536019
#>     Attrib V1    0.09472224370289024
#>     Attrib V10    -0.32117817060947623
#>     Attrib V11    -0.2693012062855522
#>     Attrib V12    -0.0053931036977227734
#>     Attrib V13    -0.25732395956961684
#>     Attrib V14    -0.1751254152483192
#>     Attrib V15    0.06102414380586708
#>     Attrib V16    0.19157129521429503
#>     Attrib V17    -0.10447016870531715
#>     Attrib V18    -0.014998983980147717
#>     Attrib V19    0.38941983734054275
#>     Attrib V2    -0.04123657477643942
#>     Attrib V20    0.46777062560412985
#>     Attrib V21    0.3548111526715225
#>     Attrib V22    0.13759438861941053
#>     Attrib V23    0.2212858364253511
#>     Attrib V24    0.14728989071009638
#>     Attrib V25    -0.18855212145984793
#>     Attrib V26    -0.8458054910372941
#>     Attrib V27    -1.086721038840956
#>     Attrib V28    -0.05147848648069011
#>     Attrib V29    -0.3777020803352949
#>     Attrib V3    -0.22840466266872078
#>     Attrib V30    -0.10573397129954848
#>     Attrib V31    -0.6774940933435922
#>     Attrib V32    0.043539141195018956
#>     Attrib V33    0.3456352321504914
#>     Attrib V34    0.12274433914798659
#>     Attrib V35    0.028820930784587938
#>     Attrib V36    -0.48826375709720676
#>     Attrib V37    -1.0183799536128788
#>     Attrib V38    0.10426256715854312
#>     Attrib V39    -0.011120280882421783
#>     Attrib V4    0.2954125713387923
#>     Attrib V40    -0.5549066268855483
#>     Attrib V41    -0.0072030599497473905
#>     Attrib V42    0.22782493467493756
#>     Attrib V43    0.3159764093775085
#>     Attrib V44    0.706581140620891
#>     Attrib V45    0.5133127390311091
#>     Attrib V46    0.03279617552102635
#>     Attrib V47    -0.025847934868175493
#>     Attrib V48    0.039474505552164106
#>     Attrib V49    0.19624339220010936
#>     Attrib V5    -0.036406343505772445
#>     Attrib V50    -0.5909474918270263
#>     Attrib V51    -0.09605470491824272
#>     Attrib V52    0.23347581883543805
#>     Attrib V53    0.3442374960719991
#>     Attrib V54    0.6313019195245967
#>     Attrib V55    0.16518993722751774
#>     Attrib V56    0.24267262654379088
#>     Attrib V57    0.2330229770891355
#>     Attrib V58    0.2680932197927014
#>     Attrib V59    0.6032567133567909
#>     Attrib V6    -0.14120595899710223
#>     Attrib V60    0.5822632619434167
#>     Attrib V7    -0.10687647990440884
#>     Attrib V8    0.1903763412486751
#>     Attrib V9    0.25432867106903234
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.45807026777754806
#>     Attrib V1    0.18686731311842641
#>     Attrib V10    -0.5062291389807425
#>     Attrib V11    -0.49073650738360264
#>     Attrib V12    -0.2890638274294768
#>     Attrib V13    -0.33070943012505505
#>     Attrib V14    -0.07687569247440842
#>     Attrib V15    0.2392389205840638
#>     Attrib V16    0.3535158451309767
#>     Attrib V17    -0.19729896031281255
#>     Attrib V18    -0.11468778198639448
#>     Attrib V19    0.5356138369285628
#>     Attrib V2    0.06615074354537127
#>     Attrib V20    0.5989357452312144
#>     Attrib V21    0.5585612653820168
#>     Attrib V22    0.2420522473267806
#>     Attrib V23    0.23673616275565745
#>     Attrib V24    0.02854987967239307
#>     Attrib V25    -0.533183119490654
#>     Attrib V26    -1.2798617411984807
#>     Attrib V27    -1.446739106639524
#>     Attrib V28    0.04562907090741633
#>     Attrib V29    -0.07434298007250272
#>     Attrib V3    -0.23757397443195866
#>     Attrib V30    -0.08618588686012875
#>     Attrib V31    -0.9390756267243933
#>     Attrib V32    0.012712311022261108
#>     Attrib V33    0.5090021541046305
#>     Attrib V34    0.0988174108691681
#>     Attrib V35    -0.13573964965248386
#>     Attrib V36    -0.7697236414504135
#>     Attrib V37    -1.3155029737778157
#>     Attrib V38    0.11137625188950168
#>     Attrib V39    -0.042964699391663516
#>     Attrib V4    0.48178124729973926
#>     Attrib V40    -0.7139987746793574
#>     Attrib V41    0.05027292961957963
#>     Attrib V42    0.40216628858064235
#>     Attrib V43    0.487988864763004
#>     Attrib V44    0.9187567427678114
#>     Attrib V45    0.6642121146582463
#>     Attrib V46    0.16488777994438553
#>     Attrib V47    -0.06617862422472241
#>     Attrib V48    -0.003869345637611273
#>     Attrib V49    0.18820620320470172
#>     Attrib V5    0.007799764155531157
#>     Attrib V50    -0.7672419278915357
#>     Attrib V51    -0.23723042530329935
#>     Attrib V52    0.3073249034009173
#>     Attrib V53    0.5032787298781866
#>     Attrib V54    0.6915742248589487
#>     Attrib V55    0.11838759642277524
#>     Attrib V56    0.3472852409734417
#>     Attrib V57    0.37805626339189025
#>     Attrib V58    0.38973652200476006
#>     Attrib V59    0.9297648891352026
#>     Attrib V6    -0.2049434785757338
#>     Attrib V60    0.7188926438753637
#>     Attrib V7    -0.06321381225791414
#>     Attrib V8    0.28071397955225863
#>     Attrib V9    0.2940605352462461
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.14996605380159833
#>     Attrib V1    0.12284028138761789
#>     Attrib V10    -0.04366699420742173
#>     Attrib V11    0.003336292470305315
#>     Attrib V12    0.04725896447210006
#>     Attrib V13    0.04312835346500094
#>     Attrib V14    0.03226476747954149
#>     Attrib V15    0.014358557063935217
#>     Attrib V16    -0.006368270122893933
#>     Attrib V17    -0.08953368258891498
#>     Attrib V18    -0.11563219455520302
#>     Attrib V19    -0.04050431327987062
#>     Attrib V2    0.08661153187581482
#>     Attrib V20    -0.00251483276908129
#>     Attrib V21    -0.040654736432866996
#>     Attrib V22    -0.1258752897673413
#>     Attrib V23    -0.06903329664633616
#>     Attrib V24    -0.08035998173902044
#>     Attrib V25    -0.07013637815596095
#>     Attrib V26    -0.1807527334258919
#>     Attrib V27    -0.10519684297731571
#>     Attrib V28    -0.016389242946467777
#>     Attrib V29    -0.089744504035025
#>     Attrib V3    0.10201736508701918
#>     Attrib V30    -2.1953417784958826E-4
#>     Attrib V31    -0.12717338968350375
#>     Attrib V32    0.0196576917638226
#>     Attrib V33    0.04938590232648465
#>     Attrib V34    0.08958783482548026
#>     Attrib V35    0.08835167731507676
#>     Attrib V36    0.04669793833567785
#>     Attrib V37    -0.004229225361421622
#>     Attrib V38    0.1263412342354815
#>     Attrib V39    0.16761899558884638
#>     Attrib V4    0.15205728419671763
#>     Attrib V40    0.03557488083239279
#>     Attrib V41    0.08753419994824935
#>     Attrib V42    0.04285582776085069
#>     Attrib V43    0.027510123263187983
#>     Attrib V44    0.07448901468407673
#>     Attrib V45    0.04759804140959492
#>     Attrib V46    0.07451534859170045
#>     Attrib V47    0.10026731281308143
#>     Attrib V48    0.07274267641336617
#>     Attrib V49    0.1286826207041912
#>     Attrib V5    0.04898844152349134
#>     Attrib V50    -0.07985922561495375
#>     Attrib V51    0.0420938182312286
#>     Attrib V52    0.12631285692169675
#>     Attrib V53    0.1303205388663619
#>     Attrib V54    0.14336836739730055
#>     Attrib V55    0.14502317243546728
#>     Attrib V56    0.09377639057023421
#>     Attrib V57    0.15824023506925974
#>     Attrib V58    0.10676439116181881
#>     Attrib V59    0.2613614099939758
#>     Attrib V6    0.006593960750227166
#>     Attrib V60    0.3047075723547315
#>     Attrib V7    0.04153068623894539
#>     Attrib V8    0.022150056242119725
#>     Attrib V9    0.07611780563571358
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.3557557681515799
#>     Attrib V1    0.22361096003811112
#>     Attrib V10    -0.4257226966780338
#>     Attrib V11    -0.36529699455789344
#>     Attrib V12    -0.058868142357067735
#>     Attrib V13    -0.2778593052218191
#>     Attrib V14    -0.19797096794106744
#>     Attrib V15    0.17797091829624598
#>     Attrib V16    0.2065549723716067
#>     Attrib V17    -0.1753917930999346
#>     Attrib V18    -0.07567923209218118
#>     Attrib V19    0.4009079999212912
#>     Attrib V2    0.020709345954904215
#>     Attrib V20    0.5055771323793659
#>     Attrib V21    0.40717621265073983
#>     Attrib V22    0.16049047131221567
#>     Attrib V23    0.240441751218924
#>     Attrib V24    0.13904413592651813
#>     Attrib V25    -0.2260124707938261
#>     Attrib V26    -0.9446036853296214
#>     Attrib V27    -1.392662100861647
#>     Attrib V28    -0.2837718264491157
#>     Attrib V29    -0.5557210732355974
#>     Attrib V3    -0.27380876724881187
#>     Attrib V30    -0.21938591256123394
#>     Attrib V31    -0.7020614875455258
#>     Attrib V32    0.07474924193147818
#>     Attrib V33    0.5112103974936143
#>     Attrib V34    0.18739506285362612
#>     Attrib V35    0.015676553936899394
#>     Attrib V36    -0.6578243640874473
#>     Attrib V37    -1.153838729594946
#>     Attrib V38    0.028678901267382616
#>     Attrib V39    -0.04712928739080264
#>     Attrib V4    0.32611530903620767
#>     Attrib V40    -0.657125081450777
#>     Attrib V41    -0.06253614246602703
#>     Attrib V42    0.21860081947685348
#>     Attrib V43    0.3495538018113335
#>     Attrib V44    0.8089936583167463
#>     Attrib V45    0.47395274058973036
#>     Attrib V46    0.07204044204387332
#>     Attrib V47    -0.08578426154361887
#>     Attrib V48    0.027798051009711493
#>     Attrib V49    0.2106544570548343
#>     Attrib V5    -0.12123975674267864
#>     Attrib V50    -0.6161057904759041
#>     Attrib V51    -0.23509534005601218
#>     Attrib V52    0.2013801404899242
#>     Attrib V53    0.4076533814351894
#>     Attrib V54    0.8849055820511205
#>     Attrib V55    0.2441765344170081
#>     Attrib V56    0.3610263090814457
#>     Attrib V57    0.34676699750651796
#>     Attrib V58    0.302171442271761
#>     Attrib V59    0.7748789690171491
#>     Attrib V6    -0.20971774816866054
#>     Attrib V60    0.7305361247955706
#>     Attrib V7    -0.04528299131401756
#>     Attrib V8    0.14750566386149996
#>     Attrib V9    0.23191675475180223
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.18087198409195923
#>     Attrib V1    1.1248698724231265
#>     Attrib V10    -0.9787389899802046
#>     Attrib V11    -1.1678643670139925
#>     Attrib V12    -1.0924124326000766
#>     Attrib V13    -0.617836878230759
#>     Attrib V14    0.40605624448989297
#>     Attrib V15    1.031860060141291
#>     Attrib V16    0.5482741549881543
#>     Attrib V17    0.4024645779161524
#>     Attrib V18    -0.07433515441076076
#>     Attrib V19    -0.6299107480612948
#>     Attrib V2    0.10323383156033919
#>     Attrib V20    0.3089100156511225
#>     Attrib V21    0.1509542983354974
#>     Attrib V22    -0.47485601618014467
#>     Attrib V23    -0.9204283654550449
#>     Attrib V24    -0.5039518679474503
#>     Attrib V25    -0.33629389478499677
#>     Attrib V26    -0.2075583931064972
#>     Attrib V27    -0.4822473864375106
#>     Attrib V28    -1.552684395963819
#>     Attrib V29    -0.07823822312300578
#>     Attrib V3    0.20032107874791752
#>     Attrib V30    -0.307671572917685
#>     Attrib V31    0.8146614929167572
#>     Attrib V32    -0.3833069857931486
#>     Attrib V33    0.11936128419271301
#>     Attrib V34    0.3637461728642534
#>     Attrib V35    -0.052211296717074945
#>     Attrib V36    0.4537410756728775
#>     Attrib V37    1.489924005040425
#>     Attrib V38    0.3315632710304371
#>     Attrib V39    -0.2757124320233731
#>     Attrib V4    -0.512567628639709
#>     Attrib V40    0.4104273525573673
#>     Attrib V41    -0.46598693666634583
#>     Attrib V42    0.04632678001938432
#>     Attrib V43    -0.2756958653050322
#>     Attrib V44    -0.87002216577522
#>     Attrib V45    -0.6385136561807468
#>     Attrib V46    -0.04149216300216779
#>     Attrib V47    -0.35405256109395156
#>     Attrib V48    -0.9773991651111567
#>     Attrib V49    -1.4171538386596523
#>     Attrib V5    0.13547454275578968
#>     Attrib V50    1.1067151396014565
#>     Attrib V51    -0.4912459339659193
#>     Attrib V52    -1.5526815132733567
#>     Attrib V53    -0.25441976460504573
#>     Attrib V54    0.817929791825366
#>     Attrib V55    0.4568994912394937
#>     Attrib V56    -0.03298738155248709
#>     Attrib V57    0.4837816614259528
#>     Attrib V58    -0.4643740667354164
#>     Attrib V59    0.27993830151050353
#>     Attrib V6    -0.11932165284760554
#>     Attrib V60    -0.1379921939513668
#>     Attrib V7    0.4074717426074962
#>     Attrib V8    -0.12195328673421303
#>     Attrib V9    -1.2157270806474423
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.09317255137149608
#>     Attrib V1    0.14772755859280334
#>     Attrib V10    -0.010239159919725802
#>     Attrib V11    -0.0015374012037609288
#>     Attrib V12    0.0548655311412779
#>     Attrib V13    0.0095671285311935
#>     Attrib V14    -0.008758170012667342
#>     Attrib V15    0.02629811050365872
#>     Attrib V16    0.08094945542049933
#>     Attrib V17    -0.08396705718727696
#>     Attrib V18    -0.10017308709888541
#>     Attrib V19    -0.026745404251962007
#>     Attrib V2    0.06393573759909484
#>     Attrib V20    -0.06579200763160017
#>     Attrib V21    -0.09780400516961628
#>     Attrib V22    -0.15423022808387116
#>     Attrib V23    -0.17961478380911206
#>     Attrib V24    -0.08673188563192055
#>     Attrib V25    -0.10914552208170519
#>     Attrib V26    -0.20642383527165983
#>     Attrib V27    -0.1824235314028647
#>     Attrib V28    0.01717218695793532
#>     Attrib V29    -0.1285475943039014
#>     Attrib V3    0.05872093913532973
#>     Attrib V30    -0.053361229594786286
#>     Attrib V31    -0.120033276568941
#>     Attrib V32    0.02780588111841554
#>     Attrib V33    0.04706048880398431
#>     Attrib V34    0.08507867755478372
#>     Attrib V35    0.09937080327960193
#>     Attrib V36    0.04741880956953349
#>     Attrib V37    0.0050460939858275305
#>     Attrib V38    0.15878852701632615
#>     Attrib V39    0.1339055022887215
#>     Attrib V4    0.1495468128208969
#>     Attrib V40    -0.022786065037862454
#>     Attrib V41    0.08378727045286648
#>     Attrib V42    0.06569991861795806
#>     Attrib V43    0.055124091076095554
#>     Attrib V44    0.05908714083772797
#>     Attrib V45    0.10380266441785546
#>     Attrib V46    0.060658407140524784
#>     Attrib V47    0.047060417519188935
#>     Attrib V48    0.06416216056981704
#>     Attrib V49    0.058610489983985326
#>     Attrib V5    0.020038384396871785
#>     Attrib V50    -0.02719765398058848
#>     Attrib V51    0.09348353998992986
#>     Attrib V52    0.17254170858302043
#>     Attrib V53    0.19246144410865873
#>     Attrib V54    0.18725939647507026
#>     Attrib V55    0.1877657583718598
#>     Attrib V56    0.09884353594053971
#>     Attrib V57    0.19396517188975143
#>     Attrib V58    0.1579202180084995
#>     Attrib V59    0.21828748477122684
#>     Attrib V6    -0.004639861212223482
#>     Attrib V60    0.3054730610172361
#>     Attrib V7    0.006311327513422014
#>     Attrib V8    0.030993068024138835
#>     Attrib V9    0.11074448863437139
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.11317265585550643
#>     Attrib V1    0.28178596317668125
#>     Attrib V10    -0.030206735380495852
#>     Attrib V11    0.0330491291709859
#>     Attrib V12    0.05058303679973501
#>     Attrib V13    -0.12224636169003239
#>     Attrib V14    -0.010551115791590644
#>     Attrib V15    0.15179601890655248
#>     Attrib V16    0.09662634804246124
#>     Attrib V17    -0.2019102927604611
#>     Attrib V18    -0.2055839375173929
#>     Attrib V19    0.02308436206202846
#>     Attrib V2    0.1793196452415315
#>     Attrib V20    0.02327045113003248
#>     Attrib V21    -0.024159051602487443
#>     Attrib V22    -0.13781712525662138
#>     Attrib V23    -0.26721542950912114
#>     Attrib V24    -0.17061086444760656
#>     Attrib V25    -0.30156462992723615
#>     Attrib V26    -0.4107426793393435
#>     Attrib V27    -0.32213866709487027
#>     Attrib V28    -2.7264105165271537E-4
#>     Attrib V29    -0.21648975647437757
#>     Attrib V3    -0.01623227352989753
#>     Attrib V30    -0.024156372745647938
#>     Attrib V31    -0.17303100347759412
#>     Attrib V32    -0.04020685565599037
#>     Attrib V33    0.11424058992523975
#>     Attrib V34    0.006099102122813505
#>     Attrib V35    0.13669018939633928
#>     Attrib V36    -0.049172065817855805
#>     Attrib V37    -0.19113328268472668
#>     Attrib V38    0.24291794089675556
#>     Attrib V39    0.16376053081156863
#>     Attrib V4    0.22050200910165849
#>     Attrib V40    -0.13585115521037086
#>     Attrib V41    0.10407061665322673
#>     Attrib V42    0.05194277649230114
#>     Attrib V43    0.17601255197336316
#>     Attrib V44    0.25531966598441036
#>     Attrib V45    0.22524859681201712
#>     Attrib V46    -0.0221684623383023
#>     Attrib V47    -0.060981573367407366
#>     Attrib V48    0.12604244902033035
#>     Attrib V49    0.08037446940598729
#>     Attrib V5    0.012119556895963017
#>     Attrib V50    -0.1991070887927774
#>     Attrib V51    -0.001234523658460876
#>     Attrib V52    0.14627257060463278
#>     Attrib V53    0.25255694144420654
#>     Attrib V54    0.42074665940004163
#>     Attrib V55    0.27180852233246067
#>     Attrib V56    0.11703664785411137
#>     Attrib V57    0.33914093824313474
#>     Attrib V58    0.15076886367799536
#>     Attrib V59    0.4958680176268656
#>     Attrib V6    -0.05805876439573489
#>     Attrib V60    0.4929649265253226
#>     Attrib V7    -0.04624574041608253
#>     Attrib V8    0.138107783327395
#>     Attrib V9    0.10369083118984145
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.32846565261497823
#>     Attrib V1    0.15207636673297972
#>     Attrib V10    -0.0974537328435841
#>     Attrib V11    -0.20859994758423167
#>     Attrib V12    -0.3094923845952954
#>     Attrib V13    -0.14465298843939667
#>     Attrib V14    0.10836382428352791
#>     Attrib V15    0.15087484060823467
#>     Attrib V16    0.14613421732371104
#>     Attrib V17    0.2259180774088597
#>     Attrib V18    0.19404788893838246
#>     Attrib V19    -0.2616477612681023
#>     Attrib V2    0.0744854492200589
#>     Attrib V20    -0.13697664587454936
#>     Attrib V21    -0.05275899238138819
#>     Attrib V22    -0.04725866318589071
#>     Attrib V23    -0.051718300272765486
#>     Attrib V24    -0.11772727964684632
#>     Attrib V25    -0.025509115163502766
#>     Attrib V26    -0.01557057130553407
#>     Attrib V27    -0.042902293255459564
#>     Attrib V28    -0.33844608767292567
#>     Attrib V29    0.0484789888355272
#>     Attrib V3    0.18976579478974617
#>     Attrib V30    0.07996990147006279
#>     Attrib V31    0.32149876211244205
#>     Attrib V32    -0.003929816126938148
#>     Attrib V33    0.0758404068936149
#>     Attrib V34    0.11406157276772166
#>     Attrib V35    0.003226816881237699
#>     Attrib V36    0.28725812614768576
#>     Attrib V37    0.3868342846291254
#>     Attrib V38    -0.06286432304379556
#>     Attrib V39    -0.05919654718589995
#>     Attrib V4    -0.09148569156556889
#>     Attrib V40    0.19938774381000943
#>     Attrib V41    -0.024014730898151995
#>     Attrib V42    0.035910192584153275
#>     Attrib V43    -0.06714890466734987
#>     Attrib V44    -0.1635240326693197
#>     Attrib V45    -0.24777769456522947
#>     Attrib V46    -0.014639013645865668
#>     Attrib V47    0.03879898162263437
#>     Attrib V48    -0.16020315451034137
#>     Attrib V49    -0.22475691458868446
#>     Attrib V5    0.09631615149733273
#>     Attrib V50    0.2829293245782979
#>     Attrib V51    0.09193949884327707
#>     Attrib V52    -0.24242024700494583
#>     Attrib V53    -0.1635257972598289
#>     Attrib V54    -0.06404926709186928
#>     Attrib V55    0.10845740401638819
#>     Attrib V56    0.06621457600867814
#>     Attrib V57    0.01877884171631791
#>     Attrib V58    -0.010813576416593248
#>     Attrib V59    -0.07163686273029156
#>     Attrib V6    0.09851407062968248
#>     Attrib V60    -0.06866065346380745
#>     Attrib V7    0.20226120873175407
#>     Attrib V8    0.14494219094011193
#>     Attrib V9    -0.14418184237001316
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.3315758746119193
#>     Attrib V1    -0.2661992981451022
#>     Attrib V10    -0.0673172637807898
#>     Attrib V11    0.03088859362236538
#>     Attrib V12    0.41034495743192745
#>     Attrib V13    8.251422313919401E-4
#>     Attrib V14    -0.34662859386913286
#>     Attrib V15    -0.28082478169829633
#>     Attrib V16    -0.07050657594715483
#>     Attrib V17    -0.20518053526063906
#>     Attrib V18    0.059334126573424927
#>     Attrib V19    0.7088080514225583
#>     Attrib V2    -0.11815058638598691
#>     Attrib V20    0.3736167157407711
#>     Attrib V21    0.2815465252126593
#>     Attrib V22    0.3841554867845278
#>     Attrib V23    0.5834834110310243
#>     Attrib V24    0.5109114723529804
#>     Attrib V25    0.1511497821343346
#>     Attrib V26    -0.5708354265078666
#>     Attrib V27    -1.0662095719630507
#>     Attrib V28    -0.014034214110407736
#>     Attrib V29    -0.7634205269558829
#>     Attrib V3    -0.32105924077647086
#>     Attrib V30    -0.2601462823439633
#>     Attrib V31    -0.7997271281711341
#>     Attrib V32    0.17851836038434965
#>     Attrib V33    0.45927367309359635
#>     Attrib V34    0.1807354995278382
#>     Attrib V35    0.23469473757309137
#>     Attrib V36    -0.4482175665459712
#>     Attrib V37    -1.4155683469990374
#>     Attrib V38    -0.11457991863215367
#>     Attrib V39    -0.05242217423320682
#>     Attrib V4    0.4059792348305711
#>     Attrib V40    -0.6514670098936144
#>     Attrib V41    0.05667094340211703
#>     Attrib V42    0.18386265509744337
#>     Attrib V43    0.35621682834462476
#>     Attrib V44    0.8125254347148196
#>     Attrib V45    0.6283515050610695
#>     Attrib V46    0.05648108952263958
#>     Attrib V47    0.043164023405720287
#>     Attrib V48    0.3188145181934147
#>     Attrib V49    0.6377451155474894
#>     Attrib V5    -0.11694199539014816
#>     Attrib V50    -0.7826171365010866
#>     Attrib V51    -0.007283903715568586
#>     Attrib V52    0.6215746934720356
#>     Attrib V53    0.4162175961830765
#>     Attrib V54    0.57469276083537
#>     Attrib V55    0.1397566469966336
#>     Attrib V56    0.22005705129539674
#>     Attrib V57    0.026839056777801386
#>     Attrib V58    0.3580728024573722
#>     Attrib V59    0.5504009662017364
#>     Attrib V6    -0.149276219424401
#>     Attrib V60    0.650479791444083
#>     Attrib V7    -0.051188003517196067
#>     Attrib V8    0.16072624027135712
#>     Attrib V9    0.5162685725423755
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.3431575424971912
#>     Attrib V1    0.05723520265075152
#>     Attrib V10    -0.2857087995672417
#>     Attrib V11    -0.25073102461913443
#>     Attrib V12    0.03154643239488033
#>     Attrib V13    -0.18828605518706146
#>     Attrib V14    -0.1748643077392534
#>     Attrib V15    -0.0060815089531993305
#>     Attrib V16    0.10205473946461505
#>     Attrib V17    -0.1668222917362324
#>     Attrib V18    0.00550472230870089
#>     Attrib V19    0.5777983076928874
#>     Attrib V2    -0.032105585668323354
#>     Attrib V20    0.5280045126212153
#>     Attrib V21    0.480352753342505
#>     Attrib V22    0.3420024675803334
#>     Attrib V23    0.4562489508024486
#>     Attrib V24    0.28093323835265066
#>     Attrib V25    -0.15235234128237082
#>     Attrib V26    -0.7090632944422752
#>     Attrib V27    -1.0472177255629431
#>     Attrib V28    0.0621374484206599
#>     Attrib V29    -0.2046561034489934
#>     Attrib V3    -0.2841096260718055
#>     Attrib V30    0.00664149000900169
#>     Attrib V31    -0.8647103077133801
#>     Attrib V32    -0.08531832165330937
#>     Attrib V33    0.32006714163418365
#>     Attrib V34    0.05073135325281291
#>     Attrib V35    0.09024254607224158
#>     Attrib V36    -0.3179468849610933
#>     Attrib V37    -0.9510504253143154
#>     Attrib V38    0.21489356967823514
#>     Attrib V39    0.008074268961188385
#>     Attrib V4    0.3503496930623866
#>     Attrib V40    -0.7103112306392507
#>     Attrib V41    0.0030074764618303463
#>     Attrib V42    0.21712618424676902
#>     Attrib V43    0.4954671769234351
#>     Attrib V44    0.9978566688036783
#>     Attrib V45    0.7007833840823487
#>     Attrib V46    0.10888791347590311
#>     Attrib V47    -0.04578270422435787
#>     Attrib V48    0.043637853432847484
#>     Attrib V49    0.32056964595251836
#>     Attrib V5    -0.04871968580131641
#>     Attrib V50    -0.6815428574153557
#>     Attrib V51    -0.08292773415073651
#>     Attrib V52    0.40918684132916155
#>     Attrib V53    0.3694175560511841
#>     Attrib V54    0.6582480157878383
#>     Attrib V55    0.15665991967262471
#>     Attrib V56    0.20857834537923794
#>     Attrib V57    0.07512394736721317
#>     Attrib V58    0.26166508109045017
#>     Attrib V59    0.6929267376870235
#>     Attrib V6    -0.19168145073849047
#>     Attrib V60    0.6510899112520223
#>     Attrib V7    -0.05033137016055755
#>     Attrib V8    0.1187659343620849
#>     Attrib V9    0.30452006416765787
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.07163328543797617
#>     Attrib V1    1.1227046931240245
#>     Attrib V10    -0.9915349265808946
#>     Attrib V11    -1.157584097828264
#>     Attrib V12    -1.0941724365835963
#>     Attrib V13    -0.6155861635832405
#>     Attrib V14    0.3975397071178871
#>     Attrib V15    0.9566186633692224
#>     Attrib V16    0.49522619348307956
#>     Attrib V17    0.3517440152910597
#>     Attrib V18    -0.0759847608946755
#>     Attrib V19    -0.6274032130336974
#>     Attrib V2    0.10091213814807684
#>     Attrib V20    0.34202051949249557
#>     Attrib V21    0.24688646392038568
#>     Attrib V22    -0.5243157316844865
#>     Attrib V23    -0.9488524969708027
#>     Attrib V24    -0.5271736124667732
#>     Attrib V25    -0.35536062429694865
#>     Attrib V26    -0.24717751620440986
#>     Attrib V27    -0.4618300779761422
#>     Attrib V28    -1.5377440603314825
#>     Attrib V29    -0.09025342242763404
#>     Attrib V3    0.15287531929307746
#>     Attrib V30    -0.3280043867966591
#>     Attrib V31    0.7848487113685368
#>     Attrib V32    -0.3946259908255818
#>     Attrib V33    0.1074867330110841
#>     Attrib V34    0.3313580506263889
#>     Attrib V35    -0.05591117326669564
#>     Attrib V36    0.41326259405733695
#>     Attrib V37    1.4269935503597768
#>     Attrib V38    0.32734891746950434
#>     Attrib V39    -0.2584363903623282
#>     Attrib V4    -0.45202878841284205
#>     Attrib V40    0.4205387547818613
#>     Attrib V41    -0.3904458617417548
#>     Attrib V42    0.03995768553905726
#>     Attrib V43    -0.22732046156431246
#>     Attrib V44    -0.7907908816395804
#>     Attrib V45    -0.6805795700971483
#>     Attrib V46    -0.10870145507314949
#>     Attrib V47    -0.39001343856491855
#>     Attrib V48    -0.9285085847069345
#>     Attrib V49    -1.3766823926936338
#>     Attrib V5    0.14266451843660274
#>     Attrib V50    1.056849897811787
#>     Attrib V51    -0.5145868805826561
#>     Attrib V52    -1.4481977188893769
#>     Attrib V53    -0.20470408381846938
#>     Attrib V54    0.8414782699566024
#>     Attrib V55    0.41030141674257237
#>     Attrib V56    -0.07942603538356757
#>     Attrib V57    0.6062066874714588
#>     Attrib V58    -0.4382248165147145
#>     Attrib V59    0.3445999970970494
#>     Attrib V6    -0.11349988530427894
#>     Attrib V60    -0.07941739896111526
#>     Attrib V7    0.42980394380150794
#>     Attrib V8    -0.20045532149511278
#>     Attrib V9    -1.1936627253866137
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.10607117662378117
#>     Attrib V1    0.33610809873268527
#>     Attrib V10    -0.08976639191276257
#>     Attrib V11    -0.002028942138505044
#>     Attrib V12    0.08869584922468855
#>     Attrib V13    -0.09572529717210182
#>     Attrib V14    0.025460353830777882
#>     Attrib V15    0.07017991751891493
#>     Attrib V16    0.14444875313988906
#>     Attrib V17    -0.1918387428226623
#>     Attrib V18    -0.20046894357671977
#>     Attrib V19    -0.017506729735707577
#>     Attrib V2    0.15110044869594094
#>     Attrib V20    0.08218826587291625
#>     Attrib V21    -9.844795699030817E-4
#>     Attrib V22    -0.22070686447823576
#>     Attrib V23    -0.29049395586085797
#>     Attrib V24    -0.14299802299199693
#>     Attrib V25    -0.2895006461908476
#>     Attrib V26    -0.468586588739899
#>     Attrib V27    -0.4246117409176942
#>     Attrib V28    -0.11020622303354015
#>     Attrib V29    -0.2185449472034534
#>     Attrib V3    -0.03017202573675997
#>     Attrib V30    -0.11641560144062493
#>     Attrib V31    -0.19922391705813491
#>     Attrib V32    -0.01721331237336323
#>     Attrib V33    0.068288008402091
#>     Attrib V34    0.05521372513640189
#>     Attrib V35    0.11494937405232547
#>     Attrib V36    -0.030225828162292506
#>     Attrib V37    -0.16830236336315937
#>     Attrib V38    0.18530261989367344
#>     Attrib V39    0.10653218347269906
#>     Attrib V4    0.22891917099803608
#>     Attrib V40    -0.10060541760185603
#>     Attrib V41    0.019191724172471156
#>     Attrib V42    0.045469298141958915
#>     Attrib V43    0.19752647636265097
#>     Attrib V44    0.244813687931839
#>     Attrib V45    0.13898158854613823
#>     Attrib V46    0.016966771807374416
#>     Attrib V47    -0.08594742938547177
#>     Attrib V48    0.07900310114017493
#>     Attrib V49    0.0689186800133462
#>     Attrib V5    0.029130146266983764
#>     Attrib V50    -0.22127657465612857
#>     Attrib V51    -0.05343032921662013
#>     Attrib V52    0.1507637306000549
#>     Attrib V53    0.282681444649369
#>     Attrib V54    0.5168180262934008
#>     Attrib V55    0.27113246956690495
#>     Attrib V56    0.15516094601127187
#>     Attrib V57    0.3453649668807813
#>     Attrib V58    0.23640253765900426
#>     Attrib V59    0.5676510937836563
#>     Attrib V6    -0.045502139539991486
#>     Attrib V60    0.5334468215808152
#>     Attrib V7    0.013924000719755285
#>     Attrib V8    0.04202279080093468
#>     Attrib V9    0.09929701384969691
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.27498630487615205
#>     Attrib V1    0.3489055249888444
#>     Attrib V10    -0.5087717512041587
#>     Attrib V11    -0.24210671744113899
#>     Attrib V12    0.0854932152607668
#>     Attrib V13    -0.08877674857422742
#>     Attrib V14    -0.01603899693193693
#>     Attrib V15    0.1364449349252382
#>     Attrib V16    0.12002619281186434
#>     Attrib V17    -0.11396830117638396
#>     Attrib V18    -0.08115179676044605
#>     Attrib V19    0.25579325814071036
#>     Attrib V2    0.10866537533671933
#>     Attrib V20    0.3647081198530939
#>     Attrib V21    0.22916999723189826
#>     Attrib V22    0.010981903236770759
#>     Attrib V23    0.043343376521356426
#>     Attrib V24    0.03433109893189986
#>     Attrib V25    -0.20532993145456616
#>     Attrib V26    -0.655255875735099
#>     Attrib V27    -0.9365759641860055
#>     Attrib V28    -0.29944921263587965
#>     Attrib V29    -0.46147799976849563
#>     Attrib V3    -0.05649653124825297
#>     Attrib V30    -0.2556845839471451
#>     Attrib V31    -0.5134749170513246
#>     Attrib V32    -0.030284063534785507
#>     Attrib V33    0.24171149084618979
#>     Attrib V34    0.1306266867610816
#>     Attrib V35    0.15825522323595811
#>     Attrib V36    -0.1940595885184714
#>     Attrib V37    -0.45828726298165573
#>     Attrib V38    0.25278287595489496
#>     Attrib V39    0.10146006190409745
#>     Attrib V4    0.299135941424999
#>     Attrib V40    -0.3904637210403876
#>     Attrib V41    -0.0178140985367715
#>     Attrib V42    0.11948160455083544
#>     Attrib V43    0.3105200494665153
#>     Attrib V44    0.4713639245421967
#>     Attrib V45    0.3539919776271425
#>     Attrib V46    -0.021951437465255394
#>     Attrib V47    -0.08612252958898144
#>     Attrib V48    -0.092800155608253
#>     Attrib V49    0.05985847982370898
#>     Attrib V5    -0.05213369931604454
#>     Attrib V50    -0.41627774537558937
#>     Attrib V51    -0.19581636945926745
#>     Attrib V52    0.22449118271535876
#>     Attrib V53    0.4542706413821061
#>     Attrib V54    0.755799307871085
#>     Attrib V55    0.3150632926104653
#>     Attrib V56    0.31926159884804484
#>     Attrib V57    0.32555282390369394
#>     Attrib V58    0.18670664012914984
#>     Attrib V59    0.7769488913026669
#>     Attrib V6    -0.11750017160966837
#>     Attrib V60    0.5424090036890247
#>     Attrib V7    -0.035210298328817384
#>     Attrib V8    -0.014384170634405787
#>     Attrib V9    -0.005573385220548478
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.18368029966178792
#>     Attrib V1    0.7755805161714024
#>     Attrib V10    -0.681753991657267
#>     Attrib V11    -0.8024595101438632
#>     Attrib V12    -0.8991960116596454
#>     Attrib V13    -0.5065874812439771
#>     Attrib V14    0.29841988294046146
#>     Attrib V15    0.7671319944951785
#>     Attrib V16    0.41169190566840264
#>     Attrib V17    0.4302980922532762
#>     Attrib V18    -0.005633122444307897
#>     Attrib V19    -0.5239827583371165
#>     Attrib V2    0.0951054659906734
#>     Attrib V20    0.1881559909676406
#>     Attrib V21    0.11749682114986351
#>     Attrib V22    -0.39782854182288846
#>     Attrib V23    -0.6669920095890632
#>     Attrib V24    -0.49390105792452577
#>     Attrib V25    -0.32283757045132
#>     Attrib V26    -0.16632587728586293
#>     Attrib V27    -0.29057630915359595
#>     Attrib V28    -1.1864266486477792
#>     Attrib V29    -0.08482031710235188
#>     Attrib V3    0.1583513241560252
#>     Attrib V30    -0.22583696748028614
#>     Attrib V31    0.5986639780536315
#>     Attrib V32    -0.31412427671938775
#>     Attrib V33    -0.009001915819609962
#>     Attrib V34    0.23137467627331387
#>     Attrib V35    -0.03724728103701194
#>     Attrib V36    0.41328795776880006
#>     Attrib V37    1.1260927685705775
#>     Attrib V38    0.17590466943436756
#>     Attrib V39    -0.2594731236404557
#>     Attrib V4    -0.4050633060408788
#>     Attrib V40    0.38107030815195236
#>     Attrib V41    -0.3568022707187002
#>     Attrib V42    -0.011984150526936299
#>     Attrib V43    -0.192802068558061
#>     Attrib V44    -0.6996202812833598
#>     Attrib V45    -0.5457327829621971
#>     Attrib V46    -0.043489661971985394
#>     Attrib V47    -0.2338659156076906
#>     Attrib V48    -0.7499091680518634
#>     Attrib V49    -1.0983277603788508
#>     Attrib V5    0.04014429925137553
#>     Attrib V50    0.9794385868762232
#>     Attrib V51    -0.32476511924475754
#>     Attrib V52    -1.0952666835145999
#>     Attrib V53    -0.34257942199370045
#>     Attrib V54    0.471064795059802
#>     Attrib V55    0.38388562171789614
#>     Attrib V56    -0.039223101237460964
#>     Attrib V57    0.4121093594847137
#>     Attrib V58    -0.2942809079845285
#>     Attrib V59    0.02083511128190358
#>     Attrib V6    -0.023106499299767654
#>     Attrib V60    -0.3129902329992185
#>     Attrib V7    0.3183169869297536
#>     Attrib V8    0.009746707884647423
#>     Attrib V9    -0.8491675700395038
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.40007542970515997
#>     Attrib V1    -0.7284612515614473
#>     Attrib V10    1.1378086808592422
#>     Attrib V11    1.7322775323306905
#>     Attrib V12    1.7490483651187074
#>     Attrib V13    0.9699316644776127
#>     Attrib V14    0.027208539334216617
#>     Attrib V15    -0.8602732587590921
#>     Attrib V16    -0.6273773804778205
#>     Attrib V17    -0.5733455295333862
#>     Attrib V18    -0.3088047680969515
#>     Attrib V19    0.139124884607285
#>     Attrib V2    0.15684945225603025
#>     Attrib V20    -0.7389055373476416
#>     Attrib V21    -0.28824984193697406
#>     Attrib V22    0.41594150905508875
#>     Attrib V23    0.5069411358721935
#>     Attrib V24    0.2941442504411529
#>     Attrib V25    0.37904836682310605
#>     Attrib V26    0.9687258724239523
#>     Attrib V27    1.952439359329108
#>     Attrib V28    2.544672666841938
#>     Attrib V29    1.287326211655399
#>     Attrib V3    0.10306451515874443
#>     Attrib V30    0.7712538019633095
#>     Attrib V31    -0.4577093652413321
#>     Attrib V32    0.24208400530072374
#>     Attrib V33    -0.7552036076194186
#>     Attrib V34    -0.7097576376680781
#>     Attrib V35    -0.15986389339905388
#>     Attrib V36    0.07963765471815436
#>     Attrib V37    -0.08026152756276654
#>     Attrib V38    0.3921153208131157
#>     Attrib V39    1.040217003447367
#>     Attrib V4    0.4873043681203579
#>     Attrib V40    0.35757600277757756
#>     Attrib V41    0.9629520440922467
#>     Attrib V42    -0.21399865669847024
#>     Attrib V43    -0.18607189020868517
#>     Attrib V44    0.2875119346352015
#>     Attrib V45    0.41047876743555795
#>     Attrib V46    -0.02795755550088106
#>     Attrib V47    0.2013518193517471
#>     Attrib V48    1.024471352949008
#>     Attrib V49    1.3541668197264216
#>     Attrib V5    0.11665002944842948
#>     Attrib V50    -0.9870660813155911
#>     Attrib V51    0.48544484178760156
#>     Attrib V52    1.6351728639565601
#>     Attrib V53    0.6106989600202783
#>     Attrib V54    -0.7993119812064229
#>     Attrib V55    -0.42970412045871803
#>     Attrib V56    -0.24686900736584266
#>     Attrib V57    -0.08822525376355751
#>     Attrib V58    0.317470407541139
#>     Attrib V59    0.11731570330943003
#>     Attrib V6    0.3265383355001552
#>     Attrib V60    0.3011291462323723
#>     Attrib V7    -0.4536215480860783
#>     Attrib V8    -0.20039471256363536
#>     Attrib V9    0.9831377320093934
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.19835649962004204
#>     Attrib V1    0.12408152334490435
#>     Attrib V10    -0.03316616300480139
#>     Attrib V11    -0.04760827430570871
#>     Attrib V12    0.04780792417442341
#>     Attrib V13    -0.02186999010420098
#>     Attrib V14    0.07791646388437627
#>     Attrib V15    0.02301479831775502
#>     Attrib V16    0.02150253643584015
#>     Attrib V17    -0.029370596891517577
#>     Attrib V18    -0.1192217625890767
#>     Attrib V19    -0.004012634956631557
#>     Attrib V2    0.1203010966343225
#>     Attrib V20    -0.04200551360570181
#>     Attrib V21    -0.05298585096487527
#>     Attrib V22    -0.08165179785180467
#>     Attrib V23    -0.0667906431465774
#>     Attrib V24    -0.08981680893977122
#>     Attrib V25    -0.07808777135144711
#>     Attrib V26    -0.13502854877765796
#>     Attrib V27    -0.0946002425275617
#>     Attrib V28    0.005473841506522102
#>     Attrib V29    -0.06655143498628036
#>     Attrib V3    0.04363571845208423
#>     Attrib V30    -0.006802330765632788
#>     Attrib V31    -0.06066491955213896
#>     Attrib V32    -0.014230554121515887
#>     Attrib V33    0.0768585944187414
#>     Attrib V34    0.04673832971190866
#>     Attrib V35    0.1553975933540639
#>     Attrib V36    0.14452080083889393
#>     Attrib V37    0.09861438073826966
#>     Attrib V38    0.10227125967684403
#>     Attrib V39    0.12574821660149862
#>     Attrib V4    0.14361625269772688
#>     Attrib V40    0.04214010970697853
#>     Attrib V41    0.05909045671167736
#>     Attrib V42    0.03638441441394469
#>     Attrib V43    0.059375144162576596
#>     Attrib V44    0.047418759189569865
#>     Attrib V45    0.03382511427816664
#>     Attrib V46    0.03689752355687861
#>     Attrib V47    0.053115838793013105
#>     Attrib V48    0.09573114044167984
#>     Attrib V49    0.05200785832218304
#>     Attrib V5    -0.0069831599931142255
#>     Attrib V50    0.017573879339165186
#>     Attrib V51    0.04518894768066204
#>     Attrib V52    0.10390133363091372
#>     Attrib V53    0.06618943278581114
#>     Attrib V54    0.08643660642631049
#>     Attrib V55    0.14295766925696918
#>     Attrib V56    0.11526387267998986
#>     Attrib V57    0.1533605514701134
#>     Attrib V58    0.09760994785626517
#>     Attrib V59    0.14863015935839569
#>     Attrib V6    0.047351621366266805
#>     Attrib V60    0.24272995555276125
#>     Attrib V7    -0.013224021339733811
#>     Attrib V8    0.06327879248829045
#>     Attrib V9    0.048520229168033724
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.4607961135357997
#>     Attrib V1    -0.2822252073580413
#>     Attrib V10    0.09169969390357717
#>     Attrib V11    0.273342883681123
#>     Attrib V12    0.4503392023376444
#>     Attrib V13    0.05460408537367452
#>     Attrib V14    -0.496799312879331
#>     Attrib V15    -0.45053217581858646
#>     Attrib V16    -0.09377865590135835
#>     Attrib V17    -0.23868754932862088
#>     Attrib V18    0.1494836425896963
#>     Attrib V19    0.7937044727806438
#>     Attrib V2    -0.18354809200241645
#>     Attrib V20    0.43832056418732407
#>     Attrib V21    0.4403412953094424
#>     Attrib V22    0.5304220196776642
#>     Attrib V23    0.7117260278287718
#>     Attrib V24    0.5229007829993991
#>     Attrib V25    0.14974450922697657
#>     Attrib V26    -0.3647774509835269
#>     Attrib V27    -0.9195216842159211
#>     Attrib V28    0.25289465436779646
#>     Attrib V29    -0.5663296506773227
#>     Attrib V3    -0.4367959229910697
#>     Attrib V30    -0.11343590524828302
#>     Attrib V31    -1.0886069592228518
#>     Attrib V32    0.07962054392925927
#>     Attrib V33    0.3289202040479121
#>     Attrib V34    0.17323944419326032
#>     Attrib V35    0.43964028169800595
#>     Attrib V36    -0.07651778431805928
#>     Attrib V37    -1.1001567917329353
#>     Attrib V38    0.17865980317844357
#>     Attrib V39    0.1339579655894867
#>     Attrib V4    0.38736350136637393
#>     Attrib V40    -0.8467298418936279
#>     Attrib V41    0.0048020972157638555
#>     Attrib V42    0.10761399561321122
#>     Attrib V43    0.4796750257429883
#>     Attrib V44    1.2327501481662553
#>     Attrib V45    0.9301148906677524
#>     Attrib V46    0.0652805620213129
#>     Attrib V47    0.034539723600475025
#>     Attrib V48    0.28260489836214
#>     Attrib V49    0.6093892658829978
#>     Attrib V5    -0.2014174871772168
#>     Attrib V50    -0.847921295631217
#>     Attrib V51    0.0011630504998297948
#>     Attrib V52    0.7324007158414191
#>     Attrib V53    0.4238765275288369
#>     Attrib V54    0.5358864596628482
#>     Attrib V55    0.08687381106188713
#>     Attrib V56    0.06330884189893804
#>     Attrib V57    -0.11596208747955798
#>     Attrib V58    0.2712260221321654
#>     Attrib V59    0.4700651738416673
#>     Attrib V6    -0.14598561389265965
#>     Attrib V60    0.5922681047784273
#>     Attrib V7    -0.14164744697628348
#>     Attrib V8    0.22946522164548358
#>     Attrib V9    0.6240087316493466
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.0824143498658669
#>     Attrib V1    1.02159003624116
#>     Attrib V10    -0.9912135188912398
#>     Attrib V11    -1.1021702668320907
#>     Attrib V12    -1.1331848774385835
#>     Attrib V13    -0.596712583998285
#>     Attrib V14    0.37358256233705084
#>     Attrib V15    0.9620586688544803
#>     Attrib V16    0.520968397606102
#>     Attrib V17    0.2706586366459637
#>     Attrib V18    -0.04769539557386934
#>     Attrib V19    -0.57651795869971
#>     Attrib V2    0.0921177328327479
#>     Attrib V20    0.35015455275569013
#>     Attrib V21    0.2300411204544692
#>     Attrib V22    -0.4475043108222933
#>     Attrib V23    -0.8733007254752935
#>     Attrib V24    -0.5081740180074327
#>     Attrib V25    -0.43053372689054425
#>     Attrib V26    -0.33935078966831256
#>     Attrib V27    -0.5499717324900871
#>     Attrib V28    -1.4832937828039061
#>     Attrib V29    -0.07587362411667171
#>     Attrib V3    0.1617874366234298
#>     Attrib V30    -0.28173343027529507
#>     Attrib V31    0.6146614111181276
#>     Attrib V32    -0.3249539251221667
#>     Attrib V33    0.10952960610946565
#>     Attrib V34    0.32099925147008207
#>     Attrib V35    -0.038463467087429
#>     Attrib V36    0.3548212074817866
#>     Attrib V37    1.158845350201204
#>     Attrib V38    0.2992747671347631
#>     Attrib V39    -0.2900899397998047
#>     Attrib V4    -0.4200685580795587
#>     Attrib V40    0.2683413664917643
#>     Attrib V41    -0.41684359820208533
#>     Attrib V42    0.09894031150674067
#>     Attrib V43    -0.18481277091779597
#>     Attrib V44    -0.705731242298182
#>     Attrib V45    -0.5017261311724502
#>     Attrib V46    -0.08616593676864984
#>     Attrib V47    -0.3827638121502795
#>     Attrib V48    -0.8678020731022138
#>     Attrib V49    -1.2373005739703327
#>     Attrib V5    0.05353627380092075
#>     Attrib V50    0.9806856295641411
#>     Attrib V51    -0.5482401005206237
#>     Attrib V52    -1.2834891612526682
#>     Attrib V53    -0.21221784715919592
#>     Attrib V54    0.8233250202919035
#>     Attrib V55    0.43164390830379407
#>     Attrib V56    -0.03837759622125972
#>     Attrib V57    0.4750214736510735
#>     Attrib V58    -0.3396719071458515
#>     Attrib V59    0.2956118742444801
#>     Attrib V6    -0.14002458146738933
#>     Attrib V60    -0.23254213031650317
#>     Attrib V7    0.36268340425072054
#>     Attrib V8    -0.07262481079100631
#>     Attrib V9    -1.0809293755212128
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.2966784941245221
#>     Attrib V1    0.14965385957279836
#>     Attrib V10    -0.24050498962971534
#>     Attrib V11    -0.012237140484958142
#>     Attrib V12    0.13534445606507792
#>     Attrib V13    -0.12009507710238489
#>     Attrib V14    -0.03975273103658382
#>     Attrib V15    0.03924514881557485
#>     Attrib V16    0.0786205013894939
#>     Attrib V17    -0.19896757215555871
#>     Attrib V18    -0.09477747824139979
#>     Attrib V19    0.20573971861410212
#>     Attrib V2    0.03674324189391635
#>     Attrib V20    0.2837859530924092
#>     Attrib V21    0.21208916052570448
#>     Attrib V22    0.036876401870475285
#>     Attrib V23    -0.023579668795298485
#>     Attrib V24    0.06199975443863207
#>     Attrib V25    -0.14521398960640675
#>     Attrib V26    -0.5664152975022226
#>     Attrib V27    -0.63683823795386
#>     Attrib V28    -0.0058140468857408876
#>     Attrib V29    -0.21765830553919768
#>     Attrib V3    -0.09927627895964647
#>     Attrib V30    -0.1427495232317725
#>     Attrib V31    -0.4405970955353698
#>     Attrib V32    0.050321406106397466
#>     Attrib V33    0.1783997807086244
#>     Attrib V34    0.04307958318692364
#>     Attrib V35    0.09611326450911141
#>     Attrib V36    -0.20379520923129293
#>     Attrib V37    -0.4841262986249121
#>     Attrib V38    0.1845984533766819
#>     Attrib V39    0.11261615617671615
#>     Attrib V4    0.21743946967905353
#>     Attrib V40    -0.30990276678024337
#>     Attrib V41    0.07782641820332886
#>     Attrib V42    0.08695692043412889
#>     Attrib V43    0.2634761421709527
#>     Attrib V44    0.4164306403084321
#>     Attrib V45    0.38351654459404716
#>     Attrib V46    -0.023255598012835388
#>     Attrib V47    -0.050708048517536845
#>     Attrib V48    0.06629375706020804
#>     Attrib V49    0.17459880041604925
#>     Attrib V5    -0.06927931201511155
#>     Attrib V50    -0.408679730670043
#>     Attrib V51    -0.08188107372262485
#>     Attrib V52    0.28537272564003013
#>     Attrib V53    0.3747092618174004
#>     Attrib V54    0.5392881592984964
#>     Attrib V55    0.21960252368817998
#>     Attrib V56    0.1569863087495254
#>     Attrib V57    0.2687293780622866
#>     Attrib V58    0.1822874862429898
#>     Attrib V59    0.6220018588380348
#>     Attrib V6    -0.09974503864946027
#>     Attrib V60    0.5262888886583115
#>     Attrib V7    -0.05297662028156354
#>     Attrib V8    0.09365491858881132
#>     Attrib V9    0.12771190797751675
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.3918570736423167
#>     Attrib V1    0.3869639321901371
#>     Attrib V10    0.04060632469456542
#>     Attrib V11    -0.14195033158163128
#>     Attrib V12    -0.4161714926686314
#>     Attrib V13    -0.21038436939504393
#>     Attrib V14    0.25819516825581973
#>     Attrib V15    0.6049533198390389
#>     Attrib V16    0.5889469293086412
#>     Attrib V17    0.8160128243474517
#>     Attrib V18    0.41741831627671133
#>     Attrib V19    -0.29144425881449576
#>     Attrib V2    0.13653554109863733
#>     Attrib V20    -0.1577900033310642
#>     Attrib V21    -0.027616972550197606
#>     Attrib V22    -0.0902180401633925
#>     Attrib V23    -0.306733977486952
#>     Attrib V24    -0.34052548899659363
#>     Attrib V25    -0.039327268987388066
#>     Attrib V26    0.023386631490915716
#>     Attrib V27    -0.11507830088514374
#>     Attrib V28    -0.7236558593534789
#>     Attrib V29    0.060030768226880964
#>     Attrib V3    0.15522459018805607
#>     Attrib V30    0.2911533352293385
#>     Attrib V31    0.6968505127710022
#>     Attrib V32    -0.20969206324904452
#>     Attrib V33    0.0012043802221019216
#>     Attrib V34    0.1719324116184459
#>     Attrib V35    0.07209568881147516
#>     Attrib V36    0.46105389165011296
#>     Attrib V37    0.9790338939336672
#>     Attrib V38    -0.05465409324400309
#>     Attrib V39    -0.07809763647529165
#>     Attrib V4    -0.17970807587671297
#>     Attrib V40    0.45073497562373904
#>     Attrib V41    -0.14393110224018504
#>     Attrib V42    -0.045585787413592385
#>     Attrib V43    -0.3157970227421928
#>     Attrib V44    -0.559573361187242
#>     Attrib V45    -0.3364405961564928
#>     Attrib V46    0.022322851558366254
#>     Attrib V47    -0.05088984535320205
#>     Attrib V48    -0.33248663443308873
#>     Attrib V49    -0.5735161945107258
#>     Attrib V5    0.11759684548656742
#>     Attrib V50    0.6185377107528454
#>     Attrib V51    0.03130232659504616
#>     Attrib V52    -0.6084805915401323
#>     Attrib V53    -0.4551099186215184
#>     Attrib V54    0.03541953280948946
#>     Attrib V55    0.22540237851616918
#>     Attrib V56    0.03336675573186155
#>     Attrib V57    0.04580103139830504
#>     Attrib V58    -0.10275414531461251
#>     Attrib V59    -0.17545166597706124
#>     Attrib V6    0.2087781709304215
#>     Attrib V60    -0.17730168710828048
#>     Attrib V7    0.3860774481192004
#>     Attrib V8    0.3191403027753178
#>     Attrib V9    -0.2657410234542147
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.2226218599459018
#>     Attrib V1    0.33898818684660853
#>     Attrib V10    -0.5048392537401635
#>     Attrib V11    -0.30524064595799594
#>     Attrib V12    -0.05488945432324637
#>     Attrib V13    -0.12362940831644956
#>     Attrib V14    -0.008794006543329293
#>     Attrib V15    0.1844277118657865
#>     Attrib V16    0.18430590318701634
#>     Attrib V17    -0.13006700947394265
#>     Attrib V18    -0.07045171515332935
#>     Attrib V19    0.2550099232181483
#>     Attrib V2    0.1845288070191033
#>     Attrib V20    0.43718666521072336
#>     Attrib V21    0.22910969632487393
#>     Attrib V22    0.061977382927735206
#>     Attrib V23    0.07919658186004216
#>     Attrib V24    0.10873900481515894
#>     Attrib V25    -0.23523147874053044
#>     Attrib V26    -0.7315494402484521
#>     Attrib V27    -1.0453668904907514
#>     Attrib V28    -0.35621903494343793
#>     Attrib V29    -0.5056182867866461
#>     Attrib V3    -0.1336210523287731
#>     Attrib V30    -0.2946599188680617
#>     Attrib V31    -0.5048423677734645
#>     Attrib V32    -0.02868024670985047
#>     Attrib V33    0.3135887640621547
#>     Attrib V34    0.17739944888629547
#>     Attrib V35    0.12513644901043566
#>     Attrib V36    -0.29473878616142146
#>     Attrib V37    -0.5969803433250507
#>     Attrib V38    0.2515857443192812
#>     Attrib V39    0.03304882822337493
#>     Attrib V4    0.27991361049623337
#>     Attrib V40    -0.40318382430160393
#>     Attrib V41    -0.037748350232007115
#>     Attrib V42    0.15206685901056513
#>     Attrib V43    0.30812263264957085
#>     Attrib V44    0.5181464867835892
#>     Attrib V45    0.30731420481914196
#>     Attrib V46    -0.01046399608933208
#>     Attrib V47    -0.10278187400439302
#>     Attrib V48    -0.03754592613592268
#>     Attrib V49    0.07191795012249413
#>     Attrib V5    -0.07559499660031908
#>     Attrib V50    -0.4017690918603394
#>     Attrib V51    -0.19110062426675775
#>     Attrib V52    0.16660283217539426
#>     Attrib V53    0.45053864681483047
#>     Attrib V54    0.8295817164012151
#>     Attrib V55    0.32124612153550003
#>     Attrib V56    0.26884347490257965
#>     Attrib V57    0.3667237008076876
#>     Attrib V58    0.16425737750766745
#>     Attrib V59    0.7400739964253941
#>     Attrib V6    -0.15742901366515097
#>     Attrib V60    0.5900035279522697
#>     Attrib V7    -0.03272282125597732
#>     Attrib V8    0.02111584112917004
#>     Attrib V9    0.04324940793492512
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.1138701467161437
#>     Attrib V1    0.17997838857479426
#>     Attrib V10    -0.0651788168240774
#>     Attrib V11    0.014096439068140903
#>     Attrib V12    0.047666018177037306
#>     Attrib V13    -0.05005642459742549
#>     Attrib V14    0.07658866020204969
#>     Attrib V15    0.06485760149671223
#>     Attrib V16    0.06275243964657949
#>     Attrib V17    -0.13156933124061154
#>     Attrib V18    -0.07847593973769765
#>     Attrib V19    -0.09029382718428998
#>     Attrib V2    0.09845671162469223
#>     Attrib V20    -0.021708998444223984
#>     Attrib V21    -0.03819222655496419
#>     Attrib V22    -0.11425890901597265
#>     Attrib V23    -0.07591470768783297
#>     Attrib V24    -0.10843620630283181
#>     Attrib V25    -0.1664397561936625
#>     Attrib V26    -0.1851802769825903
#>     Attrib V27    -0.15915474190308915
#>     Attrib V28    0.02618348534243201
#>     Attrib V29    -0.10156843411198432
#>     Attrib V3    0.08625617829227303
#>     Attrib V30    0.017830725462759864
#>     Attrib V31    -0.11121991908789874
#>     Attrib V32    -0.018193599616304353
#>     Attrib V33    0.06114637543159982
#>     Attrib V34    0.058964934170578215
#>     Attrib V35    0.11905138659488583
#>     Attrib V36    0.12023651339786028
#>     Attrib V37    -0.0019481106076072506
#>     Attrib V38    0.09278243633912382
#>     Attrib V39    0.12438569516353631
#>     Attrib V4    0.11909941384998728
#>     Attrib V40    -0.017272972305201483
#>     Attrib V41    0.03218331907233686
#>     Attrib V42    0.04702087860789196
#>     Attrib V43    0.026437388016101765
#>     Attrib V44    0.09622054077850745
#>     Attrib V45    0.11170907370880188
#>     Attrib V46    0.06073010411861625
#>     Attrib V47    0.061498948991374036
#>     Attrib V48    0.044627526364732266
#>     Attrib V49    0.12078075449546326
#>     Attrib V5    0.03386002387194372
#>     Attrib V50    -0.0616043278172703
#>     Attrib V51    0.07759109232878679
#>     Attrib V52    0.1853646719693032
#>     Attrib V53    0.13484783573386558
#>     Attrib V54    0.12894283247251703
#>     Attrib V55    0.1495387981331895
#>     Attrib V56    0.09494257233218294
#>     Attrib V57    0.15262704181618986
#>     Attrib V58    0.17208657618642667
#>     Attrib V59    0.19865133472092336
#>     Attrib V6    0.020251241699598826
#>     Attrib V60    0.25037337753672034
#>     Attrib V7    0.01682143093217432
#>     Attrib V8    0.10198471067237656
#>     Attrib V9    0.1094543119297598
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
