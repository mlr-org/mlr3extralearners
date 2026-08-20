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
#>     Threshold    -0.11540306936001156
#>     Node 2    2.165677427596026
#>     Node 3    1.4417738763485597
#>     Node 4    1.268376208098838
#>     Node 5    -2.3076954317704734
#>     Node 6    1.3024970010838304
#>     Node 7    2.6354943195015386
#>     Node 8    1.1654750158771945
#>     Node 9    3.5156822062096618
#>     Node 10    -1.4463400620496898
#>     Node 11    1.3535717018949902
#>     Node 12    1.5646303251960858
#>     Node 13    1.0053348699336826
#>     Node 14    1.2597734720747744
#>     Node 15    -2.460582316467376
#>     Node 16    0.4537254487333856
#>     Node 17    0.6173817492868149
#>     Node 18    0.08445068432428504
#>     Node 19    2.147571398858584
#>     Node 20    1.2124553967003404
#>     Node 21    -2.6866080856646013
#>     Node 22    1.1846932806240438
#>     Node 23    1.4381395230708625
#>     Node 24    0.11093380622862707
#>     Node 25    4.3176516680118056
#>     Node 26    -0.31945288996399424
#>     Node 27    1.5952185567132806
#>     Node 28    -3.8102372273480145
#>     Node 29    1.1875261016667875
#>     Node 30    0.6229036061144044
#>     Node 31    1.0265540167927452
#>     Node 32    0.6400159139692503
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.15860543937723595
#>     Node 2    -2.210667867854523
#>     Node 3    -1.431272843254391
#>     Node 4    -1.2240592668388508
#>     Node 5    2.323298664614022
#>     Node 6    -1.2910734899610754
#>     Node 7    -2.615588517327107
#>     Node 8    -1.2021183474954298
#>     Node 9    -3.5087734020102124
#>     Node 10    1.3916933121055473
#>     Node 11    -1.326218151511416
#>     Node 12    -1.631209304152478
#>     Node 13    -0.961565969962346
#>     Node 14    -1.2000047582903852
#>     Node 15    2.45100625592003
#>     Node 16    -0.4749479822963367
#>     Node 17    -0.5913091946169866
#>     Node 18    -0.03892509915736488
#>     Node 19    -2.1286994586272674
#>     Node 20    -1.2040695053584805
#>     Node 21    2.7431097291059996
#>     Node 22    -1.2495688718047717
#>     Node 23    -1.49741847880012
#>     Node 24    -0.12049378154678964
#>     Node 25    -4.30327050778846
#>     Node 26    0.2547264249662081
#>     Node 27    -1.6311621424694627
#>     Node 28    3.7849741762855618
#>     Node 29    -1.2211387981486708
#>     Node 30    -0.5529529949971789
#>     Node 31    -0.9858927881760873
#>     Node 32    -0.6692075579242803
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.4803723651949335
#>     Attrib V1    -0.25470580396966236
#>     Attrib V10    0.6602598925942809
#>     Attrib V11    0.439445692481968
#>     Attrib V12    0.6246156980631745
#>     Attrib V13    -0.03767795234934453
#>     Attrib V14    -0.6032301140614742
#>     Attrib V15    -0.20245582716983687
#>     Attrib V16    -0.2030374549739941
#>     Attrib V17    -0.21335586829770622
#>     Attrib V18    -0.048013201404390464
#>     Attrib V19    0.20695663130478903
#>     Attrib V2    -0.1863999367542696
#>     Attrib V20    0.26286746839647246
#>     Attrib V21    0.1960806426035305
#>     Attrib V22    0.6039255608071491
#>     Attrib V23    0.7356789353931866
#>     Attrib V24    -0.034466176541528344
#>     Attrib V25    -0.34306785830225967
#>     Attrib V26    0.06867352892687224
#>     Attrib V27    0.23664932583851672
#>     Attrib V28    0.5030520265514049
#>     Attrib V29    0.5131243992415667
#>     Attrib V3    -0.08651408697339194
#>     Attrib V30    0.25349599512801596
#>     Attrib V31    -0.859701372247133
#>     Attrib V32    0.2932453414367367
#>     Attrib V33    0.24442252599952236
#>     Attrib V34    -0.24235429236936615
#>     Attrib V35    -0.5504881496507282
#>     Attrib V36    -1.3565285180472388
#>     Attrib V37    -0.7892106763367281
#>     Attrib V38    -0.19451177165520966
#>     Attrib V39    -0.02057106409365609
#>     Attrib V4    0.5889404066938904
#>     Attrib V40    -0.006950949263036558
#>     Attrib V41    0.945700551758704
#>     Attrib V42    0.830349765319457
#>     Attrib V43    0.7699659985910396
#>     Attrib V44    -0.25123732602002985
#>     Attrib V45    -0.11575087455411877
#>     Attrib V46    0.11199923203413328
#>     Attrib V47    0.07116091793141723
#>     Attrib V48    0.5608122424876462
#>     Attrib V49    0.394314265568648
#>     Attrib V5    0.33889907884099707
#>     Attrib V50    -0.8137879217799806
#>     Attrib V51    0.2713544663844562
#>     Attrib V52    0.5184940698509514
#>     Attrib V53    0.399503769128364
#>     Attrib V54    0.2065479570624019
#>     Attrib V55    -0.8100566125451648
#>     Attrib V56    -0.18258453060473193
#>     Attrib V57    0.3432753416638524
#>     Attrib V58    0.14174889069923405
#>     Attrib V59    0.49879245365477876
#>     Attrib V6    0.099664354083582
#>     Attrib V60    0.4565757208091687
#>     Attrib V7    -0.7765847545766291
#>     Attrib V8    0.14390184577427012
#>     Attrib V9    0.5323909271692632
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.31991308039027316
#>     Attrib V1    -0.03212682723893324
#>     Attrib V10    0.3114380826088608
#>     Attrib V11    0.11567584346865382
#>     Attrib V12    0.20894642602664265
#>     Attrib V13    -0.10731800956022379
#>     Attrib V14    -0.28387323721913715
#>     Attrib V15    0.09432221070998217
#>     Attrib V16    -0.08656216372624788
#>     Attrib V17    -0.11089508990509059
#>     Attrib V18    -0.10940157807626724
#>     Attrib V19    0.17173578721147376
#>     Attrib V2    -0.12717159924671256
#>     Attrib V20    0.40222570744239494
#>     Attrib V21    0.35171149449389266
#>     Attrib V22    0.402884566972012
#>     Attrib V23    0.1913925921785103
#>     Attrib V24    -0.28940334235759807
#>     Attrib V25    -0.4151673955509362
#>     Attrib V26    -0.3577967450148244
#>     Attrib V27    -0.3587930072096366
#>     Attrib V28    -0.07933296726859775
#>     Attrib V29    -0.02567162744052718
#>     Attrib V3    -0.048152032223024395
#>     Attrib V30    0.025346760525068134
#>     Attrib V31    -0.8891838039295001
#>     Attrib V32    0.05743843890165574
#>     Attrib V33    0.28525924933139274
#>     Attrib V34    -0.06998821366651362
#>     Attrib V35    -0.1405163966371929
#>     Attrib V36    -0.7152081302144403
#>     Attrib V37    -0.5567235344749348
#>     Attrib V38    0.002876994235952282
#>     Attrib V39    0.20494339236810455
#>     Attrib V4    0.3371241428734577
#>     Attrib V40    -0.0639783913922368
#>     Attrib V41    0.2364443094085918
#>     Attrib V42    0.3367129907321517
#>     Attrib V43    0.37840953955225215
#>     Attrib V44    -0.2014871550500063
#>     Attrib V45    0.02179257217431265
#>     Attrib V46    0.08063466132941391
#>     Attrib V47    0.08302797781172865
#>     Attrib V48    0.3831506252745916
#>     Attrib V49    0.16736881613464089
#>     Attrib V5    -0.031189533145364136
#>     Attrib V50    -0.4364048015761573
#>     Attrib V51    0.007002329869493464
#>     Attrib V52    0.08767860270428515
#>     Attrib V53    -0.007607612472692265
#>     Attrib V54    0.48704187178017166
#>     Attrib V55    -0.31326908823648625
#>     Attrib V56    -0.05459293692587219
#>     Attrib V57    0.38437192010227517
#>     Attrib V58    0.20282896929992625
#>     Attrib V59    0.3850289917791435
#>     Attrib V6    -0.16889774967736335
#>     Attrib V60    0.3017624078432878
#>     Attrib V7    -0.3021881781107705
#>     Attrib V8    0.22273856591440094
#>     Attrib V9    0.2180486586294714
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.30339687772928015
#>     Attrib V1    0.01120051045327933
#>     Attrib V10    0.467644188016284
#>     Attrib V11    0.2903969222156806
#>     Attrib V12    0.233095144861634
#>     Attrib V13    -0.08405581423479234
#>     Attrib V14    -0.2652267959052593
#>     Attrib V15    -0.006744784452927286
#>     Attrib V16    -0.08987646843050144
#>     Attrib V17    -0.255532760386516
#>     Attrib V18    -0.3893782109546399
#>     Attrib V19    -0.26407191269881486
#>     Attrib V2    -0.0696816534491007
#>     Attrib V20    -0.08628802786060484
#>     Attrib V21    7.095471821801137E-4
#>     Attrib V22    -0.07062121530262257
#>     Attrib V23    -0.12825702883793666
#>     Attrib V24    -0.3541608149017441
#>     Attrib V25    -0.3019373921172964
#>     Attrib V26    0.04122008988994111
#>     Attrib V27    0.18230704794356273
#>     Attrib V28    0.372998511760385
#>     Attrib V29    0.20126512339490332
#>     Attrib V3    -0.12928132198567055
#>     Attrib V30    0.2304445394891341
#>     Attrib V31    -0.333249002100607
#>     Attrib V32    0.27859738344511237
#>     Attrib V33    0.32287087377856494
#>     Attrib V34    0.1346009935510144
#>     Attrib V35    0.045958808596374245
#>     Attrib V36    -0.3930910450911742
#>     Attrib V37    -0.17682186420773266
#>     Attrib V38    -0.0023117378539012387
#>     Attrib V39    0.08958568868911529
#>     Attrib V4    0.2906246463246321
#>     Attrib V40    -0.001143377771676935
#>     Attrib V41    0.22374297771910664
#>     Attrib V42    0.08452740365797105
#>     Attrib V43    0.008563415946762543
#>     Attrib V44    -0.2144184311932822
#>     Attrib V45    0.2211897136145057
#>     Attrib V46    0.13195941609995487
#>     Attrib V47    0.051535110102709926
#>     Attrib V48    0.5483146419235134
#>     Attrib V49    0.4637524073814086
#>     Attrib V5    0.07482710976811228
#>     Attrib V50    -0.11383167672715606
#>     Attrib V51    0.15377987396005613
#>     Attrib V52    0.20336040849100687
#>     Attrib V53    0.044060435313359674
#>     Attrib V54    0.0899207813768718
#>     Attrib V55    -0.25787071700858033
#>     Attrib V56    -0.2361855735047348
#>     Attrib V57    0.33408874477090605
#>     Attrib V58    0.04249231130325851
#>     Attrib V59    0.12406699538708357
#>     Attrib V6    -0.03763700274290882
#>     Attrib V60    0.2517590284937586
#>     Attrib V7    -0.05877765668476197
#>     Attrib V8    0.0445509821042679
#>     Attrib V9    0.38765348634384833
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.19265605929688526
#>     Attrib V1    0.07483386607701195
#>     Attrib V10    -0.31540456460926414
#>     Attrib V11    -0.07028031052607547
#>     Attrib V12    -0.17631713422641632
#>     Attrib V13    0.28683435342625374
#>     Attrib V14    0.3966608346178943
#>     Attrib V15    -0.012726269241345655
#>     Attrib V16    0.11331666358326936
#>     Attrib V17    0.0018647770035238242
#>     Attrib V18    -0.12038779990391431
#>     Attrib V19    -0.3018094711925714
#>     Attrib V2    0.46148606436219
#>     Attrib V20    -0.6213429721792645
#>     Attrib V21    -0.6181096716332597
#>     Attrib V22    -0.6861716113980011
#>     Attrib V23    -0.34572272406468385
#>     Attrib V24    0.37481475842387796
#>     Attrib V25    0.8163419510363444
#>     Attrib V26    0.855995702097247
#>     Attrib V27    0.7927745944200557
#>     Attrib V28    0.3044610711856382
#>     Attrib V29    -0.06852798316579914
#>     Attrib V3    -0.07197250191888063
#>     Attrib V30    0.12612829699522204
#>     Attrib V31    1.4915227432237743
#>     Attrib V32    0.12527796970973668
#>     Attrib V33    -0.3220680851285887
#>     Attrib V34    0.22229115136279856
#>     Attrib V35    0.47617951778887907
#>     Attrib V36    1.1788423570685458
#>     Attrib V37    1.0038754622014676
#>     Attrib V38    -0.14528215801966338
#>     Attrib V39    -0.3494921670033825
#>     Attrib V4    -0.6393568892017717
#>     Attrib V40    0.26498207524371165
#>     Attrib V41    -0.20572205652789555
#>     Attrib V42    -0.6621593057519888
#>     Attrib V43    -0.8531403219634327
#>     Attrib V44    0.06319466899571667
#>     Attrib V45    -0.05973185413050211
#>     Attrib V46    -0.17286614315697352
#>     Attrib V47    -0.17641386577484428
#>     Attrib V48    -0.5522211594927131
#>     Attrib V49    -0.14521088271738208
#>     Attrib V5    -0.007046370704784296
#>     Attrib V50    0.7179514043769876
#>     Attrib V51    -0.09678315045533112
#>     Attrib V52    -0.10570292809941047
#>     Attrib V53    -0.09119517871931379
#>     Attrib V54    -0.8052855860119157
#>     Attrib V55    0.5825954344260605
#>     Attrib V56    0.01770377886880462
#>     Attrib V57    -0.650065860393675
#>     Attrib V58    -0.4559780860809334
#>     Attrib V59    -0.68111523640932
#>     Attrib V6    0.2364140947158194
#>     Attrib V60    -0.5063128109684195
#>     Attrib V7    0.4755054043630802
#>     Attrib V8    -0.36059926422595534
#>     Attrib V9    -0.3018733077322922
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.2557379540304893
#>     Attrib V1    0.0736485677784614
#>     Attrib V10    0.12574797084800482
#>     Attrib V11    0.016669376161425085
#>     Attrib V12    0.12040184611500533
#>     Attrib V13    -0.18980445662381068
#>     Attrib V14    -0.19718010233525948
#>     Attrib V15    0.10254101107850748
#>     Attrib V16    0.041899729693710384
#>     Attrib V17    -0.03554402578991842
#>     Attrib V18    0.026773551610138998
#>     Attrib V19    0.10969909025890345
#>     Attrib V2    -0.12055975215569004
#>     Attrib V20    0.3960432477134111
#>     Attrib V21    0.39188303802796576
#>     Attrib V22    0.26076676078590366
#>     Attrib V23    0.06394975788358617
#>     Attrib V24    -0.2266573555514732
#>     Attrib V25    -0.3516867767261155
#>     Attrib V26    -0.42046734113836043
#>     Attrib V27    -0.39743453763196085
#>     Attrib V28    -0.22764135235225003
#>     Attrib V29    -0.11054884512315227
#>     Attrib V3    -0.016703730629800285
#>     Attrib V30    -0.08583630434903908
#>     Attrib V31    -0.8606506972163842
#>     Attrib V32    -0.0739788814084176
#>     Attrib V33    0.22756125191007795
#>     Attrib V34    -0.021808238926342153
#>     Attrib V35    -0.03785098387707669
#>     Attrib V36    -0.5096126079723339
#>     Attrib V37    -0.4166861508328479
#>     Attrib V38    0.06927178939691936
#>     Attrib V39    0.17095410710918413
#>     Attrib V4    0.34227537679695513
#>     Attrib V40    -0.11435267162871197
#>     Attrib V41    0.1357973361809316
#>     Attrib V42    0.24712705171008525
#>     Attrib V43    0.28138529825015013
#>     Attrib V44    -0.17272241306754207
#>     Attrib V45    0.057599533569522236
#>     Attrib V46    0.08282762094419122
#>     Attrib V47    0.01942538616035262
#>     Attrib V48    0.2915085552228858
#>     Attrib V49    0.08629169473060966
#>     Attrib V5    -0.04117437996289865
#>     Attrib V50    -0.24709948610352847
#>     Attrib V51    0.026610035631402726
#>     Attrib V52    -0.02912857642254463
#>     Attrib V53    0.07354959897393701
#>     Attrib V54    0.5020202702086951
#>     Attrib V55    -0.2297282108908998
#>     Attrib V56    0.03403690583314704
#>     Attrib V57    0.4346303881715987
#>     Attrib V58    0.1712740586410194
#>     Attrib V59    0.4473562776382957
#>     Attrib V6    -0.08842559907090976
#>     Attrib V60    0.4061486781065996
#>     Attrib V7    -0.11989727885331869
#>     Attrib V8    0.2021850353770568
#>     Attrib V9    0.18715490882306277
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.7330295657541641
#>     Attrib V1    0.23692612997517012
#>     Attrib V10    1.125043392303899
#>     Attrib V11    1.04313342296466
#>     Attrib V12    0.6959666348390285
#>     Attrib V13    0.08518529121074114
#>     Attrib V14    -0.6941270135915077
#>     Attrib V15    -0.1684496365086005
#>     Attrib V16    0.040132970058234865
#>     Attrib V17    -0.5523547485902297
#>     Attrib V18    -0.6469179015393635
#>     Attrib V19    -0.17861130019017668
#>     Attrib V2    0.4417579325365618
#>     Attrib V20    0.05417589347612682
#>     Attrib V21    0.19799869167734252
#>     Attrib V22    0.33809859694686273
#>     Attrib V23    0.4360040171631384
#>     Attrib V24    0.022914158574821698
#>     Attrib V25    9.00827042270135E-4
#>     Attrib V26    0.9539067839594907
#>     Attrib V27    0.9584045250620581
#>     Attrib V28    0.9154383075995899
#>     Attrib V29    0.5180773707434622
#>     Attrib V3    -0.3866317385560845
#>     Attrib V30    0.5848798608709522
#>     Attrib V31    0.001526557307770629
#>     Attrib V32    0.5380285458188867
#>     Attrib V33    0.1785729749198001
#>     Attrib V34    0.05801336094617079
#>     Attrib V35    -0.12142835473308045
#>     Attrib V36    -0.8226837709979253
#>     Attrib V37    -0.12235359960160629
#>     Attrib V38    -0.08071086999290118
#>     Attrib V39    0.015205233116664954
#>     Attrib V4    0.28473422080115285
#>     Attrib V40    0.17300533727088607
#>     Attrib V41    0.8106505867404017
#>     Attrib V42    0.03839123172691488
#>     Attrib V43    -0.14333205951080832
#>     Attrib V44    -0.4794331931094625
#>     Attrib V45    0.3047101832954583
#>     Attrib V46    0.4117597696024565
#>     Attrib V47    0.2218667230347102
#>     Attrib V48    0.7232504866747285
#>     Attrib V49    0.8615273759275294
#>     Attrib V5    0.1496751518861973
#>     Attrib V50    -0.234912047121556
#>     Attrib V51    0.42183487835680517
#>     Attrib V52    0.7035022721913458
#>     Attrib V53    0.2982888747551055
#>     Attrib V54    -0.1360711493499235
#>     Attrib V55    -0.30419959496880544
#>     Attrib V56    -0.44659295626567197
#>     Attrib V57    0.2710334478522685
#>     Attrib V58    0.0854881667055906
#>     Attrib V59    -0.049094304796522124
#>     Attrib V6    0.1762129579176564
#>     Attrib V60    0.2509575929800885
#>     Attrib V7    -0.24450624990351402
#>     Attrib V8    0.31252007377421354
#>     Attrib V9    0.9765467763757953
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.21000993589525885
#>     Attrib V1    0.12052685500702506
#>     Attrib V10    0.40623093332570964
#>     Attrib V11    0.2672630639419343
#>     Attrib V12    0.19429405864100882
#>     Attrib V13    -0.05395341739705832
#>     Attrib V14    -0.1947322728019578
#>     Attrib V15    -0.0023114148252075923
#>     Attrib V16    -0.005058949064188697
#>     Attrib V17    -0.21825399112675323
#>     Attrib V18    -0.3784098340473968
#>     Attrib V19    -0.306721615442737
#>     Attrib V2    0.006620196639143992
#>     Attrib V20    -0.19243272748911694
#>     Attrib V21    -0.15185249278264285
#>     Attrib V22    -0.26414367921808973
#>     Attrib V23    -0.3294267000465508
#>     Attrib V24    -0.3084752774031197
#>     Attrib V25    -0.1693091850713841
#>     Attrib V26    0.06404845842868931
#>     Attrib V27    0.18939086986854056
#>     Attrib V28    0.26199059937316144
#>     Attrib V29    0.07272879439879619
#>     Attrib V3    -0.06937207606458469
#>     Attrib V30    0.16923747600933362
#>     Attrib V31    -0.2401369365884255
#>     Attrib V32    0.22674745471507005
#>     Attrib V33    0.3053434510022673
#>     Attrib V34    0.17219603546979986
#>     Attrib V35    0.15665306250724273
#>     Attrib V36    -0.0643292014795614
#>     Attrib V37    -7.026783397858005E-4
#>     Attrib V38    0.16588872421865275
#>     Attrib V39    0.10210004402494058
#>     Attrib V4    0.3686689013395332
#>     Attrib V40    -0.019199841895529684
#>     Attrib V41    0.10819205971917976
#>     Attrib V42    -0.09055689404248818
#>     Attrib V43    -0.06606381770480772
#>     Attrib V44    -0.11380830610627374
#>     Attrib V45    0.2258583810843014
#>     Attrib V46    0.18105784973115827
#>     Attrib V47    0.08468875003336504
#>     Attrib V48    0.5023396918623053
#>     Attrib V49    0.38547097223457905
#>     Attrib V5    0.03559620157064979
#>     Attrib V50    0.0020274103924224915
#>     Attrib V51    0.10390183660350506
#>     Attrib V52    0.1401395789873412
#>     Attrib V53    0.05492730869658951
#>     Attrib V54    0.2262496778229165
#>     Attrib V55    -0.11266923491414711
#>     Attrib V56    -0.1997286085234218
#>     Attrib V57    0.44459875549035516
#>     Attrib V58    0.041430120616510066
#>     Attrib V59    0.2011752248129602
#>     Attrib V6    -0.011114479956496455
#>     Attrib V60    0.3732062114421449
#>     Attrib V7    0.11199341729111674
#>     Attrib V8    0.06797815024911186
#>     Attrib V9    0.29155019639609836
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.5451540979277175
#>     Attrib V1    -0.11504106628015538
#>     Attrib V10    1.2914640117030458
#>     Attrib V11    1.281691523109264
#>     Attrib V12    1.1972307524863068
#>     Attrib V13    0.5806814928698918
#>     Attrib V14    -0.6419443896956777
#>     Attrib V15    -0.2440387682069333
#>     Attrib V16    0.060848083646601325
#>     Attrib V17    -0.3608125916667804
#>     Attrib V18    -0.3492386896681083
#>     Attrib V19    0.035924487931341884
#>     Attrib V2    0.4511411636586836
#>     Attrib V20    0.017624739319173063
#>     Attrib V21    0.11891682169970517
#>     Attrib V22    0.5594432716465203
#>     Attrib V23    0.9179623387250702
#>     Attrib V24    0.3881667867807373
#>     Attrib V25    0.31385318117075367
#>     Attrib V26    1.3080150240676292
#>     Attrib V27    1.388924764895262
#>     Attrib V28    1.1578063810674382
#>     Attrib V29    0.607040588873993
#>     Attrib V3    -0.4119034214066006
#>     Attrib V30    0.6748233489284023
#>     Attrib V31    0.3745711474875815
#>     Attrib V32    0.8116328126449154
#>     Attrib V33    0.05325398360033868
#>     Attrib V34    -0.06079767912088361
#>     Attrib V35    -0.37590104726947715
#>     Attrib V36    -1.145581975248799
#>     Attrib V37    -0.4563443584152076
#>     Attrib V38    -0.32023606349502154
#>     Attrib V39    0.12367898866011416
#>     Attrib V4    0.3328292822099009
#>     Attrib V40    0.3733528190552376
#>     Attrib V41    1.2314782925025234
#>     Attrib V42    0.251199957428
#>     Attrib V43    0.1180158732074132
#>     Attrib V44    -0.4271041102629375
#>     Attrib V45    0.24484303178839642
#>     Attrib V46    0.39230315885343026
#>     Attrib V47    0.2668683559048508
#>     Attrib V48    0.7808689450203135
#>     Attrib V49    1.1807297011174962
#>     Attrib V5    0.46424463724247905
#>     Attrib V50    -0.31408312822462126
#>     Attrib V51    0.6879751066747497
#>     Attrib V52    1.1292158366285243
#>     Attrib V53    0.6532248719531745
#>     Attrib V54    -0.2510268402262962
#>     Attrib V55    -0.30319057424038653
#>     Attrib V56    -0.3800433489398775
#>     Attrib V57    0.013752922257161949
#>     Attrib V58    0.1615928617506171
#>     Attrib V59    -0.20365579931201974
#>     Attrib V6    0.3837988439444069
#>     Attrib V60    -0.06255379232863875
#>     Attrib V7    -0.5599458676780561
#>     Attrib V8    0.49293028115304965
#>     Attrib V9    1.0963175012342108
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.22084744409892537
#>     Attrib V1    0.07971959859044589
#>     Attrib V10    -0.27122542323690657
#>     Attrib V11    -0.14443790034213233
#>     Attrib V12    -0.17814875473358602
#>     Attrib V13    0.1467448282063541
#>     Attrib V14    0.36278522165204813
#>     Attrib V15    -0.05626988826923315
#>     Attrib V16    0.06168147709842401
#>     Attrib V17    -0.014108216037149228
#>     Attrib V18    -0.023973737099775475
#>     Attrib V19    -0.22848355237221246
#>     Attrib V2    0.19374809252040104
#>     Attrib V20    -0.43198396637143816
#>     Attrib V21    -0.4230055159564552
#>     Attrib V22    -0.519900919339834
#>     Attrib V23    -0.28720392781589116
#>     Attrib V24    0.19721845032562893
#>     Attrib V25    0.4345587719652892
#>     Attrib V26    0.4299664676615317
#>     Attrib V27    0.45780778978461883
#>     Attrib V28    0.2085837790353111
#>     Attrib V29    -0.04797580755455542
#>     Attrib V3    0.011670727603418548
#>     Attrib V30    0.061087349704894774
#>     Attrib V31    0.9003179175931428
#>     Attrib V32    -0.049215575665125605
#>     Attrib V33    -0.17093446962624842
#>     Attrib V34    0.15525639807240244
#>     Attrib V35    0.3036987942571667
#>     Attrib V36    0.8152104239984507
#>     Attrib V37    0.65004361254306
#>     Attrib V38    -0.06468407440029326
#>     Attrib V39    -0.2234711400928508
#>     Attrib V4    -0.4030648350441273
#>     Attrib V40    0.19844695654584577
#>     Attrib V41    -0.16481005335683147
#>     Attrib V42    -0.4441261630703655
#>     Attrib V43    -0.5421283300763564
#>     Attrib V44    0.09698757043544032
#>     Attrib V45    -0.029133852224707404
#>     Attrib V46    -0.13652501629093955
#>     Attrib V47    -0.1241658853052194
#>     Attrib V48    -0.3900825417965763
#>     Attrib V49    -0.12674554185368414
#>     Attrib V5    -0.007965403429564913
#>     Attrib V50    0.5235017668409521
#>     Attrib V51    -0.1396004612574781
#>     Attrib V52    -0.1517036027203773
#>     Attrib V53    -0.06135052389668666
#>     Attrib V54    -0.4637491492883019
#>     Attrib V55    0.3481414078532928
#>     Attrib V56    -0.02358694284317542
#>     Attrib V57    -0.3737206898743116
#>     Attrib V58    -0.26414166084987556
#>     Attrib V59    -0.4539605866390028
#>     Attrib V6    0.20159945006588093
#>     Attrib V60    -0.3648911964659894
#>     Attrib V7    0.36807104099513843
#>     Attrib V8    -0.2479795653823401
#>     Attrib V9    -0.2431433157852019
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.32436484000674815
#>     Attrib V1    -0.062042542583187206
#>     Attrib V10    0.26449704056035067
#>     Attrib V11    0.11409739607742224
#>     Attrib V12    0.18497981191497434
#>     Attrib V13    -0.19912627187500342
#>     Attrib V14    -0.30377517754247063
#>     Attrib V15    0.03369619191746812
#>     Attrib V16    -0.021811482763418905
#>     Attrib V17    -0.01296892469100328
#>     Attrib V18    -0.04420898442724526
#>     Attrib V19    0.09074792305659353
#>     Attrib V2    -0.2182523758237647
#>     Attrib V20    0.35962518835479773
#>     Attrib V21    0.28319377726191075
#>     Attrib V22    0.24094852742991477
#>     Attrib V23    0.09816639987071707
#>     Attrib V24    -0.2996303285846455
#>     Attrib V25    -0.4069036599216605
#>     Attrib V26    -0.379897951915092
#>     Attrib V27    -0.3216929884528315
#>     Attrib V28    -0.06653462056758616
#>     Attrib V29    -0.02278177850065303
#>     Attrib V3    -0.15157036725564
#>     Attrib V30    0.015963236905387864
#>     Attrib V31    -0.8388292422691094
#>     Attrib V32    0.043575302370225374
#>     Attrib V33    0.27052503918130805
#>     Attrib V34    0.04370707630061644
#>     Attrib V35    -0.05133400329099385
#>     Attrib V36    -0.5899969282133516
#>     Attrib V37    -0.47585327288982837
#>     Attrib V38    0.1115333664654691
#>     Attrib V39    0.15320679020381456
#>     Attrib V4    0.30312934881507037
#>     Attrib V40    -0.111291223581506
#>     Attrib V41    0.11839937298098654
#>     Attrib V42    0.23430350729951302
#>     Attrib V43    0.2975422350879464
#>     Attrib V44    -0.16082315565058844
#>     Attrib V45    0.1227444962614144
#>     Attrib V46    0.08655928402848505
#>     Attrib V47    0.07364182886868184
#>     Attrib V48    0.46508271764731995
#>     Attrib V49    0.2174574255316693
#>     Attrib V5    0.015761537373881078
#>     Attrib V50    -0.33099141262887677
#>     Attrib V51    0.10606010111128374
#>     Attrib V52    0.04029639972909818
#>     Attrib V53    0.003717076965881561
#>     Attrib V54    0.4672701873506279
#>     Attrib V55    -0.324970317344099
#>     Attrib V56    -0.08520527555071611
#>     Attrib V57    0.3776119419499268
#>     Attrib V58    0.1305919907684986
#>     Attrib V59    0.25178960582446347
#>     Attrib V6    -0.11720559402699146
#>     Attrib V60    0.2600144990717763
#>     Attrib V7    -0.24783166796529096
#>     Attrib V8    0.190538168318529
#>     Attrib V9    0.2566411720548107
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.6330958417807965
#>     Attrib V1    -0.08128352853143271
#>     Attrib V10    0.5655145391248944
#>     Attrib V11    0.38669823162739764
#>     Attrib V12    0.23860754621946073
#>     Attrib V13    -0.20388538328994296
#>     Attrib V14    -0.539384125300057
#>     Attrib V15    -0.10038232335920833
#>     Attrib V16    -0.049152458026754324
#>     Attrib V17    -0.24143380182153598
#>     Attrib V18    -0.3193251524548009
#>     Attrib V19    -0.04948681205813707
#>     Attrib V2    -0.07591931328510454
#>     Attrib V20    0.11024445561177275
#>     Attrib V21    0.12206603837525146
#>     Attrib V22    0.2853276676351094
#>     Attrib V23    0.23029672427564782
#>     Attrib V24    -0.29305479221104713
#>     Attrib V25    -0.41952759287339336
#>     Attrib V26    0.013055808263686826
#>     Attrib V27    0.18069727220923032
#>     Attrib V28    0.336878530346242
#>     Attrib V29    0.3359998724870391
#>     Attrib V3    -0.3159159528174579
#>     Attrib V30    0.298490834633149
#>     Attrib V31    -0.6485329174298886
#>     Attrib V32    0.28144545045882735
#>     Attrib V33    0.3478881255418671
#>     Attrib V34    0.013686978116021044
#>     Attrib V35    -0.1288706879427048
#>     Attrib V36    -0.7461627447828142
#>     Attrib V37    -0.37502510560560975
#>     Attrib V38    0.013000078118344794
#>     Attrib V39    0.05143926413640713
#>     Attrib V4    0.3700148877757818
#>     Attrib V40    0.002313027645615667
#>     Attrib V41    0.48219234843701736
#>     Attrib V42    0.261022782271093
#>     Attrib V43    0.339606072811047
#>     Attrib V44    -0.29184620560516694
#>     Attrib V45    0.16854614572981472
#>     Attrib V46    0.21649846374176146
#>     Attrib V47    0.02566194535689892
#>     Attrib V48    0.5879438884895135
#>     Attrib V49    0.4220285875384657
#>     Attrib V5    0.02100604040273732
#>     Attrib V50    -0.49623175391835767
#>     Attrib V51    0.1455076355495739
#>     Attrib V52    0.28067371591002865
#>     Attrib V53    0.09737632840755807
#>     Attrib V54    0.10799072698442147
#>     Attrib V55    -0.5859794485884982
#>     Attrib V56    -0.32971178153253866
#>     Attrib V57    0.37255399530387245
#>     Attrib V58    0.07623082484853844
#>     Attrib V59    0.2083966010915375
#>     Attrib V6    -0.06971461818246925
#>     Attrib V60    0.24261103342484117
#>     Attrib V7    -0.29549752619392866
#>     Attrib V8    0.22853166446562853
#>     Attrib V9    0.5544267498257892
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.10145656807903208
#>     Attrib V1    0.05851741347550998
#>     Attrib V10    0.10170532518018542
#>     Attrib V11    0.022340210468982213
#>     Attrib V12    0.08133764063292669
#>     Attrib V13    -0.04093981005893497
#>     Attrib V14    -0.11561327756151227
#>     Attrib V15    0.07618180273824615
#>     Attrib V16    -0.025533453668957096
#>     Attrib V17    -0.0014348488262808487
#>     Attrib V18    -0.021528961983192287
#>     Attrib V19    0.049527610694932285
#>     Attrib V2    -0.09366700478160465
#>     Attrib V20    0.2901822506048546
#>     Attrib V21    0.2602165728975828
#>     Attrib V22    0.12549768365389877
#>     Attrib V23    0.030743969218035072
#>     Attrib V24    -0.18135636545724382
#>     Attrib V25    -0.2306038936037487
#>     Attrib V26    -0.32279715162221395
#>     Attrib V27    -0.2502400078564281
#>     Attrib V28    -0.17256475916726838
#>     Attrib V29    -0.1003206370055911
#>     Attrib V3    0.028754246482309277
#>     Attrib V30    -0.07351908449314676
#>     Attrib V31    -0.6586670055651921
#>     Attrib V32    -0.0529528853876127
#>     Attrib V33    0.16246707172975733
#>     Attrib V34    0.07220073625890536
#>     Attrib V35    -0.0038371859909608753
#>     Attrib V36    -0.32978747195269953
#>     Attrib V37    -0.2619817340398123
#>     Attrib V38    0.06620316660871746
#>     Attrib V39    0.1812639133928133
#>     Attrib V4    0.2639305302943014
#>     Attrib V40    -0.03219652977599981
#>     Attrib V41    0.06733926209691077
#>     Attrib V42    0.11304042670157285
#>     Attrib V43    0.10697810083603324
#>     Attrib V44    -0.16125642354739594
#>     Attrib V45    0.009294423459602642
#>     Attrib V46    0.07723289076366686
#>     Attrib V47    0.056871334624588966
#>     Attrib V48    0.25000501841254086
#>     Attrib V49    0.12804617759555667
#>     Attrib V5    0.0017309026681920495
#>     Attrib V50    -0.1852258545912073
#>     Attrib V51    0.009065141889631088
#>     Attrib V52    -0.03612816247721275
#>     Attrib V53    0.034641343803976626
#>     Attrib V54    0.3915460083868284
#>     Attrib V55    -0.12691349449370773
#>     Attrib V56    0.016691021532213874
#>     Attrib V57    0.3592744870934628
#>     Attrib V58    0.09585691753622254
#>     Attrib V59    0.36093876580815865
#>     Attrib V6    -0.07112851095263811
#>     Attrib V60    0.36491461384812046
#>     Attrib V7    -0.016703197664645376
#>     Attrib V8    0.07390734217452528
#>     Attrib V9    0.09822834741744702
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.31396446728335425
#>     Attrib V1    0.08389031781262038
#>     Attrib V10    0.3170564400077656
#>     Attrib V11    0.23729970017446414
#>     Attrib V12    0.21778482903468335
#>     Attrib V13    -0.14088063757165206
#>     Attrib V14    -0.2625096262528918
#>     Attrib V15    0.0298462621456233
#>     Attrib V16    -0.09422320047669562
#>     Attrib V17    -0.16583775330376552
#>     Attrib V18    -0.2526687501450991
#>     Attrib V19    -0.18358807451539053
#>     Attrib V2    -0.09353071970248392
#>     Attrib V20    0.007537436187269065
#>     Attrib V21    0.032013827841524164
#>     Attrib V22    -0.029926983100973286
#>     Attrib V23    -0.13462402157867456
#>     Attrib V24    -0.37900845046931847
#>     Attrib V25    -0.29847677787432214
#>     Attrib V26    -0.12643361104938367
#>     Attrib V27    -0.08341799451538988
#>     Attrib V28    0.012281074148298135
#>     Attrib V29    -0.05694076431278265
#>     Attrib V3    -0.16378372770761765
#>     Attrib V30    0.11395899434777386
#>     Attrib V31    -0.4863160902065552
#>     Attrib V32    0.150051246006449
#>     Attrib V33    0.3140111271773131
#>     Attrib V34    0.1156645131220241
#>     Attrib V35    0.09769232340331063
#>     Attrib V36    -0.37184890260970455
#>     Attrib V37    -0.24168451424488127
#>     Attrib V38    0.03292988574449226
#>     Attrib V39    0.12190556321763174
#>     Attrib V4    0.33788827087796597
#>     Attrib V40    -0.09829117778599221
#>     Attrib V41    0.07621867318082204
#>     Attrib V42    0.004740827463611053
#>     Attrib V43    0.03799452142089308
#>     Attrib V44    -0.18101458947729684
#>     Attrib V45    0.09767230156117883
#>     Attrib V46    0.113274464755759
#>     Attrib V47    0.023129735962750204
#>     Attrib V48    0.5179797220520488
#>     Attrib V49    0.36715904906400476
#>     Attrib V5    -0.0388818634334624
#>     Attrib V50    -0.14641877931633876
#>     Attrib V51    0.038121741475724245
#>     Attrib V52    0.08899985719818766
#>     Attrib V53    -0.057426007093300986
#>     Attrib V54    0.37410973310231316
#>     Attrib V55    -0.15502219269418135
#>     Attrib V56    -0.15660428323705428
#>     Attrib V57    0.3710113958029684
#>     Attrib V58    0.12557864349526646
#>     Attrib V59    0.2605388504628128
#>     Attrib V6    -0.09063183097067491
#>     Attrib V60    0.3640578040785832
#>     Attrib V7    -0.0318459627896843
#>     Attrib V8    0.04156848737120171
#>     Attrib V9    0.2102983690664661
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.17980144197371237
#>     Attrib V1    0.036368644383261976
#>     Attrib V10    -0.33675784458082914
#>     Attrib V11    -0.11590014614084111
#>     Attrib V12    -0.04143123480808938
#>     Attrib V13    0.3536247721371986
#>     Attrib V14    0.38884791887049014
#>     Attrib V15    -0.021302258494278154
#>     Attrib V16    0.14966012662800118
#>     Attrib V17    -0.02818514589519565
#>     Attrib V18    -0.14160303274070418
#>     Attrib V19    -0.28022191657797674
#>     Attrib V2    0.4054337248805004
#>     Attrib V20    -0.6482205030674286
#>     Attrib V21    -0.7239715880248461
#>     Attrib V22    -0.6710231177667584
#>     Attrib V23    -0.3757041953053081
#>     Attrib V24    0.4558233364509213
#>     Attrib V25    0.8650526990870293
#>     Attrib V26    0.9983982867965434
#>     Attrib V27    0.8439073633375664
#>     Attrib V28    0.38737667857687413
#>     Attrib V29    -0.05759010943646372
#>     Attrib V3    -0.11891649978798088
#>     Attrib V30    0.11781669690573182
#>     Attrib V31    1.60748357389173
#>     Attrib V32    0.1953407353786701
#>     Attrib V33    -0.3267633991790245
#>     Attrib V34    0.27738887505784693
#>     Attrib V35    0.44068193471239636
#>     Attrib V36    1.178206823035044
#>     Attrib V37    1.0747284508922352
#>     Attrib V38    -0.13847891662064735
#>     Attrib V39    -0.3513573080814835
#>     Attrib V4    -0.6083361577954938
#>     Attrib V40    0.2620628490589102
#>     Attrib V41    -0.14425293245760085
#>     Attrib V42    -0.7305955495011083
#>     Attrib V43    -0.9309737579790742
#>     Attrib V44    -0.025698730989485677
#>     Attrib V45    -0.008316032003819909
#>     Attrib V46    -0.1157365100117819
#>     Attrib V47    -0.16599336999058256
#>     Attrib V48    -0.5292790714246508
#>     Attrib V49    -0.10403246695208405
#>     Attrib V5    -0.008827339719461725
#>     Attrib V50    0.7078413701415874
#>     Attrib V51    -0.05145015017520454
#>     Attrib V52    -0.11887315043809438
#>     Attrib V53    -0.0532657650967701
#>     Attrib V54    -0.9029942583321052
#>     Attrib V55    0.5457306344702906
#>     Attrib V56    -0.002844121388620007
#>     Attrib V57    -0.6808437991210783
#>     Attrib V58    -0.4841631512964588
#>     Attrib V59    -0.6932256779509831
#>     Attrib V6    0.2264429825264093
#>     Attrib V60    -0.5359437024073691
#>     Attrib V7    0.4198217111456222
#>     Attrib V8    -0.38313712851547077
#>     Attrib V9    -0.2893031752515016
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.08291442461118556
#>     Attrib V1    0.08677257322880913
#>     Attrib V10    0.12472223339272291
#>     Attrib V11    0.04147876507330974
#>     Attrib V12    0.04342072343065704
#>     Attrib V13    -0.012562276100395594
#>     Attrib V14    -0.05677701790976581
#>     Attrib V15    0.052431285337454406
#>     Attrib V16    0.06364984385012361
#>     Attrib V17    0.011497409213333339
#>     Attrib V18    -0.02893001290916767
#>     Attrib V19    -0.05430104882505653
#>     Attrib V2    -0.03061741273364943
#>     Attrib V20    -0.034042199766489874
#>     Attrib V21    -0.061293707470931325
#>     Attrib V22    -0.10753563888444334
#>     Attrib V23    -0.1585521805203453
#>     Attrib V24    -0.10998535068820348
#>     Attrib V25    -0.08585664860919281
#>     Attrib V26    -0.11621456398094653
#>     Attrib V27    -0.0773648753542603
#>     Attrib V28    0.0034486167799841184
#>     Attrib V29    -0.026774409315509787
#>     Attrib V3    0.042421293891983604
#>     Attrib V30    -0.010878462137560937
#>     Attrib V31    -0.17601688737838497
#>     Attrib V32    0.04210539503741546
#>     Attrib V33    0.10321896458555738
#>     Attrib V34    0.12411283175887426
#>     Attrib V35    0.1121939212785826
#>     Attrib V36    -0.014364179298758743
#>     Attrib V37    0.025913596870424275
#>     Attrib V38    0.08042745982145362
#>     Attrib V39    0.09650387183663482
#>     Attrib V4    0.15480964162221456
#>     Attrib V40    0.015798448357009765
#>     Attrib V41    0.045900021319748324
#>     Attrib V42    0.03990990971193043
#>     Attrib V43    0.017265992545101066
#>     Attrib V44    -0.05773651892871361
#>     Attrib V45    0.08283091962815649
#>     Attrib V46    0.09310900539940922
#>     Attrib V47    0.04793894263680873
#>     Attrib V48    0.12838784099365094
#>     Attrib V49    0.045747327716472434
#>     Attrib V5    0.030672460386013338
#>     Attrib V50    0.04602825060612319
#>     Attrib V51    0.10432398781283671
#>     Attrib V52    0.06579641206475606
#>     Attrib V53    0.07726143520906587
#>     Attrib V54    0.14283115671136676
#>     Attrib V55    0.054009857297166834
#>     Attrib V56    0.05250501614744092
#>     Attrib V57    0.25077341345987797
#>     Attrib V58    0.13159207557764913
#>     Attrib V59    0.10315133382500978
#>     Attrib V6    0.024948500978395443
#>     Attrib V60    0.22028779129189957
#>     Attrib V7    0.05136228491497134
#>     Attrib V8    0.04933193865010799
#>     Attrib V9    0.13293333030384774
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.01092302801516324
#>     Attrib V1    0.11943321263059499
#>     Attrib V10    0.18823713494670108
#>     Attrib V11    0.09808222171893625
#>     Attrib V12    0.045921537179596475
#>     Attrib V13    -0.09219873003576488
#>     Attrib V14    -0.07312905699726045
#>     Attrib V15    0.13475663224616338
#>     Attrib V16    0.02215564050272887
#>     Attrib V17    -0.03776871683200355
#>     Attrib V18    -0.09356673348913044
#>     Attrib V19    -0.06399910504417175
#>     Attrib V2    0.051461684249070924
#>     Attrib V20    -0.0015059917668633867
#>     Attrib V21    -0.030827299108741553
#>     Attrib V22    -0.03314587139290999
#>     Attrib V23    -0.15401604009149167
#>     Attrib V24    -0.1514890386333973
#>     Attrib V25    -0.1646103430926775
#>     Attrib V26    -0.13399805768736003
#>     Attrib V27    -0.0666486221515268
#>     Attrib V28    -0.02331361676473329
#>     Attrib V29    -0.075520710008677
#>     Attrib V3    -0.009515325919220746
#>     Attrib V30    0.04348951973779361
#>     Attrib V31    -0.17442004273824016
#>     Attrib V32    0.010484099740140234
#>     Attrib V33    0.19051794687404297
#>     Attrib V34    0.07555265586023222
#>     Attrib V35    0.15547505353488733
#>     Attrib V36    -0.06941045226221701
#>     Attrib V37    -0.0475846395084331
#>     Attrib V38    0.1350351480172392
#>     Attrib V39    0.11709959524459396
#>     Attrib V4    0.18561512024902568
#>     Attrib V40    -0.021078450501564313
#>     Attrib V41    0.05215765592691685
#>     Attrib V42    -0.01124134098791894
#>     Attrib V43    0.07071807968184309
#>     Attrib V44    -0.02370848144684531
#>     Attrib V45    0.1195025872935009
#>     Attrib V46    0.05140287008968427
#>     Attrib V47    -0.0021172779136599865
#>     Attrib V48    0.2253475556042131
#>     Attrib V49    0.06118597993936898
#>     Attrib V5    0.014959994857703813
#>     Attrib V50    -0.0030174149535277086
#>     Attrib V51    0.07044646335232775
#>     Attrib V52    0.0208010664998675
#>     Attrib V53    0.007820434804661837
#>     Attrib V54    0.18713932014126888
#>     Attrib V55    0.045926097990474805
#>     Attrib V56    0.03879164840839474
#>     Attrib V57    0.32368499802245
#>     Attrib V58    0.04944967323157619
#>     Attrib V59    0.12664185080084533
#>     Attrib V6    -0.007941427707240085
#>     Attrib V60    0.24846034856716165
#>     Attrib V7    4.619045600893537E-5
#>     Attrib V8    0.11265109935203381
#>     Attrib V9    0.13316405057560365
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.21143033829518437
#>     Attrib V1    0.061280942025444096
#>     Attrib V10    0.025245672838840164
#>     Attrib V11    -0.010076965298168521
#>     Attrib V12    -0.05780219727707509
#>     Attrib V13    -0.020311736170852142
#>     Attrib V14    0.044357559665558384
#>     Attrib V15    0.019701320569269445
#>     Attrib V16    0.01906225134281814
#>     Attrib V17    -0.03176614197225347
#>     Attrib V18    0.026018794416327217
#>     Attrib V19    -0.10245159750874633
#>     Attrib V2    0.06623591965382729
#>     Attrib V20    -0.06894785154942092
#>     Attrib V21    -0.07481465494414365
#>     Attrib V22    -0.11787004152128223
#>     Attrib V23    -0.05400990533190461
#>     Attrib V24    -0.025337621934352694
#>     Attrib V25    0.03188796719242696
#>     Attrib V26    0.020507939335406337
#>     Attrib V27    0.0010257702850829332
#>     Attrib V28    -0.016937964436365863
#>     Attrib V29    0.0023013661510060774
#>     Attrib V3    0.10927306253747321
#>     Attrib V30    -0.03227863019062061
#>     Attrib V31    0.053099517671124925
#>     Attrib V32    0.02598908561192077
#>     Attrib V33    0.05428355166431618
#>     Attrib V34    0.08719179720602599
#>     Attrib V35    0.07223828554495433
#>     Attrib V36    0.19759982630412318
#>     Attrib V37    0.11144410243865442
#>     Attrib V38    0.01558261700660807
#>     Attrib V39    0.06478088067920493
#>     Attrib V4    -0.019787246771594564
#>     Attrib V40    0.07954837659216177
#>     Attrib V41    0.003167399436985234
#>     Attrib V42    0.02185004485749834
#>     Attrib V43    0.026310259952490277
#>     Attrib V44    0.10736529356087306
#>     Attrib V45    -0.024692941518038403
#>     Attrib V46    0.03578318986589377
#>     Attrib V47    0.08485413629002442
#>     Attrib V48    0.0031011179904673856
#>     Attrib V49    0.021089042928504775
#>     Attrib V5    0.04258427800794951
#>     Attrib V50    0.013892523155009476
#>     Attrib V51    0.09162184619836605
#>     Attrib V52    0.020773528003556363
#>     Attrib V53    0.027954964955241114
#>     Attrib V54    -0.04884122794150522
#>     Attrib V55    0.10940010309426103
#>     Attrib V56    0.10721765876474088
#>     Attrib V57    0.041454923456132255
#>     Attrib V58    0.06757264328145186
#>     Attrib V59    0.051267901722258674
#>     Attrib V6    0.027411487601420995
#>     Attrib V60    0.09674710563968185
#>     Attrib V7    0.09495831756045661
#>     Attrib V8    0.09013120883851446
#>     Attrib V9    0.05811339985837579
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.661992240246318
#>     Attrib V1    0.21431896134566267
#>     Attrib V10    0.8678797017562923
#>     Attrib V11    0.655414536035788
#>     Attrib V12    0.6470675644662508
#>     Attrib V13    0.0033700717621259575
#>     Attrib V14    -0.49477930980615886
#>     Attrib V15    -0.09362594904025835
#>     Attrib V16    -0.18606145838870602
#>     Attrib V17    -0.6338242971580557
#>     Attrib V18    -0.8249346058880838
#>     Attrib V19    -0.4906102578178789
#>     Attrib V2    0.22730137218917595
#>     Attrib V20    -0.3437888703653651
#>     Attrib V21    -0.17611478105567688
#>     Attrib V22    -0.03150042925226731
#>     Attrib V23    -0.12366934331442893
#>     Attrib V24    -0.22081484390869438
#>     Attrib V25    -0.06810089286297018
#>     Attrib V26    0.5332481617714202
#>     Attrib V27    0.6988899472960777
#>     Attrib V28    0.6639768329330574
#>     Attrib V29    0.20668400154266608
#>     Attrib V3    -0.24479563816972488
#>     Attrib V30    0.3457746230048399
#>     Attrib V31    -0.16802600534835596
#>     Attrib V32    0.40024268785525013
#>     Attrib V33    0.2669763650188284
#>     Attrib V34    0.1794952964624144
#>     Attrib V35    0.08055814224323027
#>     Attrib V36    -0.5281977522651521
#>     Attrib V37    -0.12467991671200915
#>     Attrib V38    -0.09881366527189647
#>     Attrib V39    -0.028857948421194993
#>     Attrib V4    0.46899599441121204
#>     Attrib V40    0.053818979306354445
#>     Attrib V41    0.555288232693329
#>     Attrib V42    0.003810313347116623
#>     Attrib V43    -0.21838771933165527
#>     Attrib V44    -0.5771171602827729
#>     Attrib V45    0.23024641511159652
#>     Attrib V46    0.2928254939229344
#>     Attrib V47    0.06248868882748649
#>     Attrib V48    0.6882658153068681
#>     Attrib V49    0.7661341912465782
#>     Attrib V5    0.19413281668937873
#>     Attrib V50    -0.19788038153230034
#>     Attrib V51    0.23843527034691853
#>     Attrib V52    0.46369662291238783
#>     Attrib V53    0.1539761624327624
#>     Attrib V54    -0.015570963136643726
#>     Attrib V55    -0.29450759021144657
#>     Attrib V56    -0.4947905302769087
#>     Attrib V57    0.4043551262979569
#>     Attrib V58    0.1349611684685709
#>     Attrib V59    0.18755669634426098
#>     Attrib V6    0.21200780538350814
#>     Attrib V60    0.57276055614311
#>     Attrib V7    0.004438541307581215
#>     Attrib V8    0.11107795101282902
#>     Attrib V9    0.6411966434857256
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.43049467075639963
#>     Attrib V1    0.017535412865373252
#>     Attrib V10    0.3602115899234439
#>     Attrib V11    0.18196492010998325
#>     Attrib V12    0.2614621129214581
#>     Attrib V13    -0.12232242442916196
#>     Attrib V14    -0.3170748857701527
#>     Attrib V15    -0.018207108252436103
#>     Attrib V16    -0.10810153580991068
#>     Attrib V17    -0.1684688897429569
#>     Attrib V18    -0.16107821510191708
#>     Attrib V19    0.0189024162501349
#>     Attrib V2    -0.10020264823830378
#>     Attrib V20    0.22164743525710343
#>     Attrib V21    0.23776176835432722
#>     Attrib V22    0.24504938498002543
#>     Attrib V23    0.1634568103859987
#>     Attrib V24    -0.1828231269730676
#>     Attrib V25    -0.30012040091383485
#>     Attrib V26    -0.06358528680700752
#>     Attrib V27    0.008839368959165678
#>     Attrib V28    0.1041797823818167
#>     Attrib V29    0.1644516906103855
#>     Attrib V3    -0.19405427231943762
#>     Attrib V30    0.1369844232816424
#>     Attrib V31    -0.6103379609799214
#>     Attrib V32    0.07795541584023254
#>     Attrib V33    0.21065644284033344
#>     Attrib V34    -0.05131818739575138
#>     Attrib V35    -0.11390236586334354
#>     Attrib V36    -0.5524012051993465
#>     Attrib V37    -0.32807696555868116
#>     Attrib V38    0.03721937100442564
#>     Attrib V39    0.08136061921419908
#>     Attrib V4    0.27351303338930855
#>     Attrib V40    -0.05099133975123574
#>     Attrib V41    0.29333232630254497
#>     Attrib V42    0.18402295549816966
#>     Attrib V43    0.28352569230393754
#>     Attrib V44    -0.17486510256328727
#>     Attrib V45    0.07022922635187186
#>     Attrib V46    0.052151653286766145
#>     Attrib V47    -0.0342484989935495
#>     Attrib V48    0.41701667176823304
#>     Attrib V49    0.24042733613113204
#>     Attrib V5    0.03472109546398216
#>     Attrib V50    -0.39570034474409604
#>     Attrib V51    0.11361012368992729
#>     Attrib V52    0.14913097717759294
#>     Attrib V53    0.06756331115298188
#>     Attrib V54    0.3050595548208308
#>     Attrib V55    -0.3380463086849822
#>     Attrib V56    -0.14884698053701537
#>     Attrib V57    0.27560173656530157
#>     Attrib V58    0.07414086503193822
#>     Attrib V59    0.2862727351184942
#>     Attrib V6    -0.07079853005571128
#>     Attrib V60    0.2622643073630792
#>     Attrib V7    -0.200383485789823
#>     Attrib V8    0.07811350040023576
#>     Attrib V9    0.3110399949654833
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.05304531105006726
#>     Attrib V1    0.22409700949709227
#>     Attrib V10    -0.3362058371539968
#>     Attrib V11    -0.2093616526092334
#>     Attrib V12    -0.20921800613866642
#>     Attrib V13    0.2563512943226808
#>     Attrib V14    0.44872049256586427
#>     Attrib V15    0.03711201149138532
#>     Attrib V16    0.18897691119601087
#>     Attrib V17    -0.10773100378589583
#>     Attrib V18    -0.26360124574927185
#>     Attrib V19    -0.4384266981918589
#>     Attrib V2    0.4435175164294469
#>     Attrib V20    -0.6692352707976812
#>     Attrib V21    -0.5997073543924698
#>     Attrib V22    -0.8196999178522706
#>     Attrib V23    -0.6554258224147839
#>     Attrib V24    0.3347635783260663
#>     Attrib V25    0.835541743690283
#>     Attrib V26    0.9392358769100454
#>     Attrib V27    0.8183186162698974
#>     Attrib V28    0.30644326800634175
#>     Attrib V29    -0.20109457038758302
#>     Attrib V3    -0.23801542912182225
#>     Attrib V30    0.09872715708511197
#>     Attrib V31    1.59955155475431
#>     Attrib V32    0.06587300268541303
#>     Attrib V33    -0.3352804850582705
#>     Attrib V34    0.36765321721320143
#>     Attrib V35    0.6694339743690648
#>     Attrib V36    1.45740501930232
#>     Attrib V37    1.3153251196187254
#>     Attrib V38    -0.04137671546869354
#>     Attrib V39    -0.3080754824742107
#>     Attrib V4    -0.6417073045580131
#>     Attrib V40    0.34354560744449164
#>     Attrib V41    -0.14111710711370756
#>     Attrib V42    -0.9715324675379609
#>     Attrib V43    -1.1316099191647238
#>     Attrib V44    -0.10797672181149055
#>     Attrib V45    -0.050353684637871585
#>     Attrib V46    -0.15626341209288772
#>     Attrib V47    -0.24216156737261155
#>     Attrib V48    -0.49697589957613314
#>     Attrib V49    -0.08033917046955387
#>     Attrib V5    -0.053072320430041606
#>     Attrib V50    0.8651464771346965
#>     Attrib V51    -0.14010240066070126
#>     Attrib V52    -0.23004765769987798
#>     Attrib V53    -0.22545952823547566
#>     Attrib V54    -0.9391846139433844
#>     Attrib V55    0.5367268564267667
#>     Attrib V56    -0.13952183970666182
#>     Attrib V57    -0.5288122753788767
#>     Attrib V58    -0.5984983573028556
#>     Attrib V59    -0.645255122308581
#>     Attrib V6    0.26399122849202106
#>     Attrib V60    -0.27905045393164474
#>     Attrib V7    0.7546102182954127
#>     Attrib V8    -0.5314394909863495
#>     Attrib V9    -0.3003640831860339
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.13260855620366171
#>     Attrib V1    0.1121183666530531
#>     Attrib V10    0.09903562251514275
#>     Attrib V11    -0.01899747826652574
#>     Attrib V12    0.03999977988323089
#>     Attrib V13    -0.183966583229848
#>     Attrib V14    -0.12184693896124818
#>     Attrib V15    0.09286739926588956
#>     Attrib V16    0.05791889289302899
#>     Attrib V17    0.028992676636562697
#>     Attrib V18    0.013711178971527542
#>     Attrib V19    0.09460976262228284
#>     Attrib V2    -0.09447816369423338
#>     Attrib V20    0.3625621441522221
#>     Attrib V21    0.31717421139850493
#>     Attrib V22    0.18618144592508284
#>     Attrib V23    -0.0418910657503695
#>     Attrib V24    -0.23152087802368496
#>     Attrib V25    -0.4007619419529576
#>     Attrib V26    -0.5018338888822574
#>     Attrib V27    -0.5222790336809013
#>     Attrib V28    -0.3790474429253349
#>     Attrib V29    -0.19130777362004295
#>     Attrib V3    -0.007301178015848339
#>     Attrib V30    -0.16072259066472128
#>     Attrib V31    -0.7477071727040554
#>     Attrib V32    -0.14104670444076406
#>     Attrib V33    0.1518847061511245
#>     Attrib V34    0.02254276746238678
#>     Attrib V35    0.01896752933302688
#>     Attrib V36    -0.3631550690161074
#>     Attrib V37    -0.3480286604230041
#>     Attrib V38    0.07218271481717434
#>     Attrib V39    0.1373130434977142
#>     Attrib V4    0.32013497655864076
#>     Attrib V40    -0.08591332873360795
#>     Attrib V41    -0.042488036241642414
#>     Attrib V42    0.10731208637533407
#>     Attrib V43    0.26859549710334957
#>     Attrib V44    -0.14381293012861807
#>     Attrib V45    -0.010742863051427753
#>     Attrib V46    0.08292570504744316
#>     Attrib V47    -0.004104381499119165
#>     Attrib V48    0.31395583164195834
#>     Attrib V49    0.07020550167575966
#>     Attrib V5    0.008252619751095229
#>     Attrib V50    -0.19111990710585416
#>     Attrib V51    0.007917186159952206
#>     Attrib V52    -0.024537073013585403
#>     Attrib V53    0.009592741240529548
#>     Attrib V54    0.5582407536023245
#>     Attrib V55    -0.09360562361477517
#>     Attrib V56    0.09794504075041242
#>     Attrib V57    0.413685674597693
#>     Attrib V58    0.2039356233216751
#>     Attrib V59    0.40218604379630424
#>     Attrib V6    -0.09265097747717717
#>     Attrib V60    0.4205394756923533
#>     Attrib V7    -0.04962569647948539
#>     Attrib V8    0.0583057786628356
#>     Attrib V9    0.08932889122329671
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.1572638001772364
#>     Attrib V1    0.12080044487590286
#>     Attrib V10    0.047784057213379284
#>     Attrib V11    -0.042211818802776344
#>     Attrib V12    0.04304672381716573
#>     Attrib V13    -0.195138918486944
#>     Attrib V14    -0.13759831387506413
#>     Attrib V15    0.15055042364968535
#>     Attrib V16    -0.043783834643908386
#>     Attrib V17    0.07207639095792694
#>     Attrib V18    0.05844282511519028
#>     Attrib V19    0.1547997834613806
#>     Attrib V2    -0.176412483507887
#>     Attrib V20    0.43140581227878644
#>     Attrib V21    0.3977623818232312
#>     Attrib V22    0.29697304152085485
#>     Attrib V23    0.05930846560071018
#>     Attrib V24    -0.32891912485701513
#>     Attrib V25    -0.48194414402570157
#>     Attrib V26    -0.588444592774421
#>     Attrib V27    -0.6701217584090519
#>     Attrib V28    -0.4363590391909794
#>     Attrib V29    -0.22133555618621595
#>     Attrib V3    0.07932691942304491
#>     Attrib V30    -0.19616985551165053
#>     Attrib V31    -0.99525014862343
#>     Attrib V32    -0.235968846392905
#>     Attrib V33    0.18353361057022738
#>     Attrib V34    -0.04193026133070883
#>     Attrib V35    0.014192390814181697
#>     Attrib V36    -0.4350010595304776
#>     Attrib V37    -0.39889346472610765
#>     Attrib V38    0.08336468397866302
#>     Attrib V39    0.19016822389765356
#>     Attrib V4    0.397734730688661
#>     Attrib V40    -0.14604066121287704
#>     Attrib V41    0.0018316121512676575
#>     Attrib V42    0.18523287326734122
#>     Attrib V43    0.35206234654621976
#>     Attrib V44    -0.12831060887874246
#>     Attrib V45    0.06442030257399924
#>     Attrib V46    0.06249344610166408
#>     Attrib V47    0.07471486559107879
#>     Attrib V48    0.2610331928284377
#>     Attrib V49    0.016792079334499194
#>     Attrib V5    -0.012593298634416713
#>     Attrib V50    -0.27265081528244345
#>     Attrib V51    -0.0037377314430984427
#>     Attrib V52    -0.014069247606439786
#>     Attrib V53    0.05989131156156022
#>     Attrib V54    0.6636612057650848
#>     Attrib V55    -0.13815601130408608
#>     Attrib V56    0.13113260396557563
#>     Attrib V57    0.44658939710801776
#>     Attrib V58    0.2069827184398371
#>     Attrib V59    0.5369892409738151
#>     Attrib V6    -0.08962431236100571
#>     Attrib V60    0.44017853566325454
#>     Attrib V7    -0.05593420014095047
#>     Attrib V8    0.17171188481944205
#>     Attrib V9    0.0996950279380768
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.14245051947475473
#>     Attrib V1    0.0665172258358359
#>     Attrib V10    -0.0055089362603490425
#>     Attrib V11    -0.0202397825344928
#>     Attrib V12    -0.025320945850284226
#>     Attrib V13    -0.0399316686123414
#>     Attrib V14    0.046466352012765055
#>     Attrib V15    0.10425166036380795
#>     Attrib V16    0.016956147809920944
#>     Attrib V17    0.05621718887855073
#>     Attrib V18    -0.034290201855408785
#>     Attrib V19    -0.07521318907739757
#>     Attrib V2    0.04125202071848273
#>     Attrib V20    -0.09385048889921145
#>     Attrib V21    -0.12086801734052195
#>     Attrib V22    -0.15876345517057458
#>     Attrib V23    -0.05057881032325076
#>     Attrib V24    -0.05704081739543265
#>     Attrib V25    -0.011433535538469609
#>     Attrib V26    0.017647921599182118
#>     Attrib V27    -0.05395004857870275
#>     Attrib V28    0.004904065243996311
#>     Attrib V29    0.009728352813408251
#>     Attrib V3    0.042930980679458976
#>     Attrib V30    0.009848978686185257
#>     Attrib V31    0.05121027609155349
#>     Attrib V32    0.06956410448258042
#>     Attrib V33    0.014868796396057395
#>     Attrib V34    0.052668663843172765
#>     Attrib V35    0.08814375498256805
#>     Attrib V36    0.16090920416530566
#>     Attrib V37    0.09834277890047839
#>     Attrib V38    0.03606319244924768
#>     Attrib V39    0.02113955545851209
#>     Attrib V4    0.0454616971226386
#>     Attrib V40    0.12381226709048014
#>     Attrib V41    0.06623951818482218
#>     Attrib V42    -0.017377116497203356
#>     Attrib V43    0.06424157681267355
#>     Attrib V44    0.03446043076990769
#>     Attrib V45    -0.03387074366805965
#>     Attrib V46    0.06312665384762946
#>     Attrib V47    0.08661535183652622
#>     Attrib V48    0.01329200869043243
#>     Attrib V49    -0.02613747475539328
#>     Attrib V5    -0.008522209526192039
#>     Attrib V50    0.09659381348538015
#>     Attrib V51    0.0761388781831958
#>     Attrib V52    0.0866915895624939
#>     Attrib V53    -0.008675829132310625
#>     Attrib V54    -0.0283134746385345
#>     Attrib V55    0.0992342099267036
#>     Attrib V56    0.11333984410002368
#>     Attrib V57    0.1459237405851306
#>     Attrib V58    0.07358113241008604
#>     Attrib V59    0.0317661498242456
#>     Attrib V6    0.07548350056323884
#>     Attrib V60    0.04687368868116756
#>     Attrib V7    0.03256581100409852
#>     Attrib V8    0.06937575355142601
#>     Attrib V9    0.10611572505588639
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.6839346575218913
#>     Attrib V1    -0.42456729671337323
#>     Attrib V10    1.371890519817922
#>     Attrib V11    1.4764474970247354
#>     Attrib V12    1.4111494925035308
#>     Attrib V13    0.6655021642283556
#>     Attrib V14    -0.6165229807190492
#>     Attrib V15    -0.3788204972506628
#>     Attrib V16    0.028779509454543942
#>     Attrib V17    -0.30911923131684355
#>     Attrib V18    -0.19866570015048532
#>     Attrib V19    0.2828167202515367
#>     Attrib V2    0.38625359211216964
#>     Attrib V20    0.09621207505275288
#>     Attrib V21    0.07514187654377745
#>     Attrib V22    0.7447733224685904
#>     Attrib V23    1.2687627457693031
#>     Attrib V24    0.4024759415234456
#>     Attrib V25    0.10210610996415426
#>     Attrib V26    1.2782913025881062
#>     Attrib V27    1.6080290984969443
#>     Attrib V28    1.3805809972151784
#>     Attrib V29    0.7429607988107545
#>     Attrib V3    -0.4277112117756649
#>     Attrib V30    0.7281614425685269
#>     Attrib V31    0.4163555222115335
#>     Attrib V32    0.916509464263621
#>     Attrib V33    -0.08186015261211417
#>     Attrib V34    -0.16605356566002347
#>     Attrib V35    -0.4709895429682939
#>     Attrib V36    -1.3972882787943401
#>     Attrib V37    -0.6871459893917985
#>     Attrib V38    -0.4385400393919917
#>     Attrib V39    0.24276282974826102
#>     Attrib V4    0.4059512230366296
#>     Attrib V40    0.501803257396991
#>     Attrib V41    1.5245481724426373
#>     Attrib V42    0.4768714753913424
#>     Attrib V43    0.23865142667369135
#>     Attrib V44    -0.3285720231935856
#>     Attrib V45    0.21822326285716875
#>     Attrib V46    0.3557576568796318
#>     Attrib V47    0.2091197069470576
#>     Attrib V48    0.8420265365052508
#>     Attrib V49    1.5032346407847335
#>     Attrib V5    0.7416091867541148
#>     Attrib V50    -0.388025718047924
#>     Attrib V51    0.7848848197806211
#>     Attrib V52    1.4761353301037505
#>     Attrib V53    0.7361514698177536
#>     Attrib V54    -0.37172999306260107
#>     Attrib V55    -0.4703209847514391
#>     Attrib V56    -0.5128310567206353
#>     Attrib V57    9.94754166542981E-4
#>     Attrib V58    0.26396342470090267
#>     Attrib V59    -0.2667315640023902
#>     Attrib V6    0.48752755780326335
#>     Attrib V60    -0.1317831817494643
#>     Attrib V7    -0.8094044400396783
#>     Attrib V8    0.44833512523317026
#>     Attrib V9    1.2215283157615249
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.20449666502982566
#>     Attrib V1    0.022320313581513665
#>     Attrib V10    -0.13680849982207832
#>     Attrib V11    -0.14187304322828712
#>     Attrib V12    -0.12832727201600563
#>     Attrib V13    -0.04291329655647268
#>     Attrib V14    0.1559358748050625
#>     Attrib V15    -0.013519691538201522
#>     Attrib V16    -0.020620534328350253
#>     Attrib V17    0.023649065409444503
#>     Attrib V18    -0.04490072599899832
#>     Attrib V19    -0.04123243890141027
#>     Attrib V2    0.04101005237686104
#>     Attrib V20    -0.14431157702865402
#>     Attrib V21    -0.13840311307452524
#>     Attrib V22    -0.18326450563585256
#>     Attrib V23    -0.0979253216369703
#>     Attrib V24    0.06063979948408093
#>     Attrib V25    0.15194128018367586
#>     Attrib V26    0.05465986348713112
#>     Attrib V27    0.0916001622697346
#>     Attrib V28    0.08078175731748861
#>     Attrib V29    0.06192823945952401
#>     Attrib V3    0.008982575890152287
#>     Attrib V30    -0.018681814582095103
#>     Attrib V31    0.18430413907233056
#>     Attrib V32    -0.02515047237774523
#>     Attrib V33    0.023336288822966407
#>     Attrib V34    0.026796560972007808
#>     Attrib V35    0.13702020747747365
#>     Attrib V36    0.33613661502400816
#>     Attrib V37    0.2499583853094237
#>     Attrib V38    -0.036660822151621864
#>     Attrib V39    -0.02173785089105294
#>     Attrib V4    -0.09572153152673854
#>     Attrib V40    0.07320148466392119
#>     Attrib V41    -0.09095544828651327
#>     Attrib V42    -0.05670024090312655
#>     Attrib V43    -0.08392709874235824
#>     Attrib V44    0.0797826047619806
#>     Attrib V45    -0.06365860185228465
#>     Attrib V46    -0.057352392550705754
#>     Attrib V47    -0.04196989443708347
#>     Attrib V48    -0.10333647622055307
#>     Attrib V49    -0.1048783742421246
#>     Attrib V5    -0.06427606240163967
#>     Attrib V50    0.1349890102965218
#>     Attrib V51    -0.08471528996143
#>     Attrib V52    -0.09390456432625512
#>     Attrib V53    -0.0796889004263869
#>     Attrib V54    -0.1399341559817236
#>     Attrib V55    0.1135471295001293
#>     Attrib V56    0.06756942830276562
#>     Attrib V57    -0.013227298412025657
#>     Attrib V58    -0.015294079895374737
#>     Attrib V59    -0.07259063564900071
#>     Attrib V6    0.07180524639096961
#>     Attrib V60    -0.023802654654413353
#>     Attrib V7    0.09260024195889253
#>     Attrib V8    -0.02421071490334892
#>     Attrib V9    -0.09190888820858588
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.5524603636419176
#>     Attrib V1    0.15311863179058674
#>     Attrib V10    0.6983082497190592
#>     Attrib V11    0.48964863574501455
#>     Attrib V12    0.39700426287911067
#>     Attrib V13    -0.05745763730734713
#>     Attrib V14    -0.4576516753522139
#>     Attrib V15    -0.09720774734918416
#>     Attrib V16    -0.15207340476074044
#>     Attrib V17    -0.46118279046045313
#>     Attrib V18    -0.5123049320949348
#>     Attrib V19    -0.3777672719804498
#>     Attrib V2    0.033867203396071556
#>     Attrib V20    -0.23722586013827104
#>     Attrib V21    -0.06193331299300131
#>     Attrib V22    -0.015487041668869016
#>     Attrib V23    -0.11968231718173557
#>     Attrib V24    -0.2855997869423292
#>     Attrib V25    -0.21720886236000161
#>     Attrib V26    0.29956482906216164
#>     Attrib V27    0.37835688746882035
#>     Attrib V28    0.4052146744301017
#>     Attrib V29    0.22801827257289553
#>     Attrib V3    -0.22365154447854194
#>     Attrib V30    0.31745386589702734
#>     Attrib V31    -0.3375745085267808
#>     Attrib V32    0.3375423151359647
#>     Attrib V33    0.2754548048139999
#>     Attrib V34    0.15462017636807804
#>     Attrib V35    0.03831821153205825
#>     Attrib V36    -0.5006492516429991
#>     Attrib V37    -0.20939834346778305
#>     Attrib V38    -0.04037435508625257
#>     Attrib V39    0.03784470613964013
#>     Attrib V4    0.40477577574289986
#>     Attrib V40    -0.10748029592362479
#>     Attrib V41    0.3801282230408654
#>     Attrib V42    0.06671652336371499
#>     Attrib V43    -0.05085009437285558
#>     Attrib V44    -0.31616357838312953
#>     Attrib V45    0.25570151789087586
#>     Attrib V46    0.16540544814466324
#>     Attrib V47    0.027881985167667364
#>     Attrib V48    0.6522673230441873
#>     Attrib V49    0.5172309381770895
#>     Attrib V5    0.07588633988111074
#>     Attrib V50    -0.16566750210137293
#>     Attrib V51    0.20887017940571587
#>     Attrib V52    0.3334450314419892
#>     Attrib V53    0.054199173077087506
#>     Attrib V54    0.11627478811209947
#>     Attrib V55    -0.2856637478902032
#>     Attrib V56    -0.4192001571321038
#>     Attrib V57    0.37665129435307626
#>     Attrib V58    0.11120935890226623
#>     Attrib V59    0.20143818708753175
#>     Attrib V6    0.09356399295427542
#>     Attrib V60    0.39342679782261364
#>     Attrib V7    -0.09088433166819755
#>     Attrib V8    0.13599052322617064
#>     Attrib V9    0.5308572532498866
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    0.09819851277220713
#>     Attrib V1    0.44479625188025695
#>     Attrib V10    -0.37797079625245
#>     Attrib V11    -0.5450410167104707
#>     Attrib V12    -0.7707084811925818
#>     Attrib V13    -0.10293194537506217
#>     Attrib V14    0.7843828020809239
#>     Attrib V15    0.10570561836539256
#>     Attrib V16    0.3954176435452361
#>     Attrib V17    0.17900856067621101
#>     Attrib V18    0.05735286291163046
#>     Attrib V19    -0.24484017017676793
#>     Attrib V2    0.2599995004989502
#>     Attrib V20    -0.22582920633483963
#>     Attrib V21    -0.37429143213920163
#>     Attrib V22    -1.1495057722814854
#>     Attrib V23    -1.445049860492929
#>     Attrib V24    -0.24387494034658225
#>     Attrib V25    0.4426907561927543
#>     Attrib V26    0.32568490253696614
#>     Attrib V27    0.5406449781674172
#>     Attrib V28    0.38885027918522824
#>     Attrib V29    -0.3181909143791078
#>     Attrib V3    -0.17505454936748074
#>     Attrib V30    -0.38216776769281935
#>     Attrib V31    0.7861483598848288
#>     Attrib V32    -0.49988551485445465
#>     Attrib V33    -0.46525190520622434
#>     Attrib V34    0.35769359917768095
#>     Attrib V35    1.3063103286903444
#>     Attrib V36    2.808294561180041
#>     Attrib V37    2.102678801830687
#>     Attrib V38    0.7926914464985781
#>     Attrib V39    0.12183602378791113
#>     Attrib V4    -0.7131164481848659
#>     Attrib V40    0.2787363072578862
#>     Attrib V41    -0.7455642815775178
#>     Attrib V42    -1.1824319302009725
#>     Attrib V43    -1.2664538330085986
#>     Attrib V44    0.1565536570649448
#>     Attrib V45    0.27379763809258245
#>     Attrib V46    0.002036869025023148
#>     Attrib V47    -0.27322714468884857
#>     Attrib V48    -0.45416449894338845
#>     Attrib V49    0.2059441728343909
#>     Attrib V5    -0.3554396593137588
#>     Attrib V50    1.8914937193387584
#>     Attrib V51    -0.6554303982405318
#>     Attrib V52    -0.7145463077451204
#>     Attrib V53    -0.8459437586669442
#>     Attrib V54    -0.9276505729006318
#>     Attrib V55    0.6337123985388652
#>     Attrib V56    -0.3163313534317985
#>     Attrib V57    -0.21424140155546653
#>     Attrib V58    -0.7862134671224414
#>     Attrib V59    -0.6357947875377571
#>     Attrib V6    0.2794363739837242
#>     Attrib V60    -0.05060646992844824
#>     Attrib V7    1.6261380643436105
#>     Attrib V8    -0.3775038547315689
#>     Attrib V9    -0.32081272102269476
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.3622345359732188
#>     Attrib V1    0.010117499298012856
#>     Attrib V10    0.39923966446353937
#>     Attrib V11    0.3244901206004553
#>     Attrib V12    0.2759616564517649
#>     Attrib V13    -0.09937565462040451
#>     Attrib V14    -0.25571538209467276
#>     Attrib V15    -0.047669894334257744
#>     Attrib V16    -0.11442046176598444
#>     Attrib V17    -0.27091150582407963
#>     Attrib V18    -0.3479684422063751
#>     Attrib V19    -0.2777635414198781
#>     Attrib V2    -0.06624932854405703
#>     Attrib V20    -0.03720739232088057
#>     Attrib V21    0.014459620701101118
#>     Attrib V22    0.00587683282448758
#>     Attrib V23    -0.15665477811517842
#>     Attrib V24    -0.27364513337652446
#>     Attrib V25    -0.20168814111845518
#>     Attrib V26    -0.0020991944738259806
#>     Attrib V27    0.1638576081809145
#>     Attrib V28    0.25552286836286636
#>     Attrib V29    0.179265144124852
#>     Attrib V3    -0.13184571057709923
#>     Attrib V30    0.16943396150483278
#>     Attrib V31    -0.3588362850308615
#>     Attrib V32    0.2553608685026908
#>     Attrib V33    0.2877463991479907
#>     Attrib V34    0.11060182575796425
#>     Attrib V35    0.04365952877303866
#>     Attrib V36    -0.41187963921899456
#>     Attrib V37    -0.17443219336608107
#>     Attrib V38    0.033259799964578084
#>     Attrib V39    0.0974386494084156
#>     Attrib V4    0.26098420507209696
#>     Attrib V40    -0.025748008787025368
#>     Attrib V41    0.24656815295394924
#>     Attrib V42    0.038069861999373386
#>     Attrib V43    0.08548027302831712
#>     Attrib V44    -0.28274868300539907
#>     Attrib V45    0.20283293887100848
#>     Attrib V46    0.1462762781126162
#>     Attrib V47    0.08334547559408431
#>     Attrib V48    0.5048257470819676
#>     Attrib V49    0.3696477335953321
#>     Attrib V5    -0.02137754710863821
#>     Attrib V50    -0.13504422958812345
#>     Attrib V51    0.1280088766175042
#>     Attrib V52    0.22021600321142715
#>     Attrib V53    0.012408333457882684
#>     Attrib V54    0.1726904458286464
#>     Attrib V55    -0.1944087324727325
#>     Attrib V56    -0.21643310278079758
#>     Attrib V57    0.3177799071279234
#>     Attrib V58    0.0343613293640352
#>     Attrib V59    0.1361693547048403
#>     Attrib V6    -0.008584716745003412
#>     Attrib V60    0.29392299558891655
#>     Attrib V7    -0.07570429006671041
#>     Attrib V8    0.09553212350797992
#>     Attrib V9    0.32798691860086726
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.018083548413020355
#>     Attrib V1    0.14267765132639032
#>     Attrib V10    0.20098034469765677
#>     Attrib V11    0.08756576938624408
#>     Attrib V12    0.12027871037055461
#>     Attrib V13    0.005782811703535792
#>     Attrib V14    -0.044290872019920276
#>     Attrib V15    0.08292371014033673
#>     Attrib V16    0.006659953029700269
#>     Attrib V17    -0.02153262954192666
#>     Attrib V18    -0.11222585884049427
#>     Attrib V19    -0.12235633783998365
#>     Attrib V2    0.03789842541035124
#>     Attrib V20    -0.022569756437445083
#>     Attrib V21    0.004451327942995883
#>     Attrib V22    -0.0925957885000669
#>     Attrib V23    -0.13200279758149444
#>     Attrib V24    -0.17897919313949945
#>     Attrib V25    -0.08004909618431376
#>     Attrib V26    -0.04187104954705524
#>     Attrib V27    -0.04908332036376893
#>     Attrib V28    0.02115337501619963
#>     Attrib V29    -0.07250922690784237
#>     Attrib V3    -0.006303468370948328
#>     Attrib V30    0.04239454346349206
#>     Attrib V31    -0.15068263635297222
#>     Attrib V32    0.0167396874912265
#>     Attrib V33    0.12030499234952739
#>     Attrib V34    0.09093855810715712
#>     Attrib V35    0.15622204837857778
#>     Attrib V36    -0.04402124900197976
#>     Attrib V37    0.022386626025678653
#>     Attrib V38    0.06403858014225236
#>     Attrib V39    0.15063568579071643
#>     Attrib V4    0.21834692059248464
#>     Attrib V40    0.040269805550066984
#>     Attrib V41    0.05535017266961955
#>     Attrib V42    0.04532329617913042
#>     Attrib V43    0.006591957638492591
#>     Attrib V44    -0.09651600013434605
#>     Attrib V45    0.08888615682411274
#>     Attrib V46    0.07322262905966799
#>     Attrib V47    0.013760786839768216
#>     Attrib V48    0.2103976058018864
#>     Attrib V49    0.07785374957865371
#>     Attrib V5    -0.01739051178027087
#>     Attrib V50    -0.02024393286798655
#>     Attrib V51    0.04734332478264795
#>     Attrib V52    0.05239164667417849
#>     Attrib V53    0.05050469000406146
#>     Attrib V54    0.2157749153081199
#>     Attrib V55    3.191457529188239E-4
#>     Attrib V56    0.06651765059803057
#>     Attrib V57    0.2488772069436916
#>     Attrib V58    0.11819697982189166
#>     Attrib V59    0.22027789445516802
#>     Attrib V6    0.004763837905760198
#>     Attrib V60    0.2788335761191964
#>     Attrib V7    0.01633672326367909
#>     Attrib V8    0.06209462947545486
#>     Attrib V9    0.10689831462103061
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.06864797118601179
#>     Attrib V1    0.0867980420587645
#>     Attrib V10    0.057565582058258236
#>     Attrib V11    0.009519001268023677
#>     Attrib V12    0.010055056452870125
#>     Attrib V13    -0.08999704960758133
#>     Attrib V14    -0.05420968057729573
#>     Attrib V15    0.15040432469456355
#>     Attrib V16    0.021132040005496292
#>     Attrib V17    0.04137767577563131
#>     Attrib V18    0.03410922089767718
#>     Attrib V19    0.08219989911200382
#>     Attrib V2    -0.031046419936203117
#>     Attrib V20    0.31762242703373283
#>     Attrib V21    0.2065060902705535
#>     Attrib V22    0.16788168374451454
#>     Attrib V23    -0.0016240700792727323
#>     Attrib V24    -0.18510827100709304
#>     Attrib V25    -0.3358316929023592
#>     Attrib V26    -0.37051867488772
#>     Attrib V27    -0.4314050265753416
#>     Attrib V28    -0.3267419622883726
#>     Attrib V29    -0.21365220066696167
#>     Attrib V3    -0.020664611108450383
#>     Attrib V30    -0.14772390095797708
#>     Attrib V31    -0.6012412353652856
#>     Attrib V32    -0.14373139143235114
#>     Attrib V33    0.16532363269425374
#>     Attrib V34    0.06653190296604006
#>     Attrib V35    0.0887407234443636
#>     Attrib V36    -0.2783166991159298
#>     Attrib V37    -0.24572019629632938
#>     Attrib V38    0.12423815454599187
#>     Attrib V39    0.11347217950670387
#>     Attrib V4    0.2657460003587184
#>     Attrib V40    -0.06494803623935384
#>     Attrib V41    -0.0300879436301813
#>     Attrib V42    0.06386484814514866
#>     Attrib V43    0.1911058486755229
#>     Attrib V44    -0.07728064110361604
#>     Attrib V45    0.017172893951307232
#>     Attrib V46    0.04741304174815021
#>     Attrib V47    0.02951607363540789
#>     Attrib V48    0.23777492847156448
#>     Attrib V49    0.03864125399647035
#>     Attrib V5    -0.034106633731360386
#>     Attrib V50    -0.1575694365561321
#>     Attrib V51    0.0028384957263815755
#>     Attrib V52    -0.031197462019822948
#>     Attrib V53    0.06924663625719989
#>     Attrib V54    0.5179487434709074
#>     Attrib V55    -0.03130370153034811
#>     Attrib V56    0.04699120935354451
#>     Attrib V57    0.35496106623970514
#>     Attrib V58    0.09329463080733172
#>     Attrib V59    0.3328321834275944
#>     Attrib V6    -0.09199021552672924
#>     Attrib V60    0.34170703528803986
#>     Attrib V7    -0.022253237397818242
#>     Attrib V8    0.1149630044245548
#>     Attrib V9    0.09371030349935401
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.005693544647151375
#>     Attrib V1    0.12091723329455142
#>     Attrib V10    0.07495879447670997
#>     Attrib V11    0.055287597174720836
#>     Attrib V12    0.05794448419083622
#>     Attrib V13    -0.1019638652574134
#>     Attrib V14    -0.013337859892211723
#>     Attrib V15    0.10511662080773718
#>     Attrib V16    0.0455792741211764
#>     Attrib V17    -0.05346093506339625
#>     Attrib V18    -0.011138284520397031
#>     Attrib V19    -0.06656370970691615
#>     Attrib V2    -0.03728666994445528
#>     Attrib V20    0.10895471947856354
#>     Attrib V21    0.09235376930677221
#>     Attrib V22    -0.018578305137586928
#>     Attrib V23    -0.05738052801341116
#>     Attrib V24    -0.1698707519272752
#>     Attrib V25    -0.2208730805462531
#>     Attrib V26    -0.20031714168917514
#>     Attrib V27    -0.1643749918576424
#>     Attrib V28    -0.06013476926034128
#>     Attrib V29    -0.08739603353057061
#>     Attrib V3    0.030142573440716587
#>     Attrib V30    8.936854612615279E-4
#>     Attrib V31    -0.36635856291471053
#>     Attrib V32    -0.0365436299644596
#>     Attrib V33    0.1531458028198815
#>     Attrib V34    0.09555180242144512
#>     Attrib V35    0.10768391597148136
#>     Attrib V36    -0.05446915353988708
#>     Attrib V37    -0.08497230377377495
#>     Attrib V38    0.04918522539771349
#>     Attrib V39    0.10891897318822885
#>     Attrib V4    0.17766944418826527
#>     Attrib V40    -0.042691254205692045
#>     Attrib V41    -0.01930343568904065
#>     Attrib V42    0.0447991628976218
#>     Attrib V43    0.0165058516764752
#>     Attrib V44    -0.04921789844055186
#>     Attrib V45    0.10807702271317361
#>     Attrib V46    0.07538652689155106
#>     Attrib V47    0.027379517611830034
#>     Attrib V48    0.1560352386622232
#>     Attrib V49    0.11455701497102755
#>     Attrib V5    0.022861498863004204
#>     Attrib V50    -0.06590539819942602
#>     Attrib V51    0.07225389295153876
#>     Attrib V52    0.06980593151484393
#>     Attrib V53    0.043359926142064936
#>     Attrib V54    0.23502653326906675
#>     Attrib V55    -0.013997524603224157
#>     Attrib V56    0.029744771893437747
#>     Attrib V57    0.27402299188334184
#>     Attrib V58    0.15792053218206717
#>     Attrib V59    0.19928388481035822
#>     Attrib V6    -0.013710406431575582
#>     Attrib V60    0.2554102876650162
#>     Attrib V7    0.02686744795848676
#>     Attrib V8    0.1119814544780133
#>     Attrib V9    0.12556478307539543
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
