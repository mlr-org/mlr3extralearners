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
#>     Threshold    -0.3693138447229647
#>     Node 2    2.6554946565275466
#>     Node 3    1.438740722114812
#>     Node 4    0.5179852022566491
#>     Node 5    -2.7212110528918245
#>     Node 6    1.2573177726024978
#>     Node 7    2.8683236571319592
#>     Node 8    0.11331159628870678
#>     Node 9    3.4408642314556026
#>     Node 10    -0.8265484212226071
#>     Node 11    1.1014455715248486
#>     Node 12    1.401567531197491
#>     Node 13    0.554930954318729
#>     Node 14    1.3175881795308342
#>     Node 15    -2.7104992743803185
#>     Node 16    0.776852754541077
#>     Node 17    -0.16057829754340128
#>     Node 18    0.23628264049176356
#>     Node 19    1.7658653696704951
#>     Node 20    1.871057521958757
#>     Node 21    -2.8634501018564653
#>     Node 22    1.1980251373135338
#>     Node 23    2.2739358746598763
#>     Node 24    -0.5871553289598864
#>     Node 25    3.159878862967936
#>     Node 26    -0.17242023874937806
#>     Node 27    2.0079395043230313
#>     Node 28    -3.4573832348123688
#>     Node 29    1.2118176704301835
#>     Node 30    0.5386960717603363
#>     Node 31    1.2377067800530324
#>     Node 32    0.7583938624453802
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.4231429888463804
#>     Node 2    -2.673710571172445
#>     Node 3    -1.415422231681896
#>     Node 4    -0.48290456848090385
#>     Node 5    2.719645088459028
#>     Node 6    -1.2277933965436323
#>     Node 7    -2.87328166674079
#>     Node 8    -0.1490059693992167
#>     Node 9    -3.4450885964622353
#>     Node 10    0.7717257526427937
#>     Node 11    -1.0725487413964157
#>     Node 12    -1.4716559138571963
#>     Node 13    -0.5038380286523118
#>     Node 14    -1.2526225362980032
#>     Node 15    2.685879552731718
#>     Node 16    -0.7954432317622842
#>     Node 17    0.19396017156826886
#>     Node 18    -0.19981441775210068
#>     Node 19    -1.767947149494241
#>     Node 20    -1.8673751982717566
#>     Node 21    2.9032208759384734
#>     Node 22    -1.2519876527688982
#>     Node 23    -2.291093955102712
#>     Node 24    0.5810623836401313
#>     Node 25    -3.164789645937821
#>     Node 26    0.08900063512003288
#>     Node 27    -2.061999333291792
#>     Node 28    3.4236110380025475
#>     Node 29    -1.2416819298174226
#>     Node 30    -0.4681357886225064
#>     Node 31    -1.1777545884516059
#>     Node 32    -0.7767578939620443
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.2314791624272208
#>     Attrib V1    0.5882384994330242
#>     Attrib V10    0.55719946101135
#>     Attrib V11    1.0070583668348985
#>     Attrib V12    0.9738983227250555
#>     Attrib V13    -0.2766609005283228
#>     Attrib V14    -0.5691166789177546
#>     Attrib V15    -0.26628102117545793
#>     Attrib V16    0.081325676922257
#>     Attrib V17    0.4591523174660834
#>     Attrib V18    -0.37861749449469634
#>     Attrib V19    0.00910076803492414
#>     Attrib V2    -0.4254106059565864
#>     Attrib V20    1.17701968433102
#>     Attrib V21    1.3742562821349913
#>     Attrib V22    0.4065431934906722
#>     Attrib V23    0.6542049506821442
#>     Attrib V24    1.0450074853255897
#>     Attrib V25    -0.2083656971004671
#>     Attrib V26    -0.734257895523606
#>     Attrib V27    -0.08666036835989126
#>     Attrib V28    0.3465602893166088
#>     Attrib V29    -0.2230499275584884
#>     Attrib V3    0.12244586651011835
#>     Attrib V30    0.2555689401481483
#>     Attrib V31    -1.7731773950720415
#>     Attrib V32    -0.036834116109679196
#>     Attrib V33    0.2745889220639604
#>     Attrib V34    0.014568656841617057
#>     Attrib V35    0.17607689024580167
#>     Attrib V36    -0.7016165315144177
#>     Attrib V37    -0.30203585344182826
#>     Attrib V38    0.6127977367986763
#>     Attrib V39    0.6519873590825607
#>     Attrib V4    0.6523219892686026
#>     Attrib V40    -0.3685539051831787
#>     Attrib V41    0.07099965955838632
#>     Attrib V42    0.3346753214788908
#>     Attrib V43    0.4589931808067017
#>     Attrib V44    0.4691702332542597
#>     Attrib V45    0.2714282797873295
#>     Attrib V46    0.4126177796349602
#>     Attrib V47    -0.16236296545982712
#>     Attrib V48    -0.3412396157274935
#>     Attrib V49    0.4124516774950378
#>     Attrib V5    0.19955725364968935
#>     Attrib V50    -1.2033309793862097
#>     Attrib V51    0.0942863675823575
#>     Attrib V52    0.0653007800917017
#>     Attrib V53    0.2903248822485267
#>     Attrib V54    0.11673135997932178
#>     Attrib V55    -0.9487594025898932
#>     Attrib V56    0.5507004123484628
#>     Attrib V57    -0.2284648980357318
#>     Attrib V58    0.32558422895604305
#>     Attrib V59    0.7135799098286701
#>     Attrib V6    -0.5158831529781036
#>     Attrib V60    -0.07120204679276246
#>     Attrib V7    -0.1696374745128247
#>     Attrib V8    0.176989253114368
#>     Attrib V9    0.5038000776613956
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.12048768638210873
#>     Attrib V1    0.3703511758060967
#>     Attrib V10    0.18950207966569302
#>     Attrib V11    0.2873963065084198
#>     Attrib V12    0.43087467030059456
#>     Attrib V13    -0.13659592507114818
#>     Attrib V14    -0.16413328672728822
#>     Attrib V15    0.05046104434390274
#>     Attrib V16    0.08951469919950952
#>     Attrib V17    0.18577705796500846
#>     Attrib V18    -0.29199134745066585
#>     Attrib V19    0.026006265766588012
#>     Attrib V2    -0.16556929488549293
#>     Attrib V20    0.566255575336254
#>     Attrib V21    0.5886862951309633
#>     Attrib V22    0.10777390694107263
#>     Attrib V23    0.1598601725134751
#>     Attrib V24    0.426093676741425
#>     Attrib V25    -0.17936214676261755
#>     Attrib V26    -0.637021099853223
#>     Attrib V27    -0.32510981024538366
#>     Attrib V28    -0.11664449410105941
#>     Attrib V29    -0.4242582308759854
#>     Attrib V3    0.05823583165062378
#>     Attrib V30    -0.013027342879677918
#>     Attrib V31    -0.8654737690761966
#>     Attrib V32    0.016454220492797142
#>     Attrib V33    0.21522460530665516
#>     Attrib V34    -0.06488885894724773
#>     Attrib V35    -0.06009717496837179
#>     Attrib V36    -0.5143122393751673
#>     Attrib V37    -0.3084183119768328
#>     Attrib V38    0.16442249951539362
#>     Attrib V39    0.30598184732713135
#>     Attrib V4    0.36422159804806115
#>     Attrib V40    -0.190105315348566
#>     Attrib V41    0.0015271111104264265
#>     Attrib V42    0.11578323000253271
#>     Attrib V43    0.1185427005386616
#>     Attrib V44    0.1200455992332969
#>     Attrib V45    -0.01138624043631762
#>     Attrib V46    0.09060148443267675
#>     Attrib V47    -0.08078625683689278
#>     Attrib V48    -0.0809114720225783
#>     Attrib V49    0.17818425973537277
#>     Attrib V5    0.10844814867858606
#>     Attrib V50    -0.5638601859107071
#>     Attrib V51    0.007145241804229752
#>     Attrib V52    -0.09620552701839961
#>     Attrib V53    0.05051677204545837
#>     Attrib V54    0.31935635671935586
#>     Attrib V55    -0.43339294612017176
#>     Attrib V56    0.508871324437085
#>     Attrib V57    0.1638484192135233
#>     Attrib V58    0.2613023962060201
#>     Attrib V59    0.6200141487929569
#>     Attrib V6    -0.2376203708742265
#>     Attrib V60    0.26047668967038967
#>     Attrib V7    -0.02472557614428509
#>     Attrib V8    0.06791383247071392
#>     Attrib V9    0.16580787963378632
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.050424913983101595
#>     Attrib V1    0.10324098589775525
#>     Attrib V10    0.11067144298792346
#>     Attrib V11    0.1401328943781381
#>     Attrib V12    0.2212078287032108
#>     Attrib V13    0.04073360948534695
#>     Attrib V14    0.024853860512155834
#>     Attrib V15    -0.006000459136830755
#>     Attrib V16    -0.05428577570254121
#>     Attrib V17    0.01508548121923234
#>     Attrib V18    -0.11897240859679364
#>     Attrib V19    -0.060468147263247514
#>     Attrib V2    -0.06797883823674115
#>     Attrib V20    0.07469272628968068
#>     Attrib V21    0.10601316265705359
#>     Attrib V22    -0.12432671504511829
#>     Attrib V23    -0.03503559971457511
#>     Attrib V24    0.06906324976786794
#>     Attrib V25    -0.08852350059424652
#>     Attrib V26    -0.17054457416171862
#>     Attrib V27    -0.04073453970045143
#>     Attrib V28    0.10325176334305343
#>     Attrib V29    -0.0014487318499596781
#>     Attrib V3    0.07095379762515919
#>     Attrib V30    0.028794631508783097
#>     Attrib V31    -0.17405579868729165
#>     Attrib V32    0.10341177522861897
#>     Attrib V33    0.13086446112142716
#>     Attrib V34    0.033252629679361524
#>     Attrib V35    0.052949604804003444
#>     Attrib V36    -0.1339099026102003
#>     Attrib V37    -0.020564489124581687
#>     Attrib V38    0.03824112320496803
#>     Attrib V39    0.15915596037732863
#>     Attrib V4    0.14946684679967215
#>     Attrib V40    0.00883983077271677
#>     Attrib V41    0.02838605448198283
#>     Attrib V42    0.007511988626416755
#>     Attrib V43    0.02595848350229987
#>     Attrib V44    0.09570748196318628
#>     Attrib V45    0.13802380690576724
#>     Attrib V46    0.0523966813514463
#>     Attrib V47    -0.015293855130925333
#>     Attrib V48    0.11777599541551541
#>     Attrib V49    0.18282524072467068
#>     Attrib V5    0.12725729401483724
#>     Attrib V50    -0.14354092003316793
#>     Attrib V51    -0.008531212244596685
#>     Attrib V52    0.008635233424020538
#>     Attrib V53    0.06513928964679364
#>     Attrib V54    0.008861486635439515
#>     Attrib V55    -0.1549237060543684
#>     Attrib V56    0.11282404673891912
#>     Attrib V57    0.1083047435739313
#>     Attrib V58    0.03465058301251581
#>     Attrib V59    0.18396975540389685
#>     Attrib V6    -0.07150681920958793
#>     Attrib V60    0.15641866816559094
#>     Attrib V7    -0.040431117515621944
#>     Attrib V8    -0.08941038324700105
#>     Attrib V9    0.1330080980920035
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.39115287306302465
#>     Attrib V1    -0.5543856502819337
#>     Attrib V10    -0.5743191955230555
#>     Attrib V11    -1.1114306988268994
#>     Attrib V12    -1.1482613615712698
#>     Attrib V13    0.12055662440684768
#>     Attrib V14    0.6414342251205373
#>     Attrib V15    0.35990663452059096
#>     Attrib V16    -0.007723717281354581
#>     Attrib V17    -0.3046617570425693
#>     Attrib V18    0.6042618234724515
#>     Attrib V19    0.11841636583634176
#>     Attrib V2    0.4362456598228312
#>     Attrib V20    -1.0782813642426188
#>     Attrib V21    -1.1526653982210961
#>     Attrib V22    -0.22259650794733596
#>     Attrib V23    -0.5979465536253242
#>     Attrib V24    -1.1315609493355276
#>     Attrib V25    0.2845693343621199
#>     Attrib V26    0.7957836059180173
#>     Attrib V27    0.1100786060138461
#>     Attrib V28    -0.4190984845922964
#>     Attrib V29    0.0771812128414863
#>     Attrib V3    -0.0938996289890088
#>     Attrib V30    -0.36074173988919567
#>     Attrib V31    1.5592420419037918
#>     Attrib V32    -0.036024799945715745
#>     Attrib V33    -0.2660878568024256
#>     Attrib V34    0.03775216272341881
#>     Attrib V35    -0.04211930148003234
#>     Attrib V36    1.0318995067650039
#>     Attrib V37    0.4334788557100758
#>     Attrib V38    -0.4816451063665582
#>     Attrib V39    -0.6621633519905623
#>     Attrib V4    -0.6324587563019017
#>     Attrib V40    0.3731447898349334
#>     Attrib V41    -0.12843759323617585
#>     Attrib V42    -0.2529292076372942
#>     Attrib V43    -0.3642600274294344
#>     Attrib V44    -0.2981070622024283
#>     Attrib V45    -0.2872210631120294
#>     Attrib V46    -0.47703369454731803
#>     Attrib V47    0.0843988255726611
#>     Attrib V48    0.282091988559177
#>     Attrib V49    -0.4117566981761854
#>     Attrib V5    -0.13738717540001227
#>     Attrib V50    1.3826819101405103
#>     Attrib V51    -0.26611252090516496
#>     Attrib V52    -0.23418055427977175
#>     Attrib V53    -0.3968136809252726
#>     Attrib V54    -0.06687218667391148
#>     Attrib V55    0.9457759340790178
#>     Attrib V56    -0.5385805468986137
#>     Attrib V57    0.3430592370881932
#>     Attrib V58    -0.3697938359164623
#>     Attrib V59    -0.4555899192515489
#>     Attrib V6    0.4079148026836624
#>     Attrib V60    0.38092139163562816
#>     Attrib V7    0.28180691737811137
#>     Attrib V8    -0.19916450019231383
#>     Attrib V9    -0.6388434464016107
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.15791307345695849
#>     Attrib V1    0.34181838082763005
#>     Attrib V10    0.12198533218751481
#>     Attrib V11    0.2587468741964472
#>     Attrib V12    0.41429855858825315
#>     Attrib V13    -0.1716665123521514
#>     Attrib V14    -0.16561888800085062
#>     Attrib V15    -0.02316973476743823
#>     Attrib V16    0.14329979383873553
#>     Attrib V17    0.17515638776738293
#>     Attrib V18    -0.140674876426767
#>     Attrib V19    0.024869823769636035
#>     Attrib V2    -0.17912789981521957
#>     Attrib V20    0.5131990767124663
#>     Attrib V21    0.5816034964245737
#>     Attrib V22    0.07621416527569261
#>     Attrib V23    0.1725001226646553
#>     Attrib V24    0.44308113358383633
#>     Attrib V25    -0.10939724150865628
#>     Attrib V26    -0.503311136234054
#>     Attrib V27    -0.1871245613269036
#>     Attrib V28    -0.10873316132705124
#>     Attrib V29    -0.34175242336720935
#>     Attrib V3    0.03856168670267585
#>     Attrib V30    -0.05795631520091812
#>     Attrib V31    -0.7794461610594122
#>     Attrib V32    0.03063481898166339
#>     Attrib V33    0.19770184117328446
#>     Attrib V34    -0.012206000556228716
#>     Attrib V35    0.019304917352082892
#>     Attrib V36    -0.4242433743924762
#>     Attrib V37    -0.21792318138854322
#>     Attrib V38    0.15005839683937536
#>     Attrib V39    0.2396320282614441
#>     Attrib V4    0.3730291635035736
#>     Attrib V40    -0.19452259077603248
#>     Attrib V41    0.0865995972735535
#>     Attrib V42    0.12071622870702167
#>     Attrib V43    0.1159986380924493
#>     Attrib V44    0.08539927101326517
#>     Attrib V45    0.019934602158082106
#>     Attrib V46    0.11094935819972185
#>     Attrib V47    -0.11173883218743899
#>     Attrib V48    -0.05931711755583026
#>     Attrib V49    0.187499236724531
#>     Attrib V5    0.11859625787703486
#>     Attrib V50    -0.46083254151850256
#>     Attrib V51    0.003915050185686145
#>     Attrib V52    -0.12422022035032822
#>     Attrib V53    0.1385429396670327
#>     Attrib V54    0.19077212177772607
#>     Attrib V55    -0.4825902511786243
#>     Attrib V56    0.3764272124793811
#>     Attrib V57    0.16062632765782697
#>     Attrib V58    0.19421199005463713
#>     Attrib V59    0.568510602894807
#>     Attrib V6    -0.10896102890834213
#>     Attrib V60    0.3166877720127074
#>     Attrib V7    0.01766462333197291
#>     Attrib V8    0.01796386572731389
#>     Attrib V9    0.2066134016568954
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.7063851503052542
#>     Attrib V1    0.5488917750615533
#>     Attrib V10    0.7587302932732689
#>     Attrib V11    1.1327187573629913
#>     Attrib V12    1.4399188324538124
#>     Attrib V13    0.42557232748635915
#>     Attrib V14    -0.10881748962933527
#>     Attrib V15    -0.7296597107262852
#>     Attrib V16    -0.6952032495298329
#>     Attrib V17    -0.32213554156387847
#>     Attrib V18    -0.5440372452153327
#>     Attrib V19    -0.4449155404555253
#>     Attrib V2    -0.26581705189850835
#>     Attrib V20    -0.26104931313729385
#>     Attrib V21    0.11189713247486527
#>     Attrib V22    -0.20445922426506663
#>     Attrib V23    0.41730691046128215
#>     Attrib V24    0.8477764770579681
#>     Attrib V25    0.1553457403361263
#>     Attrib V26    -0.013930492635813734
#>     Attrib V27    0.8029227038236934
#>     Attrib V28    1.4716250701148996
#>     Attrib V29    0.7414675999988161
#>     Attrib V3    0.10214439749875907
#>     Attrib V30    -0.041500863536199785
#>     Attrib V31    -0.6613202607350113
#>     Attrib V32    0.4512208832615927
#>     Attrib V33    0.031761739655310546
#>     Attrib V34    -0.12717392047148549
#>     Attrib V35    0.39517334157454487
#>     Attrib V36    -0.775576444175426
#>     Attrib V37    -0.11905648596095074
#>     Attrib V38    -0.14887095935492045
#>     Attrib V39    0.5088227881312024
#>     Attrib V4    0.40919620493168307
#>     Attrib V40    0.22600122930578387
#>     Attrib V41    0.79867292453184
#>     Attrib V42    -0.0915356316388682
#>     Attrib V43    -0.06691098597210211
#>     Attrib V44    -0.04449133849637257
#>     Attrib V45    0.22035125842439443
#>     Attrib V46    0.5987208986649503
#>     Attrib V47    0.37837988772468323
#>     Attrib V48    0.5999589810980829
#>     Attrib V49    0.6462862454688245
#>     Attrib V5    0.7003515517992069
#>     Attrib V50    -0.86776522414227
#>     Attrib V51    0.7001982143533518
#>     Attrib V52    0.4972741047603585
#>     Attrib V53    0.36757670466089715
#>     Attrib V54    -0.3904770956641519
#>     Attrib V55    -0.6897313780308474
#>     Attrib V56    -0.6531705963625123
#>     Attrib V57    -0.25291435145384544
#>     Attrib V58    0.13226641896482563
#>     Attrib V59    0.25043200514934416
#>     Attrib V6    0.6436058476262289
#>     Attrib V60    0.6389064961789915
#>     Attrib V7    -0.10186232852884466
#>     Attrib V8    -0.6567918999066512
#>     Attrib V9    0.7374069230837349
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.1300123641260677
#>     Attrib V1    0.034124412314602184
#>     Attrib V10    0.03523489593512257
#>     Attrib V11    0.009599493034054593
#>     Attrib V12    -0.026901965291169703
#>     Attrib V13    0.002087686885161148
#>     Attrib V14    -0.018218604940928737
#>     Attrib V15    0.010966903070233788
#>     Attrib V16    0.06576614632646148
#>     Attrib V17    0.03806370535230402
#>     Attrib V18    -0.004666591223585316
#>     Attrib V19    0.029478222922031196
#>     Attrib V2    0.0751629210613057
#>     Attrib V20    -0.052867609589123864
#>     Attrib V21    -0.01074762479233791
#>     Attrib V22    -0.03492710931538201
#>     Attrib V23    -0.0062189866306134834
#>     Attrib V24    0.018190247145522483
#>     Attrib V25    -0.028685185507512517
#>     Attrib V26    -0.041057249823003135
#>     Attrib V27    -0.056651323551555485
#>     Attrib V28    -0.038389973670162884
#>     Attrib V29    -0.03622023710553548
#>     Attrib V3    0.10117605194720435
#>     Attrib V30    0.0352391252364591
#>     Attrib V31    0.036657748812686256
#>     Attrib V32    0.08582472351457571
#>     Attrib V33    0.10184370254821909
#>     Attrib V34    0.05624245962269541
#>     Attrib V35    0.07844832537646944
#>     Attrib V36    0.12810584942687409
#>     Attrib V37    0.09084925246140689
#>     Attrib V38    0.11054705872365274
#>     Attrib V39    0.07275805527239658
#>     Attrib V4    0.16170477082179183
#>     Attrib V40    0.0909938332543737
#>     Attrib V41    0.09922534508527357
#>     Attrib V42    -0.0021108384359473874
#>     Attrib V43    0.04482048815835809
#>     Attrib V44    0.1120907436227324
#>     Attrib V45    0.07297042176781965
#>     Attrib V46    0.084521894913886
#>     Attrib V47    0.07755351642028892
#>     Attrib V48    0.1145484272736986
#>     Attrib V49    0.1264436496780042
#>     Attrib V5    0.07777775032245958
#>     Attrib V50    0.04805630912120552
#>     Attrib V51    -0.048833719026925834
#>     Attrib V52    0.0063075799628812745
#>     Attrib V53    0.09873455284729632
#>     Attrib V54    0.052742880143999
#>     Attrib V55    -0.011866467830912532
#>     Attrib V56    0.039958042222918586
#>     Attrib V57    0.17956384969935824
#>     Attrib V58    0.060627159399027644
#>     Attrib V59    0.14314269993082865
#>     Attrib V6    -0.0022113790604073903
#>     Attrib V60    0.16911876681950488
#>     Attrib V7    0.03394441870857494
#>     Attrib V8    0.005781052948767473
#>     Attrib V9    0.05110035549224961
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.7018665886997995
#>     Attrib V1    0.39274140342399827
#>     Attrib V10    0.8469614053426994
#>     Attrib V11    1.2696157913923651
#>     Attrib V12    1.5962410749233005
#>     Attrib V13    0.49685413253555855
#>     Attrib V14    -0.2469620888733396
#>     Attrib V15    -0.9224420901406151
#>     Attrib V16    -0.7444528267197408
#>     Attrib V17    -0.08692184381377818
#>     Attrib V18    -0.22736693111362288
#>     Attrib V19    -0.11377661613005906
#>     Attrib V2    -0.35302939655090665
#>     Attrib V20    -0.014641743578784668
#>     Attrib V21    0.4052228619677778
#>     Attrib V22    0.06292987620395138
#>     Attrib V23    0.8612388619049836
#>     Attrib V24    1.3334699746417906
#>     Attrib V25    0.58295377219926
#>     Attrib V26    0.27833230991841496
#>     Attrib V27    0.9402753607165845
#>     Attrib V28    1.65371773567203
#>     Attrib V29    0.9054462182632802
#>     Attrib V3    0.07134056165039881
#>     Attrib V30    0.10148388535768413
#>     Attrib V31    -0.7520490409745079
#>     Attrib V32    0.42223894065151546
#>     Attrib V33    -0.14708026864369958
#>     Attrib V34    -0.16696672073736377
#>     Attrib V35    0.43190499214694267
#>     Attrib V36    -0.9335102836597375
#>     Attrib V37    -0.32589653918849676
#>     Attrib V38    -0.2649263130905188
#>     Attrib V39    0.7885308126954356
#>     Attrib V4    0.3944759314271275
#>     Attrib V40    0.350592183310295
#>     Attrib V41    0.9281640121706748
#>     Attrib V42    0.010736705267384943
#>     Attrib V43    0.09111693036411445
#>     Attrib V44    0.09906060745919132
#>     Attrib V45    0.2459848212294347
#>     Attrib V46    0.6492134721096419
#>     Attrib V47    0.5189998276657365
#>     Attrib V48    0.746224064572108
#>     Attrib V49    0.9305415904946305
#>     Attrib V5    0.7989998120100071
#>     Attrib V50    -0.8797558196767692
#>     Attrib V51    1.090654628964428
#>     Attrib V52    0.8388634330697466
#>     Attrib V53    0.8636706525216807
#>     Attrib V54    -0.33767523262881
#>     Attrib V55    -0.675692315302608
#>     Attrib V56    -0.832742888640362
#>     Attrib V57    -0.49672909862969955
#>     Attrib V58    0.11655247579573455
#>     Attrib V59    -0.04972491527676792
#>     Attrib V6    0.6734059716877212
#>     Attrib V60    0.13067136704041574
#>     Attrib V7    -0.20269171756390142
#>     Attrib V8    -0.47723500734515883
#>     Attrib V9    0.8625472165195174
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.26668871288461504
#>     Attrib V1    -0.11574186389489076
#>     Attrib V10    -0.24196843754486083
#>     Attrib V11    -0.3811207444260667
#>     Attrib V12    -0.4454904854088998
#>     Attrib V13    -0.035907162060354554
#>     Attrib V14    0.15282712613895205
#>     Attrib V15    0.061330748643997506
#>     Attrib V16    0.04327414757375868
#>     Attrib V17    -0.07975951581578088
#>     Attrib V18    0.25740943640911557
#>     Attrib V19    0.1457845948988932
#>     Attrib V2    0.14195824795693182
#>     Attrib V20    -0.11543778302472323
#>     Attrib V21    -0.08377332420238781
#>     Attrib V22    0.18738329341650528
#>     Attrib V23    0.04679111714967821
#>     Attrib V24    -0.2655595906317516
#>     Attrib V25    0.11132441494956105
#>     Attrib V26    0.3291606822089168
#>     Attrib V27    0.043456339575494655
#>     Attrib V28    -0.18229062577369232
#>     Attrib V29    -0.07993228882130786
#>     Attrib V3    0.009200428927578866
#>     Attrib V30    -0.06346410574018081
#>     Attrib V31    0.3837113415136524
#>     Attrib V32    -0.16290259228051784
#>     Attrib V33    -0.05554787985279122
#>     Attrib V34    0.06804944207720262
#>     Attrib V35    0.03551608283225499
#>     Attrib V36    0.41443091555154243
#>     Attrib V37    0.15455511214302722
#>     Attrib V38    -0.03354527704829426
#>     Attrib V39    -0.2283047907013175
#>     Attrib V4    -0.16978122972854373
#>     Attrib V40    0.13914529389461464
#>     Attrib V41    -0.03293002506278256
#>     Attrib V42    -4.278611239342258E-4
#>     Attrib V43    -0.076870416468644
#>     Attrib V44    -0.05389615509849229
#>     Attrib V45    -0.07260071496053581
#>     Attrib V46    -0.185539065246072
#>     Attrib V47    0.015418383645325192
#>     Attrib V48    -0.07420162043268501
#>     Attrib V49    -0.17142948099901853
#>     Attrib V5    -0.09354154655207023
#>     Attrib V50    0.5377924207561433
#>     Attrib V51    -0.10245798577925597
#>     Attrib V52    -0.09013134495696574
#>     Attrib V53    -0.02391520037146284
#>     Attrib V54    -0.004010607966310432
#>     Attrib V55    0.2630615839087696
#>     Attrib V56    -0.06712026975872087
#>     Attrib V57    0.10195784305712788
#>     Attrib V58    -0.06678585099739134
#>     Attrib V59    -0.1327862619034457
#>     Attrib V6    0.04978172292342459
#>     Attrib V60    -0.016421972375893972
#>     Attrib V7    0.07589042580343418
#>     Attrib V8    0.027995854227823764
#>     Attrib V9    -0.2632707493211745
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.24856438666488098
#>     Attrib V1    0.2002737112894394
#>     Attrib V10    0.2843520390200002
#>     Attrib V11    0.40911968867347326
#>     Attrib V12    0.5779668814893746
#>     Attrib V13    -0.051308041982619346
#>     Attrib V14    -0.16138449471067084
#>     Attrib V15    -0.2191389078289637
#>     Attrib V16    -0.1379115112579576
#>     Attrib V17    0.032875891594887255
#>     Attrib V18    -0.2835462028694503
#>     Attrib V19    -0.20258915809369565
#>     Attrib V2    -0.24320698289263207
#>     Attrib V20    0.16819998764134028
#>     Attrib V21    0.15857702594639717
#>     Attrib V22    -0.19554199719265655
#>     Attrib V23    0.039546250590296164
#>     Attrib V24    0.3028618045040626
#>     Attrib V25    -0.10430586532232033
#>     Attrib V26    -0.34988562485522656
#>     Attrib V27    0.10830101775262702
#>     Attrib V28    0.364995883459396
#>     Attrib V29    0.0645361114147073
#>     Attrib V3    -0.072387473594138
#>     Attrib V30    0.16104943653639753
#>     Attrib V31    -0.43408485897883875
#>     Attrib V32    0.2462210292692368
#>     Attrib V33    0.19108475999895821
#>     Attrib V34    0.02648795370447358
#>     Attrib V35    0.11380158962002908
#>     Attrib V36    -0.3869980746773131
#>     Attrib V37    -0.11581449767733405
#>     Attrib V38    0.11956651586187052
#>     Attrib V39    0.275350548803728
#>     Attrib V4    0.2254536402617161
#>     Attrib V40    -0.05059667384940087
#>     Attrib V41    0.1191741371528491
#>     Attrib V42    -0.05952628529620276
#>     Attrib V43    0.04541475951121794
#>     Attrib V44    0.10519953548928464
#>     Attrib V45    0.1669882661790671
#>     Attrib V46    0.1658715794099869
#>     Attrib V47    0.018702592699479312
#>     Attrib V48    0.1940963828562886
#>     Attrib V49    0.28127775062218824
#>     Attrib V5    0.16272470156083402
#>     Attrib V50    -0.5296385012171428
#>     Attrib V51    0.09079336907570985
#>     Attrib V52    0.05802020243031717
#>     Attrib V53    0.06470513441951374
#>     Attrib V54    -0.00448865745522858
#>     Attrib V55    -0.46008009421853013
#>     Attrib V56    0.037506883522127485
#>     Attrib V57    -0.04062548491335453
#>     Attrib V58    0.04420321930723712
#>     Attrib V59    0.1795751042634776
#>     Attrib V6    -0.03256207005012487
#>     Attrib V60    0.1715708274540065
#>     Attrib V7    -0.19149046603893166
#>     Attrib V8    -0.1848819091562899
#>     Attrib V9    0.2764275611430098
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.30025422670548435
#>     Attrib V1    0.31787039893526825
#>     Attrib V10    0.22287521496968865
#>     Attrib V11    0.4809202795086581
#>     Attrib V12    0.5294696112226523
#>     Attrib V13    -0.13724897833449645
#>     Attrib V14    -0.22719365062190766
#>     Attrib V15    -0.14701585784930227
#>     Attrib V16    0.040194582387609486
#>     Attrib V17    0.18124748541607053
#>     Attrib V18    -0.30107946559988147
#>     Attrib V19    7.833422095991103E-4
#>     Attrib V2    -0.2297593556921158
#>     Attrib V20    0.4893734798771968
#>     Attrib V21    0.5759881436180779
#>     Attrib V22    0.10379599059645402
#>     Attrib V23    0.2721022846484934
#>     Attrib V24    0.5140298247426336
#>     Attrib V25    -0.21364531550010013
#>     Attrib V26    -0.591199962006887
#>     Attrib V27    -0.10618948670201955
#>     Attrib V28    0.13263377297383513
#>     Attrib V29    -0.151043732467136
#>     Attrib V3    -0.028274157718401
#>     Attrib V30    0.05287295482247115
#>     Attrib V31    -0.9065943365570515
#>     Attrib V32    0.07436752265146124
#>     Attrib V33    0.26178844722203926
#>     Attrib V34    0.01918269593713745
#>     Attrib V35    0.0299646248873436
#>     Attrib V36    -0.543860118996961
#>     Attrib V37    -0.2768603083729538
#>     Attrib V38    0.20915146389199862
#>     Attrib V39    0.31466145861576994
#>     Attrib V4    0.39545929267447716
#>     Attrib V40    -0.1443542119730017
#>     Attrib V41    0.08578113924393842
#>     Attrib V42    0.053841223538527105
#>     Attrib V43    0.16932924106864075
#>     Attrib V44    0.05573406393284519
#>     Attrib V45    0.0495965278477611
#>     Attrib V46    0.20768966340239842
#>     Attrib V47    -0.1060036605867044
#>     Attrib V48    0.008051966561906371
#>     Attrib V49    0.23885350820159157
#>     Attrib V5    0.14357954428032768
#>     Attrib V50    -0.7540620176283711
#>     Attrib V51    0.06163331346851892
#>     Attrib V52    0.01982762988626123
#>     Attrib V53    0.1529341204715045
#>     Attrib V54    0.1025947878123957
#>     Attrib V55    -0.6289347693894556
#>     Attrib V56    0.3482121058092097
#>     Attrib V57    0.051524692854946846
#>     Attrib V58    0.2047898291216808
#>     Attrib V59    0.5575802847090914
#>     Attrib V6    -0.208250964132739
#>     Attrib V60    0.22618753242545617
#>     Attrib V7    -0.07266737033002338
#>     Attrib V8    -0.062065209085104316
#>     Attrib V9    0.2675506147103083
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.07155271519149817
#>     Attrib V1    0.13612032145964417
#>     Attrib V10    0.05881900610849195
#>     Attrib V11    0.11467694350043227
#>     Attrib V12    0.1905026133287579
#>     Attrib V13    0.04960606018230324
#>     Attrib V14    -0.01263768208145685
#>     Attrib V15    -0.047337303543732626
#>     Attrib V16    -0.04179015193798502
#>     Attrib V17    0.057850650548147614
#>     Attrib V18    -0.07483214313949266
#>     Attrib V19    -0.030384822268484775
#>     Attrib V2    -0.062209933610183156
#>     Attrib V20    0.1515579125938772
#>     Attrib V21    0.13948492827771009
#>     Attrib V22    -0.08257119642954792
#>     Attrib V23    0.0404152787773148
#>     Attrib V24    0.14071011737600744
#>     Attrib V25    -0.012708238321869337
#>     Attrib V26    -0.21360325466262464
#>     Attrib V27    0.0034771897918128673
#>     Attrib V28    -0.010848357239780209
#>     Attrib V29    -0.07771858193964504
#>     Attrib V3    0.09639862253528303
#>     Attrib V30    -0.003499333137527685
#>     Attrib V31    -0.2757148519621532
#>     Attrib V32    0.07732156543019131
#>     Attrib V33    0.09801010637350224
#>     Attrib V34    0.06730972135100849
#>     Attrib V35    0.04517907469201892
#>     Attrib V36    -0.12032903239124584
#>     Attrib V37    -0.003715045204504321
#>     Attrib V38    0.07481368915630948
#>     Attrib V39    0.1905501149920412
#>     Attrib V4    0.19533669520846836
#>     Attrib V40    0.011297016843859213
#>     Attrib V41    0.05869684092252998
#>     Attrib V42    0.006043386860531489
#>     Attrib V43    0.013600468780600632
#>     Attrib V44    0.06637843191610986
#>     Attrib V45    0.026524325956607576
#>     Attrib V46    0.09090759034590455
#>     Attrib V47    0.022746384668793154
#>     Attrib V48    0.055826644395815674
#>     Attrib V49    0.16846405357257466
#>     Attrib V5    0.11771672975077736
#>     Attrib V50    -0.18913534494787046
#>     Attrib V51    -0.07073006328563891
#>     Attrib V52    -0.04197062678315616
#>     Attrib V53    0.05619552378630193
#>     Attrib V54    0.056161257935015814
#>     Attrib V55    -0.1681584732407404
#>     Attrib V56    0.11849021070777549
#>     Attrib V57    0.11663135029128817
#>     Attrib V58    0.050555781365620334
#>     Attrib V59    0.2632524776084337
#>     Attrib V6    -0.007852211519009616
#>     Attrib V60    0.2421039619279013
#>     Attrib V7    0.019794008870243938
#>     Attrib V8    -0.08872812654341394
#>     Attrib V9    0.08395079137763506
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.17244827434830995
#>     Attrib V1    0.3753413011660956
#>     Attrib V10    0.20091872456982698
#>     Attrib V11    0.37354171843711276
#>     Attrib V12    0.5004389002710898
#>     Attrib V13    -0.12105687487175282
#>     Attrib V14    -0.1836502586665427
#>     Attrib V15    -0.012895767726568528
#>     Attrib V16    0.022229722674925772
#>     Attrib V17    0.14977520740924416
#>     Attrib V18    -0.26284848277968154
#>     Attrib V19    -0.08691496842025055
#>     Attrib V2    -0.1866703117342739
#>     Attrib V20    0.41484321672079527
#>     Attrib V21    0.4499994553176973
#>     Attrib V22    -0.0030956414426405385
#>     Attrib V23    0.13233847197495954
#>     Attrib V24    0.33922776715917125
#>     Attrib V25    -0.20856767685977987
#>     Attrib V26    -0.5588648826419279
#>     Attrib V27    -0.2735432847286297
#>     Attrib V28    -0.1128768225979115
#>     Attrib V29    -0.35273573638390815
#>     Attrib V3    -0.049367329071515836
#>     Attrib V30    -0.017109151724023695
#>     Attrib V31    -0.7055304013973916
#>     Attrib V32    0.06899747153704146
#>     Attrib V33    0.22395634977660409
#>     Attrib V34    -0.03934098484665182
#>     Attrib V35    -0.009488074326818799
#>     Attrib V36    -0.4981479830937318
#>     Attrib V37    -0.2398449591583392
#>     Attrib V38    0.12467725950345236
#>     Attrib V39    0.28063190208725336
#>     Attrib V4    0.3071604721933322
#>     Attrib V40    -0.18099736642417902
#>     Attrib V41    -0.016879087286038017
#>     Attrib V42    -0.01695133734514934
#>     Attrib V43    0.04732305251148249
#>     Attrib V44    0.0724296196540489
#>     Attrib V45    -0.049985188048545535
#>     Attrib V46    0.12858950952994053
#>     Attrib V47    -0.09974755454489055
#>     Attrib V48    0.03143560738620439
#>     Attrib V49    0.2389374278805979
#>     Attrib V5    0.0632804118584044
#>     Attrib V50    -0.5469202328580793
#>     Attrib V51    0.015589568748388294
#>     Attrib V52    -0.09691056178816311
#>     Attrib V53    0.00994163328114942
#>     Attrib V54    0.2511006807198957
#>     Attrib V55    -0.403885584376731
#>     Attrib V56    0.39376077597300935
#>     Attrib V57    0.10802094341111208
#>     Attrib V58    0.1811336594618554
#>     Attrib V59    0.5125670846863659
#>     Attrib V6    -0.18605788548096044
#>     Attrib V60    0.3334212363914936
#>     Attrib V7    -0.040395075397963255
#>     Attrib V8    -0.08936176110318886
#>     Attrib V9    0.17793714347284084
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.37666015109997497
#>     Attrib V1    -0.603667993381304
#>     Attrib V10    -0.5531224144999956
#>     Attrib V11    -1.104163603628182
#>     Attrib V12    -0.9695357980221854
#>     Attrib V13    0.19918548239274816
#>     Attrib V14    0.6455653778634718
#>     Attrib V15    0.3490730725408786
#>     Attrib V16    -0.00785831497812936
#>     Attrib V17    -0.3351894512910871
#>     Attrib V18    0.5661778578142753
#>     Attrib V19    0.1528160030816036
#>     Attrib V2    0.36126348044157897
#>     Attrib V20    -1.0377506615092422
#>     Attrib V21    -1.2025555165290758
#>     Attrib V22    -0.17761037030246882
#>     Attrib V23    -0.600591126808496
#>     Attrib V24    -1.0602478672708897
#>     Attrib V25    0.25081922162442
#>     Attrib V26    0.8576656285902508
#>     Attrib V27    0.13335629749386635
#>     Attrib V28    -0.2871472934312837
#>     Attrib V29    0.17515334094934512
#>     Attrib V3    -0.0768252286759708
#>     Attrib V30    -0.33676706763465597
#>     Attrib V31    1.5161770713927893
#>     Attrib V32    -0.06501753307700711
#>     Attrib V33    -0.3035901537736704
#>     Attrib V34    0.10523048772987269
#>     Attrib V35    0.042405381746859816
#>     Attrib V36    1.0857114316617122
#>     Attrib V37    0.5802696070719836
#>     Attrib V38    -0.43040866486192764
#>     Attrib V39    -0.593433424879058
#>     Attrib V4    -0.5662655873105988
#>     Attrib V40    0.3802965763850402
#>     Attrib V41    -0.06317649754709528
#>     Attrib V42    -0.3683284211780091
#>     Attrib V43    -0.4030986136978931
#>     Attrib V44    -0.32777856681475886
#>     Attrib V45    -0.1405101166053133
#>     Attrib V46    -0.3544330981402043
#>     Attrib V47    0.07775519612485815
#>     Attrib V48    0.2354974213976579
#>     Attrib V49    -0.4074055025107143
#>     Attrib V5    -0.12258910628150754
#>     Attrib V50    1.2804865205398661
#>     Attrib V51    -0.2758962040302271
#>     Attrib V52    -0.17339799535827802
#>     Attrib V53    -0.31130007769924406
#>     Attrib V54    -0.18843938753810427
#>     Attrib V55    0.9014766076291405
#>     Attrib V56    -0.6055168127848706
#>     Attrib V57    0.2705638877483239
#>     Attrib V58    -0.4086860828716067
#>     Attrib V59    -0.5523971593410618
#>     Attrib V6    0.3811500020286153
#>     Attrib V60    0.30372087797544306
#>     Attrib V7    0.15098982112030215
#>     Attrib V8    -0.2742961430535234
#>     Attrib V9    -0.5922732630937568
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    0.027759039089060224
#>     Attrib V1    0.2081153629811792
#>     Attrib V10    0.11362713697073205
#>     Attrib V11    0.17111461849605453
#>     Attrib V12    0.29301878088849337
#>     Attrib V13    -0.010545895902329407
#>     Attrib V14    -0.08840526466742142
#>     Attrib V15    -0.039463933879013334
#>     Attrib V16    0.07300246805072765
#>     Attrib V17    0.13123521620062453
#>     Attrib V18    -0.08188404100135593
#>     Attrib V19    0.019697283880190687
#>     Attrib V2    -0.14972891642822825
#>     Attrib V20    0.246082578842276
#>     Attrib V21    0.2572245275497809
#>     Attrib V22    -0.037202664481748964
#>     Attrib V23    0.005195272917746163
#>     Attrib V24    0.25064421004858695
#>     Attrib V25    -0.09109862775558793
#>     Attrib V26    -0.37685059317772335
#>     Attrib V27    -0.15724810202858436
#>     Attrib V28    -0.03294009958547016
#>     Attrib V29    -0.2134785960755773
#>     Attrib V3    0.04546710187266863
#>     Attrib V30    -0.090053910344208
#>     Attrib V31    -0.4761755498398535
#>     Attrib V32    0.0561035504698887
#>     Attrib V33    0.08660846022162963
#>     Attrib V34    0.010842278124800899
#>     Attrib V35    -0.009524348375297682
#>     Attrib V36    -0.28774456162144774
#>     Attrib V37    -0.12774444253820427
#>     Attrib V38    0.0963707679301565
#>     Attrib V39    0.18662321171201707
#>     Attrib V4    0.2420880882491192
#>     Attrib V40    -0.13087932827661464
#>     Attrib V41    0.0036805920421537556
#>     Attrib V42    0.019937559676701185
#>     Attrib V43    0.03970980518951435
#>     Attrib V44    0.013132301433702526
#>     Attrib V45    0.030057555684953333
#>     Attrib V46    0.07532090612090708
#>     Attrib V47    -0.06552258289707219
#>     Attrib V48    0.011161148771290222
#>     Attrib V49    0.1194417664720941
#>     Attrib V5    0.09149946175027762
#>     Attrib V50    -0.27869947441834464
#>     Attrib V51    0.005825041410103609
#>     Attrib V52    -0.0237247940899556
#>     Attrib V53    0.11402919559442073
#>     Attrib V54    0.13780120612184596
#>     Attrib V55    -0.23622634832275827
#>     Attrib V56    0.24370146448538557
#>     Attrib V57    0.1272906759074853
#>     Attrib V58    0.14899866965450506
#>     Attrib V59    0.3033043368167228
#>     Attrib V6    -0.08328089700471412
#>     Attrib V60    0.25109771136185827
#>     Attrib V7    -0.027126361947048313
#>     Attrib V8    -0.08786148318924734
#>     Attrib V9    0.13583090141019757
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.14834594979472052
#>     Attrib V1    0.013633585044482921
#>     Attrib V10    -0.013078994005853248
#>     Attrib V11    -0.09332263282998508
#>     Attrib V12    -0.18244206625926537
#>     Attrib V13    -0.0659604918070375
#>     Attrib V14    0.01712746335883265
#>     Attrib V15    0.1160883684482841
#>     Attrib V16    0.03887130984178942
#>     Attrib V17    0.019463496335620424
#>     Attrib V18    0.063644790856955
#>     Attrib V19    0.04056159261616392
#>     Attrib V2    0.16586682625552274
#>     Attrib V20    -0.099288857840254
#>     Attrib V21    -0.0717621432252199
#>     Attrib V22    0.10105902247883183
#>     Attrib V23    0.007409873068415457
#>     Attrib V24    -0.05517689130809055
#>     Attrib V25    -0.03294188523354028
#>     Attrib V26    0.00573297848453712
#>     Attrib V27    -0.04872317891543827
#>     Attrib V28    -0.099386155352309
#>     Attrib V29    -0.08656574736824314
#>     Attrib V3    0.08221316122328545
#>     Attrib V30    0.01122621236930301
#>     Attrib V31    0.19282645733738019
#>     Attrib V32    9.261755896187422E-5
#>     Attrib V33    0.0746898612651965
#>     Attrib V34    0.058118854491241
#>     Attrib V35    0.1408403058257974
#>     Attrib V36    0.1827219528903643
#>     Attrib V37    0.10247896791324886
#>     Attrib V38    0.08366424006232445
#>     Attrib V39    0.031759570877623794
#>     Attrib V4    0.0284443981914897
#>     Attrib V40    0.10791512237532665
#>     Attrib V41    0.12108368192931296
#>     Attrib V42    0.06993005675977003
#>     Attrib V43    0.07684129231073018
#>     Attrib V44    0.055599782541871624
#>     Attrib V45    0.04158252369386427
#>     Attrib V46    -0.02097334282764382
#>     Attrib V47    0.012742469823191797
#>     Attrib V48    0.04905230929382542
#>     Attrib V49    -0.020181151121616458
#>     Attrib V5    0.03744067940995082
#>     Attrib V50    0.21738910206183545
#>     Attrib V51    -0.004173394285800089
#>     Attrib V52    0.0016361597223659293
#>     Attrib V53    0.02987131758399342
#>     Attrib V54    0.0037774940552537132
#>     Attrib V55    0.14222498858364405
#>     Attrib V56    0.05879675001068262
#>     Attrib V57    0.158574560878465
#>     Attrib V58    0.03892593870249513
#>     Attrib V59    -0.010735210403498879
#>     Attrib V6    0.06202069895210889
#>     Attrib V60    0.07500226723169062
#>     Attrib V7    0.011249747397905234
#>     Attrib V8    0.08370826833080203
#>     Attrib V9    -0.011972787963825445
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.17808365031901108
#>     Attrib V1    0.09804328783121662
#>     Attrib V10    0.06393632543051067
#>     Attrib V11    0.050137916784668016
#>     Attrib V12    0.056307815210408146
#>     Attrib V13    -0.0023258292883027117
#>     Attrib V14    0.011141003503998301
#>     Attrib V15    -0.023226766273919404
#>     Attrib V16    0.011118998817768832
#>     Attrib V17    0.0047459976861754264
#>     Attrib V18    0.04100952126856409
#>     Attrib V19    -0.03927845186936395
#>     Attrib V2    0.04726888762380729
#>     Attrib V20    0.04265845701838352
#>     Attrib V21    0.05572414625369804
#>     Attrib V22    -0.049363574793827934
#>     Attrib V23    -0.01868771898931309
#>     Attrib V24    -0.0030646202762858433
#>     Attrib V25    -0.017307180699368856
#>     Attrib V26    -0.06245748966495515
#>     Attrib V27    -0.01241638442736335
#>     Attrib V28    -0.028118311867518224
#>     Attrib V29    -0.0723178460723545
#>     Attrib V3    0.13287255251511296
#>     Attrib V30    -0.03969831946873261
#>     Attrib V31    -0.07732761930980951
#>     Attrib V32    0.05877995339284186
#>     Attrib V33    0.07985566846564675
#>     Attrib V34    0.07596189279622402
#>     Attrib V35    0.05186675202123282
#>     Attrib V36    0.08332377852180589
#>     Attrib V37    0.04008926550312445
#>     Attrib V38    0.055543135200342764
#>     Attrib V39    0.13222095338924797
#>     Attrib V4    0.11377805128459419
#>     Attrib V40    0.0314208829635294
#>     Attrib V41    0.028827428351108846
#>     Attrib V42    0.02610463118368962
#>     Attrib V43    0.05558355103565496
#>     Attrib V44    0.1264452251812308
#>     Attrib V45    0.035060577971375184
#>     Attrib V46    0.050519613763081526
#>     Attrib V47    0.08237611101612254
#>     Attrib V48    0.09356595772224505
#>     Attrib V49    0.15070769068392045
#>     Attrib V5    0.10115256707081405
#>     Attrib V50    -0.029142030025990112
#>     Attrib V51    0.016073736516827773
#>     Attrib V52    0.002517835504942647
#>     Attrib V53    0.06419031987889799
#>     Attrib V54    0.026390805797149492
#>     Attrib V55    0.003713798000728625
#>     Attrib V56    0.11085091834445386
#>     Attrib V57    0.07963582770232704
#>     Attrib V58    0.07866925244365058
#>     Attrib V59    0.1733623758785898
#>     Attrib V6    -0.012484713253862132
#>     Attrib V60    0.20534744325634743
#>     Attrib V7    0.04493201376673052
#>     Attrib V8    0.03603489055147509
#>     Attrib V9    0.0770427339442676
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.412454863762334
#>     Attrib V1    0.38108003128335993
#>     Attrib V10    0.5001905266570971
#>     Attrib V11    0.6915715861996328
#>     Attrib V12    0.9997861722715798
#>     Attrib V13    0.232906944629702
#>     Attrib V14    -0.0670445950437992
#>     Attrib V15    -0.313095623128955
#>     Attrib V16    -0.40892279210968996
#>     Attrib V17    -0.19386052083397598
#>     Attrib V18    -0.5112421903814687
#>     Attrib V19    -0.38235023518833866
#>     Attrib V2    -0.185887798919965
#>     Attrib V20    -0.14775764765638824
#>     Attrib V21    0.01531041646962242
#>     Attrib V22    -0.2557984508614652
#>     Attrib V23    0.07262355533063157
#>     Attrib V24    0.4918654496158576
#>     Attrib V25    0.026679314690966637
#>     Attrib V26    -0.1577874531583628
#>     Attrib V27    0.47426960074162294
#>     Attrib V28    0.8924761034010795
#>     Attrib V29    0.38847885456078135
#>     Attrib V3    -0.013073878203837954
#>     Attrib V30    0.1429941452193938
#>     Attrib V31    -0.4198642329728572
#>     Attrib V32    0.38320963797134594
#>     Attrib V33    0.24083590577773015
#>     Attrib V34    -0.02566978702041051
#>     Attrib V35    0.23032018481236302
#>     Attrib V36    -0.5910882052904632
#>     Attrib V37    -0.20173796634675467
#>     Attrib V38    -0.06327919102127043
#>     Attrib V39    0.35099435379861876
#>     Attrib V4    0.36327759093943646
#>     Attrib V40    0.06874489766291757
#>     Attrib V41    0.3670688022002895
#>     Attrib V42    -0.05180348823958476
#>     Attrib V43    -0.034643925668445964
#>     Attrib V44    -0.03203197563160827
#>     Attrib V45    0.2241668915550055
#>     Attrib V46    0.3776109777446372
#>     Attrib V47    0.11949379470301223
#>     Attrib V48    0.3684049379662355
#>     Attrib V49    0.49707862127753355
#>     Attrib V5    0.3898938153828658
#>     Attrib V50    -0.7239943746510139
#>     Attrib V51    0.32912617063656663
#>     Attrib V52    0.33052063120785463
#>     Attrib V53    0.2162812978932002
#>     Attrib V54    -0.17957901491545059
#>     Attrib V55    -0.47756699217638954
#>     Attrib V56    -0.24073414257769932
#>     Attrib V57    -0.17024174433499883
#>     Attrib V58    0.16205140249081795
#>     Attrib V59    0.24450730718291439
#>     Attrib V6    0.24735935827532515
#>     Attrib V60    0.38509929719688796
#>     Attrib V7    -0.07686611316150578
#>     Attrib V8    -0.4048646448544715
#>     Attrib V9    0.4359752510771977
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.45881701489562
#>     Attrib V1    0.42491334678869885
#>     Attrib V10    0.5426844503698133
#>     Attrib V11    0.7464048559687515
#>     Attrib V12    1.028408383327738
#>     Attrib V13    0.16770101706269805
#>     Attrib V14    -0.1313803243028649
#>     Attrib V15    -0.42821279987241273
#>     Attrib V16    -0.4349528035323963
#>     Attrib V17    -0.14322274950462874
#>     Attrib V18    -0.4387812940842613
#>     Attrib V19    -0.3355062807905606
#>     Attrib V2    -0.28114809602385277
#>     Attrib V20    -0.06435989660651321
#>     Attrib V21    0.15268256890583531
#>     Attrib V22    -0.2097136277689725
#>     Attrib V23    0.2060867047011115
#>     Attrib V24    0.6065591893677237
#>     Attrib V25    0.015406758640861724
#>     Attrib V26    -0.13987865094475319
#>     Attrib V27    0.560945052146873
#>     Attrib V28    0.9450962416819723
#>     Attrib V29    0.48570372786658317
#>     Attrib V3    -0.047105720808000934
#>     Attrib V30    0.221320352173953
#>     Attrib V31    -0.49645241853629657
#>     Attrib V32    0.37001460318804086
#>     Attrib V33    0.18983245104508634
#>     Attrib V34    -0.10392726867001643
#>     Attrib V35    0.161438695158653
#>     Attrib V36    -0.6243081983806843
#>     Attrib V37    -0.16317339436722977
#>     Attrib V38    -0.03744607283043837
#>     Attrib V39    0.3643266578835291
#>     Attrib V4    0.3526593123279343
#>     Attrib V40    0.061572629565592576
#>     Attrib V41    0.4661674473801282
#>     Attrib V42    -0.06381561269891282
#>     Attrib V43    0.0815581927879327
#>     Attrib V44    0.08856842426470539
#>     Attrib V45    0.16279934147971897
#>     Attrib V46    0.3446612054014456
#>     Attrib V47    0.1324641360420371
#>     Attrib V48    0.4147973439908555
#>     Attrib V49    0.49562350188504334
#>     Attrib V5    0.47315689431917946
#>     Attrib V50    -0.7786245139419775
#>     Attrib V51    0.45806031976743045
#>     Attrib V52    0.38931308940751
#>     Attrib V53    0.2651927805228138
#>     Attrib V54    -0.21071816048720027
#>     Attrib V55    -0.5684158179847243
#>     Attrib V56    -0.23835848004882837
#>     Attrib V57    -0.16264087901871804
#>     Attrib V58    0.12599158195900223
#>     Attrib V59    0.31509988433495667
#>     Attrib V6    0.2834887056772309
#>     Attrib V60    0.37619474246067314
#>     Attrib V7    -0.09428489280305447
#>     Attrib V8    -0.4459617998197986
#>     Attrib V9    0.487399740460102
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.28705696991763285
#>     Attrib V1    -0.5834923613645955
#>     Attrib V10    -0.6122230108487288
#>     Attrib V11    -1.2407724930909207
#>     Attrib V12    -1.0969057826674242
#>     Attrib V13    0.17480325296870386
#>     Attrib V14    0.7089373989986939
#>     Attrib V15    0.3452797068075406
#>     Attrib V16    -0.023969319170169555
#>     Attrib V17    -0.38168062456845536
#>     Attrib V18    0.5924887668922997
#>     Attrib V19    0.06885055494989184
#>     Attrib V2    0.348347714065523
#>     Attrib V20    -1.157327049967158
#>     Attrib V21    -1.2432583653592084
#>     Attrib V22    -0.30068957517429884
#>     Attrib V23    -0.7196096911349705
#>     Attrib V24    -1.1539285826972878
#>     Attrib V25    0.24511169589557852
#>     Attrib V26    0.7859865065798821
#>     Attrib V27    0.10492538717838358
#>     Attrib V28    -0.3587446306175582
#>     Attrib V29    0.14631041671989456
#>     Attrib V3    -0.17078447909057926
#>     Attrib V30    -0.36940389889849246
#>     Attrib V31    1.6818393097332147
#>     Attrib V32    -0.03892248540522056
#>     Attrib V33    -0.27331717819287504
#>     Attrib V34    0.07804544794138298
#>     Attrib V35    -0.04628040164959581
#>     Attrib V36    1.012275476944807
#>     Attrib V37    0.4992836758184852
#>     Attrib V38    -0.5470525019376635
#>     Attrib V39    -0.65330072283061
#>     Attrib V4    -0.5822176213144888
#>     Attrib V40    0.45591727003697813
#>     Attrib V41    0.002236297053441566
#>     Attrib V42    -0.40274394491812215
#>     Attrib V43    -0.43892040383819375
#>     Attrib V44    -0.40980390994209226
#>     Attrib V45    -0.31503232801757924
#>     Attrib V46    -0.45680687295627354
#>     Attrib V47    0.07058864526080229
#>     Attrib V48    0.35040041051484855
#>     Attrib V49    -0.4425790290822281
#>     Attrib V5    -0.11206561977000155
#>     Attrib V50    1.3413062498605284
#>     Attrib V51    -0.2558432238019127
#>     Attrib V52    -0.20406149587009545
#>     Attrib V53    -0.3923292621008836
#>     Attrib V54    -0.1236048184183412
#>     Attrib V55    0.8942106259942225
#>     Attrib V56    -0.6539807343464954
#>     Attrib V57    0.46718819629735614
#>     Attrib V58    -0.4226873952521268
#>     Attrib V59    -0.4380205446311367
#>     Attrib V6    0.45664996081821635
#>     Attrib V60    0.5236316600756044
#>     Attrib V7    0.276811021517882
#>     Attrib V8    -0.36638546567738645
#>     Attrib V9    -0.6225447445818917
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.10834499862682066
#>     Attrib V1    0.3697689416443182
#>     Attrib V10    0.1545351633986677
#>     Attrib V11    0.25158188691573163
#>     Attrib V12    0.3767269025150572
#>     Attrib V13    -0.13706349041546093
#>     Attrib V14    -0.11385178341441855
#>     Attrib V15    -0.03136367498881634
#>     Attrib V16    0.13708334722655752
#>     Attrib V17    0.16444072818118652
#>     Attrib V18    -0.22037064450437938
#>     Attrib V19    -0.049857561387525604
#>     Attrib V2    -0.13870332917616432
#>     Attrib V20    0.44218192288811575
#>     Attrib V21    0.45265498635881385
#>     Attrib V22    -0.005216806930538528
#>     Attrib V23    0.03606122853457968
#>     Attrib V24    0.35550267379463574
#>     Attrib V25    -0.22401001235370135
#>     Attrib V26    -0.6005346828733615
#>     Attrib V27    -0.3150832947679404
#>     Attrib V28    -0.20589742552383433
#>     Attrib V29    -0.3415033150737129
#>     Attrib V3    0.0017402678416488567
#>     Attrib V30    -0.09639049282536664
#>     Attrib V31    -0.6628759679187481
#>     Attrib V32    0.008347700985591493
#>     Attrib V33    0.1266899794699696
#>     Attrib V34    -0.038313681994372656
#>     Attrib V35    -0.05328567256479821
#>     Attrib V36    -0.41716748118533087
#>     Attrib V37    -0.23190650344722055
#>     Attrib V38    0.13351249845067575
#>     Attrib V39    0.20145695311910294
#>     Attrib V4    0.32486967999836197
#>     Attrib V40    -0.16984438023338877
#>     Attrib V41    -0.06658838280649836
#>     Attrib V42    0.009247375669400374
#>     Attrib V43    0.1264052460824636
#>     Attrib V44    0.03886641125376264
#>     Attrib V45    -0.06171480185038275
#>     Attrib V46    0.11384891770171078
#>     Attrib V47    -0.13171894744143833
#>     Attrib V48    0.023688711779010562
#>     Attrib V49    0.18880154692933912
#>     Attrib V5    0.11634241645633175
#>     Attrib V50    -0.46131022582548237
#>     Attrib V51    -0.013361309787816968
#>     Attrib V52    -0.11018295082246292
#>     Attrib V53    0.04552858416031725
#>     Attrib V54    0.2766994003140063
#>     Attrib V55    -0.37048108290063625
#>     Attrib V56    0.4404604975321412
#>     Attrib V57    0.17034742068851272
#>     Attrib V58    0.21407544836669548
#>     Attrib V59    0.5302843936704054
#>     Attrib V6    -0.14843736354327544
#>     Attrib V60    0.3562607439372634
#>     Attrib V7    0.007774248182370556
#>     Attrib V8    -0.08240114009757084
#>     Attrib V9    0.1585671118256627
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.2153164386169877
#>     Attrib V1    0.5598498500313627
#>     Attrib V10    0.22760027293045726
#>     Attrib V11    0.5247761379135167
#>     Attrib V12    0.5847518753794003
#>     Attrib V13    -0.3889124658576006
#>     Attrib V14    -0.42927482022079955
#>     Attrib V15    -0.04208355915531417
#>     Attrib V16    0.17931724978401942
#>     Attrib V17    0.38578975040201646
#>     Attrib V18    -0.3562281213233301
#>     Attrib V19    0.041184195070623535
#>     Attrib V2    -0.38229970645983347
#>     Attrib V20    0.9345124555151542
#>     Attrib V21    1.0747730104278455
#>     Attrib V22    0.29328156432128816
#>     Attrib V23    0.3946194679069066
#>     Attrib V24    0.7296216294243169
#>     Attrib V25    -0.21327355447225407
#>     Attrib V26    -0.7057347077062228
#>     Attrib V27    -0.3109889403223902
#>     Attrib V28    -0.09230993729954699
#>     Attrib V29    -0.4800107134393395
#>     Attrib V3    0.059287420630149586
#>     Attrib V30    0.03186842015154776
#>     Attrib V31    -1.4463871937628445
#>     Attrib V32    -0.17707423073247677
#>     Attrib V33    0.2172700333938066
#>     Attrib V34    -0.06913625693306388
#>     Attrib V35    -0.021660106668568754
#>     Attrib V36    -0.6594055641249993
#>     Attrib V37    -0.35411979949877165
#>     Attrib V38    0.37964709265727503
#>     Attrib V39    0.442810475117716
#>     Attrib V4    0.6053424767178569
#>     Attrib V40    -0.39394934271545556
#>     Attrib V41    -0.016741369303723084
#>     Attrib V42    0.2670922509806776
#>     Attrib V43    0.32622274909768845
#>     Attrib V44    0.24418263877480983
#>     Attrib V45    0.08121111221113583
#>     Attrib V46    0.25571481125999423
#>     Attrib V47    -0.08971744130346311
#>     Attrib V48    -0.19391743887534518
#>     Attrib V49    0.3717437552733254
#>     Attrib V5    0.14856337680686704
#>     Attrib V50    -0.8338023530196226
#>     Attrib V51    0.027020664213925596
#>     Attrib V52    -0.11122783529461033
#>     Attrib V53    0.26746676593926816
#>     Attrib V54    0.3634738444675725
#>     Attrib V55    -0.7935113338261771
#>     Attrib V56    0.7216375105043267
#>     Attrib V57    0.17227372583891506
#>     Attrib V58    0.38665987729132034
#>     Attrib V59    0.9648095183668787
#>     Attrib V6    -0.310961518586595
#>     Attrib V60    0.32805352463515786
#>     Attrib V7    0.11965766980851913
#>     Attrib V8    0.13612121615869174
#>     Attrib V9    0.28812038956938796
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.1686372298543826
#>     Attrib V1    -0.13030708309284503
#>     Attrib V10    -0.21248790520547145
#>     Attrib V11    -0.3225301852448317
#>     Attrib V12    -0.3775508039775962
#>     Attrib V13    -0.09369744834346236
#>     Attrib V14    0.07482218313175759
#>     Attrib V15    0.12180386479127195
#>     Attrib V16    0.020590401488714733
#>     Attrib V17    0.0241326375644856
#>     Attrib V18    0.14918006889759974
#>     Attrib V19    0.07487469372001027
#>     Attrib V2    0.09829697011549406
#>     Attrib V20    -0.11900947605362452
#>     Attrib V21    -0.09364707211288054
#>     Attrib V22    0.1181253533129115
#>     Attrib V23    0.058614241149468276
#>     Attrib V24    -0.2063544509299391
#>     Attrib V25    0.0728399374212006
#>     Attrib V26    0.2455035039473675
#>     Attrib V27    -0.030653301297008214
#>     Attrib V28    -0.13147225238570526
#>     Attrib V29    -0.054586828614309704
#>     Attrib V3    0.013605243252468447
#>     Attrib V30    -0.07325557097754234
#>     Attrib V31    0.2683311395153095
#>     Attrib V32    -0.020171553958446272
#>     Attrib V33    -0.08505033536066829
#>     Attrib V34    0.055042689717895096
#>     Attrib V35    0.04486205871073218
#>     Attrib V36    0.37334692050574264
#>     Attrib V37    0.11316054864187308
#>     Attrib V38    -0.04175752225894053
#>     Attrib V39    -0.1741897607682092
#>     Attrib V4    -0.0847117625453977
#>     Attrib V40    0.13181171916203008
#>     Attrib V41    0.003775665105068699
#>     Attrib V42    -0.0038106082838354717
#>     Attrib V43    -0.008960442809542522
#>     Attrib V44    -0.08556983297204715
#>     Attrib V45    -0.13022850174914763
#>     Attrib V46    -0.10751783889897512
#>     Attrib V47    0.05205158902127653
#>     Attrib V48    -0.06077371110221519
#>     Attrib V49    -0.15618362203571434
#>     Attrib V5    -0.10722598638120572
#>     Attrib V50    0.4155726078790665
#>     Attrib V51    -0.026429590357431837
#>     Attrib V52    0.02101603361691392
#>     Attrib V53    -0.06142737698474866
#>     Attrib V54    -0.036946956953209674
#>     Attrib V55    0.22221275959320566
#>     Attrib V56    -0.003462862259720712
#>     Attrib V57    0.14696734232199182
#>     Attrib V58    0.0010914278922932
#>     Attrib V59    -0.07932393597793691
#>     Attrib V6    0.03179701731611469
#>     Attrib V60    -0.030668614715076203
#>     Attrib V7    0.02048403056455144
#>     Attrib V8    0.03660729397890692
#>     Attrib V9    -0.11909262359615354
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.604471070538568
#>     Attrib V1    0.606865599600359
#>     Attrib V10    0.8072455075696827
#>     Attrib V11    1.1284087658500939
#>     Attrib V12    1.5906920394262587
#>     Attrib V13    0.6838795410354673
#>     Attrib V14    0.04948784659868512
#>     Attrib V15    -0.7069878599107673
#>     Attrib V16    -0.8601725737208483
#>     Attrib V17    -0.4745530608621259
#>     Attrib V18    -0.6922978480346288
#>     Attrib V19    -0.7302481261164993
#>     Attrib V2    -0.08027415306021955
#>     Attrib V20    -0.6347651369749914
#>     Attrib V21    -0.23539819590330333
#>     Attrib V22    -0.36416196654184363
#>     Attrib V23    0.1323041054343145
#>     Attrib V24    0.5226554268728384
#>     Attrib V25    -0.04369264928420064
#>     Attrib V26    -0.08513049052473935
#>     Attrib V27    0.870538020402876
#>     Attrib V28    1.568599411333835
#>     Attrib V29    0.7624600658722358
#>     Attrib V3    0.2615209512270813
#>     Attrib V30    -0.15525144950973846
#>     Attrib V31    -0.545982588798413
#>     Attrib V32    0.5430328006651584
#>     Attrib V33    -0.03721235139669518
#>     Attrib V34    -0.17165419118405906
#>     Attrib V35    0.34082548670203
#>     Attrib V36    -0.8076953776851179
#>     Attrib V37    -0.10244328265546014
#>     Attrib V38    -0.20315160046894984
#>     Attrib V39    0.4709055500369576
#>     Attrib V4    0.4367717168156297
#>     Attrib V40    0.11628450188471937
#>     Attrib V41    0.6796033972929243
#>     Attrib V42    -0.268534790770734
#>     Attrib V43    -0.14485218905487743
#>     Attrib V44    -0.032942861754137874
#>     Attrib V45    0.2644387834512
#>     Attrib V46    0.4902830790718853
#>     Attrib V47    0.225958395509584
#>     Attrib V48    0.5799223070226344
#>     Attrib V49    0.6062375489160969
#>     Attrib V5    0.7903514269401629
#>     Attrib V50    -0.9346693931900757
#>     Attrib V51    0.5494116580650898
#>     Attrib V52    0.4274783668636191
#>     Attrib V53    0.2900544256639428
#>     Attrib V54    -0.38819211183485997
#>     Attrib V55    -0.5331196058241895
#>     Attrib V56    -0.6218132803095906
#>     Attrib V57    -0.2522417980548199
#>     Attrib V58    0.2536190017672654
#>     Attrib V59    0.308219459344804
#>     Attrib V6    0.7493960053754243
#>     Attrib V60    0.7898601024621544
#>     Attrib V7    -0.22360905377521392
#>     Attrib V8    -0.7666170615945531
#>     Attrib V9    0.7083590685384884
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.22594078175632432
#>     Attrib V1    0.006375250497670504
#>     Attrib V10    -0.06832824308158861
#>     Attrib V11    -0.14521150228051205
#>     Attrib V12    -0.12117980728777535
#>     Attrib V13    -0.04153245245478751
#>     Attrib V14    0.07643722405712366
#>     Attrib V15    0.030488787203897014
#>     Attrib V16    0.020272922305890943
#>     Attrib V17    0.03560403258470583
#>     Attrib V18    0.020568678040788477
#>     Attrib V19    0.06778452509559016
#>     Attrib V2    0.12559108728281046
#>     Attrib V20    -0.062446789468877655
#>     Attrib V21    -0.03437059610465157
#>     Attrib V22    0.035057041249755345
#>     Attrib V23    0.015579567773331568
#>     Attrib V24    -0.09178499053851542
#>     Attrib V25    -0.009903676100682133
#>     Attrib V26    7.104867644799356E-4
#>     Attrib V27    -0.020861639190057353
#>     Attrib V28    -0.05538976219928937
#>     Attrib V29    -0.03205253890036248
#>     Attrib V3    0.06140422686205929
#>     Attrib V30    -0.024464322312508283
#>     Attrib V31    0.10186526493086161
#>     Attrib V32    0.007585639935565167
#>     Attrib V33    0.06014366503515949
#>     Attrib V34    0.056462104547536085
#>     Attrib V35    0.13369653420470748
#>     Attrib V36    0.2246335089934159
#>     Attrib V37    0.16195984094337149
#>     Attrib V38    0.012924379157472604
#>     Attrib V39    0.021222652818068625
#>     Attrib V4    0.06942894538483206
#>     Attrib V40    0.11233162535275108
#>     Attrib V41    0.067371616691897
#>     Attrib V42    0.08563661086714705
#>     Attrib V43    0.04368494192904643
#>     Attrib V44    0.03882727778409205
#>     Attrib V45    0.0022431733453792658
#>     Attrib V46    -0.019585605599927097
#>     Attrib V47    0.028275464849835005
#>     Attrib V48    0.06817018646895558
#>     Attrib V49    0.017451316211960242
#>     Attrib V5    -0.004121148179941762
#>     Attrib V50    0.21695773701918422
#>     Attrib V51    -0.036632474543083264
#>     Attrib V52    0.007946305077163944
#>     Attrib V53    0.04364630578439593
#>     Attrib V54    0.02299611722332946
#>     Attrib V55    0.1061736023440102
#>     Attrib V56    0.0696446533700775
#>     Attrib V57    0.14768587385180218
#>     Attrib V58    0.09004030735844763
#>     Attrib V59    0.05838090543673828
#>     Attrib V6    0.07452065052872302
#>     Attrib V60    0.12922499196572032
#>     Attrib V7    0.01105635609666741
#>     Attrib V8    0.060292052305885656
#>     Attrib V9    -0.034524614046311686
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.5285718626696797
#>     Attrib V1    0.5238923496541111
#>     Attrib V10    0.6808818894456571
#>     Attrib V11    0.8789269284484914
#>     Attrib V12    1.124106746765806
#>     Attrib V13    0.33224504290591866
#>     Attrib V14    -0.12823776729935915
#>     Attrib V15    -0.44594979406947505
#>     Attrib V16    -0.48579999674496965
#>     Attrib V17    -0.2637344390952097
#>     Attrib V18    -0.5181776935123296
#>     Attrib V19    -0.49979164016546995
#>     Attrib V2    -0.2173180255575685
#>     Attrib V20    -0.24959963892419174
#>     Attrib V21    0.052909406572780995
#>     Attrib V22    -0.30766767475812157
#>     Attrib V23    0.028396969486247654
#>     Attrib V24    0.49096648435659657
#>     Attrib V25    -0.11985416103053446
#>     Attrib V26    -0.1951691422442045
#>     Attrib V27    0.4808993809705996
#>     Attrib V28    0.9507337989104383
#>     Attrib V29    0.4410650517878626
#>     Attrib V3    -0.004453871487173834
#>     Attrib V30    0.1373823370198647
#>     Attrib V31    -0.46278960127334157
#>     Attrib V32    0.474401177839279
#>     Attrib V33    0.19244383831176207
#>     Attrib V34    -0.07345357820438109
#>     Attrib V35    0.16312657964072919
#>     Attrib V36    -0.713427757517228
#>     Attrib V37    -0.19577830574873645
#>     Attrib V38    -0.0708419552220061
#>     Attrib V39    0.3969880854090925
#>     Attrib V4    0.3513457842202368
#>     Attrib V40    -0.015511692912460004
#>     Attrib V41    0.41966323558383045
#>     Attrib V42    -0.1543726375208152
#>     Attrib V43    -0.10706477059535657
#>     Attrib V44    -0.019189985987669494
#>     Attrib V45    0.2332435167065939
#>     Attrib V46    0.36323277220928596
#>     Attrib V47    0.11923255773947981
#>     Attrib V48    0.433508664915766
#>     Attrib V49    0.4495430816347927
#>     Attrib V5    0.4317555370336127
#>     Attrib V50    -0.7520664184056318
#>     Attrib V51    0.44402972100896365
#>     Attrib V52    0.3532556156234503
#>     Attrib V53    0.19195145258294255
#>     Attrib V54    -0.29745448680461867
#>     Attrib V55    -0.5062666232289479
#>     Attrib V56    -0.31928096449656834
#>     Attrib V57    -0.1736703539032427
#>     Attrib V58    0.1635253475939456
#>     Attrib V59    0.2869165273966893
#>     Attrib V6    0.3646854851364584
#>     Attrib V60    0.4514878220021359
#>     Attrib V7    -0.11314352584386551
#>     Attrib V8    -0.4113667018649
#>     Attrib V9    0.5763020311918953
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.7317248224134272
#>     Attrib V1    -0.38351028208255844
#>     Attrib V10    -1.1753234994192456
#>     Attrib V11    -1.5076403791147677
#>     Attrib V12    -1.2870923926926452
#>     Attrib V13    -0.08685913321964349
#>     Attrib V14    0.5229932375424531
#>     Attrib V15    0.8974984176638701
#>     Attrib V16    0.5401627110473306
#>     Attrib V17    -0.10789947847940748
#>     Attrib V18    0.5024924445426184
#>     Attrib V19    0.10885676388889824
#>     Attrib V2    0.28261274361602845
#>     Attrib V20    -0.487599552360479
#>     Attrib V21    -0.8258387853807714
#>     Attrib V22    -0.11126772987465346
#>     Attrib V23    -1.0799149336989218
#>     Attrib V24    -1.3962354024242865
#>     Attrib V25    0.04647315963223463
#>     Attrib V26    0.39373010061709995
#>     Attrib V27    -0.5500449665510639
#>     Attrib V28    -1.6006168566312278
#>     Attrib V29    -0.9654757158254611
#>     Attrib V3    -0.08253446507312583
#>     Attrib V30    -0.5154804772004532
#>     Attrib V31    1.159019909557
#>     Attrib V32    -0.44635489719967136
#>     Attrib V33    -0.248407512474174
#>     Attrib V34    0.2192217153853538
#>     Attrib V35    -0.18854794873469907
#>     Attrib V36    1.3594311701743491
#>     Attrib V37    0.3752186988938906
#>     Attrib V38    0.07824336618522403
#>     Attrib V39    -0.5705903897019866
#>     Attrib V4    -0.43573806413183763
#>     Attrib V40    0.09434720774143582
#>     Attrib V41    -0.6953528947871093
#>     Attrib V42    -0.21129622887483235
#>     Attrib V43    -0.09457818745289648
#>     Attrib V44    -0.42395133514041305
#>     Attrib V45    -0.5690108621069663
#>     Attrib V46    -0.7545434335286536
#>     Attrib V47    -0.3443151987287047
#>     Attrib V48    -0.5195103606552113
#>     Attrib V49    -1.0303692835682505
#>     Attrib V5    -0.7187179149922852
#>     Attrib V50    1.2989863272678395
#>     Attrib V51    -0.9958126907793197
#>     Attrib V52    -1.0906178219003242
#>     Attrib V53    -0.6751012125110842
#>     Attrib V54    0.8177525155276069
#>     Attrib V55    0.9041262701281643
#>     Attrib V56    0.5107952592465299
#>     Attrib V57    0.6735173532450288
#>     Attrib V58    -0.35768445933715465
#>     Attrib V59    0.2773977395560322
#>     Attrib V6    -0.4274516678744863
#>     Attrib V60    0.6209364873880492
#>     Attrib V7    0.14821519253355536
#>     Attrib V8    0.042590878205074435
#>     Attrib V9    -1.2194633866971814
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.2865191820641667
#>     Attrib V1    0.2545667812358077
#>     Attrib V10    0.22983036252278227
#>     Attrib V11    0.4815368876238068
#>     Attrib V12    0.6317639729501593
#>     Attrib V13    -0.03438775034322943
#>     Attrib V14    -0.14891228541534485
#>     Attrib V15    -0.1351356846587969
#>     Attrib V16    -0.05526697275738897
#>     Attrib V17    0.08844567708858123
#>     Attrib V18    -0.32028628383774516
#>     Attrib V19    -0.15146059151398267
#>     Attrib V2    -0.25368338720474953
#>     Attrib V20    0.37758644536922437
#>     Attrib V21    0.42552614309207915
#>     Attrib V22    -0.008590863561353745
#>     Attrib V23    0.10999083012643589
#>     Attrib V24    0.46568637570501775
#>     Attrib V25    -0.13553124426818933
#>     Attrib V26    -0.533146297312673
#>     Attrib V27    -0.07149120337023891
#>     Attrib V28    0.17145286460811002
#>     Attrib V29    -0.06703431132710118
#>     Attrib V3    -3.857492174487536E-4
#>     Attrib V30    0.02608445246361918
#>     Attrib V31    -0.6747114625458575
#>     Attrib V32    0.18453457439982443
#>     Attrib V33    0.2222476947129618
#>     Attrib V34    0.010215536410317933
#>     Attrib V35    0.0759163108995546
#>     Attrib V36    -0.5048221321337164
#>     Attrib V37    -0.17067367544592893
#>     Attrib V38    0.14897631554769347
#>     Attrib V39    0.3435825655039414
#>     Attrib V4    0.24113103324627488
#>     Attrib V40    -0.11545918846546856
#>     Attrib V41    0.10898541943277198
#>     Attrib V42    -0.034277320772286166
#>     Attrib V43    0.12728743057816194
#>     Attrib V44    0.025885702045489144
#>     Attrib V45    0.0996031258694862
#>     Attrib V46    0.15639610948397356
#>     Attrib V47    -0.07310171624737544
#>     Attrib V48    0.01146311801624893
#>     Attrib V49    0.2103832321296516
#>     Attrib V5    0.07461026869730233
#>     Attrib V50    -0.6661098731060541
#>     Attrib V51    0.045867993850766835
#>     Attrib V52    0.0423809275122295
#>     Attrib V53    0.06256366598065664
#>     Attrib V54    0.035952715941847534
#>     Attrib V55    -0.47607063309096953
#>     Attrib V56    0.24997960258583707
#>     Attrib V57    -0.02806058744031616
#>     Attrib V58    0.07716541298521483
#>     Attrib V59    0.331439361423863
#>     Attrib V6    -0.12047618476002522
#>     Attrib V60    0.18107782287336077
#>     Attrib V7    -0.13773348612939176
#>     Attrib V8    -0.1470435746978465
#>     Attrib V9    0.2416984223639387
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.024588708141669042
#>     Attrib V1    0.17485708297675623
#>     Attrib V10    0.14612864044243326
#>     Attrib V11    0.14810735528328178
#>     Attrib V12    0.26358595426839015
#>     Attrib V13    0.06808848596220413
#>     Attrib V14    -0.012392672110726335
#>     Attrib V15    -0.031250790710996484
#>     Attrib V16    -0.02980878442564017
#>     Attrib V17    0.05836717334971658
#>     Attrib V18    -0.08765818505432141
#>     Attrib V19    -0.059342099963781265
#>     Attrib V2    -0.020361254977053246
#>     Attrib V20    0.06420472845728345
#>     Attrib V21    0.10302544087695885
#>     Attrib V22    -0.10182656714735386
#>     Attrib V23    -0.04209148867574687
#>     Attrib V24    0.06854072481165313
#>     Attrib V25    -0.021181575884251916
#>     Attrib V26    -0.132324956469773
#>     Attrib V27    -0.021193611313884086
#>     Attrib V28    0.05094261781224697
#>     Attrib V29    -0.10623741078607173
#>     Attrib V3    0.015992318274648674
#>     Attrib V30    0.01207712226413708
#>     Attrib V31    -0.1577375904994522
#>     Attrib V32    0.05398980461411324
#>     Attrib V33    0.07200724214016904
#>     Attrib V34    0.013451480674990588
#>     Attrib V35    0.10327160268746276
#>     Attrib V36    -0.09503304945332998
#>     Attrib V37    0.03551159173312825
#>     Attrib V38    0.05644432134765753
#>     Attrib V39    0.19543367131982486
#>     Attrib V4    0.20202651003866745
#>     Attrib V40    4.097708037289202E-4
#>     Attrib V41    0.038204342406251215
#>     Attrib V42    0.010888976337950962
#>     Attrib V43    0.03577703901423418
#>     Attrib V44    0.04195139118623719
#>     Attrib V45    0.07636663431303528
#>     Attrib V46    0.060205214287076196
#>     Attrib V47    -0.0394527638023764
#>     Attrib V48    0.10651883241628289
#>     Attrib V49    0.12211796856519619
#>     Attrib V5    0.04549450319152076
#>     Attrib V50    -0.1621242271149892
#>     Attrib V51    -0.06261736848998287
#>     Attrib V52    0.0023346055019061777
#>     Attrib V53    0.05402878865344879
#>     Attrib V54    0.07844221871968987
#>     Attrib V55    -0.15028860302607627
#>     Attrib V56    0.14021795530220815
#>     Attrib V57    0.07944325226580355
#>     Attrib V58    0.0819456446897322
#>     Attrib V59    0.24953400221318714
#>     Attrib V6    -0.032356196687707894
#>     Attrib V60    0.2224512252809039
#>     Attrib V7    -0.06598414435520683
#>     Attrib V8    -0.0784425383190836
#>     Attrib V9    0.08160950177930208
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.07877359160450545
#>     Attrib V1    0.3357451945470448
#>     Attrib V10    0.1323850006487803
#>     Attrib V11    0.29606548239521985
#>     Attrib V12    0.3332503161717662
#>     Attrib V13    -0.11253500002066458
#>     Attrib V14    -0.12458336882368988
#>     Attrib V15    0.01698153621364445
#>     Attrib V16    0.10676099048536677
#>     Attrib V17    0.20760023060361119
#>     Attrib V18    -0.15913780534190922
#>     Attrib V19    0.020181116547434784
#>     Attrib V2    -0.10676003347306437
#>     Attrib V20    0.5194518514884271
#>     Attrib V21    0.47869490491449185
#>     Attrib V22    0.09341392861988825
#>     Attrib V23    0.14125273093130397
#>     Attrib V24    0.38164894813915695
#>     Attrib V25    -0.20140041565592706
#>     Attrib V26    -0.5121506598394906
#>     Attrib V27    -0.29302662128498314
#>     Attrib V28    -0.19796385433211527
#>     Attrib V29    -0.393135537849582
#>     Attrib V3    -0.01207684917462934
#>     Attrib V30    -0.09561015506243278
#>     Attrib V31    -0.7150009711842322
#>     Attrib V32    -0.03446687751456013
#>     Attrib V33    0.17911613179787622
#>     Attrib V34    0.0015598975134517037
#>     Attrib V35    0.019290316289736313
#>     Attrib V36    -0.3752230572188071
#>     Attrib V37    -0.17843918533833805
#>     Attrib V38    0.23114705350770295
#>     Attrib V39    0.22748946962270578
#>     Attrib V4    0.35759476565692594
#>     Attrib V40    -0.19019497339383998
#>     Attrib V41    -0.048033925747943476
#>     Attrib V42    0.036000601749094405
#>     Attrib V43    0.14971655774258635
#>     Attrib V44    0.14311717663843346
#>     Attrib V45    0.007217167539967242
#>     Attrib V46    0.0907168065543114
#>     Attrib V47    -0.11061663185604213
#>     Attrib V48    -0.027339760684052927
#>     Attrib V49    0.19230229653858283
#>     Attrib V5    0.08783665003733163
#>     Attrib V50    -0.4764439006100706
#>     Attrib V51    -0.06264644935655204
#>     Attrib V52    -0.12056111998208889
#>     Attrib V53    0.10517998429577766
#>     Attrib V54    0.30868228575344175
#>     Attrib V55    -0.36124675443761683
#>     Attrib V56    0.3770719957535211
#>     Attrib V57    0.14816528170173585
#>     Attrib V58    0.13956145408060813
#>     Attrib V59    0.5187899978904786
#>     Attrib V6    -0.17679980336993614
#>     Attrib V60    0.30307671395456587
#>     Attrib V7    0.011548015025483221
#>     Attrib V8    0.0025554183720235797
#>     Attrib V9    0.1822063021715831
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.055381012707553426
#>     Attrib V1    0.22868941581561683
#>     Attrib V10    0.0747179702953838
#>     Attrib V11    0.20691029796714205
#>     Attrib V12    0.29023427633072274
#>     Attrib V13    -0.07684078701654465
#>     Attrib V14    -0.028796184015871484
#>     Attrib V15    -0.021760572570464137
#>     Attrib V16    0.05040591365467553
#>     Attrib V17    0.07796395956687453
#>     Attrib V18    -0.05909308267084695
#>     Attrib V19    -0.03292393972316835
#>     Attrib V2    -0.12429386288211733
#>     Attrib V20    0.28234834005459797
#>     Attrib V21    0.3025804188285165
#>     Attrib V22    -0.01686038257145543
#>     Attrib V23    0.09709768755099238
#>     Attrib V24    0.21980326958642793
#>     Attrib V25    -0.15754214894038265
#>     Attrib V26    -0.35057726606605194
#>     Attrib V27    -0.11633875292438504
#>     Attrib V28    0.016451653371811082
#>     Attrib V29    -0.16411470270023262
#>     Attrib V3    0.05013595712458973
#>     Attrib V30    0.0012587152200119228
#>     Attrib V31    -0.47661108769240945
#>     Attrib V32    0.036587149356927855
#>     Attrib V33    0.14282019458047815
#>     Attrib V34    0.018488841098695634
#>     Attrib V35    0.044796180890832246
#>     Attrib V36    -0.1799709692918502
#>     Attrib V37    -0.0849793411463145
#>     Attrib V38    0.07874455930396664
#>     Attrib V39    0.1936083416653143
#>     Attrib V4    0.20695744145335745
#>     Attrib V40    -0.12324176050540142
#>     Attrib V41    -0.027320342081749126
#>     Attrib V42    0.010768082226766807
#>     Attrib V43    0.028448143174717878
#>     Attrib V44    0.10236758611428912
#>     Attrib V45    0.08638143810262536
#>     Attrib V46    0.08028835148225293
#>     Attrib V47    -0.07476830591023598
#>     Attrib V48    -0.007202451419021083
#>     Attrib V49    0.20228825990598032
#>     Attrib V5    0.0976107151277882
#>     Attrib V50    -0.3476383788926637
#>     Attrib V51    -0.04965156618320294
#>     Attrib V52    -0.0048699398244422465
#>     Attrib V53    0.06068775638469911
#>     Attrib V54    0.06804187088921558
#>     Attrib V55    -0.2999615952250165
#>     Attrib V56    0.17937527535580955
#>     Attrib V57    0.06467573183856866
#>     Attrib V58    0.14425734537913795
#>     Attrib V59    0.28314935491153687
#>     Attrib V6    -0.0685750363517605
#>     Attrib V60    0.19194442393240768
#>     Attrib V7    -0.03803847073296502
#>     Attrib V8    -0.03234706763546669
#>     Attrib V9    0.15326453640251916
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
