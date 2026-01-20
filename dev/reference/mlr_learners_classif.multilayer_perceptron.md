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
#>     Threshold    -1.0071242283854216
#>     Node 2    1.7597054789671775
#>     Node 3    1.5782246947303074
#>     Node 4    0.8594526307589102
#>     Node 5    -2.076926040293849
#>     Node 6    1.2641115837421852
#>     Node 7    2.784168506423377
#>     Node 8    1.0033816680550458
#>     Node 9    2.7979119831776207
#>     Node 10    -2.462017310198676
#>     Node 11    1.8253791018088978
#>     Node 12    1.8375791005087394
#>     Node 13    0.6857820620395039
#>     Node 14    1.8771469932066138
#>     Node 15    -2.560436062423432
#>     Node 16    0.1501845257635151
#>     Node 17    0.6582958638087962
#>     Node 18    0.2293945972009399
#>     Node 19    2.0161910903737716
#>     Node 20    1.778575138276355
#>     Node 21    -2.4217457492924788
#>     Node 22    1.7623581042295204
#>     Node 23    2.0467007160759754
#>     Node 24    -0.5449698059427286
#>     Node 25    4.908005247769175
#>     Node 26    -0.17846540606467415
#>     Node 27    2.2553924663151643
#>     Node 28    -2.4084998831089917
#>     Node 29    1.1282292977673125
#>     Node 30    0.0645214397309131
#>     Node 31    1.430811343308148
#>     Node 32    1.3260606899797613
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    1.0079343313472988
#>     Node 2    -1.7885053278568335
#>     Node 3    -1.563580552934843
#>     Node 4    -0.8220055406488758
#>     Node 5    2.0828281982975323
#>     Node 6    -1.2434607378623046
#>     Node 7    -2.780030689154227
#>     Node 8    -1.034939503023192
#>     Node 9    -2.800308037383218
#>     Node 10    2.427044200328535
#>     Node 11    -1.7769875742329142
#>     Node 12    -1.9103215476377435
#>     Node 13    -0.6354986437441162
#>     Node 14    -1.80785347891644
#>     Node 15    2.578147034333685
#>     Node 16    -0.17184661505365406
#>     Node 17    -0.628789269156656
#>     Node 18    -0.1927676258907715
#>     Node 19    -2.013612676728152
#>     Node 20    -1.7462879438630816
#>     Node 21    2.4540902788778705
#>     Node 22    -1.8114169620627978
#>     Node 23    -2.0826907814964932
#>     Node 24    0.53355427018373
#>     Node 25    -4.907327717762431
#>     Node 26    0.09487061170538189
#>     Node 27    -2.2933474590267995
#>     Node 28    2.38472206595363
#>     Node 29    -1.1598304042498775
#>     Node 30    0.007269887549322923
#>     Node 31    -1.3710944647266818
#>     Node 32    -1.3406250291562467
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.17548680355666543
#>     Attrib V1    -0.10510220296890095
#>     Attrib V10    -0.2843248505868113
#>     Attrib V11    0.0828912980940082
#>     Attrib V12    0.240407890375696
#>     Attrib V13    -0.2263709381352145
#>     Attrib V14    -0.34220367395688955
#>     Attrib V15    -0.2543429664695389
#>     Attrib V16    0.0685731972628295
#>     Attrib V17    0.13805915531806282
#>     Attrib V18    0.36252787996738894
#>     Attrib V19    0.0911700391549795
#>     Attrib V2    -0.5315268587950394
#>     Attrib V20    0.264987549374791
#>     Attrib V21    0.22693080488347175
#>     Attrib V22    0.31886803726186985
#>     Attrib V23    0.22695171274401352
#>     Attrib V24    -0.05717259707311641
#>     Attrib V25    -0.20188881920790008
#>     Attrib V26    -0.2454963488533665
#>     Attrib V27    -0.4972494169984
#>     Attrib V28    -0.20178190458308073
#>     Attrib V29    -0.2389968364516558
#>     Attrib V3    -0.6141523047963686
#>     Attrib V30    -0.08612550692631632
#>     Attrib V31    -0.9069830118194511
#>     Attrib V32    -0.33240010769510425
#>     Attrib V33    0.08296953236151382
#>     Attrib V34    0.4588907771446325
#>     Attrib V35    0.39733325784492185
#>     Attrib V36    0.12688629295726211
#>     Attrib V37    -0.39894945917881597
#>     Attrib V38    0.293262834033932
#>     Attrib V39    0.4086646143874732
#>     Attrib V4    0.27050180568653415
#>     Attrib V40    -0.40367852635322876
#>     Attrib V41    -0.42113133819023907
#>     Attrib V42    0.04209054612528505
#>     Attrib V43    0.679310928155494
#>     Attrib V44    1.1481321414552508
#>     Attrib V45    0.48906778185902017
#>     Attrib V46    0.34526064980557847
#>     Attrib V47    0.11563335437620555
#>     Attrib V48    0.39047490494673676
#>     Attrib V49    0.13913852299328408
#>     Attrib V5    0.4806106749130321
#>     Attrib V50    -0.9955636767277539
#>     Attrib V51    0.16633657677584718
#>     Attrib V52    0.522779758633884
#>     Attrib V53    0.2439219326202311
#>     Attrib V54    0.638374486052725
#>     Attrib V55    0.2900401934458651
#>     Attrib V56    -0.20139512625260067
#>     Attrib V57    -0.5342562905759333
#>     Attrib V58    0.17528729732234047
#>     Attrib V59    0.48205412496908084
#>     Attrib V6    -0.08821015123136644
#>     Attrib V60    0.14483902625052814
#>     Attrib V7    -0.38278009795167944
#>     Attrib V8    -0.38444405168212475
#>     Attrib V9    0.47927025223755293
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.16076675510505156
#>     Attrib V1    -0.031130713357083686
#>     Attrib V10    -0.29391593333879495
#>     Attrib V11    -0.037245389825881575
#>     Attrib V12    0.145250730274062
#>     Attrib V13    -0.16196824695132056
#>     Attrib V14    -0.21486225876823242
#>     Attrib V15    -0.03154367361037731
#>     Attrib V16    0.10733512627119142
#>     Attrib V17    0.04323894776673951
#>     Attrib V18    0.15709251953915643
#>     Attrib V19    0.04242269572370523
#>     Attrib V2    -0.38902069234729375
#>     Attrib V20    0.20937939126108923
#>     Attrib V21    0.11825052470370569
#>     Attrib V22    0.18137337642228477
#>     Attrib V23    0.10458989068915671
#>     Attrib V24    -0.052925919827991594
#>     Attrib V25    -0.15636721805590112
#>     Attrib V26    -0.3969185979827557
#>     Attrib V27    -0.7720280910190086
#>     Attrib V28    -0.6099526308068568
#>     Attrib V29    -0.6525302550544065
#>     Attrib V3    -0.5087462450519382
#>     Attrib V30    -0.3366464110012627
#>     Attrib V31    -0.6904487789219672
#>     Attrib V32    -0.1182357893756575
#>     Attrib V33    0.3249005166398972
#>     Attrib V34    0.4628325894609733
#>     Attrib V35    0.20658345000634962
#>     Attrib V36    -0.2112965050717636
#>     Attrib V37    -0.736268649593503
#>     Attrib V38    -0.11993992334278347
#>     Attrib V39    0.20685391255574592
#>     Attrib V4    0.237877905785381
#>     Attrib V40    -0.35919362057901344
#>     Attrib V41    -0.36355448507490823
#>     Attrib V42    0.05330379496313712
#>     Attrib V43    0.4254200884390382
#>     Attrib V44    0.7149223024597837
#>     Attrib V45    0.32134867117933846
#>     Attrib V46    0.2633960207912565
#>     Attrib V47    0.14290233358343277
#>     Attrib V48    0.3507706086472019
#>     Attrib V49    0.12026671996315258
#>     Attrib V5    0.415068261001437
#>     Attrib V50    -0.7935469431627585
#>     Attrib V51    0.0917243082052542
#>     Attrib V52    0.4104474028626694
#>     Attrib V53    0.14007672585938316
#>     Attrib V54    0.7480847969178047
#>     Attrib V55    0.41700228488436086
#>     Attrib V56    -0.07482189234750965
#>     Attrib V57    -0.2749067899818175
#>     Attrib V58    0.3653994016372967
#>     Attrib V59    0.5420729331606842
#>     Attrib V6    0.07140392774183944
#>     Attrib V60    0.16727343042984083
#>     Attrib V7    -0.1314135263215053
#>     Attrib V8    -0.17103399603724392
#>     Attrib V9    0.3686467904105104
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.00407665907997631
#>     Attrib V1    0.04797472064816912
#>     Attrib V10    -0.21978455038965358
#>     Attrib V11    -0.06031572466453696
#>     Attrib V12    0.03723571432945545
#>     Attrib V13    -0.06301758171685588
#>     Attrib V14    -0.01155998405266262
#>     Attrib V15    0.06591595615836707
#>     Attrib V16    0.09049564336357868
#>     Attrib V17    0.027862410085471034
#>     Attrib V18    0.07487881384931011
#>     Attrib V19    0.008381080472179397
#>     Attrib V2    -0.18212763304654717
#>     Attrib V20    0.15727033337570778
#>     Attrib V21    0.13768600822721896
#>     Attrib V22    0.02384737125739196
#>     Attrib V23    -0.00638223474365643
#>     Attrib V24    -0.10703365693203226
#>     Attrib V25    -0.2275052220016482
#>     Attrib V26    -0.2820994331000076
#>     Attrib V27    -0.44879498584687055
#>     Attrib V28    -0.24398261379373548
#>     Attrib V29    -0.17953843558942606
#>     Attrib V3    -0.1983969526016166
#>     Attrib V30    -0.19009882379199355
#>     Attrib V31    -0.41566192372801236
#>     Attrib V32    -0.10757428251276518
#>     Attrib V33    0.17132243180269868
#>     Attrib V34    0.2759088408204366
#>     Attrib V35    0.1390694748970995
#>     Attrib V36    -0.07513049392230492
#>     Attrib V37    -0.33042128368469426
#>     Attrib V38    -0.02124391507986875
#>     Attrib V39    0.1567565821359369
#>     Attrib V4    0.15754579188135082
#>     Attrib V40    -0.16930008053367582
#>     Attrib V41    -0.20384249303895283
#>     Attrib V42    0.03885491629115033
#>     Attrib V43    0.19214023558969398
#>     Attrib V44    0.38192404613606
#>     Attrib V45    0.21581008011010072
#>     Attrib V46    0.10435757036629474
#>     Attrib V47    -0.013911646723805687
#>     Attrib V48    0.16433318641508024
#>     Attrib V49    0.064613352319418
#>     Attrib V5    0.30187597165942515
#>     Attrib V50    -0.4221436060863667
#>     Attrib V51    0.10750519261064824
#>     Attrib V52    0.21801978521648496
#>     Attrib V53    0.1727376341867184
#>     Attrib V54    0.34833325187624525
#>     Attrib V55    0.21899756673361487
#>     Attrib V56    -0.0035799695016524003
#>     Attrib V57    -0.10885940134112071
#>     Attrib V58    0.18448747874131366
#>     Attrib V59    0.38242295030798856
#>     Attrib V6    0.016720998123869412
#>     Attrib V60    0.15657816510978448
#>     Attrib V7    -0.08692204675303503
#>     Attrib V8    -0.17486980369269378
#>     Attrib V9    0.2261252950160381
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.41303671193312436
#>     Attrib V1    0.20886409928371558
#>     Attrib V10    0.13145600404624844
#>     Attrib V11    -0.3757130564295075
#>     Attrib V12    -0.863654939226965
#>     Attrib V13    -0.11017662277932277
#>     Attrib V14    0.48436130291058394
#>     Attrib V15    0.14036444949648413
#>     Attrib V16    -0.006685087452409529
#>     Attrib V17    0.21139440526448525
#>     Attrib V18    -0.09749155099145143
#>     Attrib V19    0.09628954031016718
#>     Attrib V2    0.3638489293626097
#>     Attrib V20    0.1466345322097024
#>     Attrib V21    0.25674220047161833
#>     Attrib V22    -0.32094744029476296
#>     Attrib V23    -0.6148859146973088
#>     Attrib V24    -0.3794735451691374
#>     Attrib V25    0.1748948240658047
#>     Attrib V26    0.08958353452281628
#>     Attrib V27    0.19922613860302685
#>     Attrib V28    -0.228000102701252
#>     Attrib V29    -0.032311143278760585
#>     Attrib V3    0.6972865973305963
#>     Attrib V30    0.22697326717184607
#>     Attrib V31    0.5562233631494656
#>     Attrib V32    -0.04833090895525171
#>     Attrib V33    -0.0567559463366885
#>     Attrib V34    -0.4388877125976819
#>     Attrib V35    0.04213610552688134
#>     Attrib V36    0.8444269485021209
#>     Attrib V37    0.9574575355678826
#>     Attrib V38    0.33050299412783435
#>     Attrib V39    -0.34995425563559135
#>     Attrib V4    -0.18799697014463584
#>     Attrib V40    0.1694105240313109
#>     Attrib V41    -0.14746334320011312
#>     Attrib V42    -0.026257921022567028
#>     Attrib V43    -0.369743004422514
#>     Attrib V44    -0.4313928615786159
#>     Attrib V45    -0.1752375361233408
#>     Attrib V46    -0.4697799977894285
#>     Attrib V47    -0.3315188319826238
#>     Attrib V48    -0.5809665156406011
#>     Attrib V49    -0.505167126259856
#>     Attrib V5    -0.47534981923838127
#>     Attrib V50    1.3972060229949401
#>     Attrib V51    -0.4049760414405046
#>     Attrib V52    -0.9796101510426415
#>     Attrib V53    -0.3431780427572673
#>     Attrib V54    -0.1847341492378391
#>     Attrib V55    -0.25693677994656505
#>     Attrib V56    0.30387829867469707
#>     Attrib V57    0.4968637793871348
#>     Attrib V58    -0.43841749774616434
#>     Attrib V59    -0.3122376278093094
#>     Attrib V6    -0.3337190500441452
#>     Attrib V60    0.04760489148331543
#>     Attrib V7    0.6293243045883136
#>     Attrib V8    0.7084760152301529
#>     Attrib V9    -0.6078456122203435
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.1006255847988336
#>     Attrib V1    0.08632430610045974
#>     Attrib V10    -0.3721000821602319
#>     Attrib V11    -0.14610370839107067
#>     Attrib V12    0.06591653268407924
#>     Attrib V13    -0.14732756294457677
#>     Attrib V14    -0.08856823159522312
#>     Attrib V15    0.019649721716996957
#>     Attrib V16    0.19010076722412128
#>     Attrib V17    0.027000537477765037
#>     Attrib V18    0.16001219019988674
#>     Attrib V19    -0.012575980040095976
#>     Attrib V2    -0.2519567938000736
#>     Attrib V20    0.21899468454751278
#>     Attrib V21    0.15798260275639892
#>     Attrib V22    0.03808904381289792
#>     Attrib V23    -0.039584887559358566
#>     Attrib V24    -0.0674967608968515
#>     Attrib V25    -0.13687163562173205
#>     Attrib V26    -0.38945955977773145
#>     Attrib V27    -0.684440619315534
#>     Attrib V28    -0.6224405831084511
#>     Attrib V29    -0.5256281169787633
#>     Attrib V3    -0.32569672107417624
#>     Attrib V30    -0.3561267434153986
#>     Attrib V31    -0.5698795713464243
#>     Attrib V32    -0.09602718000669459
#>     Attrib V33    0.29780907863400485
#>     Attrib V34    0.41009260468700837
#>     Attrib V35    0.18893948666199953
#>     Attrib V36    -0.18035009177615924
#>     Attrib V37    -0.5491841438111488
#>     Attrib V38    -0.06425600885700085
#>     Attrib V39    0.13008131727660516
#>     Attrib V4    0.2519905364975046
#>     Attrib V40    -0.3119642862856647
#>     Attrib V41    -0.23880619738238656
#>     Attrib V42    0.06737787594584468
#>     Attrib V43    0.28234133819895724
#>     Attrib V44    0.4376342233456596
#>     Attrib V45    0.23666381356059332
#>     Attrib V46    0.1982593499568048
#>     Attrib V47    0.012190487396658093
#>     Attrib V48    0.2049015996554702
#>     Attrib V49    0.016637387494565788
#>     Attrib V5    0.34467890490729436
#>     Attrib V50    -0.5438288697597917
#>     Attrib V51    0.05779094322546553
#>     Attrib V52    0.23823489453399208
#>     Attrib V53    0.19855894144660896
#>     Attrib V54    0.5594203273332699
#>     Attrib V55    0.31517659900904327
#>     Attrib V56    0.017374645069524915
#>     Attrib V57    -0.15108416700112481
#>     Attrib V58    0.27818318375321727
#>     Attrib V59    0.5329635620087786
#>     Attrib V6    0.11599114810486826
#>     Attrib V60    0.2674540784121271
#>     Attrib V7    -0.022110639488312225
#>     Attrib V8    -0.13306631780936812
#>     Attrib V9    0.2879705969061308
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.5905195997119523
#>     Attrib V1    0.18294071708611895
#>     Attrib V10    0.7426979566446231
#>     Attrib V11    1.0729168624565373
#>     Attrib V12    1.001778730537207
#>     Attrib V13    0.16618197161108758
#>     Attrib V14    -0.4219162327269823
#>     Attrib V15    -0.006982436013443322
#>     Attrib V16    0.02886023678461156
#>     Attrib V17    -0.5408680007365735
#>     Attrib V18    -0.2611466042547326
#>     Attrib V19    -0.2456975455724633
#>     Attrib V2    0.1441377141123362
#>     Attrib V20    -0.2755520990628336
#>     Attrib V21    0.001929972644040228
#>     Attrib V22    0.6908500422166698
#>     Attrib V23    1.0881242361794154
#>     Attrib V24    0.5105204067326345
#>     Attrib V25    -0.3158705032640215
#>     Attrib V26    0.639969281389847
#>     Attrib V27    1.2351539392254136
#>     Attrib V28    1.752747667587252
#>     Attrib V29    1.5045879705621512
#>     Attrib V3    -0.44930215931835293
#>     Attrib V30    0.48738074522460223
#>     Attrib V31    -0.3353368360564544
#>     Attrib V32    -0.16956911909848674
#>     Attrib V33    -0.6160357555577368
#>     Attrib V34    -0.027982794658426752
#>     Attrib V35    0.13099015938926897
#>     Attrib V36    -0.32571111998242497
#>     Attrib V37    0.05987632156773797
#>     Attrib V38    -0.16021557774020193
#>     Attrib V39    0.3039561041452153
#>     Attrib V4    0.11874413947561913
#>     Attrib V40    0.39995032335451103
#>     Attrib V41    0.8669045491354417
#>     Attrib V42    -0.061179123270608884
#>     Attrib V43    0.07732642654482227
#>     Attrib V44    0.32489045273621453
#>     Attrib V45    0.15688244293094658
#>     Attrib V46    0.6957504782607087
#>     Attrib V47    0.5735774129740415
#>     Attrib V48    0.5398218821188623
#>     Attrib V49    0.739353007626524
#>     Attrib V5    0.46876708187232824
#>     Attrib V50    -0.630917756300439
#>     Attrib V51    0.9021782575707618
#>     Attrib V52    1.1144089716444767
#>     Attrib V53    0.6608459312129562
#>     Attrib V54    0.19435087308389098
#>     Attrib V55    -0.19861326718674444
#>     Attrib V56    -0.6781534295311898
#>     Attrib V57    -0.4963045999890868
#>     Attrib V58    0.1213091665121423
#>     Attrib V59    0.290716357385643
#>     Attrib V6    0.35933970865142617
#>     Attrib V60    0.34953619577778516
#>     Attrib V7    -0.5669218834012375
#>     Attrib V8    -0.5271960926912806
#>     Attrib V9    0.9218108111608202
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.19044503239493082
#>     Attrib V1    -0.010008041200549045
#>     Attrib V10    -0.13469215154207842
#>     Attrib V11    0.08547418045850635
#>     Attrib V12    0.16579592415131544
#>     Attrib V13    -0.06622754450236794
#>     Attrib V14    -0.23666630374671757
#>     Attrib V15    -0.10567118433942924
#>     Attrib V16    0.08931435443478687
#>     Attrib V17    -0.04185897323556007
#>     Attrib V18    0.0490164338213341
#>     Attrib V19    -0.005366540520032046
#>     Attrib V2    -0.24856402560099264
#>     Attrib V20    0.07738803242643703
#>     Attrib V21    0.0942807132844532
#>     Attrib V22    0.10357599749275692
#>     Attrib V23    0.05553393516280654
#>     Attrib V24    -0.010814815170790205
#>     Attrib V25    -0.13327294903702877
#>     Attrib V26    -0.10362418374823462
#>     Attrib V27    -0.2474762116088627
#>     Attrib V28    -0.09549003709953413
#>     Attrib V29    -0.1183656072485869
#>     Attrib V3    -0.3714389768706888
#>     Attrib V30    -0.10076594997576788
#>     Attrib V31    -0.4948230456899573
#>     Attrib V32    -0.1474888011574612
#>     Attrib V33    0.10970513403101272
#>     Attrib V34    0.2950227237306782
#>     Attrib V35    0.21133815635659245
#>     Attrib V36    0.03803089565069038
#>     Attrib V37    -0.27336961308113433
#>     Attrib V38    0.1314820882100559
#>     Attrib V39    0.19931958624911802
#>     Attrib V4    0.20795262103641732
#>     Attrib V40    -0.21539462168372353
#>     Attrib V41    -0.21059331939866086
#>     Attrib V42    -0.09589617037440679
#>     Attrib V43    0.2711311813983405
#>     Attrib V44    0.5942718249340561
#>     Attrib V45    0.27761142250543974
#>     Attrib V46    0.23089223244560989
#>     Attrib V47    0.05815373291058757
#>     Attrib V48    0.2525407957515747
#>     Attrib V49    0.10932672441057102
#>     Attrib V5    0.26917140502428005
#>     Attrib V50    -0.6175153970885439
#>     Attrib V51    0.08563379791676116
#>     Attrib V52    0.2918526132848641
#>     Attrib V53    0.1844853891624489
#>     Attrib V54    0.4146027674228916
#>     Attrib V55    0.13517053326844233
#>     Attrib V56    -0.17881920993812309
#>     Attrib V57    -0.20364261119560068
#>     Attrib V58    0.13786989881863232
#>     Attrib V59    0.3952720831646363
#>     Attrib V6    0.001014142039938955
#>     Attrib V60    0.20520445051957517
#>     Attrib V7    -0.162937215139765
#>     Attrib V8    -0.25381063099730333
#>     Attrib V9    0.31912097140566337
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.471601354274071
#>     Attrib V1    0.11250816287720583
#>     Attrib V10    0.8297080756273971
#>     Attrib V11    1.0550274548678213
#>     Attrib V12    1.0657973266337804
#>     Attrib V13    0.251935532566895
#>     Attrib V14    -0.446190531379338
#>     Attrib V15    -0.030089018515843887
#>     Attrib V16    -0.011734017794558394
#>     Attrib V17    -0.5058153235268078
#>     Attrib V18    -0.20360455883755973
#>     Attrib V19    -0.24798971906384076
#>     Attrib V2    0.12918273486262594
#>     Attrib V20    -0.3105464862997889
#>     Attrib V21    -0.007411724352276888
#>     Attrib V22    0.7231786327772765
#>     Attrib V23    1.1076853657346266
#>     Attrib V24    0.58396178106083
#>     Attrib V25    -0.20031093859826563
#>     Attrib V26    0.7139798370751815
#>     Attrib V27    1.3032839758509462
#>     Attrib V28    1.7249081890674947
#>     Attrib V29    1.3927003258020865
#>     Attrib V3    -0.4595705503348635
#>     Attrib V30    0.4679096535621971
#>     Attrib V31    -0.32327131285380645
#>     Attrib V32    -0.13330801104505574
#>     Attrib V33    -0.6149274635550143
#>     Attrib V34    -0.006982890379758838
#>     Attrib V35    0.10346207067829043
#>     Attrib V36    -0.31956822343595953
#>     Attrib V37    -0.026632501792405866
#>     Attrib V38    -0.2013456112175478
#>     Attrib V39    0.38339478271789773
#>     Attrib V4    0.1364191737785757
#>     Attrib V40    0.4065391113998383
#>     Attrib V41    0.8769258289014317
#>     Attrib V42    -0.08717578375399695
#>     Attrib V43    0.1765225549369161
#>     Attrib V44    0.31999439777190375
#>     Attrib V45    0.16041133799258583
#>     Attrib V46    0.6932228932040743
#>     Attrib V47    0.5853576982309172
#>     Attrib V48    0.565376113560775
#>     Attrib V49    0.8343602698591177
#>     Attrib V5    0.45722700312674797
#>     Attrib V50    -0.615688429056855
#>     Attrib V51    0.9565125100119528
#>     Attrib V52    1.1458786093114262
#>     Attrib V53    0.7571107015111598
#>     Attrib V54    0.12472683457186144
#>     Attrib V55    -0.18396795187058565
#>     Attrib V56    -0.6522411429860575
#>     Attrib V57    -0.567719843020454
#>     Attrib V58    0.12938064469784877
#>     Attrib V59    0.22355692359607807
#>     Attrib V6    0.3666189073528272
#>     Attrib V60    0.24018319895472745
#>     Attrib V7    -0.5925398221029478
#>     Attrib V8    -0.4764187736539088
#>     Attrib V9    0.8716213712181324
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.6575462584646422
#>     Attrib V1    0.17305952478031394
#>     Attrib V10    -0.46625261009032554
#>     Attrib V11    -0.8845228284656078
#>     Attrib V12    -1.040858674449958
#>     Attrib V13    -0.019039742701396876
#>     Attrib V14    0.5436187100468387
#>     Attrib V15    0.060529128512232154
#>     Attrib V16    0.025126942341039002
#>     Attrib V17    0.3836533359707062
#>     Attrib V18    0.10949287832190782
#>     Attrib V19    0.2217485783810102
#>     Attrib V2    0.14891436694789248
#>     Attrib V20    0.4655683239234142
#>     Attrib V21    0.38058060397198945
#>     Attrib V22    -0.3037671583593659
#>     Attrib V23    -0.8143324191902133
#>     Attrib V24    -0.5692540521155312
#>     Attrib V25    0.32600279469311116
#>     Attrib V26    -0.13424041896141733
#>     Attrib V27    -0.5224570876547553
#>     Attrib V28    -0.7660747680516546
#>     Attrib V29    -0.4465463808676183
#>     Attrib V3    0.6585326461295455
#>     Attrib V30    0.06246683986103563
#>     Attrib V31    0.13878299396621427
#>     Attrib V32    -0.3955556204281835
#>     Attrib V33    0.1643513623838362
#>     Attrib V34    -0.1604121446493889
#>     Attrib V35    0.27487746212751774
#>     Attrib V36    1.0230472016409766
#>     Attrib V37    0.9722416287096368
#>     Attrib V38    0.6889759141684312
#>     Attrib V39    -0.2249863035680812
#>     Attrib V4    -0.10358028148420456
#>     Attrib V40    -0.20612087996202605
#>     Attrib V41    -0.5619459228210002
#>     Attrib V42    -0.02286386328202423
#>     Attrib V43    -0.2257730032079113
#>     Attrib V44    -0.21491171313880203
#>     Attrib V45    0.14717251791742675
#>     Attrib V46    -0.4500358362780681
#>     Attrib V47    -0.45913896062835013
#>     Attrib V48    -0.7300581334961213
#>     Attrib V49    -0.8575280186004032
#>     Attrib V5    -0.462663543259171
#>     Attrib V50    0.9598189447839387
#>     Attrib V51    -0.7073589797295875
#>     Attrib V52    -1.0270743372332778
#>     Attrib V53    -0.47683894390915793
#>     Attrib V54    -0.19274393635571505
#>     Attrib V55    -0.24396918732718467
#>     Attrib V56    0.41606055189973684
#>     Attrib V57    0.187395059241539
#>     Attrib V58    -0.5514990488270094
#>     Attrib V59    -0.3509192814168814
#>     Attrib V6    -0.40343831569589556
#>     Attrib V60    -0.10341299205289645
#>     Attrib V7    0.570337229857547
#>     Attrib V8    0.3894789899779926
#>     Attrib V9    -0.7519664452546103
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.06995933554166817
#>     Attrib V1    -0.14392045792637953
#>     Attrib V10    -0.4120888039240197
#>     Attrib V11    -0.07065476160506481
#>     Attrib V12    0.14520255866144147
#>     Attrib V13    -0.26973047295337227
#>     Attrib V14    -0.27502527634456436
#>     Attrib V15    -0.1614064406201826
#>     Attrib V16    0.11025470496760019
#>     Attrib V17    0.1528251225709497
#>     Attrib V18    0.28887629638970536
#>     Attrib V19    0.0455058306582266
#>     Attrib V2    -0.5349618137242317
#>     Attrib V20    0.26729389244224055
#>     Attrib V21    0.1413977656663078
#>     Attrib V22    0.1925270106309828
#>     Attrib V23    0.12472259300831817
#>     Attrib V24    -0.10597968029253924
#>     Attrib V25    -0.155655253785138
#>     Attrib V26    -0.4116587847629643
#>     Attrib V27    -0.7501300299889442
#>     Attrib V28    -0.557144043259342
#>     Attrib V29    -0.586762828708809
#>     Attrib V3    -0.5907856076860019
#>     Attrib V30    -0.3094499194223196
#>     Attrib V31    -0.8811305822689128
#>     Attrib V32    -0.31557226708753505
#>     Attrib V33    0.26497749672256055
#>     Attrib V34    0.6117868118788374
#>     Attrib V35    0.39388912365819073
#>     Attrib V36    -0.012241443672614144
#>     Attrib V37    -0.6403436810198008
#>     Attrib V38    0.0923655632135926
#>     Attrib V39    0.2411784444129054
#>     Attrib V4    0.28211803732647694
#>     Attrib V40    -0.46527200788203776
#>     Attrib V41    -0.5420864129004248
#>     Attrib V42    0.014617617106995912
#>     Attrib V43    0.5562211410192288
#>     Attrib V44    0.93149137820452
#>     Attrib V45    0.45135772252320183
#>     Attrib V46    0.3135450956724561
#>     Attrib V47    0.15184022060047359
#>     Attrib V48    0.4036143582748083
#>     Attrib V49    0.06507738263373236
#>     Attrib V5    0.4665224020780616
#>     Attrib V50    -0.8396674514269615
#>     Attrib V51    0.1636975486968086
#>     Attrib V52    0.40765976627005907
#>     Attrib V53    0.18803756127821727
#>     Attrib V54    0.7796164322861704
#>     Attrib V55    0.3952697699280608
#>     Attrib V56    -0.07445815101799218
#>     Attrib V57    -0.34222378872120496
#>     Attrib V58    0.3109205359702894
#>     Attrib V59    0.4558888472459128
#>     Attrib V6    0.008730673089195817
#>     Attrib V60    0.2014490038722417
#>     Attrib V7    -0.22169019670712586
#>     Attrib V8    -0.28237476904362496
#>     Attrib V9    0.4219209220324183
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.17960369077334212
#>     Attrib V1    -0.09988995125260076
#>     Attrib V10    -0.4706867766206849
#>     Attrib V11    -0.05686352412201748
#>     Attrib V12    0.07043849719801432
#>     Attrib V13    -0.23149383987124378
#>     Attrib V14    -0.20081141668954097
#>     Attrib V15    -0.0979484319766064
#>     Attrib V16    0.1732304598722111
#>     Attrib V17    0.0763963892225912
#>     Attrib V18    0.20193615426651187
#>     Attrib V19    0.06068413647197672
#>     Attrib V2    -0.45132120102093204
#>     Attrib V20    0.22528529223089508
#>     Attrib V21    0.1477555150793837
#>     Attrib V22    0.19923922168924393
#>     Attrib V23    0.10693107610815668
#>     Attrib V24    -0.11376785608482762
#>     Attrib V25    -0.22939476154950816
#>     Attrib V26    -0.48349964598718376
#>     Attrib V27    -0.8578970795966135
#>     Attrib V28    -0.743558533071243
#>     Attrib V29    -0.6671709903388364
#>     Attrib V3    -0.6039739025826053
#>     Attrib V30    -0.42637138767481575
#>     Attrib V31    -0.8568865914599126
#>     Attrib V32    -0.24641419433558398
#>     Attrib V33    0.4012699473464904
#>     Attrib V34    0.6513988958590277
#>     Attrib V35    0.28666958911495777
#>     Attrib V36    -0.18097200962418064
#>     Attrib V37    -0.8043843520224473
#>     Attrib V38    -0.03422431567580594
#>     Attrib V39    0.1802872858628448
#>     Attrib V4    0.3229916420601424
#>     Attrib V40    -0.423844185961815
#>     Attrib V41    -0.4871659979925919
#>     Attrib V42    0.013689124353293801
#>     Attrib V43    0.5568984122992406
#>     Attrib V44    0.7696223997210913
#>     Attrib V45    0.38356434119617283
#>     Attrib V46    0.36087627257734556
#>     Attrib V47    0.10633844357337063
#>     Attrib V48    0.42355194437417204
#>     Attrib V49    0.04468505005169054
#>     Attrib V5    0.47231672598913277
#>     Attrib V50    -0.8968177345849198
#>     Attrib V51    0.10504413500530131
#>     Attrib V52    0.45501227996942567
#>     Attrib V53    0.2408807357938149
#>     Attrib V54    0.8133589951300514
#>     Attrib V55    0.44259815960982346
#>     Attrib V56    -0.0311696407917504
#>     Attrib V57    -0.2601248032466211
#>     Attrib V58    0.3654948955587887
#>     Attrib V59    0.6108772319719732
#>     Attrib V6    0.028080540729634916
#>     Attrib V60    0.22989023544978024
#>     Attrib V7    -0.10435160358991649
#>     Attrib V8    -0.23063187780580913
#>     Attrib V9    0.42453309086910596
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.06351476600783176
#>     Attrib V1    0.0979168204780402
#>     Attrib V10    -0.17594833910814295
#>     Attrib V11    -0.028450496477343247
#>     Attrib V12    0.0687710814950721
#>     Attrib V13    0.02913252118463374
#>     Attrib V14    -0.006124716063667259
#>     Attrib V15    0.006458069251517393
#>     Attrib V16    0.0353381194962759
#>     Attrib V17    0.013317999000444796
#>     Attrib V18    0.05344385815828037
#>     Attrib V19    -0.02483848996225262
#>     Attrib V2    -0.10579455169673288
#>     Attrib V20    0.12858644481166906
#>     Attrib V21    0.08011894319347666
#>     Attrib V22    -0.007203467354432551
#>     Attrib V23    0.008290678456620012
#>     Attrib V24    -0.029958719517914772
#>     Attrib V25    -0.05920485021243966
#>     Attrib V26    -0.20688674979302993
#>     Attrib V27    -0.2604053072692797
#>     Attrib V28    -0.23569648122316336
#>     Attrib V29    -0.171702664808795
#>     Attrib V3    -0.08684739662029017
#>     Attrib V30    -0.1667521742707135
#>     Attrib V31    -0.3780285535750878
#>     Attrib V32    -0.07984482214509524
#>     Attrib V33    0.09525907672817747
#>     Attrib V34    0.2533161403741295
#>     Attrib V35    0.1248404788944467
#>     Attrib V36    -0.017573526152666278
#>     Attrib V37    -0.19337944967774953
#>     Attrib V38    0.044156766555628134
#>     Attrib V39    0.17961279742913655
#>     Attrib V4    0.19299792742682484
#>     Attrib V40    -0.09777400110990413
#>     Attrib V41    -0.10744661482593564
#>     Attrib V42    0.027680141807182895
#>     Attrib V43    0.12681562273797176
#>     Attrib V44    0.27070830536116897
#>     Attrib V45    0.09972155897620771
#>     Attrib V46    0.14872714835731907
#>     Attrib V47    0.05291270065412053
#>     Attrib V48    0.10849937031098604
#>     Attrib V49    0.060887802172965085
#>     Attrib V5    0.27343171437262587
#>     Attrib V50    -0.3480856078798579
#>     Attrib V51    0.05660327176408799
#>     Attrib V52    0.1590226894391764
#>     Attrib V53    0.15255579452174803
#>     Attrib V54    0.3269636939120656
#>     Attrib V55    0.18313832190488483
#>     Attrib V56    0.010739280425286265
#>     Attrib V57    -0.06103770432457465
#>     Attrib V58    0.15704478167764205
#>     Attrib V59    0.39333620140772113
#>     Attrib V6    0.05533959619920503
#>     Attrib V60    0.2612669659126001
#>     Attrib V7    -0.01128895491848548
#>     Attrib V8    -0.14671541955707035
#>     Attrib V9    0.16876603451588174
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.10591156756103756
#>     Attrib V1    0.012686220915682838
#>     Attrib V10    -0.3702106426514895
#>     Attrib V11    -0.04824229953623584
#>     Attrib V12    0.13739005255660514
#>     Attrib V13    -0.20474232793555502
#>     Attrib V14    -0.2346019735748394
#>     Attrib V15    -0.013398380612439349
#>     Attrib V16    0.1251967909397085
#>     Attrib V17    0.056431313815705174
#>     Attrib V18    0.16425835392754437
#>     Attrib V19    -0.05085659276317328
#>     Attrib V2    -0.42624226781564944
#>     Attrib V20    0.19758876789356952
#>     Attrib V21    0.10231790255992294
#>     Attrib V22    0.10231250212727565
#>     Attrib V23    0.07319039465031851
#>     Attrib V24    -0.08731333847429042
#>     Attrib V25    -0.12861624064362515
#>     Attrib V26    -0.42608705316259826
#>     Attrib V27    -0.9580721596908314
#>     Attrib V28    -0.888476752483616
#>     Attrib V29    -0.8806254109739816
#>     Attrib V3    -0.5688088220967187
#>     Attrib V30    -0.48564908746653196
#>     Attrib V31    -0.7176679067990646
#>     Attrib V32    -0.15100294617656773
#>     Attrib V33    0.43678883286507686
#>     Attrib V34    0.6151904347795814
#>     Attrib V35    0.2899115242195322
#>     Attrib V36    -0.2629508194304693
#>     Attrib V37    -0.8197003454082279
#>     Attrib V38    -0.16976893317818897
#>     Attrib V39    0.15216220667414196
#>     Attrib V4    0.25974050610397315
#>     Attrib V40    -0.4399884198600993
#>     Attrib V41    -0.47345250997510296
#>     Attrib V42    -0.02613485985138997
#>     Attrib V43    0.3981820134021917
#>     Attrib V44    0.7166933905403782
#>     Attrib V45    0.30567606940524067
#>     Attrib V46    0.31461930470009364
#>     Attrib V47    0.10623689741396594
#>     Attrib V48    0.4449732025006286
#>     Attrib V49    0.12535124954068114
#>     Attrib V5    0.41726977251122954
#>     Attrib V50    -0.8196224217597401
#>     Attrib V51    0.06762318074872492
#>     Attrib V52    0.358523764937687
#>     Attrib V53    0.13693317770284852
#>     Attrib V54    0.8518152471461197
#>     Attrib V55    0.4946312764980229
#>     Attrib V56    -0.010775029304235328
#>     Attrib V57    -0.24875847173355373
#>     Attrib V58    0.38518256703871523
#>     Attrib V59    0.5792577920929549
#>     Attrib V6    0.12601396829523895
#>     Attrib V60    0.2992624879643272
#>     Attrib V7    -0.02437938683127495
#>     Attrib V8    -0.22613340304482413
#>     Attrib V9    0.4329432816544905
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.6578803168740476
#>     Attrib V1    0.06777904187948407
#>     Attrib V10    -0.5131964385663377
#>     Attrib V11    -0.9897530839002969
#>     Attrib V12    -0.9959036678355275
#>     Attrib V13    -0.016136917173012914
#>     Attrib V14    0.47724365268260743
#>     Attrib V15    0.10100548317898742
#>     Attrib V16    -0.008550828941362663
#>     Attrib V17    0.41057591962441947
#>     Attrib V18    0.04689797425845146
#>     Attrib V19    0.18401065485413284
#>     Attrib V2    0.06785507471556237
#>     Attrib V20    0.4037541940687569
#>     Attrib V21    0.27561323836081114
#>     Attrib V22    -0.3576347387177238
#>     Attrib V23    -0.9906390522081207
#>     Attrib V24    -0.5805481974255473
#>     Attrib V25    0.4020746662459324
#>     Attrib V26    -0.18178607207659464
#>     Attrib V27    -0.7379724031521325
#>     Attrib V28    -1.043120815782827
#>     Attrib V29    -0.7561104389361599
#>     Attrib V3    0.6928025888739983
#>     Attrib V30    -0.17273952051558414
#>     Attrib V31    0.16745508760713707
#>     Attrib V32    -0.24533262270953027
#>     Attrib V33    0.2763913726200165
#>     Attrib V34    -0.0606414948894191
#>     Attrib V35    0.24248863679757465
#>     Attrib V36    0.9644316033693715
#>     Attrib V37    0.8883859649299054
#>     Attrib V38    0.5476858607726903
#>     Attrib V39    -0.32341784669229334
#>     Attrib V4    -0.09885532109620719
#>     Attrib V40    -0.287361041836871
#>     Attrib V41    -0.6701455420706246
#>     Attrib V42    -0.07229335748329152
#>     Attrib V43    -0.3009390090715839
#>     Attrib V44    -0.3869136889754822
#>     Attrib V45    0.07461970313468258
#>     Attrib V46    -0.4747476516478953
#>     Attrib V47    -0.4919010077925265
#>     Attrib V48    -0.6990893507613786
#>     Attrib V49    -0.9467170546279505
#>     Attrib V5    -0.49524094898953563
#>     Attrib V50    0.9400011610845102
#>     Attrib V51    -0.7534798505566541
#>     Attrib V52    -1.1428526422182312
#>     Attrib V53    -0.5612434503579995
#>     Attrib V54    -0.20924427139871166
#>     Attrib V55    -0.23201094194018868
#>     Attrib V56    0.5511755810974046
#>     Attrib V57    0.23356748000485
#>     Attrib V58    -0.5390009146709495
#>     Attrib V59    -0.2959208022101068
#>     Attrib V6    -0.3933580760031249
#>     Attrib V60    -0.0031754913771563156
#>     Attrib V7    0.646729974351855
#>     Attrib V8    0.4327006708115824
#>     Attrib V9    -0.7482711184335908
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1612439271382695
#>     Attrib V1    0.0917070582406277
#>     Attrib V10    0.049470610985737226
#>     Attrib V11    0.034225349006726316
#>     Attrib V12    0.0560786726317819
#>     Attrib V13    0.05223157648468929
#>     Attrib V14    0.016389074559193115
#>     Attrib V15    0.02169490056254269
#>     Attrib V16    0.076613667117647
#>     Attrib V17    0.044108409995054394
#>     Attrib V18    0.05148472161718763
#>     Attrib V19    0.01990972072556027
#>     Attrib V2    0.010697310372831894
#>     Attrib V20    0.001669079495573555
#>     Attrib V21    -0.034664928547310125
#>     Attrib V22    -0.058924720769780205
#>     Attrib V23    -0.08709205502443233
#>     Attrib V24    -0.025876463393353446
#>     Attrib V25    -0.03383199209590776
#>     Attrib V26    -0.08369837746225452
#>     Attrib V27    -0.07803422339547177
#>     Attrib V28    -0.03416942115575347
#>     Attrib V29    -0.08080061228886436
#>     Attrib V3    0.07348356114885869
#>     Attrib V30    -0.08684023860981735
#>     Attrib V31    -0.10457130686142405
#>     Attrib V32    -0.010707857787068061
#>     Attrib V33    0.007857219040606859
#>     Attrib V34    0.11215012185118645
#>     Attrib V35    0.08424838374510227
#>     Attrib V36    0.039589450038568466
#>     Attrib V37    0.026636805487020715
#>     Attrib V38    0.05746824311758372
#>     Attrib V39    0.0754097698979167
#>     Attrib V4    0.1480721721838712
#>     Attrib V40    -0.015558091558726716
#>     Attrib V41    0.017021548517962143
#>     Attrib V42    0.06794187011229699
#>     Attrib V43    0.0565027332512627
#>     Attrib V44    0.051963367535827
#>     Attrib V45    0.05422922945821679
#>     Attrib V46    0.07410250548225554
#>     Attrib V47    0.03776119008559153
#>     Attrib V48    0.04325222655248297
#>     Attrib V49    -0.004474329064492761
#>     Attrib V5    0.1443434904596187
#>     Attrib V50    -0.005722433291583881
#>     Attrib V51    0.1315529368380008
#>     Attrib V52    0.13971975745200255
#>     Attrib V53    0.12165031578656299
#>     Attrib V54    0.10824846456942311
#>     Attrib V55    0.11369780709580699
#>     Attrib V56    0.07020851542188555
#>     Attrib V57    0.0512194745569097
#>     Attrib V58    0.130539079025161
#>     Attrib V59    0.11034659768014825
#>     Attrib V6    0.06389142635624125
#>     Attrib V60    0.16494774128093045
#>     Attrib V7    0.00932799208164492
#>     Attrib V8    -0.020262764410057033
#>     Attrib V9    0.15647373258538513
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.01816090453252047
#>     Attrib V1    0.1346892454666316
#>     Attrib V10    -0.07877191368491851
#>     Attrib V11    0.027422135204060883
#>     Attrib V12    0.03701530860995043
#>     Attrib V13    -0.08331555750731824
#>     Attrib V14    -0.05085890313013442
#>     Attrib V15    0.07461375149470321
#>     Attrib V16    0.0734295111352737
#>     Attrib V17    -0.011110214824001189
#>     Attrib V18    0.0292183081164831
#>     Attrib V19    0.0039034198804120956
#>     Attrib V2    -0.03128278597242641
#>     Attrib V20    0.07107701663297944
#>     Attrib V21    0.029358812102972996
#>     Attrib V22    0.0398865688291461
#>     Attrib V23    -0.07464041143658526
#>     Attrib V24    -0.06460413814478737
#>     Attrib V25    -0.18693473479751085
#>     Attrib V26    -0.2126361726211995
#>     Attrib V27    -0.2660530854557114
#>     Attrib V28    -0.18312114629119963
#>     Attrib V29    -0.178033262036409
#>     Attrib V3    -0.16044560399170402
#>     Attrib V30    -0.11157649558851457
#>     Attrib V31    -0.28178084158660244
#>     Attrib V32    -0.11378275621731292
#>     Attrib V33    0.14609817574534825
#>     Attrib V34    0.17986315926476545
#>     Attrib V35    0.15914075097636912
#>     Attrib V36    -0.04283495768618953
#>     Attrib V37    -0.25043358088263395
#>     Attrib V38    0.07090517470483465
#>     Attrib V39    0.14415352835698078
#>     Attrib V4    0.177146177545466
#>     Attrib V40    -0.17674203257197688
#>     Attrib V41    -0.12268318270524492
#>     Attrib V42    -0.01702659169780888
#>     Attrib V43    0.2068573491123959
#>     Attrib V44    0.3211887703297477
#>     Attrib V45    0.17837093596869258
#>     Attrib V46    0.09600986701357146
#>     Attrib V47    -0.02695299192219844
#>     Attrib V48    0.16780700990378383
#>     Attrib V49    0.014770141852331975
#>     Attrib V5    0.23578224564602396
#>     Attrib V50    -0.31521201851245273
#>     Attrib V51    0.09959347582584953
#>     Attrib V52    0.1600404622553877
#>     Attrib V53    0.10002234211849478
#>     Attrib V54    0.31474276318809813
#>     Attrib V55    0.22861815855629536
#>     Attrib V56    0.009243448018620358
#>     Attrib V57    -0.04907954257713361
#>     Attrib V58    0.13274062205700507
#>     Attrib V59    0.3050166968754533
#>     Attrib V6    0.031832049767142497
#>     Attrib V60    0.21546048603253667
#>     Attrib V7    -0.1097640841811865
#>     Attrib V8    -0.07007053512238069
#>     Attrib V9    0.2027208958918438
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.18548698610417097
#>     Attrib V1    0.10088303829126286
#>     Attrib V10    0.04869807229195602
#>     Attrib V11    0.04224260012595633
#>     Attrib V12    0.03938297703900299
#>     Attrib V13    0.007421836566365616
#>     Attrib V14    0.039797267390229825
#>     Attrib V15    0.01367877282367186
#>     Attrib V16    0.03303909230695308
#>     Attrib V17    -0.039682347963810365
#>     Attrib V18    0.04170111209398287
#>     Attrib V19    -0.05574181993626132
#>     Attrib V2    0.06379070307543067
#>     Attrib V20    0.03942185839475789
#>     Attrib V21    0.023745090561956433
#>     Attrib V22    -0.04705800142852728
#>     Attrib V23    -0.05232879783301422
#>     Attrib V24    -0.07788241252719036
#>     Attrib V25    -0.04051663354844747
#>     Attrib V26    -0.034405283319200494
#>     Attrib V27    -0.0482585193831971
#>     Attrib V28    -0.05632814571933919
#>     Attrib V29    -0.08731040110289615
#>     Attrib V3    0.09911881349885085
#>     Attrib V30    -0.0881535840246274
#>     Attrib V31    -0.10614640959262857
#>     Attrib V32    -0.04334757234588677
#>     Attrib V33    0.020579745863168922
#>     Attrib V34    0.12309716568447605
#>     Attrib V35    0.08443910775976253
#>     Attrib V36    0.11797165759579908
#>     Attrib V37    -0.009527731464168762
#>     Attrib V38    0.04333208778111743
#>     Attrib V39    0.11481629037138472
#>     Attrib V4    0.11451307865322558
#>     Attrib V40    -0.005265783330314339
#>     Attrib V41    -0.031530063233515655
#>     Attrib V42    0.0261188313882871
#>     Attrib V43    0.07249689332823012
#>     Attrib V44    0.13791063441510967
#>     Attrib V45    0.015118778119450543
#>     Attrib V46    0.0524957399674712
#>     Attrib V47    0.08089461208982628
#>     Attrib V48    0.07382471378822245
#>     Attrib V49    0.05665210390907621
#>     Attrib V5    0.1522118250256561
#>     Attrib V50    -0.09403949455173156
#>     Attrib V51    0.1428277477335987
#>     Attrib V52    0.10983721845336425
#>     Attrib V53    0.09859169109832644
#>     Attrib V54    0.10792313015137846
#>     Attrib V55    0.1299106845102662
#>     Attrib V56    0.08475664342936787
#>     Attrib V57    -0.016944357001827143
#>     Attrib V58    0.09421448972783704
#>     Attrib V59    0.18530837303141673
#>     Attrib V6    0.018549600162138042
#>     Attrib V60    0.2055390813306994
#>     Attrib V7    0.04148429365178215
#>     Attrib V8    0.043611688511162774
#>     Attrib V9    0.1461911838069257
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.6185825277476262
#>     Attrib V1    0.12470412516400033
#>     Attrib V10    0.5396735744733836
#>     Attrib V11    0.7544858774982439
#>     Attrib V12    0.8859719800554277
#>     Attrib V13    0.08915852957502313
#>     Attrib V14    -0.3742402915037322
#>     Attrib V15    -0.015367906297789408
#>     Attrib V16    -0.09749609358786206
#>     Attrib V17    -0.5945113642626162
#>     Attrib V18    -0.4148635332756775
#>     Attrib V19    -0.39453052546337963
#>     Attrib V2    -0.07400953958399299
#>     Attrib V20    -0.3896409405783131
#>     Attrib V21    -0.1350116502183174
#>     Attrib V22    0.36655850446289195
#>     Attrib V23    0.4279604312250171
#>     Attrib V24    0.22078161278918318
#>     Attrib V25    -0.2152488857196683
#>     Attrib V26    0.37280016860489734
#>     Attrib V27    0.77003684010507
#>     Attrib V28    1.170672066626632
#>     Attrib V29    0.8881375076351771
#>     Attrib V3    -0.5725460216505823
#>     Attrib V30    0.36533413503972373
#>     Attrib V31    -0.3555763323861712
#>     Attrib V32    -0.19024773477588078
#>     Attrib V33    -0.3496969715041228
#>     Attrib V34    0.08848896439702808
#>     Attrib V35    0.24821437333248297
#>     Attrib V36    -0.08508195215225006
#>     Attrib V37    -0.024516774880228468
#>     Attrib V38    -0.05214912054437919
#>     Attrib V39    0.24712962631804897
#>     Attrib V4    0.16403153398205556
#>     Attrib V40    0.11972837204348982
#>     Attrib V41    0.3726060450076147
#>     Attrib V42    -0.15038724418296112
#>     Attrib V43    0.014460293747209575
#>     Attrib V44    0.3113655784520706
#>     Attrib V45    0.2291841215585047
#>     Attrib V46    0.48119029575628786
#>     Attrib V47    0.27845041294377465
#>     Attrib V48    0.43962484600793755
#>     Attrib V49    0.5269993706873232
#>     Attrib V5    0.4050448712709021
#>     Attrib V50    -0.7993436077855782
#>     Attrib V51    0.5233260221392476
#>     Attrib V52    0.7438207224923575
#>     Attrib V53    0.4243176775599054
#>     Attrib V54    0.4175971533736314
#>     Attrib V55    -0.03331825943237461
#>     Attrib V56    -0.6327338942037058
#>     Attrib V57    -0.3633631651235089
#>     Attrib V58    0.2055653284267696
#>     Attrib V59    0.5135444779302945
#>     Attrib V6    0.26101517807224284
#>     Attrib V60    0.4774575664597859
#>     Attrib V7    -0.3141519368269615
#>     Attrib V8    -0.33276400531871986
#>     Attrib V9    0.7901222501471449
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.4234939062482973
#>     Attrib V1    0.19211631791017567
#>     Attrib V10    0.1887643067961853
#>     Attrib V11    0.404028513923674
#>     Attrib V12    0.4393228732422969
#>     Attrib V13    -0.14477642314539066
#>     Attrib V14    -0.32103563094561816
#>     Attrib V15    -0.14382907113040866
#>     Attrib V16    -0.010168597470699899
#>     Attrib V17    -0.18885718447919364
#>     Attrib V18    0.0077849493657135985
#>     Attrib V19    -0.06714327548967008
#>     Attrib V2    -0.28372448736343103
#>     Attrib V20    0.0800691568219933
#>     Attrib V21    0.2809848326863395
#>     Attrib V22    0.45988364597814557
#>     Attrib V23    0.4220128659239124
#>     Attrib V24    0.2003024410686608
#>     Attrib V25    -0.07783905528039647
#>     Attrib V26    0.32793544641681616
#>     Attrib V27    0.41219040027672366
#>     Attrib V28    0.6225778588751567
#>     Attrib V29    0.6323037191108951
#>     Attrib V3    -0.6078277893099692
#>     Attrib V30    0.4112430171341905
#>     Attrib V31    -0.48500216070956675
#>     Attrib V32    -0.41978984026523736
#>     Attrib V33    -0.4194833478176283
#>     Attrib V34    -0.03402609867158836
#>     Attrib V35    0.24941221420487306
#>     Attrib V36    0.3040557494145387
#>     Attrib V37    0.18816604078835775
#>     Attrib V38    0.46461677980357013
#>     Attrib V39    0.4424806754349322
#>     Attrib V4    0.20903230073435308
#>     Attrib V40    -0.11000828575599013
#>     Attrib V41    -0.04903524118270245
#>     Attrib V42    -0.12618996501423338
#>     Attrib V43    0.4399669926587544
#>     Attrib V44    0.9609271979342905
#>     Attrib V45    0.40927787519393205
#>     Attrib V46    0.4094278385918657
#>     Attrib V47    0.18517873642257127
#>     Attrib V48    0.3311430071585598
#>     Attrib V49    0.33013461529658744
#>     Attrib V5    0.47012993674621123
#>     Attrib V50    -0.5852743097817665
#>     Attrib V51    0.4066096670554739
#>     Attrib V52    0.5079555053340556
#>     Attrib V53    0.37879292818709165
#>     Attrib V54    0.6737360066016036
#>     Attrib V55    0.11497689081533566
#>     Attrib V56    -0.38285077305560744
#>     Attrib V57    -0.36282580786675883
#>     Attrib V58    0.13955403241674344
#>     Attrib V59    0.623718965359351
#>     Attrib V6    -0.004072083276822465
#>     Attrib V60    0.38407660409752503
#>     Attrib V7    -0.27507022639953604
#>     Attrib V8    -0.2913684106327491
#>     Attrib V9    0.6101242735757728
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.07177510225205413
#>     Attrib V1    0.21511738827305527
#>     Attrib V10    0.3577774708057246
#>     Attrib V11    -0.2912379538008243
#>     Attrib V12    -0.553734059495076
#>     Attrib V13    0.1680133772649117
#>     Attrib V14    0.44743171523771047
#>     Attrib V15    0.24892244281568368
#>     Attrib V16    -0.08466175777461693
#>     Attrib V17    -0.23265919753116618
#>     Attrib V18    -0.5556069629543502
#>     Attrib V19    -0.23193663281866425
#>     Attrib V2    0.4081225201004913
#>     Attrib V20    -0.17598572708949806
#>     Attrib V21    -0.015544341922491323
#>     Attrib V22    -0.4273579433572145
#>     Attrib V23    -0.7147240062926093
#>     Attrib V24    -0.3414083014461993
#>     Attrib V25    0.08856828340402495
#>     Attrib V26    0.34960377879576365
#>     Attrib V27    0.6855172680321062
#>     Attrib V28    0.3885510485016318
#>     Attrib V29    0.526381262255861
#>     Attrib V3    0.6179120670950953
#>     Attrib V30    0.4281047444767293
#>     Attrib V31    0.7102369479049142
#>     Attrib V32    -0.09696996816599769
#>     Attrib V33    -0.2609907783776394
#>     Attrib V34    -0.4281968154194771
#>     Attrib V35    0.08083625146663258
#>     Attrib V36    0.785337902004376
#>     Attrib V37    1.342930995341307
#>     Attrib V38    0.30285719387901877
#>     Attrib V39    -0.3324815174558278
#>     Attrib V4    -0.3230637086721973
#>     Attrib V40    0.4403605879259333
#>     Attrib V41    0.29582186995097426
#>     Attrib V42    -0.2840925372975927
#>     Attrib V43    -0.7170251445653629
#>     Attrib V44    -0.9368200293096987
#>     Attrib V45    -0.3788852317185672
#>     Attrib V46    -0.4969456560598929
#>     Attrib V47    -0.4727994553042045
#>     Attrib V48    -0.6904256715308288
#>     Attrib V49    -0.5744742595220426
#>     Attrib V5    -0.578491067735033
#>     Attrib V50    1.148149856148798
#>     Attrib V51    -0.3720392063780441
#>     Attrib V52    -0.8999545719596214
#>     Attrib V53    -0.2878050089743097
#>     Attrib V54    -0.5754509881747029
#>     Attrib V55    -0.5308838287639337
#>     Attrib V56    -0.014557208717571157
#>     Attrib V57    0.4551130797628405
#>     Attrib V58    -0.5552038221317898
#>     Attrib V59    -0.2966729279111493
#>     Attrib V6    -0.2539919393230343
#>     Attrib V60    0.2196891431880435
#>     Attrib V7    0.5035800732289042
#>     Attrib V8    0.44033508784595776
#>     Attrib V9    -0.46260142704296314
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.02724359579668774
#>     Attrib V1    0.07930821984393334
#>     Attrib V10    -0.43506271427320414
#>     Attrib V11    -0.21289821145455795
#>     Attrib V12    0.015489347173151912
#>     Attrib V13    -0.17684828994843094
#>     Attrib V14    -0.09182300799879278
#>     Attrib V15    0.010465361781778369
#>     Attrib V16    0.23711544356722022
#>     Attrib V17    0.06828797778880032
#>     Attrib V18    0.11385533705140805
#>     Attrib V19    -0.06615772888328329
#>     Attrib V2    -0.32831623045518266
#>     Attrib V20    0.23782075594400098
#>     Attrib V21    0.10254254255811558
#>     Attrib V22    0.0010397351867624275
#>     Attrib V23    -0.10181735376186109
#>     Attrib V24    -0.0789855039410196
#>     Attrib V25    -0.183996333470086
#>     Attrib V26    -0.546601991969786
#>     Attrib V27    -1.0335643570844266
#>     Attrib V28    -1.0013692519183024
#>     Attrib V29    -0.8432800941408509
#>     Attrib V3    -0.4375655716086911
#>     Attrib V30    -0.5603999007605563
#>     Attrib V31    -0.6218868874362958
#>     Attrib V32    -0.09942754526721857
#>     Attrib V33    0.44853157238472013
#>     Attrib V34    0.6449427343974383
#>     Attrib V35    0.24496505359153914
#>     Attrib V36    -0.2566113955273796
#>     Attrib V37    -0.780813721493098
#>     Attrib V38    -0.17882396103697318
#>     Attrib V39    0.0773864171617487
#>     Attrib V4    0.26120543733659324
#>     Attrib V40    -0.371758097219875
#>     Attrib V41    -0.4474066591483732
#>     Attrib V42    0.014847238595167152
#>     Attrib V43    0.4104715054504393
#>     Attrib V44    0.5153858064006911
#>     Attrib V45    0.22237203564362246
#>     Attrib V46    0.25867968274957065
#>     Attrib V47    0.00484014030878098
#>     Attrib V48    0.3508310645817188
#>     Attrib V49    0.004862720861140345
#>     Attrib V5    0.4231813906618194
#>     Attrib V50    -0.7392407021222488
#>     Attrib V51    0.009738791010264883
#>     Attrib V52    0.2842337826983425
#>     Attrib V53    0.12440121646027871
#>     Attrib V54    0.7509212992825157
#>     Attrib V55    0.4933443837759488
#>     Attrib V56    0.08524378040399377
#>     Attrib V57    -0.17083172815233816
#>     Attrib V58    0.3705194823714926
#>     Attrib V59    0.568251079214369
#>     Attrib V6    0.1500278858847941
#>     Attrib V60    0.31780556631325135
#>     Attrib V7    0.012701296215419232
#>     Attrib V8    -0.2506646227139435
#>     Attrib V9    0.34338647575414505
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.054122123306074923
#>     Attrib V1    -0.019891383144763592
#>     Attrib V10    -0.5237560186527365
#>     Attrib V11    -0.18201113777440958
#>     Attrib V12    0.09500224407670844
#>     Attrib V13    -0.1619533139753404
#>     Attrib V14    -0.1544918409272707
#>     Attrib V15    -0.031198650250294606
#>     Attrib V16    0.12134205955355518
#>     Attrib V17    0.09900376555777658
#>     Attrib V18    0.16399360822573097
#>     Attrib V19    -0.028346290167773753
#>     Attrib V2    -0.5015088765646278
#>     Attrib V20    0.2165013565595669
#>     Attrib V21    0.09765355580428602
#>     Attrib V22    0.10103877546999046
#>     Attrib V23    0.025712472148926427
#>     Attrib V24    -0.11760269088084428
#>     Attrib V25    -0.0974129827573126
#>     Attrib V26    -0.45919941163760575
#>     Attrib V27    -1.1307368495775056
#>     Attrib V28    -1.0684148277944785
#>     Attrib V29    -0.9970272776605179
#>     Attrib V3    -0.48769972835791353
#>     Attrib V30    -0.5614997431130799
#>     Attrib V31    -0.8062543046384724
#>     Attrib V32    -0.2193311433573028
#>     Attrib V33    0.46620072927330286
#>     Attrib V34    0.7244301732764655
#>     Attrib V35    0.3694276270060443
#>     Attrib V36    -0.21740078642184402
#>     Attrib V37    -0.8360736107857473
#>     Attrib V38    -0.14045707431611099
#>     Attrib V39    0.1347743845794448
#>     Attrib V4    0.35569530668188754
#>     Attrib V40    -0.5163090414571984
#>     Attrib V41    -0.5212819568055248
#>     Attrib V42    0.0033914696283752857
#>     Attrib V43    0.49378444504882024
#>     Attrib V44    0.6734772970963321
#>     Attrib V45    0.3903155937494597
#>     Attrib V46    0.3064348445728419
#>     Attrib V47    0.13289228772579303
#>     Attrib V48    0.3707432444337837
#>     Attrib V49    0.011933931811678946
#>     Attrib V5    0.47820299129808996
#>     Attrib V50    -0.8655986410044613
#>     Attrib V51    0.041109960771893536
#>     Attrib V52    0.418916002728813
#>     Attrib V53    0.2026868807861428
#>     Attrib V54    0.8900099523195545
#>     Attrib V55    0.5692485391953048
#>     Attrib V56    0.07210353467652146
#>     Attrib V57    -0.31780580331423236
#>     Attrib V58    0.35676236120007504
#>     Attrib V59    0.6409307057314991
#>     Attrib V6    0.10026460100909157
#>     Attrib V60    0.28633470343965955
#>     Attrib V7    0.004925437826459854
#>     Attrib V8    -0.22076928055153797
#>     Attrib V9    0.4258140553779238
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.11332820052076331
#>     Attrib V1    -0.02488313417153205
#>     Attrib V10    0.08029939720031572
#>     Attrib V11    -0.02484318225692323
#>     Attrib V12    -0.0626102663991548
#>     Attrib V13    -0.012485014312704896
#>     Attrib V14    0.0830938697739332
#>     Attrib V15    0.05151539731968321
#>     Attrib V16    0.009382482771835537
#>     Attrib V17    0.2144947626375691
#>     Attrib V18    0.1825411335143285
#>     Attrib V19    0.10577025405559902
#>     Attrib V2    0.08675472491725629
#>     Attrib V20    -0.0011147706986740177
#>     Attrib V21    0.023874489437421372
#>     Attrib V22    0.003886835744505122
#>     Attrib V23    0.027442263107120595
#>     Attrib V24    -0.08669098821638903
#>     Attrib V25    0.004710492228711494
#>     Attrib V26    -0.03739283723592643
#>     Attrib V27    -0.11779859209770648
#>     Attrib V28    -0.10161041303374825
#>     Attrib V29    -0.047997754312577426
#>     Attrib V3    0.1514955984387246
#>     Attrib V30    0.10319197662411303
#>     Attrib V31    0.26848221013394796
#>     Attrib V32    0.19665665146977893
#>     Attrib V33    0.04208718654745353
#>     Attrib V34    -0.022580972721654147
#>     Attrib V35    0.07603341740961427
#>     Attrib V36    0.2825393500901332
#>     Attrib V37    0.2483344291088132
#>     Attrib V38    0.05245010311388312
#>     Attrib V39    -0.05196015319034892
#>     Attrib V4    0.05301804865985447
#>     Attrib V40    0.23079311379289785
#>     Attrib V41    0.22132174900317025
#>     Attrib V42    0.09476759830972084
#>     Attrib V43    0.042027164111407736
#>     Attrib V44    -0.11280681406935536
#>     Attrib V45    -0.1219754427038889
#>     Attrib V46    -0.09660536748813148
#>     Attrib V47    0.041528388551761046
#>     Attrib V48    -0.04079994130829516
#>     Attrib V49    -0.027842610827778103
#>     Attrib V5    -0.11634587066105957
#>     Attrib V50    0.3430822714147213
#>     Attrib V51    7.959576636871224E-4
#>     Attrib V52    -0.06097234232759555
#>     Attrib V53    -0.10439204550976723
#>     Attrib V54    -0.13950780298013857
#>     Attrib V55    -0.09419552203595324
#>     Attrib V56    0.14079276689938658
#>     Attrib V57    0.2034158210093738
#>     Attrib V58    -0.03994945823393947
#>     Attrib V59    -0.09916832896706958
#>     Attrib V6    0.07663374255908763
#>     Attrib V60    -0.03814365345079525
#>     Attrib V7    0.1548992625839356
#>     Attrib V8    0.23794163571309576
#>     Attrib V9    -0.0065612508035493905
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.6762894251949628
#>     Attrib V1    0.07511137695158375
#>     Attrib V10    1.1266873396907815
#>     Attrib V11    1.5739983212696462
#>     Attrib V12    1.454882605261456
#>     Attrib V13    0.024232892138118245
#>     Attrib V14    -0.6444139115851697
#>     Attrib V15    -0.1092384577987879
#>     Attrib V16    -0.016601490084718836
#>     Attrib V17    -0.607260518273871
#>     Attrib V18    -0.057984250952531964
#>     Attrib V19    0.004574914938701026
#>     Attrib V2    0.36014698472507534
#>     Attrib V20    -0.250390928244618
#>     Attrib V21    0.13788156823144182
#>     Attrib V22    1.4015109983526421
#>     Attrib V23    2.1017357709420876
#>     Attrib V24    0.910168918518958
#>     Attrib V25    -0.6055084528538278
#>     Attrib V26    0.7501507035214008
#>     Attrib V27    1.8172678226477774
#>     Attrib V28    2.5777010978797357
#>     Attrib V29    2.28132072284686
#>     Attrib V3    -0.5335199404633054
#>     Attrib V30    0.6670631193616733
#>     Attrib V31    -0.5336517028067357
#>     Attrib V32    -0.17063156101947904
#>     Attrib V33    -1.052512116444193
#>     Attrib V34    -0.008210908294557529
#>     Attrib V35    0.0827517135972001
#>     Attrib V36    -0.7511069171085263
#>     Attrib V37    -0.25450222796928185
#>     Attrib V38    -0.3943234493681432
#>     Attrib V39    0.838730063588643
#>     Attrib V4    0.24993118946652138
#>     Attrib V40    0.914195471984748
#>     Attrib V41    1.5056133916132428
#>     Attrib V42    0.1729503947322732
#>     Attrib V43    0.35942997770102414
#>     Attrib V44    0.6453587096785728
#>     Attrib V45    0.1811092990817374
#>     Attrib V46    1.0549274143170557
#>     Attrib V47    0.9574127025096157
#>     Attrib V48    0.8404261176071206
#>     Attrib V49    1.5007506578492986
#>     Attrib V5    0.6795508070764409
#>     Attrib V50    -0.6829485551972047
#>     Attrib V51    1.5168618682391672
#>     Attrib V52    1.8552553018804478
#>     Attrib V53    1.0752877409915587
#>     Attrib V54    -0.07969044817993554
#>     Attrib V55    -0.524194861796959
#>     Attrib V56    -0.9011612618422691
#>     Attrib V57    -0.9336625313794517
#>     Attrib V58    0.13870859565897742
#>     Attrib V59    -0.04457268650810557
#>     Attrib V6    0.5363673201375071
#>     Attrib V60    0.1598033405620149
#>     Attrib V7    -1.0367760323126842
#>     Attrib V8    -0.9860483272131355
#>     Attrib V9    0.9960468034122427
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.18790664835956297
#>     Attrib V1    0.05257368458461964
#>     Attrib V10    0.0720268142706744
#>     Attrib V11    -7.429142524570582E-4
#>     Attrib V12    0.03531689585277751
#>     Attrib V13    0.004242494576215674
#>     Attrib V14    0.10083075039476769
#>     Attrib V15    0.016676433783871864
#>     Attrib V16    0.014516961086875418
#>     Attrib V17    0.08103090292130755
#>     Attrib V18    0.021390114827801534
#>     Attrib V19    0.09607074137080326
#>     Attrib V2    0.10634899589373632
#>     Attrib V20    0.03233178005606489
#>     Attrib V21    0.01885471114543791
#>     Attrib V22    -0.02300705999911149
#>     Attrib V23    -0.02983907175400618
#>     Attrib V24    -0.06068986421899677
#>     Attrib V25    -0.016779247797478115
#>     Attrib V26    -0.06777104621580997
#>     Attrib V27    -0.008431759985563225
#>     Attrib V28    -0.018306081965660557
#>     Attrib V29    -0.03927988925641355
#>     Attrib V3    0.08893930401057186
#>     Attrib V30    9.267338248726166E-4
#>     Attrib V31    0.03856216814534419
#>     Attrib V32    -0.004206836035211669
#>     Attrib V33    0.034611989996410464
#>     Attrib V34    0.0069238659473069425
#>     Attrib V35    0.12165949064768912
#>     Attrib V36    0.14880555003087725
#>     Attrib V37    0.16140154538177967
#>     Attrib V38    0.03901907157507229
#>     Attrib V39    0.05276320142930032
#>     Attrib V4    0.11651654856816415
#>     Attrib V40    0.0923296380865991
#>     Attrib V41    0.07719886107505837
#>     Attrib V42    0.08768817392902528
#>     Attrib V43    0.047414545726227025
#>     Attrib V44    0.008787047572497684
#>     Attrib V45    -0.0056389996877102095
#>     Attrib V46    -0.0273540843894844
#>     Attrib V47    0.008775217734982863
#>     Attrib V48    0.05895802569573031
#>     Attrib V49    0.00874476870377218
#>     Attrib V5    0.013570351924496486
#>     Attrib V50    0.1225577769671361
#>     Attrib V51    0.015747668111654758
#>     Attrib V52    0.005507450075753443
#>     Attrib V53    0.009282544083765621
#>     Attrib V54    -0.003401760071236397
#>     Attrib V55    0.017236766220269262
#>     Attrib V56    0.10964499012624608
#>     Attrib V57    0.11005062800156874
#>     Attrib V58    0.0321137037642064
#>     Attrib V59    0.04251346045475026
#>     Attrib V6    0.08957357582060559
#>     Attrib V60    0.12888283810246884
#>     Attrib V7    0.049532401945127494
#>     Attrib V8    0.11173327047146694
#>     Attrib V9    0.037900507808049114
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.7223617213330954
#>     Attrib V1    0.3353002903629051
#>     Attrib V10    0.70302267218795
#>     Attrib V11    0.871967651115464
#>     Attrib V12    0.8675551488555368
#>     Attrib V13    0.11313815661084367
#>     Attrib V14    -0.45665341618929817
#>     Attrib V15    -0.02390567809936896
#>     Attrib V16    -0.07158852881251138
#>     Attrib V17    -0.7420578410845293
#>     Attrib V18    -0.5259688879851572
#>     Attrib V19    -0.5686611253772307
#>     Attrib V2    -0.0303785524019166
#>     Attrib V20    -0.4688712311039115
#>     Attrib V21    -0.08937796247369864
#>     Attrib V22    0.302425638800435
#>     Attrib V23    0.3423863249779883
#>     Attrib V24    0.17350790867603144
#>     Attrib V25    -0.37924995197286837
#>     Attrib V26    0.4321476335699221
#>     Attrib V27    0.8540170977709013
#>     Attrib V28    1.2518211716105634
#>     Attrib V29    1.016862509417528
#>     Attrib V3    -0.5696404590980032
#>     Attrib V30    0.41340650294992975
#>     Attrib V31    -0.4160437388898206
#>     Attrib V32    -0.19866349212251913
#>     Attrib V33    -0.4203097485194319
#>     Attrib V34    0.10573837364033399
#>     Attrib V35    0.2520815716346383
#>     Attrib V36    -0.0336661283038053
#>     Attrib V37    0.11585373717316318
#>     Attrib V38    -0.017236399809009203
#>     Attrib V39    0.2559690602534467
#>     Attrib V4    0.10494243243979486
#>     Attrib V40    0.022763865938171656
#>     Attrib V41    0.3756635632331148
#>     Attrib V42    -0.2722666787294476
#>     Attrib V43    -0.08427782073378585
#>     Attrib V44    0.33381479876937503
#>     Attrib V45    0.24850461860255268
#>     Attrib V46    0.4624018038241037
#>     Attrib V47    0.2640543655769434
#>     Attrib V48    0.4524893709373768
#>     Attrib V49    0.43314902776098163
#>     Attrib V5    0.3652665649443791
#>     Attrib V50    -0.7335177382937997
#>     Attrib V51    0.6116494403938783
#>     Attrib V52    0.6916074990432721
#>     Attrib V53    0.3876720577962588
#>     Attrib V54    0.47607062582989124
#>     Attrib V55    -0.05992665993571635
#>     Attrib V56    -0.6877489443515515
#>     Attrib V57    -0.3573383865417474
#>     Attrib V58    0.1585451376572355
#>     Attrib V59    0.6492505701902926
#>     Attrib V6    0.31260487310795476
#>     Attrib V60    0.5781115326071676
#>     Attrib V7    -0.38592538907869484
#>     Attrib V8    -0.2731169972729236
#>     Attrib V9    0.9362985874780921
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.34709415823158335
#>     Attrib V1    0.32374572708927835
#>     Attrib V10    -0.03151552043306507
#>     Attrib V11    -0.598576924960872
#>     Attrib V12    -1.0444832344920716
#>     Attrib V13    -0.14192535937185127
#>     Attrib V14    0.48348955105343033
#>     Attrib V15    0.08496474188764247
#>     Attrib V16    -0.09759689621739887
#>     Attrib V17    -0.07790061403379911
#>     Attrib V18    -0.30208140777327647
#>     Attrib V19    -0.017620994470015933
#>     Attrib V2    0.19805851639736954
#>     Attrib V20    0.16723040168945183
#>     Attrib V21    0.2531905501349697
#>     Attrib V22    -0.4792517525209869
#>     Attrib V23    -0.9676388853181257
#>     Attrib V24    -0.4542035891075604
#>     Attrib V25    0.14910181560537283
#>     Attrib V26    0.03994226193352483
#>     Attrib V27    0.22812662403537362
#>     Attrib V28    -0.12020252704456699
#>     Attrib V29    -0.00970330186894736
#>     Attrib V3    0.6813608523863747
#>     Attrib V30    0.12616754251370857
#>     Attrib V31    0.18072867099242365
#>     Attrib V32    -0.33348827553948596
#>     Attrib V33    -0.18835912794863824
#>     Attrib V34    -0.36334997408099823
#>     Attrib V35    0.37782436316107815
#>     Attrib V36    1.3849948144688058
#>     Attrib V37    1.4233206925544961
#>     Attrib V38    0.9241199178221421
#>     Attrib V39    -0.07928843292019967
#>     Attrib V4    -0.1325720255559445
#>     Attrib V40    0.08425512102424597
#>     Attrib V41    -0.23216331745143312
#>     Attrib V42    -0.07371205268431032
#>     Attrib V43    -0.2523962366138749
#>     Attrib V44    -0.2215709094754268
#>     Attrib V45    0.07161663988633551
#>     Attrib V46    -0.44440788375495577
#>     Attrib V47    -0.5248522400703154
#>     Attrib V48    -0.7728733680027897
#>     Attrib V49    -0.7074793289606903
#>     Attrib V5    -0.5667081192397907
#>     Attrib V50    1.3138420126143169
#>     Attrib V51    -0.6321826459696431
#>     Attrib V52    -1.1168814642786689
#>     Attrib V53    -0.4253429402163465
#>     Attrib V54    -0.17360593669387617
#>     Attrib V55    -0.3395267887933719
#>     Attrib V56    0.2164679614498767
#>     Attrib V57    0.4997530832277822
#>     Attrib V58    -0.44890614609859225
#>     Attrib V59    -0.11997271260278021
#>     Attrib V6    -0.49228749713318315
#>     Attrib V60    0.2201472913274343
#>     Attrib V7    0.6545317568019152
#>     Attrib V8    0.6613657195912628
#>     Attrib V9    -0.6214687486151457
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.09362591483605448
#>     Attrib V1    -0.035403713116455064
#>     Attrib V10    -0.2816023433176586
#>     Attrib V11    0.02663398487728169
#>     Attrib V12    0.13171472133597098
#>     Attrib V13    -0.12645434824705915
#>     Attrib V14    -0.11648906353898573
#>     Attrib V15    -0.05836562407502977
#>     Attrib V16    0.06727049022167994
#>     Attrib V17    0.02051744914050049
#>     Attrib V18    0.15719956113942535
#>     Attrib V19    -0.023565654673582594
#>     Attrib V2    -0.31459775202145546
#>     Attrib V20    0.19132473746161266
#>     Attrib V21    0.14276645191829365
#>     Attrib V22    0.17478162738766007
#>     Attrib V23    0.050823152338474495
#>     Attrib V24    -0.0010812901334043834
#>     Attrib V25    -0.07489153794480373
#>     Attrib V26    -0.28513514277153384
#>     Attrib V27    -0.5306352011749665
#>     Attrib V28    -0.4275437095110564
#>     Attrib V29    -0.34334490142582413
#>     Attrib V3    -0.3595625668582304
#>     Attrib V30    -0.3105234369430532
#>     Attrib V31    -0.5689962389780926
#>     Attrib V32    -0.14625611569487512
#>     Attrib V33    0.196343472314029
#>     Attrib V34    0.37542415302802895
#>     Attrib V35    0.23456636937147848
#>     Attrib V36    -0.07075880441633613
#>     Attrib V37    -0.42332277387102535
#>     Attrib V38    -0.008915227823483272
#>     Attrib V39    0.16943933071438821
#>     Attrib V4    0.17136482801979946
#>     Attrib V40    -0.27862140117884315
#>     Attrib V41    -0.26111358004286667
#>     Attrib V42    -0.029526289615367306
#>     Attrib V43    0.3614073906709602
#>     Attrib V44    0.49717067693050687
#>     Attrib V45    0.3052695120331326
#>     Attrib V46    0.2176569888559651
#>     Attrib V47    0.09130339798873868
#>     Attrib V48    0.2497960327514642
#>     Attrib V49    0.05780715763019343
#>     Attrib V5    0.30051384493514505
#>     Attrib V50    -0.5854062126405825
#>     Attrib V51    0.13062843477495314
#>     Attrib V52    0.3492178569606321
#>     Attrib V53    0.13474928094573552
#>     Attrib V54    0.5175732565001613
#>     Attrib V55    0.312773052724264
#>     Attrib V56    -0.05647677808268852
#>     Attrib V57    -0.23422330701361727
#>     Attrib V58    0.22211735166613136
#>     Attrib V59    0.4018101770123611
#>     Attrib V6    0.07298070788820599
#>     Attrib V60    0.20715858659105865
#>     Attrib V7    -0.1080425753965475
#>     Attrib V8    -0.1738440650336555
#>     Attrib V9    0.30688600626555257
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.15083996217816126
#>     Attrib V1    0.11205775213640845
#>     Attrib V10    0.12078898441614613
#>     Attrib V11    0.06531157939683656
#>     Attrib V12    0.08895298000310722
#>     Attrib V13    0.07354826725681914
#>     Attrib V14    0.05892936567572846
#>     Attrib V15    0.0547124811123418
#>     Attrib V16    0.03402202569975118
#>     Attrib V17    0.06728903254771729
#>     Attrib V18    0.019716533300232285
#>     Attrib V19    -0.007822224471642316
#>     Attrib V2    0.1037280499522556
#>     Attrib V20    -2.1575724487117313E-4
#>     Attrib V21    0.021871476702897272
#>     Attrib V22    -0.03249007935083507
#>     Attrib V23    -0.04066602539793353
#>     Attrib V24    -0.07830497054587841
#>     Attrib V25    -0.008011461134349406
#>     Attrib V26    -0.003694836627103129
#>     Attrib V27    -0.03499264539008848
#>     Attrib V28    -0.0163790457500337
#>     Attrib V29    -0.09767819489749076
#>     Attrib V3    0.07369890355477735
#>     Attrib V30    -3.339992010871361E-4
#>     Attrib V31    0.03820922511586297
#>     Attrib V32    -0.037420491441531915
#>     Attrib V33    -0.0342142097832108
#>     Attrib V34    0.020871277797116707
#>     Attrib V35    0.10707319293673913
#>     Attrib V36    0.06502060094995911
#>     Attrib V37    0.09416279592818556
#>     Attrib V38    0.03016830298479531
#>     Attrib V39    0.11669675190055952
#>     Attrib V4    0.1476290200087711
#>     Attrib V40    0.07300703661527712
#>     Attrib V41    0.05488310694092721
#>     Attrib V42    0.08765924623330659
#>     Attrib V43    0.04286266296805096
#>     Attrib V44    0.017383710034191282
#>     Attrib V45    0.03911732466163218
#>     Attrib V46    0.037350641219215774
#>     Attrib V47    0.020454673120080678
#>     Attrib V48    0.07631105390453331
#>     Attrib V49    0.011174851725525625
#>     Attrib V5    0.06838268256917772
#>     Attrib V50    0.007958715167171483
#>     Attrib V51    0.05296880132547473
#>     Attrib V52    0.08136418086872929
#>     Attrib V53    0.059300442429274625
#>     Attrib V54    0.07651760579519848
#>     Attrib V55    0.047041832219040826
#>     Attrib V56    0.11800209646535999
#>     Attrib V57    0.02350053968702243
#>     Attrib V58    0.09074774860666628
#>     Attrib V59    0.13631159345639818
#>     Attrib V6    0.05726056019345565
#>     Attrib V60    0.14745690708640133
#>     Attrib V7    -0.0062780775413090175
#>     Attrib V8    0.033388790472378936
#>     Attrib V9    0.08890833696459968
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.01405886332203253
#>     Attrib V1    0.03374266371655955
#>     Attrib V10    -0.3634534595165272
#>     Attrib V11    -0.1284991704626915
#>     Attrib V12    -0.014669684640086098
#>     Attrib V13    -0.09707621940408878
#>     Attrib V14    -0.0696690583925936
#>     Attrib V15    0.02394178009263688
#>     Attrib V16    0.13962177580506335
#>     Attrib V17    0.08780003916372718
#>     Attrib V18    0.15898501153171987
#>     Attrib V19    -0.019382216443498294
#>     Attrib V2    -0.2466584765755307
#>     Attrib V20    0.22057860730837728
#>     Attrib V21    0.057350956877904376
#>     Attrib V22    0.08255246892796494
#>     Attrib V23    0.006844749203245722
#>     Attrib V24    -0.06326888242445095
#>     Attrib V25    -0.16283419071521582
#>     Attrib V26    -0.3781456472198925
#>     Attrib V27    -0.8075869331892435
#>     Attrib V28    -0.756613159221147
#>     Attrib V29    -0.6799962651451282
#>     Attrib V3    -0.3881025332687427
#>     Attrib V30    -0.44277149249032904
#>     Attrib V31    -0.5676678595178336
#>     Attrib V32    -0.15660046376239536
#>     Attrib V33    0.3482336088190922
#>     Attrib V34    0.5212751887990903
#>     Attrib V35    0.2702155709147203
#>     Attrib V36    -0.15190366721234974
#>     Attrib V37    -0.553680223519827
#>     Attrib V38    -0.020620856606821957
#>     Attrib V39    0.09187106635950021
#>     Attrib V4    0.25620485770923845
#>     Attrib V40    -0.32596735313605585
#>     Attrib V41    -0.3590768221160053
#>     Attrib V42    0.0036238575957494574
#>     Attrib V43    0.34903288286629186
#>     Attrib V44    0.5070205122290007
#>     Attrib V45    0.2086881155246779
#>     Attrib V46    0.19393265059356016
#>     Attrib V47    0.036060860725916695
#>     Attrib V48    0.26667162011465634
#>     Attrib V49    0.005755609003479093
#>     Attrib V5    0.32819451686003376
#>     Attrib V50    -0.6128103082758176
#>     Attrib V51    0.04179461429886054
#>     Attrib V52    0.27878209372095425
#>     Attrib V53    0.1726808872501463
#>     Attrib V54    0.6612768066629688
#>     Attrib V55    0.4108762880269191
#>     Attrib V56    -0.01438008577733769
#>     Attrib V57    -0.19682413246417257
#>     Attrib V58    0.23909715468002965
#>     Attrib V59    0.46807577383790105
#>     Attrib V6    0.06598177941251132
#>     Attrib V60    0.25861544164357747
#>     Attrib V7    -0.021062871339892066
#>     Attrib V8    -0.18251013687372628
#>     Attrib V9    0.3162402345651159
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.019613708647497036
#>     Attrib V1    0.08446523238664184
#>     Attrib V10    -0.44537016973697563
#>     Attrib V11    -0.1716134866777985
#>     Attrib V12    0.001929244760509926
#>     Attrib V13    -0.17950212807227628
#>     Attrib V14    -0.0211649773632395
#>     Attrib V15    0.052230966646684904
#>     Attrib V16    0.18772795174391663
#>     Attrib V17    0.05122436142780056
#>     Attrib V18    0.20246854855346116
#>     Attrib V19    -0.015127762918739105
#>     Attrib V2    -0.2833014023182963
#>     Attrib V20    0.25036061044718805
#>     Attrib V21    0.16812576023594647
#>     Attrib V22    0.05518717219233537
#>     Attrib V23    -0.004079625401880685
#>     Attrib V24    -0.14979923245783863
#>     Attrib V25    -0.28633803877288005
#>     Attrib V26    -0.46564078015362487
#>     Attrib V27    -0.7442956810958773
#>     Attrib V28    -0.5661435540376283
#>     Attrib V29    -0.4682711686473041
#>     Attrib V3    -0.3027178782528675
#>     Attrib V30    -0.32052256340131235
#>     Attrib V31    -0.6451976293584275
#>     Attrib V32    -0.1781303301380615
#>     Attrib V33    0.30239657430178224
#>     Attrib V34    0.46246137556549904
#>     Attrib V35    0.21919006625390078
#>     Attrib V36    -0.0688281687230151
#>     Attrib V37    -0.5131234110340429
#>     Attrib V38    -0.036977021309881904
#>     Attrib V39    0.18347241193599625
#>     Attrib V4    0.21985963742067202
#>     Attrib V40    -0.33073960113053874
#>     Attrib V41    -0.35719713739087533
#>     Attrib V42    0.058573857430877244
#>     Attrib V43    0.29488850116255383
#>     Attrib V44    0.5250476795793944
#>     Attrib V45    0.2655187472006168
#>     Attrib V46    0.19402451611042784
#>     Attrib V47    0.004927916099694173
#>     Attrib V48    0.17935854007648658
#>     Attrib V49    0.04102961245220116
#>     Attrib V5    0.3441822575193814
#>     Attrib V50    -0.6133893248066267
#>     Attrib V51    0.054497004575623405
#>     Attrib V52    0.29775323302399354
#>     Attrib V53    0.17198008278964086
#>     Attrib V54    0.5264297437128987
#>     Attrib V55    0.3368534939256434
#>     Attrib V56    0.020424400644612335
#>     Attrib V57    -0.1827413618196574
#>     Attrib V58    0.31283747962346425
#>     Attrib V59    0.47428310807841917
#>     Attrib V6    0.07304379719434277
#>     Attrib V60    0.2349079386364821
#>     Attrib V7    -0.07678224584351195
#>     Attrib V8    -0.1919420708696521
#>     Attrib V9    0.2491664755474609
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
#>  0.2463768 
```
