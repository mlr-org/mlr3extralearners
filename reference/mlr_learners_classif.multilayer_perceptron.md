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
#>     Threshold    -0.2806814262653089
#>     Node 2    2.435502648924602
#>     Node 3    1.6641402427290535
#>     Node 4    0.7054009304479428
#>     Node 5    -1.4131492846006966
#>     Node 6    1.43037426843698
#>     Node 7    2.9808167656771376
#>     Node 8    0.7154527924430494
#>     Node 9    3.1028800319617598
#>     Node 10    -1.0125252989969362
#>     Node 11    0.8962874164710447
#>     Node 12    1.4841836291575694
#>     Node 13    0.9573645035190669
#>     Node 14    2.0050882044831555
#>     Node 15    -2.969487236792395
#>     Node 16    0.23468581711041628
#>     Node 17    0.03981876445766928
#>     Node 18    0.31059636570770116
#>     Node 19    2.423575972924091
#>     Node 20    1.939988173537756
#>     Node 21    -2.8716081963789586
#>     Node 22    1.0538491275610649
#>     Node 23    1.7083165222798955
#>     Node 24    -2.232514005320686
#>     Node 25    3.3660760807841585
#>     Node 26    -0.8902052226770547
#>     Node 27    1.4111561677835804
#>     Node 28    -3.863296272352012
#>     Node 29    0.9428829641596119
#>     Node 30    0.22764721541626703
#>     Node 31    2.1468300760785657
#>     Node 32    0.812780409265174
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.3086818267024739
#>     Node 2    -2.481030144091055
#>     Node 3    -1.648278435437393
#>     Node 4    -0.6633608405520114
#>     Node 5    1.4514647153626556
#>     Node 6    -1.4090332309595126
#>     Node 7    -2.986384812055548
#>     Node 8    -0.7485907199610912
#>     Node 9    -3.1199276528715174
#>     Node 10    0.9718998830579779
#>     Node 11    -0.8646772864018791
#>     Node 12    -1.5532700842705314
#>     Node 13    -0.9055190877087932
#>     Node 14    -1.942822700802192
#>     Node 15    2.9458992508586497
#>     Node 16    -0.2517702437624582
#>     Node 17    -8.352135705340858E-4
#>     Node 18    -0.2714654941882949
#>     Node 19    -2.4329507200759095
#>     Node 20    -1.9312957271769384
#>     Node 21    2.919027063103381
#>     Node 22    -1.1135854654783617
#>     Node 23    -1.7551248359449438
#>     Node 24    2.2117335846711277
#>     Node 25    -3.3635998543429255
#>     Node 26    0.8290271275911805
#>     Node 27    -1.4464288411878774
#>     Node 28    3.840923982523048
#>     Node 29    -0.9751357352913923
#>     Node 30    -0.15091011113094002
#>     Node 31    -2.0979996280881954
#>     Node 32    -0.8338317437642212
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.060365099712148915
#>     Attrib V1    0.207334481207948
#>     Attrib V10    -0.4577428581339211
#>     Attrib V11    0.1657703801206012
#>     Attrib V12    -0.20827355206371
#>     Attrib V13    -0.19637613777122792
#>     Attrib V14    0.05627666677665673
#>     Attrib V15    0.2641357771342403
#>     Attrib V16    0.30985214268693395
#>     Attrib V17    0.10226436035686554
#>     Attrib V18    -0.0096958439639095
#>     Attrib V19    -0.20213330244322572
#>     Attrib V2    0.28105540296343023
#>     Attrib V20    0.5477210596319098
#>     Attrib V21    0.8171682546227862
#>     Attrib V22    0.3770937816528813
#>     Attrib V23    0.3551054030076862
#>     Attrib V24    0.15267682814122652
#>     Attrib V25    -0.6794440464720849
#>     Attrib V26    -0.9463729207862698
#>     Attrib V27    -0.9172468496536956
#>     Attrib V28    -0.19738592374231376
#>     Attrib V29    -0.702670912893025
#>     Attrib V3    0.23989084632166796
#>     Attrib V30    0.46297445691311695
#>     Attrib V31    -1.3936573873962144
#>     Attrib V32    0.6314617151916386
#>     Attrib V33    1.1725138851577497
#>     Attrib V34    -0.29067975917001654
#>     Attrib V35    -0.5175345977905551
#>     Attrib V36    -0.9375314973155365
#>     Attrib V37    -1.0304161983886364
#>     Attrib V38    0.24521776032822926
#>     Attrib V39    0.26839114722478213
#>     Attrib V4    0.33186426820954235
#>     Attrib V40    0.03154251743307755
#>     Attrib V41    -0.2741214383057859
#>     Attrib V42    0.45981398888906766
#>     Attrib V43    0.11657902145665285
#>     Attrib V44    0.5731320769486371
#>     Attrib V45    0.661396285442166
#>     Attrib V46    0.07115006332475131
#>     Attrib V47    -0.5254742270561933
#>     Attrib V48    0.5788172695611025
#>     Attrib V49    1.01791245302929
#>     Attrib V5    -0.16932492697651796
#>     Attrib V50    -1.3165577681638048
#>     Attrib V51    -0.18234890921984856
#>     Attrib V52    0.48841239051266955
#>     Attrib V53    0.06333283580257529
#>     Attrib V54    0.8370289150985869
#>     Attrib V55    0.07673397224196062
#>     Attrib V56    0.460348010569021
#>     Attrib V57    -0.12563328125056095
#>     Attrib V58    0.5860285632708933
#>     Attrib V59    0.35873096198916743
#>     Attrib V6    -1.1033948769690443
#>     Attrib V60    -0.18618476095257647
#>     Attrib V7    0.09519372915044581
#>     Attrib V8    -0.27149670972698736
#>     Attrib V9    0.3034287587225366
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.02371613274495218
#>     Attrib V1    0.2412909662722813
#>     Attrib V10    -0.44090673734609687
#>     Attrib V11    -0.07760145724851088
#>     Attrib V12    -0.23257954903464892
#>     Attrib V13    -0.1499899940355494
#>     Attrib V14    0.1305825443329542
#>     Attrib V15    0.36368958894007064
#>     Attrib V16    0.27597306750755435
#>     Attrib V17    0.14694192142242482
#>     Attrib V18    0.009148022748239126
#>     Attrib V19    -0.07016911851435625
#>     Attrib V2    0.3225264628065627
#>     Attrib V20    0.38028026830251355
#>     Attrib V21    0.4452405941518408
#>     Attrib V22    0.12508712971117364
#>     Attrib V23    0.06424266515949711
#>     Attrib V24    -0.07920638218896166
#>     Attrib V25    -0.6230005439726835
#>     Attrib V26    -0.8330953439834053
#>     Attrib V27    -0.7787823837211958
#>     Attrib V28    -0.263991062244525
#>     Attrib V29    -0.4815576998594849
#>     Attrib V3    0.1908364547329205
#>     Attrib V30    0.2269951459906093
#>     Attrib V31    -0.8460374486555599
#>     Attrib V32    0.3911965571682477
#>     Attrib V33    0.7337585019919143
#>     Attrib V34    -0.20444909383319151
#>     Attrib V35    -0.31861734005957104
#>     Attrib V36    -0.5594982223722937
#>     Attrib V37    -0.547971715130833
#>     Attrib V38    0.1997196383248132
#>     Attrib V39    0.29328432341170774
#>     Attrib V4    0.25712296346167157
#>     Attrib V40    0.018036338599725314
#>     Attrib V41    -0.20788744617169547
#>     Attrib V42    0.2272748481656426
#>     Attrib V43    0.015958603207813716
#>     Attrib V44    0.34266601166082117
#>     Attrib V45    0.42889988048756067
#>     Attrib V46    0.030265289486691972
#>     Attrib V47    -0.3515095536986028
#>     Attrib V48    0.2322623828037936
#>     Attrib V49    0.5848723745389243
#>     Attrib V5    -0.13174731137742657
#>     Attrib V50    -0.7003698027857538
#>     Attrib V51    -0.19683410893699807
#>     Attrib V52    0.27674595904626414
#>     Attrib V53    -0.12088035156794426
#>     Attrib V54    0.5784529153739839
#>     Attrib V55    0.2579669461650859
#>     Attrib V56    0.35643142785007437
#>     Attrib V57    0.13689449497887207
#>     Attrib V58    0.45986062542473055
#>     Attrib V59    0.2903323540165574
#>     Attrib V6    -0.6673326978180852
#>     Attrib V60    -0.11410414919955132
#>     Attrib V7    0.023173190242675647
#>     Attrib V8    -0.2158412386042915
#>     Attrib V9    0.030033566493704755
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.05432605562547134
#>     Attrib V1    0.03765838604735456
#>     Attrib V10    -0.024871054408303228
#>     Attrib V11    0.1190891985545677
#>     Attrib V12    0.02753235302860642
#>     Attrib V13    -3.5627246549899556E-4
#>     Attrib V14    0.09058117880325922
#>     Attrib V15    0.11090455895131912
#>     Attrib V16    -0.02207076619105809
#>     Attrib V17    -0.07082003333136844
#>     Attrib V18    -0.12444933980421855
#>     Attrib V19    -0.2370775873659634
#>     Attrib V2    0.1668027634330636
#>     Attrib V20    -0.07538169902879718
#>     Attrib V21    -0.035798510693665436
#>     Attrib V22    -0.2467054081174243
#>     Attrib V23    -0.2240065587301965
#>     Attrib V24    -0.24925111445856551
#>     Attrib V25    -0.3283650409972089
#>     Attrib V26    -0.17163133881308085
#>     Attrib V27    -0.1236038583933649
#>     Attrib V28    0.08686629874476347
#>     Attrib V29    0.04546746680834467
#>     Attrib V3    0.11939351752489882
#>     Attrib V30    0.18735429276476495
#>     Attrib V31    -0.29539759428144297
#>     Attrib V32    0.11186928813274946
#>     Attrib V33    0.27337052891103736
#>     Attrib V34    0.020629443937551808
#>     Attrib V35    0.0166837312767692
#>     Attrib V36    -0.11890055084022616
#>     Attrib V37    -0.10691373240166624
#>     Attrib V38    0.0414268384699151
#>     Attrib V39    0.09563486019367357
#>     Attrib V4    0.11077832253879917
#>     Attrib V40    0.035246348376263316
#>     Attrib V41    -0.10198670307467386
#>     Attrib V42    0.004475772320437937
#>     Attrib V43    -0.05286632721229404
#>     Attrib V44    0.07469280668763767
#>     Attrib V45    0.30437572182871175
#>     Attrib V46    0.1142957208725675
#>     Attrib V47    -0.02009039237710544
#>     Attrib V48    0.2901277474080898
#>     Attrib V49    0.39440616926272737
#>     Attrib V5    0.02014922621719477
#>     Attrib V50    -0.07799378674076873
#>     Attrib V51    0.055614520184342986
#>     Attrib V52    0.17977157018660442
#>     Attrib V53    0.057919043760289605
#>     Attrib V54    0.11419720175272098
#>     Attrib V55    0.13925664521703554
#>     Attrib V56    0.07681539503612161
#>     Attrib V57    0.08341182147100082
#>     Attrib V58    0.12358292776862104
#>     Attrib V59    0.010963977163389193
#>     Attrib V6    -0.2625654114161026
#>     Attrib V60    -0.10137333730128363
#>     Attrib V7    -0.0015828687127237369
#>     Attrib V8    -0.06212821000593545
#>     Attrib V9    0.1510403862379344
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.38542046142257813
#>     Attrib V1    0.1490628452101641
#>     Attrib V10    0.14268777451526996
#>     Attrib V11    -0.4840987508399348
#>     Attrib V12    -0.4481562527167507
#>     Attrib V13    -0.0847779526103046
#>     Attrib V14    0.040547402657677145
#>     Attrib V15    -0.06561336237789923
#>     Attrib V16    -0.04456529716031159
#>     Attrib V17    0.045408717868858715
#>     Attrib V18    0.17373366774097992
#>     Attrib V19    0.031010761936018396
#>     Attrib V2    -0.12201661062282546
#>     Attrib V20    -0.3579300131996784
#>     Attrib V21    -0.1920565020110747
#>     Attrib V22    0.014822373402659659
#>     Attrib V23    0.04510793358959203
#>     Attrib V24    -0.10724818555658591
#>     Attrib V25    0.12052551902025022
#>     Attrib V26    -0.27367611169470585
#>     Attrib V27    -0.1650788629522854
#>     Attrib V28    -0.028666893998460428
#>     Attrib V29    0.20365239728035145
#>     Attrib V3    -2.8207936153827633E-4
#>     Attrib V30    -0.1271560795542929
#>     Attrib V31    1.1703677766468668
#>     Attrib V32    0.6002853435062352
#>     Attrib V33    0.2226563891768147
#>     Attrib V34    0.393169274178548
#>     Attrib V35    0.4748587067461283
#>     Attrib V36    0.7013398851469977
#>     Attrib V37    0.44719600837215095
#>     Attrib V38    -0.02640141966883252
#>     Attrib V39    -0.09719347736698597
#>     Attrib V4    0.023581740379270997
#>     Attrib V40    0.2994558608381686
#>     Attrib V41    0.5588460251217223
#>     Attrib V42    0.3030278280748681
#>     Attrib V43    0.3086251936147166
#>     Attrib V44    0.17855106585012576
#>     Attrib V45    -0.47863698458857334
#>     Attrib V46    -0.2698354887552331
#>     Attrib V47    0.12484299734959327
#>     Attrib V48    -0.41511571796504465
#>     Attrib V49    -0.6283857886455476
#>     Attrib V5    0.04444995507729822
#>     Attrib V50    0.796741654067312
#>     Attrib V51    0.12582825033373107
#>     Attrib V52    -0.3118052817582609
#>     Attrib V53    -0.057116302796681166
#>     Attrib V54    -0.05019292256374966
#>     Attrib V55    -0.10900264572876348
#>     Attrib V56    0.15565703605843026
#>     Attrib V57    0.3752699527436724
#>     Attrib V58    0.013726513362022177
#>     Attrib V59    0.18178797553525425
#>     Attrib V6    0.649167504595269
#>     Attrib V60    0.32056584837402063
#>     Attrib V7    0.3908972377583933
#>     Attrib V8    0.40700478252027905
#>     Attrib V9    -0.2436419347458314
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.10950832199394094
#>     Attrib V1    0.17103655561864073
#>     Attrib V10    -0.36966698308385815
#>     Attrib V11    0.07695977234611354
#>     Attrib V12    -0.0785996995402872
#>     Attrib V13    -0.18030078989916082
#>     Attrib V14    -0.005022048182188823
#>     Attrib V15    0.16720162204354705
#>     Attrib V16    0.23252296959306903
#>     Attrib V17    0.06825714372004518
#>     Attrib V18    0.0912181520708658
#>     Attrib V19    -0.1193496678823504
#>     Attrib V2    0.26938713630604677
#>     Attrib V20    0.311236996544016
#>     Attrib V21    0.4494250879851241
#>     Attrib V22    0.12757320474319264
#>     Attrib V23    0.11152341762539839
#>     Attrib V24    0.05015582334783082
#>     Attrib V25    -0.41057017335823076
#>     Attrib V26    -0.6121478241843439
#>     Attrib V27    -0.6119483945168567
#>     Attrib V28    -0.2624753603482507
#>     Attrib V29    -0.4690992085773926
#>     Attrib V3    0.12412424403781415
#>     Attrib V30    0.23322594774206445
#>     Attrib V31    -0.8404949649361007
#>     Attrib V32    0.3823313888370535
#>     Attrib V33    0.7060935233214946
#>     Attrib V34    -0.15681801711490972
#>     Attrib V35    -0.23003455125005703
#>     Attrib V36    -0.5481827134670161
#>     Attrib V37    -0.5717456685918775
#>     Attrib V38    0.11939567686384572
#>     Attrib V39    0.16827783338692423
#>     Attrib V4    0.25329190500540255
#>     Attrib V40    -0.02986402434709968
#>     Attrib V41    -0.1644385683827753
#>     Attrib V42    0.2201618335502864
#>     Attrib V43    0.027373064306791685
#>     Attrib V44    0.29608680237324553
#>     Attrib V45    0.4613831598863519
#>     Attrib V46    0.0965510331717873
#>     Attrib V47    -0.3272221605387914
#>     Attrib V48    0.29695554140169456
#>     Attrib V49    0.6096999121414227
#>     Attrib V5    -0.081726007519142
#>     Attrib V50    -0.7054038978512518
#>     Attrib V51    -0.1253058805465499
#>     Attrib V52    0.2649242833573545
#>     Attrib V53    0.05889522121185939
#>     Attrib V54    0.5278723012609254
#>     Attrib V55    0.13675259547340077
#>     Attrib V56    0.2681179683115564
#>     Attrib V57    0.010262986263755389
#>     Attrib V58    0.3789892149543586
#>     Attrib V59    0.21969173051361782
#>     Attrib V6    -0.5869989632979141
#>     Attrib V60    -0.09401632423431637
#>     Attrib V7    0.06360156480142216
#>     Attrib V8    -0.1725124885505828
#>     Attrib V9    0.2130158773664432
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.42394470189245376
#>     Attrib V1    0.06682160435147
#>     Attrib V10    0.6163097675748948
#>     Attrib V11    1.3060850740048842
#>     Attrib V12    1.213332054809455
#>     Attrib V13    0.9285328292026782
#>     Attrib V14    -0.008240880437198055
#>     Attrib V15    -0.2808288542432332
#>     Attrib V16    -0.8138504311531096
#>     Attrib V17    -0.9151060101086762
#>     Attrib V18    -0.4052300783403243
#>     Attrib V19    -0.6784113557071951
#>     Attrib V2    0.80945803003448
#>     Attrib V20    -0.3036582061484043
#>     Attrib V21    0.08507449979068196
#>     Attrib V22    0.26751225418227875
#>     Attrib V23    0.4551746720173857
#>     Attrib V24    -0.22346862575915286
#>     Attrib V25    -0.6150519607838775
#>     Attrib V26    0.5342928425346026
#>     Attrib V27    0.9722725175640685
#>     Attrib V28    1.2850185637599814
#>     Attrib V29    1.3802540018130218
#>     Attrib V3    0.3092108269633797
#>     Attrib V30    0.9150019676854344
#>     Attrib V31    -1.3882199376893398
#>     Attrib V32    -0.3561124225228479
#>     Attrib V33    0.10371802863767025
#>     Attrib V34    -0.1619782868917881
#>     Attrib V35    0.3144188625768673
#>     Attrib V36    -0.2872318056183927
#>     Attrib V37    0.029239140858105347
#>     Attrib V38    -0.3585095598632384
#>     Attrib V39    -0.15571145986777413
#>     Attrib V4    0.2893727758443543
#>     Attrib V40    0.3991077668256427
#>     Attrib V41    0.7508745722770034
#>     Attrib V42    -0.13639048397498177
#>     Attrib V43    -0.030730288944193235
#>     Attrib V44    -0.08463878102499503
#>     Attrib V45    0.651314834972268
#>     Attrib V46    0.7095651420866744
#>     Attrib V47    0.20100691003887433
#>     Attrib V48    0.6129759840033319
#>     Attrib V49    1.0305674054712852
#>     Attrib V5    0.3209667759661738
#>     Attrib V50    -0.4672967736425464
#>     Attrib V51    0.43829257992145165
#>     Attrib V52    0.9083581514257264
#>     Attrib V53    0.6337582459448793
#>     Attrib V54    0.0020954487390745036
#>     Attrib V55    -0.2808135198485246
#>     Attrib V56    -0.5102662986751633
#>     Attrib V57    -0.8368964903565675
#>     Attrib V58    -0.020592003279748437
#>     Attrib V59    -0.434415232528903
#>     Attrib V6    -0.04825309191578591
#>     Attrib V60    -0.09484812480861209
#>     Attrib V7    0.004577780753830486
#>     Attrib V8    -0.28049936470642567
#>     Attrib V9    0.8667403364324592
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.02903916120936309
#>     Attrib V1    0.04015361957498223
#>     Attrib V10    0.03784132667754883
#>     Attrib V11    0.2052429322926883
#>     Attrib V12    0.0676411612070726
#>     Attrib V13    -0.0034248041791274993
#>     Attrib V14    -0.02062464419749435
#>     Attrib V15    0.023963448319718212
#>     Attrib V16    0.00946726436099359
#>     Attrib V17    -0.09644049092250255
#>     Attrib V18    -0.1554957542487418
#>     Attrib V19    -0.24976735295982974
#>     Attrib V2    0.2135362883235734
#>     Attrib V20    -0.1624455946997746
#>     Attrib V21    -0.13040890400691585
#>     Attrib V22    -0.2685226438780217
#>     Attrib V23    -0.23298157529513178
#>     Attrib V24    -0.1798633156005254
#>     Attrib V25    -0.2457256223572313
#>     Attrib V26    -0.07495157278739825
#>     Attrib V27    -0.02674817320675971
#>     Attrib V28    0.09687000774901397
#>     Attrib V29    0.029703260694614108
#>     Attrib V3    0.08874266157831517
#>     Attrib V30    0.20878945416560513
#>     Attrib V31    -0.3189535726470493
#>     Attrib V32    0.12392139420000933
#>     Attrib V33    0.2742216109772227
#>     Attrib V34    0.01864597863851466
#>     Attrib V35    0.03667915364902614
#>     Attrib V36    -0.04604863554113125
#>     Attrib V37    -0.0753144488159669
#>     Attrib V38    0.11611702414085752
#>     Attrib V39    0.06084078416193573
#>     Attrib V4    0.17321541217521022
#>     Attrib V40    0.0021154916784417413
#>     Attrib V41    -0.09165843841410824
#>     Attrib V42    -0.10390255350701734
#>     Attrib V43    -0.04540393394542351
#>     Attrib V44    0.10238898007260999
#>     Attrib V45    0.30946597676716203
#>     Attrib V46    0.20982341894727627
#>     Attrib V47    0.04671681216028142
#>     Attrib V48    0.34384606804559303
#>     Attrib V49    0.41316848775271975
#>     Attrib V5    -0.013792826799555548
#>     Attrib V50    -0.13016509358717288
#>     Attrib V51    0.02050546186711009
#>     Attrib V52    0.19210511973751587
#>     Attrib V53    0.07857111062400214
#>     Attrib V54    0.17457441445978245
#>     Attrib V55    0.11063566440937961
#>     Attrib V56    -0.008862209346286423
#>     Attrib V57    0.09452454833959485
#>     Attrib V58    0.09354864098182843
#>     Attrib V59    -0.009449089420986509
#>     Attrib V6    -0.25983129887336465
#>     Attrib V60    -0.0665187723163677
#>     Attrib V7    2.1753720089759103E-4
#>     Attrib V8    -0.05106208397111885
#>     Attrib V9    0.1730336067976485
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.21275044220245404
#>     Attrib V1    -0.49213526495245996
#>     Attrib V10    0.6366562231878758
#>     Attrib V11    1.1940869492093513
#>     Attrib V12    1.3278536825003464
#>     Attrib V13    0.986447655133887
#>     Attrib V14    -0.17645295578744866
#>     Attrib V15    -0.46549722129090854
#>     Attrib V16    -0.7030971995491865
#>     Attrib V17    -0.5980850325840631
#>     Attrib V18    0.1445828685658434
#>     Attrib V19    -0.2869957479282975
#>     Attrib V2    0.5428083107779297
#>     Attrib V20    -0.2740695111412862
#>     Attrib V21    0.20236126967259088
#>     Attrib V22    0.7819227390900438
#>     Attrib V23    1.1471704068674105
#>     Attrib V24    0.5087370956371461
#>     Attrib V25    0.1542826814621816
#>     Attrib V26    0.8888080671460016
#>     Attrib V27    1.0727773268968372
#>     Attrib V28    1.0801927918456113
#>     Attrib V29    0.7839033259712046
#>     Attrib V3    0.14176984496714157
#>     Attrib V30    0.7711795340545612
#>     Attrib V31    -1.1966359742903707
#>     Attrib V32    -0.21358895833212407
#>     Attrib V33    0.043380595554626006
#>     Attrib V34    -0.23589169005442123
#>     Attrib V35    0.25787204610913533
#>     Attrib V36    -0.37864044811222386
#>     Attrib V37    -0.33560824180089316
#>     Attrib V38    -0.7865325037582409
#>     Attrib V39    -0.49064911861792115
#>     Attrib V4    0.4092511570285469
#>     Attrib V40    0.3861756595212528
#>     Attrib V41    0.9530548721572527
#>     Attrib V42    0.10684393750924527
#>     Attrib V43    0.23377247799275372
#>     Attrib V44    0.03542903670419602
#>     Attrib V45    0.4356129856534941
#>     Attrib V46    0.6882408596120427
#>     Attrib V47    0.2692624779749265
#>     Attrib V48    0.59467251417249
#>     Attrib V49    1.0740312893354798
#>     Attrib V5    0.5585576876231422
#>     Attrib V50    -0.7219093621216227
#>     Attrib V51    0.6107345152955127
#>     Attrib V52    1.096373392217476
#>     Attrib V53    1.2813396404866253
#>     Attrib V54    0.1842042805940779
#>     Attrib V55    -0.4556375996545745
#>     Attrib V56    -0.5651018453945941
#>     Attrib V57    -1.18982787581056
#>     Attrib V58    -0.08097880419472267
#>     Attrib V59    -0.47151941663031655
#>     Attrib V6    0.03914925765155417
#>     Attrib V60    -0.10789116236652248
#>     Attrib V7    0.15560599431547067
#>     Attrib V8    -0.02271361161875172
#>     Attrib V9    0.9523796411072368
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.3452393009402676
#>     Attrib V1    0.14628430593765995
#>     Attrib V10    0.05635127098782992
#>     Attrib V11    -0.3043303720294243
#>     Attrib V12    -0.1990122846741065
#>     Attrib V13    -0.017848346302042475
#>     Attrib V14    0.012215188490921057
#>     Attrib V15    -0.16641922786428998
#>     Attrib V16    -0.1263507515328378
#>     Attrib V17    -0.20185444101978894
#>     Attrib V18    0.02833019499644895
#>     Attrib V19    -5.083808988018863E-4
#>     Attrib V2    -0.044957632133655064
#>     Attrib V20    -0.187488587310682
#>     Attrib V21    -0.04457929186090336
#>     Attrib V22    0.06738811699481063
#>     Attrib V23    0.1365139178081343
#>     Attrib V24    -0.019212541905648
#>     Attrib V25    -0.026690994506424287
#>     Attrib V26    -0.2580011051156071
#>     Attrib V27    -0.2404110451417869
#>     Attrib V28    -0.08976189164575168
#>     Attrib V29    0.05029041582337428
#>     Attrib V3    0.0015227214376658518
#>     Attrib V30    -0.021055073046996435
#>     Attrib V31    0.7089093204839252
#>     Attrib V32    0.4213583985389424
#>     Attrib V33    0.3678106359862681
#>     Attrib V34    0.45022749203733425
#>     Attrib V35    0.4058567321400993
#>     Attrib V36    0.43625409474197724
#>     Attrib V37    0.25100867620478967
#>     Attrib V38    0.059047909065418396
#>     Attrib V39    0.00746520455952667
#>     Attrib V4    0.06975312151768895
#>     Attrib V40    0.3390163091206635
#>     Attrib V41    0.5333098867902244
#>     Attrib V42    0.2611637347437438
#>     Attrib V43    0.2860177471647583
#>     Attrib V44    0.2033448493548906
#>     Attrib V45    -0.2081655609094138
#>     Attrib V46    -0.11425735234283982
#>     Attrib V47    0.0728983737146597
#>     Attrib V48    -0.2676239572689707
#>     Attrib V49    -0.40034478572421484
#>     Attrib V5    0.04787132453057821
#>     Attrib V50    0.484640343685046
#>     Attrib V51    0.1574798700815992
#>     Attrib V52    -0.09124408971654244
#>     Attrib V53    0.13464679032832602
#>     Attrib V54    0.030963578995664553
#>     Attrib V55    -0.06297556285076668
#>     Attrib V56    0.12173550190190295
#>     Attrib V57    0.2387546089247963
#>     Attrib V58    0.09901714697370233
#>     Attrib V59    0.17246751402681743
#>     Attrib V6    0.44950745165246353
#>     Attrib V60    0.25039354970061767
#>     Attrib V7    0.24215309337252466
#>     Attrib V8    0.2160162294200004
#>     Attrib V9    -0.1471693435550942
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.0274297640043076
#>     Attrib V1    0.029788412319560857
#>     Attrib V10    0.002249282991133251
#>     Attrib V11    0.22785297128718757
#>     Attrib V12    0.12771429100784154
#>     Attrib V13    -0.08172392196175789
#>     Attrib V14    -0.004788528109079293
#>     Attrib V15    0.02883863103787432
#>     Attrib V16    -0.032997582148242666
#>     Attrib V17    -0.06284965309585878
#>     Attrib V18    -0.11893763916534998
#>     Attrib V19    -0.31982304432013053
#>     Attrib V2    0.1679178339019079
#>     Attrib V20    -0.10631793713880508
#>     Attrib V21    -0.15759640529876867
#>     Attrib V22    -0.33140882958776924
#>     Attrib V23    -0.2974893168123857
#>     Attrib V24    -0.2850948972825042
#>     Attrib V25    -0.3147859860503896
#>     Attrib V26    -0.19964835297922948
#>     Attrib V27    -0.05829624324402273
#>     Attrib V28    0.11146454130150707
#>     Attrib V29    -0.01654099947426797
#>     Attrib V3    0.029579973401674804
#>     Attrib V30    0.2455563300472065
#>     Attrib V31    -0.4236701353386124
#>     Attrib V32    0.1358767691025792
#>     Attrib V33    0.3226910539665705
#>     Attrib V34    0.06084557757736439
#>     Attrib V35    0.06767527232727133
#>     Attrib V36    -0.10779716295621367
#>     Attrib V37    -0.1559775489281015
#>     Attrib V38    0.11738436718039875
#>     Attrib V39    0.061601901079853694
#>     Attrib V4    0.11546792293463846
#>     Attrib V40    -0.027084693459200428
#>     Attrib V41    -0.18165943022187364
#>     Attrib V42    -0.05166637601599037
#>     Attrib V43    -0.03138291955534713
#>     Attrib V44    0.1183816752037301
#>     Attrib V45    0.3892930863609156
#>     Attrib V46    0.16761749708881382
#>     Attrib V47    0.0255858328215654
#>     Attrib V48    0.388017299240204
#>     Attrib V49    0.4639375765110658
#>     Attrib V5    -0.006956600747263567
#>     Attrib V50    -0.11932391777108181
#>     Attrib V51    0.079948836078591
#>     Attrib V52    0.19665348371837266
#>     Attrib V53    0.006718206669447207
#>     Attrib V54    0.24997893393531212
#>     Attrib V55    0.15894891411202974
#>     Attrib V56    0.03735956529577907
#>     Attrib V57    0.06403086013984156
#>     Attrib V58    0.16630325857478492
#>     Attrib V59    -0.06857757694510186
#>     Attrib V6    -0.29086467168784313
#>     Attrib V60    -0.11758782588328122
#>     Attrib V7    -0.05918861096794758
#>     Attrib V8    -0.016486645285587104
#>     Attrib V9    0.1947715715780615
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.19411227252259436
#>     Attrib V1    0.04366428712024783
#>     Attrib V10    -0.3141583430959695
#>     Attrib V11    0.17850859828026344
#>     Attrib V12    -0.10939710428621181
#>     Attrib V13    -0.06715195532751368
#>     Attrib V14    0.0942112747362401
#>     Attrib V15    0.22075865541318154
#>     Attrib V16    0.18259095482836923
#>     Attrib V17    -0.010286206215583
#>     Attrib V18    -0.021370958104373606
#>     Attrib V19    -0.12880607533035432
#>     Attrib V2    0.33969925122850436
#>     Attrib V20    0.20062302923711473
#>     Attrib V21    0.36098461165232665
#>     Attrib V22    0.09514629034799818
#>     Attrib V23    0.045238719478135764
#>     Attrib V24    -0.1723777055019707
#>     Attrib V25    -0.7010943803176036
#>     Attrib V26    -0.6899420745759843
#>     Attrib V27    -0.43558640004429605
#>     Attrib V28    0.039357712286153194
#>     Attrib V29    -0.1165174088632902
#>     Attrib V3    0.05216092040586376
#>     Attrib V30    0.3539144436898527
#>     Attrib V31    -0.9553978067358678
#>     Attrib V32    0.3496558851827165
#>     Attrib V33    0.7620858379475027
#>     Attrib V34    -0.13872573696470775
#>     Attrib V35    -0.24050151253847754
#>     Attrib V36    -0.5493559819058417
#>     Attrib V37    -0.5786168002884297
#>     Attrib V38    0.08529545049160124
#>     Attrib V39    0.08607453049960431
#>     Attrib V4    0.26643543588835383
#>     Attrib V40    0.023212838269566667
#>     Attrib V41    -0.13228305223140585
#>     Attrib V42    0.12189679191171372
#>     Attrib V43    0.03277417684033791
#>     Attrib V44    0.2486094116917098
#>     Attrib V45    0.5075876307401632
#>     Attrib V46    0.1272883589922915
#>     Attrib V47    -0.3452885204934351
#>     Attrib V48    0.40408280460876583
#>     Attrib V49    0.693956756351735
#>     Attrib V5    -0.08615969243983237
#>     Attrib V50    -0.7804929075448901
#>     Attrib V51    -0.1181279353826526
#>     Attrib V52    0.34584109030339016
#>     Attrib V53    -0.022873306914127742
#>     Attrib V54    0.46112488842575244
#>     Attrib V55    0.07240256128522433
#>     Attrib V56    0.17329670085036952
#>     Attrib V57    -0.016599371150610866
#>     Attrib V58    0.34674349070087346
#>     Attrib V59    0.14125237209870453
#>     Attrib V6    -0.6604520622148917
#>     Attrib V60    -0.2000494650548278
#>     Attrib V7    0.08379684214390129
#>     Attrib V8    -0.18771147374794836
#>     Attrib V9    0.22506094209557934
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.01805428068963435
#>     Attrib V1    0.10909707834670418
#>     Attrib V10    -0.2616396220301745
#>     Attrib V11    0.08106740772854601
#>     Attrib V12    -0.041649247030701456
#>     Attrib V13    -0.013559711915167121
#>     Attrib V14    0.025050237983904697
#>     Attrib V15    0.08579896746731806
#>     Attrib V16    0.04291008791787987
#>     Attrib V17    0.05323463083818317
#>     Attrib V18    0.05697989306984132
#>     Attrib V19    -0.10884768403303119
#>     Attrib V2    0.19858203627936113
#>     Attrib V20    0.2101955507667284
#>     Attrib V21    0.2636824715142876
#>     Attrib V22    0.023637692057871217
#>     Attrib V23    0.06217540243847172
#>     Attrib V24    -0.027045271621047865
#>     Attrib V25    -0.2782489565467908
#>     Attrib V26    -0.40204452701852944
#>     Attrib V27    -0.3361808548669411
#>     Attrib V28    -0.12335569982343769
#>     Attrib V29    -0.17688240309592393
#>     Attrib V3    0.1296078484747415
#>     Attrib V30    0.18513681079104372
#>     Attrib V31    -0.6686204266018989
#>     Attrib V32    0.18380199026996552
#>     Attrib V33    0.4183116006547616
#>     Attrib V34    -0.02522987616910918
#>     Attrib V35    -0.08515624547372348
#>     Attrib V36    -0.25808326858133596
#>     Attrib V37    -0.2531344470072051
#>     Attrib V38    0.13509700748437467
#>     Attrib V39    0.1913644928238864
#>     Attrib V4    0.15984591974201132
#>     Attrib V40    0.016786847325448214
#>     Attrib V41    -0.131851055070705
#>     Attrib V42    0.07720579258432271
#>     Attrib V43    -0.03906718763527818
#>     Attrib V44    0.16646669355549004
#>     Attrib V45    0.31153321131995154
#>     Attrib V46    0.11467247046409654
#>     Attrib V47    -0.15160471775217654
#>     Attrib V48    0.23106246295652647
#>     Attrib V49    0.4875313823732467
#>     Attrib V5    -0.03707305123167881
#>     Attrib V50    -0.4425541004941869
#>     Attrib V51    -0.10490349871263809
#>     Attrib V52    0.179999679242802
#>     Attrib V53    0.004652742435003276
#>     Attrib V54    0.3417844068331341
#>     Attrib V55    0.1406855578285874
#>     Attrib V56    0.12240099773104397
#>     Attrib V57    0.004544966535097207
#>     Attrib V58    0.20847059788823208
#>     Attrib V59    0.13519365595058977
#>     Attrib V6    -0.40829646296342764
#>     Attrib V60    -0.04968361133247696
#>     Attrib V7    0.03911043606269152
#>     Attrib V8    -0.21878772731064142
#>     Attrib V9    0.09218294037191255
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.049164432356055665
#>     Attrib V1    0.22066740901182155
#>     Attrib V10    -0.4155657921956155
#>     Attrib V11    0.11121795146090831
#>     Attrib V12    -0.14143053694129692
#>     Attrib V13    -0.22629661355535974
#>     Attrib V14    -0.027422944055976447
#>     Attrib V15    0.2891616945690302
#>     Attrib V16    0.25090264706435006
#>     Attrib V17    0.13634313566722014
#>     Attrib V18    0.002842171973637928
#>     Attrib V19    -0.1875209320059326
#>     Attrib V2    0.2996113440663705
#>     Attrib V20    0.3334550070092
#>     Attrib V21    0.45033668279053973
#>     Attrib V22    0.12434426799794389
#>     Attrib V23    0.17306794009798124
#>     Attrib V24    0.03051160485497224
#>     Attrib V25    -0.5357449259145383
#>     Attrib V26    -0.770007830238938
#>     Attrib V27    -0.8749946995152039
#>     Attrib V28    -0.4134838890868281
#>     Attrib V29    -0.7962967100075078
#>     Attrib V3    0.1054348636096421
#>     Attrib V30    0.22781727959404827
#>     Attrib V31    -0.941277276741933
#>     Attrib V32    0.5562166797945681
#>     Attrib V33    0.9800390438713534
#>     Attrib V34    -0.1360357972012134
#>     Attrib V35    -0.3086071843031797
#>     Attrib V36    -0.7556397540344724
#>     Attrib V37    -0.7657174266410453
#>     Attrib V38    0.14713788385113072
#>     Attrib V39    0.26644571053452143
#>     Attrib V4    0.24348097227761548
#>     Attrib V40    0.017798754567774962
#>     Attrib V41    -0.3189703904132397
#>     Attrib V42    0.19346918210034558
#>     Attrib V43    0.002568702764008156
#>     Attrib V44    0.43447869105054593
#>     Attrib V45    0.47971797782081976
#>     Attrib V46    0.07366198026639921
#>     Attrib V47    -0.42129982866254034
#>     Attrib V48    0.47645423746682686
#>     Attrib V49    0.8372478679129326
#>     Attrib V5    -0.21366173575886951
#>     Attrib V50    -0.9596763687620598
#>     Attrib V51    -0.21106012396304244
#>     Attrib V52    0.30448467484838176
#>     Attrib V53    -0.12840863454296167
#>     Attrib V54    0.7397408812308155
#>     Attrib V55    0.20909330549400262
#>     Attrib V56    0.4493687442978529
#>     Attrib V57    0.039282987166450734
#>     Attrib V58    0.4902377800750509
#>     Attrib V59    0.21635851886159205
#>     Attrib V6    -0.8230253730146959
#>     Attrib V60    -0.11930546419007623
#>     Attrib V7    0.07411410512717084
#>     Attrib V8    -0.32202675161904964
#>     Attrib V9    0.1978624785458432
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.10606306105120025
#>     Attrib V1    0.26362280359711504
#>     Attrib V10    0.3421427324566765
#>     Attrib V11    -0.6742900724244156
#>     Attrib V12    -0.5466948417034889
#>     Attrib V13    -0.2267695651579897
#>     Attrib V14    0.17700931956742508
#>     Attrib V15    0.037014836252049196
#>     Attrib V16    0.11493574350938375
#>     Attrib V17    0.3036541855626875
#>     Attrib V18    0.032683025625703035
#>     Attrib V19    0.31683661493231735
#>     Attrib V2    -0.42743337334700143
#>     Attrib V20    -0.1080025057236048
#>     Attrib V21    -0.5536953435341384
#>     Attrib V22    -0.669520318004566
#>     Attrib V23    -0.8917796870441131
#>     Attrib V24    -0.6648867587565428
#>     Attrib V25    0.1952642713745781
#>     Attrib V26    0.460985982712408
#>     Attrib V27    0.577896259200663
#>     Attrib V28    0.2456628214795954
#>     Attrib V29    0.8303372044957213
#>     Attrib V3    -0.13139872944991332
#>     Attrib V30    -0.9261151320053248
#>     Attrib V31    1.003238005680456
#>     Attrib V32    -0.8972281270092545
#>     Attrib V33    -1.199186197182183
#>     Attrib V34    0.6027468970424413
#>     Attrib V35    0.9341454507485348
#>     Attrib V36    1.6427080588126879
#>     Attrib V37    1.5772131378590166
#>     Attrib V38    0.33479141224397435
#>     Attrib V39    0.20768394858617972
#>     Attrib V4    -0.43948952018771803
#>     Attrib V40    -0.044304687850864034
#>     Attrib V41    0.06116069070134386
#>     Attrib V42    -0.6543531673165962
#>     Attrib V43    -0.3165489374242764
#>     Attrib V44    -0.6149063457897844
#>     Attrib V45    -0.4165011980014125
#>     Attrib V46    -0.00797642418731187
#>     Attrib V47    0.6272172737175123
#>     Attrib V48    -0.44244964254185687
#>     Attrib V49    -1.0650003449976713
#>     Attrib V5    -0.03803884848138377
#>     Attrib V50    2.04356481963359
#>     Attrib V51    0.06733491760103288
#>     Attrib V52    -0.8316263791794728
#>     Attrib V53    -0.7127432030643369
#>     Attrib V54    -1.1996299743815069
#>     Attrib V55    -0.02620447599955644
#>     Attrib V56    -0.3629041301986108
#>     Attrib V57    0.5293293305468773
#>     Attrib V58    -0.5879643565953521
#>     Attrib V59    -0.3239653451611247
#>     Attrib V6    1.1649667509486283
#>     Attrib V60    -0.06870930228891212
#>     Attrib V7    -0.04890628912845954
#>     Attrib V8    0.43820917292106376
#>     Attrib V9    -0.6774999925900465
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1483158039355258
#>     Attrib V1    0.07167356701407945
#>     Attrib V10    0.010657075572552415
#>     Attrib V11    0.03510470189012672
#>     Attrib V12    -0.001165918619001785
#>     Attrib V13    0.013026113919618236
#>     Attrib V14    0.009123043052995343
#>     Attrib V15    0.020366698619588293
#>     Attrib V16    0.06062224672605128
#>     Attrib V17    0.035814045141675355
#>     Attrib V18    0.015840345920504033
#>     Attrib V19    -0.06259367200605871
#>     Attrib V2    0.0784086691175122
#>     Attrib V20    -0.067234495478699
#>     Attrib V21    -0.0770033587805951
#>     Attrib V22    -0.12420851658901792
#>     Attrib V23    -0.13063626796935396
#>     Attrib V24    -0.04515850105632859
#>     Attrib V25    -0.05189727608470325
#>     Attrib V26    -0.07073301742680564
#>     Attrib V27    -0.08436016020625452
#>     Attrib V28    -0.02014134983766748
#>     Attrib V29    -0.0585592611673905
#>     Attrib V3    0.10957106723545312
#>     Attrib V30    0.005900321759136838
#>     Attrib V31    -0.15282689904533076
#>     Attrib V32    0.060554189702214906
#>     Attrib V33    0.10328674298532407
#>     Attrib V34    0.07774858205870347
#>     Attrib V35    0.05957356863047508
#>     Attrib V36    0.014718485813140468
#>     Attrib V37    0.05249554856661158
#>     Attrib V38    0.10336916818875791
#>     Attrib V39    0.08827708326533822
#>     Attrib V4    0.11890287207453566
#>     Attrib V40    0.026643099227120853
#>     Attrib V41    0.005905490116775822
#>     Attrib V42    0.06467647048964323
#>     Attrib V43    0.002738672238109683
#>     Attrib V44    0.03217273234598612
#>     Attrib V45    0.1436832825336984
#>     Attrib V46    0.12825613876376407
#>     Attrib V47    0.055905830867089494
#>     Attrib V48    0.12355691064791047
#>     Attrib V49    0.12022701727111963
#>     Attrib V5    0.06396777057631022
#>     Attrib V50    0.0516517874559665
#>     Attrib V51    0.11120940197639845
#>     Attrib V52    0.1435749080891962
#>     Attrib V53    0.09267622317376446
#>     Attrib V54    0.09852612964505282
#>     Attrib V55    0.13703781715973787
#>     Attrib V56    0.09721763817601674
#>     Attrib V57    0.1016311913430807
#>     Attrib V58    0.15249051242956038
#>     Attrib V59    0.026864554275296874
#>     Attrib V6    -0.03573039314459648
#>     Attrib V60    0.03314925479136747
#>     Attrib V7    0.023451145867511427
#>     Attrib V8    -0.03400368354415764
#>     Attrib V9    0.10420000876874336
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.13443709199100468
#>     Attrib V1    0.08673475731196402
#>     Attrib V10    0.05879205611352203
#>     Attrib V11    0.008616801717884147
#>     Attrib V12    -0.0592420434838902
#>     Attrib V13    -0.0457043171412486
#>     Attrib V14    0.023611135370172173
#>     Attrib V15    0.09633836977111847
#>     Attrib V16    0.030562141350053824
#>     Attrib V17    0.011127703915416814
#>     Attrib V18    -0.015468970612926604
#>     Attrib V19    -0.018398018528890593
#>     Attrib V2    0.13296915578638827
#>     Attrib V20    -0.08183183574234855
#>     Attrib V21    -0.0714372051510734
#>     Attrib V22    -0.013211262077798819
#>     Attrib V23    -0.07420070342884716
#>     Attrib V24    -0.019989142421173795
#>     Attrib V25    -0.049301852716498
#>     Attrib V26    -0.06384382272208253
#>     Attrib V27    -0.061893379576550375
#>     Attrib V28    -0.04590233393582855
#>     Attrib V29    -0.050638423817436023
#>     Attrib V3    0.07101390524972996
#>     Attrib V30    0.042811993742372885
#>     Attrib V31    0.07017869170072157
#>     Attrib V32    0.010541871380217525
#>     Attrib V33    0.1062896518225956
#>     Attrib V34    0.05617956785999418
#>     Attrib V35    0.1445859534394023
#>     Attrib V36    0.07332619727270773
#>     Attrib V37    0.06825084485087683
#>     Attrib V38    0.1325448168820825
#>     Attrib V39    0.10755259084228376
#>     Attrib V4    0.09004383627021594
#>     Attrib V40    0.0761160552308648
#>     Attrib V41    0.10644045473675666
#>     Attrib V42    0.05550759356712974
#>     Attrib V43    0.09268641069780328
#>     Attrib V44    0.1039927336139888
#>     Attrib V45    0.09312029055263882
#>     Attrib V46    0.05739744878863067
#>     Attrib V47    0.044875265459794846
#>     Attrib V48    0.10915677024184718
#>     Attrib V49    0.0012564700061383693
#>     Attrib V5    0.08429828239417317
#>     Attrib V50    0.08008598679845402
#>     Attrib V51    0.08573584062564917
#>     Attrib V52    0.03338142199825289
#>     Attrib V53    0.005365498630096504
#>     Attrib V54    0.046598611363109825
#>     Attrib V55    0.12208156529949941
#>     Attrib V56    0.1182599413555199
#>     Attrib V57    0.1457203148644257
#>     Attrib V58    0.05911001943521104
#>     Attrib V59    0.055058074491099146
#>     Attrib V6    0.07362547176807024
#>     Attrib V60    0.07183565607251059
#>     Attrib V7    0.02529979853056237
#>     Attrib V8    0.0812447287354167
#>     Attrib V9    0.050695430195019306
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.16570572688751536
#>     Attrib V1    0.08366272440542244
#>     Attrib V10    0.013322503638521667
#>     Attrib V11    0.05848445299064611
#>     Attrib V12    -0.010016239630031763
#>     Attrib V13    -0.022693815548371788
#>     Attrib V14    0.040166827843243026
#>     Attrib V15    0.020086846896547807
#>     Attrib V16    0.020741368849923808
#>     Attrib V17    -0.03412607809894798
#>     Attrib V18    0.018690498415860148
#>     Attrib V19    -0.1360425088944236
#>     Attrib V2    0.14182026547539173
#>     Attrib V20    -0.01728856108883282
#>     Attrib V21    -0.006965609713161995
#>     Attrib V22    -0.10835879478141706
#>     Attrib V23    -0.09182977926809499
#>     Attrib V24    -0.09923202598738379
#>     Attrib V25    -0.06875995947960292
#>     Attrib V26    -0.02890364925951753
#>     Attrib V27    -0.051545659552415676
#>     Attrib V28    -0.03532396142344394
#>     Attrib V29    -0.06540624916736966
#>     Attrib V3    0.1431457511451809
#>     Attrib V30    0.018758751546362494
#>     Attrib V31    -0.16912816152465882
#>     Attrib V32    0.036164886380181505
#>     Attrib V33    0.12923380656514996
#>     Attrib V34    0.08083296734202931
#>     Attrib V35    0.057213334680394745
#>     Attrib V36    0.0832181221622369
#>     Attrib V37    0.011151195290652494
#>     Attrib V38    0.08281421745393025
#>     Attrib V39    0.1143280436686549
#>     Attrib V4    0.08120035545626467
#>     Attrib V40    0.030148422084627754
#>     Attrib V41    -0.055759050638370576
#>     Attrib V42    0.020226287110889682
#>     Attrib V43    0.007807756686920616
#>     Attrib V44    0.10621704793905733
#>     Attrib V45    0.10835721445406715
#>     Attrib V46    0.09995777019730678
#>     Attrib V47    0.08705376431353586
#>     Attrib V48    0.15780075648195854
#>     Attrib V49    0.19574985079102522
#>     Attrib V5    0.058230711495763934
#>     Attrib V50    -0.04558204854407371
#>     Attrib V51    0.10987992168310085
#>     Attrib V52    0.10622716295111617
#>     Attrib V53    0.04260770283488601
#>     Attrib V54    0.09462683030883401
#>     Attrib V55    0.1500487069163616
#>     Attrib V56    0.10805414482551404
#>     Attrib V57    0.03564377599644494
#>     Attrib V58    0.11325087083244958
#>     Attrib V59    0.0780716419530826
#>     Attrib V6    -0.09519547569730409
#>     Attrib V60    0.04257941454992073
#>     Attrib V7    0.059842918523992206
#>     Attrib V8    0.031078186465813725
#>     Attrib V9    0.09875295822099044
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.270314748905029
#>     Attrib V1    -0.2295595630590751
#>     Attrib V10    0.43752093819547283
#>     Attrib V11    1.0483117176595407
#>     Attrib V12    1.1803070632032306
#>     Attrib V13    0.7997289694879047
#>     Attrib V14    -0.05243144026782111
#>     Attrib V15    -0.2620861062781261
#>     Attrib V16    -0.6837668734595458
#>     Attrib V17    -0.644667921274304
#>     Attrib V18    -0.18853380769356998
#>     Attrib V19    -0.4836596734966914
#>     Attrib V2    0.5918102707899118
#>     Attrib V20    -0.37238662872063616
#>     Attrib V21    -0.10312134139383428
#>     Attrib V22    0.3239765935467544
#>     Attrib V23    0.5481594342847879
#>     Attrib V24    0.08380564190697658
#>     Attrib V25    -0.1389084100330363
#>     Attrib V26    0.5538797245217331
#>     Attrib V27    0.8452929203936791
#>     Attrib V28    0.9999358737428404
#>     Attrib V29    0.8184819727955128
#>     Attrib V3    0.16360197673095814
#>     Attrib V30    0.8047202649368183
#>     Attrib V31    -1.0246638181771959
#>     Attrib V32    -0.13442611026684415
#>     Attrib V33    0.18219910360536093
#>     Attrib V34    -0.2002730865860267
#>     Attrib V35    0.24672697566184712
#>     Attrib V36    -0.3297304712480791
#>     Attrib V37    -0.17700841210012777
#>     Attrib V38    -0.4069678948148741
#>     Attrib V39    -0.2714216748917531
#>     Attrib V4    0.35567400419377493
#>     Attrib V40    0.2862768778127595
#>     Attrib V41    0.5521177802201976
#>     Attrib V42    -0.019543142255711337
#>     Attrib V43    0.03950258944467005
#>     Attrib V44    -0.024319301799039444
#>     Attrib V45    0.5874067105936146
#>     Attrib V46    0.5834354627964528
#>     Attrib V47    0.1161188367465292
#>     Attrib V48    0.562107927551074
#>     Attrib V49    1.0097749690878135
#>     Attrib V5    0.3838962882315944
#>     Attrib V50    -0.647798483847518
#>     Attrib V51    0.3664220840117416
#>     Attrib V52    0.9131590302527244
#>     Attrib V53    0.7969184908760362
#>     Attrib V54    0.1493076913205152
#>     Attrib V55    -0.19824721204884535
#>     Attrib V56    -0.41296147783381115
#>     Attrib V57    -0.8527386913440225
#>     Attrib V58    0.05566050702900265
#>     Attrib V59    -0.3384774006920853
#>     Attrib V6    -0.15877748041705259
#>     Attrib V60    -0.08850130039251987
#>     Attrib V7    -0.03192761668088423
#>     Attrib V8    -0.20986297874740792
#>     Attrib V9    0.7365424244970116
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.21929715872699873
#>     Attrib V1    -0.3226777276883918
#>     Attrib V10    4.564031009968346E-4
#>     Attrib V11    0.7124662911527958
#>     Attrib V12    0.8072706190310651
#>     Attrib V13    0.5199553802955756
#>     Attrib V14    -0.06997394611083257
#>     Attrib V15    -0.1997156234790707
#>     Attrib V16    -0.3955161789317508
#>     Attrib V17    -0.30419108627980573
#>     Attrib V18    0.16903417103704274
#>     Attrib V19    -0.14454407890562967
#>     Attrib V2    0.3946906294402965
#>     Attrib V20    0.06270927955592497
#>     Attrib V21    0.30554396073440754
#>     Attrib V22    0.6386604894560222
#>     Attrib V23    1.0428686623578185
#>     Attrib V24    0.5587418129598217
#>     Attrib V25    0.007019898535040037
#>     Attrib V26    0.211326213823266
#>     Attrib V27    0.37421864854370096
#>     Attrib V28    0.5776552569960091
#>     Attrib V29    0.2319704381107235
#>     Attrib V3    0.05168270848863166
#>     Attrib V30    0.6987989410609193
#>     Attrib V31    -1.143066691411861
#>     Attrib V32    0.13902093445711508
#>     Attrib V33    0.4832573574687319
#>     Attrib V34    -0.23953788807729867
#>     Attrib V35    0.11856007396167288
#>     Attrib V36    -0.31129125151477505
#>     Attrib V37    -0.30085197131628727
#>     Attrib V38    -0.1749853754954576
#>     Attrib V39    -0.2375838291899357
#>     Attrib V4    0.2930434425148862
#>     Attrib V40    0.17167678510873863
#>     Attrib V41    0.3334465159328614
#>     Attrib V42    0.2197486609164839
#>     Attrib V43    0.2795305824364376
#>     Attrib V44    0.441080322852992
#>     Attrib V45    0.5933815306631544
#>     Attrib V46    0.33808300033611965
#>     Attrib V47    -0.2015396968337157
#>     Attrib V48    0.4274748636148432
#>     Attrib V49    0.9195852991562715
#>     Attrib V5    0.3440575361545305
#>     Attrib V50    -1.110754154063505
#>     Attrib V51    0.13581278962618656
#>     Attrib V52    0.8207920782253215
#>     Attrib V53    0.6336960669937287
#>     Attrib V54    0.5239046022218179
#>     Attrib V55    -0.23855650895811448
#>     Attrib V56    -0.1319667628456547
#>     Attrib V57    -0.9272230667598433
#>     Attrib V58    0.138241774685186
#>     Attrib V59    -0.1689050963304077
#>     Attrib V6    -0.5189262721142782
#>     Attrib V60    -0.24533011307882208
#>     Attrib V7    0.04020723206977559
#>     Attrib V8    -0.404618327448294
#>     Attrib V9    0.6657601327073178
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.04398036592089118
#>     Attrib V1    0.486022167236601
#>     Attrib V10    0.2515218997768746
#>     Attrib V11    -0.9964437958601872
#>     Attrib V12    -1.0564315088220122
#>     Attrib V13    -0.6449529450677713
#>     Attrib V14    0.1397866339333759
#>     Attrib V15    0.10644594007930183
#>     Attrib V16    0.20950039531180314
#>     Attrib V17    0.21080155796247452
#>     Attrib V18    -0.20432148928176205
#>     Attrib V19    0.09181427824314531
#>     Attrib V2    -0.4906095442694212
#>     Attrib V20    -0.11496481644783499
#>     Attrib V21    -0.4880239742748401
#>     Attrib V22    -1.0349656354193293
#>     Attrib V23    -1.403089140690271
#>     Attrib V24    -0.8739227207548668
#>     Attrib V25    0.036022819720909184
#>     Attrib V26    0.058460893005749096
#>     Attrib V27    0.11352051465040822
#>     Attrib V28    -0.2521956269941771
#>     Attrib V29    0.5260022425032687
#>     Attrib V3    -0.22403297787427212
#>     Attrib V30    -0.9096636400443592
#>     Attrib V31    1.4718861562492398
#>     Attrib V32    -0.6439577834291632
#>     Attrib V33    -1.0062453638571212
#>     Attrib V34    0.5401040034581063
#>     Attrib V35    0.4988024523318901
#>     Attrib V36    1.0687746369110187
#>     Attrib V37    1.005447645090517
#>     Attrib V38    0.03543897982859389
#>     Attrib V39    0.19787546765810202
#>     Attrib V4    -0.49683867187710345
#>     Attrib V40    0.07290326108581908
#>     Attrib V41    0.03957026817362241
#>     Attrib V42    -0.6335604520083585
#>     Attrib V43    -0.5050120615272363
#>     Attrib V44    -0.7456274541176093
#>     Attrib V45    -0.5291072424068041
#>     Attrib V46    -0.08469809892667587
#>     Attrib V47    0.6987310159155564
#>     Attrib V48    -0.18653853929561112
#>     Attrib V49    -0.9377136199755394
#>     Attrib V5    -0.28638164356713713
#>     Attrib V50    2.145866157250043
#>     Attrib V51    -0.07036436062631025
#>     Attrib V52    -0.9482968664869855
#>     Attrib V53    -0.8684739771186666
#>     Attrib V54    -1.1515819506861302
#>     Attrib V55    0.11206856874499686
#>     Attrib V56    -0.31731004412539365
#>     Attrib V57    1.1182981600778243
#>     Attrib V58    -0.5569339033490791
#>     Attrib V59    -0.17123886399959756
#>     Attrib V6    1.070584375031473
#>     Attrib V60    -0.10831759282857313
#>     Attrib V7    0.022288414528792762
#>     Attrib V8    0.5857517813387213
#>     Attrib V9    -0.8035506505823654
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.05368443272655717
#>     Attrib V1    0.2497037884986415
#>     Attrib V10    -0.2772639743696986
#>     Attrib V11    0.023809649997175754
#>     Attrib V12    -0.11091420243696751
#>     Attrib V13    -0.15584506780033194
#>     Attrib V14    0.05951184805037098
#>     Attrib V15    0.14599604124293838
#>     Attrib V16    0.20007785201104053
#>     Attrib V17    0.09977464760795732
#>     Attrib V18    0.0359473688538537
#>     Attrib V19    -0.12605943264431801
#>     Attrib V2    0.2590188068591807
#>     Attrib V20    0.20343766700695495
#>     Attrib V21    0.2210179408486531
#>     Attrib V22    -0.07470841407702676
#>     Attrib V23    -0.1348124715583896
#>     Attrib V24    -0.08510841046220594
#>     Attrib V25    -0.4272472375813099
#>     Attrib V26    -0.525737755636972
#>     Attrib V27    -0.5355473932430868
#>     Attrib V28    -0.31188198812019463
#>     Attrib V29    -0.3116732244865579
#>     Attrib V3    0.08352933580660847
#>     Attrib V30    0.07290775044556556
#>     Attrib V31    -0.5210926750261166
#>     Attrib V32    0.20640961172902783
#>     Attrib V33    0.4175114604706447
#>     Attrib V34    -0.060121216635152415
#>     Attrib V35    -0.12360086063628502
#>     Attrib V36    -0.30416149318645636
#>     Attrib V37    -0.310602443878195
#>     Attrib V38    0.12872255042632527
#>     Attrib V39    0.165912518135566
#>     Attrib V4    0.16639016013040872
#>     Attrib V40    -0.00240406484397386
#>     Attrib V41    -0.23981001268962948
#>     Attrib V42    0.03846503350798055
#>     Attrib V43    0.040574768121032015
#>     Attrib V44    0.151832448563858
#>     Attrib V45    0.24981718625992555
#>     Attrib V46    0.06651239425798608
#>     Attrib V47    -0.2586025013222756
#>     Attrib V48    0.25374693264901116
#>     Attrib V49    0.4337788716971899
#>     Attrib V5    -0.06645131904300985
#>     Attrib V50    -0.36982969319144704
#>     Attrib V51    -0.11226522101761854
#>     Attrib V52    0.17141258252199
#>     Attrib V53    -0.05461787854790526
#>     Attrib V54    0.4238288473388972
#>     Attrib V55    0.2541664428876422
#>     Attrib V56    0.23896035261660317
#>     Attrib V57    0.15950976165819644
#>     Attrib V58    0.33161585664621496
#>     Attrib V59    0.16766031291238986
#>     Attrib V6    -0.4045359110607081
#>     Attrib V60    -0.018563009902990334
#>     Attrib V7    0.007947527150876774
#>     Attrib V8    -0.24773267148518535
#>     Attrib V9    0.04134358355895055
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.08176345432672334
#>     Attrib V1    0.009070221387298542
#>     Attrib V10    -0.3032372995614584
#>     Attrib V11    0.43543689280942405
#>     Attrib V12    0.20691170524227148
#>     Attrib V13    -0.01943822498333349
#>     Attrib V14    -0.1365290505773457
#>     Attrib V15    -0.009214456376305549
#>     Attrib V16    0.06363747894628177
#>     Attrib V17    0.14809155598034557
#>     Attrib V18    0.17676282958615575
#>     Attrib V19    -0.062317155044204355
#>     Attrib V2    0.21881984580574726
#>     Attrib V20    0.3203949158796763
#>     Attrib V21    0.5219587421164787
#>     Attrib V22    0.48163135393290146
#>     Attrib V23    0.5604131396556723
#>     Attrib V24    0.2931834325247068
#>     Attrib V25    -0.22162859638269608
#>     Attrib V26    -0.33288357210120506
#>     Attrib V27    -0.5059687969215654
#>     Attrib V28    -0.15200338856509052
#>     Attrib V29    -0.681177507044819
#>     Attrib V3    0.12741767901853573
#>     Attrib V30    0.37332414751828746
#>     Attrib V31    -1.1606332442669909
#>     Attrib V32    0.3960788140843945
#>     Attrib V33    0.8404965132997767
#>     Attrib V34    -0.20188752382261146
#>     Attrib V35    -0.0903024622411755
#>     Attrib V36    -0.45082055346403066
#>     Attrib V37    -0.5632666984688833
#>     Attrib V38    0.1982197128417119
#>     Attrib V39    0.10350834495078999
#>     Attrib V4    0.333169644668431
#>     Attrib V40    -0.11443944040898123
#>     Attrib V41    -0.3141437415180052
#>     Attrib V42    0.23938782464620104
#>     Attrib V43    0.2311153069470389
#>     Attrib V44    0.5163138836969798
#>     Attrib V45    0.6339859575431553
#>     Attrib V46    0.14676668861988953
#>     Attrib V47    -0.35130118427244456
#>     Attrib V48    0.36775509142320295
#>     Attrib V49    0.7671977681337835
#>     Attrib V5    -2.4435475435109565E-4
#>     Attrib V50    -1.136055939156023
#>     Attrib V51    -0.08404582779785749
#>     Attrib V52    0.5407116807019464
#>     Attrib V53    0.2136304595318734
#>     Attrib V54    0.7404197014172453
#>     Attrib V55    0.05450415664642947
#>     Attrib V56    0.2858950956036752
#>     Attrib V57    -0.4032368561980272
#>     Attrib V58    0.390420842658568
#>     Attrib V59    0.14715069302117667
#>     Attrib V6    -0.8041351844995857
#>     Attrib V60    -0.1452583941424672
#>     Attrib V7    0.06239919356695415
#>     Attrib V8    -0.3207717695918988
#>     Attrib V9    0.41959291223448514
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.41161030019297445
#>     Attrib V1    0.21769510070308473
#>     Attrib V10    0.035646423598557776
#>     Attrib V11    -0.8643833300984939
#>     Attrib V12    -0.6732527294667141
#>     Attrib V13    -0.23709091891624945
#>     Attrib V14    0.37114799764750867
#>     Attrib V15    0.26256493920544915
#>     Attrib V16    0.21040364780898638
#>     Attrib V17    0.20785899476987896
#>     Attrib V18    -0.04784948405478694
#>     Attrib V19    0.2720525939496052
#>     Attrib V2    -0.38281124005444234
#>     Attrib V20    -0.21208315868144353
#>     Attrib V21    -0.5123742676760294
#>     Attrib V22    -0.6158992685362138
#>     Attrib V23    -0.6698542783669587
#>     Attrib V24    -0.3404194738776065
#>     Attrib V25    0.4182478938764542
#>     Attrib V26    0.28696004668032327
#>     Attrib V27    0.2766827926287811
#>     Attrib V28    -0.08373991531413663
#>     Attrib V29    0.3740815720001938
#>     Attrib V3    -0.060016883935416154
#>     Attrib V30    -0.8792129333186689
#>     Attrib V31    1.4451193595066827
#>     Attrib V32    -0.35480075025794117
#>     Attrib V33    -0.9506081302484699
#>     Attrib V34    0.22737709247856336
#>     Attrib V35    0.041626407994856486
#>     Attrib V36    0.4620833111999774
#>     Attrib V37    0.31427408942573
#>     Attrib V38    -0.2958420481988101
#>     Attrib V39    -0.15944135275734825
#>     Attrib V4    -0.2236665142396794
#>     Attrib V40    0.0071443239499359296
#>     Attrib V41    0.084339898960463
#>     Attrib V42    -0.24049910198451394
#>     Attrib V43    -0.1694136575877994
#>     Attrib V44    -0.6401429082486
#>     Attrib V45    -0.9809851917981993
#>     Attrib V46    -0.25452680401143485
#>     Attrib V47    0.5809822359454387
#>     Attrib V48    -0.4309254771756917
#>     Attrib V49    -1.13758669973137
#>     Attrib V5    -0.006450281716782405
#>     Attrib V50    1.59501180539629
#>     Attrib V51    0.16590930183689634
#>     Attrib V52    -0.5454285737998372
#>     Attrib V53    -0.2531767458176035
#>     Attrib V54    -0.5996615035906149
#>     Attrib V55    0.2728771978497805
#>     Attrib V56    -0.007954883918645727
#>     Attrib V57    0.8118535961763524
#>     Attrib V58    -0.17823314739511148
#>     Attrib V59    0.19104748201351932
#>     Attrib V6    0.9558671431235722
#>     Attrib V60    0.22361642715732935
#>     Attrib V7    -0.07915141059907302
#>     Attrib V8    0.40820365407281456
#>     Attrib V9    -0.714245865783966
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.22647525620830364
#>     Attrib V1    -0.7742426098321253
#>     Attrib V10    0.552267834651036
#>     Attrib V11    1.1977099279584729
#>     Attrib V12    1.3454382307866977
#>     Attrib V13    1.0502309436340744
#>     Attrib V14    -0.029458104624931293
#>     Attrib V15    -0.48656678431754585
#>     Attrib V16    -0.698577417914955
#>     Attrib V17    -0.6136467062217741
#>     Attrib V18    0.26366879947356975
#>     Attrib V19    -0.14545565312100428
#>     Attrib V2    0.5455357636927518
#>     Attrib V20    -0.17424144941698394
#>     Attrib V21    0.32002562499086173
#>     Attrib V22    1.0426210520972827
#>     Attrib V23    1.5303899113623165
#>     Attrib V24    0.7067603514670221
#>     Attrib V25    0.12978897480693205
#>     Attrib V26    0.7566588607874417
#>     Attrib V27    1.0700013204505476
#>     Attrib V28    1.1328284399088266
#>     Attrib V29    0.6708712065445722
#>     Attrib V3    0.19750365201126815
#>     Attrib V30    0.7863965648970719
#>     Attrib V31    -1.356612603987907
#>     Attrib V32    -0.11358703610740124
#>     Attrib V33    0.17449702511405948
#>     Attrib V34    -0.32291601933674446
#>     Attrib V35    0.2159663385267372
#>     Attrib V36    -0.47516533084869655
#>     Attrib V37    -0.49907646399627525
#>     Attrib V38    -0.8751140614401648
#>     Attrib V39    -0.6328177369884579
#>     Attrib V4    0.5419185876159825
#>     Attrib V40    0.36181841089020955
#>     Attrib V41    1.0383970489982517
#>     Attrib V42    0.3683648094428934
#>     Attrib V43    0.2765919315365333
#>     Attrib V44    0.32132560829820334
#>     Attrib V45    0.5603697148287464
#>     Attrib V46    0.6796939421492866
#>     Attrib V47    0.1325602238774493
#>     Attrib V48    0.5937011443486486
#>     Attrib V49    1.255727771534486
#>     Attrib V5    0.6827567909745464
#>     Attrib V50    -1.0168768944547484
#>     Attrib V51    0.5192912061073922
#>     Attrib V52    1.2433466595550955
#>     Attrib V53    1.398821587487537
#>     Attrib V54    0.2935532959003376
#>     Attrib V55    -0.6138505894398073
#>     Attrib V56    -0.6366702529862164
#>     Attrib V57    -1.3919476940982267
#>     Attrib V58    -0.02445540452612857
#>     Attrib V59    -0.4657814464704925
#>     Attrib V6    -0.07787176311046075
#>     Attrib V60    -0.17635024905155577
#>     Attrib V7    0.24539975657530377
#>     Attrib V8    0.03171528221210157
#>     Attrib V9    1.1162934835601857
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.3492420847749261
#>     Attrib V1    0.10260907462523441
#>     Attrib V10    0.056388364721354035
#>     Attrib V11    -0.38054305029060875
#>     Attrib V12    -0.29031776847253515
#>     Attrib V13    -0.09763636696332267
#>     Attrib V14    0.04523697908181492
#>     Attrib V15    -0.11308654689814683
#>     Attrib V16    -0.09502964204220027
#>     Attrib V17    -0.08983104665685529
#>     Attrib V18    -0.05855102415185079
#>     Attrib V19    0.04373701382948947
#>     Attrib V2    -0.07379431369085056
#>     Attrib V20    -0.17478414172166706
#>     Attrib V21    -0.07763588088884057
#>     Attrib V22    0.024583085936224852
#>     Attrib V23    0.062151540525341845
#>     Attrib V24    -0.014066804596174067
#>     Attrib V25    0.04947508763283804
#>     Attrib V26    -0.22780173269993034
#>     Attrib V27    -0.14178923832081022
#>     Attrib V28    -0.0296908401063415
#>     Attrib V29    0.09789526546553536
#>     Attrib V3    -0.017108196114037286
#>     Attrib V30    -0.13643299046892582
#>     Attrib V31    0.6502310638210613
#>     Attrib V32    0.3063989405483247
#>     Attrib V33    0.17101225730301126
#>     Attrib V34    0.2845919685462271
#>     Attrib V35    0.3477908801263823
#>     Attrib V36    0.4489633990219893
#>     Attrib V37    0.29890874710040277
#>     Attrib V38    -0.015944598075656728
#>     Attrib V39    0.00231366750714597
#>     Attrib V4    0.0891419847448753
#>     Attrib V40    0.2120352165919152
#>     Attrib V41    0.37592210859324193
#>     Attrib V42    0.19577401184799934
#>     Attrib V43    0.19901624745265364
#>     Attrib V44    0.10533417406660622
#>     Attrib V45    -0.28705159189104185
#>     Attrib V46    -0.1418088768186496
#>     Attrib V47    0.08211548208212885
#>     Attrib V48    -0.21123105733491854
#>     Attrib V49    -0.42691247813207683
#>     Attrib V5    -2.128793022605256E-4
#>     Attrib V50    0.49540764757443106
#>     Attrib V51    0.13245450116258536
#>     Attrib V52    -0.12171482652415731
#>     Attrib V53    0.03537236950890964
#>     Attrib V54    -0.06442297544823666
#>     Attrib V55    -0.05490188576501742
#>     Attrib V56    0.1412111662153209
#>     Attrib V57    0.2952979487288677
#>     Attrib V58    0.10401032445332108
#>     Attrib V59    0.21446129314281068
#>     Attrib V6    0.44751578599368885
#>     Attrib V60    0.30194875116982395
#>     Attrib V7    0.18543758745462127
#>     Attrib V8    0.2543401994611756
#>     Attrib V9    -0.15986917017812602
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.3235129552619898
#>     Attrib V1    0.03582734414255213
#>     Attrib V10    -0.11647140991874023
#>     Attrib V11    0.3738527674702823
#>     Attrib V12    0.15499763225253482
#>     Attrib V13    0.022286400613295388
#>     Attrib V14    -0.10699277744848332
#>     Attrib V15    0.07841776702660253
#>     Attrib V16    -0.009125052360444488
#>     Attrib V17    -0.13304273122066065
#>     Attrib V18    0.012695201000052682
#>     Attrib V19    -0.28523871511326077
#>     Attrib V2    0.32316923779233814
#>     Attrib V20    -0.002937139378714481
#>     Attrib V21    0.264076915781037
#>     Attrib V22    0.08480213384526301
#>     Attrib V23    0.055829185079027274
#>     Attrib V24    -0.07632300285240277
#>     Attrib V25    -0.5492219389149723
#>     Attrib V26    -0.3477018052533715
#>     Attrib V27    -0.24685505861070137
#>     Attrib V28    0.0883448834432669
#>     Attrib V29    -0.16815657079488908
#>     Attrib V3    0.015745637524546614
#>     Attrib V30    0.42822443633442586
#>     Attrib V31    -0.9334002811157629
#>     Attrib V32    0.3470372863916178
#>     Attrib V33    0.6607523585563145
#>     Attrib V34    -0.11173783592833614
#>     Attrib V35    -0.09452508680110454
#>     Attrib V36    -0.47529479246347384
#>     Attrib V37    -0.5204859594333635
#>     Attrib V38    -0.03681347176520908
#>     Attrib V39    0.026207325611675283
#>     Attrib V4    0.17139938557274007
#>     Attrib V40    -0.09186320988929692
#>     Attrib V41    -0.13419530501683768
#>     Attrib V42    0.031190668311819318
#>     Attrib V43    -0.029263790980059927
#>     Attrib V44    0.3013202074656652
#>     Attrib V45    0.5935846700829572
#>     Attrib V46    0.09292104389993847
#>     Attrib V47    -0.35088334266649174
#>     Attrib V48    0.45676285445757814
#>     Attrib V49    0.7807410279167353
#>     Attrib V5    -0.10190991557289798
#>     Attrib V50    -0.7755412459446049
#>     Attrib V51    -0.09890232135534238
#>     Attrib V52    0.34922757106058594
#>     Attrib V53    0.042132088756681264
#>     Attrib V54    0.49251421841335474
#>     Attrib V55    0.035789847716117526
#>     Attrib V56    -0.03270706514641194
#>     Attrib V57    -0.24879757146967052
#>     Attrib V58    0.27020448760462107
#>     Attrib V59    -0.041009898706414485
#>     Attrib V6    -0.5892410676705928
#>     Attrib V60    -0.17058088176382244
#>     Attrib V7    0.012740646573409335
#>     Attrib V8    -0.21053893955548908
#>     Attrib V9    0.3876537188214116
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.3193528359820205
#>     Attrib V1    1.0074626374986515
#>     Attrib V10    -0.3026183436839059
#>     Attrib V11    -1.5250489519683768
#>     Attrib V12    -1.9514751123215768
#>     Attrib V13    -1.336084158479849
#>     Attrib V14    0.06983720921658909
#>     Attrib V15    0.4945560293561351
#>     Attrib V16    0.7393958533434398
#>     Attrib V17    0.44711651335446945
#>     Attrib V18    -0.36145931407254894
#>     Attrib V19    0.10904559308201452
#>     Attrib V2    -0.6177022459435108
#>     Attrib V20    0.30800725232364906
#>     Attrib V21    0.03812817294676441
#>     Attrib V22    -0.9126064652187563
#>     Attrib V23    -1.648085079154616
#>     Attrib V24    -1.1353153222768468
#>     Attrib V25    -0.7592431145442108
#>     Attrib V26    -0.9742399907059657
#>     Attrib V27    -0.8768462666406229
#>     Attrib V28    -0.7445786784306028
#>     Attrib V29    0.09844964496506897
#>     Attrib V3    -0.24754933520005967
#>     Attrib V30    -0.7292345712561507
#>     Attrib V31    1.3811215328299649
#>     Attrib V32    -0.03049412145139327
#>     Attrib V33    -0.46714271062356494
#>     Attrib V34    0.23743316305212192
#>     Attrib V35    -0.30739435601452214
#>     Attrib V36    0.4939542184002857
#>     Attrib V37    0.45451617449233617
#>     Attrib V38    0.5575880427911429
#>     Attrib V39    0.5829878394217889
#>     Attrib V4    -0.41564236121351555
#>     Attrib V40    -0.38306703818731735
#>     Attrib V41    -0.6433210565759856
#>     Attrib V42    -0.3038068504447626
#>     Attrib V43    -0.3743467706565343
#>     Attrib V44    -0.36332196937965416
#>     Attrib V45    -0.5583350709382809
#>     Attrib V46    -0.601722755104491
#>     Attrib V47    -0.03704567457020727
#>     Attrib V48    -0.7231022544825312
#>     Attrib V49    -1.3431783572143674
#>     Attrib V5    -0.7514873634652973
#>     Attrib V50    1.6365688838834107
#>     Attrib V51    -0.4466125863245329
#>     Attrib V52    -1.4544510443966479
#>     Attrib V53    -1.934429781916583
#>     Attrib V54    -0.6037620520342751
#>     Attrib V55    0.6078601264498139
#>     Attrib V56    0.34150859931315986
#>     Attrib V57    1.8385639503515407
#>     Attrib V58    -0.05407493629062567
#>     Attrib V59    0.4130519414352958
#>     Attrib V6    0.35635552132552634
#>     Attrib V60    0.2037462110022244
#>     Attrib V7    -0.19065797363513806
#>     Attrib V8    0.36727342841671906
#>     Attrib V9    -1.14110657885535
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.11238300123581464
#>     Attrib V1    0.03949564666163324
#>     Attrib V10    -0.08845038864191629
#>     Attrib V11    0.291360303843033
#>     Attrib V12    0.12367882809726717
#>     Attrib V13    -0.033386699758976984
#>     Attrib V14    0.05734663722410058
#>     Attrib V15    0.06564749564126311
#>     Attrib V16    -0.04789337786051111
#>     Attrib V17    -0.10995018159857056
#>     Attrib V18    -0.09477159207158398
#>     Attrib V19    -0.33054150576610775
#>     Attrib V2    0.22729053616204975
#>     Attrib V20    -0.03267115312283911
#>     Attrib V21    0.019980265491782737
#>     Attrib V22    -0.15105880815678885
#>     Attrib V23    -0.22642850000499395
#>     Attrib V24    -0.20189526749939876
#>     Attrib V25    -0.3501245194096846
#>     Attrib V26    -0.26252389890129774
#>     Attrib V27    -0.13182796997690022
#>     Attrib V28    0.05544728352216766
#>     Attrib V29    0.0031486172448665505
#>     Attrib V3    0.10132676551294333
#>     Attrib V30    0.2371218753544536
#>     Attrib V31    -0.5235809549980284
#>     Attrib V32    0.21303157813327903
#>     Attrib V33    0.4201863150496229
#>     Attrib V34    -0.03158712369898398
#>     Attrib V35    -0.016604150375994685
#>     Attrib V36    -0.2500384059106059
#>     Attrib V37    -0.2264630042922387
#>     Attrib V38    0.06160973021403388
#>     Attrib V39    0.0844394000332628
#>     Attrib V4    0.11737550931060513
#>     Attrib V40    -0.02483847685957845
#>     Attrib V41    -0.13911695951309955
#>     Attrib V42    -0.062350768532358256
#>     Attrib V43    0.020272240858326584
#>     Attrib V44    0.05550332788557507
#>     Attrib V45    0.40956925479413986
#>     Attrib V46    0.15602792866174947
#>     Attrib V47    -0.06038891466881395
#>     Attrib V48    0.3808037011808679
#>     Attrib V49    0.535804921702599
#>     Attrib V5    -0.08506887263676768
#>     Attrib V50    -0.277851931988565
#>     Attrib V51    0.011017097532545657
#>     Attrib V52    0.2930267429190351
#>     Attrib V53    0.003700787903017119
#>     Attrib V54    0.2549160895910382
#>     Attrib V55    0.19045509152617038
#>     Attrib V56    0.06292206325873224
#>     Attrib V57    -0.03804512267553084
#>     Attrib V58    0.16207542057453636
#>     Attrib V59    -0.03448704163326963
#>     Attrib V6    -0.37329811420409376
#>     Attrib V60    -0.07844195626336743
#>     Attrib V7    -0.028384910464277307
#>     Attrib V8    -0.10446341151584593
#>     Attrib V9    0.19073071337729222
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.13800833089901637
#>     Attrib V1    0.10936726587235987
#>     Attrib V10    0.05155623112285558
#>     Attrib V11    0.04857450492477448
#>     Attrib V12    0.038859293353367914
#>     Attrib V13    0.036001662243518556
#>     Attrib V14    0.05078017450856529
#>     Attrib V15    0.05835841822458237
#>     Attrib V16    0.021490243251729005
#>     Attrib V17    0.042233975765051196
#>     Attrib V18    -0.020419495207949008
#>     Attrib V19    -0.0938445852468105
#>     Attrib V2    0.14298199426678102
#>     Attrib V20    -0.05742795378526007
#>     Attrib V21    -0.009897600419115665
#>     Attrib V22    -0.07969898417335189
#>     Attrib V23    -0.06065886339132756
#>     Attrib V24    -0.07966939464274311
#>     Attrib V25    -0.024978801729577102
#>     Attrib V26    0.003897817181252519
#>     Attrib V27    -0.06819615748857412
#>     Attrib V28    -0.02077049212177753
#>     Attrib V29    -0.08204942968925358
#>     Attrib V3    0.07473324799984703
#>     Attrib V30    0.05883458328896451
#>     Attrib V31    -0.04868554098645725
#>     Attrib V32    0.013977569112349642
#>     Attrib V33    0.07000351859695529
#>     Attrib V34    0.03603941609655409
#>     Attrib V35    0.11148872687929219
#>     Attrib V36    0.03581176278462524
#>     Attrib V37    0.0817994735980688
#>     Attrib V38    0.06631305799006054
#>     Attrib V39    0.1325422828336222
#>     Attrib V4    0.13856184238696004
#>     Attrib V40    0.081157924504526
#>     Attrib V41    0.015136882455371146
#>     Attrib V42    0.06613061137906454
#>     Attrib V43    0.0037420360878933205
#>     Attrib V44    0.03042477711283211
#>     Attrib V45    0.11957418937609636
#>     Attrib V46    0.09972980745526058
#>     Attrib V47    0.032908144998739
#>     Attrib V48    0.14918374632498058
#>     Attrib V49    0.10116940112683714
#>     Attrib V5    0.028158234603323392
#>     Attrib V50    0.003566747376187504
#>     Attrib V51    0.052015997728283164
#>     Attrib V52    0.11015313990572363
#>     Attrib V53    0.047874510519727256
#>     Attrib V54    0.11452000146471612
#>     Attrib V55    0.0967981997170611
#>     Attrib V56    0.13382795044831652
#>     Attrib V57    0.047425269653679034
#>     Attrib V58    0.13858238355326005
#>     Attrib V59    0.109491874876573
#>     Attrib V6    -0.020032113099767837
#>     Attrib V60    0.05064301895880105
#>     Attrib V7    -0.005794627833261248
#>     Attrib V8    -0.01479183834722406
#>     Attrib V9    0.054914266618444126
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.015095989147992915
#>     Attrib V1    0.19526923276432742
#>     Attrib V10    -0.46371064632214654
#>     Attrib V11    0.12811828847207254
#>     Attrib V12    -0.23273809756344893
#>     Attrib V13    -0.22424882962656062
#>     Attrib V14    0.015087719941022964
#>     Attrib V15    0.2776298464554495
#>     Attrib V16    0.3537982947162463
#>     Attrib V17    0.2265723306300145
#>     Attrib V18    0.05118025931091469
#>     Attrib V19    -0.158205683947224
#>     Attrib V2    0.31156339392614213
#>     Attrib V20    0.43459099422836894
#>     Attrib V21    0.49108443016691733
#>     Attrib V22    0.22021279919883938
#>     Attrib V23    0.2256533608814344
#>     Attrib V24    0.13906143739816715
#>     Attrib V25    -0.5616023994338708
#>     Attrib V26    -0.8027325982038613
#>     Attrib V27    -0.9244655448650645
#>     Attrib V28    -0.4614326530588024
#>     Attrib V29    -0.9072673557518818
#>     Attrib V3    0.11089448325849903
#>     Attrib V30    0.16770628843441296
#>     Attrib V31    -1.070233932223391
#>     Attrib V32    0.5262273266405061
#>     Attrib V33    1.0349046741131576
#>     Attrib V34    -0.11523245531603754
#>     Attrib V35    -0.30326866048583195
#>     Attrib V36    -0.7307766186976801
#>     Attrib V37    -0.793130139530096
#>     Attrib V38    0.29533171643064604
#>     Attrib V39    0.23761948611004957
#>     Attrib V4    0.2859953910750677
#>     Attrib V40    -0.03222942500252836
#>     Attrib V41    -0.40518396402490275
#>     Attrib V42    0.2814205989667616
#>     Attrib V43    0.12366718879880814
#>     Attrib V44    0.5123499787300525
#>     Attrib V45    0.5666125805896192
#>     Attrib V46    0.06975610554458184
#>     Attrib V47    -0.4416457034401182
#>     Attrib V48    0.4720957975719193
#>     Attrib V49    0.7968581220208094
#>     Attrib V5    -0.21545603416345188
#>     Attrib V50    -1.047879807129736
#>     Attrib V51    -0.19759548578135364
#>     Attrib V52    0.37180169398696383
#>     Attrib V53    -0.014206345781894832
#>     Attrib V54    0.8207935878410023
#>     Attrib V55    0.2293298612692758
#>     Attrib V56    0.43799040028201813
#>     Attrib V57    0.004178425589037395
#>     Attrib V58    0.49971530118608515
#>     Attrib V59    0.26162169818614195
#>     Attrib V6    -0.893265447471354
#>     Attrib V60    -0.14025941182201357
#>     Attrib V7    0.08754381358248682
#>     Attrib V8    -0.28100555384617837
#>     Attrib V9    0.26495729519343436
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.027351795915082876
#>     Attrib V1    0.1296382473427036
#>     Attrib V10    -0.21018953116518171
#>     Attrib V11    0.08107579424226682
#>     Attrib V12    -0.04309989276218912
#>     Attrib V13    -0.11383517185239173
#>     Attrib V14    0.07644454291900729
#>     Attrib V15    0.11954357227936245
#>     Attrib V16    0.1021441565141088
#>     Attrib V17    -0.0064411944260697645
#>     Attrib V18    0.04860005640265991
#>     Attrib V19    -0.17696386007586073
#>     Attrib V2    0.17641906305342336
#>     Attrib V20    0.08642587425933156
#>     Attrib V21    0.13082728974707683
#>     Attrib V22    -0.09302381406288299
#>     Attrib V23    -0.0952042745586362
#>     Attrib V24    -0.17177263959932348
#>     Attrib V25    -0.38194031672144124
#>     Attrib V26    -0.32125778901506274
#>     Attrib V27    -0.2532692945917491
#>     Attrib V28    -0.013644047987613542
#>     Attrib V29    -0.10416369419282559
#>     Attrib V3    0.09100383543682027
#>     Attrib V30    0.19415074057728596
#>     Attrib V31    -0.5126577256415091
#>     Attrib V32    0.1126221853378466
#>     Attrib V33    0.3483993505057954
#>     Attrib V34    -0.025217744296425593
#>     Attrib V35    -0.01743023543652007
#>     Attrib V36    -0.11646001707751948
#>     Attrib V37    -0.17885588366795624
#>     Attrib V38    0.08267475427818617
#>     Attrib V39    0.13482365516395273
#>     Attrib V4    0.11470791627267765
#>     Attrib V40    -0.04065886547497414
#>     Attrib V41    -0.18061917968798974
#>     Attrib V42    0.045747788387939
#>     Attrib V43    -0.03594407775859933
#>     Attrib V44    0.1683743032530558
#>     Attrib V45    0.3506396296919139
#>     Attrib V46    0.1142300839809176
#>     Attrib V47    -0.12249486512680444
#>     Attrib V48    0.2007742183236592
#>     Attrib V49    0.42799267199828933
#>     Attrib V5    -0.03633042300093186
#>     Attrib V50    -0.29184335451415466
#>     Attrib V51    -0.04068907208374479
#>     Attrib V52    0.20096188026038334
#>     Attrib V53    -0.004367237047164861
#>     Attrib V54    0.22503674629116058
#>     Attrib V55    0.13370372718711385
#>     Attrib V56    0.08208045161558677
#>     Attrib V57    0.04705777128448633
#>     Attrib V58    0.23813160749733156
#>     Attrib V59    0.044246228978922615
#>     Attrib V6    -0.31531431495009404
#>     Attrib V60    -0.0987827573508682
#>     Attrib V7    -0.008618527417941372
#>     Attrib V8    -0.096286750944425
#>     Attrib V9    0.10842157465314291
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
