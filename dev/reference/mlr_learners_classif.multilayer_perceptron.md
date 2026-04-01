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
#>     Threshold    -0.023014423344861888
#>     Node 2    2.774955469312554
#>     Node 3    1.706419229832639
#>     Node 4    1.0192041513348058
#>     Node 5    -1.7874212791627389
#>     Node 6    0.2240062653742987
#>     Node 7    2.264214612272494
#>     Node 8    0.7096121374935598
#>     Node 9    2.375877097239731
#>     Node 10    -2.0558847116881127
#>     Node 11    1.3019334984189423
#>     Node 12    1.4030440046752042
#>     Node 13    0.3682358232053841
#>     Node 14    1.3806383370964677
#>     Node 15    -1.9399925820488397
#>     Node 16    -1.0186917001488487
#>     Node 17    0.082702070950511
#>     Node 18    -0.6009967275000069
#>     Node 19    1.7901443872225575
#>     Node 20    2.55636380556966
#>     Node 21    -1.6125496112785902
#>     Node 22    0.5380072944955829
#>     Node 23    0.3251916116267084
#>     Node 24    -1.0316032439062657
#>     Node 25    6.262256601217616
#>     Node 26    -1.2895169282581849
#>     Node 27    1.6581525234465555
#>     Node 28    -3.10352231395822
#>     Node 29    0.37308870469725075
#>     Node 30    0.5309051921400952
#>     Node 31    0.2133684868575333
#>     Node 32    -0.10399539198723497
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.04894899937396035
#>     Node 2    -2.82118912028813
#>     Node 3    -1.685186207670207
#>     Node 4    -0.9757947229348944
#>     Node 5    1.796137934859039
#>     Node 6    -0.21133484935389688
#>     Node 7    -2.263903517313082
#>     Node 8    -0.7464844151885786
#>     Node 9    -2.3791780313839905
#>     Node 10    2.028202792899293
#>     Node 11    -1.2595944326741944
#>     Node 12    -1.4719111392948654
#>     Node 13    -0.3182766251840319
#>     Node 14    -1.305751175305118
#>     Node 15    1.9259367761530766
#>     Node 16    1.00382029615219
#>     Node 17    -0.06424753790154684
#>     Node 18    0.64083316661882
#>     Node 19    -1.7816026081912701
#>     Node 20    -2.540823159435871
#>     Node 21    1.6665410652483692
#>     Node 22    -0.5914106125530046
#>     Node 23    -0.3747702470926411
#>     Node 24    1.020247905620984
#>     Node 25    -6.280232280299653
#>     Node 26    1.2149698069291142
#>     Node 27    -1.6880199392911106
#>     Node 28    3.09268063061062
#>     Node 29    -0.410169298007745
#>     Node 30    -0.45792158762252266
#>     Node 31    -0.16582359340532327
#>     Node 32    0.07325015236555722
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.04006613187379637
#>     Attrib V1    0.2954682582624731
#>     Attrib V10    0.4064255456047502
#>     Attrib V11    0.32949671026289923
#>     Attrib V12    0.1643460864593181
#>     Attrib V13    -0.36585546872033015
#>     Attrib V14    -0.45798373821091337
#>     Attrib V15    -0.7491881824655944
#>     Attrib V16    -0.04070257724366489
#>     Attrib V17    0.5967697844102758
#>     Attrib V18    0.6625917764449617
#>     Attrib V19    0.8462888470688064
#>     Attrib V2    -0.00920911835441182
#>     Attrib V20    0.879629457123165
#>     Attrib V21    0.35949159298710925
#>     Attrib V22    0.5172737213204136
#>     Attrib V23    1.4245235808640067
#>     Attrib V24    0.960802574629839
#>     Attrib V25    -0.33362294169730866
#>     Attrib V26    -0.8176784823221849
#>     Attrib V27    -0.8249445943523542
#>     Attrib V28    0.04057919396268607
#>     Attrib V29    -0.9604886536929235
#>     Attrib V3    -0.16105254082549442
#>     Attrib V30    -0.1550772695069813
#>     Attrib V31    -1.4581982709231656
#>     Attrib V32    -0.09605881209972617
#>     Attrib V33    0.4293906714494792
#>     Attrib V34    0.22600648561906744
#>     Attrib V35    0.2977360716506415
#>     Attrib V36    -0.31799363348524895
#>     Attrib V37    -1.2100424228529798
#>     Attrib V38    0.5153983476820846
#>     Attrib V39    0.24808997839242053
#>     Attrib V4    0.2158533489270529
#>     Attrib V40    -0.5228325698832379
#>     Attrib V41    -0.23679701186110988
#>     Attrib V42    0.3751993253570645
#>     Attrib V43    0.8309605313224163
#>     Attrib V44    0.8570724543258241
#>     Attrib V45    0.4738724075621258
#>     Attrib V46    0.2292568415524748
#>     Attrib V47    -0.18561574439524592
#>     Attrib V48    -0.09939173023329212
#>     Attrib V49    0.8542670723044242
#>     Attrib V5    -0.1849772571121725
#>     Attrib V50    0.09401777381394391
#>     Attrib V51    0.21374779492473564
#>     Attrib V52    -0.16585017105162309
#>     Attrib V53    -0.32911868187911564
#>     Attrib V54    0.9489700043632072
#>     Attrib V55    -0.15068182340577607
#>     Attrib V56    0.8780480028488651
#>     Attrib V57    -0.8074136743669391
#>     Attrib V58    0.11332598613595275
#>     Attrib V59    0.3275022971716721
#>     Attrib V6    -0.3480017051136862
#>     Attrib V60    0.5303133965023507
#>     Attrib V7    0.20510689648912533
#>     Attrib V8    0.5773720649523755
#>     Attrib V9    1.1217640507665054
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.08256981465631069
#>     Attrib V1    0.34167961549950887
#>     Attrib V10    0.06671391477850928
#>     Attrib V11    0.07547791694740563
#>     Attrib V12    0.04824311877694775
#>     Attrib V13    -0.183554884769951
#>     Attrib V14    -0.128649270457856
#>     Attrib V15    -0.2172846628922663
#>     Attrib V16    0.023389256568120607
#>     Attrib V17    0.4350361084545931
#>     Attrib V18    0.36798387183297454
#>     Attrib V19    0.46570337389161587
#>     Attrib V2    0.14479493598574855
#>     Attrib V20    0.5344665510345502
#>     Attrib V21    0.23549588145112763
#>     Attrib V22    0.3240436127460711
#>     Attrib V23    0.8475742362555718
#>     Attrib V24    0.46807064194296444
#>     Attrib V25    -0.37613138632020576
#>     Attrib V26    -0.6791314229526297
#>     Attrib V27    -0.6380164717073865
#>     Attrib V28    -0.08042508059593102
#>     Attrib V29    -0.5948652867973816
#>     Attrib V3    -0.023046717828149866
#>     Attrib V30    0.005782582986751442
#>     Attrib V31    -0.890245002378846
#>     Attrib V32    -0.10773544747678962
#>     Attrib V33    0.2662227887452559
#>     Attrib V34    0.007732394746938089
#>     Attrib V35    0.026422734125592595
#>     Attrib V36    -0.311517041091542
#>     Attrib V37    -0.8290380473896733
#>     Attrib V38    0.2152307642228291
#>     Attrib V39    0.16739018073469714
#>     Attrib V4    0.23145683842410378
#>     Attrib V40    -0.35174945369309774
#>     Attrib V41    -0.13453259344046248
#>     Attrib V42    0.33558130646931883
#>     Attrib V43    0.574893607358888
#>     Attrib V44    0.5475581313398378
#>     Attrib V45    0.2681782054447013
#>     Attrib V46    0.08469307936464851
#>     Attrib V47    -0.15060398930644087
#>     Attrib V48    -0.14572065480178226
#>     Attrib V49    0.5060369161909226
#>     Attrib V5    -0.10565659008300235
#>     Attrib V50    0.04654482651231297
#>     Attrib V51    0.10384003750464056
#>     Attrib V52    -0.061035305955330854
#>     Attrib V53    -0.07461477460010199
#>     Attrib V54    0.7531860207855341
#>     Attrib V55    0.010686266619131468
#>     Attrib V56    0.5728902810526306
#>     Attrib V57    -0.3985741760301947
#>     Attrib V58    0.22599538209059
#>     Attrib V59    0.3140739986503323
#>     Attrib V6    -0.2892262151002262
#>     Attrib V60    0.2819599763549244
#>     Attrib V7    -0.04438959233925341
#>     Attrib V8    0.3047543642282928
#>     Attrib V9    0.5760505141065041
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.0300833544572016
#>     Attrib V1    0.23381636417863721
#>     Attrib V10    -0.05202578934944755
#>     Attrib V11    -0.010139885718725034
#>     Attrib V12    -0.023107659973037153
#>     Attrib V13    -0.07613406144971199
#>     Attrib V14    0.064349387333195
#>     Attrib V15    -0.006898087482461807
#>     Attrib V16    0.053348403264839174
#>     Attrib V17    0.3033144411004093
#>     Attrib V18    0.24158558547495917
#>     Attrib V19    0.23059690248025042
#>     Attrib V2    0.11723317045564768
#>     Attrib V20    0.33775555611994423
#>     Attrib V21    0.26512142817348655
#>     Attrib V22    0.17334554199502736
#>     Attrib V23    0.4603143134063995
#>     Attrib V24    0.17887838947873025
#>     Attrib V25    -0.3704719254845625
#>     Attrib V26    -0.456187075040514
#>     Attrib V27    -0.4441969439876559
#>     Attrib V28    -0.06831199459726799
#>     Attrib V29    -0.23227212670010386
#>     Attrib V3    0.08698855256067684
#>     Attrib V30    0.024958152184061586
#>     Attrib V31    -0.5424587529113877
#>     Attrib V32    -0.16638006203715833
#>     Attrib V33    0.10763387939772281
#>     Attrib V34    -0.0189563659406387
#>     Attrib V35    -0.038146371421463814
#>     Attrib V36    -0.1938901862818303
#>     Attrib V37    -0.4550522168059817
#>     Attrib V38    0.11848776241944801
#>     Attrib V39    0.1281984519638965
#>     Attrib V4    0.21158531783450554
#>     Attrib V40    -0.19951697873895305
#>     Attrib V41    -0.11268921295190759
#>     Attrib V42    0.21157840574992123
#>     Attrib V43    0.3145535093750471
#>     Attrib V44    0.31757942326834365
#>     Attrib V45    0.20196253373057374
#>     Attrib V46    0.00866106186529655
#>     Attrib V47    -0.15738805253659885
#>     Attrib V48    -0.0813480539214612
#>     Attrib V49    0.31818828448134445
#>     Attrib V5    0.04880281212617034
#>     Attrib V50    0.05233362343769015
#>     Attrib V51    0.14654814528269072
#>     Attrib V52    -0.012292576840592595
#>     Attrib V53    0.09299895003724525
#>     Attrib V54    0.40338837902081826
#>     Attrib V55    0.04170026191528265
#>     Attrib V56    0.36870721755813535
#>     Attrib V57    -0.14350942080751014
#>     Attrib V58    0.15662267687144332
#>     Attrib V59    0.24268015276144111
#>     Attrib V6    -0.15956532841326124
#>     Attrib V60    0.18693471055272792
#>     Attrib V7    -0.031671181713067285
#>     Attrib V8    0.11350101890312625
#>     Attrib V9    0.33069983658080987
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.4270602572870292
#>     Attrib V1    -0.440995257251667
#>     Attrib V10    -0.2897011405574654
#>     Attrib V11    -0.42400821662746396
#>     Attrib V12    -0.435658652086651
#>     Attrib V13    -0.29447761017152474
#>     Attrib V14    0.10429976447516828
#>     Attrib V15    0.773783059513959
#>     Attrib V16    0.6121313803905747
#>     Attrib V17    0.042002404928825676
#>     Attrib V18    -0.06342612311340536
#>     Attrib V19    -0.28878515489515144
#>     Attrib V2    -0.15833674542603657
#>     Attrib V20    -0.41388160080334585
#>     Attrib V21    0.012250156131107325
#>     Attrib V22    -0.05965447333174793
#>     Attrib V23    -0.5547663484082404
#>     Attrib V24    -0.25048157363557044
#>     Attrib V25    0.5120466154758715
#>     Attrib V26    0.22869055650943731
#>     Attrib V27    -0.3004024024438194
#>     Attrib V28    -0.8894538107967097
#>     Attrib V29    -0.07903786692259217
#>     Attrib V3    0.14588057144611283
#>     Attrib V30    -0.4633707747698767
#>     Attrib V31    0.6294254709234881
#>     Attrib V32    -0.19073230228641821
#>     Attrib V33    -0.17653158926270038
#>     Attrib V34    0.17825617950559206
#>     Attrib V35    0.28840388925268823
#>     Attrib V36    0.5717000083281387
#>     Attrib V37    1.0442087666341255
#>     Attrib V38    -0.26670269300748234
#>     Attrib V39    -0.28518834557208167
#>     Attrib V4    -0.254836886105185
#>     Attrib V40    0.19467625759381785
#>     Attrib V41    0.1421130951522306
#>     Attrib V42    -0.11590504826272338
#>     Attrib V43    -0.46474059673684004
#>     Attrib V44    -0.511457043189298
#>     Attrib V45    -0.335800618512447
#>     Attrib V46    -0.00616541246483304
#>     Attrib V47    0.28109173118244496
#>     Attrib V48    -0.05965848365439621
#>     Attrib V49    -0.9288328024896609
#>     Attrib V5    0.18831391013781973
#>     Attrib V50    0.25111675929034777
#>     Attrib V51    -0.1990799362775932
#>     Attrib V52    -0.1586327021657913
#>     Attrib V53    -0.09411009083669307
#>     Attrib V54    -0.6853038910190957
#>     Attrib V55    0.29887774836254316
#>     Attrib V56    -0.08858217174679352
#>     Attrib V57    1.0394654944019013
#>     Attrib V58    0.022092305943757114
#>     Attrib V59    0.06038888321656316
#>     Attrib V6    0.4583000550784052
#>     Attrib V60    0.03969457713393115
#>     Attrib V7    0.2976976113460864
#>     Attrib V8    0.2623932118983005
#>     Attrib V9    -0.8049431065052678
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.08006536795830786
#>     Attrib V1    0.09954765038971168
#>     Attrib V10    -0.004314930596179915
#>     Attrib V11    0.01239160871290474
#>     Attrib V12    0.05017539987771579
#>     Attrib V13    -0.0496224366332255
#>     Attrib V14    0.02073403360078358
#>     Attrib V15    -0.014976751072897372
#>     Attrib V16    0.06507373464394205
#>     Attrib V17    0.05313783548822906
#>     Attrib V18    0.10570225673049005
#>     Attrib V19    0.03266210148047608
#>     Attrib V2    0.08823214012077774
#>     Attrib V20    0.07208689027989117
#>     Attrib V21    0.0732423061560736
#>     Attrib V22    0.008150172192504952
#>     Attrib V23    0.06636072936381375
#>     Attrib V24    0.046836430913803066
#>     Attrib V25    -0.04675047227876093
#>     Attrib V26    -0.10489587704335333
#>     Attrib V27    -0.07370818624195762
#>     Attrib V28    -0.08454160761395632
#>     Attrib V29    -0.1234441040657513
#>     Attrib V3    0.08835428268359358
#>     Attrib V30    -0.02327585597342918
#>     Attrib V31    -0.12434980315090144
#>     Attrib V32    0.021052474282924883
#>     Attrib V33    0.0683451204723051
#>     Attrib V34    0.009259660501947485
#>     Attrib V35    0.040963621390970546
#>     Attrib V36    -0.03547881601134769
#>     Attrib V37    -0.04312094363294854
#>     Attrib V38    0.04233304743729641
#>     Attrib V39    0.04438079548651223
#>     Attrib V4    0.15955181153202036
#>     Attrib V40    -0.03181197140841347
#>     Attrib V41    0.03429206500258075
#>     Attrib V42    0.061600926823902606
#>     Attrib V43    0.07339184015186147
#>     Attrib V44    0.09839201055696818
#>     Attrib V45    0.07459143805997696
#>     Attrib V46    0.043719124452634574
#>     Attrib V47    -0.017599795504900307
#>     Attrib V48    -0.03433967702995953
#>     Attrib V49    0.04557194462418529
#>     Attrib V5    0.07605260115616891
#>     Attrib V50    0.048107211143421015
#>     Attrib V51    0.06971616460895409
#>     Attrib V52    0.04457339010657449
#>     Attrib V53    0.0941924181438316
#>     Attrib V54    0.07963904883482174
#>     Attrib V55    0.014455198440583912
#>     Attrib V56    0.1284188960862941
#>     Attrib V57    0.0535302048982936
#>     Attrib V58    0.08304498363328336
#>     Attrib V59    0.11537892984820619
#>     Attrib V6    0.05816466270784476
#>     Attrib V60    0.12123664750395613
#>     Attrib V7    0.029719392372643365
#>     Attrib V8    0.07786007845593776
#>     Attrib V9    0.13845276782254073
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.2729623337030669
#>     Attrib V1    0.31971501345960646
#>     Attrib V10    0.42358731330781235
#>     Attrib V11    0.5882448814169425
#>     Attrib V12    0.34889037296512676
#>     Attrib V13    -0.15405566778759047
#>     Attrib V14    -0.4097487980832288
#>     Attrib V15    -0.859624051390287
#>     Attrib V16    -0.23317946383502697
#>     Attrib V17    0.5588216144233096
#>     Attrib V18    0.6090461606338226
#>     Attrib V19    0.7461390281442025
#>     Attrib V2    0.07166012821501955
#>     Attrib V20    0.7198716960760942
#>     Attrib V21    0.22958363256569694
#>     Attrib V22    0.2971879216327599
#>     Attrib V23    1.2881036254484062
#>     Attrib V24    0.835636605432597
#>     Attrib V25    -0.3003302958213327
#>     Attrib V26    -0.5195649737677576
#>     Attrib V27    -0.4115810930539727
#>     Attrib V28    0.4157414737623225
#>     Attrib V29    -0.2697529928663646
#>     Attrib V3    -0.19464034572443742
#>     Attrib V30    0.2774557531953264
#>     Attrib V31    -1.2986947590717788
#>     Attrib V32    -0.17795175513770933
#>     Attrib V33    0.30286527503847677
#>     Attrib V34    0.05821920631793088
#>     Attrib V35    0.24090044269685942
#>     Attrib V36    -0.1325659710278657
#>     Attrib V37    -0.894870001568861
#>     Attrib V38    0.5755076303692502
#>     Attrib V39    0.28601388228797964
#>     Attrib V4    0.2604279506884888
#>     Attrib V40    -0.5464920289920651
#>     Attrib V41    -0.2678656517856786
#>     Attrib V42    0.34785840173920346
#>     Attrib V43    0.8218943831776025
#>     Attrib V44    0.9642030854650033
#>     Attrib V45    0.5942721135357212
#>     Attrib V46    0.21092011325750226
#>     Attrib V47    -0.26007853505457107
#>     Attrib V48    -0.21079944703487086
#>     Attrib V49    0.8273555570540146
#>     Attrib V5    -0.19313688043081303
#>     Attrib V50    -0.10617926977004506
#>     Attrib V51    0.2647391153885489
#>     Attrib V52    0.08026674716554667
#>     Attrib V53    -0.25006528220102986
#>     Attrib V54    0.8156580640339545
#>     Attrib V55    -0.16535936224303394
#>     Attrib V56    0.5039461735172236
#>     Attrib V57    -1.050151783980192
#>     Attrib V58    -0.03317901105946577
#>     Attrib V59    0.13694335588739553
#>     Attrib V6    -0.35598654165730265
#>     Attrib V60    0.2449080757920171
#>     Attrib V7    0.02111950822247964
#>     Attrib V8    0.18551677856676746
#>     Attrib V9    1.1948837512389843
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.013712278498006634
#>     Attrib V1    0.15412442437923735
#>     Attrib V10    0.02434402322896509
#>     Attrib V11    0.054069034815928174
#>     Attrib V12    0.002070769973929119
#>     Attrib V13    -0.06052375444505862
#>     Attrib V14    -0.06794719388790772
#>     Attrib V15    -0.11829700772713085
#>     Attrib V16    0.061046568889287375
#>     Attrib V17    0.22053858565068038
#>     Attrib V18    0.16973234780329224
#>     Attrib V19    0.20167193175494683
#>     Attrib V2    0.0996660615052653
#>     Attrib V20    0.20895321401955463
#>     Attrib V21    0.1589854188768766
#>     Attrib V22    0.1254673881362516
#>     Attrib V23    0.3441026276696332
#>     Attrib V24    0.2086167297595075
#>     Attrib V25    -0.19760028715190814
#>     Attrib V26    -0.2715415278324334
#>     Attrib V27    -0.28404799578401546
#>     Attrib V28    -0.06120440118476125
#>     Attrib V29    -0.21987400930724144
#>     Attrib V3    0.04018182516544985
#>     Attrib V30    0.04376842256568864
#>     Attrib V31    -0.393198670266003
#>     Attrib V32    -0.06236972220298403
#>     Attrib V33    0.13049314919803953
#>     Attrib V34    0.013865490088638608
#>     Attrib V35    -3.1557148673374056E-4
#>     Attrib V36    -0.07615299874526646
#>     Attrib V37    -0.33574441763323015
#>     Attrib V38    0.16720735626771602
#>     Attrib V39    0.07680621653509165
#>     Attrib V4    0.23230633916439475
#>     Attrib V40    -0.16907876118456092
#>     Attrib V41    -0.08789743334463046
#>     Attrib V42    0.033073427629779904
#>     Attrib V43    0.21798889654902598
#>     Attrib V44    0.2846621162845091
#>     Attrib V45    0.15391177230765335
#>     Attrib V46    0.06925020496626234
#>     Attrib V47    -0.07829971602010864
#>     Attrib V48    -0.02024689072505131
#>     Attrib V49    0.24872943810345297
#>     Attrib V5    0.01853625365405951
#>     Attrib V50    -0.023316251948366135
#>     Attrib V51    0.0963133883558162
#>     Attrib V52    0.023767245712040818
#>     Attrib V53    0.10001256209568514
#>     Attrib V54    0.3486730875560916
#>     Attrib V55    0.0036985114302950043
#>     Attrib V56    0.21608488784579058
#>     Attrib V57    -0.08691116511258999
#>     Attrib V58    0.07596981687027039
#>     Attrib V59    0.18160719743151735
#>     Attrib V6    -0.12155880298405936
#>     Attrib V60    0.1886482388951981
#>     Attrib V7    -0.014262479727569161
#>     Attrib V8    0.051615262877747994
#>     Attrib V9    0.2789047992457162
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.6201399262721027
#>     Attrib V1    0.5291486934265867
#>     Attrib V10    0.5663220676765668
#>     Attrib V11    0.7346720000751269
#>     Attrib V12    0.6870600432526184
#>     Attrib V13    0.2708234653433546
#>     Attrib V14    -0.2721988457254326
#>     Attrib V15    -0.9276218643779146
#>     Attrib V16    -0.6735909218328632
#>     Attrib V17    0.3143578466564007
#>     Attrib V18    0.22516570609817266
#>     Attrib V19    0.151954810951723
#>     Attrib V2    0.2739064510111289
#>     Attrib V20    0.23673417291912344
#>     Attrib V21    -0.00696764792068918
#>     Attrib V22    0.046821048510358676
#>     Attrib V23    0.827392747122781
#>     Attrib V24    0.3425619082575634
#>     Attrib V25    -0.5232144640400144
#>     Attrib V26    -0.4117973289822663
#>     Attrib V27    0.07784248243023359
#>     Attrib V28    0.898064059748967
#>     Attrib V29    0.1257219570434338
#>     Attrib V3    -0.19692611302473
#>     Attrib V30    0.8047200210487435
#>     Attrib V31    -0.7839118426574407
#>     Attrib V32    0.20296080638789454
#>     Attrib V33    0.24946659300729718
#>     Attrib V34    -0.2360709845335327
#>     Attrib V35    -0.3047661056167746
#>     Attrib V36    -0.5295635590310418
#>     Attrib V37    -1.19451149161755
#>     Attrib V38    0.3223806449832935
#>     Attrib V39    0.4039788098469257
#>     Attrib V4    0.25396549964803866
#>     Attrib V40    -0.3499182924685122
#>     Attrib V41    -0.23150657827463142
#>     Attrib V42    0.33629836257780643
#>     Attrib V43    0.8086411869119176
#>     Attrib V44    0.773139843699544
#>     Attrib V45    0.427231500237984
#>     Attrib V46    0.026479598618077044
#>     Attrib V47    -0.34111670771029107
#>     Attrib V48    -0.04536545335836748
#>     Attrib V49    1.0536764548021047
#>     Attrib V5    -0.3331184917790805
#>     Attrib V50    -0.3422148997071349
#>     Attrib V51    0.3342851431909577
#>     Attrib V52    0.26397737554257056
#>     Attrib V53    0.057663850393194965
#>     Attrib V54    0.6847067366874895
#>     Attrib V55    -0.3844258017826496
#>     Attrib V56    0.11647199204686015
#>     Attrib V57    -1.4876340033591497
#>     Attrib V58    -0.25750413281713497
#>     Attrib V59    -0.11702783576784564
#>     Attrib V6    -0.5336175994834331
#>     Attrib V60    -0.09268847867591574
#>     Attrib V7    -0.33497541966282307
#>     Attrib V8    -0.14854798427652155
#>     Attrib V9    1.1782087308416498
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.2752979867956099
#>     Attrib V1    -0.415883710431651
#>     Attrib V10    -0.7468114819055759
#>     Attrib V11    -0.8509270993790397
#>     Attrib V12    -0.7080942275446738
#>     Attrib V13    -0.2402219268429832
#>     Attrib V14    0.2288974430566315
#>     Attrib V15    0.7252777748955833
#>     Attrib V16    0.7046125652742521
#>     Attrib V17    0.042489406159451855
#>     Attrib V18    0.23813385588025013
#>     Attrib V19    0.4103109692002805
#>     Attrib V2    -0.2551098057508199
#>     Attrib V20    0.3420990392716164
#>     Attrib V21    0.22019030832646158
#>     Attrib V22    -0.023460922718020222
#>     Attrib V23    -0.41319741625036
#>     Attrib V24    -0.23720249405778382
#>     Attrib V25    -0.022803911362740324
#>     Attrib V26    -0.21991734437219837
#>     Attrib V27    -0.39211017532296466
#>     Attrib V28    -0.7521521168575935
#>     Attrib V29    -0.18077227731662154
#>     Attrib V3    -0.04066308500910915
#>     Attrib V30    -0.5872768022051472
#>     Attrib V31    0.36542089989744114
#>     Attrib V32    -0.409758816892893
#>     Attrib V33    -0.20752376950884202
#>     Attrib V34    4.828921379981104E-4
#>     Attrib V35    0.12400807462459457
#>     Attrib V36    0.3357682521243293
#>     Attrib V37    0.956992122445487
#>     Attrib V38    0.21290891624924307
#>     Attrib V39    -0.08291244619791997
#>     Attrib V4    -0.3359582745672574
#>     Attrib V40    0.2780486764855299
#>     Attrib V41    0.15402840734417272
#>     Attrib V42    -0.1176405609931967
#>     Attrib V43    -0.19413212084221876
#>     Attrib V44    -0.39213222665838005
#>     Attrib V45    -0.4301833051948564
#>     Attrib V46    -0.31946099335895156
#>     Attrib V47    -0.035295403488417455
#>     Attrib V48    -0.16704180415025766
#>     Attrib V49    -0.8091172704101582
#>     Attrib V5    0.03181416111838047
#>     Attrib V50    0.339853682289878
#>     Attrib V51    -0.457250375517711
#>     Attrib V52    -0.4585391097474574
#>     Attrib V53    0.1068983328109887
#>     Attrib V54    -0.15929780363480456
#>     Attrib V55    0.2997090640490753
#>     Attrib V56    0.3192856182576375
#>     Attrib V57    1.1235018286016687
#>     Attrib V58    0.14778106979009303
#>     Attrib V59    0.23091903056706142
#>     Attrib V6    0.2570685339793756
#>     Attrib V60    -0.046875336896551864
#>     Attrib V7    0.12456654390996336
#>     Attrib V8    0.08333040614047549
#>     Attrib V9    -1.1653178526753312
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.034846699101574646
#>     Attrib V1    0.19538109803219733
#>     Attrib V10    -0.0311950770485197
#>     Attrib V11    -0.00853498369029578
#>     Attrib V12    0.00862027590996972
#>     Attrib V13    -0.21591007469383203
#>     Attrib V14    -0.09605756266152726
#>     Attrib V15    -0.16364539448655363
#>     Attrib V16    0.09484001673194253
#>     Attrib V17    0.4089740530689703
#>     Attrib V18    0.3627014565723268
#>     Attrib V19    0.3540665507306132
#>     Attrib V2    0.054725928281201375
#>     Attrib V20    0.4591175977413651
#>     Attrib V21    0.20929561755103565
#>     Attrib V22    0.22207960680994387
#>     Attrib V23    0.6033341034751752
#>     Attrib V24    0.35872220432644064
#>     Attrib V25    -0.2647878228917702
#>     Attrib V26    -0.5425450221884334
#>     Attrib V27    -0.5341071507309537
#>     Attrib V28    -0.178077215486415
#>     Attrib V29    -0.5213731461778924
#>     Attrib V3    -0.03208728287427356
#>     Attrib V30    -0.083682295886784
#>     Attrib V31    -0.7065392951623235
#>     Attrib V32    -0.1661582031018714
#>     Attrib V33    0.17500598028174755
#>     Attrib V34    0.11165269062086401
#>     Attrib V35    0.12008514741451529
#>     Attrib V36    -0.149040467909003
#>     Attrib V37    -0.564414637586066
#>     Attrib V38    0.24799078502046887
#>     Attrib V39    0.0999917387930007
#>     Attrib V4    0.18522142684958307
#>     Attrib V40    -0.25534738391739165
#>     Attrib V41    -0.15607980652300196
#>     Attrib V42    0.1868863608292675
#>     Attrib V43    0.3991864407638641
#>     Attrib V44    0.4022832989608903
#>     Attrib V45    0.22579474652959197
#>     Attrib V46    0.05468345479988542
#>     Attrib V47    -0.11308866754110793
#>     Attrib V48    -0.0746604961110269
#>     Attrib V49    0.3381875873730102
#>     Attrib V5    7.977116098730948E-4
#>     Attrib V50    0.09016449117981104
#>     Attrib V51    0.1813414047676862
#>     Attrib V52    -0.0939843887394416
#>     Attrib V53    0.01628075179143673
#>     Attrib V54    0.5869405742108544
#>     Attrib V55    0.04279424226684826
#>     Attrib V56    0.49610313264928024
#>     Attrib V57    -0.1713123786605664
#>     Attrib V58    0.17841216996549694
#>     Attrib V59    0.21100212284457795
#>     Attrib V6    -0.11906382463969152
#>     Attrib V60    0.2768125274115377
#>     Attrib V7    -0.012561399202138465
#>     Attrib V8    0.22269789667860682
#>     Attrib V9    0.40459524404637465
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.07345752716368542
#>     Attrib V1    0.30087667617149494
#>     Attrib V10    -0.13523873675182127
#>     Attrib V11    0.013194453662809892
#>     Attrib V12    -0.0807984329986072
#>     Attrib V13    -0.17070800906690653
#>     Attrib V14    0.016590667084836856
#>     Attrib V15    -0.08347001891813356
#>     Attrib V16    0.15793971629707404
#>     Attrib V17    0.40138032069611207
#>     Attrib V18    0.3404854462153498
#>     Attrib V19    0.39413327566574163
#>     Attrib V2    0.18725732836839928
#>     Attrib V20    0.4464412243966613
#>     Attrib V21    0.2710417900893245
#>     Attrib V22    0.29891437431383033
#>     Attrib V23    0.6413702285520084
#>     Attrib V24    0.24997470485880843
#>     Attrib V25    -0.49318436306996327
#>     Attrib V26    -0.6538021999156056
#>     Attrib V27    -0.5260141784001879
#>     Attrib V28    -0.13756163959831325
#>     Attrib V29    -0.3583781826129535
#>     Attrib V3    -0.0030493860928969
#>     Attrib V30    -0.02579194527602779
#>     Attrib V31    -0.8188236184709043
#>     Attrib V32    -0.2685111571775839
#>     Attrib V33    0.15217557513773733
#>     Attrib V34    -0.005224741670706545
#>     Attrib V35    -0.031431803062651344
#>     Attrib V36    -0.250415554283118
#>     Attrib V37    -0.6293195823806094
#>     Attrib V38    0.2440497227871367
#>     Attrib V39    0.11930588967982068
#>     Attrib V4    0.291428124822943
#>     Attrib V40    -0.24482307064870065
#>     Attrib V41    -0.09863886695012189
#>     Attrib V42    0.2382887587123381
#>     Attrib V43    0.49777854207295813
#>     Attrib V44    0.3565630379749463
#>     Attrib V45    0.2137834342322953
#>     Attrib V46    0.10689469676476138
#>     Attrib V47    -0.18173573912678845
#>     Attrib V48    -0.10355515826792948
#>     Attrib V49    0.34980354132848995
#>     Attrib V5    -0.0023050517527434707
#>     Attrib V50    0.04927693192359606
#>     Attrib V51    0.13789093103258254
#>     Attrib V52    -0.037721204179709644
#>     Attrib V53    0.07593475859582977
#>     Attrib V54    0.6206890450192752
#>     Attrib V55    0.02433661002779969
#>     Attrib V56    0.5329285393615476
#>     Attrib V57    -0.17095738831099908
#>     Attrib V58    0.236218516081717
#>     Attrib V59    0.3737682007525729
#>     Attrib V6    -0.2085183790706658
#>     Attrib V60    0.311918572494686
#>     Attrib V7    2.77631741898309E-4
#>     Attrib V8    0.25138781626225126
#>     Attrib V9    0.4020959742189953
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.1631822121364142
#>     Attrib V1    0.09614589983548369
#>     Attrib V10    -0.0041154132420057115
#>     Attrib V11    0.021406307118236316
#>     Attrib V12    0.013019148336612205
#>     Attrib V13    0.034879523480554585
#>     Attrib V14    0.03313114657959791
#>     Attrib V15    -0.04483517235140643
#>     Attrib V16    -0.016297391826099985
#>     Attrib V17    0.12594830571345278
#>     Attrib V18    0.11146619471509438
#>     Attrib V19    0.07286524870364842
#>     Attrib V2    0.0724863177775328
#>     Attrib V20    0.13672102931115662
#>     Attrib V21    0.09232736745262787
#>     Attrib V22    0.025207915437050525
#>     Attrib V23    0.16953071482408105
#>     Attrib V24    0.07108563414222728
#>     Attrib V25    -0.0789480177867448
#>     Attrib V26    -0.174605134983268
#>     Attrib V27    -0.09355672981398239
#>     Attrib V28    -0.08245077122109032
#>     Attrib V29    -0.10901509988288571
#>     Attrib V3    0.12453015308453559
#>     Attrib V30    0.0039253221884020355
#>     Attrib V31    -0.2372135410992766
#>     Attrib V32    -0.039935929725928354
#>     Attrib V33    0.03748253194382189
#>     Attrib V34    0.04932720530834125
#>     Attrib V35    -0.008061600765445187
#>     Attrib V36    -0.058778607432564946
#>     Attrib V37    -0.10408244089996128
#>     Attrib V38    0.07804155489937044
#>     Attrib V39    0.12176219981499889
#>     Attrib V4    0.1653841125358423
#>     Attrib V40    -0.021896734103021204
#>     Attrib V41    -0.028638312437464404
#>     Attrib V42    0.05013942514476114
#>     Attrib V43    0.06591281639006122
#>     Attrib V44    0.12136336800147629
#>     Attrib V45    0.04362066483286721
#>     Attrib V46    0.05675832495334245
#>     Attrib V47    0.004954960037281207
#>     Attrib V48    -0.02860192559933025
#>     Attrib V49    0.13403421721167513
#>     Attrib V5    0.09057248693724183
#>     Attrib V50    -0.005821464912541721
#>     Attrib V51    0.06719958350312324
#>     Attrib V52    0.0339727730459824
#>     Attrib V53    0.05930155412050798
#>     Attrib V54    0.14034541192117966
#>     Attrib V55    0.03869821512883753
#>     Attrib V56    0.14004496605113698
#>     Attrib V57    -0.0050599248184195235
#>     Attrib V58    0.061097091828651806
#>     Attrib V59    0.14362010265281225
#>     Attrib V6    0.019934985955245444
#>     Attrib V60    0.16552030694216938
#>     Attrib V7    0.05734424976865122
#>     Attrib V8    0.01741127813583635
#>     Attrib V9    0.1363085652501598
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.013962955519392781
#>     Attrib V1    0.32075797251080845
#>     Attrib V10    -0.030487327271700292
#>     Attrib V11    0.0628686848908475
#>     Attrib V12    0.02158881385922914
#>     Attrib V13    -0.19381540598574373
#>     Attrib V14    -0.09516559522955133
#>     Attrib V15    -0.10212692345357557
#>     Attrib V16    0.053402209033965364
#>     Attrib V17    0.3771270606124658
#>     Attrib V18    0.33275395573547695
#>     Attrib V19    0.3105792248761704
#>     Attrib V2    0.1250432857843553
#>     Attrib V20    0.4171914286526831
#>     Attrib V21    0.2257755645202997
#>     Attrib V22    0.23707918859217153
#>     Attrib V23    0.6431136555614068
#>     Attrib V24    0.3086767386409385
#>     Attrib V25    -0.3297664813654067
#>     Attrib V26    -0.5092261167729086
#>     Attrib V27    -0.5647687450473761
#>     Attrib V28    -0.2452816055610268
#>     Attrib V29    -0.5679428757404003
#>     Attrib V3    -0.040615301465645785
#>     Attrib V30    -0.06409744746985716
#>     Attrib V31    -0.6846595916801034
#>     Attrib V32    -0.17711006395909437
#>     Attrib V33    0.17646367291568907
#>     Attrib V34    0.01985691126100748
#>     Attrib V35    0.06419100645338649
#>     Attrib V36    -0.22633991310084753
#>     Attrib V37    -0.5655352523884638
#>     Attrib V38    0.1756813037248834
#>     Attrib V39    0.13619065521090917
#>     Attrib V4    0.20378851476635895
#>     Attrib V40    -0.2582781724650182
#>     Attrib V41    -0.15024345706061015
#>     Attrib V42    0.16858345958265747
#>     Attrib V43    0.4137524859363821
#>     Attrib V44    0.4105350718537014
#>     Attrib V45    0.11438961447246636
#>     Attrib V46    0.06680462158804776
#>     Attrib V47    -0.16789245872159028
#>     Attrib V48    -0.0663047338554587
#>     Attrib V49    0.41495013548652054
#>     Attrib V5    -0.06927582742062988
#>     Attrib V50    0.0749603099307489
#>     Attrib V51    0.08540391648589672
#>     Attrib V52    -0.09632011228380032
#>     Attrib V53    0.010335118666950908
#>     Attrib V54    0.631980448385678
#>     Attrib V55    0.07194404156714324
#>     Attrib V56    0.5385035591361369
#>     Attrib V57    -0.19492213131500166
#>     Attrib V58    0.22244700804578044
#>     Attrib V59    0.2863521484493694
#>     Attrib V6    -0.1910465411318163
#>     Attrib V60    0.3376721869154969
#>     Attrib V7    -0.005508432501489225
#>     Attrib V8    0.17355861427756694
#>     Attrib V9    0.40961381742715475
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.4864492135557836
#>     Attrib V1    -0.48238549652168544
#>     Attrib V10    -0.34132371521926824
#>     Attrib V11    -0.5545740942580262
#>     Attrib V12    -0.44197025877552076
#>     Attrib V13    -0.3165056323689445
#>     Attrib V14    0.10279881993829883
#>     Attrib V15    0.8330717242013191
#>     Attrib V16    0.6624482872324449
#>     Attrib V17    -0.06253877870891582
#>     Attrib V18    -0.1370179810351967
#>     Attrib V19    -0.22723152847177053
#>     Attrib V2    -0.23566014347184905
#>     Attrib V20    -0.33482101326663205
#>     Attrib V21    -0.025322514481799067
#>     Attrib V22    -0.06810311916561265
#>     Attrib V23    -0.6668112983265214
#>     Attrib V24    -0.2264146348298266
#>     Attrib V25    0.4926956249932251
#>     Attrib V26    0.3477714194736958
#>     Attrib V27    -0.2678061228050232
#>     Attrib V28    -0.880343270555599
#>     Attrib V29    -0.09310986681690572
#>     Attrib V3    0.16224736460183983
#>     Attrib V30    -0.5823460160536073
#>     Attrib V31    0.6385992647912566
#>     Attrib V32    -0.238213205615387
#>     Attrib V33    -0.2274538879164566
#>     Attrib V34    0.22541366104452076
#>     Attrib V35    0.2482941558889922
#>     Attrib V36    0.5476345567640818
#>     Attrib V37    1.1359634089437378
#>     Attrib V38    -0.2611101688352409
#>     Attrib V39    -0.29391358664287753
#>     Attrib V4    -0.21343702324155175
#>     Attrib V40    0.17300899468059663
#>     Attrib V41    0.13506629349368152
#>     Attrib V42    -0.2241353423463949
#>     Attrib V43    -0.5545830840809872
#>     Attrib V44    -0.6104631960159165
#>     Attrib V45    -0.28995214856684376
#>     Attrib V46    0.0720990089030357
#>     Attrib V47    0.30974930572956627
#>     Attrib V48    -0.03072603842328419
#>     Attrib V49    -0.9360264588446909
#>     Attrib V5    0.21238201289442066
#>     Attrib V50    0.293449674360711
#>     Attrib V51    -0.20287456652114627
#>     Attrib V52    -0.18898289100885704
#>     Attrib V53    -0.025633000909546084
#>     Attrib V54    -0.7362621707178818
#>     Attrib V55    0.2862770679456967
#>     Attrib V56    -0.1018311231919674
#>     Attrib V57    1.1308690419664105
#>     Attrib V58    0.06985653250689525
#>     Attrib V59    0.0680619314377468
#>     Attrib V6    0.46532102931152236
#>     Attrib V60    0.00995636559341738
#>     Attrib V7    0.27178128754824643
#>     Attrib V8    0.26641689993149087
#>     Attrib V9    -0.8497909622071035
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.30825407476659894
#>     Attrib V1    -0.27965838514599317
#>     Attrib V10    -0.19697181930222035
#>     Attrib V11    -0.349633466669521
#>     Attrib V12    -0.34876160999151407
#>     Attrib V13    -0.1122628176535317
#>     Attrib V14    0.0369824377898996
#>     Attrib V15    0.32863861444694037
#>     Attrib V16    0.312935031777313
#>     Attrib V17    -0.0932631582420095
#>     Attrib V18    0.004644337667792904
#>     Attrib V19    0.01671201847972504
#>     Attrib V2    -0.13804735702989682
#>     Attrib V20    -0.03709749477179447
#>     Attrib V21    0.07368779503998223
#>     Attrib V22    -0.0026345791986692344
#>     Attrib V23    -0.3513326692570648
#>     Attrib V24    -0.11829380460328998
#>     Attrib V25    0.23931280265445515
#>     Attrib V26    0.14430293632184293
#>     Attrib V27    -0.07507750457326144
#>     Attrib V28    -0.4501139516101281
#>     Attrib V29    -0.13574812708416614
#>     Attrib V3    0.0878334054948001
#>     Attrib V30    -0.49216285908741564
#>     Attrib V31    0.2513696151093445
#>     Attrib V32    -0.08640712721354434
#>     Attrib V33    -0.13654193359917682
#>     Attrib V34    0.10493688743787298
#>     Attrib V35    0.12164269912267715
#>     Attrib V36    0.27552268017590376
#>     Attrib V37    0.641387420031662
#>     Attrib V38    -0.09877646049592978
#>     Attrib V39    -0.15360539848768873
#>     Attrib V4    -0.10131981902909727
#>     Attrib V40    0.11151865729583485
#>     Attrib V41    0.09427971629722262
#>     Attrib V42    -0.1076588800233552
#>     Attrib V43    -0.2947444737187281
#>     Attrib V44    -0.34248860892574573
#>     Attrib V45    -0.1843294858975666
#>     Attrib V46    -0.002182139301057696
#>     Attrib V47    0.16054888803012982
#>     Attrib V48    -0.0011592567523637163
#>     Attrib V49    -0.4780146997396494
#>     Attrib V5    0.12097933102296399
#>     Attrib V50    0.26100095920487093
#>     Attrib V51    -0.10151785764838687
#>     Attrib V52    -0.038633987745775346
#>     Attrib V53    0.0584319611451242
#>     Attrib V54    -0.31490278330881005
#>     Attrib V55    0.16489770396311104
#>     Attrib V56    -0.0731910852755533
#>     Attrib V57    0.6233588390056705
#>     Attrib V58    0.10419158216428985
#>     Attrib V59    -0.01676149904301134
#>     Attrib V6    0.22834507695186176
#>     Attrib V60    -0.040045008657264576
#>     Attrib V7    0.11431191764148083
#>     Attrib V8    0.00479709927634134
#>     Attrib V9    -0.49360064575446694
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.1172589854617166
#>     Attrib V1    0.05799868241439701
#>     Attrib V10    0.07402403521638888
#>     Attrib V11    0.03487883645116149
#>     Attrib V12    -0.017486239363271424
#>     Attrib V13    -0.04990922189759686
#>     Attrib V14    0.0030788820980640944
#>     Attrib V15    0.06826685921945774
#>     Attrib V16    0.03315477090439468
#>     Attrib V17    0.04088855631814495
#>     Attrib V18    0.04098986773392028
#>     Attrib V19    0.049280262840297615
#>     Attrib V2    0.12354648366856706
#>     Attrib V20    0.0015307318935621618
#>     Attrib V21    -6.920254486879624E-4
#>     Attrib V22    0.04807945775422466
#>     Attrib V23    -0.02466674648451972
#>     Attrib V24    -0.00338133383713863
#>     Attrib V25    -0.07856287421097458
#>     Attrib V26    -0.08891122115408144
#>     Attrib V27    -0.07059146548875345
#>     Attrib V28    -0.07911509407315176
#>     Attrib V29    -0.12058376796453882
#>     Attrib V3    0.07085578799031968
#>     Attrib V30    -0.019566276450224407
#>     Attrib V31    8.494662721182596E-5
#>     Attrib V32    -0.028820182564830255
#>     Attrib V33    0.07715855038242769
#>     Attrib V34    0.009546012420531902
#>     Attrib V35    0.08571132087305884
#>     Attrib V36    0.013891799722654781
#>     Attrib V37    0.021831148809417174
#>     Attrib V38    0.11107058986390182
#>     Attrib V39    0.09659171464933662
#>     Attrib V4    0.10595578453846972
#>     Attrib V40    0.019334917249217713
#>     Attrib V41    0.04890799874277231
#>     Attrib V42    0.01086210353195318
#>     Attrib V43    0.08161750513607917
#>     Attrib V44    0.09537514996577484
#>     Attrib V45    0.08786363599082928
#>     Attrib V46    0.011677646371069472
#>     Attrib V47    -0.010545089645712512
#>     Attrib V48    0.060988414166324646
#>     Attrib V49    -0.0031910806848896188
#>     Attrib V5    0.08421530947660895
#>     Attrib V50    0.047544637553064116
#>     Attrib V51    0.060592354373651666
#>     Attrib V52    0.03395325769150966
#>     Attrib V53    0.029635905124225655
#>     Attrib V54    0.02211442166210124
#>     Attrib V55    0.07118947968968094
#>     Attrib V56    0.10070651572882684
#>     Attrib V57    0.12758437874793335
#>     Attrib V58    0.01664900328330808
#>     Attrib V59    0.01689231929688636
#>     Attrib V6    0.0661024068421405
#>     Attrib V60    0.09177085467163687
#>     Attrib V7    0.001867510069975301
#>     Attrib V8    0.07892974195161077
#>     Attrib V9    0.0653466401149387
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.2628022550081818
#>     Attrib V1    -0.18606529604665112
#>     Attrib V10    -0.13104407955594136
#>     Attrib V11    -0.2516862438137254
#>     Attrib V12    -0.27437961064457655
#>     Attrib V13    -0.12457245107421261
#>     Attrib V14    0.029793300141772887
#>     Attrib V15    0.15872067246545393
#>     Attrib V16    0.14344703776118628
#>     Attrib V17    -0.13795542359659493
#>     Attrib V18    0.017969076308331968
#>     Attrib V19    -0.03480715247449947
#>     Attrib V2    -0.03677284800175221
#>     Attrib V20    0.02287948013636277
#>     Attrib V21    0.10444097200589954
#>     Attrib V22    0.010288563750586892
#>     Attrib V23    -0.1803583617811991
#>     Attrib V24    -0.11022435132928958
#>     Attrib V25    0.1388664119008111
#>     Attrib V26    0.11476020051329637
#>     Attrib V27    -0.03280181622495422
#>     Attrib V28    -0.32730201396771125
#>     Attrib V29    -0.1378852486086853
#>     Attrib V3    0.0989490215428684
#>     Attrib V30    -0.3888384912056603
#>     Attrib V31    0.10808087474080515
#>     Attrib V32    -0.07005079383399021
#>     Attrib V33    -0.06029043975378972
#>     Attrib V34    0.08668752628475725
#>     Attrib V35    0.07884340079711791
#>     Attrib V36    0.2613294894706565
#>     Attrib V37    0.4022713379500947
#>     Attrib V38    -0.0641378966130113
#>     Attrib V39    -0.051347302605336785
#>     Attrib V4    -0.0881676292763004
#>     Attrib V40    0.09421297501092832
#>     Attrib V41    0.029360178396260882
#>     Attrib V42    -0.07500834741543151
#>     Attrib V43    -0.17014636009167364
#>     Attrib V44    -0.13860699809844781
#>     Attrib V45    -0.15630239808860397
#>     Attrib V46    -0.02889084907018918
#>     Attrib V47    0.13801402278455044
#>     Attrib V48    0.016590670076533268
#>     Attrib V49    -0.25252416343274164
#>     Attrib V5    0.08326585480596108
#>     Attrib V50    0.10867839710273526
#>     Attrib V51    -0.028147228712787766
#>     Attrib V52    -0.027180918633944787
#>     Attrib V53    0.0374033263464294
#>     Attrib V54    -0.21607138203653284
#>     Attrib V55    0.10262672097507215
#>     Attrib V56    -0.03419910803855246
#>     Attrib V57    0.3193378694311085
#>     Attrib V58    0.0326562689059078
#>     Attrib V59    0.026273571766403433
#>     Attrib V6    0.10324449075827513
#>     Attrib V60    0.009674061205389592
#>     Attrib V7    0.09349964370496744
#>     Attrib V8    0.036347532660326226
#>     Attrib V9    -0.3322179714070571
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.10866483800369071
#>     Attrib V1    0.2861352974069355
#>     Attrib V10    0.10303367834638535
#>     Attrib V11    0.13976042348308884
#>     Attrib V12    0.15052507871455717
#>     Attrib V13    -0.21884921649720007
#>     Attrib V14    -0.21918872412748283
#>     Attrib V15    -0.333969620978175
#>     Attrib V16    -0.014740889422154776
#>     Attrib V17    0.4598566214210515
#>     Attrib V18    0.4439351026223404
#>     Attrib V19    0.5442270585531088
#>     Attrib V2    0.1120024832100137
#>     Attrib V20    0.5456204697924679
#>     Attrib V21    0.2123066517307787
#>     Attrib V22    0.33023220286934984
#>     Attrib V23    0.9128087630555641
#>     Attrib V24    0.5941240275383397
#>     Attrib V25    -0.2876867440675306
#>     Attrib V26    -0.652501249013578
#>     Attrib V27    -0.6276629955040466
#>     Attrib V28    -0.055478006278203325
#>     Attrib V29    -0.6092536324420547
#>     Attrib V3    -0.10744006087995113
#>     Attrib V30    -0.05092609464710187
#>     Attrib V31    -0.9493441197647884
#>     Attrib V32    -0.1457912623142567
#>     Attrib V33    0.3171774513892399
#>     Attrib V34    0.10398822182725317
#>     Attrib V35    0.1670749146749548
#>     Attrib V36    -0.2551299839206101
#>     Attrib V37    -0.861705719963462
#>     Attrib V38    0.291193103402607
#>     Attrib V39    0.14694406124551473
#>     Attrib V4    0.2516330689224072
#>     Attrib V40    -0.36455497379935065
#>     Attrib V41    -0.17261665932233
#>     Attrib V42    0.32255230291341486
#>     Attrib V43    0.5823483174727637
#>     Attrib V44    0.5453907112822786
#>     Attrib V45    0.3827046579508531
#>     Attrib V46    0.14883354033135562
#>     Attrib V47    -0.22138997934686971
#>     Attrib V48    -0.1236445734105293
#>     Attrib V49    0.6073466901336044
#>     Attrib V5    -0.12017114296992079
#>     Attrib V50    -0.012143898838226993
#>     Attrib V51    0.10837497842791631
#>     Attrib V52    -0.039062861348866544
#>     Attrib V53    -0.05792498072392278
#>     Attrib V54    0.7599889754764787
#>     Attrib V55    -8.612820268276835E-4
#>     Attrib V56    0.5437072195782422
#>     Attrib V57    -0.49485531666198473
#>     Attrib V58    0.19645696700338494
#>     Attrib V59    0.25247420391804276
#>     Attrib V6    -0.2537025191015051
#>     Attrib V60    0.3342674707101823
#>     Attrib V7    0.06454003112972914
#>     Attrib V8    0.25508498934358387
#>     Attrib V9    0.6856559968762389
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.009565868376685828
#>     Attrib V1    0.2943106988191977
#>     Attrib V10    0.3492202793136742
#>     Attrib V11    0.32387683984624743
#>     Attrib V12    0.2351955825317014
#>     Attrib V13    -0.34363329656776476
#>     Attrib V14    -0.43971225060069774
#>     Attrib V15    -0.7036203299942791
#>     Attrib V16    -0.06559817208677993
#>     Attrib V17    0.5752367592009081
#>     Attrib V18    0.6346605368072017
#>     Attrib V19    0.8236720376022184
#>     Attrib V2    -0.002727022156752438
#>     Attrib V20    0.8070009563415679
#>     Attrib V21    0.3346722847997831
#>     Attrib V22    0.5027519671198952
#>     Attrib V23    1.3596144691755727
#>     Attrib V24    0.896093322718077
#>     Attrib V25    -0.2989324358094
#>     Attrib V26    -0.70111202328341
#>     Attrib V27    -0.6867977148121858
#>     Attrib V28    0.02805759962276147
#>     Attrib V29    -0.7979770223311548
#>     Attrib V3    -0.23055491690506674
#>     Attrib V30    -0.08982394694291183
#>     Attrib V31    -1.3428052490035742
#>     Attrib V32    -0.1700517066794357
#>     Attrib V33    0.3869877952118667
#>     Attrib V34    0.18321916269916616
#>     Attrib V35    0.32644449403158315
#>     Attrib V36    -0.16721628876179043
#>     Attrib V37    -0.9946078612177381
#>     Attrib V38    0.530386869924751
#>     Attrib V39    0.2318854432571814
#>     Attrib V4    0.21019694122942628
#>     Attrib V40    -0.5099712450747395
#>     Attrib V41    -0.2486125992030483
#>     Attrib V42    0.25776338341107
#>     Attrib V43    0.8024425152054713
#>     Attrib V44    0.8698527366905583
#>     Attrib V45    0.495807784475375
#>     Attrib V46    0.20939730427599262
#>     Attrib V47    -0.2287176322509636
#>     Attrib V48    -0.11005198371399191
#>     Attrib V49    0.7980313995202
#>     Attrib V5    -0.17047429741729245
#>     Attrib V50    0.08179233446451245
#>     Attrib V51    0.2553436831269546
#>     Attrib V52    -0.10690218326223506
#>     Attrib V53    -0.31090530181923964
#>     Attrib V54    0.9275416876805751
#>     Attrib V55    -0.10141923470441679
#>     Attrib V56    0.8026630941818613
#>     Attrib V57    -0.7895706664087454
#>     Attrib V58    0.10761409645101395
#>     Attrib V59    0.2754017204002542
#>     Attrib V6    -0.28783660164375935
#>     Attrib V60    0.48671364004065454
#>     Attrib V7    0.20613590329864884
#>     Attrib V8    0.4079602826333488
#>     Attrib V9    1.0569862708896947
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.3728136492296523
#>     Attrib V1    -0.39378342226734586
#>     Attrib V10    -0.31247143372743635
#>     Attrib V11    -0.5142713141210505
#>     Attrib V12    -0.4728123186516952
#>     Attrib V13    -0.2275128354668216
#>     Attrib V14    0.09972528884412718
#>     Attrib V15    0.6124333837450371
#>     Attrib V16    0.48931510082401325
#>     Attrib V17    -0.14736210129298521
#>     Attrib V18    -0.07957218492742979
#>     Attrib V19    -0.10816493388382926
#>     Attrib V2    -0.1846668073722761
#>     Attrib V20    -0.11315042663706863
#>     Attrib V21    0.14430183687609988
#>     Attrib V22    -0.04774742416390734
#>     Attrib V23    -0.5616026696396845
#>     Attrib V24    -0.24280108401222436
#>     Attrib V25    0.3609986895757073
#>     Attrib V26    0.2927273862721705
#>     Attrib V27    -0.12079669476171681
#>     Attrib V28    -0.7327989822966504
#>     Attrib V29    -0.11964379628640094
#>     Attrib V3    0.09019513085660734
#>     Attrib V30    -0.5917002327829928
#>     Attrib V31    0.5508873058732001
#>     Attrib V32    -0.18400057029350564
#>     Attrib V33    -0.18385481514869612
#>     Attrib V34    0.15640295441489402
#>     Attrib V35    0.21820734965557068
#>     Attrib V36    0.4447837610446252
#>     Attrib V37    0.9829241542122484
#>     Attrib V38    -0.21266982485032007
#>     Attrib V39    -0.27374289974199434
#>     Attrib V4    -0.15042189546301177
#>     Attrib V40    0.21162691297572933
#>     Attrib V41    0.1806091623062985
#>     Attrib V42    -0.24044912991365397
#>     Attrib V43    -0.4400547001620757
#>     Attrib V44    -0.4940633576818401
#>     Attrib V45    -0.30769761022557907
#>     Attrib V46    -0.0037236786618546976
#>     Attrib V47    0.25658382283815
#>     Attrib V48    0.0415984189893791
#>     Attrib V49    -0.7561295641903958
#>     Attrib V5    0.18379990173376418
#>     Attrib V50    0.3401952782247338
#>     Attrib V51    -0.19666852464139187
#>     Attrib V52    -0.10239375982000386
#>     Attrib V53    -0.011090742807588821
#>     Attrib V54    -0.5324376127067743
#>     Attrib V55    0.2256414785864318
#>     Attrib V56    -0.14035660414017934
#>     Attrib V57    1.049923071910999
#>     Attrib V58    0.08100406984512337
#>     Attrib V59    0.08618643917144189
#>     Attrib V6    0.35415902056950205
#>     Attrib V60    0.0030776528719060913
#>     Attrib V7    0.25822016728862285
#>     Attrib V8    0.0930587220052404
#>     Attrib V9    -0.755525355822007
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.07767362485690857
#>     Attrib V1    0.2026315185167021
#>     Attrib V10    -4.65219959800909E-6
#>     Attrib V11    0.024822310918752973
#>     Attrib V12    0.013092009093498138
#>     Attrib V13    -0.05919136230447814
#>     Attrib V14    0.04746809968495923
#>     Attrib V15    -0.06668631893543488
#>     Attrib V16    0.075276736192375
#>     Attrib V17    0.18189484529370295
#>     Attrib V18    0.15426116577918758
#>     Attrib V19    0.10531277531042253
#>     Attrib V2    0.12013843919487786
#>     Attrib V20    0.1869321756402287
#>     Attrib V21    0.10563419932169817
#>     Attrib V22    0.06603874608800318
#>     Attrib V23    0.19512761322360456
#>     Attrib V24    0.14075030090700796
#>     Attrib V25    -0.19133564728301475
#>     Attrib V26    -0.2549270910076525
#>     Attrib V27    -0.25133727815809703
#>     Attrib V28    -0.164083231672606
#>     Attrib V29    -0.18959423436003842
#>     Attrib V3    0.04288215171190953
#>     Attrib V30    -0.030956655789600426
#>     Attrib V31    -0.2610421816276022
#>     Attrib V32    -0.09293534470144114
#>     Attrib V33    0.015386050046038042
#>     Attrib V34    -0.015494881483988887
#>     Attrib V35    -0.008268262109367035
#>     Attrib V36    -0.08570417426705436
#>     Attrib V37    -0.2302967752235627
#>     Attrib V38    0.05670995210681966
#>     Attrib V39    0.04350071014676445
#>     Attrib V4    0.1898531697090798
#>     Attrib V40    -0.09007951348163164
#>     Attrib V41    -0.11524754718450117
#>     Attrib V42    0.03871491275264019
#>     Attrib V43    0.21679339363990593
#>     Attrib V44    0.1628564782372685
#>     Attrib V45    0.027203126052247763
#>     Attrib V46    0.05005653450946876
#>     Attrib V47    -0.09917893684608955
#>     Attrib V48    0.0011895021908876634
#>     Attrib V49    0.17805600090731838
#>     Attrib V5    0.07857040284126385
#>     Attrib V50    0.030565924002528805
#>     Attrib V51    0.08492639682863322
#>     Attrib V52    0.034552568844499136
#>     Attrib V53    0.05767379724482665
#>     Attrib V54    0.28350694110158775
#>     Attrib V55    0.08912736017544615
#>     Attrib V56    0.2515743563508852
#>     Attrib V57    -0.03698161973783084
#>     Attrib V58    0.16813144584388137
#>     Attrib V59    0.15967902260363565
#>     Attrib V6    -0.030580105128710885
#>     Attrib V60    0.19555671701650515
#>     Attrib V7    0.007133830019753422
#>     Attrib V8    0.007478799146349742
#>     Attrib V9    0.19768568729087585
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.08253819934469163
#>     Attrib V1    0.11935312173100973
#>     Attrib V10    -0.02114086836278254
#>     Attrib V11    0.06017100438857867
#>     Attrib V12    0.07114652153643794
#>     Attrib V13    -0.0037228805730073994
#>     Attrib V14    0.033794390585232925
#>     Attrib V15    -0.04350888043875118
#>     Attrib V16    -0.020388949826210416
#>     Attrib V17    0.15603519116979733
#>     Attrib V18    0.1148505357803809
#>     Attrib V19    0.08557539786904242
#>     Attrib V2    0.054401520517558
#>     Attrib V20    0.07951159661806077
#>     Attrib V21    0.04293524620657392
#>     Attrib V22    0.05485048077176177
#>     Attrib V23    0.15453493220118106
#>     Attrib V24    0.0320419438334174
#>     Attrib V25    -0.10321448731694761
#>     Attrib V26    -0.0864846371769635
#>     Attrib V27    -0.166016633422745
#>     Attrib V28    -0.13763233878636194
#>     Attrib V29    -0.20033273909055221
#>     Attrib V3    0.09341549536278383
#>     Attrib V30    -0.04803135030587536
#>     Attrib V31    -0.20439131754852805
#>     Attrib V32    -0.056824553263766724
#>     Attrib V33    0.031182083728582458
#>     Attrib V34    -0.014810898034633228
#>     Attrib V35    0.059151468484455655
#>     Attrib V36    -0.012051004070494524
#>     Attrib V37    -0.06122420919716403
#>     Attrib V38    0.05201422447055903
#>     Attrib V39    0.04575028688018039
#>     Attrib V4    0.19666387907234373
#>     Attrib V40    -0.09016006024799939
#>     Attrib V41    -0.05328367731681167
#>     Attrib V42    0.006413463100462949
#>     Attrib V43    0.13966191854809257
#>     Attrib V44    0.1265510208909746
#>     Attrib V45    0.09678124661298884
#>     Attrib V46    0.02989435290428013
#>     Attrib V47    0.009915680994623418
#>     Attrib V48    -0.03738274138925269
#>     Attrib V49    0.11129829556061577
#>     Attrib V5    0.07805382890296504
#>     Attrib V50    0.0010574943999715036
#>     Attrib V51    0.06845415628659575
#>     Attrib V52    0.11275967389817113
#>     Attrib V53    0.09776387018448084
#>     Attrib V54    0.16051211401680915
#>     Attrib V55    0.066133852239533
#>     Attrib V56    0.19250605279270663
#>     Attrib V57    -0.03200034838076336
#>     Attrib V58    0.08143690282761268
#>     Attrib V59    0.14699471916119433
#>     Attrib V6    0.006489766691571129
#>     Attrib V60    0.09987337783068388
#>     Attrib V7    0.004251191568666139
#>     Attrib V8    0.021766820856293122
#>     Attrib V9    0.13509722286445994
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.2736001370894308
#>     Attrib V1    -0.27775078715545665
#>     Attrib V10    -0.24532101872527562
#>     Attrib V11    -0.36334326562081004
#>     Attrib V12    -0.34118819978732107
#>     Attrib V13    -0.1583465348001251
#>     Attrib V14    0.07094103751499448
#>     Attrib V15    0.39589676106083566
#>     Attrib V16    0.26742083981651715
#>     Attrib V17    -0.08658378521255715
#>     Attrib V18    -0.04485220065623006
#>     Attrib V19    0.014846262606385708
#>     Attrib V2    -0.1053344527601449
#>     Attrib V20    0.011789009040426669
#>     Attrib V21    0.1035180796299049
#>     Attrib V22    -0.02937724948922065
#>     Attrib V23    -0.30692069520295195
#>     Attrib V24    -0.18090093678536426
#>     Attrib V25    0.20133397132278555
#>     Attrib V26    0.19688505603517734
#>     Attrib V27    -0.08455856965893407
#>     Attrib V28    -0.45317966816160266
#>     Attrib V29    -0.14794825362761554
#>     Attrib V3    0.058382897976121534
#>     Attrib V30    -0.4839239829561903
#>     Attrib V31    0.25691646063835766
#>     Attrib V32    -0.061168231338332754
#>     Attrib V33    -0.15330362699395336
#>     Attrib V34    0.08191247801465323
#>     Attrib V35    0.13062264536556306
#>     Attrib V36    0.3147369732390597
#>     Attrib V37    0.5954584442542641
#>     Attrib V38    -0.09429862469184311
#>     Attrib V39    -0.17005101713951737
#>     Attrib V4    -0.07269644684912357
#>     Attrib V40    0.1681720753804285
#>     Attrib V41    0.10993557378144064
#>     Attrib V42    -0.18042282036480226
#>     Attrib V43    -0.24619169199984184
#>     Attrib V44    -0.32971518445651055
#>     Attrib V45    -0.2377110212278474
#>     Attrib V46    -0.009020870639564846
#>     Attrib V47    0.20146137353863622
#>     Attrib V48    0.028609171290796837
#>     Attrib V49    -0.47318024160179206
#>     Attrib V5    0.09037927647122479
#>     Attrib V50    0.2725399362958804
#>     Attrib V51    -0.1183267836614564
#>     Attrib V52    -0.016145718803600984
#>     Attrib V53    -0.008850378606465797
#>     Attrib V54    -0.29405978109682307
#>     Attrib V55    0.1789172183239291
#>     Attrib V56    -0.04876111137132403
#>     Attrib V57    0.6626239919018201
#>     Attrib V58    0.07295534441171454
#>     Attrib V59    0.03226040703527237
#>     Attrib V6    0.241686584084367
#>     Attrib V60    -0.07423925418819417
#>     Attrib V7    0.09672770315378569
#>     Attrib V8    0.03644395948479397
#>     Attrib V9    -0.49464093122187586
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.13718913674087
#>     Attrib V1    1.4085365626425521
#>     Attrib V10    0.44882436758942007
#>     Attrib V11    1.3138436966435398
#>     Attrib V12    1.6196379730996187
#>     Attrib V13    1.2621485102745522
#>     Attrib V14    0.11565583640012103
#>     Attrib V15    -0.9648927289682444
#>     Attrib V16    -0.9732201747712074
#>     Attrib V17    0.33885762637454925
#>     Attrib V18    -0.20686974078091708
#>     Attrib V19    -0.8607856373032859
#>     Attrib V2    1.0543072810454344
#>     Attrib V20    -0.7045183764984162
#>     Attrib V21    0.10417065035740807
#>     Attrib V22    0.5277937582654689
#>     Attrib V23    0.8184193081357319
#>     Attrib V24    -0.03327113159444303
#>     Attrib V25    -0.1427191566288997
#>     Attrib V26    1.072620433913744
#>     Attrib V27    2.22813756633709
#>     Attrib V28    2.712227308326026
#>     Attrib V29    2.1068107332664967
#>     Attrib V3    0.8598429620867025
#>     Attrib V30    1.8438318984691633
#>     Attrib V31    -0.4091292688540728
#>     Attrib V32    0.18378697831328625
#>     Attrib V33    -0.5907133897417833
#>     Attrib V34    -1.1003729867718988
#>     Attrib V35    -1.2411285138942827
#>     Attrib V36    -1.0377826732512032
#>     Attrib V37    -1.216386699577676
#>     Attrib V38    -0.15252927859113505
#>     Attrib V39    0.71454296946003
#>     Attrib V4    0.9713971978052053
#>     Attrib V40    0.4092824812036975
#>     Attrib V41    0.6502516553929975
#>     Attrib V42    0.47672342412914726
#>     Attrib V43    0.3167030655668405
#>     Attrib V44    1.1522609134750772
#>     Attrib V45    1.463263692139354
#>     Attrib V46    0.9564067886550227
#>     Attrib V47    0.17342458592761723
#>     Attrib V48    -0.024519267370366544
#>     Attrib V49    1.1872847235668822
#>     Attrib V5    0.48294346497874807
#>     Attrib V50    -0.546235910028538
#>     Attrib V51    0.8780678765659455
#>     Attrib V52    1.2969194875933836
#>     Attrib V53    0.26152043332868075
#>     Attrib V54    -0.03687579089085791
#>     Attrib V55    -0.5852438609910167
#>     Attrib V56    -1.1264148118386499
#>     Attrib V57    -1.808202788492739
#>     Attrib V58    -0.35642375815374266
#>     Attrib V59    -0.27180426005793334
#>     Attrib V6    -0.014574006833719743
#>     Attrib V60    -0.015744469744542907
#>     Attrib V7    -0.4497814413010378
#>     Attrib V8    -0.9306606296925153
#>     Attrib V9    1.0989904227588545
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.3981805221483317
#>     Attrib V1    -0.3122618183071904
#>     Attrib V10    -0.29601767113856764
#>     Attrib V11    -0.4785190452893743
#>     Attrib V12    -0.41620070966902367
#>     Attrib V13    -0.1802314575984107
#>     Attrib V14    0.12584335606563013
#>     Attrib V15    0.4012363372672741
#>     Attrib V16    0.308846379559634
#>     Attrib V17    -0.17624863607920457
#>     Attrib V18    -0.11368443689261479
#>     Attrib V19    0.03797960509610132
#>     Attrib V2    -0.09551375064718393
#>     Attrib V20    0.0018049040125176676
#>     Attrib V21    0.12331497456185915
#>     Attrib V22    -0.015346477167913177
#>     Attrib V23    -0.4120001973745283
#>     Attrib V24    -0.20182180048274198
#>     Attrib V25    0.24979808584694324
#>     Attrib V26    0.18623920445771072
#>     Attrib V27    -0.017500576823031185
#>     Attrib V28    -0.5068859038444059
#>     Attrib V29    -0.12675430253715605
#>     Attrib V3    0.06407075748819657
#>     Attrib V30    -0.56434869912491
#>     Attrib V31    0.3217110313475477
#>     Attrib V32    -0.1377137396928204
#>     Attrib V33    -0.10705114904871964
#>     Attrib V34    0.08657993087525839
#>     Attrib V35    0.20979513170143785
#>     Attrib V36    0.3741408081354067
#>     Attrib V37    0.7743269539168991
#>     Attrib V38    -0.13878085638362148
#>     Attrib V39    -0.18732898848007443
#>     Attrib V4    -0.09366037014947483
#>     Attrib V40    0.15271975065624202
#>     Attrib V41    0.09814616615765052
#>     Attrib V42    -0.15280244144112848
#>     Attrib V43    -0.327216273090549
#>     Attrib V44    -0.35982567934014065
#>     Attrib V45    -0.22964728803930107
#>     Attrib V46    -0.033755473849355844
#>     Attrib V47    0.17855045488457696
#>     Attrib V48    0.07093299616469559
#>     Attrib V49    -0.5436850498964773
#>     Attrib V5    0.10814357325593457
#>     Attrib V50    0.3075734812032233
#>     Attrib V51    -0.19668427251790038
#>     Attrib V52    -0.10391254016968954
#>     Attrib V53    0.021840162153223278
#>     Attrib V54    -0.3234809971757565
#>     Attrib V55    0.18353802401747352
#>     Attrib V56    -0.06523493225978554
#>     Attrib V57    0.7832703008486664
#>     Attrib V58    0.0952060271336712
#>     Attrib V59    0.07461929323499376
#>     Attrib V6    0.29022689718587014
#>     Attrib V60    0.017248543313757702
#>     Attrib V7    0.12392244337692697
#>     Attrib V8    0.04976914728440187
#>     Attrib V9    -0.6785870125581323
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.07451261242593507
#>     Attrib V1    0.336478417058607
#>     Attrib V10    0.04957870030613104
#>     Attrib V11    0.06660162854663534
#>     Attrib V12    0.024311825890460867
#>     Attrib V13    -0.21909908535584052
#>     Attrib V14    -0.21309911992026248
#>     Attrib V15    -0.2731115237447181
#>     Attrib V16    0.057134412171035716
#>     Attrib V17    0.41204930225798964
#>     Attrib V18    0.46701273702211576
#>     Attrib V19    0.4469959824045841
#>     Attrib V2    0.09257408993598752
#>     Attrib V20    0.4832504370480498
#>     Attrib V21    0.2861007990615667
#>     Attrib V22    0.3311665085574201
#>     Attrib V23    0.7916301393001614
#>     Attrib V24    0.510941479338941
#>     Attrib V25    -0.360040429058086
#>     Attrib V26    -0.5835195631565997
#>     Attrib V27    -0.6800399377922001
#>     Attrib V28    -0.2759304894836329
#>     Attrib V29    -0.6867632558900031
#>     Attrib V3    -0.060236972597889946
#>     Attrib V30    -0.13391573342226587
#>     Attrib V31    -0.8611253314544033
#>     Attrib V32    -0.17651927862170186
#>     Attrib V33    0.21163982755936694
#>     Attrib V34    0.11364408156293221
#>     Attrib V35    0.10977135198307565
#>     Attrib V36    -0.22195858203786667
#>     Attrib V37    -0.7252461949802761
#>     Attrib V38    0.276953302428781
#>     Attrib V39    0.16896163935889838
#>     Attrib V4    0.21698866474366615
#>     Attrib V40    -0.3766572693442095
#>     Attrib V41    -0.164084651226471
#>     Attrib V42    0.23067117714092256
#>     Attrib V43    0.4998680260554132
#>     Attrib V44    0.5129396766622174
#>     Attrib V45    0.2883799105344357
#>     Attrib V46    0.06599042414433492
#>     Attrib V47    -0.21834464391296257
#>     Attrib V48    -0.08838937981342314
#>     Attrib V49    0.44412674883804815
#>     Attrib V5    -0.09393054777990346
#>     Attrib V50    0.12890644380008073
#>     Attrib V51    0.13473320352537194
#>     Attrib V52    -0.10564254877144257
#>     Attrib V53    -0.00786167570201687
#>     Attrib V54    0.7164247553718495
#>     Attrib V55    0.02818831578025564
#>     Attrib V56    0.5618403193088639
#>     Attrib V57    -0.31024156270948977
#>     Attrib V58    0.17749179614696386
#>     Attrib V59    0.3046528653824748
#>     Attrib V6    -0.1702234919382559
#>     Attrib V60    0.36379929722234555
#>     Attrib V7    0.018738798090396542
#>     Attrib V8    0.28357033729374603
#>     Attrib V9    0.5902114200753318
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.197338397076255
#>     Attrib V1    -0.6499396736514023
#>     Attrib V10    -1.0686988232978654
#>     Attrib V11    -1.3007835564866836
#>     Attrib V12    -1.285339100891539
#>     Attrib V13    -0.5599890052764768
#>     Attrib V14    0.3823258442199928
#>     Attrib V15    1.2469446793604946
#>     Attrib V16    1.0790426845022776
#>     Attrib V17    -0.0012414053448154575
#>     Attrib V18    0.20125349833580297
#>     Attrib V19    0.29631158285604337
#>     Attrib V2    -0.5214313853396034
#>     Attrib V20    0.4066563881089948
#>     Attrib V21    0.29598383090879177
#>     Attrib V22    -0.02656323090014753
#>     Attrib V23    -0.5760738101372141
#>     Attrib V24    -0.3829629708247148
#>     Attrib V25    -0.30528083523440375
#>     Attrib V26    -0.6357104410720995
#>     Attrib V27    -0.7849588307016683
#>     Attrib V28    -1.0167437539621342
#>     Attrib V29    -0.06028375622024115
#>     Attrib V3    -0.23977081967592537
#>     Attrib V30    -0.7571492898722165
#>     Attrib V31    0.09123501161009157
#>     Attrib V32    -0.6112536805172492
#>     Attrib V33    -0.2922700703761253
#>     Attrib V34    -0.062318474400222826
#>     Attrib V35    0.06631475283574996
#>     Attrib V36    0.4411643255147164
#>     Attrib V37    1.1809062401045143
#>     Attrib V38    0.37557679018559964
#>     Attrib V39    -0.027773064545072657
#>     Attrib V4    -0.4689872965218838
#>     Attrib V40    0.15671269805717494
#>     Attrib V41    0.11170163118029751
#>     Attrib V42    -0.05383503998859211
#>     Attrib V43    -0.16840179319189824
#>     Attrib V44    -0.6147262049307911
#>     Attrib V45    -0.6476437806148118
#>     Attrib V46    -0.42292300522514925
#>     Attrib V47    -0.14120248107814917
#>     Attrib V48    -0.19510253930260318
#>     Attrib V49    -1.0015720954258949
#>     Attrib V5    -0.15764153984692597
#>     Attrib V50    0.4958013470834451
#>     Attrib V51    -0.6617101679795565
#>     Attrib V52    -0.7974034269439378
#>     Attrib V53    -0.08641352468492412
#>     Attrib V54    -0.09375252881852793
#>     Attrib V55    0.38509336041797465
#>     Attrib V56    0.6203248686915438
#>     Attrib V57    1.5309188624691945
#>     Attrib V58    0.3380805246999386
#>     Attrib V59    0.4490669822806926
#>     Attrib V6    0.14292739326849738
#>     Attrib V60    0.05571209869419141
#>     Attrib V7    0.20719723792190045
#>     Attrib V8    0.46530995345041937
#>     Attrib V9    -1.3198405261537294
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.09569892458290936
#>     Attrib V1    0.09985918459895946
#>     Attrib V10    -0.006880793539782823
#>     Attrib V11    0.08477172279540904
#>     Attrib V12    0.061343064450200255
#>     Attrib V13    -0.02681828213007199
#>     Attrib V14    0.07708150070202972
#>     Attrib V15    -0.032047191238418024
#>     Attrib V16    -0.013726698773036762
#>     Attrib V17    0.09851007579059723
#>     Attrib V18    0.10727100349914936
#>     Attrib V19    0.05480478835993792
#>     Attrib V2    0.08635336363452843
#>     Attrib V20    0.16610224861256903
#>     Attrib V21    0.11473638595563754
#>     Attrib V22    0.09447619328890086
#>     Attrib V23    0.14059896157048235
#>     Attrib V24    0.11599044529342104
#>     Attrib V25    -0.08640012237358495
#>     Attrib V26    -0.1955568119311442
#>     Attrib V27    -0.16356301971505185
#>     Attrib V28    -0.08164501751932596
#>     Attrib V29    -0.09645089813578153
#>     Attrib V3    0.08959304424351837
#>     Attrib V30    -0.04686005122784132
#>     Attrib V31    -0.21366551532139696
#>     Attrib V32    -0.024069185712697873
#>     Attrib V33    0.06935725591099144
#>     Attrib V34    0.022690171060278742
#>     Attrib V35    0.019221004357580514
#>     Attrib V36    -0.0745662105950598
#>     Attrib V37    -0.1462587744378753
#>     Attrib V38    0.07725138882910468
#>     Attrib V39    0.08695263497266245
#>     Attrib V4    0.13364429218827792
#>     Attrib V40    -0.06698939809588988
#>     Attrib V41    -0.035724826729209104
#>     Attrib V42    0.008212231536944383
#>     Attrib V43    0.16616585643754458
#>     Attrib V44    0.0998613647561224
#>     Attrib V45    0.1261685956540568
#>     Attrib V46    0.05288287719345023
#>     Attrib V47    -5.400411607774095E-4
#>     Attrib V48    -0.01225363828819094
#>     Attrib V49    0.12839664191665748
#>     Attrib V5    0.034336141773500556
#>     Attrib V50    0.06700864514694979
#>     Attrib V51    0.12783629306782984
#>     Attrib V52    0.10445586984164727
#>     Attrib V53    0.061444658334419276
#>     Attrib V54    0.19892842866437171
#>     Attrib V55    0.11347408721100656
#>     Attrib V56    0.17366697883239796
#>     Attrib V57    -0.0325822231693363
#>     Attrib V58    0.07377778290995231
#>     Attrib V59    0.08910751035556358
#>     Attrib V6    -0.004373575997183853
#>     Attrib V60    0.14398686577960787
#>     Attrib V7    -0.005263434209612192
#>     Attrib V8    0.06114549609135612
#>     Attrib V9    0.16922242559887968
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.08307131495611914
#>     Attrib V1    0.1890487957751373
#>     Attrib V10    0.04955010151401208
#>     Attrib V11    0.04188958821901224
#>     Attrib V12    0.06875989539301783
#>     Attrib V13    0.015684665761129833
#>     Attrib V14    0.027916967415103418
#>     Attrib V15    -0.03539616413243193
#>     Attrib V16    0.00152089622481661
#>     Attrib V17    0.17184922067778022
#>     Attrib V18    0.1220571285488687
#>     Attrib V19    0.07560544527505081
#>     Attrib V2    0.12852144070512997
#>     Attrib V20    0.13184472884057183
#>     Attrib V21    0.14141702194277586
#>     Attrib V22    0.08607252071598755
#>     Attrib V23    0.22248315490870735
#>     Attrib V24    0.07551520199054619
#>     Attrib V25    -0.1342516936503241
#>     Attrib V26    -0.15364074801879593
#>     Attrib V27    -0.1806064027795466
#>     Attrib V28    -0.055873138611675845
#>     Attrib V29    -0.21013637247457226
#>     Attrib V3    0.04582573898344331
#>     Attrib V30    0.0179871025006735
#>     Attrib V31    -0.238654500121936
#>     Attrib V32    -0.09959697245154867
#>     Attrib V33    0.013501619848953657
#>     Attrib V34    -0.031007372053640694
#>     Attrib V35    -0.0012150293103898038
#>     Attrib V36    -0.10116926279686447
#>     Attrib V37    -0.17553812701598448
#>     Attrib V38    0.06566138554026651
#>     Attrib V39    0.13854375989659604
#>     Attrib V4    0.20549171068890262
#>     Attrib V40    -0.08272549389751273
#>     Attrib V41    -0.06826457975738859
#>     Attrib V42    0.0859133731026262
#>     Attrib V43    0.1320368107620719
#>     Attrib V44    0.11847139980665769
#>     Attrib V45    0.08277962216895071
#>     Attrib V46    0.018465751455915096
#>     Attrib V47    -0.08948273711851779
#>     Attrib V48    -0.0018889701729847036
#>     Attrib V49    0.14211334723872004
#>     Attrib V5    0.01009385152643361
#>     Attrib V50    0.007376256666364617
#>     Attrib V51    0.08279364376080901
#>     Attrib V52    0.050269586600283626
#>     Attrib V53    0.07076552605144627
#>     Attrib V54    0.24721150884665483
#>     Attrib V55    0.03372250994513416
#>     Attrib V56    0.22127093575076318
#>     Attrib V57    -0.09932566692345035
#>     Attrib V58    0.1270037499812658
#>     Attrib V59    0.17868169604639259
#>     Attrib V6    -0.0466020534994671
#>     Attrib V60    0.17160852712610664
#>     Attrib V7    -0.05384808218678639
#>     Attrib V8    0.03027369158976094
#>     Attrib V9    0.16625687208327136
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.14633289267236532
#>     Attrib V1    0.07308993500580417
#>     Attrib V10    0.020862856529191363
#>     Attrib V11    0.04707580455355501
#>     Attrib V12    -0.025014862078890292
#>     Attrib V13    0.003837635786047268
#>     Attrib V14    0.05367899484731818
#>     Attrib V15    0.006294879751068613
#>     Attrib V16    0.01915918575000225
#>     Attrib V17    0.09799025590199545
#>     Attrib V18    0.09242985702613561
#>     Attrib V19    0.03380477624203954
#>     Attrib V2    0.1238197252228088
#>     Attrib V20    0.06845564765211745
#>     Attrib V21    -0.027962808882021482
#>     Attrib V22    0.039970027409082544
#>     Attrib V23    0.0831185096647109
#>     Attrib V24    0.0425616329212579
#>     Attrib V25    -0.10125219333463424
#>     Attrib V26    -0.07506534658961679
#>     Attrib V27    -0.12804486525578437
#>     Attrib V28    -0.12724878636343753
#>     Attrib V29    -0.14913228896727615
#>     Attrib V3    0.034791681296669326
#>     Attrib V30    -0.06368657194764184
#>     Attrib V31    -0.06345389395166197
#>     Attrib V32    -0.02185675436512451
#>     Attrib V33    0.07074893796966648
#>     Attrib V34    0.0536991814455987
#>     Attrib V35    0.08721922651725159
#>     Attrib V36    0.015924968964665127
#>     Attrib V37    0.01731444273988433
#>     Attrib V38    0.1035644566018296
#>     Attrib V39    0.01971343421428701
#>     Attrib V4    0.14821992325751296
#>     Attrib V40    4.700666923698051E-4
#>     Attrib V41    -0.033326992350924865
#>     Attrib V42    -0.001211274661851477
#>     Attrib V43    0.0861362827568725
#>     Attrib V44    0.11940724443085643
#>     Attrib V45    0.02367664513201425
#>     Attrib V46    0.030284834752080433
#>     Attrib V47    0.010091004695834765
#>     Attrib V48    0.019374655473401975
#>     Attrib V49    0.06502462788589007
#>     Attrib V5    0.06510761902743291
#>     Attrib V50    0.0276199719799006
#>     Attrib V51    0.05454338185731017
#>     Attrib V52    0.07417704373689044
#>     Attrib V53    0.09697617881320464
#>     Attrib V54    0.1330049928581677
#>     Attrib V55    0.06339320009452903
#>     Attrib V56    0.06616779507206605
#>     Attrib V57    0.048030878567588184
#>     Attrib V58    0.021383324935283863
#>     Attrib V59    0.05945968382321515
#>     Attrib V6    0.03650281660425206
#>     Attrib V60    0.10425083172706
#>     Attrib V7    0.04252218679502468
#>     Attrib V8    0.04594763991384165
#>     Attrib V9    0.12153362893113771
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.17551557770990214
#>     Attrib V1    0.014368074937536739
#>     Attrib V10    -0.027855664501860698
#>     Attrib V11    -0.007249907642305541
#>     Attrib V12    -0.009378853748665636
#>     Attrib V13    -0.05615115159812833
#>     Attrib V14    0.07377372962113972
#>     Attrib V15    0.07880057272484103
#>     Attrib V16    0.10162539243956094
#>     Attrib V17    0.004494278020372294
#>     Attrib V18    0.08553983352027782
#>     Attrib V19    -0.032928932246575886
#>     Attrib V2    0.03421795403598138
#>     Attrib V20    -0.016929321215045413
#>     Attrib V21    0.00958709131538539
#>     Attrib V22    -0.027381733178183272
#>     Attrib V23    -0.04036420957896489
#>     Attrib V24    -0.054005393029959034
#>     Attrib V25    -0.036979524957025306
#>     Attrib V26    -0.04670806149541169
#>     Attrib V27    -0.07167493419186696
#>     Attrib V28    -0.0832754716872885
#>     Attrib V29    -0.08868998499632648
#>     Attrib V3    0.11856133441779189
#>     Attrib V30    -0.0653134898142928
#>     Attrib V31    0.002550098204320539
#>     Attrib V32    -0.01012893052888848
#>     Attrib V33    0.03819002244801123
#>     Attrib V34    0.06017412968419552
#>     Attrib V35    0.10167046754096364
#>     Attrib V36    0.1618119018018767
#>     Attrib V37    0.18028484169975317
#>     Attrib V38    0.016046083980575356
#>     Attrib V39    0.06527075074989394
#>     Attrib V4    0.05021975193261563
#>     Attrib V40    0.07995137900410927
#>     Attrib V41    0.025616809415586445
#>     Attrib V42    0.04117431692695327
#>     Attrib V43    -0.03657256693653209
#>     Attrib V44    0.03695433818755495
#>     Attrib V45    0.04063816941199001
#>     Attrib V46    0.0322059991188501
#>     Attrib V47    0.05020961302619265
#>     Attrib V48    -0.008888110713712911
#>     Attrib V49    -0.016270816967906738
#>     Attrib V5    0.10078669428555312
#>     Attrib V50    0.023140990085339853
#>     Attrib V51    0.04186582132445852
#>     Attrib V52    0.08268999141977973
#>     Attrib V53    0.056744033929705597
#>     Attrib V54    -0.07589465853135292
#>     Attrib V55    0.02361592197984488
#>     Attrib V56    0.06965168831536982
#>     Attrib V57    0.16293885996406549
#>     Attrib V58    0.10363486326549595
#>     Attrib V59    0.024936818640017136
#>     Attrib V6    0.13289333554981012
#>     Attrib V60    0.0665177164031636
#>     Attrib V7    0.07933322368339109
#>     Attrib V8    0.09718537667439224
#>     Attrib V9    0.008792431851566834
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
#>  0.3043478 
```
