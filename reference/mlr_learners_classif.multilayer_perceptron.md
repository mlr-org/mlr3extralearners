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
#>     Threshold    -0.5172316364761225
#>     Node 2    1.5906165868180808
#>     Node 3    1.1233183637657111
#>     Node 4    1.1022519753902262
#>     Node 5    -1.9282015002681605
#>     Node 6    0.8704460075005381
#>     Node 7    2.936535644002466
#>     Node 8    1.6310518899423476
#>     Node 9    3.664261105283605
#>     Node 10    -2.152668089230691
#>     Node 11    1.521775960752478
#>     Node 12    1.3985962651542592
#>     Node 13    1.0416833950755513
#>     Node 14    1.5794450897973071
#>     Node 15    -2.3765183396148375
#>     Node 16    -1.0373202992337323
#>     Node 17    0.8075649791600419
#>     Node 18    0.5224773907955846
#>     Node 19    2.506517400774579
#>     Node 20    1.4226645527279975
#>     Node 21    -1.4972653589587908
#>     Node 22    1.2520966179485844
#>     Node 23    1.1499657794099267
#>     Node 24    -2.201884384282165
#>     Node 25    4.779068345916991
#>     Node 26    -0.12614908155429302
#>     Node 27    1.9218036581504085
#>     Node 28    -2.513659942960518
#>     Node 29    0.7134445292913618
#>     Node 30    -0.08929443098238955
#>     Node 31    0.8689733975013432
#>     Node 32    0.6804870113761837
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.5417172283890513
#>     Node 2    -1.65317707097992
#>     Node 3    -1.1085847643317852
#>     Node 4    -1.0647655121525612
#>     Node 5    1.9476291636204022
#>     Node 6    -0.8484514382182798
#>     Node 7    -2.9307689367766434
#>     Node 8    -1.6675664572934803
#>     Node 9    -3.6645359858883078
#>     Node 10    2.092894006543387
#>     Node 11    -1.4925060674539856
#>     Node 12    -1.4768705013644872
#>     Node 13    -0.989352602857736
#>     Node 14    -1.5170107885382773
#>     Node 15    2.368864926445422
#>     Node 16    1.0292104119486989
#>     Node 17    -0.774932723362122
#>     Node 18    -0.4822809282395019
#>     Node 19    -2.50679951166598
#>     Node 20    -1.4204563328970972
#>     Node 21    1.5582178984252075
#>     Node 22    -1.3028489567374608
#>     Node 23    -1.1949901588019414
#>     Node 24    2.19635061895628
#>     Node 25    -4.773092414819689
#>     Node 26    0.04322327805318375
#>     Node 27    -1.9648565350774276
#>     Node 28    2.4822019296107194
#>     Node 29    -0.7470809162171327
#>     Node 30    0.16567836869794839
#>     Node 31    -0.8115958266053321
#>     Node 32    -0.6989719977737715
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.0022076597633117236
#>     Attrib V1    0.2297054576070559
#>     Attrib V10    0.018219827874396192
#>     Attrib V11    0.5110454255484066
#>     Attrib V12    0.11736765146041103
#>     Attrib V13    -0.24220628662031043
#>     Attrib V14    -0.6366692904794429
#>     Attrib V15    -0.026053955576385672
#>     Attrib V16    0.4988105529827683
#>     Attrib V17    0.11598090621169697
#>     Attrib V18    -0.3524928938296013
#>     Attrib V19    -0.012428531631603765
#>     Attrib V2    -0.05593463235461365
#>     Attrib V20    0.480946035154155
#>     Attrib V21    0.8015248205298569
#>     Attrib V22    0.30517574412683607
#>     Attrib V23    -0.06876476750235772
#>     Attrib V24    0.4355748647324418
#>     Attrib V25    -0.17973305382413737
#>     Attrib V26    -0.6318392124451029
#>     Attrib V27    -0.43353699565581905
#>     Attrib V28    0.017447236470942026
#>     Attrib V29    -0.494487634203627
#>     Attrib V3    -0.20296810728918863
#>     Attrib V30    0.1209383689786937
#>     Attrib V31    -0.8463435440235461
#>     Attrib V32    -0.03866096280680889
#>     Attrib V33    0.45102841307376373
#>     Attrib V34    -0.09570949486639314
#>     Attrib V35    -0.1609221257590729
#>     Attrib V36    -0.5788369608613897
#>     Attrib V37    -0.9048827322444292
#>     Attrib V38    -0.04739896509499835
#>     Attrib V39    0.36851806221440625
#>     Attrib V4    0.13568013373072427
#>     Attrib V40    -0.3054476427537833
#>     Attrib V41    -0.33125140838772804
#>     Attrib V42    0.6676359978890457
#>     Attrib V43    0.901400132031406
#>     Attrib V44    0.8095504147184702
#>     Attrib V45    0.38028715173363675
#>     Attrib V46    0.5009173688430978
#>     Attrib V47    -0.03961426718801852
#>     Attrib V48    0.13215580836068844
#>     Attrib V49    0.33208850764004577
#>     Attrib V5    0.4657078008690078
#>     Attrib V50    -0.8012278688274952
#>     Attrib V51    0.08291086509629884
#>     Attrib V52    -0.04983647675249184
#>     Attrib V53    -0.023455070826908973
#>     Attrib V54    0.02020056603905202
#>     Attrib V55    -0.1207727998277058
#>     Attrib V56    0.0981583835076104
#>     Attrib V57    -0.3001033821134988
#>     Attrib V58    0.32835698200066366
#>     Attrib V59    0.5209393421697794
#>     Attrib V6    -0.36580942107645836
#>     Attrib V60    -0.06444143589406741
#>     Attrib V7    -0.0743553307589139
#>     Attrib V8    -0.0677304561785653
#>     Attrib V9    0.3834773947386259
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.038787697282361
#>     Attrib V1    0.19245589547018427
#>     Attrib V10    -0.07226073844577736
#>     Attrib V11    0.21522881427361334
#>     Attrib V12    0.009801205251377869
#>     Attrib V13    -0.10798736325737499
#>     Attrib V14    -0.3003492871215469
#>     Attrib V15    0.1643369110188356
#>     Attrib V16    0.38227689785293895
#>     Attrib V17    0.09068938664935838
#>     Attrib V18    -0.2964574810521131
#>     Attrib V19    8.505032808788887E-4
#>     Attrib V2    0.04765715662009541
#>     Attrib V20    0.2809710829045969
#>     Attrib V21    0.41659974070532046
#>     Attrib V22    0.14026342117238322
#>     Attrib V23    -0.11066512265604526
#>     Attrib V24    0.17995493806060447
#>     Attrib V25    -0.22791553282549473
#>     Attrib V26    -0.5698299321834174
#>     Attrib V27    -0.44796436411282425
#>     Attrib V28    -0.1386725615892032
#>     Attrib V29    -0.45648167524334415
#>     Attrib V3    -0.08795050002006692
#>     Attrib V30    0.009430717794808478
#>     Attrib V31    -0.5094402450248627
#>     Attrib V32    0.06483402154043212
#>     Attrib V33    0.4365522509247617
#>     Attrib V34    -0.047871579720739556
#>     Attrib V35    -0.16536321745686314
#>     Attrib V36    -0.4786528321400087
#>     Attrib V37    -0.7126352190932258
#>     Attrib V38    -0.16968623173015907
#>     Attrib V39    0.20114554309237237
#>     Attrib V4    0.1282277993612003
#>     Attrib V40    -0.19195475654980704
#>     Attrib V41    -0.2573911167118461
#>     Attrib V42    0.3710567192206616
#>     Attrib V43    0.45901048791498633
#>     Attrib V44    0.4069301392863114
#>     Attrib V45    0.21615914988631552
#>     Attrib V46    0.28692746840760297
#>     Attrib V47    -0.05265175443502368
#>     Attrib V48    -0.010412072390577874
#>     Attrib V49    0.15590611258562134
#>     Attrib V5    0.2894294989836941
#>     Attrib V50    -0.5006170477381231
#>     Attrib V51    -0.015978893201789777
#>     Attrib V52    -0.021939034086897995
#>     Attrib V53    -0.07489874428104613
#>     Attrib V54    0.12028582328928224
#>     Attrib V55    0.08668939195034861
#>     Attrib V56    0.12215216416452275
#>     Attrib V57    -0.06001592074499978
#>     Attrib V58    0.3640518826888806
#>     Attrib V59    0.44881735523525235
#>     Attrib V6    -0.2222033399940122
#>     Attrib V60    -0.010209934309120653
#>     Attrib V7    -0.023336575508561674
#>     Attrib V8    0.03530208254080689
#>     Attrib V9    0.1698432617234047
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.05334288407375887
#>     Attrib V1    0.13996503057328608
#>     Attrib V10    -0.09309626189701331
#>     Attrib V11    0.21471094727322418
#>     Attrib V12    -0.019673957147090276
#>     Attrib V13    -0.11704826094599938
#>     Attrib V14    -0.2955850721809935
#>     Attrib V15    0.1361744068162437
#>     Attrib V16    0.37830384545021994
#>     Attrib V17    0.09482459346811922
#>     Attrib V18    -0.28046478429840105
#>     Attrib V19    -0.030772778912625778
#>     Attrib V2    4.4854657665411093E-4
#>     Attrib V20    0.27447928598015375
#>     Attrib V21    0.487312243251841
#>     Attrib V22    0.08433749336763458
#>     Attrib V23    -0.1432012117535411
#>     Attrib V24    0.13202578977474178
#>     Attrib V25    -0.30874035039589925
#>     Attrib V26    -0.5680155036253491
#>     Attrib V27    -0.437061590686984
#>     Attrib V28    -0.03148714681067872
#>     Attrib V29    -0.2750681326450585
#>     Attrib V3    -0.08355281102626134
#>     Attrib V30    0.012215197274631514
#>     Attrib V31    -0.5370889536925862
#>     Attrib V32    0.008977744325180668
#>     Attrib V33    0.4102426696056367
#>     Attrib V34    -0.009423797537803999
#>     Attrib V35    -0.1523683784005376
#>     Attrib V36    -0.460963740576273
#>     Attrib V37    -0.6560391325363495
#>     Attrib V38    -0.13564575903161816
#>     Attrib V39    0.23112125479797208
#>     Attrib V4    0.09591252566679591
#>     Attrib V40    -0.17957262650347444
#>     Attrib V41    -0.2643601269602395
#>     Attrib V42    0.3967655700299845
#>     Attrib V43    0.45508930616804755
#>     Attrib V44    0.421218044469842
#>     Attrib V45    0.29051164151669523
#>     Attrib V46    0.276307309659576
#>     Attrib V47    -0.09303728695777774
#>     Attrib V48    0.05436121012251578
#>     Attrib V49    0.22859858117173049
#>     Attrib V5    0.3158631227308826
#>     Attrib V50    -0.483190793706938
#>     Attrib V51    0.048550334172603904
#>     Attrib V52    -0.05346588762621267
#>     Attrib V53    -0.018519190071687303
#>     Attrib V54    -0.0012881889904536629
#>     Attrib V55    0.02468312349706793
#>     Attrib V56    0.12682275067016485
#>     Attrib V57    -0.07463149036014168
#>     Attrib V58    0.28826999856446334
#>     Attrib V59    0.4094051448279985
#>     Attrib V6    -0.21548123454639587
#>     Attrib V60    -0.03728632824827408
#>     Attrib V7    -0.019925775278426396
#>     Attrib V8    -0.04617917880213799
#>     Attrib V9    0.22348569956332498
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.006496987831948428
#>     Attrib V1    -0.29735027587011786
#>     Attrib V10    -0.01319900021464089
#>     Attrib V11    -0.6147304824830975
#>     Attrib V12    -0.26095471227301986
#>     Attrib V13    0.28632667808733964
#>     Attrib V14    0.8585177018747852
#>     Attrib V15    0.06720256766420377
#>     Attrib V16    -0.6245795411868877
#>     Attrib V17    -0.09176655049291581
#>     Attrib V18    0.4733992889578407
#>     Attrib V19    0.04305155171114155
#>     Attrib V2    0.02562961154453495
#>     Attrib V20    -0.4814040750413174
#>     Attrib V21    -0.8518712583624756
#>     Attrib V22    -0.395956825023208
#>     Attrib V23    0.10482435716599936
#>     Attrib V24    -0.5283580541597971
#>     Attrib V25    0.26479721891395713
#>     Attrib V26    0.746301782995216
#>     Attrib V27    0.542136322498404
#>     Attrib V28    0.1444514376785839
#>     Attrib V29    0.7689787401232423
#>     Attrib V3    0.30313919963328945
#>     Attrib V30    -0.0486310387966887
#>     Attrib V31    0.8500930600220842
#>     Attrib V32    -0.055458378599324995
#>     Attrib V33    -0.6571898407465662
#>     Attrib V34    0.05363827733278107
#>     Attrib V35    0.3497050723751355
#>     Attrib V36    0.8816168809651835
#>     Attrib V37    1.1693668759615627
#>     Attrib V38    0.17650589578766057
#>     Attrib V39    -0.35662392807448107
#>     Attrib V4    -0.20351778034043563
#>     Attrib V40    0.4001256833062071
#>     Attrib V41    0.37884635274937245
#>     Attrib V42    -0.655996818588393
#>     Attrib V43    -0.8983889051697426
#>     Attrib V44    -0.731739335258114
#>     Attrib V45    -0.3832207757817585
#>     Attrib V46    -0.5976850805956927
#>     Attrib V47    0.005850150777147934
#>     Attrib V48    -0.21084641817202235
#>     Attrib V49    -0.480579705234836
#>     Attrib V5    -0.38437287787078067
#>     Attrib V50    0.9825657462760303
#>     Attrib V51    -0.12150386283154038
#>     Attrib V52    -0.014408078694831206
#>     Attrib V53    0.09107765444721967
#>     Attrib V54    -0.04517110841166292
#>     Attrib V55    0.09016036635853307
#>     Attrib V56    -0.12639544551593737
#>     Attrib V57    0.14558876602237913
#>     Attrib V58    -0.48365526207002035
#>     Attrib V59    -0.5348193820765605
#>     Attrib V6    0.4125298974074323
#>     Attrib V60    0.08700942550458815
#>     Attrib V7    0.06949925745483125
#>     Attrib V8    0.12769631609314758
#>     Attrib V9    -0.4804903695154934
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.01688414668959053
#>     Attrib V1    0.18656124349076392
#>     Attrib V10    -0.1306125053718991
#>     Attrib V11    0.14718887821653134
#>     Attrib V12    0.021681210672230923
#>     Attrib V13    -0.13720104359330174
#>     Attrib V14    -0.21826041991727893
#>     Attrib V15    0.11112229988325159
#>     Attrib V16    0.3757532813885933
#>     Attrib V17    0.06682314423176541
#>     Attrib V18    -0.16416030541221288
#>     Attrib V19    -0.05074392720234054
#>     Attrib V2    0.04269172747617309
#>     Attrib V20    0.21898641861010112
#>     Attrib V21    0.3497097979659678
#>     Attrib V22    0.04218026502990116
#>     Attrib V23    -0.12561452797542216
#>     Attrib V24    0.14973982412520706
#>     Attrib V25    -0.1640615599820101
#>     Attrib V26    -0.45176760102767205
#>     Attrib V27    -0.34885643621366624
#>     Attrib V28    -0.20297203955401688
#>     Attrib V29    -0.3674584651353137
#>     Attrib V3    -0.05151231383814641
#>     Attrib V30    -0.06880498662628959
#>     Attrib V31    -0.4281842673061243
#>     Attrib V32    0.045875716743046274
#>     Attrib V33    0.3279396431749217
#>     Attrib V34    -0.015445381492408346
#>     Attrib V35    -0.09942508662095992
#>     Attrib V36    -0.37464862467999727
#>     Attrib V37    -0.5297790271658686
#>     Attrib V38    -0.11311239685863039
#>     Attrib V39    0.135178031307921
#>     Attrib V4    0.14174527206125603
#>     Attrib V40    -0.17302065149334686
#>     Attrib V41    -0.16451855521374
#>     Attrib V42    0.308645123410138
#>     Attrib V43    0.3542681353318618
#>     Attrib V44    0.2610687425058957
#>     Attrib V45    0.19240300091762763
#>     Attrib V46    0.2488586691244286
#>     Attrib V47    -0.0681090027500132
#>     Attrib V48    -0.02003964772570481
#>     Attrib V49    0.08859440476337833
#>     Attrib V5    0.22853337614436217
#>     Attrib V50    -0.32901194500117636
#>     Attrib V51    0.022303336512567485
#>     Attrib V52    -0.03934360632622433
#>     Attrib V53    0.03839573815605654
#>     Attrib V54    0.06880057565216723
#>     Attrib V55    0.06204178716988419
#>     Attrib V56    0.12989050735308574
#>     Attrib V57    0.006552378464195215
#>     Attrib V58    0.29234023378645696
#>     Attrib V59    0.40688572835560066
#>     Attrib V6    -0.10732418460098467
#>     Attrib V60    0.06928499751830391
#>     Attrib V7    0.014130255148818749
#>     Attrib V8    0.04443725583936292
#>     Attrib V9    0.16653880608112198
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.2204733802752241
#>     Attrib V1    0.21555651948291088
#>     Attrib V10    0.6594368389697489
#>     Attrib V11    1.0220912757708642
#>     Attrib V12    0.7272784356607277
#>     Attrib V13    0.3470764595585086
#>     Attrib V14    -0.1871134853443408
#>     Attrib V15    -0.34400571782272643
#>     Attrib V16    -0.21557511438601565
#>     Attrib V17    -0.6647566247146907
#>     Attrib V18    -0.4218119899515797
#>     Attrib V19    0.015714582370362724
#>     Attrib V2    0.3340147969992285
#>     Attrib V20    -0.10519933713574206
#>     Attrib V21    0.43142346499480894
#>     Attrib V22    0.17344325664319918
#>     Attrib V23    0.20996288575964142
#>     Attrib V24    0.7563745802716731
#>     Attrib V25    0.5244091932768937
#>     Attrib V26    1.1216203535779494
#>     Attrib V27    1.3575429409229764
#>     Attrib V28    1.5602411221566894
#>     Attrib V29    1.504018884899069
#>     Attrib V3    0.07756058471826388
#>     Attrib V30    0.7932556626850088
#>     Attrib V31    -0.29780353430656215
#>     Attrib V32    -0.5708514000461857
#>     Attrib V33    -0.38378378140996067
#>     Attrib V34    -0.04764156655587232
#>     Attrib V35    -0.08823548687833757
#>     Attrib V36    -0.5937250695366705
#>     Attrib V37    -0.33505210268884783
#>     Attrib V38    -0.03513487116286848
#>     Attrib V39    0.8545989926804344
#>     Attrib V4    0.2800780138380601
#>     Attrib V40    0.6198317571574898
#>     Attrib V41    0.4962546440011135
#>     Attrib V42    0.15836405923003324
#>     Attrib V43    0.38462947378674145
#>     Attrib V44    0.23136502616678875
#>     Attrib V45    -0.18792316681499394
#>     Attrib V46    0.45644716965064197
#>     Attrib V47    0.3759489652329435
#>     Attrib V48    0.6849329382723475
#>     Attrib V49    1.0901375183690745
#>     Attrib V5    0.545539942991144
#>     Attrib V50    -0.20452769122696732
#>     Attrib V51    0.6327525803643981
#>     Attrib V52    0.7600734376868798
#>     Attrib V53    0.6940377441553276
#>     Attrib V54    -0.10981099904854644
#>     Attrib V55    -0.19770275924199962
#>     Attrib V56    -0.10272397610659255
#>     Attrib V57    -0.4793537770925152
#>     Attrib V58    -0.16149919431040963
#>     Attrib V59    0.21558710644277826
#>     Attrib V6    0.21234631126074008
#>     Attrib V60    -0.02467025626021711
#>     Attrib V7    0.008758875952047636
#>     Attrib V8    -0.31334754518227376
#>     Attrib V9    0.5180870191566297
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.19911398395590962
#>     Attrib V1    -0.010685293543770968
#>     Attrib V10    0.14502514868121769
#>     Attrib V11    0.5218252079945362
#>     Attrib V12    0.15789831756715453
#>     Attrib V13    -0.12541189496787403
#>     Attrib V14    -0.6037301234544853
#>     Attrib V15    -0.30353562348067614
#>     Attrib V16    -0.0173590559576638
#>     Attrib V17    -0.5541792782587768
#>     Attrib V18    -0.7431539046431714
#>     Attrib V19    -0.38059429489269214
#>     Attrib V2    -0.07766167918058765
#>     Attrib V20    -0.23870465092992826
#>     Attrib V21    0.2021310300900809
#>     Attrib V22    -0.08754047425037963
#>     Attrib V23    -0.10393157301677008
#>     Attrib V24    0.6768706727293915
#>     Attrib V25    0.3538887929253907
#>     Attrib V26    0.1583577604535665
#>     Attrib V27    0.43181944582533094
#>     Attrib V28    0.7842337579812907
#>     Attrib V29    0.34919503613087216
#>     Attrib V3    -0.2503313213152685
#>     Attrib V30    0.37197644022037335
#>     Attrib V31    -0.4863353674338281
#>     Attrib V32    -0.24165515331450518
#>     Attrib V33    0.22460231216908882
#>     Attrib V34    0.05570147306205773
#>     Attrib V35    -0.11178910232138486
#>     Attrib V36    -0.5650908414147549
#>     Attrib V37    -0.7998727614712825
#>     Attrib V38    -0.19465560444217755
#>     Attrib V39    0.2684937664684666
#>     Attrib V4    0.02461997720493154
#>     Attrib V40    -0.06084892809599544
#>     Attrib V41    -0.06279901485003907
#>     Attrib V42    0.28097048449954615
#>     Attrib V43    0.549046470694761
#>     Attrib V44    0.5566532757705751
#>     Attrib V45    0.22780701734770356
#>     Attrib V46    0.5009966003045702
#>     Attrib V47    0.11388026711860678
#>     Attrib V48    0.33912025160256587
#>     Attrib V49    0.5045037287348616
#>     Attrib V5    0.2356498255270548
#>     Attrib V50    -0.669196006134887
#>     Attrib V51    0.011422676846826345
#>     Attrib V52    0.10584596914974921
#>     Attrib V53    0.3221524516366397
#>     Attrib V54    -0.10518896243381563
#>     Attrib V55    -0.19999833363327768
#>     Attrib V56    -0.20166113577564831
#>     Attrib V57    -0.31598044264975644
#>     Attrib V58    0.14075801942054808
#>     Attrib V59    0.3464510521427928
#>     Attrib V6    -0.2736245158472866
#>     Attrib V60    -0.09157308120038826
#>     Attrib V7    -0.15771961932493775
#>     Attrib V8    -0.13210685189920734
#>     Attrib V9    0.37353935340188704
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.1283816250057525
#>     Attrib V1    0.27347342372421646
#>     Attrib V10    0.9318135945915169
#>     Attrib V11    1.280709320740227
#>     Attrib V12    1.140654703908893
#>     Attrib V13    0.6283701577294031
#>     Attrib V14    -0.1840615615081125
#>     Attrib V15    -0.33332973931727566
#>     Attrib V16    -0.3216140782634381
#>     Attrib V17    -0.7835290221015824
#>     Attrib V18    -0.6494597130823178
#>     Attrib V19    -0.2578523484004032
#>     Attrib V2    0.5644061148393367
#>     Attrib V20    -0.3705992830676451
#>     Attrib V21    0.3328986753569613
#>     Attrib V22    0.07273473130257091
#>     Attrib V23    0.06978308907641144
#>     Attrib V24    0.7589782704080352
#>     Attrib V25    0.5905598003848622
#>     Attrib V26    1.412954360026713
#>     Attrib V27    1.6407395516452739
#>     Attrib V28    1.7579266449618323
#>     Attrib V29    1.6738582007578886
#>     Attrib V3    0.13052487679465
#>     Attrib V30    0.8525626288111874
#>     Attrib V31    -0.4442673799463581
#>     Attrib V32    -0.5908287118295782
#>     Attrib V33    -0.36925600244308465
#>     Attrib V34    0.10156803837972583
#>     Attrib V35    -0.17813474587497594
#>     Attrib V36    -0.6515244165386955
#>     Attrib V37    -0.2037936257656867
#>     Attrib V38    0.05592095465604542
#>     Attrib V39    1.0174518566245063
#>     Attrib V4    0.2882350974171681
#>     Attrib V40    0.7169502890915557
#>     Attrib V41    0.44292962359174753
#>     Attrib V42    -0.1705495920127277
#>     Attrib V43    0.24991255863454648
#>     Attrib V44    0.10186794994235555
#>     Attrib V45    -0.18928548829390904
#>     Attrib V46    0.5147380249514371
#>     Attrib V47    0.3544358501299964
#>     Attrib V48    0.7086345371529711
#>     Attrib V49    1.3315173558483282
#>     Attrib V5    0.46927748150402804
#>     Attrib V50    -0.2575957422832766
#>     Attrib V51    0.739359235687677
#>     Attrib V52    0.88329366159276
#>     Attrib V53    0.6642436310423357
#>     Attrib V54    -0.14588936796764976
#>     Attrib V55    -0.07863075878769986
#>     Attrib V56    -0.0373811559476549
#>     Attrib V57    -0.7009335944759345
#>     Attrib V58    -0.30988451422976293
#>     Attrib V59    0.2260260101501122
#>     Attrib V6    0.26244943455506803
#>     Attrib V60    -0.029463200850116403
#>     Attrib V7    -0.010670813228370489
#>     Attrib V8    -0.2644122438375491
#>     Attrib V9    0.6405316253698868
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.03546785968922294
#>     Attrib V1    -0.2681442478232255
#>     Attrib V10    -0.02491380917983901
#>     Attrib V11    -0.6696206362880813
#>     Attrib V12    -0.1860058178407367
#>     Attrib V13    0.38382058962022175
#>     Attrib V14    0.9859794595829765
#>     Attrib V15    0.012229820479973091
#>     Attrib V16    -0.6550014217672546
#>     Attrib V17    -0.2015742643135736
#>     Attrib V18    0.5188405432299757
#>     Attrib V19    0.06038222560620279
#>     Attrib V2    0.01284368286127879
#>     Attrib V20    -0.4893404195842921
#>     Attrib V21    -0.9030287684676401
#>     Attrib V22    -0.43748809403360606
#>     Attrib V23    0.07797852199023246
#>     Attrib V24    -0.552869630555324
#>     Attrib V25    0.23768745421987647
#>     Attrib V26    0.8365416765542136
#>     Attrib V27    0.6120809393621044
#>     Attrib V28    0.20237270706675445
#>     Attrib V29    0.832121807715385
#>     Attrib V3    0.28968768401702516
#>     Attrib V30    -0.03012983956041944
#>     Attrib V31    0.8988764084313129
#>     Attrib V32    -0.14278945682274136
#>     Attrib V33    -0.6649493995170482
#>     Attrib V34    0.10597591255344113
#>     Attrib V35    0.33449227933760317
#>     Attrib V36    0.8809296257983322
#>     Attrib V37    1.2360094100633436
#>     Attrib V38    0.22237054507990542
#>     Attrib V39    -0.36308365901719686
#>     Attrib V4    -0.18403437451146867
#>     Attrib V40    0.4612543587912572
#>     Attrib V41    0.4726582198124381
#>     Attrib V42    -0.7678940831765714
#>     Attrib V43    -1.0021459443911624
#>     Attrib V44    -0.8435419204118799
#>     Attrib V45    -0.38879973656961275
#>     Attrib V46    -0.64072522188096
#>     Attrib V47    -0.01253349977577347
#>     Attrib V48    -0.2168612938280701
#>     Attrib V49    -0.46156797737797384
#>     Attrib V5    -0.42591691358367567
#>     Attrib V50    1.032955236389922
#>     Attrib V51    -0.1305543141073751
#>     Attrib V52    0.014271758972784722
#>     Attrib V53    0.1592278871303907
#>     Attrib V54    -0.0813087438861906
#>     Attrib V55    0.050499559344719815
#>     Attrib V56    -0.18572263409752932
#>     Attrib V57    0.17231797465158263
#>     Attrib V58    -0.5288826294987478
#>     Attrib V59    -0.5850785968997418
#>     Attrib V6    0.45865589324271416
#>     Attrib V60    0.0415413461022065
#>     Attrib V7    0.029108482892895596
#>     Attrib V8    0.09378870115982225
#>     Attrib V9    -0.508600065865193
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.03858662463962248
#>     Attrib V1    0.15688397253895767
#>     Attrib V10    -0.058272585875250124
#>     Attrib V11    0.39266114207000924
#>     Attrib V12    0.06944006370274365
#>     Attrib V13    -0.2901980605260278
#>     Attrib V14    -0.6204146101344263
#>     Attrib V15    0.003726603522232772
#>     Attrib V16    0.5228641774449466
#>     Attrib V17    0.2038308985897506
#>     Attrib V18    -0.30750050863576683
#>     Attrib V19    -0.02500131738250333
#>     Attrib V2    -0.08733728812445563
#>     Attrib V20    0.442552276012371
#>     Attrib V21    0.6424959133922169
#>     Attrib V22    0.2160877418558646
#>     Attrib V23    -0.11122757686391058
#>     Attrib V24    0.3112608367376586
#>     Attrib V25    -0.2131035545753062
#>     Attrib V26    -0.7099018584217875
#>     Attrib V27    -0.5177027164519585
#>     Attrib V28    -0.13063810351156552
#>     Attrib V29    -0.6294474208045228
#>     Attrib V3    -0.2406513461592699
#>     Attrib V30    0.01111753740000587
#>     Attrib V31    -0.7711369570734753
#>     Attrib V32    -0.014065456531793103
#>     Attrib V33    0.4875136744310427
#>     Attrib V34    -0.017071743379428336
#>     Attrib V35    -0.11394870098614088
#>     Attrib V36    -0.5193797241966653
#>     Attrib V37    -0.8797939759246814
#>     Attrib V38    -0.0735909007048145
#>     Attrib V39    0.24679989870012378
#>     Attrib V4    0.11449864608764106
#>     Attrib V40    -0.3387309207941924
#>     Attrib V41    -0.40687428404442777
#>     Attrib V42    0.5645951159927423
#>     Attrib V43    0.7586102371633824
#>     Attrib V44    0.7109355505784742
#>     Attrib V45    0.423801585750623
#>     Attrib V46    0.4637018603086083
#>     Attrib V47    -0.010525687890715507
#>     Attrib V48    0.11350478773933569
#>     Attrib V49    0.2589089630761467
#>     Attrib V5    0.4078868124554709
#>     Attrib V50    -0.672308541229532
#>     Attrib V51    0.10360757305502917
#>     Attrib V52    -0.12066251768633374
#>     Attrib V53    -0.0732576980641827
#>     Attrib V54    0.10449119000684864
#>     Attrib V55    -0.04673157262047753
#>     Attrib V56    0.1297371571880724
#>     Attrib V57    -0.14539894897665076
#>     Attrib V58    0.40430999645276255
#>     Attrib V59    0.4007024879721084
#>     Attrib V6    -0.2790180550489483
#>     Attrib V60    -0.06921746684254855
#>     Attrib V7    -0.07483347138859789
#>     Attrib V8    -0.007845279107332502
#>     Attrib V9    0.3628361024230068
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.046639187274896333
#>     Attrib V1    0.18652212319284697
#>     Attrib V10    -0.18712504749717046
#>     Attrib V11    0.26528366217354504
#>     Attrib V12    -0.13161545611602937
#>     Attrib V13    -0.24002249616046498
#>     Attrib V14    -0.4093580472742842
#>     Attrib V15    0.12254747429794258
#>     Attrib V16    0.5638098535014457
#>     Attrib V17    0.1777355809785017
#>     Attrib V18    -0.3067837506363076
#>     Attrib V19    0.01320389041195172
#>     Attrib V2    0.03199734712159202
#>     Attrib V20    0.3501934456599111
#>     Attrib V21    0.538511503671889
#>     Attrib V22    0.22082758704923203
#>     Attrib V23    -0.11940391414947052
#>     Attrib V24    0.14880070639678292
#>     Attrib V25    -0.3678751803963938
#>     Attrib V26    -0.7749050346396645
#>     Attrib V27    -0.5688885194126613
#>     Attrib V28    -0.23940500786959246
#>     Attrib V29    -0.5471484652599315
#>     Attrib V3    -0.17533084615479128
#>     Attrib V30    -0.07418906642201825
#>     Attrib V31    -0.683668762601953
#>     Attrib V32    0.05283601318740209
#>     Attrib V33    0.5606216081704837
#>     Attrib V34    -0.011865421516991846
#>     Attrib V35    -0.1871656039603457
#>     Attrib V36    -0.5125171292246479
#>     Attrib V37    -0.835841431848312
#>     Attrib V38    -0.1251477810568245
#>     Attrib V39    0.15456003245616334
#>     Attrib V4    0.17412166709145846
#>     Attrib V40    -0.25221771644928037
#>     Attrib V41    -0.3237313284559331
#>     Attrib V42    0.47540525591961647
#>     Attrib V43    0.6398990818343245
#>     Attrib V44    0.4629419466022253
#>     Attrib V45    0.33230168582378455
#>     Attrib V46    0.4449965226291497
#>     Attrib V47    -0.08147681239611822
#>     Attrib V48    0.027479854095957993
#>     Attrib V49    0.116584727360075
#>     Attrib V5    0.3392378598318788
#>     Attrib V50    -0.6274016612330431
#>     Attrib V51    0.015210527476029375
#>     Attrib V52    -0.0773884233231451
#>     Attrib V53    -0.060403599530581054
#>     Attrib V54    0.1081756221901382
#>     Attrib V55    0.020925005576401284
#>     Attrib V56    0.16712947218195381
#>     Attrib V57    -0.00994734051743251
#>     Attrib V58    0.4505990147966563
#>     Attrib V59    0.48128259693983644
#>     Attrib V6    -0.30345088841225626
#>     Attrib V60    5.271090314608907E-4
#>     Attrib V7    0.007592652491667596
#>     Attrib V8    0.04875636022821425
#>     Attrib V9    0.2568026788986686
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.09474332590125975
#>     Attrib V1    0.17064606963144247
#>     Attrib V10    -0.12718799693280589
#>     Attrib V11    0.20080359629006056
#>     Attrib V12    -0.009712801303380673
#>     Attrib V13    -0.07522473169445813
#>     Attrib V14    -0.28895416473848795
#>     Attrib V15    0.09981884277954937
#>     Attrib V16    0.36025011215997116
#>     Attrib V17    0.12454765606924148
#>     Attrib V18    -0.23238501434150308
#>     Attrib V19    -0.03679160295479358
#>     Attrib V2    -0.0038560424139550895
#>     Attrib V20    0.3001266309046707
#>     Attrib V21    0.43867003606181043
#>     Attrib V22    0.08507267717751066
#>     Attrib V23    -0.08134270660910106
#>     Attrib V24    0.19571971450935477
#>     Attrib V25    -0.17018993004295904
#>     Attrib V26    -0.5562544781135272
#>     Attrib V27    -0.38804385839887506
#>     Attrib V28    -0.17960454852899388
#>     Attrib V29    -0.3822817167139525
#>     Attrib V3    -0.05115416236412514
#>     Attrib V30    -0.03760449837497848
#>     Attrib V31    -0.5428435897238708
#>     Attrib V32    0.02960791750640271
#>     Attrib V33    0.36352972697709285
#>     Attrib V34    0.02868825022461384
#>     Attrib V35    -0.14687053471677952
#>     Attrib V36    -0.4286219875593666
#>     Attrib V37    -0.6218994816828762
#>     Attrib V38    -0.10549391352953505
#>     Attrib V39    0.23165902875436606
#>     Attrib V4    0.12671442098475885
#>     Attrib V40    -0.17180128129170308
#>     Attrib V41    -0.24537223867393954
#>     Attrib V42    0.36520438086198204
#>     Attrib V43    0.4152914738086953
#>     Attrib V44    0.3507986259597022
#>     Attrib V45    0.19486702133293635
#>     Attrib V46    0.32036046646091115
#>     Attrib V47    -0.025550922764486846
#>     Attrib V48    0.008434997469651997
#>     Attrib V49    0.18084550866934224
#>     Attrib V5    0.28567819440912
#>     Attrib V50    -0.4745114548100949
#>     Attrib V51    -0.005142507250680997
#>     Attrib V52    -0.07436786759232818
#>     Attrib V53    -0.012348752744900144
#>     Attrib V54    0.061910926039611784
#>     Attrib V55    0.03978104697437293
#>     Attrib V56    0.12203791908701787
#>     Attrib V57    -0.0336806983406143
#>     Attrib V58    0.2941444668189747
#>     Attrib V59    0.4416785161272017
#>     Attrib V6    -0.16730715166284166
#>     Attrib V60    0.057167430674262915
#>     Attrib V7    0.04037020934500305
#>     Attrib V8    -0.035633102480387945
#>     Attrib V9    0.16623029447179916
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.1893309265652261
#>     Attrib V1    0.10470992285399912
#>     Attrib V10    0.12231613887646318
#>     Attrib V11    0.5744214043220034
#>     Attrib V12    0.20185672947751673
#>     Attrib V13    -0.19142591519795846
#>     Attrib V14    -0.6411570659537834
#>     Attrib V15    -0.2164935412189126
#>     Attrib V16    -0.01012500478428967
#>     Attrib V17    -0.4667219921635572
#>     Attrib V18    -0.7393471757138208
#>     Attrib V19    -0.42685176226739746
#>     Attrib V2    -0.05724421109861413
#>     Attrib V20    -0.1557080974507172
#>     Attrib V21    0.21345868077436017
#>     Attrib V22    -0.06093575731785758
#>     Attrib V23    -0.11629754363488876
#>     Attrib V24    0.5417186207547517
#>     Attrib V25    0.24237231200853143
#>     Attrib V26    0.023881406109733348
#>     Attrib V27    0.2589543212504931
#>     Attrib V28    0.6314598653325887
#>     Attrib V29    0.1826861791781493
#>     Attrib V3    -0.33276636616560196
#>     Attrib V30    0.35939846604728426
#>     Attrib V31    -0.5217387819137365
#>     Attrib V32    -0.18687837775728017
#>     Attrib V33    0.2909275597770393
#>     Attrib V34    -0.0033962257486720845
#>     Attrib V35    -0.10128349390951498
#>     Attrib V36    -0.6020778671848143
#>     Attrib V37    -0.7160235132331371
#>     Attrib V38    -0.16447863835913035
#>     Attrib V39    0.3628333606577369
#>     Attrib V4    -0.03721342180990035
#>     Attrib V40    -0.1061728390713559
#>     Attrib V41    -0.17223649761629037
#>     Attrib V42    0.30659668595521894
#>     Attrib V43    0.5404199941179441
#>     Attrib V44    0.5806685511088346
#>     Attrib V45    0.18375483236243625
#>     Attrib V46    0.45274396742439027
#>     Attrib V47    -0.006705624882840503
#>     Attrib V48    0.28314233037737474
#>     Attrib V49    0.5041078524259767
#>     Attrib V5    0.2116417282895603
#>     Attrib V50    -0.717897671630631
#>     Attrib V51    -0.029041019742311477
#>     Attrib V52    0.038370521083856045
#>     Attrib V53    0.11643243232353896
#>     Attrib V54    -0.06774644983156972
#>     Attrib V55    -0.17341666458859373
#>     Attrib V56    -0.10488716628988584
#>     Attrib V57    -0.34816578220263833
#>     Attrib V58    0.20529101739009378
#>     Attrib V59    0.34684026623839775
#>     Attrib V6    -0.33085187718127324
#>     Attrib V60    -0.0978236969151116
#>     Attrib V7    -0.19439836085417356
#>     Attrib V8    -0.1773831749181405
#>     Attrib V9    0.3639507737384695
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    0.04723020830800488
#>     Attrib V1    -0.33380604024766114
#>     Attrib V10    -0.002632290454620876
#>     Attrib V11    -0.7150085858326085
#>     Attrib V12    -0.08531731210417062
#>     Attrib V13    0.4310575732563148
#>     Attrib V14    1.0054741778097285
#>     Attrib V15    0.08905657876596458
#>     Attrib V16    -0.7179524824892244
#>     Attrib V17    -0.20522415987629478
#>     Attrib V18    0.5041656601151169
#>     Attrib V19    0.08098579581619339
#>     Attrib V2    0.04073915031643982
#>     Attrib V20    -0.591798434580205
#>     Attrib V21    -1.0512318573532833
#>     Attrib V22    -0.4922671827583126
#>     Attrib V23    -0.005403885755999145
#>     Attrib V24    -0.5606709667798299
#>     Attrib V25    0.22838039222001397
#>     Attrib V26    0.9424415077519573
#>     Attrib V27    0.638046643668333
#>     Attrib V28    0.2213450977963747
#>     Attrib V29    0.9853673259546919
#>     Attrib V3    0.35113117925099724
#>     Attrib V30    -0.10101257231844715
#>     Attrib V31    0.9676634324950413
#>     Attrib V32    -0.02839220421718409
#>     Attrib V33    -0.6927443932990238
#>     Attrib V34    0.20945080319974033
#>     Attrib V35    0.32292010310235125
#>     Attrib V36    0.8856143292614156
#>     Attrib V37    1.3408649150798544
#>     Attrib V38    0.17872315868633637
#>     Attrib V39    -0.3319375663240807
#>     Attrib V4    -0.172537190961703
#>     Attrib V40    0.5092545802261998
#>     Attrib V41    0.5103432109891747
#>     Attrib V42    -0.9188901929081474
#>     Attrib V43    -1.180235326041291
#>     Attrib V44    -1.0364224975054264
#>     Attrib V45    -0.49312272532213647
#>     Attrib V46    -0.6798748058583829
#>     Attrib V47    -0.022542585099397945
#>     Attrib V48    -0.16879128916685218
#>     Attrib V49    -0.4189782203671742
#>     Attrib V5    -0.4428743406871594
#>     Attrib V50    1.058080050551382
#>     Attrib V51    -0.09691731125158062
#>     Attrib V52    0.03463816191048946
#>     Attrib V53    0.1488774665715833
#>     Attrib V54    -0.15966550364845591
#>     Attrib V55    0.08691307398604842
#>     Attrib V56    -0.14771494881797168
#>     Attrib V57    0.16503029823430493
#>     Attrib V58    -0.5974801967312117
#>     Attrib V59    -0.5889113620303382
#>     Attrib V6    0.5126343629254113
#>     Attrib V60    0.008907060629949006
#>     Attrib V7    -0.003043954332450626
#>     Attrib V8    0.07395045825673678
#>     Attrib V9    -0.5315722157477107
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.10267355029551559
#>     Attrib V1    -0.0987460466280262
#>     Attrib V10    -0.04657017545530341
#>     Attrib V11    -0.45169223152639004
#>     Attrib V12    -0.29230027919796564
#>     Attrib V13    0.02967464394015091
#>     Attrib V14    0.3516094064080034
#>     Attrib V15    0.07231056504634728
#>     Attrib V16    -0.10836096832191518
#>     Attrib V17    0.19626805321702778
#>     Attrib V18    0.5066763215044124
#>     Attrib V19    0.29938785885862107
#>     Attrib V2    -0.0778150675388124
#>     Attrib V20    0.03682687051936167
#>     Attrib V21    -0.22926963814321158
#>     Attrib V22    -0.02581177582712015
#>     Attrib V23    0.14702533133331513
#>     Attrib V24    -0.18324244251729352
#>     Attrib V25    0.06974179765586976
#>     Attrib V26    0.09209384385147489
#>     Attrib V27    -0.07354636498555639
#>     Attrib V28    -0.24899102142736737
#>     Attrib V29    -0.018538533974184875
#>     Attrib V3    0.2007402623968006
#>     Attrib V30    -0.22828427271242888
#>     Attrib V31    0.34496359348053546
#>     Attrib V32    0.04268231947072341
#>     Attrib V33    -0.24856728573165165
#>     Attrib V34    0.055919703637902565
#>     Attrib V35    0.19955894189908716
#>     Attrib V36    0.46644127612049946
#>     Attrib V37    0.5737442788092744
#>     Attrib V38    0.07490352442566486
#>     Attrib V39    -0.2983240520083463
#>     Attrib V4    0.0016713471443036184
#>     Attrib V40    0.07619573949592914
#>     Attrib V41    0.2725682204907552
#>     Attrib V42    -0.09678994789394543
#>     Attrib V43    -0.3388398672337374
#>     Attrib V44    -0.30338758826982004
#>     Attrib V45    -0.09818095964099531
#>     Attrib V46    -0.2590064874601111
#>     Attrib V47    0.01960906039372771
#>     Attrib V48    -0.23144338731599662
#>     Attrib V49    -0.3778880004438815
#>     Attrib V5    -0.1384112763097484
#>     Attrib V50    0.5524635199298741
#>     Attrib V51    -0.022104312024006024
#>     Attrib V52    -0.04366189490696464
#>     Attrib V53    0.06032875667826925
#>     Attrib V54    0.08504704632929973
#>     Attrib V55    0.04499677405008913
#>     Attrib V56    -0.0012769855533446915
#>     Attrib V57    0.22778513716658894
#>     Attrib V58    -0.1120968074780302
#>     Attrib V59    -0.25419179750036713
#>     Attrib V6    0.2878639344015186
#>     Attrib V60    0.17155311137428378
#>     Attrib V7    0.1448315877518412
#>     Attrib V8    0.14797885204149963
#>     Attrib V9    -0.1845266439512394
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.038859549714899
#>     Attrib V1    0.16867170929906478
#>     Attrib V10    -0.03547902245161928
#>     Attrib V11    0.18026436541371507
#>     Attrib V12    -0.03525417364519676
#>     Attrib V13    -0.12406638013295718
#>     Attrib V14    -0.22764764949802138
#>     Attrib V15    0.15307663481835398
#>     Attrib V16    0.30363708069605044
#>     Attrib V17    0.07414199155753773
#>     Attrib V18    -0.20501850015045697
#>     Attrib V19    -0.028814897456653235
#>     Attrib V2    0.10325983888324655
#>     Attrib V20    0.14832985850317343
#>     Attrib V21    0.2646129253273663
#>     Attrib V22    0.08228148737043726
#>     Attrib V23    -0.16795415119837206
#>     Attrib V24    0.09861190757045442
#>     Attrib V25    -0.24504040506410474
#>     Attrib V26    -0.4487829510735572
#>     Attrib V27    -0.3439298825466317
#>     Attrib V28    -0.16701598276751728
#>     Attrib V29    -0.34741000230497815
#>     Attrib V3    -0.0687127929163322
#>     Attrib V30    -0.031223110910896582
#>     Attrib V31    -0.34816963206555124
#>     Attrib V32    -0.004103635002603599
#>     Attrib V33    0.3429084006843504
#>     Attrib V34    -0.00998151199426223
#>     Attrib V35    -0.06805700339527175
#>     Attrib V36    -0.33803988827399056
#>     Attrib V37    -0.5072679526924379
#>     Attrib V38    -0.04659255579737697
#>     Attrib V39    0.1565057711291389
#>     Attrib V4    0.10800856120921504
#>     Attrib V40    -0.1841262005526856
#>     Attrib V41    -0.19354667932371483
#>     Attrib V42    0.21150856793646042
#>     Attrib V43    0.35796883672160645
#>     Attrib V44    0.27304298539923594
#>     Attrib V45    0.2021092280969212
#>     Attrib V46    0.18736066708509977
#>     Attrib V47    -0.0990626407729023
#>     Attrib V48    0.06367128584938474
#>     Attrib V49    0.08391850192936964
#>     Attrib V5    0.2052247694075967
#>     Attrib V50    -0.31971629135239354
#>     Attrib V51    0.04033754450513641
#>     Attrib V52    -0.038411591242820335
#>     Attrib V53    -0.04356597863826349
#>     Attrib V54    0.04509091469322109
#>     Attrib V55    0.12363166039538345
#>     Attrib V56    0.13347367769715165
#>     Attrib V57    0.025189172632076404
#>     Attrib V58    0.21466377322214567
#>     Attrib V59    0.2894306741686759
#>     Attrib V6    -0.1238001238740384
#>     Attrib V60    0.0333456313893187
#>     Attrib V7    -0.05191528614246171
#>     Attrib V8    0.030444226794557615
#>     Attrib V9    0.14510623877155465
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.1175055589511159
#>     Attrib V1    0.11836466128147465
#>     Attrib V10    -0.03199086136113867
#>     Attrib V11    0.11717807281364244
#>     Attrib V12    0.010553080811150153
#>     Attrib V13    -0.043637548944816903
#>     Attrib V14    -0.08983888471351514
#>     Attrib V15    0.06658360694865167
#>     Attrib V16    0.18642576952028148
#>     Attrib V17    0.001117788091380925
#>     Attrib V18    -0.07772402761048516
#>     Attrib V19    -0.07029106795173348
#>     Attrib V2    0.07208987714555812
#>     Attrib V20    0.1096575120970648
#>     Attrib V21    0.17982041018351339
#>     Attrib V22    -0.0438008766229323
#>     Attrib V23    -0.13395268275216404
#>     Attrib V24    0.026292408546655877
#>     Attrib V25    -0.10608418718070409
#>     Attrib V26    -0.23043087607073642
#>     Attrib V27    -0.20581760294410792
#>     Attrib V28    -0.11402909645493466
#>     Attrib V29    -0.19790590667994787
#>     Attrib V3    0.041463193896693215
#>     Attrib V30    -0.07541960123789258
#>     Attrib V31    -0.27734465556381754
#>     Attrib V32    -0.03744214382536851
#>     Attrib V33    0.16884384031815844
#>     Attrib V34    0.06951388351435171
#>     Attrib V35    -0.04790212388943639
#>     Attrib V36    -0.11913973080699822
#>     Attrib V37    -0.29664926614329
#>     Attrib V38    -0.04787368457208653
#>     Attrib V39    0.16330845487501397
#>     Attrib V4    0.07362486535978685
#>     Attrib V40    -0.08816389223748128
#>     Attrib V41    -0.16849045292143766
#>     Attrib V42    0.1464212837369048
#>     Attrib V43    0.2145732634370737
#>     Attrib V44    0.1965270163854114
#>     Attrib V45    0.08518643222101253
#>     Attrib V46    0.13321306291835222
#>     Attrib V47    0.02674152419962778
#>     Attrib V48    0.05972442291389013
#>     Attrib V49    0.13230926397612106
#>     Attrib V5    0.16828925600878208
#>     Attrib V50    -0.21435530592115684
#>     Attrib V51    0.09448929106770577
#>     Attrib V52    0.02288296769971434
#>     Attrib V53    0.0569252109999171
#>     Attrib V54    0.06025520614515903
#>     Attrib V55    0.13345668396833166
#>     Attrib V56    0.13088213420097713
#>     Attrib V57    -0.030455650392479515
#>     Attrib V58    0.17304160518395031
#>     Attrib V59    0.2936147563449959
#>     Attrib V6    -0.09325345842545833
#>     Attrib V60    0.08541476571226567
#>     Attrib V7    0.027246805153871196
#>     Attrib V8    0.04817685632247814
#>     Attrib V9    0.09105400117621586
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.2026788456327965
#>     Attrib V1    0.09798523202385967
#>     Attrib V10    0.586930228952472
#>     Attrib V11    0.8719727261048086
#>     Attrib V12    0.7640506199973212
#>     Attrib V13    0.3053056736649323
#>     Attrib V14    -0.24815435484838275
#>     Attrib V15    -0.3029418863602343
#>     Attrib V16    -0.2427111069097794
#>     Attrib V17    -0.5884897629248922
#>     Attrib V18    -0.37784488208867
#>     Attrib V19    0.035598832825605824
#>     Attrib V2    0.19900214738910463
#>     Attrib V20    -0.11728199485019491
#>     Attrib V21    0.3697053957453988
#>     Attrib V22    0.20211693288687735
#>     Attrib V23    0.1622953390269749
#>     Attrib V24    0.8227630553401873
#>     Attrib V25    0.6188775859644126
#>     Attrib V26    0.9068999644027248
#>     Attrib V27    1.1524697076770027
#>     Attrib V28    1.2993312717489125
#>     Attrib V29    1.034313169114538
#>     Attrib V3    -0.045625895859829596
#>     Attrib V30    0.7028269672273378
#>     Attrib V31    -0.2213851074220385
#>     Attrib V32    -0.4978234491363291
#>     Attrib V33    -0.23900817801298588
#>     Attrib V34    -0.014538318385505428
#>     Attrib V35    0.050368638320694804
#>     Attrib V36    -0.5409694742812945
#>     Attrib V37    -0.5244640544740398
#>     Attrib V38    -0.08170737533103503
#>     Attrib V39    0.7778325942750475
#>     Attrib V4    0.26765498514864894
#>     Attrib V40    0.5091027122887886
#>     Attrib V41    0.3796515518289669
#>     Attrib V42    0.25815802930012943
#>     Attrib V43    0.5120039292028967
#>     Attrib V44    0.3048387099559521
#>     Attrib V45    -0.06432186179055371
#>     Attrib V46    0.41086385717491813
#>     Attrib V47    0.2814821142366826
#>     Attrib V48    0.6678161951436239
#>     Attrib V49    1.016187048406549
#>     Attrib V5    0.5499560193876157
#>     Attrib V50    -0.34886762041347
#>     Attrib V51    0.5145305937945507
#>     Attrib V52    0.6525151756402254
#>     Attrib V53    0.7205482806012671
#>     Attrib V54    -0.12296782477521799
#>     Attrib V55    -0.17509774380589563
#>     Attrib V56    -0.12149442523740507
#>     Attrib V57    -0.467706954121752
#>     Attrib V58    -0.045585425272864535
#>     Attrib V59    0.23367936102764553
#>     Attrib V6    0.16146814123754957
#>     Attrib V60    -0.06516104731169917
#>     Attrib V7    0.0015987495492685835
#>     Attrib V8    -0.3051523631622058
#>     Attrib V9    0.4693440095178022
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.1434059322740464
#>     Attrib V1    0.13249453966514738
#>     Attrib V10    0.12820480331284045
#>     Attrib V11    0.5006820825333294
#>     Attrib V12    0.2112580431294656
#>     Attrib V13    -0.12707655631244422
#>     Attrib V14    -0.5150481484135266
#>     Attrib V15    -0.10346068432016282
#>     Attrib V16    0.2529191072373686
#>     Attrib V17    -0.011562481870913613
#>     Attrib V18    -0.2648418513169756
#>     Attrib V19    0.09201217155178676
#>     Attrib V2    -0.1071427483321362
#>     Attrib V20    0.41444591168955774
#>     Attrib V21    0.7470560385954884
#>     Attrib V22    0.35774750181933107
#>     Attrib V23    0.0825271485955444
#>     Attrib V24    0.48302938509157095
#>     Attrib V25    0.03477622441689265
#>     Attrib V26    -0.10276178674289113
#>     Attrib V27    0.10533302866613525
#>     Attrib V28    0.3594916075415761
#>     Attrib V29    0.028728714745235744
#>     Attrib V3    -0.2759593266568046
#>     Attrib V30    0.35464569506663046
#>     Attrib V31    -0.6206258290048657
#>     Attrib V32    -0.3400585947860402
#>     Attrib V33    0.14980516160392598
#>     Attrib V34    -0.0800749230041565
#>     Attrib V35    0.09433822928865941
#>     Attrib V36    -0.2616881162089517
#>     Attrib V37    -0.48750225720702206
#>     Attrib V38    0.11072214152481702
#>     Attrib V39    0.42462297062967963
#>     Attrib V4    0.09695366228115937
#>     Attrib V40    -0.13668098190418593
#>     Attrib V41    -0.18290210813848412
#>     Attrib V42    0.4795129855778955
#>     Attrib V43    0.8723507250052615
#>     Attrib V44    0.9311967962651464
#>     Attrib V45    0.4676547834112913
#>     Attrib V46    0.5083682711930054
#>     Attrib V47    0.03678977352341525
#>     Attrib V48    0.21514023987904748
#>     Attrib V49    0.4331047547260662
#>     Attrib V5    0.4668256723393917
#>     Attrib V50    -0.6146231526456659
#>     Attrib V51    0.16716333634158437
#>     Attrib V52    0.07522140272427995
#>     Attrib V53    0.12418978459675742
#>     Attrib V54    -0.02799415567641812
#>     Attrib V55    -0.2017526258083663
#>     Attrib V56    0.034820998032054545
#>     Attrib V57    -0.47290302481049473
#>     Attrib V58    0.18931604666709834
#>     Attrib V59    0.39216983333625977
#>     Attrib V6    -0.20975379492239543
#>     Attrib V60    -0.05519516378815859
#>     Attrib V7    -0.07289959246293645
#>     Attrib V8    -0.22495549716225155
#>     Attrib V9    0.4023719543167191
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.023169350778067106
#>     Attrib V1    -0.21997402368694413
#>     Attrib V10    -0.0676064506763404
#>     Attrib V11    -0.5739916042296002
#>     Attrib V12    -0.24017275092671897
#>     Attrib V13    0.16327460970336732
#>     Attrib V14    0.638028801009871
#>     Attrib V15    0.02380808923118455
#>     Attrib V16    -0.48704020433455514
#>     Attrib V17    -0.06488723925819502
#>     Attrib V18    0.4088230367919655
#>     Attrib V19    0.06956812412097339
#>     Attrib V2    -0.05460074011019546
#>     Attrib V20    -0.27465733366159933
#>     Attrib V21    -0.5927535138923192
#>     Attrib V22    -0.30098065132796065
#>     Attrib V23    0.06625199439894873
#>     Attrib V24    -0.3769028805594375
#>     Attrib V25    0.23346786418551707
#>     Attrib V26    0.6437246023233926
#>     Attrib V27    0.4212776864895447
#>     Attrib V28    0.10077438020774081
#>     Attrib V29    0.5731475804585048
#>     Attrib V3    0.197695043180982
#>     Attrib V30    -0.03412181610297231
#>     Attrib V31    0.6798809196359095
#>     Attrib V32    -0.14062077732130496
#>     Attrib V33    -0.5827133023149847
#>     Attrib V34    0.03668969759331352
#>     Attrib V35    0.280904793278467
#>     Attrib V36    0.7291371699642344
#>     Attrib V37    1.0250207371811202
#>     Attrib V38    0.1725931725593153
#>     Attrib V39    -0.28749758121536306
#>     Attrib V4    -0.07962859032425058
#>     Attrib V40    0.31577737106583637
#>     Attrib V41    0.349043520556044
#>     Attrib V42    -0.5382322373101325
#>     Attrib V43    -0.6658517191080002
#>     Attrib V44    -0.5268069880257182
#>     Attrib V45    -0.24674865192950063
#>     Attrib V46    -0.43753462442680574
#>     Attrib V47    0.014289440390935194
#>     Attrib V48    -0.1537946492341342
#>     Attrib V49    -0.40524570765735735
#>     Attrib V5    -0.2967492274778268
#>     Attrib V50    0.808540443231352
#>     Attrib V51    -0.08942196935223247
#>     Attrib V52    0.002257702139424497
#>     Attrib V53    0.1315848155769382
#>     Attrib V54    0.034946352888389896
#>     Attrib V55    0.0034017651579289353
#>     Attrib V56    -0.1540780317811216
#>     Attrib V57    0.19257728295128762
#>     Attrib V58    -0.39298789810669954
#>     Attrib V59    -0.4043852173071541
#>     Attrib V6    0.2791424389313704
#>     Attrib V60    0.10091044697020611
#>     Attrib V7    0.07159598748424145
#>     Attrib V8    0.06673494465907817
#>     Attrib V9    -0.35612591227499174
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.09540029959780681
#>     Attrib V1    0.2540628346883275
#>     Attrib V10    -0.12144106531067445
#>     Attrib V11    0.20858574009831074
#>     Attrib V12    -0.05083575307762743
#>     Attrib V13    -0.21454985484099443
#>     Attrib V14    -0.35349794840898824
#>     Attrib V15    0.09813369072290866
#>     Attrib V16    0.5309734565980632
#>     Attrib V17    0.17576801806517692
#>     Attrib V18    -0.2776662895872377
#>     Attrib V19    -0.07729399970277556
#>     Attrib V2    0.04404407967969568
#>     Attrib V20    0.3041474281375323
#>     Attrib V21    0.42196426706516754
#>     Attrib V22    0.08366247717538433
#>     Attrib V23    -0.1988761031853002
#>     Attrib V24    0.18357551649596543
#>     Attrib V25    -0.29668828802052766
#>     Attrib V26    -0.687596828840469
#>     Attrib V27    -0.6010533002535423
#>     Attrib V28    -0.3653325381633388
#>     Attrib V29    -0.5976172573225759
#>     Attrib V3    -0.1331088854515994
#>     Attrib V30    -0.13279257862835916
#>     Attrib V31    -0.49628598332396634
#>     Attrib V32    0.11273867209279811
#>     Attrib V33    0.4680399375780868
#>     Attrib V34    0.003958488710238246
#>     Attrib V35    -0.15711481736701355
#>     Attrib V36    -0.45933261263885
#>     Attrib V37    -0.7163142030466438
#>     Attrib V38    -0.15748119802568777
#>     Attrib V39    0.12324554834410635
#>     Attrib V4    0.12535160695476066
#>     Attrib V40    -0.2286064988691439
#>     Attrib V41    -0.3605175761957421
#>     Attrib V42    0.3579878808896344
#>     Attrib V43    0.5287197358482045
#>     Attrib V44    0.3838749821512387
#>     Attrib V45    0.20857902626760547
#>     Attrib V46    0.34836447076377536
#>     Attrib V47    -0.12657416433381297
#>     Attrib V48    0.030012183984800614
#>     Attrib V49    0.1309352012530277
#>     Attrib V5    0.28248451124750873
#>     Attrib V50    -0.524653091059918
#>     Attrib V51    -0.024842723831621158
#>     Attrib V52    -0.09452312582742642
#>     Attrib V53    -0.10370241971492893
#>     Attrib V54    0.12402545194098633
#>     Attrib V55    0.1029922165187711
#>     Attrib V56    0.20099389520783917
#>     Attrib V57    0.0031066509625336707
#>     Attrib V58    0.4183630020910844
#>     Attrib V59    0.4062022757506121
#>     Attrib V6    -0.21308379203418373
#>     Attrib V60    0.04991915126842012
#>     Attrib V7    0.013897763498445341
#>     Attrib V8    -0.04960569225777581
#>     Attrib V9    0.2167524175524758
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.0624497469255059
#>     Attrib V1    0.22013581073112656
#>     Attrib V10    -0.16908331775992516
#>     Attrib V11    0.2411323068482174
#>     Attrib V12    0.022213661322691442
#>     Attrib V13    -0.17908503502633366
#>     Attrib V14    -0.3602494689186044
#>     Attrib V15    0.09592349444385531
#>     Attrib V16    0.4120737125318848
#>     Attrib V17    0.19852357651442604
#>     Attrib V18    -0.24888261988296848
#>     Attrib V19    -0.046356462524749016
#>     Attrib V2    -0.023413265376156685
#>     Attrib V20    0.2687703063609582
#>     Attrib V21    0.398237906678955
#>     Attrib V22    0.1226617388735013
#>     Attrib V23    -0.1114760742045013
#>     Attrib V24    0.15128646355869557
#>     Attrib V25    -0.22427373993961022
#>     Attrib V26    -0.5733934423709727
#>     Attrib V27    -0.5834107067103562
#>     Attrib V28    -0.36608404959220575
#>     Attrib V29    -0.6696848473802772
#>     Attrib V3    -0.09050191102059256
#>     Attrib V30    -0.1391673233982493
#>     Attrib V31    -0.5261750898489064
#>     Attrib V32    0.07534391621978173
#>     Attrib V33    0.44057733422611156
#>     Attrib V34    -0.01287805095313207
#>     Attrib V35    -0.07547664798451387
#>     Attrib V36    -0.3915728869184525
#>     Attrib V37    -0.6344016106922948
#>     Attrib V38    -0.12245738879029654
#>     Attrib V39    0.1532230566253245
#>     Attrib V4    0.15905393366338536
#>     Attrib V40    -0.2683644072859001
#>     Attrib V41    -0.32133527911856946
#>     Attrib V42    0.3571725526974635
#>     Attrib V43    0.5304327962314589
#>     Attrib V44    0.3929529228938599
#>     Attrib V45    0.2960700379022748
#>     Attrib V46    0.3231020470764205
#>     Attrib V47    -0.0355678040453616
#>     Attrib V48    -0.0182213239422332
#>     Attrib V49    0.118232005792439
#>     Attrib V5    0.2667902467903078
#>     Attrib V50    -0.5150963750398817
#>     Attrib V51    -0.01926628547820513
#>     Attrib V52    -0.038066914754385006
#>     Attrib V53    -0.030723922104773333
#>     Attrib V54    0.11652368096876638
#>     Attrib V55    0.08966772684481863
#>     Attrib V56    0.19807994637545145
#>     Attrib V57    -0.04642347704595479
#>     Attrib V58    0.3554561129703078
#>     Attrib V59    0.4342695296736787
#>     Attrib V6    -0.22321517625233586
#>     Attrib V60    0.009745610258126865
#>     Attrib V7    0.001020470302152528
#>     Attrib V8    -0.01672351453323126
#>     Attrib V9    0.1920103864761338
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    0.13272544010896148
#>     Attrib V1    -0.3371941295341112
#>     Attrib V10    -0.12146236146286997
#>     Attrib V11    -0.7126068460058663
#>     Attrib V12    -0.15019464725878615
#>     Attrib V13    0.370445397024188
#>     Attrib V14    1.0079250894108374
#>     Attrib V15    0.12720581913355938
#>     Attrib V16    -0.6589145762284676
#>     Attrib V17    -0.138525367455524
#>     Attrib V18    0.47405285044337986
#>     Attrib V19    -0.008084578003851681
#>     Attrib V2    0.01260146405202379
#>     Attrib V20    -0.6294501976404256
#>     Attrib V21    -1.0538491460099288
#>     Attrib V22    -0.6575622125567572
#>     Attrib V23    -0.08263200889295878
#>     Attrib V24    -0.6014493553827872
#>     Attrib V25    0.16046170922073397
#>     Attrib V26    0.8027502267183829
#>     Attrib V27    0.5748805763610142
#>     Attrib V28    0.17644788013685891
#>     Attrib V29    0.8632840741700664
#>     Attrib V3    0.27612024279629077
#>     Attrib V30    -0.12867635768098754
#>     Attrib V31    0.9349384820349745
#>     Attrib V32    0.07264026685613115
#>     Attrib V33    -0.6097607883371621
#>     Attrib V34    0.19156340533545718
#>     Attrib V35    0.2572822306470041
#>     Attrib V36    0.7858514003434095
#>     Attrib V37    1.0771487390707404
#>     Attrib V38    0.07425784186010775
#>     Attrib V39    -0.402449326331176
#>     Attrib V4    -0.1737355735890842
#>     Attrib V40    0.5234936699889171
#>     Attrib V41    0.5310859876920307
#>     Attrib V42    -0.861810465436613
#>     Attrib V43    -1.069216909876455
#>     Attrib V44    -1.0165700899758388
#>     Attrib V45    -0.5697475379001455
#>     Attrib V46    -0.6969276570738909
#>     Attrib V47    -0.054930080679772335
#>     Attrib V48    -0.20335502395760016
#>     Attrib V49    -0.4430877195795292
#>     Attrib V5    -0.5199194447535095
#>     Attrib V50    0.9790783555759445
#>     Attrib V51    -0.18762141706460791
#>     Attrib V52    0.08869634128670868
#>     Attrib V53    0.11886929738819299
#>     Attrib V54    -0.12332157594236265
#>     Attrib V55    0.18819069499958355
#>     Attrib V56    -0.16654716548013038
#>     Attrib V57    0.35277927273035703
#>     Attrib V58    -0.487714729858241
#>     Attrib V59    -0.4623331640726579
#>     Attrib V6    0.49702719702473486
#>     Attrib V60    -0.012289483086929261
#>     Attrib V7    0.0023367557674874874
#>     Attrib V8    0.1561726704180693
#>     Attrib V9    -0.49438818221444264
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.2570213309165665
#>     Attrib V1    0.23742688014703875
#>     Attrib V10    1.0150256504061013
#>     Attrib V11    1.5113533289498786
#>     Attrib V12    1.3308366563312843
#>     Attrib V13    0.6042236557257293
#>     Attrib V14    -0.1605505116014448
#>     Attrib V15    -0.4841537796201356
#>     Attrib V16    -0.4277729054001549
#>     Attrib V17    -0.8498714911334627
#>     Attrib V18    -0.5904940153343127
#>     Attrib V19    -0.08635137967453431
#>     Attrib V2    0.6577679793618674
#>     Attrib V20    -0.3368463491275678
#>     Attrib V21    0.44207416467282723
#>     Attrib V22    0.2694714512894806
#>     Attrib V23    0.3833495758107329
#>     Attrib V24    1.0761131144647513
#>     Attrib V25    0.7478095900906456
#>     Attrib V26    1.7908324054674771
#>     Attrib V27    1.9733608705835537
#>     Attrib V28    2.053807408737551
#>     Attrib V29    2.093216319451979
#>     Attrib V3    0.2708911095266625
#>     Attrib V30    1.0215085907416583
#>     Attrib V31    -0.5732797202833988
#>     Attrib V32    -0.7648833804986197
#>     Attrib V33    -0.6072089670472904
#>     Attrib V34    0.11248139705704728
#>     Attrib V35    -0.2359323986985703
#>     Attrib V36    -0.8756994801473444
#>     Attrib V37    -0.2889905810432454
#>     Attrib V38    -0.017660924236770112
#>     Attrib V39    1.2030251955213724
#>     Attrib V4    0.3837571894447774
#>     Attrib V40    0.989449269568639
#>     Attrib V41    0.7352883765431559
#>     Attrib V42    -0.08281526505492737
#>     Attrib V43    0.21021967887802204
#>     Attrib V44    0.2100187526747625
#>     Attrib V45    -0.27446753280515745
#>     Attrib V46    0.5798605895069625
#>     Attrib V47    0.39235437269465173
#>     Attrib V48    0.8468289020448329
#>     Attrib V49    1.771731367285742
#>     Attrib V5    0.6418330086249603
#>     Attrib V50    -0.2739101118820749
#>     Attrib V51    0.9553742626987499
#>     Attrib V52    1.2161870700416613
#>     Attrib V53    0.8996533344084405
#>     Attrib V54    -0.10036216297156854
#>     Attrib V55    -0.2010121003259227
#>     Attrib V56    -0.09045467715612004
#>     Attrib V57    -0.8380842497729061
#>     Attrib V58    -0.41838944108887083
#>     Attrib V59    0.28966013614906694
#>     Attrib V6    0.34179723313546767
#>     Attrib V60    -0.019813837801497994
#>     Attrib V7    -0.03472738291810896
#>     Attrib V8    -0.3842308219671376
#>     Attrib V9    0.683018711980136
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.1751805527247517
#>     Attrib V1    0.06362611989438365
#>     Attrib V10    0.050005066573296446
#>     Attrib V11    -0.004024676441538256
#>     Attrib V12    0.05155217152284522
#>     Attrib V13    0.020476619395293022
#>     Attrib V14    0.11901319300098484
#>     Attrib V15    0.03838748211283998
#>     Attrib V16    0.014054171402903052
#>     Attrib V17    0.04958638165226371
#>     Attrib V18    -0.001392517570076958
#>     Attrib V19    0.06770558779163072
#>     Attrib V2    0.0865773892192872
#>     Attrib V20    0.00864952542276016
#>     Attrib V21    -0.005733696663505296
#>     Attrib V22    -0.03872845005738315
#>     Attrib V23    -0.029952668949536812
#>     Attrib V24    -0.05630393570414909
#>     Attrib V25    -0.020064218381736214
#>     Attrib V26    -0.07250571477481212
#>     Attrib V27    -0.03586058605239504
#>     Attrib V28    -0.020116290246023922
#>     Attrib V29    -0.021219772068723764
#>     Attrib V3    0.0677876451240284
#>     Attrib V30    -0.03394317112651672
#>     Attrib V31    -0.004291260498133306
#>     Attrib V32    -0.0029699891062972225
#>     Attrib V33    0.0464716607010272
#>     Attrib V34    0.025526123383351376
#>     Attrib V35    0.10349126863914303
#>     Attrib V36    0.09987930619570456
#>     Attrib V37    0.11768362541245884
#>     Attrib V38    0.02318597469527161
#>     Attrib V39    0.056084647796451816
#>     Attrib V4    0.12418378026263867
#>     Attrib V40    0.05221704473791016
#>     Attrib V41    0.05492287336513296
#>     Attrib V42    0.06217860750929793
#>     Attrib V43    0.04428694167840246
#>     Attrib V44    0.0249849511373491
#>     Attrib V45    0.03542057768421263
#>     Attrib V46    0.016469811315244557
#>     Attrib V47    0.041557227760238145
#>     Attrib V48    0.07370239462802321
#>     Attrib V49    -0.0011845219008974027
#>     Attrib V5    0.043760315394344704
#>     Attrib V50    0.0941257178512615
#>     Attrib V51    0.04583108915889369
#>     Attrib V52    0.047898453416594856
#>     Attrib V53    0.0508727198198752
#>     Attrib V54    0.039385632621415034
#>     Attrib V55    0.05017453937306291
#>     Attrib V56    0.11611769620458885
#>     Attrib V57    0.11982450493697866
#>     Attrib V58    0.062289176111414254
#>     Attrib V59    0.04904055786364443
#>     Attrib V6    0.13717017888748687
#>     Attrib V60    0.10921882657147847
#>     Attrib V7    0.0328106660515344
#>     Attrib V8    0.09185906691273517
#>     Attrib V9    0.05171922378618667
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.19058067483423813
#>     Attrib V1    0.045536256042608754
#>     Attrib V10    0.5093636345242544
#>     Attrib V11    0.8395955576335927
#>     Attrib V12    0.5928233686541031
#>     Attrib V13    0.1680373612826864
#>     Attrib V14    -0.5301700686817493
#>     Attrib V15    -0.39524261662308807
#>     Attrib V16    -0.1276498980554466
#>     Attrib V17    -0.5071429190373856
#>     Attrib V18    -0.36418704558120385
#>     Attrib V19    -0.10174839753036342
#>     Attrib V2    -0.040720287270712856
#>     Attrib V20    -0.16459287460446675
#>     Attrib V21    0.3532871432541501
#>     Attrib V22    0.12292373456878049
#>     Attrib V23    0.07093997175271319
#>     Attrib V24    0.8787792022659708
#>     Attrib V25    0.6074368329183768
#>     Attrib V26    0.5873952682095733
#>     Attrib V27    0.651343136713572
#>     Attrib V28    0.710635649301753
#>     Attrib V29    0.31215681727230854
#>     Attrib V3    -0.18654724332466313
#>     Attrib V30    0.4756128841824202
#>     Attrib V31    -0.2307734529643162
#>     Attrib V32    -0.27720862030443316
#>     Attrib V33    0.12847793494205326
#>     Attrib V34    0.28081936841119515
#>     Attrib V35    0.19764452537764923
#>     Attrib V36    -0.5242806788034705
#>     Attrib V37    -0.7794689737574987
#>     Attrib V38    -0.24052430795664165
#>     Attrib V39    0.4587120264057135
#>     Attrib V4    0.07815908799901526
#>     Attrib V40    0.17010046547735994
#>     Attrib V41    0.15740000815489766
#>     Attrib V42    0.31536792626833965
#>     Attrib V43    0.637153701108062
#>     Attrib V44    0.551549022587308
#>     Attrib V45    0.18535377532848474
#>     Attrib V46    0.4742770022869634
#>     Attrib V47    0.23840479036485315
#>     Attrib V48    0.6031213076677405
#>     Attrib V49    0.6944769650833915
#>     Attrib V5    0.4079332927087775
#>     Attrib V50    -0.4835260669086481
#>     Attrib V51    0.31609636605140623
#>     Attrib V52    0.3552321200221341
#>     Attrib V53    0.4613944133840795
#>     Attrib V54    -0.1703439962581001
#>     Attrib V55    -0.168265958208181
#>     Attrib V56    -0.19421993382723382
#>     Attrib V57    -0.4437911155283427
#>     Attrib V58    0.030391088104538444
#>     Attrib V59    0.2336285114717961
#>     Attrib V6    -0.01208266143033568
#>     Attrib V60    -0.10854497848574646
#>     Attrib V7    -0.11648852928953224
#>     Attrib V8    -0.22655957206602875
#>     Attrib V9    0.591382045020798
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    0.11148076666181422
#>     Attrib V1    -0.43272199083506924
#>     Attrib V10    -0.2976027311421109
#>     Attrib V11    -0.9636840335444998
#>     Attrib V12    -0.35977444471249015
#>     Attrib V13    0.3563642171596892
#>     Attrib V14    1.1544859124956253
#>     Attrib V15    0.168592218939637
#>     Attrib V16    -0.594069223149988
#>     Attrib V17    -0.15765662573419548
#>     Attrib V18    0.6382931587753857
#>     Attrib V19    -0.055003202385091085
#>     Attrib V2    -0.07538780438217196
#>     Attrib V20    -0.7932517490068364
#>     Attrib V21    -1.2559907469211706
#>     Attrib V22    -0.8247809536775115
#>     Attrib V23    -0.2686618586165382
#>     Attrib V24    -0.74503627016713
#>     Attrib V25    0.003024371218888905
#>     Attrib V26    0.6209318779554271
#>     Attrib V27    0.5714893616224918
#>     Attrib V28    0.08575637400760575
#>     Attrib V29    0.8235568791840023
#>     Attrib V3    0.33842506969153513
#>     Attrib V30    -0.2565632048727964
#>     Attrib V31    1.0212508755719796
#>     Attrib V32    0.08145921091827832
#>     Attrib V33    -0.6202633529019893
#>     Attrib V34    0.2620019083577814
#>     Attrib V35    0.37439704826673753
#>     Attrib V36    0.9157776724410357
#>     Attrib V37    1.1038354759013433
#>     Attrib V38    0.021560840305452224
#>     Attrib V39    -0.5348057203009425
#>     Attrib V4    -0.19908153734423345
#>     Attrib V40    0.5086816870575336
#>     Attrib V41    0.5651891259590414
#>     Attrib V42    -0.9492513162242933
#>     Attrib V43    -1.197011321946208
#>     Attrib V44    -1.0881131616898543
#>     Attrib V45    -0.5520166305211291
#>     Attrib V46    -0.8364215028143062
#>     Attrib V47    -0.23664208117231333
#>     Attrib V48    -0.346393347524136
#>     Attrib V49    -0.6090676942180111
#>     Attrib V5    -0.624059027239492
#>     Attrib V50    1.1067552442271826
#>     Attrib V51    -0.3771290960579296
#>     Attrib V52    0.02880833702744205
#>     Attrib V53    0.20312138118538892
#>     Attrib V54    -0.08063371117637587
#>     Attrib V55    0.36352884159123594
#>     Attrib V56    -0.20938657339862138
#>     Attrib V57    0.5477329888490345
#>     Attrib V58    -0.387986867342367
#>     Attrib V59    -0.4523857185443024
#>     Attrib V6    0.553477499333118
#>     Attrib V60    0.033177263921748607
#>     Attrib V7    0.04862259948482301
#>     Attrib V8    0.3191032172697701
#>     Attrib V9    -0.585848839753409
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.002076791225893491
#>     Attrib V1    0.10280997447058257
#>     Attrib V10    -0.0877660071586533
#>     Attrib V11    0.23809831352908065
#>     Attrib V12    0.08213089547183428
#>     Attrib V13    -0.07213957367911113
#>     Attrib V14    -0.1673584562596373
#>     Attrib V15    0.07324732712333867
#>     Attrib V16    0.22802448560149768
#>     Attrib V17    0.029749890713786524
#>     Attrib V18    -0.19769565867438324
#>     Attrib V19    -0.06599584587031436
#>     Attrib V2    0.01648993565146386
#>     Attrib V20    0.20606108174506502
#>     Attrib V21    0.31279857244458126
#>     Attrib V22    0.05232964697128795
#>     Attrib V23    -0.1611845400424408
#>     Attrib V24    0.17732536065551027
#>     Attrib V25    -0.08369105210539418
#>     Attrib V26    -0.3446947496034593
#>     Attrib V27    -0.25378542686064004
#>     Attrib V28    -0.08673348830361244
#>     Attrib V29    -0.19616442131974265
#>     Attrib V3    -0.047441153560636405
#>     Attrib V30    -0.060864110253736635
#>     Attrib V31    -0.3832739775043709
#>     Attrib V32    -0.023802887452750873
#>     Attrib V33    0.2594637436299618
#>     Attrib V34    0.03278579571107737
#>     Attrib V35    -0.05240811961479429
#>     Attrib V36    -0.32283221496010817
#>     Attrib V37    -0.43928800538755236
#>     Attrib V38    -0.07152695727023413
#>     Attrib V39    0.18701846935984912
#>     Attrib V4    0.06406634805958962
#>     Attrib V40    -0.12240730856294553
#>     Attrib V41    -0.1905315600875094
#>     Attrib V42    0.19725391751094368
#>     Attrib V43    0.37962676927165895
#>     Attrib V44    0.22875068746851357
#>     Attrib V45    0.22098568099110893
#>     Attrib V46    0.23223835074227506
#>     Attrib V47    -0.016494688923135832
#>     Attrib V48    0.0518638936225814
#>     Attrib V49    0.14836346185304664
#>     Attrib V5    0.19462539533431275
#>     Attrib V50    -0.3078250440520093
#>     Attrib V51    0.042938299342563456
#>     Attrib V52    0.0356270524736605
#>     Attrib V53    0.008266312099597356
#>     Attrib V54    0.05802900835836249
#>     Attrib V55    0.11464704663298966
#>     Attrib V56    0.10776652354051401
#>     Attrib V57    -0.051921778769503046
#>     Attrib V58    0.19219491497114088
#>     Attrib V59    0.32413237792526917
#>     Attrib V6    -0.10502527395424367
#>     Attrib V60    0.029638267340035676
#>     Attrib V7    -0.021237011583192883
#>     Attrib V8    -0.012432617845833195
#>     Attrib V9    0.12520955789256344
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.13504388102427095
#>     Attrib V1    0.08084976935683826
#>     Attrib V10    0.12186941173391612
#>     Attrib V11    0.037243479723939335
#>     Attrib V12    0.06833135916982382
#>     Attrib V13    0.08928548046070076
#>     Attrib V14    0.09725700461409692
#>     Attrib V15    0.08110847509351982
#>     Attrib V16    0.03954681302093089
#>     Attrib V17    0.09117083381171315
#>     Attrib V18    0.05944645272699147
#>     Attrib V19    0.008274444200807479
#>     Attrib V2    0.09293196279822678
#>     Attrib V20    -0.018967007431595385
#>     Attrib V21    0.006510988703000587
#>     Attrib V22    -0.025317577322725188
#>     Attrib V23    -0.02129933210009559
#>     Attrib V24    -0.0818549623951219
#>     Attrib V25    0.007325214657172827
#>     Attrib V26    -0.004575809181343281
#>     Attrib V27    -0.0648114688431118
#>     Attrib V28    -0.04134457521240202
#>     Attrib V29    -0.08226064354016095
#>     Attrib V3    0.08502359834534712
#>     Attrib V30    -0.006907904821776226
#>     Attrib V31    0.10050024701298367
#>     Attrib V32    0.007971374886322396
#>     Attrib V33    -0.01913649001434641
#>     Attrib V34    0.01388238807281213
#>     Attrib V35    0.08348922915009753
#>     Attrib V36    0.06156165503278615
#>     Attrib V37    0.13355020345268806
#>     Attrib V38    0.01700664392200625
#>     Attrib V39    0.08944156936196151
#>     Attrib V4    0.11818487813756261
#>     Attrib V40    0.09306814723932931
#>     Attrib V41    0.09041614488322362
#>     Attrib V42    0.07927039236328387
#>     Attrib V43    0.0025206339562835263
#>     Attrib V44    -0.0331593982576977
#>     Attrib V45    0.03863981212127394
#>     Attrib V46    0.03190668772713329
#>     Attrib V47    0.047319617693446676
#>     Attrib V48    0.05994909470305288
#>     Attrib V49    -0.014292822875441867
#>     Attrib V5    0.036785475796906636
#>     Attrib V50    0.07400014428223271
#>     Attrib V51    0.045221384144240304
#>     Attrib V52    0.0634258232149857
#>     Attrib V53    0.059332342927039025
#>     Attrib V54    0.04195606031734172
#>     Attrib V55    0.024096537839851224
#>     Attrib V56    0.13679028577143357
#>     Attrib V57    0.07141092651162066
#>     Attrib V58    0.07569909804777857
#>     Attrib V59    0.05354848593999937
#>     Attrib V6    0.12443856830065031
#>     Attrib V60    0.0775628361588658
#>     Attrib V7    0.031128402598646243
#>     Attrib V8    0.06887829155077087
#>     Attrib V9    0.05784296225080496
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.09910111129463973
#>     Attrib V1    0.1835977194439021
#>     Attrib V10    -0.11508467872119221
#>     Attrib V11    0.17980818919079872
#>     Attrib V12    -0.04403011010016218
#>     Attrib V13    -0.0886595809520737
#>     Attrib V14    -0.18086202218447658
#>     Attrib V15    0.1340210084434911
#>     Attrib V16    0.3257922994963284
#>     Attrib V17    0.1306610807198697
#>     Attrib V18    -0.1742143342926397
#>     Attrib V19    -0.06449954253983689
#>     Attrib V2    0.10466901470678684
#>     Attrib V20    0.2131925465968702
#>     Attrib V21    0.22135694081440185
#>     Attrib V22    0.045302598062927496
#>     Attrib V23    -0.12738166198814954
#>     Attrib V24    0.11024699120294594
#>     Attrib V25    -0.2444062622795602
#>     Attrib V26    -0.459359096573195
#>     Attrib V27    -0.46678319734200674
#>     Attrib V28    -0.3162351123780485
#>     Attrib V29    -0.47870948844920796
#>     Attrib V3    -0.08753244907416817
#>     Attrib V30    -0.14973154555605683
#>     Attrib V31    -0.38584204126075344
#>     Attrib V32    0.023232017770524756
#>     Attrib V33    0.3423695193211158
#>     Attrib V34    0.043569577068693834
#>     Attrib V35    -0.04717180734925666
#>     Attrib V36    -0.30645699346400135
#>     Attrib V37    -0.4547785137237142
#>     Attrib V38    -0.026916629260969775
#>     Attrib V39    0.1071895903251813
#>     Attrib V4    0.1405786390601195
#>     Attrib V40    -0.17011983969015113
#>     Attrib V41    -0.26969645096546413
#>     Attrib V42    0.2199176252064346
#>     Attrib V43    0.3513537582508751
#>     Attrib V44    0.2784324859915866
#>     Attrib V45    0.15319036782558298
#>     Attrib V46    0.20682698164100702
#>     Attrib V47    -0.06929317073289158
#>     Attrib V48    0.019547154703614254
#>     Attrib V49    0.08724959149052186
#>     Attrib V5    0.19170211855789804
#>     Attrib V50    -0.3482574515007511
#>     Attrib V51    6.651362426879053E-4
#>     Attrib V52    -0.02200674003291567
#>     Attrib V53    0.007246525388434347
#>     Attrib V54    0.17334794595056538
#>     Attrib V55    0.15373514492769894
#>     Attrib V56    0.11366559752661112
#>     Attrib V57    0.01846176091356793
#>     Attrib V58    0.24544693657563527
#>     Attrib V59    0.34763952355633204
#>     Attrib V6    -0.15383825441067694
#>     Attrib V60    0.05230853823241333
#>     Attrib V7    0.007083233785536178
#>     Attrib V8    0.009150227015977388
#>     Attrib V9    0.14925953080516072
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.08761024248992161
#>     Attrib V1    0.1744821265038281
#>     Attrib V10    -0.14048779970696418
#>     Attrib V11    0.10995423498548003
#>     Attrib V12    -0.028364150995697356
#>     Attrib V13    -0.11166297167767264
#>     Attrib V14    -0.081797871216621
#>     Attrib V15    0.1464966766046176
#>     Attrib V16    0.3080470011758104
#>     Attrib V17    0.051982596860593686
#>     Attrib V18    -0.09535152214666455
#>     Attrib V19    -0.06283953123674481
#>     Attrib V2    0.04308166560497945
#>     Attrib V20    0.17037580750543407
#>     Attrib V21    0.25428865404165996
#>     Attrib V22    -0.0036762701858333332
#>     Attrib V23    -0.13101181758002606
#>     Attrib V24    0.013490378650067556
#>     Attrib V25    -0.2753016204252976
#>     Attrib V26    -0.43044761430235795
#>     Attrib V27    -0.3419615516737789
#>     Attrib V28    -0.12711461148338088
#>     Attrib V29    -0.25135914784210006
#>     Attrib V3    -4.7208863507883437E-4
#>     Attrib V30    -0.03507628162847897
#>     Attrib V31    -0.38952554324329863
#>     Attrib V32    -0.00746010278160383
#>     Attrib V33    0.27222387136195225
#>     Attrib V34    0.016951382719391717
#>     Attrib V35    -0.07536702599809386
#>     Attrib V36    -0.20914413717058816
#>     Attrib V37    -0.3880137585602957
#>     Attrib V38    -0.08782014034940888
#>     Attrib V39    0.14893165844858716
#>     Attrib V4    0.09327168554143248
#>     Attrib V40    -0.14326520079777194
#>     Attrib V41    -0.21438717000040466
#>     Attrib V42    0.22495907017253544
#>     Attrib V43    0.2260510294392405
#>     Attrib V44    0.2222248012366934
#>     Attrib V45    0.18427224243163695
#>     Attrib V46    0.18759476694559532
#>     Attrib V47    -0.05399790393677501
#>     Attrib V48    -0.01792479318679852
#>     Attrib V49    0.12097707520931053
#>     Attrib V5    0.19576186848323007
#>     Attrib V50    -0.28985400802307926
#>     Attrib V51    0.04219284476183993
#>     Attrib V52    0.027925482438760058
#>     Attrib V53    0.0057264147454108485
#>     Attrib V54    0.06059517268621749
#>     Attrib V55    0.09469834197103195
#>     Attrib V56    0.11739451369269466
#>     Attrib V57    -0.0012302571685017184
#>     Attrib V58    0.2870015541686777
#>     Attrib V59    0.29609054827143205
#>     Attrib V6    -0.08277811870015164
#>     Attrib V60    0.03760087923080701
#>     Attrib V7    -0.0043331354410269425
#>     Attrib V8    0.04364241624053824
#>     Attrib V9    0.11750294231526821
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
