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
#>     Threshold    -0.4341523677898273
#>     Node 2    2.066498165481395
#>     Node 3    1.5134614005259608
#>     Node 4    0.8747738947972483
#>     Node 5    -1.3087878312155061
#>     Node 6    1.5598571046352336
#>     Node 7    3.3418868033697837
#>     Node 8    1.142397776930781
#>     Node 9    3.5682674815437587
#>     Node 10    -1.6871265472847123
#>     Node 11    1.4807477491132337
#>     Node 12    1.5526157035815271
#>     Node 13    0.9740731410717118
#>     Node 14    1.4270118318693326
#>     Node 15    -2.257864445538798
#>     Node 16    -0.4088363645453737
#>     Node 17    1.0032197339650297
#>     Node 18    0.39841615660213975
#>     Node 19    2.0112653845194988
#>     Node 20    2.6389390104057715
#>     Node 21    -2.5834680492231197
#>     Node 22    0.9268949281005658
#>     Node 23    1.6904404127953188
#>     Node 24    -2.3840423879950596
#>     Node 25    3.29716913456024
#>     Node 26    0.32517599512596274
#>     Node 27    2.1952332030454245
#>     Node 28    -2.7561045932418424
#>     Node 29    1.6589955845722169
#>     Node 30    0.42827792906075607
#>     Node 31    1.274733612137985
#>     Node 32    0.8425902370557494
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.44706530905250924
#>     Node 2    -2.108563218478709
#>     Node 3    -1.4986482638637162
#>     Node 4    -0.8404359766642404
#>     Node 5    1.331852293957154
#>     Node 6    -1.5367069498337294
#>     Node 7    -3.3289480742753383
#>     Node 8    -1.1682089546059722
#>     Node 9    -3.572770477718765
#>     Node 10    1.6213071307077886
#>     Node 11    -1.4423776173832972
#>     Node 12    -1.628249280615803
#>     Node 13    -0.9261749390011134
#>     Node 14    -1.3659210553022516
#>     Node 15    2.2428367363475203
#>     Node 16    0.3909088361706179
#>     Node 17    -0.9754010081216936
#>     Node 18    -0.3612724132847979
#>     Node 19    -2.0023345974793147
#>     Node 20    -2.6313942331701825
#>     Node 21    2.6446177175251964
#>     Node 22    -0.9860089269861687
#>     Node 23    -1.7392635515971766
#>     Node 24    2.369794229699878
#>     Node 25    -3.2775382985147816
#>     Node 26    -0.4115071365363925
#>     Node 27    -2.218436297197882
#>     Node 28    2.744000393974695
#>     Node 29    -1.6809271752831274
#>     Node 30    -0.35562442667075106
#>     Node 31    -1.2275942690489694
#>     Node 32    -0.8673939340407016
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.10702602231323216
#>     Attrib V1    0.440942176594632
#>     Attrib V10    -0.015948886661965887
#>     Attrib V11    -0.3048736190996913
#>     Attrib V12    -0.12262255984861115
#>     Attrib V13    -0.13738802215875404
#>     Attrib V14    -0.25149450866116235
#>     Attrib V15    0.12721064511264146
#>     Attrib V16    0.3128699694388569
#>     Attrib V17    0.08945617507857075
#>     Attrib V18    -0.10135529294651864
#>     Attrib V19    -0.13340768101139402
#>     Attrib V2    0.48142058940444976
#>     Attrib V20    0.4169656760107905
#>     Attrib V21    0.6592157988044236
#>     Attrib V22    0.6632413336043249
#>     Attrib V23    -0.008335585860178924
#>     Attrib V24    -0.13821711439207507
#>     Attrib V25    -0.36944768993996263
#>     Attrib V26    -1.111045964600808
#>     Attrib V27    -0.9873512591908384
#>     Attrib V28    0.044429462011940736
#>     Attrib V29    0.05722321438019863
#>     Attrib V3    0.3879682943781799
#>     Attrib V30    0.3217518747640165
#>     Attrib V31    -1.3359841958251397
#>     Attrib V32    0.057094893886792716
#>     Attrib V33    0.09434390800904646
#>     Attrib V34    -0.5372338430914637
#>     Attrib V35    -0.26536283592521576
#>     Attrib V36    -0.7021620807721657
#>     Attrib V37    -0.38428797309239127
#>     Attrib V38    0.35776441393757985
#>     Attrib V39    0.336727605947886
#>     Attrib V4    0.161950076618185
#>     Attrib V40    -0.19750881202839102
#>     Attrib V41    0.08032543574454172
#>     Attrib V42    0.7022301239721256
#>     Attrib V43    0.6767774117037465
#>     Attrib V44    0.6594917402746129
#>     Attrib V45    0.4921577595005474
#>     Attrib V46    0.2696181271641662
#>     Attrib V47    -0.33706094502655015
#>     Attrib V48    0.05493999541619266
#>     Attrib V49    -0.08843644445728639
#>     Attrib V5    -0.32768937790241837
#>     Attrib V50    -1.005806407192926
#>     Attrib V51    -0.1574335279738439
#>     Attrib V52    -0.06412405946988595
#>     Attrib V53    0.2518105294753126
#>     Attrib V54    0.5215581139307751
#>     Attrib V55    -0.49289410182582755
#>     Attrib V56    1.0416073951545282
#>     Attrib V57    -0.7087792118993601
#>     Attrib V58    0.5371705042406637
#>     Attrib V59    0.17016234081984072
#>     Attrib V6    -0.23157385492577967
#>     Attrib V60    0.5684408761365566
#>     Attrib V7    0.11332921536094981
#>     Attrib V8    -0.3825881084186759
#>     Attrib V9    0.3242751763562854
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.14105262555440448
#>     Attrib V1    0.3692232005565199
#>     Attrib V10    -0.060392698847987675
#>     Attrib V11    -0.3077906980477873
#>     Attrib V12    -0.21645158218038998
#>     Attrib V13    -0.09194250841013545
#>     Attrib V14    -0.012966482528577714
#>     Attrib V15    0.31631207289618435
#>     Attrib V16    0.2592533893919757
#>     Attrib V17    0.03957252335976911
#>     Attrib V18    -0.08666517915921328
#>     Attrib V19    -0.014193639817406479
#>     Attrib V2    0.4060809816214703
#>     Attrib V20    0.29748329822232333
#>     Attrib V21    0.41035150345004145
#>     Attrib V22    0.46419984145168935
#>     Attrib V23    0.010048213482715668
#>     Attrib V24    -0.09369045373380702
#>     Attrib V25    -0.26815654448853005
#>     Attrib V26    -0.8465137411416576
#>     Attrib V27    -0.7652979143171889
#>     Attrib V28    -0.06397198199792213
#>     Attrib V29    0.013599596065227131
#>     Attrib V3    0.2705214983467872
#>     Attrib V30    0.1823701306871868
#>     Attrib V31    -0.8869460299497063
#>     Attrib V32    -0.0214374139993751
#>     Attrib V33    -0.01945938881854529
#>     Attrib V34    -0.45967417996811266
#>     Attrib V35    -0.23639395314355807
#>     Attrib V36    -0.5248625363928648
#>     Attrib V37    -0.20976667716868042
#>     Attrib V38    0.2377643519472624
#>     Attrib V39    0.36418354228842853
#>     Attrib V4    0.09470981841815986
#>     Attrib V40    -0.06672869039773588
#>     Attrib V41    -0.015702633899528765
#>     Attrib V42    0.3659667353908563
#>     Attrib V43    0.3528130137668707
#>     Attrib V44    0.3862739064665867
#>     Attrib V45    0.24679603958146748
#>     Attrib V46    0.143942108127869
#>     Attrib V47    -0.18583281580815386
#>     Attrib V48    -0.004708999017545212
#>     Attrib V49    -0.042879118413949285
#>     Attrib V5    -0.28185552544773385
#>     Attrib V50    -0.571065470680914
#>     Attrib V51    -0.0810467346967702
#>     Attrib V52    7.947168030714768E-4
#>     Attrib V53    0.2505895128965922
#>     Attrib V54    0.4834847109249695
#>     Attrib V55    -0.13584758275822478
#>     Attrib V56    0.8490331863439083
#>     Attrib V57    -0.33454548396015615
#>     Attrib V58    0.5359309560778998
#>     Attrib V59    0.17481394469207656
#>     Attrib V6    -0.10267896639563953
#>     Attrib V60    0.3946116161882097
#>     Attrib V7    0.15062828224229682
#>     Attrib V8    -0.25725419302415653
#>     Attrib V9    0.1167465095296121
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.02965179664293308
#>     Attrib V1    0.2196180923601923
#>     Attrib V10    -0.007460035134385531
#>     Attrib V11    -0.08650539162860328
#>     Attrib V12    -0.03439711309445077
#>     Attrib V13    0.054157084841224876
#>     Attrib V14    0.14179816413139
#>     Attrib V15    0.24546041942043595
#>     Attrib V16    0.11290109961498669
#>     Attrib V17    -0.023006226130531316
#>     Attrib V18    -0.09036616157052833
#>     Attrib V19    -0.08172941552270398
#>     Attrib V2    0.16297576102659936
#>     Attrib V20    0.052490539860191934
#>     Attrib V21    0.1227768633838963
#>     Attrib V22    -0.023065155289938754
#>     Attrib V23    -0.2001663276078883
#>     Attrib V24    -0.1871608306473771
#>     Attrib V25    -0.20734587144333444
#>     Attrib V26    -0.40490967872376715
#>     Attrib V27    -0.38779551841289406
#>     Attrib V28    -0.00783234319855347
#>     Attrib V29    0.038154214025217195
#>     Attrib V3    0.17127429757652818
#>     Attrib V30    0.009359418584918
#>     Attrib V31    -0.4291336984635651
#>     Attrib V32    -0.1271287018683912
#>     Attrib V33    -0.042932535424254986
#>     Attrib V34    -0.11058900318463616
#>     Attrib V35    0.03180238635355128
#>     Attrib V36    -0.1828046814217663
#>     Attrib V37    -0.13028189127998654
#>     Attrib V38    0.08607150522167824
#>     Attrib V39    0.20188128301377287
#>     Attrib V4    0.11742525629355725
#>     Attrib V40    -0.027118541813865693
#>     Attrib V41    -0.0518963036162714
#>     Attrib V42    0.14281007012292857
#>     Attrib V43    0.15716579624919996
#>     Attrib V44    0.16947386694256683
#>     Attrib V45    0.22522290304553175
#>     Attrib V46    0.08053934073276925
#>     Attrib V47    -0.011859464874466485
#>     Attrib V48    0.17657925936716973
#>     Attrib V49    0.12520243047714527
#>     Attrib V5    0.027961475519473304
#>     Attrib V50    -0.08240643616706489
#>     Attrib V51    0.17975838026139948
#>     Attrib V52    0.017127946080253836
#>     Attrib V53    0.2622280199016474
#>     Attrib V54    0.22088456177104274
#>     Attrib V55    0.1087258833278623
#>     Attrib V56    0.47834746016943636
#>     Attrib V57    -0.06665962585793529
#>     Attrib V58    0.3259689704760737
#>     Attrib V59    0.2910172564053497
#>     Attrib V6    -0.015069607038823533
#>     Attrib V60    0.36172949384631103
#>     Attrib V7    0.13701522487773313
#>     Attrib V8    -0.19364689503988106
#>     Attrib V9    0.05759544163939751
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.20157786059035643
#>     Attrib V1    -0.18779378741570432
#>     Attrib V10    -0.14445725120737873
#>     Attrib V11    -0.08275423203797319
#>     Attrib V12    -0.2661897195298498
#>     Attrib V13    -0.08196107829883184
#>     Attrib V14    0.4275316180446529
#>     Attrib V15    0.3354143824396028
#>     Attrib V16    0.10174051897866229
#>     Attrib V17    0.22422511314238947
#>     Attrib V18    0.21644964773602582
#>     Attrib V19    0.20334390335732963
#>     Attrib V2    -0.10425624968186245
#>     Attrib V20    -0.1828268144882765
#>     Attrib V21    -0.4000664094665006
#>     Attrib V22    -0.6007390761894547
#>     Attrib V23    -0.1524860594272063
#>     Attrib V24    -0.12451975862357509
#>     Attrib V25    -0.07473932129984757
#>     Attrib V26    0.2618640856035457
#>     Attrib V27    0.43781460338134365
#>     Attrib V28    -0.04306859332900164
#>     Attrib V29    0.018055723797639363
#>     Attrib V3    -0.1180451713934305
#>     Attrib V30    -0.2408087860174911
#>     Attrib V31    0.7413020397358004
#>     Attrib V32    -0.11041186933403951
#>     Attrib V33    -0.20010906642443407
#>     Attrib V34    0.19788525430663595
#>     Attrib V35    0.020479539473190145
#>     Attrib V36    0.5485639746676914
#>     Attrib V37    0.46892830526833157
#>     Attrib V38    -0.10398308919441629
#>     Attrib V39    -0.06821858459865726
#>     Attrib V4    -0.0923058047053908
#>     Attrib V40    0.35352402677207767
#>     Attrib V41    -0.16267553918300504
#>     Attrib V42    -0.39786741796054076
#>     Attrib V43    -0.5464178529884168
#>     Attrib V44    -0.44200702067557057
#>     Attrib V45    -0.4125205510996195
#>     Attrib V46    -0.3641130465004078
#>     Attrib V47    -0.03640706584763357
#>     Attrib V48    -0.21378599576036364
#>     Attrib V49    -0.08610618658992102
#>     Attrib V5    0.2151909748749409
#>     Attrib V50    0.7670309393246587
#>     Attrib V51    -0.0732586004466164
#>     Attrib V52    -0.017032110250993434
#>     Attrib V53    -0.08013765751406166
#>     Attrib V54    -0.1631077938785169
#>     Attrib V55    0.23425482408269874
#>     Attrib V56    -0.4888795915686507
#>     Attrib V57    0.5426711425923441
#>     Attrib V58    -0.49831735240047853
#>     Attrib V59    -0.06608260913535778
#>     Attrib V6    0.23225731868804106
#>     Attrib V60    -0.1246823117787344
#>     Attrib V7    0.1241547114237941
#>     Attrib V8    0.3936348792260359
#>     Attrib V9    -0.4065703853539989
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.14786945581154085
#>     Attrib V1    0.34568611982853104
#>     Attrib V10    -0.10739177045535189
#>     Attrib V11    -0.2976837492484654
#>     Attrib V12    -0.12025097343469582
#>     Attrib V13    -0.1442146942576248
#>     Attrib V14    -0.161078271474356
#>     Attrib V15    0.1531664466077688
#>     Attrib V16    0.3111869045339684
#>     Attrib V17    0.026219933761854195
#>     Attrib V18    -0.060266354536412055
#>     Attrib V19    -0.11079325171134707
#>     Attrib V2    0.3624664196391897
#>     Attrib V20    0.266761945983881
#>     Attrib V21    0.4542016007363822
#>     Attrib V22    0.4352806128862948
#>     Attrib V23    -0.007891018007915645
#>     Attrib V24    -0.03429239145953255
#>     Attrib V25    -0.21910308943485837
#>     Attrib V26    -0.8634793743933739
#>     Attrib V27    -0.7788339866713245
#>     Attrib V28    -0.12075794920375031
#>     Attrib V29    -0.051783914415684834
#>     Attrib V3    0.2605044399368191
#>     Attrib V30    0.16312486681595106
#>     Attrib V31    -0.9400124676292589
#>     Attrib V32    0.05478288223110739
#>     Attrib V33    0.08475941904855443
#>     Attrib V34    -0.3866450985632081
#>     Attrib V35    -0.18068543626348763
#>     Attrib V36    -0.5998083083730531
#>     Attrib V37    -0.3285916651058007
#>     Attrib V38    0.2016019172176921
#>     Attrib V39    0.2541775656506905
#>     Attrib V4    0.13890187513636476
#>     Attrib V40    -0.13964236625512558
#>     Attrib V41    0.07116247984163286
#>     Attrib V42    0.495821267178442
#>     Attrib V43    0.4463612483076701
#>     Attrib V44    0.4209770753522894
#>     Attrib V45    0.35322509817160197
#>     Attrib V46    0.24586442061740565
#>     Attrib V47    -0.21395018766569962
#>     Attrib V48    0.06354313762951355
#>     Attrib V49    -0.04152756976083658
#>     Attrib V5    -0.284039070055581
#>     Attrib V50    -0.6626265798698497
#>     Attrib V51    -0.10369837973347751
#>     Attrib V52    -0.07919717673965505
#>     Attrib V53    0.25962977166986845
#>     Attrib V54    0.36810974012053427
#>     Attrib V55    -0.3109794328901201
#>     Attrib V56    0.8210220272106676
#>     Attrib V57    -0.46093819809437436
#>     Attrib V58    0.4960709960538985
#>     Attrib V59    0.21259317384324417
#>     Attrib V6    -0.08270502893777278
#>     Attrib V60    0.5138215730780861
#>     Attrib V7    0.18081854228929406
#>     Attrib V8    -0.2838282521532281
#>     Attrib V9    0.2514408205790998
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.6741663973696422
#>     Attrib V1    -0.04014031502877058
#>     Attrib V10    0.9644593916237714
#>     Attrib V11    1.0160921365127709
#>     Attrib V12    0.6603564053005223
#>     Attrib V13    0.3062384751156408
#>     Attrib V14    -0.5610795288018646
#>     Attrib V15    -0.7510883154782894
#>     Attrib V16    -0.47275197094405563
#>     Attrib V17    -0.6050903860122782
#>     Attrib V18    -0.23746503388569704
#>     Attrib V19    -0.02133862968266964
#>     Attrib V2    -0.2934813261255666
#>     Attrib V20    -0.007622040413418599
#>     Attrib V21    0.32550612984732835
#>     Attrib V22    0.7082303227569218
#>     Attrib V23    0.659878526011956
#>     Attrib V24    0.46597100214816406
#>     Attrib V25    0.5415471509244341
#>     Attrib V26    1.0028924923551095
#>     Attrib V27    0.8779340738697513
#>     Attrib V28    1.147896272438147
#>     Attrib V29    0.9129717388343432
#>     Attrib V3    -0.2577361715711671
#>     Attrib V30    0.7129757083055034
#>     Attrib V31    -0.36465173116312527
#>     Attrib V32    -0.09215562418656648
#>     Attrib V33    -0.0546319582694494
#>     Attrib V34    0.03402482272915837
#>     Attrib V35    0.5473192729980207
#>     Attrib V36    -0.12321820273158902
#>     Attrib V37    -0.3792583158437239
#>     Attrib V38    -0.17381871679033317
#>     Attrib V39    -0.4791173121835101
#>     Attrib V4    0.08433458279128009
#>     Attrib V40    -0.6716116888193363
#>     Attrib V41    0.755854679036443
#>     Attrib V42    0.4129102066459224
#>     Attrib V43    0.6245130263179065
#>     Attrib V44    0.6002150054848253
#>     Attrib V45    0.7113902357025927
#>     Attrib V46    0.7195910910800026
#>     Attrib V47    0.8238443106549938
#>     Attrib V48    0.7251662487218807
#>     Attrib V49    0.7101765638089219
#>     Attrib V5    0.3075818863267606
#>     Attrib V50    -0.12677585664081378
#>     Attrib V51    1.561940808634203
#>     Attrib V52    0.5397993114635367
#>     Attrib V53    0.06475176127429494
#>     Attrib V54    0.48505524658713034
#>     Attrib V55    0.4517782683029635
#>     Attrib V56    -0.45814919982329916
#>     Attrib V57    -0.7377815210065076
#>     Attrib V58    0.6128484961197648
#>     Attrib V59    0.16548143711388158
#>     Attrib V6    0.09045166562352663
#>     Attrib V60    0.013083889134594068
#>     Attrib V7    0.09563817223586589
#>     Attrib V8    -0.17567107577582994
#>     Attrib V9    0.8713395152275493
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.33648471014995485
#>     Attrib V1    0.13323272704237515
#>     Attrib V10    0.19902571873774424
#>     Attrib V11    0.07930674810868685
#>     Attrib V12    0.11556408302973543
#>     Attrib V13    0.02402272156585844
#>     Attrib V14    -0.31536512458661664
#>     Attrib V15    -0.1634862023008136
#>     Attrib V16    -0.060394686834989664
#>     Attrib V17    -0.2068875236109907
#>     Attrib V18    -0.26870929730448234
#>     Attrib V19    -0.26568668466651735
#>     Attrib V2    0.07048539486010556
#>     Attrib V20    -0.09351790708990175
#>     Attrib V21    0.16388885832789735
#>     Attrib V22    0.15987059947622703
#>     Attrib V23    -0.1537149717074542
#>     Attrib V24    -0.16044942817893176
#>     Attrib V25    -0.1696423434266496
#>     Attrib V26    -0.30752165199562137
#>     Attrib V27    -0.18361567797841394
#>     Attrib V28    0.34641977992109985
#>     Attrib V29    0.29312143811235986
#>     Attrib V3    0.033926733373345425
#>     Attrib V30    0.3192792737652494
#>     Attrib V31    -0.5136145847512082
#>     Attrib V32    0.06055412901927949
#>     Attrib V33    0.09452606805229703
#>     Attrib V34    -0.2123656405066505
#>     Attrib V35    -0.027058802453256408
#>     Attrib V36    -0.30239786299567356
#>     Attrib V37    -0.2590320879627006
#>     Attrib V38    0.12196443102338057
#>     Attrib V39    0.032813239448170495
#>     Attrib V4    0.1297361288203624
#>     Attrib V40    -0.33005332693368244
#>     Attrib V41    -0.007651124275969131
#>     Attrib V42    0.12080975828925232
#>     Attrib V43    0.2701709154760854
#>     Attrib V44    0.3060831867817755
#>     Attrib V45    0.2806019379317273
#>     Attrib V46    0.2097416894307092
#>     Attrib V47    0.07639715082256213
#>     Attrib V48    0.27215380689789015
#>     Attrib V49    0.09995862464009161
#>     Attrib V5    -0.10079979694377576
#>     Attrib V50    -0.4220728672159389
#>     Attrib V51    0.2780034959810676
#>     Attrib V52    0.03470473059732744
#>     Attrib V53    0.050130347561662944
#>     Attrib V54    0.23902264841323234
#>     Attrib V55    -0.21328165841778315
#>     Attrib V56    0.33718018870038285
#>     Attrib V57    -0.275134431693199
#>     Attrib V58    0.276340450545091
#>     Attrib V59    0.19313187797914239
#>     Attrib V6    -0.1077818239605073
#>     Attrib V60    0.30642559375116346
#>     Attrib V7    0.01934559671012265
#>     Attrib V8    -0.36652933821612144
#>     Attrib V9    0.20872545619384758
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.4365114133919719
#>     Attrib V1    -0.3865671433265654
#>     Attrib V10    1.0618577357086951
#>     Attrib V11    1.074398186115705
#>     Attrib V12    1.108491307195602
#>     Attrib V13    0.4471163262754623
#>     Attrib V14    -0.8038937350656067
#>     Attrib V15    -1.0525020483041274
#>     Attrib V16    -0.6987741995015945
#>     Attrib V17    -0.6112407061593196
#>     Attrib V18    -0.26463882437731306
#>     Attrib V19    -0.2526864694689001
#>     Attrib V2    -0.6068112349629274
#>     Attrib V20    -0.3214028699457621
#>     Attrib V21    0.11470545502706479
#>     Attrib V22    0.6459166841015674
#>     Attrib V23    0.5890073446974553
#>     Attrib V24    0.6605070991568723
#>     Attrib V25    0.9734769644442435
#>     Attrib V26    1.321831463389365
#>     Attrib V27    0.9544723012152435
#>     Attrib V28    0.6547729340801891
#>     Attrib V29    0.04476304656143313
#>     Attrib V3    -0.3592949981312927
#>     Attrib V30    0.5176434465867602
#>     Attrib V31    -0.15779464285108216
#>     Attrib V32    -0.027950042905243538
#>     Attrib V33    0.06341190962434345
#>     Attrib V34    0.3193473251533615
#>     Attrib V35    0.7705531745565378
#>     Attrib V36    -0.08852087103591694
#>     Attrib V37    -0.6213763658217154
#>     Attrib V38    -0.25387508220473975
#>     Attrib V39    -0.5159025584913473
#>     Attrib V4    0.023682818996391568
#>     Attrib V40    -0.6112967421767318
#>     Attrib V41    0.7946429409933692
#>     Attrib V42    0.41085958207722617
#>     Attrib V43    0.8494070817618395
#>     Attrib V44    0.5835381773899003
#>     Attrib V45    0.7123867453117588
#>     Attrib V46    0.8173626272427226
#>     Attrib V47    0.9678329306862823
#>     Attrib V48    1.0032611859330045
#>     Attrib V49    0.7217418732636119
#>     Attrib V5    0.3344838534975286
#>     Attrib V50    -0.24156352233492231
#>     Attrib V51    1.7001422663868306
#>     Attrib V52    0.44195531209816785
#>     Attrib V53    0.0652737942949156
#>     Attrib V54    0.46040075675797115
#>     Attrib V55    0.37472919767830504
#>     Attrib V56    -0.43997639160297164
#>     Attrib V57    -0.9303810431446619
#>     Attrib V58    0.45740407683892864
#>     Attrib V59    0.2988977289746252
#>     Attrib V6    0.01751871518945621
#>     Attrib V60    0.23134161785089513
#>     Attrib V7    0.0533032021958054
#>     Attrib V8    -0.22158389441249216
#>     Attrib V9    0.9668069043736809
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.20107404311597005
#>     Attrib V1    -0.18911153936010294
#>     Attrib V10    -0.13663057723494157
#>     Attrib V11    -0.04871699823310366
#>     Attrib V12    -0.20320053469568472
#>     Attrib V13    -0.005484186052471773
#>     Attrib V14    0.5585483053726015
#>     Attrib V15    0.2753678661492488
#>     Attrib V16    0.02474416524403402
#>     Attrib V17    0.04064169553916382
#>     Attrib V18    0.1838610212239026
#>     Attrib V19    0.22623486668593193
#>     Attrib V2    -0.2174190156587598
#>     Attrib V20    -0.15111479599154243
#>     Attrib V21    -0.46146857335052155
#>     Attrib V22    -0.7615750891599753
#>     Attrib V23    -0.2540525869245491
#>     Attrib V24    -0.17873247472678294
#>     Attrib V25    -0.11549827851505982
#>     Attrib V26    0.47308106173459324
#>     Attrib V27    0.648045923135941
#>     Attrib V28    0.0361136511831342
#>     Attrib V29    0.029244644983625435
#>     Attrib V3    -0.21918943964902343
#>     Attrib V30    -0.32080112095512847
#>     Attrib V31    0.8901719542201098
#>     Attrib V32    -0.25384715441868266
#>     Attrib V33    -0.2568808479546628
#>     Attrib V34    0.26796820024943
#>     Attrib V35    0.0037669712036040343
#>     Attrib V36    0.5969492100012342
#>     Attrib V37    0.5495484685759037
#>     Attrib V38    -0.08327787296429683
#>     Attrib V39    -0.09312194926685259
#>     Attrib V4    -0.08706579276416382
#>     Attrib V40    0.3644817740880419
#>     Attrib V41    -0.1650959330584549
#>     Attrib V42    -0.5942056448057784
#>     Attrib V43    -0.7065706358471521
#>     Attrib V44    -0.6022719718700156
#>     Attrib V45    -0.46155324075725696
#>     Attrib V46    -0.4091936379451451
#>     Attrib V47    0.0011965665658769055
#>     Attrib V48    -0.2719496202076039
#>     Attrib V49    -0.06880619252999039
#>     Attrib V5    0.27227742576197894
#>     Attrib V50    0.9864616455853039
#>     Attrib V51    -0.02802758815292415
#>     Attrib V52    0.00504664962934892
#>     Attrib V53    -0.028497397938383587
#>     Attrib V54    -0.2165974298202044
#>     Attrib V55    0.31406238552115223
#>     Attrib V56    -0.7087154752726251
#>     Attrib V57    0.7359237640775669
#>     Attrib V58    -0.545850892314594
#>     Attrib V59    -0.10136359830923215
#>     Attrib V6    0.23569675571342402
#>     Attrib V60    -0.2820189061500871
#>     Attrib V7    0.030670633195274324
#>     Attrib V8    0.41540550694278955
#>     Attrib V9    -0.4762956087969945
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.23446406779007664
#>     Attrib V1    0.24089043437668314
#>     Attrib V10    0.01614108254534031
#>     Attrib V11    -0.19458258151110347
#>     Attrib V12    -0.038877715568917726
#>     Attrib V13    -0.12133915770571504
#>     Attrib V14    -0.21986054942132474
#>     Attrib V15    0.04929189425361569
#>     Attrib V16    0.14032672540356075
#>     Attrib V17    0.013337713845921171
#>     Attrib V18    -0.0982131422394224
#>     Attrib V19    -0.14049288548883604
#>     Attrib V2    0.2363993213151142
#>     Attrib V20    0.24941011686734427
#>     Attrib V21    0.4006502509329513
#>     Attrib V22    0.3855965749512684
#>     Attrib V23    -0.08779885125248872
#>     Attrib V24    -0.18099628759145767
#>     Attrib V25    -0.28113894537614187
#>     Attrib V26    -0.7878191449652457
#>     Attrib V27    -0.5961671016643891
#>     Attrib V28    0.15512395724783207
#>     Attrib V29    0.1309482737644566
#>     Attrib V3    0.146647793763648
#>     Attrib V30    0.2672277231891396
#>     Attrib V31    -0.9674194531805191
#>     Attrib V32    -0.06191024251623122
#>     Attrib V33    0.03305402301876336
#>     Attrib V34    -0.31650264837765824
#>     Attrib V35    -0.1006508041050869
#>     Attrib V36    -0.47862090481015673
#>     Attrib V37    -0.2551531410605326
#>     Attrib V38    0.2921080919053727
#>     Attrib V39    0.2275129067829299
#>     Attrib V4    0.08002814973862757
#>     Attrib V40    -0.2159592944156523
#>     Attrib V41    -0.026877105443814348
#>     Attrib V42    0.4099390800832232
#>     Attrib V43    0.4327899217555193
#>     Attrib V44    0.4468726514208471
#>     Attrib V45    0.38583237108125856
#>     Attrib V46    0.18417192802482876
#>     Attrib V47    -0.14585873746381015
#>     Attrib V48    0.12675344513575587
#>     Attrib V49    -0.024806666482012404
#>     Attrib V5    -0.21182124422286108
#>     Attrib V50    -0.615756722341097
#>     Attrib V51    0.12043676770262945
#>     Attrib V52    -0.03941411667646727
#>     Attrib V53    0.19019646227184395
#>     Attrib V54    0.4583872611579821
#>     Attrib V55    -0.3295557876863983
#>     Attrib V56    0.7478856491126328
#>     Attrib V57    -0.43973819545588416
#>     Attrib V58    0.4180795599289344
#>     Attrib V59    0.10559764814625165
#>     Attrib V6    -0.08365933222047343
#>     Attrib V60    0.40688150828725556
#>     Attrib V7    0.05701726263545824
#>     Attrib V8    -0.3399986069721544
#>     Attrib V9    0.2365138125460091
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.284266179360943
#>     Attrib V1    0.32162388848430273
#>     Attrib V10    -0.10798213867280423
#>     Attrib V11    -0.27203303937462303
#>     Attrib V12    -0.2788645654942047
#>     Attrib V13    -0.12260887165395094
#>     Attrib V14    -0.019368340272144038
#>     Attrib V15    0.2378818856269245
#>     Attrib V16    0.2729212230020253
#>     Attrib V17    0.0059291378838216965
#>     Attrib V18    -0.07762213287854253
#>     Attrib V19    0.002890601458740768
#>     Attrib V2    0.3933645011815144
#>     Attrib V20    0.2843142282178574
#>     Attrib V21    0.45803606815296066
#>     Attrib V22    0.4641321636895222
#>     Attrib V23    -0.03307706422247434
#>     Attrib V24    -0.17717095255407234
#>     Attrib V25    -0.3907273627971276
#>     Attrib V26    -0.8849903557405331
#>     Attrib V27    -0.6514271640700535
#>     Attrib V28    0.07395324130577731
#>     Attrib V29    0.2457131690314593
#>     Attrib V3    0.17602507757887748
#>     Attrib V30    0.19541450662867677
#>     Attrib V31    -1.0029159258441938
#>     Attrib V32    -0.1420610215557304
#>     Attrib V33    -0.021084889261125374
#>     Attrib V34    -0.3863154222811477
#>     Attrib V35    -0.21136159512509967
#>     Attrib V36    -0.5099623253048842
#>     Attrib V37    -0.20538016544051538
#>     Attrib V38    0.3014827369332528
#>     Attrib V39    0.31669383866164025
#>     Attrib V4    0.12111887886135933
#>     Attrib V40    -0.08381906914917765
#>     Attrib V41    -0.014867969813302049
#>     Attrib V42    0.3495513825691046
#>     Attrib V43    0.4229526341750279
#>     Attrib V44    0.3518680037567759
#>     Attrib V45    0.29862968419881325
#>     Attrib V46    0.21601228091867936
#>     Attrib V47    -0.21760086076624013
#>     Attrib V48    0.0657965475553589
#>     Attrib V49    -0.03884439408781599
#>     Attrib V5    -0.2687546285233798
#>     Attrib V50    -0.5920229870662345
#>     Attrib V51    -0.00660701561165809
#>     Attrib V52    0.0034132227758655372
#>     Attrib V53    0.33286218521614597
#>     Attrib V54    0.4663568854221024
#>     Attrib V55    -0.23875274661118823
#>     Attrib V56    0.861798806109626
#>     Attrib V57    -0.31903699821328424
#>     Attrib V58    0.5031231923503026
#>     Attrib V59    0.21934005302653534
#>     Attrib V6    -0.07726346086081373
#>     Attrib V60    0.4408417201977303
#>     Attrib V7    0.1933354880757879
#>     Attrib V8    -0.2966595905528699
#>     Attrib V9    0.1442686819899197
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.030035219349597752
#>     Attrib V1    0.24037539237060454
#>     Attrib V10    -0.12495698664557392
#>     Attrib V11    -0.18433407331034293
#>     Attrib V12    -0.06899791391559676
#>     Attrib V13    0.03799604565601285
#>     Attrib V14    0.03005658301739424
#>     Attrib V15    0.1480884252077031
#>     Attrib V16    0.11034805857126967
#>     Attrib V17    0.021428716228750415
#>     Attrib V18    -0.02387667424666178
#>     Attrib V19    -0.047789998075339506
#>     Attrib V2    0.1934906867128214
#>     Attrib V20    0.1741587432783919
#>     Attrib V21    0.22705734786697937
#>     Attrib V22    0.13863848203248905
#>     Attrib V23    -0.06032155775142966
#>     Attrib V24    -0.05181364653272139
#>     Attrib V25    -0.08108536200012541
#>     Attrib V26    -0.5113919188063784
#>     Attrib V27    -0.4407123447130687
#>     Attrib V28    -0.13886877771650033
#>     Attrib V29    -0.028278310194582518
#>     Attrib V3    0.2056567328698349
#>     Attrib V30    0.010574810682672672
#>     Attrib V31    -0.6001771594254123
#>     Attrib V32    -0.10431565926917086
#>     Attrib V33    -0.04694097278205987
#>     Attrib V34    -0.12937697172435875
#>     Attrib V35    -0.04138224271774993
#>     Attrib V36    -0.28417929882792875
#>     Attrib V37    -0.15972561004406044
#>     Attrib V38    0.1313290271664163
#>     Attrib V39    0.2722612755079895
#>     Attrib V4    0.10561527691454865
#>     Attrib V40    0.007611718445937404
#>     Attrib V41    0.005189980818305892
#>     Attrib V42    0.20842841339809073
#>     Attrib V43    0.20265749621829388
#>     Attrib V44    0.19979712052649917
#>     Attrib V45    0.15302593167838852
#>     Attrib V46    0.15128466071528926
#>     Attrib V47    -0.027607632490778918
#>     Attrib V48    0.09218451022786361
#>     Attrib V49    0.058132783268737165
#>     Attrib V5    -0.06957916952547107
#>     Attrib V50    -0.2854026685905743
#>     Attrib V51    -0.001745448809969495
#>     Attrib V52    -0.03969130392173483
#>     Attrib V53    0.2545745261208581
#>     Attrib V54    0.279932245992221
#>     Attrib V55    -0.03202158014452515
#>     Attrib V56    0.5219057470045187
#>     Attrib V57    -0.17747075649084806
#>     Attrib V58    0.3124053118373485
#>     Attrib V59    0.2852653610647565
#>     Attrib V6    0.01830493082574202
#>     Attrib V60    0.42862941697671886
#>     Attrib V7    0.16378334839068048
#>     Attrib V8    -0.2649572653766136
#>     Attrib V9    0.022314835475878893
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.2944346976102519
#>     Attrib V1    0.41586225705456614
#>     Attrib V10    0.056507952500588744
#>     Attrib V11    -0.0341077283621247
#>     Attrib V12    0.03511919854761457
#>     Attrib V13    -0.10118276085009767
#>     Attrib V14    -0.1709952390235603
#>     Attrib V15    0.14195656498279702
#>     Attrib V16    0.08422046759694263
#>     Attrib V17    -0.04737007781616198
#>     Attrib V18    -0.16605461020404513
#>     Attrib V19    -0.25577566027708937
#>     Attrib V2    0.2463349435121525
#>     Attrib V20    0.05005985862168038
#>     Attrib V21    0.23206287732112693
#>     Attrib V22    0.22289865528495859
#>     Attrib V23    -0.15361112091577328
#>     Attrib V24    -0.2604654027594571
#>     Attrib V25    -0.2910219701860047
#>     Attrib V26    -0.7060825664160366
#>     Attrib V27    -0.6506952350145884
#>     Attrib V28    -0.11869656048853008
#>     Attrib V29    -0.0430117480794659
#>     Attrib V3    0.05517401800716251
#>     Attrib V30    0.1286329689492425
#>     Attrib V31    -0.7157681936537867
#>     Attrib V32    -0.01177005334074003
#>     Attrib V33    0.008590925137342066
#>     Attrib V34    -0.35349967444343
#>     Attrib V35    -0.1255699299440153
#>     Attrib V36    -0.4130294878036754
#>     Attrib V37    -0.15976021720190553
#>     Attrib V38    0.20465740317170042
#>     Attrib V39    0.27804634574494813
#>     Attrib V4    0.09023645860197449
#>     Attrib V40    -0.25751719523349387
#>     Attrib V41    -0.20437834143660513
#>     Attrib V42    0.08845186065725753
#>     Attrib V43    0.251536918060759
#>     Attrib V44    0.28338582860276523
#>     Attrib V45    0.14922250476687027
#>     Attrib V46    0.1010943226829854
#>     Attrib V47    -0.1068288156037384
#>     Attrib V48    0.22081291557965457
#>     Attrib V49    0.0869582556292885
#>     Attrib V5    -0.2041202460651605
#>     Attrib V50    -0.4036525225857871
#>     Attrib V51    0.1995465946584801
#>     Attrib V52    -0.05105819047118993
#>     Attrib V53    0.11020616421403762
#>     Attrib V54    0.4638095773189955
#>     Attrib V55    -0.04670837789350556
#>     Attrib V56    0.7239283858406874
#>     Attrib V57    -0.21121183784424216
#>     Attrib V58    0.4421754175775481
#>     Attrib V59    0.24992311895389008
#>     Attrib V6    -0.0868722928372403
#>     Attrib V60    0.5134174292028827
#>     Attrib V7    0.11156236687641924
#>     Attrib V8    -0.4302998769963764
#>     Attrib V9    0.09857615192515683
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.037264721990000575
#>     Attrib V1    -0.2965792208857676
#>     Attrib V10    -0.15907633970930443
#>     Attrib V11    -0.04458785841775874
#>     Attrib V12    -0.14471430699858248
#>     Attrib V13    0.009370098527639705
#>     Attrib V14    0.5801295214266043
#>     Attrib V15    0.3585231630686497
#>     Attrib V16    -0.09738276944092523
#>     Attrib V17    -0.01970178570344671
#>     Attrib V18    0.10280868148808939
#>     Attrib V19    0.20535341648969654
#>     Attrib V2    -0.3542902093398541
#>     Attrib V20    -0.3686281669715414
#>     Attrib V21    -0.7580644959574006
#>     Attrib V22    -1.033197869652348
#>     Attrib V23    -0.45236026502336557
#>     Attrib V24    -0.2156971109178007
#>     Attrib V25    -0.12736489318834993
#>     Attrib V26    0.6910502784978799
#>     Attrib V27    0.8619318628887979
#>     Attrib V28    0.13537532735646246
#>     Attrib V29    0.16923988301132503
#>     Attrib V3    -0.2948106319276067
#>     Attrib V30    -0.5149796415938798
#>     Attrib V31    1.2039631084133744
#>     Attrib V32    -0.1632080492757239
#>     Attrib V33    -0.3684714943623407
#>     Attrib V34    0.33768703273254375
#>     Attrib V35    -0.0602996776277901
#>     Attrib V36    0.683941306848089
#>     Attrib V37    0.7101385137952078
#>     Attrib V38    -0.23428368370992167
#>     Attrib V39    -0.1771865450465506
#>     Attrib V4    -0.09888439727776595
#>     Attrib V40    0.3211827752526609
#>     Attrib V41    -0.21963428376924268
#>     Attrib V42    -0.8829396636729346
#>     Attrib V43    -1.0543322777371142
#>     Attrib V44    -0.9350582536429061
#>     Attrib V45    -0.6962682010338319
#>     Attrib V46    -0.48511171370348466
#>     Attrib V47    0.070517904049885
#>     Attrib V48    -0.29956097540339743
#>     Attrib V49    -0.059194521763464285
#>     Attrib V5    0.4226023626067874
#>     Attrib V50    1.2937350764340865
#>     Attrib V51    0.17203907278101246
#>     Attrib V52    0.07646285783908642
#>     Attrib V53    -0.05506885154591649
#>     Attrib V54    -0.32781416215844367
#>     Attrib V55    0.4178396735093918
#>     Attrib V56    -0.8931479436678578
#>     Attrib V57    1.0646747845001712
#>     Attrib V58    -0.6084689867965308
#>     Attrib V59    -0.04969045759491007
#>     Attrib V6    0.3356290128146029
#>     Attrib V60    -0.377446649062413
#>     Attrib V7    0.015387689862001895
#>     Attrib V8    0.36723118513922026
#>     Attrib V9    -0.6599448276668552
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1877599508475555
#>     Attrib V1    -0.08384540668999246
#>     Attrib V10    0.023141848934324426
#>     Attrib V11    -0.010194868746259302
#>     Attrib V12    -0.050582790003309126
#>     Attrib V13    0.05001495138292855
#>     Attrib V14    0.11630297567469947
#>     Attrib V15    0.06918128711374166
#>     Attrib V16    0.12760652918047338
#>     Attrib V17    0.17867238992841744
#>     Attrib V18    0.17736249045117877
#>     Attrib V19    0.11567061118600762
#>     Attrib V2    -0.06755218529559417
#>     Attrib V20    -0.05701424117036907
#>     Attrib V21    -0.14607803383526777
#>     Attrib V22    -0.17409080878349445
#>     Attrib V23    -0.05704042262790709
#>     Attrib V24    -0.01736211311967663
#>     Attrib V25    -0.06325675382982668
#>     Attrib V26    -0.03572759285866396
#>     Attrib V27    0.025191488485093765
#>     Attrib V28    -0.027850006576267235
#>     Attrib V29    -0.020666981294886932
#>     Attrib V3    0.01458818390539321
#>     Attrib V30    -0.05152311547506032
#>     Attrib V31    0.2478510001716882
#>     Attrib V32    0.05054373260530611
#>     Attrib V33    0.019697440433998823
#>     Attrib V34    0.1563425639840818
#>     Attrib V35    0.03709088316372139
#>     Attrib V36    0.20051069547038644
#>     Attrib V37    0.2215318010687123
#>     Attrib V38    0.044725292496078026
#>     Attrib V39    0.061026108203936884
#>     Attrib V4    0.04698855905717921
#>     Attrib V40    0.17081706999308172
#>     Attrib V41    0.04672110977674142
#>     Attrib V42    -0.04325247324573408
#>     Attrib V43    -0.14761312540387214
#>     Attrib V44    -0.13972888146710857
#>     Attrib V45    -0.09933821952961529
#>     Attrib V46    -0.06898040052750931
#>     Attrib V47    -0.04747315629701761
#>     Attrib V48    -0.1234139228096567
#>     Attrib V49    -0.07955412904384988
#>     Attrib V5    0.10082328148272708
#>     Attrib V50    0.24928963648804633
#>     Attrib V51    0.0381423014616149
#>     Attrib V52    0.07988972648067308
#>     Attrib V53    0.038621038604405175
#>     Attrib V54    -0.07998600858660182
#>     Attrib V55    0.08890892429071935
#>     Attrib V56    -0.15195142043046542
#>     Attrib V57    0.18429195073085003
#>     Attrib V58    -0.05896545336865281
#>     Attrib V59    -0.06851948308056555
#>     Attrib V6    0.16740751961648878
#>     Attrib V60    -0.026707489504326512
#>     Attrib V7    0.11749158570913994
#>     Attrib V8    0.19748075944859053
#>     Attrib V9    0.031102870579600126
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.1101346204219966
#>     Attrib V1    0.27847582868554693
#>     Attrib V10    -0.03303795140887944
#>     Attrib V11    -0.1515641195903285
#>     Attrib V12    -0.12361237869561569
#>     Attrib V13    -0.0885975419627559
#>     Attrib V14    -0.02181095770974435
#>     Attrib V15    0.22861413542302936
#>     Attrib V16    0.1488583183284217
#>     Attrib V17    -0.013109301635057137
#>     Attrib V18    -0.07804635924990949
#>     Attrib V19    -0.06069003874346418
#>     Attrib V2    0.2808365024884394
#>     Attrib V20    0.10131890324870473
#>     Attrib V21    0.18996623965058795
#>     Attrib V22    0.20917639465389906
#>     Attrib V23    -0.14469302804606474
#>     Attrib V24    -0.10240388563607923
#>     Attrib V25    -0.22123032932364306
#>     Attrib V26    -0.571273432411895
#>     Attrib V27    -0.5228234255949424
#>     Attrib V28    -0.1557511938894927
#>     Attrib V29    -0.08409338870191113
#>     Attrib V3    0.1324822113168859
#>     Attrib V30    0.03977190945498064
#>     Attrib V31    -0.5260152583946698
#>     Attrib V32    -0.09698647946015111
#>     Attrib V33    0.014657485007708436
#>     Attrib V34    -0.22918937918923352
#>     Attrib V35    -0.042180538286938234
#>     Attrib V36    -0.3227091158030022
#>     Attrib V37    -0.1932286684172382
#>     Attrib V38    0.1858198145470973
#>     Attrib V39    0.24213805783593098
#>     Attrib V4    0.09199032458209407
#>     Attrib V40    -0.08671680171993752
#>     Attrib V41    -0.036308453468182
#>     Attrib V42    0.15367815242513125
#>     Attrib V43    0.2615035070552882
#>     Attrib V44    0.23036795932612691
#>     Attrib V45    0.2047840220116773
#>     Attrib V46    0.07559815609035088
#>     Attrib V47    -0.123243049075013
#>     Attrib V48    0.14837156692634498
#>     Attrib V49    -0.025435880474604915
#>     Attrib V5    -0.1294441763308313
#>     Attrib V50    -0.2734471192958853
#>     Attrib V51    0.037977766540536424
#>     Attrib V52    -0.05517467503528538
#>     Attrib V53    0.17927870453336142
#>     Attrib V54    0.26284738389146445
#>     Attrib V55    0.012105802031033588
#>     Attrib V56    0.5661727164670098
#>     Attrib V57    -0.1442110125546321
#>     Attrib V58    0.3054151747562751
#>     Attrib V59    0.18347300653687001
#>     Attrib V6    -0.04353691281644972
#>     Attrib V60    0.3925022836606222
#>     Attrib V7    0.08018889169508342
#>     Attrib V8    -0.20765899182474193
#>     Attrib V9    0.056186786215100724
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.1733369799665647
#>     Attrib V1    0.11899969231156908
#>     Attrib V10    0.03194906692182844
#>     Attrib V11    -0.027439569536519957
#>     Attrib V12    -0.025707776811534203
#>     Attrib V13    0.008252333177710524
#>     Attrib V14    0.05894797219247821
#>     Attrib V15    0.050117446957416864
#>     Attrib V16    0.040944062180031174
#>     Attrib V17    -0.07381869587586809
#>     Attrib V18    -0.03231565067104594
#>     Attrib V19    -0.1301957915859442
#>     Attrib V2    0.13282226073945191
#>     Attrib V20    -0.044263656363357315
#>     Attrib V21    -0.022827648918132718
#>     Attrib V22    -0.08772483267116492
#>     Attrib V23    -0.13916864628225248
#>     Attrib V24    -0.1231844231902314
#>     Attrib V25    -0.061176715299072024
#>     Attrib V26    -0.11753573820819271
#>     Attrib V27    -0.11456888789675614
#>     Attrib V28    -0.03516357646466954
#>     Attrib V29    -0.024801965720158817
#>     Attrib V3    0.16750535607394343
#>     Attrib V30    -0.017830534685863087
#>     Attrib V31    -0.12527430218651062
#>     Attrib V32    -0.015507608342646166
#>     Attrib V33    0.010259301423354468
#>     Attrib V34    0.027075016491277495
#>     Attrib V35    0.039202244504710444
#>     Attrib V36    0.024711133855769816
#>     Attrib V37    -0.057850039567053174
#>     Attrib V38    0.039084352855917395
#>     Attrib V39    0.13381026127730702
#>     Attrib V4    0.0993146914268521
#>     Attrib V40    0.022832423049417426
#>     Attrib V41    -0.006590583687596565
#>     Attrib V42    0.08060874937837063
#>     Attrib V43    0.10764383819225361
#>     Attrib V44    0.14741435760309982
#>     Attrib V45    0.07168491817993083
#>     Attrib V46    0.08429008082693741
#>     Attrib V47    0.09468648306255589
#>     Attrib V48    0.12716845653876366
#>     Attrib V49    0.07900578914301512
#>     Attrib V5    0.06407800888518489
#>     Attrib V50    -0.03689406545871763
#>     Attrib V51    0.13161175377158227
#>     Attrib V52    0.03336428197580957
#>     Attrib V53    0.1337313683852821
#>     Attrib V54    0.09113891426540419
#>     Attrib V55    0.12583562775068002
#>     Attrib V56    0.21845480615368978
#>     Attrib V57    -0.058533617185516945
#>     Attrib V58    0.1852150078775113
#>     Attrib V59    0.19901851458346237
#>     Attrib V6    -0.003044667843137754
#>     Attrib V60    0.2765183008129335
#>     Attrib V7    0.1085914164281502
#>     Attrib V8    0.016494301714535444
#>     Attrib V9    0.0767547982493924
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.4067803724540917
#>     Attrib V1    -0.11637600352006501
#>     Attrib V10    0.5788794422740735
#>     Attrib V11    0.4280794707180781
#>     Attrib V12    0.603594324050126
#>     Attrib V13    0.17574296164998296
#>     Attrib V14    -0.568795448137108
#>     Attrib V15    -0.6263284117635692
#>     Attrib V16    -0.44432679479445836
#>     Attrib V17    -0.4095282751087089
#>     Attrib V18    -0.3023186328630138
#>     Attrib V19    -0.2732428809357619
#>     Attrib V2    -0.24628549730576296
#>     Attrib V20    -0.2773848824688214
#>     Attrib V21    0.08412921715104951
#>     Attrib V22    0.4889464445319841
#>     Attrib V23    0.2772805457752551
#>     Attrib V24    0.2748337701371044
#>     Attrib V25    0.4292939549088724
#>     Attrib V26    0.4830161663737425
#>     Attrib V27    0.453561851933328
#>     Attrib V28    0.6803917386860584
#>     Attrib V29    0.27337177624127185
#>     Attrib V3    -0.14236786788283778
#>     Attrib V30    0.5214790109457538
#>     Attrib V31    -0.29057108097736617
#>     Attrib V32    0.02841834160859149
#>     Attrib V33    0.17833342608613992
#>     Attrib V34    0.06916020058789213
#>     Attrib V35    0.4625611987595994
#>     Attrib V36    -0.14589053620052286
#>     Attrib V37    -0.48962213828408957
#>     Attrib V38    -0.11977697288465183
#>     Attrib V39    -0.28450643867537895
#>     Attrib V4    0.17580562877884118
#>     Attrib V40    -0.4240970007852074
#>     Attrib V41    0.45059641662570166
#>     Attrib V42    0.3967709518005024
#>     Attrib V43    0.5759541157156799
#>     Attrib V44    0.45696437497825715
#>     Attrib V45    0.5613496776348671
#>     Attrib V46    0.5203113777099727
#>     Attrib V47    0.4513835025934181
#>     Attrib V48    0.6164993034023765
#>     Attrib V49    0.4758912286696496
#>     Attrib V5    0.20825493235716602
#>     Attrib V50    -0.43001969998219947
#>     Attrib V51    0.7888692910149802
#>     Attrib V52    0.22296118619296748
#>     Attrib V53    -0.11921756430384824
#>     Attrib V54    0.3242024839544153
#>     Attrib V55    -0.011800662555251973
#>     Attrib V56    -0.12538268802184574
#>     Attrib V57    -0.6224147736707141
#>     Attrib V58    0.3902601104739579
#>     Attrib V59    0.27526463305983395
#>     Attrib V6    0.02393082802347944
#>     Attrib V60    0.3611079643522429
#>     Attrib V7    0.028807939052033656
#>     Attrib V8    -0.32783093980534705
#>     Attrib V9    0.570470070310212
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.6020756961999666
#>     Attrib V1    -0.16508551620803427
#>     Attrib V10    0.7870523870611619
#>     Attrib V11    0.5996626982229768
#>     Attrib V12    0.6875860097853902
#>     Attrib V13    0.22424851017414674
#>     Attrib V14    -0.558487600279391
#>     Attrib V15    -0.7325461299365577
#>     Attrib V16    -0.5234507878685312
#>     Attrib V17    -0.5382123097572667
#>     Attrib V18    -0.29775092709621886
#>     Attrib V19    -0.1952808542752642
#>     Attrib V2    -0.47199509475715745
#>     Attrib V20    -0.24946646395620817
#>     Attrib V21    0.22253921826547035
#>     Attrib V22    0.6487019783697364
#>     Attrib V23    0.4692165373483453
#>     Attrib V24    0.40968418388420563
#>     Attrib V25    0.5129710110846771
#>     Attrib V26    0.7558538164648415
#>     Attrib V27    0.7099766503064492
#>     Attrib V28    0.7676992197988702
#>     Attrib V29    0.43388612397708975
#>     Attrib V3    -0.3435541189836555
#>     Attrib V30    0.5932708063983332
#>     Attrib V31    -0.3026507243022507
#>     Attrib V32    -0.04808914481095494
#>     Attrib V33    0.044356527734888865
#>     Attrib V34    0.07768635066410612
#>     Attrib V35    0.49773508331981076
#>     Attrib V36    -0.10359227074958725
#>     Attrib V37    -0.48285905028823145
#>     Attrib V38    -0.12364503637114908
#>     Attrib V39    -0.3472684272924386
#>     Attrib V4    0.07186801687301551
#>     Attrib V40    -0.5286315342850484
#>     Attrib V41    0.6868714846257797
#>     Attrib V42    0.40251992319596325
#>     Attrib V43    0.7673200901310582
#>     Attrib V44    0.6172141352941306
#>     Attrib V45    0.5507624578629942
#>     Attrib V46    0.5679736179969284
#>     Attrib V47    0.6362063439969493
#>     Attrib V48    0.797704983730826
#>     Attrib V49    0.6044588673464658
#>     Attrib V5    0.32924047342771284
#>     Attrib V50    -0.3211800935114277
#>     Attrib V51    1.2756738520773687
#>     Attrib V52    0.22876757689751417
#>     Attrib V53    -0.11015834441219947
#>     Attrib V54    0.3894311678760597
#>     Attrib V55    0.20181055106167545
#>     Attrib V56    -0.20086518963448252
#>     Attrib V57    -0.6532687952237355
#>     Attrib V58    0.5025837033166528
#>     Attrib V59    0.4014357756248656
#>     Attrib V6    0.14678437286009835
#>     Attrib V60    0.35231259781406266
#>     Attrib V7    0.12628236955245478
#>     Attrib V8    -0.33416738533817086
#>     Attrib V9    0.6993735349250008
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.20288466610525824
#>     Attrib V1    -0.25089631556530256
#>     Attrib V10    -0.19443399844251547
#>     Attrib V11    -0.15654187542247164
#>     Attrib V12    -0.19575972201922048
#>     Attrib V13    -0.13728822630974538
#>     Attrib V14    0.39634624407477675
#>     Attrib V15    0.17504941598173068
#>     Attrib V16    -0.23737857668879064
#>     Attrib V17    -0.13443216180293704
#>     Attrib V18    -0.016056265927482466
#>     Attrib V19    0.07779343394169552
#>     Attrib V2    -0.41641961249216497
#>     Attrib V20    -0.4904080681119268
#>     Attrib V21    -0.7354269515272523
#>     Attrib V22    -1.2347620218763966
#>     Attrib V23    -0.6994226563092872
#>     Attrib V24    -0.35380538734801703
#>     Attrib V25    -0.24550875604238895
#>     Attrib V26    0.6495275711649654
#>     Attrib V27    1.0748153084785463
#>     Attrib V28    0.2815018111804038
#>     Attrib V29    0.22122125525855493
#>     Attrib V3    -0.36567964512288187
#>     Attrib V30    -0.4718099743440452
#>     Attrib V31    1.3619460821001677
#>     Attrib V32    -0.23320023748329305
#>     Attrib V33    -0.33508135579384274
#>     Attrib V34    0.4322062913666273
#>     Attrib V35    -0.0020612484957733043
#>     Attrib V36    0.8607790921452726
#>     Attrib V37    0.8680407806302591
#>     Attrib V38    -0.196355422224924
#>     Attrib V39    -0.14166758771442872
#>     Attrib V4    -0.036149644952520356
#>     Attrib V40    0.46194518991974115
#>     Attrib V41    0.020032114644706146
#>     Attrib V42    -0.9653000309282994
#>     Attrib V43    -1.1690544635837694
#>     Attrib V44    -1.0248224101951986
#>     Attrib V45    -0.8048747571847359
#>     Attrib V46    -0.5278901595476455
#>     Attrib V47    0.10868590657477743
#>     Attrib V48    -0.2856175175826438
#>     Attrib V49    -0.12284612003421677
#>     Attrib V5    0.6717816870928787
#>     Attrib V50    1.3127629278776698
#>     Attrib V51    0.12440202146790111
#>     Attrib V52    -0.009468301719139077
#>     Attrib V53    -0.28504508394329153
#>     Attrib V54    -0.4087318706998476
#>     Attrib V55    0.13892331780291706
#>     Attrib V56    -1.1803237337100725
#>     Attrib V57    1.4268196219493654
#>     Attrib V58    -0.9293406985156003
#>     Attrib V59    0.14900086535326507
#>     Attrib V6    0.5025986601506228
#>     Attrib V60    -0.07820186957405327
#>     Attrib V7    0.10892363009717297
#>     Attrib V8    0.14571472229924048
#>     Attrib V9    -0.768873781685354
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.055472106688202
#>     Attrib V1    0.3407419236888517
#>     Attrib V10    -0.003326400622766219
#>     Attrib V11    -0.07091592174651351
#>     Attrib V12    -0.010102605807204366
#>     Attrib V13    0.025941026076870207
#>     Attrib V14    0.14666267105186664
#>     Attrib V15    0.20252740031289457
#>     Attrib V16    0.19610404284472904
#>     Attrib V17    -0.005667791887991094
#>     Attrib V18    -0.08521837855915937
#>     Attrib V19    -0.11952314525435187
#>     Attrib V2    0.2235180044629701
#>     Attrib V20    0.03464434270954107
#>     Attrib V21    0.03079084759912275
#>     Attrib V22    -0.08848671791234416
#>     Attrib V23    -0.2999476635540493
#>     Attrib V24    -0.14994683576411347
#>     Attrib V25    -0.19237141048102196
#>     Attrib V26    -0.4597418282420993
#>     Attrib V27    -0.432109341346206
#>     Attrib V28    -0.19186230759998404
#>     Attrib V29    -0.0641895167685888
#>     Attrib V3    0.11775691563251757
#>     Attrib V30    -0.07914810456749771
#>     Attrib V31    -0.37947143104963665
#>     Attrib V32    -0.12133301799481716
#>     Attrib V33    -0.1037083478819619
#>     Attrib V34    -0.11758943740725468
#>     Attrib V35    0.05391064666391063
#>     Attrib V36    -0.13721080412907832
#>     Attrib V37    -0.0987126957582843
#>     Attrib V38    0.10079278343424763
#>     Attrib V39    0.18756677735869057
#>     Attrib V4    0.15534285570477166
#>     Attrib V40    -0.015063156820076997
#>     Attrib V41    -0.1119801106365262
#>     Attrib V42    0.04773413774985799
#>     Attrib V43    0.20237771435671315
#>     Attrib V44    0.12647971189956567
#>     Attrib V45    0.09180864587203189
#>     Attrib V46    0.11655396236850979
#>     Attrib V47    -0.04119003346889252
#>     Attrib V48    0.19300231725921163
#>     Attrib V49    0.08779380656503605
#>     Attrib V5    0.02642729903189439
#>     Attrib V50    -0.07940838903834685
#>     Attrib V51    0.13019179660720154
#>     Attrib V52    0.010979757818450805
#>     Attrib V53    0.23848786127473096
#>     Attrib V54    0.3049682285475747
#>     Attrib V55    0.1904005478112835
#>     Attrib V56    0.5336311425895677
#>     Attrib V57    -0.009852463872336554
#>     Attrib V58    0.40839903815573436
#>     Attrib V59    0.34131172010157707
#>     Attrib V6    0.06175396825509746
#>     Attrib V60    0.4779192251863418
#>     Attrib V7    0.18955263230348346
#>     Attrib V8    -0.2406082497780422
#>     Attrib V9    0.0266113549014871
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.15996964943755596
#>     Attrib V1    0.454107303891504
#>     Attrib V10    -0.24106864450304205
#>     Attrib V11    -0.35263453637759007
#>     Attrib V12    -0.16660412945807634
#>     Attrib V13    -0.1250330574965793
#>     Attrib V14    -0.04728125463405787
#>     Attrib V15    0.2807655436594814
#>     Attrib V16    0.28398993787290305
#>     Attrib V17    0.11601688970430168
#>     Attrib V18    -0.050143366169187
#>     Attrib V19    -0.06908242098566462
#>     Attrib V2    0.3936350880821542
#>     Attrib V20    0.2849897097555629
#>     Attrib V21    0.434753906030177
#>     Attrib V22    0.44166887677647837
#>     Attrib V23    -0.029701469442254665
#>     Attrib V24    -0.10684270965441484
#>     Attrib V25    -0.2821643252965261
#>     Attrib V26    -0.9211560248402972
#>     Attrib V27    -0.9417018690143687
#>     Attrib V28    -0.23677391839609938
#>     Attrib V29    -0.0869335864802111
#>     Attrib V3    0.31190011941162543
#>     Attrib V30    0.07393906265749434
#>     Attrib V31    -0.9783830101714561
#>     Attrib V32    -0.08126632149286404
#>     Attrib V33    -0.018577217499053337
#>     Attrib V34    -0.42102610560879394
#>     Attrib V35    -0.20100380928724385
#>     Attrib V36    -0.5534124888903738
#>     Attrib V37    -0.20616405460994092
#>     Attrib V38    0.2879702865173161
#>     Attrib V39    0.44271566939680684
#>     Attrib V4    0.1489673187376617
#>     Attrib V40    -0.02636287882264401
#>     Attrib V41    -0.05085805324316873
#>     Attrib V42    0.3475575583518315
#>     Attrib V43    0.44010757666919836
#>     Attrib V44    0.3838454513245038
#>     Attrib V45    0.2900087428340797
#>     Attrib V46    0.18263302574970233
#>     Attrib V47    -0.2283561136529281
#>     Attrib V48    -0.0012190692870158808
#>     Attrib V49    -0.057938595866528934
#>     Attrib V5    -0.28651507575759205
#>     Attrib V50    -0.6796599013754796
#>     Attrib V51    -0.23500579079957337
#>     Attrib V52    -0.06975806219823233
#>     Attrib V53    0.34030610465235794
#>     Attrib V54    0.5003219327943186
#>     Attrib V55    -0.2096534181277473
#>     Attrib V56    1.0014636918354858
#>     Attrib V57    -0.3562506420569545
#>     Attrib V58    0.49219703436255474
#>     Attrib V59    0.28073462317081604
#>     Attrib V6    -0.05738524684520923
#>     Attrib V60    0.5456814491385524
#>     Attrib V7    0.2258891364518632
#>     Attrib V8    -0.3743941833737962
#>     Attrib V9    0.0951696021881753
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    0.03614270015508872
#>     Attrib V1    -0.28776053810114854
#>     Attrib V10    -0.2057564125666712
#>     Attrib V11    -0.08456224876310872
#>     Attrib V12    -0.21372637025144323
#>     Attrib V13    -0.05987621450708038
#>     Attrib V14    0.5612928915969625
#>     Attrib V15    0.32509591621812217
#>     Attrib V16    -0.16455042970148595
#>     Attrib V17    -0.008880642411997871
#>     Attrib V18    0.07594673602630175
#>     Attrib V19    0.15441999394853778
#>     Attrib V2    -0.3671878799352908
#>     Attrib V20    -0.4357129921184994
#>     Attrib V21    -0.7826072866199516
#>     Attrib V22    -1.1675952336641438
#>     Attrib V23    -0.4838762475490201
#>     Attrib V24    -0.2614026020413942
#>     Attrib V25    -0.1436964585612297
#>     Attrib V26    0.6805701287020441
#>     Attrib V27    0.9574988772742484
#>     Attrib V28    0.20132396931321297
#>     Attrib V29    0.14536293063536987
#>     Attrib V3    -0.3342680042913681
#>     Attrib V30    -0.5230278709091032
#>     Attrib V31    1.280810433801653
#>     Attrib V32    -0.09780428136531338
#>     Attrib V33    -0.38421482611027086
#>     Attrib V34    0.3383657179172925
#>     Attrib V35    -0.06082135849747231
#>     Attrib V36    0.7384940183867976
#>     Attrib V37    0.6641827360095954
#>     Attrib V38    -0.23371647619449437
#>     Attrib V39    -0.19672388840617352
#>     Attrib V4    -0.06773151756410506
#>     Attrib V40    0.39405206644233054
#>     Attrib V41    -0.11427100721379839
#>     Attrib V42    -0.9036727735763977
#>     Attrib V43    -1.0551726964063917
#>     Attrib V44    -0.9805307590972315
#>     Attrib V45    -0.8185629656709515
#>     Attrib V46    -0.5321568138704996
#>     Attrib V47    0.09397181350983298
#>     Attrib V48    -0.3396353318962471
#>     Attrib V49    -0.12600747442752644
#>     Attrib V5    0.4529214755826977
#>     Attrib V50    1.3149683502720366
#>     Attrib V51    0.13986306414158226
#>     Attrib V52    0.13918654992272986
#>     Attrib V53    -0.15181116573541373
#>     Attrib V54    -0.35492360550403157
#>     Attrib V55    0.3487354372109745
#>     Attrib V56    -0.9585027627227015
#>     Attrib V57    1.2397890492846426
#>     Attrib V58    -0.6723131232646262
#>     Attrib V59    0.0029269194110174705
#>     Attrib V6    0.45375628696968756
#>     Attrib V60    -0.3154806333076958
#>     Attrib V7    0.057801018277773945
#>     Attrib V8    0.3209775773658888
#>     Attrib V9    -0.6707039506652649
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.4855738474679304
#>     Attrib V1    -0.23882064614452406
#>     Attrib V10    0.9864889476273027
#>     Attrib V11    1.008731826130961
#>     Attrib V12    0.8058231889878836
#>     Attrib V13    0.34246675161108603
#>     Attrib V14    -0.5784181580015363
#>     Attrib V15    -0.8496407652723549
#>     Attrib V16    -0.526109410341345
#>     Attrib V17    -0.48932968307792296
#>     Attrib V18    -0.12886247089320094
#>     Attrib V19    -0.04196959245541317
#>     Attrib V2    -0.3363543118137223
#>     Attrib V20    -0.07846824498253499
#>     Attrib V21    0.23062255675473428
#>     Attrib V22    0.7858316184639302
#>     Attrib V23    0.7797469644869152
#>     Attrib V24    0.5723244234451005
#>     Attrib V25    0.6755607265382076
#>     Attrib V26    1.0529502236709944
#>     Attrib V27    0.8685535503173991
#>     Attrib V28    0.9295483365583245
#>     Attrib V29    0.5244625158189645
#>     Attrib V3    -0.20890636715253078
#>     Attrib V30    0.6310682199220665
#>     Attrib V31    -0.29305257767221604
#>     Attrib V32    0.028425206528209204
#>     Attrib V33    0.012912708684360378
#>     Attrib V34    0.16947845049473442
#>     Attrib V35    0.627608562246351
#>     Attrib V36    -0.18804034587336793
#>     Attrib V37    -0.56482538204219
#>     Attrib V38    -0.2713627982268783
#>     Attrib V39    -0.5335184774987447
#>     Attrib V4    0.07356166856346533
#>     Attrib V40    -0.7339647641552931
#>     Attrib V41    0.6739610097930789
#>     Attrib V42    0.4602915838562247
#>     Attrib V43    0.7306288285740199
#>     Attrib V44    0.7462779304309762
#>     Attrib V45    0.7844451864252352
#>     Attrib V46    0.7080098548433021
#>     Attrib V47    0.7688983207342057
#>     Attrib V48    0.7742040322591898
#>     Attrib V49    0.8001014283867951
#>     Attrib V5    0.26202600416046756
#>     Attrib V50    -0.22134559921795188
#>     Attrib V51    1.4651411392825042
#>     Attrib V52    0.5832863382563392
#>     Attrib V53    0.08074679411383201
#>     Attrib V54    0.37488349692455025
#>     Attrib V55    0.4362333307090008
#>     Attrib V56    -0.38478536912777866
#>     Attrib V57    -0.9275106550268896
#>     Attrib V58    0.6027987901902249
#>     Attrib V59    0.08377676004838103
#>     Attrib V6    0.0067413167817260995
#>     Attrib V60    -0.05228367375663279
#>     Attrib V7    -0.07051139057355847
#>     Attrib V8    -0.22226792508437995
#>     Attrib V9    0.9127899412794687
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.17328891602585264
#>     Attrib V1    0.13425793415811343
#>     Attrib V10    0.007795059553817292
#>     Attrib V11    -0.055199473568791596
#>     Attrib V12    0.017777708834533952
#>     Attrib V13    0.00566802648843861
#>     Attrib V14    0.11875979775618956
#>     Attrib V15    0.07728090515475879
#>     Attrib V16    0.045876111212312116
#>     Attrib V17    4.7935685451181554E-4
#>     Attrib V18    -0.09841945564619504
#>     Attrib V19    -0.02491245551214204
#>     Attrib V2    0.14531953525802097
#>     Attrib V20    -0.04125121920196891
#>     Attrib V21    -0.03502413952060518
#>     Attrib V22    -0.08624488098877965
#>     Attrib V23    -0.14249380632862524
#>     Attrib V24    -0.12011675246663425
#>     Attrib V25    -0.08316857933164627
#>     Attrib V26    -0.16795667467277384
#>     Attrib V27    -0.1047208698003897
#>     Attrib V28    0.006551943388734437
#>     Attrib V29    0.019888540226354695
#>     Attrib V3    0.09488565268414605
#>     Attrib V30    0.01716889871256889
#>     Attrib V31    -0.14102593115709713
#>     Attrib V32    -0.05896323031106683
#>     Attrib V33    0.018519290223147997
#>     Attrib V34    -0.027708853438153207
#>     Attrib V35    0.09735048301262214
#>     Attrib V36    0.007177498232903032
#>     Attrib V37    0.012314530716274306
#>     Attrib V38    0.050080599540199194
#>     Attrib V39    0.12179111507622471
#>     Attrib V4    0.16853915236879877
#>     Attrib V40    0.03183104070230358
#>     Attrib V41    0.013723523568080213
#>     Attrib V42    0.09654666176238834
#>     Attrib V43    0.1176509169593033
#>     Attrib V44    0.11906859934857719
#>     Attrib V45    0.11708562670032586
#>     Attrib V46    0.08310136477529759
#>     Attrib V47    0.0311243900404628
#>     Attrib V48    0.15308424593134842
#>     Attrib V49    0.03754503733349903
#>     Attrib V5    0.035429016283129534
#>     Attrib V50    0.02716520956298448
#>     Attrib V51    0.05614992720922792
#>     Attrib V52    0.039791855456587755
#>     Attrib V53    0.1280823258048266
#>     Attrib V54    0.12006400794456598
#>     Attrib V55    0.107069351203268
#>     Attrib V56    0.21082731996687795
#>     Attrib V57    0.020466275789583523
#>     Attrib V58    0.1895375498721506
#>     Attrib V59    0.20202027747859225
#>     Attrib V6    0.06635724698385542
#>     Attrib V60    0.2932883099442348
#>     Attrib V7    0.04890118060227875
#>     Attrib V8    0.01139408495279819
#>     Attrib V9    0.05453983264289446
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.6207127223190883
#>     Attrib V1    0.28415514390617563
#>     Attrib V10    0.703650051002405
#>     Attrib V11    0.6099810725087148
#>     Attrib V12    0.5993790683843787
#>     Attrib V13    0.16117301670714104
#>     Attrib V14    -0.6508562498249489
#>     Attrib V15    -0.630014719275023
#>     Attrib V16    -0.5160763947220789
#>     Attrib V17    -0.5912860876827218
#>     Attrib V18    -0.4825102568433174
#>     Attrib V19    -0.5107033977962064
#>     Attrib V2    -0.08561275187545822
#>     Attrib V20    -0.42897309837767417
#>     Attrib V21    0.02513643890265964
#>     Attrib V22    0.17176954402697225
#>     Attrib V23    -0.209462785416179
#>     Attrib V24    -0.13482102976905827
#>     Attrib V25    0.03300126274428775
#>     Attrib V26    0.33647783587375185
#>     Attrib V27    0.4880970138971422
#>     Attrib V28    0.8727688445999877
#>     Attrib V29    0.639840984427653
#>     Attrib V3    -0.07307981182931973
#>     Attrib V30    0.6131598434920932
#>     Attrib V31    -0.28240619311107196
#>     Attrib V32    -0.015291955485739186
#>     Attrib V33    0.016899337447266273
#>     Attrib V34    -0.04200220287806046
#>     Attrib V35    0.37162818436148476
#>     Attrib V36    0.03498662268165167
#>     Attrib V37    -0.11940655286964423
#>     Attrib V38    0.11016215562228093
#>     Attrib V39    -0.10654834253004317
#>     Attrib V4    0.23150763535000832
#>     Attrib V40    -0.5864235430279844
#>     Attrib V41    0.3138466783766219
#>     Attrib V42    0.10644970708249672
#>     Attrib V43    0.3197066366576959
#>     Attrib V44    0.35543160832701315
#>     Attrib V45    0.513645784190919
#>     Attrib V46    0.37210896057502174
#>     Attrib V47    0.4459072033266266
#>     Attrib V48    0.5755421103269064
#>     Attrib V49    0.3662931195488119
#>     Attrib V5    0.33083103382522316
#>     Attrib V50    -0.18207206581835803
#>     Attrib V51    0.9591922214316231
#>     Attrib V52    0.19259071727617832
#>     Attrib V53    -0.1760101667911096
#>     Attrib V54    0.3859906165150681
#>     Attrib V55    0.0593231917568462
#>     Attrib V56    -0.2022345388242652
#>     Attrib V57    -0.2278560587471141
#>     Attrib V58    0.30663364808149135
#>     Attrib V59    0.42010525645219904
#>     Attrib V6    0.07423747115796564
#>     Attrib V60    0.3980594796239109
#>     Attrib V7    -0.06905771465566209
#>     Attrib V8    -0.43628343316131785
#>     Attrib V9    0.47025511422454475
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.06148605536459217
#>     Attrib V1    -0.09859529438028115
#>     Attrib V10    -0.5322796185459959
#>     Attrib V11    -1.0020519412453714
#>     Attrib V12    -1.0309856318201285
#>     Attrib V13    -0.5483090317962729
#>     Attrib V14    0.568669435005475
#>     Attrib V15    0.4768680798831728
#>     Attrib V16    -0.22936200332836648
#>     Attrib V17    -0.6034001054355791
#>     Attrib V18    -0.31530541301902276
#>     Attrib V19    -0.025519819438271966
#>     Attrib V2    -0.20058022785452234
#>     Attrib V20    -0.5695952628392982
#>     Attrib V21    -0.8378845410653404
#>     Attrib V22    -1.3830878150194634
#>     Attrib V23    -0.35366717359386607
#>     Attrib V24    0.20951534133105487
#>     Attrib V25    -0.45671912379702423
#>     Attrib V26    -0.08425829062926939
#>     Attrib V27    0.8674077145970175
#>     Attrib V28    0.32142254808019
#>     Attrib V29    0.22638637676577109
#>     Attrib V3    -0.2143477010786582
#>     Attrib V30    -0.6839541163905284
#>     Attrib V31    0.891749049980188
#>     Attrib V32    -0.2967613677409838
#>     Attrib V33    -0.6006818291268757
#>     Attrib V34    0.4288651878322852
#>     Attrib V35    0.479330941902772
#>     Attrib V36    1.290313521410166
#>     Attrib V37    1.2311354374502372
#>     Attrib V38    0.11445570728246614
#>     Attrib V39    -0.07673845338496525
#>     Attrib V4    -0.15844007032815466
#>     Attrib V40    0.572926769612191
#>     Attrib V41    -0.1493319988880576
#>     Attrib V42    -0.901560679078241
#>     Attrib V43    -1.164541893102213
#>     Attrib V44    -0.7204661896952361
#>     Attrib V45    -0.47394042306503603
#>     Attrib V46    -0.5769177196659212
#>     Attrib V47    -0.21639580946701015
#>     Attrib V48    -0.3904318490335182
#>     Attrib V49    -0.1053604614596748
#>     Attrib V5    -0.22700901131029352
#>     Attrib V50    1.5213358330857638
#>     Attrib V51    0.05263628002159215
#>     Attrib V52    0.2861481811684827
#>     Attrib V53    0.10235094334318583
#>     Attrib V54    -0.34333938869481323
#>     Attrib V55    0.10589729605087514
#>     Attrib V56    -0.5885822094234102
#>     Attrib V57    1.1383172054533426
#>     Attrib V58    -0.6419253334885818
#>     Attrib V59    0.3185887422928429
#>     Attrib V6    0.4289749116056269
#>     Attrib V60    0.43637925170884184
#>     Attrib V7    0.5550749405192876
#>     Attrib V8    0.20773965353054166
#>     Attrib V9    -1.0670334939276387
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.37289274521898724
#>     Attrib V1    -0.018088352832024864
#>     Attrib V10    0.4851706485909722
#>     Attrib V11    0.4349349149382718
#>     Attrib V12    0.4624524672740096
#>     Attrib V13    0.06968761350989383
#>     Attrib V14    -0.5131196625570159
#>     Attrib V15    -0.5415342414590427
#>     Attrib V16    -0.348716765794433
#>     Attrib V17    -0.3676411534212744
#>     Attrib V18    -0.33169853249613895
#>     Attrib V19    -0.41275247165779516
#>     Attrib V2    -0.18421340333301844
#>     Attrib V20    -0.2359586031096298
#>     Attrib V21    0.124709562870385
#>     Attrib V22    0.37634918400866435
#>     Attrib V23    0.044000177947920716
#>     Attrib V24    0.07614221170400247
#>     Attrib V25    0.20336566185044586
#>     Attrib V26    0.1954661199443845
#>     Attrib V27    0.2934729833824933
#>     Attrib V28    0.6359809021475414
#>     Attrib V29    0.390201965617418
#>     Attrib V3    -0.051032276524609274
#>     Attrib V30    0.5012024471383177
#>     Attrib V31    -0.3285431798139706
#>     Attrib V32    0.10492270645131525
#>     Attrib V33    0.15460237944678337
#>     Attrib V34    -0.04321420440169246
#>     Attrib V35    0.2949003110070058
#>     Attrib V36    -0.17720370981992542
#>     Attrib V37    -0.3160643095656242
#>     Attrib V38    0.008414974333806736
#>     Attrib V39    -0.1479329309030722
#>     Attrib V4    0.09996935173087396
#>     Attrib V40    -0.4304169229778443
#>     Attrib V41    0.29887494386294433
#>     Attrib V42    0.23688793468479297
#>     Attrib V43    0.5344299701610319
#>     Attrib V44    0.38334564078322275
#>     Attrib V45    0.5024868703366464
#>     Attrib V46    0.4053775240297901
#>     Attrib V47    0.39420208335815665
#>     Attrib V48    0.5133236670663791
#>     Attrib V49    0.3057203427482209
#>     Attrib V5    0.08415450820675427
#>     Attrib V50    -0.37519287997918443
#>     Attrib V51    0.6848461381882007
#>     Attrib V52    0.14535989687454648
#>     Attrib V53    -0.19189097031227437
#>     Attrib V54    0.24937220068368388
#>     Attrib V55    -0.06314442884326474
#>     Attrib V56    0.07051425819317599
#>     Attrib V57    -0.4558342079525738
#>     Attrib V58    0.28065043492144587
#>     Attrib V59    0.23341081097295643
#>     Attrib V6    -0.04810841180873471
#>     Attrib V60    0.35432794558381475
#>     Attrib V7    -0.052004612279957944
#>     Attrib V8    -0.2913590916188906
#>     Attrib V9    0.4884712646123703
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.12239682124237868
#>     Attrib V1    0.16028509359958024
#>     Attrib V10    0.06584778776457147
#>     Attrib V11    -0.015560341387874443
#>     Attrib V12    0.04138344336334236
#>     Attrib V13    0.06931659709918107
#>     Attrib V14    0.07206606854085688
#>     Attrib V15    0.0979417335307632
#>     Attrib V16    0.0438275724819283
#>     Attrib V17    1.2346159895295153E-4
#>     Attrib V18    -0.0729642432581168
#>     Attrib V19    -0.10801463884640916
#>     Attrib V2    0.15450551914426774
#>     Attrib V20    -0.07428092471916045
#>     Attrib V21    -0.01995079302736894
#>     Attrib V22    -0.07359885140074966
#>     Attrib V23    -0.1328303870516917
#>     Attrib V24    -0.12694555555704898
#>     Attrib V25    -0.05039166745281673
#>     Attrib V26    -0.11521299794155308
#>     Attrib V27    -0.1467845300517191
#>     Attrib V28    -0.014123905652106585
#>     Attrib V29    -0.05113481364572788
#>     Attrib V3    0.1044254293487708
#>     Attrib V30    0.02982196269264194
#>     Attrib V31    -0.06773023601632759
#>     Attrib V32    -0.04119679018573116
#>     Attrib V33    -0.03536712574885103
#>     Attrib V34    -0.036765987540663285
#>     Attrib V35    0.08457997471940423
#>     Attrib V36    -0.04608759408640162
#>     Attrib V37    -0.003715387111756482
#>     Attrib V38    0.03315498988334971
#>     Attrib V39    0.15572742833056982
#>     Attrib V4    0.16089142483756164
#>     Attrib V40    0.05348960688095081
#>     Attrib V41    0.03147807573661181
#>     Attrib V42    0.11294360154505828
#>     Attrib V43    0.09278158646055572
#>     Attrib V44    0.06635673524786945
#>     Attrib V45    0.1112874117742818
#>     Attrib V46    0.09002224119359041
#>     Attrib V47    0.018073983160581012
#>     Attrib V48    0.13475481724622296
#>     Attrib V49    0.021768026165664943
#>     Attrib V5    0.016211511063212333
#>     Attrib V50    -0.008380002051666755
#>     Attrib V51    0.06448772609336109
#>     Attrib V52    0.06356068664336645
#>     Attrib V53    0.15027098470433425
#>     Attrib V54    0.1442874517222119
#>     Attrib V55    0.0833076313671529
#>     Attrib V56    0.2471032929421505
#>     Attrib V57    -0.04523347911328476
#>     Attrib V58    0.21995283032133728
#>     Attrib V59    0.22214382700973054
#>     Attrib V6    0.032098141436495815
#>     Attrib V60    0.27059161359838735
#>     Attrib V7    0.030667482012939357
#>     Attrib V8    -0.04185814877344124
#>     Attrib V9    0.0485656234710325
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.12225162238392415
#>     Attrib V1    0.3641954675847495
#>     Attrib V10    -0.14034127075842026
#>     Attrib V11    -0.20572379169804492
#>     Attrib V12    -0.1688710401094259
#>     Attrib V13    -0.04976867783099839
#>     Attrib V14    0.03270502096082063
#>     Attrib V15    0.2582715804015694
#>     Attrib V16    0.21510025314588851
#>     Attrib V17    0.049902647635772894
#>     Attrib V18    -0.022068346360477317
#>     Attrib V19    -0.056717526233104464
#>     Attrib V2    0.3633900652527515
#>     Attrib V20    0.2502781366659925
#>     Attrib V21    0.2676183959974173
#>     Attrib V22    0.2966676531242751
#>     Attrib V23    -0.04524323794701925
#>     Attrib V24    -0.025419285894324493
#>     Attrib V25    -0.20018674133026823
#>     Attrib V26    -0.6553098042892659
#>     Attrib V27    -0.701961748556859
#>     Attrib V28    -0.24901916519240697
#>     Attrib V29    -0.11320619270823097
#>     Attrib V3    0.15990556616728518
#>     Attrib V30    -0.014890092100767624
#>     Attrib V31    -0.7053108994524702
#>     Attrib V32    -0.11255878745412425
#>     Attrib V33    -0.021260113768297843
#>     Attrib V34    -0.24219230965374794
#>     Attrib V35    -0.08191698032905667
#>     Attrib V36    -0.41034301238520654
#>     Attrib V37    -0.17619194408581323
#>     Attrib V38    0.23402483705829594
#>     Attrib V39    0.2967502764990891
#>     Attrib V4    0.09358600306559874
#>     Attrib V40    -0.010594450310214491
#>     Attrib V41    -0.08369875602115585
#>     Attrib V42    0.2218241839570799
#>     Attrib V43    0.31267028701816757
#>     Attrib V44    0.2879070957222982
#>     Attrib V45    0.16154682088253067
#>     Attrib V46    0.11853114580704109
#>     Attrib V47    -0.1477031003662462
#>     Attrib V48    0.08539203669635786
#>     Attrib V49    -0.008471403225472582
#>     Attrib V5    -0.22098708921383697
#>     Attrib V50    -0.43522025024372313
#>     Attrib V51    -0.07309200607636301
#>     Attrib V52    -0.05921810967709512
#>     Attrib V53    0.3108311554907957
#>     Attrib V54    0.4509131572987814
#>     Attrib V55    -0.03190063761202871
#>     Attrib V56    0.6962836454598409
#>     Attrib V57    -0.24555315696730654
#>     Attrib V58    0.3810921655407294
#>     Attrib V59    0.2182151035837816
#>     Attrib V6    -0.039849959851801654
#>     Attrib V60    0.43907646099650394
#>     Attrib V7    0.1824434111444738
#>     Attrib V8    -0.28578079221939773
#>     Attrib V9    0.08316293754571305
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.030710474411000846
#>     Attrib V1    0.2723225992666881
#>     Attrib V10    -0.10171169449305476
#>     Attrib V11    -0.13315316864658244
#>     Attrib V12    -0.0856983807339695
#>     Attrib V13    -0.03470212274718484
#>     Attrib V14    0.12992390658193387
#>     Attrib V15    0.22495916183996045
#>     Attrib V16    0.18085967693694344
#>     Attrib V17    -0.035139586627552684
#>     Attrib V18    -0.005502011587485697
#>     Attrib V19    -0.08605053398372864
#>     Attrib V2    0.1951938541564789
#>     Attrib V20    0.11715335521842724
#>     Attrib V21    0.1680578145659986
#>     Attrib V22    0.07089336282492707
#>     Attrib V23    -0.10371192078250493
#>     Attrib V24    -0.117398816789783
#>     Attrib V25    -0.20365456889298564
#>     Attrib V26    -0.4462970612308684
#>     Attrib V27    -0.40055369290325527
#>     Attrib V28    -0.046717625180983297
#>     Attrib V29    -0.0033627407102591383
#>     Attrib V3    0.16884568311323905
#>     Attrib V30    0.029699843460160733
#>     Attrib V31    -0.5080254267871741
#>     Attrib V32    -0.11365364825978963
#>     Attrib V33    -0.03017482228649005
#>     Attrib V34    -0.1360777635819796
#>     Attrib V35    -0.011486434061772938
#>     Attrib V36    -0.17997938362254015
#>     Attrib V37    -0.1474968562583416
#>     Attrib V38    0.07587043507402659
#>     Attrib V39    0.2014038050766096
#>     Attrib V4    0.09098309962513156
#>     Attrib V40    -0.059073628888126235
#>     Attrib V41    -0.07494403919599806
#>     Attrib V42    0.17357688549648786
#>     Attrib V43    0.1564213519608391
#>     Attrib V44    0.20536088929880295
#>     Attrib V45    0.19922865552220848
#>     Attrib V46    0.11450607304173648
#>     Attrib V47    -0.047975150715051935
#>     Attrib V48    0.07724144951467603
#>     Attrib V49    0.08345837142583926
#>     Attrib V5    -0.0539080876205299
#>     Attrib V50    -0.19941431180381522
#>     Attrib V51    0.06391976064880645
#>     Attrib V52    0.03314221077113398
#>     Attrib V53    0.2416525190247985
#>     Attrib V54    0.22362813574748752
#>     Attrib V55    0.043305693745884534
#>     Attrib V56    0.47428366474518635
#>     Attrib V57    -0.15937211631734804
#>     Attrib V58    0.3903700411747162
#>     Attrib V59    0.21674009181492332
#>     Attrib V6    0.018466809866360283
#>     Attrib V60    0.34391082025439623
#>     Attrib V7    0.13397441418084044
#>     Attrib V8    -0.1446259063720967
#>     Attrib V9    0.0633009874924526
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
