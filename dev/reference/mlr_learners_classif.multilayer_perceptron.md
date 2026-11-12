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
#>     Threshold    -0.20266099666517395
#>     Node 2    2.00123571718091
#>     Node 3    2.156266499119199
#>     Node 4    1.47045006620165
#>     Node 5    -1.7783963694149592
#>     Node 6    1.4252558890623286
#>     Node 7    1.8686738945647303
#>     Node 8    1.245342987858658
#>     Node 9    2.078216730140451
#>     Node 10    -3.4245043599459946
#>     Node 11    1.50898260739954
#>     Node 12    1.9029157952274436
#>     Node 13    0.29422706412026034
#>     Node 14    2.0536897738071174
#>     Node 15    -1.886227639915727
#>     Node 16    -1.1406128887504863
#>     Node 17    1.3255714587433887
#>     Node 18    -0.2253526964374983
#>     Node 19    2.018558134879253
#>     Node 20    1.5130492845017283
#>     Node 21    -1.63839917419221
#>     Node 22    1.268971208084124
#>     Node 23    0.9943945554685184
#>     Node 24    -1.4489186553268303
#>     Node 25    4.865782998306202
#>     Node 26    0.05935493624107652
#>     Node 27    1.6805385180394117
#>     Node 28    -3.211719729728953
#>     Node 29    1.002571206764388
#>     Node 30    -0.031018639421195076
#>     Node 31    1.028184056245122
#>     Node 32    0.4398268266584966
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.22620790674938207
#>     Node 2    -2.051989305569037
#>     Node 3    -2.13621300483856
#>     Node 4    -1.4275874836587088
#>     Node 5    1.795951642632662
#>     Node 6    -1.4001155702826018
#>     Node 7    -1.8588258356285174
#>     Node 8    -1.2827262304886724
#>     Node 9    -2.0731901723140305
#>     Node 10    3.403068264660065
#>     Node 11    -1.473547560479968
#>     Node 12    -1.9790464476627028
#>     Node 13    -0.24558960692152929
#>     Node 14    -1.9857677897239128
#>     Node 15    1.8729822398207812
#>     Node 16    1.1139482895377566
#>     Node 17    -1.2920872295240309
#>     Node 18    0.2523353248016962
#>     Node 19    -2.0081677300714724
#>     Node 20    -1.500005382355281
#>     Node 21    1.6842932671691895
#>     Node 22    -1.3181208521027759
#>     Node 23    -1.037196629791308
#>     Node 24    1.4320211358235335
#>     Node 25    -4.8875473165829995
#>     Node 26    -0.15360377158848545
#>     Node 27    -1.7199088068600017
#>     Node 28    3.1931296472452098
#>     Node 29    -1.0325861376808452
#>     Node 30    0.09618786163661365
#>     Node 31    -0.970680640411467
#>     Node 32    -0.4616477871676801
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.03870607014198053
#>     Attrib V1    0.3748331222754221
#>     Attrib V10    -0.05821724651444318
#>     Attrib V11    0.061613898158950395
#>     Attrib V12    0.08618357938047128
#>     Attrib V13    -0.13380811258806974
#>     Attrib V14    -0.16910640391835807
#>     Attrib V15    0.32986810967074576
#>     Attrib V16    0.2796809729771944
#>     Attrib V17    0.09234972478430402
#>     Attrib V18    -0.35445785051365114
#>     Attrib V19    0.3768473836502227
#>     Attrib V2    -0.036872427489965026
#>     Attrib V20    0.6165359370502109
#>     Attrib V21    0.7027736134904633
#>     Attrib V22    0.614835894446516
#>     Attrib V23    0.2858853876159569
#>     Attrib V24    0.39150139807310663
#>     Attrib V25    -0.25418371316199295
#>     Attrib V26    -0.5950559375882731
#>     Attrib V27    -0.9348705074852248
#>     Attrib V28    -0.6866318147379812
#>     Attrib V29    -0.759446744385935
#>     Attrib V3    0.09009258424637831
#>     Attrib V30    0.25530759044002665
#>     Attrib V31    -0.8219112224650128
#>     Attrib V32    0.0017803195780141331
#>     Attrib V33    0.8230035673781286
#>     Attrib V34    0.2628926313362406
#>     Attrib V35    -0.21802540455129862
#>     Attrib V36    -0.9299548312021937
#>     Attrib V37    -1.1911141557171645
#>     Attrib V38    0.06676805468502245
#>     Attrib V39    0.2501932818267282
#>     Attrib V4    0.09132766851598441
#>     Attrib V40    -0.2235527325837917
#>     Attrib V41    0.3199628394408957
#>     Attrib V42    0.9308213968265081
#>     Attrib V43    0.4923473476319567
#>     Attrib V44    0.07007365914043845
#>     Attrib V45    0.36163178214825664
#>     Attrib V46    -0.0491201548966895
#>     Attrib V47    -0.4340985937572651
#>     Attrib V48    0.21730809991793085
#>     Attrib V49    0.5118376260663569
#>     Attrib V5    -0.3834045501730502
#>     Attrib V50    -0.7269018104696532
#>     Attrib V51    0.03756872053965618
#>     Attrib V52    -0.09274631856705619
#>     Attrib V53    0.16650914516075427
#>     Attrib V54    0.2680458506222744
#>     Attrib V55    -0.11372739353802816
#>     Attrib V56    0.5382953745009932
#>     Attrib V57    0.34424123138785595
#>     Attrib V58    0.7227388862795601
#>     Attrib V59    0.7676978510982863
#>     Attrib V6    -0.29325279136546883
#>     Attrib V60    0.3271606295541815
#>     Attrib V7    -0.2135037795093598
#>     Attrib V8    0.3466265385664547
#>     Attrib V9    0.627085225803941
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.08302100871572589
#>     Attrib V1    0.3544094488531682
#>     Attrib V10    -0.06773966530858319
#>     Attrib V11    0.03543607582373486
#>     Attrib V12    0.09849797217023315
#>     Attrib V13    -0.09918134069226762
#>     Attrib V14    -0.16682859134387282
#>     Attrib V15    0.4357176622625715
#>     Attrib V16    0.2920788106413493
#>     Attrib V17    0.07678317403008987
#>     Attrib V18    -0.44745986709914815
#>     Attrib V19    0.40088247831540447
#>     Attrib V2    0.028346451873761794
#>     Attrib V20    0.6096295257062547
#>     Attrib V21    0.6506185222617
#>     Attrib V22    0.6276565684723021
#>     Attrib V23    0.243955568075519
#>     Attrib V24    0.32968407591118
#>     Attrib V25    -0.291642824311625
#>     Attrib V26    -0.6639496224801372
#>     Attrib V27    -1.0015146265328936
#>     Attrib V28    -0.7626898731420094
#>     Attrib V29    -0.8956589236491697
#>     Attrib V3    0.11360351150852409
#>     Attrib V30    0.25351042371344595
#>     Attrib V31    -0.7915867508548338
#>     Attrib V32    0.026403795482449206
#>     Attrib V33    0.9270250912998378
#>     Attrib V34    0.27730988259566075
#>     Attrib V35    -0.20365775558299368
#>     Attrib V36    -0.9660757245607461
#>     Attrib V37    -1.2148799636872338
#>     Attrib V38    -0.016073779137828374
#>     Attrib V39    0.22959188701003305
#>     Attrib V4    0.12320178721789557
#>     Attrib V40    -0.23281778677948645
#>     Attrib V41    0.3043101225437845
#>     Attrib V42    0.9477033325288473
#>     Attrib V43    0.46270181430269824
#>     Attrib V44    0.05351712857599425
#>     Attrib V45    0.3751934424052845
#>     Attrib V46    -0.060244900035343205
#>     Attrib V47    -0.4394600254997623
#>     Attrib V48    0.15163731297888805
#>     Attrib V49    0.5098827420227316
#>     Attrib V5    -0.43834226124983616
#>     Attrib V50    -0.7548958384987906
#>     Attrib V51    -0.04371257745855688
#>     Attrib V52    -0.10668037710421245
#>     Attrib V53    0.11381778239869177
#>     Attrib V54    0.3280889660933096
#>     Attrib V55    -0.059170506624139294
#>     Attrib V56    0.5706727884092015
#>     Attrib V57    0.40540020471537874
#>     Attrib V58    0.8142518938758498
#>     Attrib V59    0.7524314613805483
#>     Attrib V6    -0.2972585058199766
#>     Attrib V60    0.3031657726950786
#>     Attrib V7    -0.23348545465480458
#>     Attrib V8    0.395706608017882
#>     Attrib V9    0.6305752789978559
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.033293095862718676
#>     Attrib V1    0.23220802567341334
#>     Attrib V10    -0.06363464520670646
#>     Attrib V11    0.008739597646197883
#>     Attrib V12    0.054307652847671826
#>     Attrib V13    -0.07638845314184
#>     Attrib V14    -0.08868977388100958
#>     Attrib V15    0.30942041323300185
#>     Attrib V16    0.22558675820980162
#>     Attrib V17    0.0922693460022157
#>     Attrib V18    -0.2713687325199974
#>     Attrib V19    0.30650604545344606
#>     Attrib V2    -0.01322300869196061
#>     Attrib V20    0.45954357811024354
#>     Attrib V21    0.5411553644676077
#>     Attrib V22    0.4432152009599255
#>     Attrib V23    0.1905658745312249
#>     Attrib V24    0.2203055254315093
#>     Attrib V25    -0.2690634688045978
#>     Attrib V26    -0.4916762032810761
#>     Attrib V27    -0.7566892980338623
#>     Attrib V28    -0.534257843766976
#>     Attrib V29    -0.5578946163776619
#>     Attrib V3    0.07563877401924035
#>     Attrib V30    0.14876581047367826
#>     Attrib V31    -0.5786771020878869
#>     Attrib V32    -0.02600466594973203
#>     Attrib V33    0.6161510874715846
#>     Attrib V34    0.18926645418421606
#>     Attrib V35    -0.1513688276579194
#>     Attrib V36    -0.6926719865662415
#>     Attrib V37    -0.8502078758229268
#>     Attrib V38    -0.010653761428509287
#>     Attrib V39    0.16352878004154403
#>     Attrib V4    0.07407609312038481
#>     Attrib V40    -0.1799979591058159
#>     Attrib V41    0.1741215513547309
#>     Attrib V42    0.6438568468785831
#>     Attrib V43    0.3014525620226736
#>     Attrib V44    0.0511739816324802
#>     Attrib V45    0.3468003156460674
#>     Attrib V46    -0.04974089436915695
#>     Attrib V47    -0.34297568085681146
#>     Attrib V48    0.16307519111531513
#>     Attrib V49    0.3966386865938663
#>     Attrib V5    -0.25642281424710184
#>     Attrib V50    -0.5143966878453674
#>     Attrib V51    0.05735796870667757
#>     Attrib V52    -0.05198251116760067
#>     Attrib V53    0.18252193884345838
#>     Attrib V54    0.14932255411130008
#>     Attrib V55    -0.09371337759733808
#>     Attrib V56    0.4335828225189861
#>     Attrib V57    0.34766742415132856
#>     Attrib V58    0.5505234757656006
#>     Attrib V59    0.5421141219564471
#>     Attrib V6    -0.1962888486478831
#>     Attrib V60    0.23239989604985511
#>     Attrib V7    -0.15687240789442358
#>     Attrib V8    0.19844416328681083
#>     Attrib V9    0.5107950443596735
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.5470959587133208
#>     Attrib V1    0.06263746015044093
#>     Attrib V10    -0.3934449378446973
#>     Attrib V11    -0.44351147257571805
#>     Attrib V12    -0.7795411190788535
#>     Attrib V13    -0.14922480565861457
#>     Attrib V14    0.3964973486534687
#>     Attrib V15    0.14600100310629446
#>     Attrib V16    -0.1198461455165265
#>     Attrib V17    0.33320260515409844
#>     Attrib V18    0.7217101226658059
#>     Attrib V19    -0.10724913760045175
#>     Attrib V2    -0.0035781849077569576
#>     Attrib V20    0.13940999426901982
#>     Attrib V21    -0.17795270192796064
#>     Attrib V22    -0.5396288037332934
#>     Attrib V23    0.07922123673061998
#>     Attrib V24    -0.39335818511828075
#>     Attrib V25    -0.014168294765306615
#>     Attrib V26    -0.024158579498495737
#>     Attrib V27    -0.05233346648402936
#>     Attrib V28    -0.44087716599084703
#>     Attrib V29    -0.23775791186593884
#>     Attrib V3    0.43337450936384386
#>     Attrib V30    -0.36971493023669005
#>     Attrib V31    0.5381367564562235
#>     Attrib V32    -0.07743055978047092
#>     Attrib V33    -0.0810945375925797
#>     Attrib V34    -0.08449296861247892
#>     Attrib V35    0.037082141779322196
#>     Attrib V36    0.7631753002761011
#>     Attrib V37    0.5888595339789896
#>     Attrib V38    -0.2177037888084233
#>     Attrib V39    -0.28792112323569236
#>     Attrib V4    -0.28340096667673453
#>     Attrib V40    0.07400862440048334
#>     Attrib V41    -0.6365173645558406
#>     Attrib V42    -0.297711142233503
#>     Attrib V43    -0.0943205707702806
#>     Attrib V44    -0.09522751327118414
#>     Attrib V45    -0.5478024951091071
#>     Attrib V46    -0.3837732632018208
#>     Attrib V47    0.11199271371011255
#>     Attrib V48    -0.6021003166014984
#>     Attrib V49    -0.6397260603044707
#>     Attrib V5    0.1000899647143722
#>     Attrib V50    1.0218849544483086
#>     Attrib V51    -0.11248808954447503
#>     Attrib V52    -0.12282191146409738
#>     Attrib V53    -0.5345695473474401
#>     Attrib V54    0.2384173642707051
#>     Attrib V55    0.7082895361697497
#>     Attrib V56    0.3584545648770101
#>     Attrib V57    -0.20945118954900158
#>     Attrib V58    -0.45641443095614026
#>     Attrib V59    -0.3966682859481665
#>     Attrib V6    0.1780113951242488
#>     Attrib V60    -0.07301402275537754
#>     Attrib V7    0.644324082661405
#>     Attrib V8    0.06338378019448186
#>     Attrib V9    -0.7134579972536695
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.02930751016230238
#>     Attrib V1    0.30134068453389373
#>     Attrib V10    -0.12796877032267265
#>     Attrib V11    -0.03300161606033115
#>     Attrib V12    0.04871115411826541
#>     Attrib V13    -0.12941203383396585
#>     Attrib V14    -0.10826239033589977
#>     Attrib V15    0.2770731815251162
#>     Attrib V16    0.2875397452679003
#>     Attrib V17    0.06741389393184921
#>     Attrib V18    -0.1963294726521241
#>     Attrib V19    0.2899552659319225
#>     Attrib V2    0.02259229667321679
#>     Attrib V20    0.45033479342325
#>     Attrib V21    0.4800255364119549
#>     Attrib V22    0.3738043562836403
#>     Attrib V23    0.12980504040503926
#>     Attrib V24    0.21654249757901664
#>     Attrib V25    -0.23769679411734432
#>     Attrib V26    -0.5188932192934514
#>     Attrib V27    -0.6750833131391987
#>     Attrib V28    -0.5963775651541416
#>     Attrib V29    -0.6149010444241041
#>     Attrib V3    0.06603028738899759
#>     Attrib V30    0.11406866528381353
#>     Attrib V31    -0.5585315852636235
#>     Attrib V32    -0.009276989797823262
#>     Attrib V33    0.5916659175677633
#>     Attrib V34    0.1665299850997805
#>     Attrib V35    -0.12803400176438864
#>     Attrib V36    -0.6703281338653927
#>     Attrib V37    -0.8100876149870206
#>     Attrib V38    -0.007464447552117456
#>     Attrib V39    0.1226044830376888
#>     Attrib V4    0.08418164894960456
#>     Attrib V40    -0.19558573180184696
#>     Attrib V41    0.2260886295788946
#>     Attrib V42    0.6116911669602816
#>     Attrib V43    0.2951934459644233
#>     Attrib V44    -0.022991319484000933
#>     Attrib V45    0.25104757802136285
#>     Attrib V46    -0.03126825796549893
#>     Attrib V47    -0.3262970952233273
#>     Attrib V48    0.08835268747774834
#>     Attrib V49    0.3009451311767402
#>     Attrib V5    -0.29768076965885
#>     Attrib V50    -0.44615054381273545
#>     Attrib V51    0.01047765537801473
#>     Attrib V52    -0.08108334638605216
#>     Attrib V53    0.17225257825799362
#>     Attrib V54    0.18578155874535407
#>     Attrib V55    -0.06206426597601795
#>     Attrib V56    0.42883973036288375
#>     Attrib V57    0.356907138129515
#>     Attrib V58    0.5578932397520866
#>     Attrib V59    0.5894915169563845
#>     Attrib V6    -0.10248926379131248
#>     Attrib V60    0.32887116193890603
#>     Attrib V7    -0.08351705286977433
#>     Attrib V8    0.25769650311067743
#>     Attrib V9    0.45752106808715315
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.48920534244099984
#>     Attrib V1    0.18248643909493853
#>     Attrib V10    0.24207376868607175
#>     Attrib V11    0.4461606737330694
#>     Attrib V12    0.6977015128269694
#>     Attrib V13    0.21045846771584556
#>     Attrib V14    -0.43049743169832694
#>     Attrib V15    -0.19070315145162917
#>     Attrib V16    0.037378943850108544
#>     Attrib V17    -0.2546758913780829
#>     Attrib V18    -0.48392572642734927
#>     Attrib V19    0.27823725850482833
#>     Attrib V2    0.27588705042205874
#>     Attrib V20    0.04329455683717098
#>     Attrib V21    0.287245603958858
#>     Attrib V22    0.6410561896585354
#>     Attrib V23    0.40645310771421206
#>     Attrib V24    0.8081205440959012
#>     Attrib V25    0.44856935487987
#>     Attrib V26    0.41181462192360535
#>     Attrib V27    0.3555348637890547
#>     Attrib V28    0.6572659547569254
#>     Attrib V29    0.5610364417242428
#>     Attrib V3    -0.04677064688954813
#>     Attrib V30    0.3741984440570355
#>     Attrib V31    -0.5103209897328561
#>     Attrib V32    -0.377965400119075
#>     Attrib V33    -0.3617902506996965
#>     Attrib V34    -0.046204432798395256
#>     Attrib V35    0.14756745395117973
#>     Attrib V36    -0.45955113163711225
#>     Attrib V37    -0.1630052016316885
#>     Attrib V38    0.5103064051027
#>     Attrib V39    0.452494280125102
#>     Attrib V4    0.05417571945961962
#>     Attrib V40    0.10243012694824878
#>     Attrib V41    0.6585486646387222
#>     Attrib V42    0.30540669216221733
#>     Attrib V43    0.24719860790503168
#>     Attrib V44    0.45186374686339564
#>     Attrib V45    0.6792685197226879
#>     Attrib V46    0.6248382345295771
#>     Attrib V47    0.11389669063714866
#>     Attrib V48    0.3838929050340563
#>     Attrib V49    0.4895927075999905
#>     Attrib V5    0.16394413482201287
#>     Attrib V50    -0.6764759603964247
#>     Attrib V51    0.09042364857836552
#>     Attrib V52    0.09034404023597595
#>     Attrib V53    0.6969624025802428
#>     Attrib V54    0.047363472015293215
#>     Attrib V55    -0.697738455288368
#>     Attrib V56    -0.21210744813479546
#>     Attrib V57    0.21027286065262335
#>     Attrib V58    0.1044693763283309
#>     Attrib V59    0.5023005642824943
#>     Attrib V6    -0.02396648088699396
#>     Attrib V60    0.11180954744941443
#>     Attrib V7    -0.45548717311039194
#>     Attrib V8    -0.3276568034435701
#>     Attrib V9    0.4992405023547255
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.3374075000972579
#>     Attrib V1    0.09138274876924418
#>     Attrib V10    0.08568015566744165
#>     Attrib V11    0.2117490224421808
#>     Attrib V12    0.32724671517973786
#>     Attrib V13    0.007374104648444893
#>     Attrib V14    -0.3833820009267213
#>     Attrib V15    -0.005224167410237705
#>     Attrib V16    0.176619006716305
#>     Attrib V17    -0.07848745403283199
#>     Attrib V18    -0.4313265921730751
#>     Attrib V19    0.25207549660952006
#>     Attrib V2    0.03336051273919971
#>     Attrib V20    0.1399134338868554
#>     Attrib V21    0.37744443908210423
#>     Attrib V22    0.5438257908921335
#>     Attrib V23    0.2060230031400295
#>     Attrib V24    0.47439269734923517
#>     Attrib V25    0.08829248858484379
#>     Attrib V26    0.007340247490564518
#>     Attrib V27    -0.09457950967619216
#>     Attrib V28    0.1432335303612158
#>     Attrib V29    0.05153659181714041
#>     Attrib V3    -0.15427262243340298
#>     Attrib V30    0.3386323261695846
#>     Attrib V31    -0.5900555252908793
#>     Attrib V32    -0.15535359108632596
#>     Attrib V33    0.10940568185350698
#>     Attrib V34    0.030253618515272238
#>     Attrib V35    0.01541567690821386
#>     Attrib V36    -0.4051445833631262
#>     Attrib V37    -0.4353137076694604
#>     Attrib V38    0.3372738255038254
#>     Attrib V39    0.2750874351011263
#>     Attrib V4    0.15635355473995757
#>     Attrib V40    -0.1743968223464739
#>     Attrib V41    0.2787430918353498
#>     Attrib V42    0.26613764586202887
#>     Attrib V43    0.25656479464047416
#>     Attrib V44    0.37116334498126297
#>     Attrib V45    0.5504783357527069
#>     Attrib V46    0.2842670759042288
#>     Attrib V47    -0.13677190818565987
#>     Attrib V48    0.30509715212878497
#>     Attrib V49    0.42975222403293756
#>     Attrib V5    -0.06716926066968874
#>     Attrib V50    -0.7042833401146337
#>     Attrib V51    -0.04059724544404326
#>     Attrib V52    -0.07898465554720414
#>     Attrib V53    0.35356494202623745
#>     Attrib V54    0.036547275457797956
#>     Attrib V55    -0.44492557756989065
#>     Attrib V56    -0.0018569998934274317
#>     Attrib V57    0.29114121405711085
#>     Attrib V58    0.2691641268560846
#>     Attrib V59    0.5203149533710936
#>     Attrib V6    -0.20625038738998888
#>     Attrib V60    0.1540915533114659
#>     Attrib V7    -0.3413461760965826
#>     Attrib V8    -0.10212197334083066
#>     Attrib V9    0.4505584464698097
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.31864368173284013
#>     Attrib V1    -0.013872719896920835
#>     Attrib V10    0.45625469018871134
#>     Attrib V11    0.50326625967337
#>     Attrib V12    0.9241707407935914
#>     Attrib V13    0.3634270343217115
#>     Attrib V14    -0.5724923340845811
#>     Attrib V15    -0.4743345738180585
#>     Attrib V16    -0.051116030580294985
#>     Attrib V17    -0.26211844335994716
#>     Attrib V18    -0.48994382912594325
#>     Attrib V19    0.2638295552436575
#>     Attrib V2    0.16040951810818552
#>     Attrib V20    -0.1627349689364175
#>     Attrib V21    0.15665584762529425
#>     Attrib V22    0.7053794693445011
#>     Attrib V23    0.42756473878155254
#>     Attrib V24    0.8652632785889453
#>     Attrib V25    0.6052321942599913
#>     Attrib V26    0.6018920040870889
#>     Attrib V27    0.4972152469062898
#>     Attrib V28    0.6673772776059664
#>     Attrib V29    0.46191732245354167
#>     Attrib V3    -0.11604748206160448
#>     Attrib V30    0.3803233289282639
#>     Attrib V31    -0.2929846900571501
#>     Attrib V32    -0.0023607171377191183
#>     Attrib V33    -0.15875858965707432
#>     Attrib V34    0.15807952655404964
#>     Attrib V35    0.1805354444092302
#>     Attrib V36    -0.533111759683798
#>     Attrib V37    -0.40129683052398885
#>     Attrib V38    0.27336196254043454
#>     Attrib V39    0.4140622863950361
#>     Attrib V4    0.0030220406241965544
#>     Attrib V40    0.2084688042753734
#>     Attrib V41    0.9888041652627629
#>     Attrib V42    0.2990265946221599
#>     Attrib V43    0.17755536994553367
#>     Attrib V44    0.09043553995291015
#>     Attrib V45    0.5179400054568919
#>     Attrib V46    0.6189356582324712
#>     Attrib V47    0.22777665427519508
#>     Attrib V48    0.6744417041670664
#>     Attrib V49    0.7506870764704255
#>     Attrib V5    0.08295332499321677
#>     Attrib V50    -0.737938327660834
#>     Attrib V51    0.32211025459606263
#>     Attrib V52    0.23895690365703237
#>     Attrib V53    0.8384855377556272
#>     Attrib V54    -0.26369823100224715
#>     Attrib V55    -0.7976769460763776
#>     Attrib V56    -0.26887308113831204
#>     Attrib V57    0.0676655165456068
#>     Attrib V58    0.15266272152701343
#>     Attrib V59    0.5088549552964536
#>     Attrib V6    0.025622527641964814
#>     Attrib V60    0.07979498920093235
#>     Attrib V7    -0.698808981677531
#>     Attrib V8    -0.2746512590593416
#>     Attrib V9    0.5813222409354484
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -1.0530837197423846
#>     Attrib V1    0.22930318007720327
#>     Attrib V10    -0.9374309753006058
#>     Attrib V11    -1.0538734154505673
#>     Attrib V12    -1.7576916546942138
#>     Attrib V13    -0.6391085835269726
#>     Attrib V14    0.34902305233269815
#>     Attrib V15    0.155131912612516
#>     Attrib V16    -0.16586016564289321
#>     Attrib V17    0.6587653695374744
#>     Attrib V18    1.0997007475037526
#>     Attrib V19    0.26195094910634803
#>     Attrib V2    -0.40365283141653363
#>     Attrib V20    0.7966206381046833
#>     Attrib V21    0.25257998002455706
#>     Attrib V22    -0.24799511326706578
#>     Attrib V23    0.9891881319901192
#>     Attrib V24    0.21624604704472583
#>     Attrib V25    0.1734861461726816
#>     Attrib V26    -0.21665263919988528
#>     Attrib V27    -0.9050467444711601
#>     Attrib V28    -1.4211643669664553
#>     Attrib V29    -0.9441798774606749
#>     Attrib V3    0.15376967461595922
#>     Attrib V30    -0.004529247085254168
#>     Attrib V31    0.6833614330045477
#>     Attrib V32    0.11936075182455019
#>     Attrib V33    0.96112046392799
#>     Attrib V34    0.16803883772052478
#>     Attrib V35    -0.3206023038351884
#>     Attrib V36    0.5983728030665441
#>     Attrib V37    -0.12507572984706883
#>     Attrib V38    -0.3642591347660416
#>     Attrib V39    -0.07815154709601141
#>     Attrib V4    -0.794460498076839
#>     Attrib V40    0.06300635469085267
#>     Attrib V41    -0.5053703026426103
#>     Attrib V42    0.5829602669552645
#>     Attrib V43    0.3564089508796096
#>     Attrib V44    -0.20592071897701886
#>     Attrib V45    -0.7973033586271485
#>     Attrib V46    -0.8713273552391074
#>     Attrib V47    -0.08679818367381874
#>     Attrib V48    -0.627732745130083
#>     Attrib V49    -0.3149937553355501
#>     Attrib V5    -0.3346226156111346
#>     Attrib V50    1.3947769830735086
#>     Attrib V51    0.0260990632483471
#>     Attrib V52    -0.23100558190550885
#>     Attrib V53    -1.0796073247913973
#>     Attrib V54    0.3066878631810126
#>     Attrib V55    0.6909092427821311
#>     Attrib V56    0.7697730447485192
#>     Attrib V57    -0.36931599807120535
#>     Attrib V58    -0.42960690445296024
#>     Attrib V59    -0.5505394108423624
#>     Attrib V6    -0.01614501756371308
#>     Attrib V60    -0.48542947783586976
#>     Attrib V7    0.6607736104066821
#>     Attrib V8    0.3806855960033364
#>     Attrib V9    -0.5943829645279916
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.039386489462700416
#>     Attrib V1    0.2607060626670033
#>     Attrib V10    -0.0691475690565895
#>     Attrib V11    0.017799804820953707
#>     Attrib V12    0.08140099123662517
#>     Attrib V13    -0.1393247519556005
#>     Attrib V14    -0.12448605794945784
#>     Attrib V15    0.29881843177028855
#>     Attrib V16    0.25395871940166037
#>     Attrib V17    0.11835848328678945
#>     Attrib V18    -0.2667299959089163
#>     Attrib V19    0.2783099947786814
#>     Attrib V2    -0.025162378034418748
#>     Attrib V20    0.48948640123058546
#>     Attrib V21    0.4966278644626984
#>     Attrib V22    0.4258474004693671
#>     Attrib V23    0.15225906412207
#>     Attrib V24    0.21845965259779204
#>     Attrib V25    -0.24829103701947094
#>     Attrib V26    -0.5561550322844437
#>     Attrib V27    -0.7406670431795842
#>     Attrib V28    -0.5334060599572157
#>     Attrib V29    -0.5941674753402174
#>     Attrib V3    0.005327753002156549
#>     Attrib V30    0.17339568068347586
#>     Attrib V31    -0.6722036096384576
#>     Attrib V32    -0.07256333020585679
#>     Attrib V33    0.5962592568935629
#>     Attrib V34    0.2058499125474374
#>     Attrib V35    -0.13047472834347146
#>     Attrib V36    -0.6911757007664546
#>     Attrib V37    -0.8701639092028958
#>     Attrib V38    0.1029093660270286
#>     Attrib V39    0.149610839736311
#>     Attrib V4    0.09458690790869854
#>     Attrib V40    -0.24866079851710762
#>     Attrib V41    0.10640379200680287
#>     Attrib V42    0.6168630090986723
#>     Attrib V43    0.33486719474436344
#>     Attrib V44    0.11609127859454839
#>     Attrib V45    0.3824661876536957
#>     Attrib V46    -0.02989529422939229
#>     Attrib V47    -0.32127382572509083
#>     Attrib V48    0.1669477410567954
#>     Attrib V49    0.3468770680206466
#>     Attrib V5    -0.26936129685133664
#>     Attrib V50    -0.545247613903321
#>     Attrib V51    0.05522757357710242
#>     Attrib V52    -0.09945420493156738
#>     Attrib V53    0.13096931535719125
#>     Attrib V54    0.2753084769286192
#>     Attrib V55    -0.08737168218355464
#>     Attrib V56    0.44110039475099944
#>     Attrib V57    0.371446015422532
#>     Attrib V58    0.594262227126551
#>     Attrib V59    0.5223868486313102
#>     Attrib V6    -0.16876587440077556
#>     Attrib V60    0.2480538885381233
#>     Attrib V7    -0.17946150161848884
#>     Attrib V8    0.25487856589914887
#>     Attrib V9    0.5185499475666221
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.14188548084222494
#>     Attrib V1    0.3001382376958835
#>     Attrib V10    -0.12832558538233824
#>     Attrib V11    0.07450218576599797
#>     Attrib V12    0.028299787987247728
#>     Attrib V13    -0.14068184491107416
#>     Attrib V14    -0.1471319681251482
#>     Attrib V15    0.3391521957986955
#>     Attrib V16    0.3148582459366349
#>     Attrib V17    0.0821070279246294
#>     Attrib V18    -0.3771384969688962
#>     Attrib V19    0.3802455401416795
#>     Attrib V2    0.030133540659389953
#>     Attrib V20    0.5165864351169479
#>     Attrib V21    0.600403567199257
#>     Attrib V22    0.5774471479086687
#>     Attrib V23    0.2044837347232309
#>     Attrib V24    0.2648289588269124
#>     Attrib V25    -0.3271449390886614
#>     Attrib V26    -0.632034963262424
#>     Attrib V27    -0.8762548406991566
#>     Attrib V28    -0.7161010817748341
#>     Attrib V29    -0.7314323993276498
#>     Attrib V3    0.02167285977207585
#>     Attrib V30    0.20059954198635654
#>     Attrib V31    -0.7682130435345532
#>     Attrib V32    -0.024509918157875683
#>     Attrib V33    0.8692095896450184
#>     Attrib V34    0.3075461936439752
#>     Attrib V35    -0.17660355449866985
#>     Attrib V36    -0.8585509303379536
#>     Attrib V37    -1.0999186081448173
#>     Attrib V38    0.04555375453823407
#>     Attrib V39    0.15718180644976368
#>     Attrib V4    0.14831979969747483
#>     Attrib V40    -0.209802481711491
#>     Attrib V41    0.2412905880204956
#>     Attrib V42    0.805869162485644
#>     Attrib V43    0.4688083671114995
#>     Attrib V44    0.011268198029265078
#>     Attrib V45    0.3830083932253857
#>     Attrib V46    8.950722570253167E-4
#>     Attrib V47    -0.44140154584427693
#>     Attrib V48    0.21798734789413732
#>     Attrib V49    0.44287221623174305
#>     Attrib V5    -0.3884165323190198
#>     Attrib V50    -0.7340224550836069
#>     Attrib V51    -0.011361007404329885
#>     Attrib V52    -0.09807191863896422
#>     Attrib V53    0.15954945070807494
#>     Attrib V54    0.2744190529103047
#>     Attrib V55    -0.12495165939054069
#>     Attrib V56    0.5299444094402661
#>     Attrib V57    0.42874370201972817
#>     Attrib V58    0.7311035689341158
#>     Attrib V59    0.733785208261012
#>     Attrib V6    -0.2861192867653336
#>     Attrib V60    0.3195847204482928
#>     Attrib V7    -0.16778103375063946
#>     Attrib V8    0.3505623365569825
#>     Attrib V9    0.6246098923633856
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.1958333703294941
#>     Attrib V1    0.10618145012603221
#>     Attrib V10    0.008042977204421936
#>     Attrib V11    0.034202805186599364
#>     Attrib V12    0.04161344190632452
#>     Attrib V13    0.05968736446386183
#>     Attrib V14    -0.0022511013799580487
#>     Attrib V15    0.04025401174173842
#>     Attrib V16    0.04376439613040946
#>     Attrib V17    0.06508455858490059
#>     Attrib V18    -0.006301508730571115
#>     Attrib V19    0.10190857427964937
#>     Attrib V2    0.026316645245384056
#>     Attrib V20    0.12303054912476498
#>     Attrib V21    0.10350205477034216
#>     Attrib V22    0.04964843234746425
#>     Attrib V23    0.023645727546343594
#>     Attrib V24    0.032283081036133456
#>     Attrib V25    -0.020256833396418424
#>     Attrib V26    -0.12412261014665349
#>     Attrib V27    -0.09422748493930434
#>     Attrib V28    -0.13414011906783563
#>     Attrib V29    -0.09241704392096554
#>     Attrib V3    0.10999381947328225
#>     Attrib V30    0.04515145877731759
#>     Attrib V31    -0.14191853313009556
#>     Attrib V32    -0.0033532662384046096
#>     Attrib V33    0.10038211272677634
#>     Attrib V34    0.10712819340075244
#>     Attrib V35    0.03407633178893835
#>     Attrib V36    -0.1019680704772414
#>     Attrib V37    -0.09861348809403608
#>     Attrib V38    0.04426782722813524
#>     Attrib V39    0.11268805682676575
#>     Attrib V4    0.07084710663175288
#>     Attrib V40    0.010043757887312828
#>     Attrib V41    0.06425638328263139
#>     Attrib V42    0.0889643903974257
#>     Attrib V43    0.03881207540918298
#>     Attrib V44    0.04571494084873752
#>     Attrib V45    0.10585604491590836
#>     Attrib V46    0.09480687582669355
#>     Attrib V47    0.039384003106866024
#>     Attrib V48    0.07682889225016935
#>     Attrib V49    0.13654570638712304
#>     Attrib V5    0.01135571508110691
#>     Attrib V50    -0.0918828834131791
#>     Attrib V51    0.04098155910056957
#>     Attrib V52    0.035633658838478834
#>     Attrib V53    0.14074129037802918
#>     Attrib V54    0.02738659224673479
#>     Attrib V55    0.014343201191319929
#>     Attrib V56    0.16677956971710023
#>     Attrib V57    0.19846371336450114
#>     Attrib V58    0.1851651053949218
#>     Attrib V59    0.24086775264406504
#>     Attrib V6    0.0375670090740471
#>     Attrib V60    0.19185860435544846
#>     Attrib V7    0.01666340939518642
#>     Attrib V8    0.021340857465798828
#>     Attrib V9    0.15310685719473963
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.1810230944480976
#>     Attrib V1    0.384650332888593
#>     Attrib V10    -0.04728612881098719
#>     Attrib V11    0.13590699487946306
#>     Attrib V12    0.15798148252628136
#>     Attrib V13    -0.13471043019751353
#>     Attrib V14    -0.2212062070441203
#>     Attrib V15    0.4104006175156786
#>     Attrib V16    0.2860168295730378
#>     Attrib V17    0.07973329796853101
#>     Attrib V18    -0.42998223423210064
#>     Attrib V19    0.3359473505073728
#>     Attrib V2    -0.013167437227975871
#>     Attrib V20    0.5346597331080376
#>     Attrib V21    0.6506226011609966
#>     Attrib V22    0.6420612308222757
#>     Attrib V23    0.3019460513641227
#>     Attrib V24    0.35868187920789296
#>     Attrib V25    -0.26483928769330645
#>     Attrib V26    -0.5843544267327868
#>     Attrib V27    -0.9411644250918876
#>     Attrib V28    -0.697728284380372
#>     Attrib V29    -0.7685760173680658
#>     Attrib V3    -0.025182991318219158
#>     Attrib V30    0.25468189675864766
#>     Attrib V31    -0.8109613221356673
#>     Attrib V32    -0.019279524729219472
#>     Attrib V33    0.8463580367695761
#>     Attrib V34    0.24483011904818144
#>     Attrib V35    -0.16843190069192326
#>     Attrib V36    -0.9570675616209863
#>     Attrib V37    -1.1243172629051361
#>     Attrib V38    0.05617974191286848
#>     Attrib V39    0.24767814059688656
#>     Attrib V4    0.17473947921330044
#>     Attrib V40    -0.28740714438622306
#>     Attrib V41    0.2506970219433861
#>     Attrib V42    0.8413592242693216
#>     Attrib V43    0.4482102264462208
#>     Attrib V44    0.15093663342520067
#>     Attrib V45    0.3934160378021436
#>     Attrib V46    0.02428865157177638
#>     Attrib V47    -0.44747751839187383
#>     Attrib V48    0.2584038629889128
#>     Attrib V49    0.5931591277299155
#>     Attrib V5    -0.39996695279172295
#>     Attrib V50    -0.7775405897457911
#>     Attrib V51    -0.043543072507805015
#>     Attrib V52    -0.15653834294023508
#>     Attrib V53    0.12455447361839414
#>     Attrib V54    0.32716367029568233
#>     Attrib V55    -0.14747740091378056
#>     Attrib V56    0.5158795311138569
#>     Attrib V57    0.3955900880566335
#>     Attrib V58    0.7727532335242872
#>     Attrib V59    0.7462782538703415
#>     Attrib V6    -0.29781815767181036
#>     Attrib V60    0.3455595692634655
#>     Attrib V7    -0.2328061078684427
#>     Attrib V8    0.2751984795453811
#>     Attrib V9    0.6696425933180833
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.6357690185830972
#>     Attrib V1    -0.05828869424258361
#>     Attrib V10    -0.2371433774941798
#>     Attrib V11    -0.4376616464263724
#>     Attrib V12    -0.5544166453275128
#>     Attrib V13    -0.12185584550064568
#>     Attrib V14    0.2164869058338947
#>     Attrib V15    -0.07896169058774853
#>     Attrib V16    -0.06303252085363419
#>     Attrib V17    0.3372261090551878
#>     Attrib V18    0.8840587805256883
#>     Attrib V19    0.07256719576066495
#>     Attrib V2    0.006138388522631864
#>     Attrib V20    0.1015895337863615
#>     Attrib V21    -0.3002093818842572
#>     Attrib V22    -0.4203707505174263
#>     Attrib V23    -0.03566406127110198
#>     Attrib V24    -0.4664176588089565
#>     Attrib V25    -0.002845152778416093
#>     Attrib V26    0.200716578197108
#>     Attrib V27    0.1316626638719189
#>     Attrib V28    -0.3650260127099918
#>     Attrib V29    -0.37174028075684495
#>     Attrib V3    0.5260141477111787
#>     Attrib V30    -0.6859694811465781
#>     Attrib V31    0.8333266151884035
#>     Attrib V32    0.07340791907714302
#>     Attrib V33    -0.3873275195716352
#>     Attrib V34    -0.05225982585908823
#>     Attrib V35    0.21146878789074314
#>     Attrib V36    1.006967091851558
#>     Attrib V37    0.8253414849293434
#>     Attrib V38    -0.3005266031930429
#>     Attrib V39    -0.5180139747987007
#>     Attrib V4    -0.12519553902576172
#>     Attrib V40    0.14518270515014034
#>     Attrib V41    -0.4133758815322856
#>     Attrib V42    -0.6640294788739259
#>     Attrib V43    -0.3610040581299517
#>     Attrib V44    -0.40376373504940966
#>     Attrib V45    -0.589780060504504
#>     Attrib V46    -0.16614078496602164
#>     Attrib V47    0.3995896908806084
#>     Attrib V48    -0.4244869885424972
#>     Attrib V49    -0.5282429794406158
#>     Attrib V5    0.34326611117600725
#>     Attrib V50    1.30180359125329
#>     Attrib V51    0.06742198017526198
#>     Attrib V52    0.059686759097886836
#>     Attrib V53    -0.05521492802214242
#>     Attrib V54    0.07162848608955528
#>     Attrib V55    0.6534214655152133
#>     Attrib V56    0.13523818603399737
#>     Attrib V57    -0.1609951376126623
#>     Attrib V58    -0.44820996079735814
#>     Attrib V59    -0.42354195711770337
#>     Attrib V6    0.3114461891463648
#>     Attrib V60    0.025335026666890553
#>     Attrib V7    0.49626947279735184
#>     Attrib V8    0.0848693598256898
#>     Attrib V9    -0.7123136709409342
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.3744053315832696
#>     Attrib V1    -0.06434540234510573
#>     Attrib V10    -0.10120317476261535
#>     Attrib V11    -0.2578949995787861
#>     Attrib V12    -0.4040862341561179
#>     Attrib V13    -0.10558344930891432
#>     Attrib V14    0.11731772709413252
#>     Attrib V15    -0.05628950868498595
#>     Attrib V16    0.043860659469727996
#>     Attrib V17    0.2786083556516969
#>     Attrib V18    0.6341722700655323
#>     Attrib V19    0.08156002519324722
#>     Attrib V2    -0.028276410047066363
#>     Attrib V20    0.04199280821511039
#>     Attrib V21    -0.12955969021561053
#>     Attrib V22    -0.20556195071727285
#>     Attrib V23    -0.010600330831801586
#>     Attrib V24    -0.19932091203007418
#>     Attrib V25    0.08808011138001139
#>     Attrib V26    0.09882281042258746
#>     Attrib V27    0.030136200586065337
#>     Attrib V28    -0.2765101102844637
#>     Attrib V29    -0.2700713899283081
#>     Attrib V3    0.3467503712178309
#>     Attrib V30    -0.47980765346877335
#>     Attrib V31    0.42085254979830433
#>     Attrib V32    0.05130713893852054
#>     Attrib V33    -0.2565709979620807
#>     Attrib V34    -0.05108892688589779
#>     Attrib V35    0.1032124101347182
#>     Attrib V36    0.6220379557067716
#>     Attrib V37    0.587204700348655
#>     Attrib V38    -0.14489611040874434
#>     Attrib V39    -0.2959564357405563
#>     Attrib V4    -0.03668255250705641
#>     Attrib V40    0.08805295161395703
#>     Attrib V41    -0.1871638496435567
#>     Attrib V42    -0.30290848820849675
#>     Attrib V43    -0.19506913978402043
#>     Attrib V44    -0.21706872887897938
#>     Attrib V45    -0.34219889924311564
#>     Attrib V46    -0.07663016773383922
#>     Attrib V47    0.2609848046722471
#>     Attrib V48    -0.2577705219462982
#>     Attrib V49    -0.3346965722127805
#>     Attrib V5    0.23458479158552048
#>     Attrib V50    0.7804355512778468
#>     Attrib V51    0.056493752871650205
#>     Attrib V52    0.08292731168265538
#>     Attrib V53    0.03568683361152103
#>     Attrib V54    0.03185888004294285
#>     Attrib V55    0.3471065625886531
#>     Attrib V56    0.05208574848518653
#>     Attrib V57    -0.016071274979526918
#>     Attrib V58    -0.2208544458456935
#>     Attrib V59    -0.33198122387238177
#>     Attrib V6    0.1792311359349312
#>     Attrib V60    -0.026568210497061952
#>     Attrib V7    0.24976486917976232
#>     Attrib V8    0.016328408824631612
#>     Attrib V9    -0.3767767378283111
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.017609999822884127
#>     Attrib V1    0.2887778536069929
#>     Attrib V10    -0.022629019635929327
#>     Attrib V11    0.03285986125459636
#>     Attrib V12    0.013732508460740978
#>     Attrib V13    -0.11692744640942866
#>     Attrib V14    -0.11486984882159039
#>     Attrib V15    0.32884241313876267
#>     Attrib V16    0.23760357286916128
#>     Attrib V17    0.08026066623483072
#>     Attrib V18    -0.23635398601136223
#>     Attrib V19    0.29894189875501354
#>     Attrib V2    0.07975169124391748
#>     Attrib V20    0.3986579090206556
#>     Attrib V21    0.431933415789067
#>     Attrib V22    0.43968654495953396
#>     Attrib V23    0.10240167524481722
#>     Attrib V24    0.19313199229159644
#>     Attrib V25    -0.2813567060602963
#>     Attrib V26    -0.4890889016850054
#>     Attrib V27    -0.6428499454251879
#>     Attrib V28    -0.5295608931931067
#>     Attrib V29    -0.5711344921064695
#>     Attrib V3    0.02130534349873097
#>     Attrib V30    0.14097479003584767
#>     Attrib V31    -0.5183771562719887
#>     Attrib V32    -0.09935327478773946
#>     Attrib V33    0.5492887358060906
#>     Attrib V34    0.12936563075917332
#>     Attrib V35    -0.09077280251980799
#>     Attrib V36    -0.6164567974147785
#>     Attrib V37    -0.7544474044114237
#>     Attrib V38    0.0788085650461581
#>     Attrib V39    0.15384833440686338
#>     Attrib V4    0.06229909363441835
#>     Attrib V40    -0.22490871180263827
#>     Attrib V41    0.15534058038795587
#>     Attrib V42    0.4991337037267473
#>     Attrib V43    0.32792482967050063
#>     Attrib V44    0.06930047417420276
#>     Attrib V45    0.31131750096423
#>     Attrib V46    -0.04900704296917046
#>     Attrib V47    -0.34289813617947673
#>     Attrib V48    0.1563415056449821
#>     Attrib V49    0.2646699668343457
#>     Attrib V5    -0.26982033652089593
#>     Attrib V50    -0.4692591905113709
#>     Attrib V51    0.015546175965314995
#>     Attrib V52    -0.07173837572506492
#>     Attrib V53    0.10543574663563615
#>     Attrib V54    0.17541335028939573
#>     Attrib V55    -0.018174664587981896
#>     Attrib V56    0.41068789207744394
#>     Attrib V57    0.36243020197254405
#>     Attrib V58    0.47558859944176374
#>     Attrib V59    0.4677940476711691
#>     Attrib V6    -0.12285389665176633
#>     Attrib V60    0.2797796067984967
#>     Attrib V7    -0.15101254700600175
#>     Attrib V8    0.23712266013555475
#>     Attrib V9    0.44347295245073626
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.23525007237069115
#>     Attrib V1    0.014713116877862515
#>     Attrib V10    0.026164613763091014
#>     Attrib V11    -0.036011609971045314
#>     Attrib V12    -0.0975671917979615
#>     Attrib V13    -0.045269045968776005
#>     Attrib V14    0.03187730149497685
#>     Attrib V15    -0.030402857620332766
#>     Attrib V16    0.027828033786784223
#>     Attrib V17    0.06319312051291315
#>     Attrib V18    0.22068289519636788
#>     Attrib V19    0.031116496762380715
#>     Attrib V2    0.05122101245530903
#>     Attrib V20    0.05983626124253517
#>     Attrib V21    0.028216401752317086
#>     Attrib V22    -0.027976666124762253
#>     Attrib V23    0.018402592775789102
#>     Attrib V24    -0.07228839606951985
#>     Attrib V25    -9.714800035623407E-4
#>     Attrib V26    -0.009492525563407291
#>     Attrib V27    -0.044194570184836454
#>     Attrib V28    -0.1260095790129642
#>     Attrib V29    -0.096339914170662
#>     Attrib V3    0.16780953435543686
#>     Attrib V30    -0.12202924138601863
#>     Attrib V31    0.07771634225070664
#>     Attrib V32    0.03668769055193448
#>     Attrib V33    0.020995219375052887
#>     Attrib V34    0.0776068882878981
#>     Attrib V35    0.06058169577040222
#>     Attrib V36    0.24269405526511262
#>     Attrib V37    0.18130722851214548
#>     Attrib V38    0.011546213879868586
#>     Attrib V39    0.049436980212279436
#>     Attrib V4    -0.00857659409210717
#>     Attrib V40    0.09284054582782328
#>     Attrib V41    -0.005484821598636858
#>     Attrib V42    -0.03997127793610186
#>     Attrib V43    -0.021769579801560197
#>     Attrib V44    0.011473696274822032
#>     Attrib V45    -0.09836553238888379
#>     Attrib V46    -0.009477635440843792
#>     Attrib V47    0.12548685980215163
#>     Attrib V48    -0.014638748461998318
#>     Attrib V49    -0.014538758418625222
#>     Attrib V5    0.08269960548126915
#>     Attrib V50    0.13292765877234708
#>     Attrib V51    0.10497414424061123
#>     Attrib V52    0.049883492614860414
#>     Attrib V53    0.06991138774320386
#>     Attrib V54    -0.013577563968041596
#>     Attrib V55    0.10549674978890126
#>     Attrib V56    0.10418506632457626
#>     Attrib V57    0.011203129187308418
#>     Attrib V58    0.006086868249803427
#>     Attrib V59    -0.004157337445090564
#>     Attrib V6    0.07092026797310766
#>     Attrib V60    0.07016774407338881
#>     Attrib V7    0.10425197043408559
#>     Attrib V8    0.07810515218673222
#>     Attrib V9    -0.029132835907047655
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.2532183437567199
#>     Attrib V1    0.2752604039100284
#>     Attrib V10    0.11090341043892235
#>     Attrib V11    0.29742656558617925
#>     Attrib V12    0.5411835379115914
#>     Attrib V13    0.047795195394280114
#>     Attrib V14    -0.39459367556255953
#>     Attrib V15    0.15619697287123033
#>     Attrib V16    0.1528435682770691
#>     Attrib V17    0.002305390075056798
#>     Attrib V18    -0.5167107777466725
#>     Attrib V19    0.4882049476514705
#>     Attrib V2    0.12835520493805644
#>     Attrib V20    0.4694558400824317
#>     Attrib V21    0.7771206736554159
#>     Attrib V22    1.1759591213772207
#>     Attrib V23    0.7894724112980362
#>     Attrib V24    0.9316140080500793
#>     Attrib V25    0.18575787477817945
#>     Attrib V26    -0.12276402133059504
#>     Attrib V27    -0.42600479352132475
#>     Attrib V28    -0.07946588145783932
#>     Attrib V29    -0.15351328756021335
#>     Attrib V3    -0.0865663337119184
#>     Attrib V30    0.4553437753836833
#>     Attrib V31    -0.9621775586658795
#>     Attrib V32    -0.24231451676832896
#>     Attrib V33    0.40081805523519237
#>     Attrib V34    0.04220769436970064
#>     Attrib V35    -0.10480724547699798
#>     Attrib V36    -0.8227866565376568
#>     Attrib V37    -0.9011701779292605
#>     Attrib V38    0.4319898759352443
#>     Attrib V39    0.5112633791612892
#>     Attrib V4    0.08486079867705731
#>     Attrib V40    -0.20506471767037057
#>     Attrib V41    0.4756460995452583
#>     Attrib V42    0.793373377300178
#>     Attrib V43    0.5163080782685661
#>     Attrib V44    0.31981039155014807
#>     Attrib V45    0.7850740391215787
#>     Attrib V46    0.40230225387916424
#>     Attrib V47    -0.22746512450801515
#>     Attrib V48    0.32913954485589625
#>     Attrib V49    0.8071627595921192
#>     Attrib V5    -0.1411044208676492
#>     Attrib V50    -0.8650087580200448
#>     Attrib V51    0.1095308879001522
#>     Attrib V52    -0.05373903104867592
#>     Attrib V53    0.30300479266410657
#>     Attrib V54    0.1454986313482569
#>     Attrib V55    -0.4465842283823105
#>     Attrib V56    0.2836236973547984
#>     Attrib V57    0.2480148495624118
#>     Attrib V58    0.6222860297509603
#>     Attrib V59    0.7564504983215333
#>     Attrib V6    -0.240398079984357
#>     Attrib V60    0.1792873351263765
#>     Attrib V7    -0.4887660516799548
#>     Attrib V8    -0.02337321105725924
#>     Attrib V9    0.7227017274902587
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.1237653646648437
#>     Attrib V1    0.34287492218070703
#>     Attrib V10    -0.019437767796979408
#>     Attrib V11    0.06655170414855417
#>     Attrib V12    0.1540161319088711
#>     Attrib V13    -0.09828661276427367
#>     Attrib V14    -0.16887518564746473
#>     Attrib V15    0.26825201013324645
#>     Attrib V16    0.2015778928667183
#>     Attrib V17    0.06259054011331476
#>     Attrib V18    -0.30325965109234926
#>     Attrib V19    0.3526956756142025
#>     Attrib V2    -0.007658053978279906
#>     Attrib V20    0.4780987614636841
#>     Attrib V21    0.6441537237594168
#>     Attrib V22    0.6840429268221667
#>     Attrib V23    0.37718080999101955
#>     Attrib V24    0.41716783169969984
#>     Attrib V25    -0.1507540127309474
#>     Attrib V26    -0.3733891911747619
#>     Attrib V27    -0.6190883109362639
#>     Attrib V28    -0.46860131414962325
#>     Attrib V29    -0.4091926416527078
#>     Attrib V3    -0.06053922250932412
#>     Attrib V30    0.2932883518245384
#>     Attrib V31    -0.6946454453160756
#>     Attrib V32    -0.1736334816345574
#>     Attrib V33    0.480187568565425
#>     Attrib V34    0.05633869242168584
#>     Attrib V35    -0.17264542625635093
#>     Attrib V36    -0.6637225073335895
#>     Attrib V37    -0.8022053776899388
#>     Attrib V38    0.17583281458422678
#>     Attrib V39    0.2415547562182015
#>     Attrib V4    0.09298981191874493
#>     Attrib V40    -0.22802891608582077
#>     Attrib V41    0.2325671260605873
#>     Attrib V42    0.6270797410494819
#>     Attrib V43    0.45278079974480534
#>     Attrib V44    0.24952594803415268
#>     Attrib V45    0.44532049731841705
#>     Attrib V46    0.06154138295024561
#>     Attrib V47    -0.33386997121542167
#>     Attrib V48    0.20308275118356212
#>     Attrib V49    0.44306332503680534
#>     Attrib V5    -0.19954511817053866
#>     Attrib V50    -0.6217971238743648
#>     Attrib V51    0.10353302006534743
#>     Attrib V52    -0.05589050204262272
#>     Attrib V53    0.1568461407078447
#>     Attrib V54    0.26615036102431694
#>     Attrib V55    -0.16862162836089156
#>     Attrib V56    0.3982833610588334
#>     Attrib V57    0.2777605621061025
#>     Attrib V58    0.5893491901126867
#>     Attrib V59    0.6481931541803273
#>     Attrib V6    -0.19134080316722327
#>     Attrib V60    0.25160881994624745
#>     Attrib V7    -0.16125006043040893
#>     Attrib V8    0.11104786289596592
#>     Attrib V9    0.5405955831443484
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.49195430184594774
#>     Attrib V1    -0.013699118645604072
#>     Attrib V10    -0.23230348782228885
#>     Attrib V11    -0.39139370048314304
#>     Attrib V12    -0.54053013536907
#>     Attrib V13    -0.12498168874638828
#>     Attrib V14    0.24285620111938377
#>     Attrib V15    -0.0678436497829652
#>     Attrib V16    -0.05492113465614403
#>     Attrib V17    0.30831430309570834
#>     Attrib V18    0.8413905339690029
#>     Attrib V19    0.03360448310438875
#>     Attrib V2    0.012667204416466177
#>     Attrib V20    0.08510640275838163
#>     Attrib V21    -0.16457422618247886
#>     Attrib V22    -0.3923864721674527
#>     Attrib V23    -0.034142375976072906
#>     Attrib V24    -0.372738507883083
#>     Attrib V25    0.08460153381219304
#>     Attrib V26    0.21542248048418963
#>     Attrib V27    0.14041899373385736
#>     Attrib V28    -0.3619719232418118
#>     Attrib V29    -0.303863580134934
#>     Attrib V3    0.42615898057840335
#>     Attrib V30    -0.5694042686212893
#>     Attrib V31    0.7667919619440279
#>     Attrib V32    0.021022511761781916
#>     Attrib V33    -0.34059537136186613
#>     Attrib V34    -0.09237669247756101
#>     Attrib V35    0.15379778206004352
#>     Attrib V36    0.8893811279200192
#>     Attrib V37    0.7761929741613329
#>     Attrib V38    -0.2628594978941452
#>     Attrib V39    -0.4472612158913896
#>     Attrib V4    -0.0658136470096244
#>     Attrib V40    0.18943600742227745
#>     Attrib V41    -0.28609032963216074
#>     Attrib V42    -0.5517920051463622
#>     Attrib V43    -0.24933235197524017
#>     Attrib V44    -0.2903369750227257
#>     Attrib V45    -0.5674844505651885
#>     Attrib V46    -0.17952287243614165
#>     Attrib V47    0.3505234572326155
#>     Attrib V48    -0.34227419294130446
#>     Attrib V49    -0.480215809354908
#>     Attrib V5    0.31289588072037666
#>     Attrib V50    1.151955588130908
#>     Attrib V51    0.030061384350770992
#>     Attrib V52    0.07112118481224466
#>     Attrib V53    -0.07229650234432428
#>     Attrib V54    0.0982080192301748
#>     Attrib V55    0.5483578798294708
#>     Attrib V56    0.06282322156573432
#>     Attrib V57    -0.023141926987367153
#>     Attrib V58    -0.43017054766157
#>     Attrib V59    -0.3496511877830326
#>     Attrib V6    0.2248616435542831
#>     Attrib V60    0.055251065802242115
#>     Attrib V7    0.4746850933678758
#>     Attrib V8    0.02713155163368929
#>     Attrib V9    -0.6160776931513853
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.003549258978112419
#>     Attrib V1    0.3314208461456662
#>     Attrib V10    -0.08291110376460895
#>     Attrib V11    -0.06805158016080187
#>     Attrib V12    -0.035049664694595244
#>     Attrib V13    -0.1283154741010412
#>     Attrib V14    0.026125499169973473
#>     Attrib V15    0.3833712561226782
#>     Attrib V16    0.3266342832745605
#>     Attrib V17    0.10156438286520031
#>     Attrib V18    -0.23070260971338408
#>     Attrib V19    0.1377127055146854
#>     Attrib V2    0.13296502414547362
#>     Attrib V20    0.3671622108857834
#>     Attrib V21    0.36600645865557047
#>     Attrib V22    0.2200569378006815
#>     Attrib V23    -0.10923106417288413
#>     Attrib V24    0.0017465715199120367
#>     Attrib V25    -0.46475556481077496
#>     Attrib V26    -0.6661067285144199
#>     Attrib V27    -0.6784532404746769
#>     Attrib V28    -0.5537577947542904
#>     Attrib V29    -0.4828971599443397
#>     Attrib V3    0.10422205512460256
#>     Attrib V30    0.02051358407724319
#>     Attrib V31    -0.5840311468475257
#>     Attrib V32    -0.21750745172874128
#>     Attrib V33    0.2833269483441913
#>     Attrib V34    -0.023487161502165323
#>     Attrib V35    -0.21535821760435825
#>     Attrib V36    -0.5670016522981052
#>     Attrib V37    -0.5616799138884213
#>     Attrib V38    0.06778051218463528
#>     Attrib V39    0.06381389735344248
#>     Attrib V4    0.15591350587129096
#>     Attrib V40    -0.25071706352111944
#>     Attrib V41    -0.10817496519181695
#>     Attrib V42    0.35558710393957854
#>     Attrib V43    0.3055748320342277
#>     Attrib V44    0.1459534863632325
#>     Attrib V45    0.25866466931492377
#>     Attrib V46    0.0013980804509242588
#>     Attrib V47    -0.35810553124646693
#>     Attrib V48    0.05643321267940781
#>     Attrib V49    0.16126333472803867
#>     Attrib V5    -0.1746523639907033
#>     Attrib V50    -0.4444684903738431
#>     Attrib V51    -0.08053849085864004
#>     Attrib V52    -0.04076568832901183
#>     Attrib V53    0.12590548448324396
#>     Attrib V54    0.3290467087155498
#>     Attrib V55    0.0161785004245948
#>     Attrib V56    0.45613056503838784
#>     Attrib V57    0.39823579765059525
#>     Attrib V58    0.5263005502710169
#>     Attrib V59    0.46503875912313103
#>     Attrib V6    -0.07116739802991918
#>     Attrib V60    0.35551642151920126
#>     Attrib V7    0.014758179677141858
#>     Attrib V8    0.07036858141556465
#>     Attrib V9    0.3402304055909307
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.016350092911086814
#>     Attrib V1    0.28408769047297017
#>     Attrib V10    -0.10934812730162251
#>     Attrib V11    0.005031472452829836
#>     Attrib V12    0.06791541472129034
#>     Attrib V13    -0.03038205531078614
#>     Attrib V14    0.012270660632600952
#>     Attrib V15    0.31104593897309
#>     Attrib V16    0.18646994524084104
#>     Attrib V17    0.12610758888373585
#>     Attrib V18    -0.15196962785159546
#>     Attrib V19    0.1947804928846287
#>     Attrib V2    0.05279642468323697
#>     Attrib V20    0.2942116949167501
#>     Attrib V21    0.3091496273086954
#>     Attrib V22    0.2567504135442341
#>     Attrib V23    0.023937232379529046
#>     Attrib V24    0.01585300047801178
#>     Attrib V25    -0.3081791007820556
#>     Attrib V26    -0.4447427017922372
#>     Attrib V27    -0.5464117805815836
#>     Attrib V28    -0.4261688171595914
#>     Attrib V29    -0.4201542270459559
#>     Attrib V3    0.11131335228485811
#>     Attrib V30    0.03348178344138627
#>     Attrib V31    -0.5111894518597498
#>     Attrib V32    -0.17962943123358052
#>     Attrib V33    0.247478833329707
#>     Attrib V34    -0.02202192272969507
#>     Attrib V35    -0.10268993410736887
#>     Attrib V36    -0.46400531982321314
#>     Attrib V37    -0.4585166215649465
#>     Attrib V38    0.06847755467907804
#>     Attrib V39    0.09282596933507954
#>     Attrib V4    0.15144988379987143
#>     Attrib V40    -0.24755139465426768
#>     Attrib V41    -0.036453962168463944
#>     Attrib V42    0.280760418694213
#>     Attrib V43    0.2566469190669427
#>     Attrib V44    0.12029555789918056
#>     Attrib V45    0.3047624799851676
#>     Attrib V46    0.008741329967290715
#>     Attrib V47    -0.20484891018231105
#>     Attrib V48    0.0074677574069460595
#>     Attrib V49    0.163037540162739
#>     Attrib V5    -0.1629962026954957
#>     Attrib V50    -0.37841394169895043
#>     Attrib V51    -0.05497034100708547
#>     Attrib V52    0.025679675783725854
#>     Attrib V53    0.18873830353474458
#>     Attrib V54    0.2363074117876387
#>     Attrib V55    0.015852207650829724
#>     Attrib V56    0.4037631179467229
#>     Attrib V57    0.3048750644624019
#>     Attrib V58    0.42749023399760017
#>     Attrib V59    0.47671236340082873
#>     Attrib V6    -0.06857184309892539
#>     Attrib V60    0.2518234782658385
#>     Attrib V7    -0.013884267756887484
#>     Attrib V8    0.08197280621063113
#>     Attrib V9    0.28973195400669216
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.4355634949678335
#>     Attrib V1    -0.040043098892659584
#>     Attrib V10    -0.23830047544321445
#>     Attrib V11    -0.3414864737393132
#>     Attrib V12    -0.4995499839591899
#>     Attrib V13    -0.12511937537430431
#>     Attrib V14    0.24489411112058662
#>     Attrib V15    -0.005457809201595347
#>     Attrib V16    -0.08089556906390108
#>     Attrib V17    0.3047247754141356
#>     Attrib V18    0.7040374497149435
#>     Attrib V19    0.025048360119944012
#>     Attrib V2    -0.018578397305697967
#>     Attrib V20    0.09394083367104503
#>     Attrib V21    -0.1766453933312665
#>     Attrib V22    -0.3818421705497408
#>     Attrib V23    0.03243950277075351
#>     Attrib V24    -0.33520658353975236
#>     Attrib V25    0.06842544724812774
#>     Attrib V26    0.18419015020913473
#>     Attrib V27    0.09217974430302504
#>     Attrib V28    -0.2749169069530447
#>     Attrib V29    -0.277726048225428
#>     Attrib V3    0.3862696102951233
#>     Attrib V30    -0.496357702551193
#>     Attrib V31    0.5749549643945522
#>     Attrib V32    0.04582696780780251
#>     Attrib V33    -0.30398477036983423
#>     Attrib V34    -0.08526690775457149
#>     Attrib V35    0.12356242615384369
#>     Attrib V36    0.8050795323887874
#>     Attrib V37    0.6168763922208332
#>     Attrib V38    -0.19266728130945424
#>     Attrib V39    -0.3691985472689557
#>     Attrib V4    -0.07261857653604262
#>     Attrib V40    0.15581430985552006
#>     Attrib V41    -0.30829064134321515
#>     Attrib V42    -0.44445150271768297
#>     Attrib V43    -0.15742246660782544
#>     Attrib V44    -0.24974198551586266
#>     Attrib V45    -0.5221853748268855
#>     Attrib V46    -0.16832077464931305
#>     Attrib V47    0.31456935933636193
#>     Attrib V48    -0.36376026831851754
#>     Attrib V49    -0.46096436903732924
#>     Attrib V5    0.18450814248587102
#>     Attrib V50    1.0151619339929971
#>     Attrib V51    0.010199243918162118
#>     Attrib V52    0.08487181609591138
#>     Attrib V53    -0.13357534523413678
#>     Attrib V54    0.09273722261092456
#>     Attrib V55    0.5195375122373425
#>     Attrib V56    0.1419838730216865
#>     Attrib V57    -0.03920675646414567
#>     Attrib V58    -0.3461793009157711
#>     Attrib V59    -0.3457817649213306
#>     Attrib V6    0.20483066667084499
#>     Attrib V60    -0.04008497915605902
#>     Attrib V7    0.3775964413474853
#>     Attrib V8    0.07291877305604604
#>     Attrib V9    -0.5176844162251234
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.7881646713648122
#>     Attrib V1    -0.2035292272895967
#>     Attrib V10    1.2614499375897037
#>     Attrib V11    1.1777808928136744
#>     Attrib V12    2.0843876602078355
#>     Attrib V13    0.6982979152506833
#>     Attrib V14    -0.5197500422892861
#>     Attrib V15    -0.7892382256562857
#>     Attrib V16    -0.030463949572423488
#>     Attrib V17    -0.698542140982359
#>     Attrib V18    -0.7964145297739179
#>     Attrib V19    0.30474366242795964
#>     Attrib V2    0.4207160485509601
#>     Attrib V20    -0.5265929504946504
#>     Attrib V21    0.09791022079893356
#>     Attrib V22    1.1635400173054113
#>     Attrib V23    0.46596770436110896
#>     Attrib V24    1.0505061042606973
#>     Attrib V25    0.7387714420563246
#>     Attrib V26    0.9330725771641064
#>     Attrib V27    1.2146415185847481
#>     Attrib V28    1.6961346882070911
#>     Attrib V29    1.5558994832063582
#>     Attrib V3    -0.12279153911804537
#>     Attrib V30    0.3752282760415735
#>     Attrib V31    -0.5129943523801216
#>     Attrib V32    -0.3476018259262262
#>     Attrib V33    -1.4612080230260012
#>     Attrib V34    -0.16987206268911967
#>     Attrib V35    0.192326245011577
#>     Attrib V36    -0.9775184080426449
#>     Attrib V37    -0.07393378512809944
#>     Attrib V38    0.17671233822271684
#>     Attrib V39    0.6862679639149176
#>     Attrib V4    0.7800945831337929
#>     Attrib V40    0.8631260490351693
#>     Attrib V41    1.799986771295493
#>     Attrib V42    -0.0777252004509908
#>     Attrib V43    -0.3480844204811361
#>     Attrib V44    0.0723529591896574
#>     Attrib V45    0.4912688041896022
#>     Attrib V46    1.1620638558602503
#>     Attrib V47    0.7027116534309092
#>     Attrib V48    1.2810198895217952
#>     Attrib V49    0.9447338228499425
#>     Attrib V5    0.6573513667053826
#>     Attrib V50    -1.1312009270003038
#>     Attrib V51    0.7331208429804864
#>     Attrib V52    0.8533679657901355
#>     Attrib V53    1.698698627019042
#>     Attrib V54    -0.33230976477951313
#>     Attrib V55    -1.68677598531755
#>     Attrib V56    -0.8123773692834229
#>     Attrib V57    0.32150794661576143
#>     Attrib V58    -0.18023730616420586
#>     Attrib V59    0.5084815713457005
#>     Attrib V6    0.37248456943816555
#>     Attrib V60    0.20297874360412932
#>     Attrib V7    -0.877243777958139
#>     Attrib V8    -0.7534353133702608
#>     Attrib V9    0.5756176687371893
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.21842944752198643
#>     Attrib V1    0.09097767606928304
#>     Attrib V10    0.02655493404201587
#>     Attrib V11    -0.006025925117624823
#>     Attrib V12    0.03717324086406866
#>     Attrib V13    -0.021174851149020343
#>     Attrib V14    0.040927823975139443
#>     Attrib V15    0.014677062415155442
#>     Attrib V16    0.0516150461065763
#>     Attrib V17    0.09206855185051684
#>     Attrib V18    0.008148952996435596
#>     Attrib V19    0.13221218434823073
#>     Attrib V2    0.06487728578439994
#>     Attrib V20    0.058098301840382435
#>     Attrib V21    0.043282580573915444
#>     Attrib V22    0.016053354486794538
#>     Attrib V23    -0.026843921993467162
#>     Attrib V24    -0.03827185900111969
#>     Attrib V25    -0.04603312880728832
#>     Attrib V26    -0.08062677021917591
#>     Attrib V27    -0.059384972635065335
#>     Attrib V28    -0.0572435594943574
#>     Attrib V29    -0.05125147615705291
#>     Attrib V3    0.05009132182118291
#>     Attrib V30    0.021533616850826554
#>     Attrib V31    -0.040751589421303615
#>     Attrib V32    -0.01238404150021231
#>     Attrib V33    0.10507105159971059
#>     Attrib V34    0.05376475486313031
#>     Attrib V35    0.12167821916873058
#>     Attrib V36    0.06899116016618766
#>     Attrib V37    0.06822087140213824
#>     Attrib V38    0.04259494216248671
#>     Attrib V39    0.07882952223694964
#>     Attrib V4    0.071103727865199
#>     Attrib V40    0.03189986020199134
#>     Attrib V41    0.04491318669954755
#>     Attrib V42    0.04967874634144427
#>     Attrib V43    0.05623349375097758
#>     Attrib V44    0.04477616087144003
#>     Attrib V45    0.08095542035060876
#>     Attrib V46    0.03538331400189786
#>     Attrib V47    0.01980183301102084
#>     Attrib V48    0.10803654187296269
#>     Attrib V49    0.05252059047789891
#>     Attrib V5    -0.023685773088823515
#>     Attrib V50    0.030474403956586484
#>     Attrib V51    0.046886144320730884
#>     Attrib V52    0.048351960385741716
#>     Attrib V53    0.09928017426576866
#>     Attrib V54    0.026990400847257266
#>     Attrib V55    0.043988367209073044
#>     Attrib V56    0.15971640279415958
#>     Attrib V57    0.1782545834051695
#>     Attrib V58    0.13843241389366118
#>     Attrib V59    0.1398392932290576
#>     Attrib V6    0.08359609480649258
#>     Attrib V60    0.16952807106992238
#>     Attrib V7    -0.01846692807009402
#>     Attrib V8    0.07462694544605501
#>     Attrib V9    0.0925164922822229
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.27457144817427787
#>     Attrib V1    0.36308652186979234
#>     Attrib V10    0.017125080759143662
#>     Attrib V11    0.15215459215873184
#>     Attrib V12    0.21016997827308298
#>     Attrib V13    -0.06470166004734891
#>     Attrib V14    -0.2645832577751246
#>     Attrib V15    0.3009693811907499
#>     Attrib V16    0.2600313383282012
#>     Attrib V17    0.020812251425918943
#>     Attrib V18    -0.3581830581076352
#>     Attrib V19    0.34690392303619616
#>     Attrib V2    -0.002483159769377755
#>     Attrib V20    0.4366657048492926
#>     Attrib V21    0.6800861554524331
#>     Attrib V22    0.7448308250757535
#>     Attrib V23    0.33937185065289605
#>     Attrib V24    0.48962861843555544
#>     Attrib V25    -0.163618929128763
#>     Attrib V26    -0.37975425492209336
#>     Attrib V27    -0.7083450648392872
#>     Attrib V28    -0.4551437734867941
#>     Attrib V29    -0.4425610851090691
#>     Attrib V3    -0.07137896686227027
#>     Attrib V30    0.3067300328501461
#>     Attrib V31    -0.8105431487947481
#>     Attrib V32    -0.14692080619151923
#>     Attrib V33    0.5048622042307139
#>     Attrib V34    0.11634301605831225
#>     Attrib V35    -0.17967256288957445
#>     Attrib V36    -0.8180675865609544
#>     Attrib V37    -0.9337808980110578
#>     Attrib V38    0.20967013236313395
#>     Attrib V39    0.32981191482413785
#>     Attrib V4    0.16969655591712993
#>     Attrib V40    -0.33506412169199573
#>     Attrib V41    0.23653122418381006
#>     Attrib V42    0.7198988593454012
#>     Attrib V43    0.42375720589161736
#>     Attrib V44    0.2842960635385927
#>     Attrib V45    0.573746133504067
#>     Attrib V46    0.0913589692561022
#>     Attrib V47    -0.37880500130154154
#>     Attrib V48    0.24920825426929633
#>     Attrib V49    0.4996230073499673
#>     Attrib V5    -0.27249651270179953
#>     Attrib V50    -0.6858428014566295
#>     Attrib V51    0.02773386209840386
#>     Attrib V52    -0.11134400795691562
#>     Attrib V53    0.22835143735202354
#>     Attrib V54    0.28848861710385965
#>     Attrib V55    -0.22269119045503785
#>     Attrib V56    0.32825908579252316
#>     Attrib V57    0.34665173669525506
#>     Attrib V58    0.6399738347200155
#>     Attrib V59    0.6916101403286931
#>     Attrib V6    -0.225852682255425
#>     Attrib V60    0.23614754162883708
#>     Attrib V7    -0.2841244290966386
#>     Attrib V8    0.18612490465893627
#>     Attrib V9    0.6360627967933739
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.7729347915743551
#>     Attrib V1    0.13389160476074427
#>     Attrib V10    -0.8757095850515055
#>     Attrib V11    -0.856269148310023
#>     Attrib V12    -1.605012763257056
#>     Attrib V13    -0.5524257694031672
#>     Attrib V14    0.3587117922450775
#>     Attrib V15    0.4015646282217777
#>     Attrib V16    0.006715041222511566
#>     Attrib V17    0.587816291937903
#>     Attrib V18    0.9161644085992767
#>     Attrib V19    0.029826073220130117
#>     Attrib V2    -0.39702762353615245
#>     Attrib V20    0.6398847826423617
#>     Attrib V21    0.0997952435162191
#>     Attrib V22    -0.5609286015800249
#>     Attrib V23    0.25811971756094676
#>     Attrib V24    -0.3109040168810419
#>     Attrib V25    -0.240477039448047
#>     Attrib V26    -0.5028830660468214
#>     Attrib V27    -0.936382451702394
#>     Attrib V28    -1.4025070728355236
#>     Attrib V29    -1.0002559588676279
#>     Attrib V3    0.15169414856971933
#>     Attrib V30    -0.16396558633679112
#>     Attrib V31    0.4737747557932556
#>     Attrib V32    0.2405257831389745
#>     Attrib V33    0.9570465269682078
#>     Attrib V34    0.2378358266523605
#>     Attrib V35    -0.18096992397703604
#>     Attrib V36    0.6806075506236863
#>     Attrib V37    -0.007677535638807409
#>     Attrib V38    -0.28808433259502586
#>     Attrib V39    -0.22593430513047813
#>     Attrib V4    -0.6651904232826529
#>     Attrib V40    -0.1972966988235724
#>     Attrib V41    -0.8574763502860523
#>     Attrib V42    0.2772175186066351
#>     Attrib V43    0.20976929927328372
#>     Attrib V44    -0.2504695786224686
#>     Attrib V45    -0.6422290683765628
#>     Attrib V46    -0.863489558113593
#>     Attrib V47    -0.3279528230884596
#>     Attrib V48    -0.8096388621917351
#>     Attrib V49    -0.5639506605474593
#>     Attrib V5    -0.5352461530404102
#>     Attrib V50    1.101895343465886
#>     Attrib V51    -0.29252336513978117
#>     Attrib V52    -0.31319282006313576
#>     Attrib V53    -1.2234302939137398
#>     Attrib V54    0.30900458850613016
#>     Attrib V55    0.9677557982822977
#>     Attrib V56    0.6696965587425139
#>     Attrib V57    -0.3594806274780647
#>     Attrib V58    -0.21093457808371363
#>     Attrib V59    -0.5293323088823642
#>     Attrib V6    -0.20258268920018582
#>     Attrib V60    -0.4009086638698744
#>     Attrib V7    0.6714206165162566
#>     Attrib V8    0.551677696282387
#>     Attrib V9    -0.42875649012618255
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.01956509360213447
#>     Attrib V1    0.20403967399229697
#>     Attrib V10    -0.052160793776859435
#>     Attrib V11    0.07980913719093029
#>     Attrib V12    0.11627555376583082
#>     Attrib V13    -0.04988330264636106
#>     Attrib V14    -0.014043597327302695
#>     Attrib V15    0.2645764297375091
#>     Attrib V16    0.19161133341807848
#>     Attrib V17    0.05676842291247154
#>     Attrib V18    -0.19241042877169284
#>     Attrib V19    0.19899893566778346
#>     Attrib V2    0.04188395117956818
#>     Attrib V20    0.36752383991387155
#>     Attrib V21    0.40648525720852585
#>     Attrib V22    0.37872852732690854
#>     Attrib V23    0.05382828747893633
#>     Attrib V24    0.1719366944279646
#>     Attrib V25    -0.17329113910628977
#>     Attrib V26    -0.42761358589324555
#>     Attrib V27    -0.499570026167364
#>     Attrib V28    -0.3763485666647274
#>     Attrib V29    -0.35270760651105193
#>     Attrib V3    0.07644708756929193
#>     Attrib V30    0.02760295898314576
#>     Attrib V31    -0.4985551238169455
#>     Attrib V32    -0.103156537870763
#>     Attrib V33    0.31131658043175875
#>     Attrib V34    0.044840450891574395
#>     Attrib V35    -0.12569348087434362
#>     Attrib V36    -0.5439950445937213
#>     Attrib V37    -0.5548650865616988
#>     Attrib V38    0.07242183029024486
#>     Attrib V39    0.13456576281016755
#>     Attrib V4    0.08692043554628298
#>     Attrib V40    -0.19154318133488554
#>     Attrib V41    0.08420762564563392
#>     Attrib V42    0.33991108727084574
#>     Attrib V43    0.2667620079094045
#>     Attrib V44    0.03890271586613575
#>     Attrib V45    0.32394213863391014
#>     Attrib V46    0.041749457405824954
#>     Attrib V47    -0.20071209775946003
#>     Attrib V48    0.08127316486359808
#>     Attrib V49    0.21376504211789038
#>     Attrib V5    -0.1835120996102139
#>     Attrib V50    -0.37336260353892015
#>     Attrib V51    0.026264607714309003
#>     Attrib V52    0.025718248483536658
#>     Attrib V53    0.17419779234712923
#>     Attrib V54    0.1640310023958584
#>     Attrib V55    -0.017513943680263776
#>     Attrib V56    0.3296487775043481
#>     Attrib V57    0.3064387055735375
#>     Attrib V58    0.4099461456434336
#>     Attrib V59    0.39870566368973537
#>     Attrib V6    -0.07857161624430264
#>     Attrib V60    0.24383375441822894
#>     Attrib V7    -0.10048066097032296
#>     Attrib V8    0.11809254640805726
#>     Attrib V9    0.3538824187907163
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.1954804991622332
#>     Attrib V1    0.07854918884757645
#>     Attrib V10    0.08059494627823245
#>     Attrib V11    0.010642004993679888
#>     Attrib V12    0.008385488705331557
#>     Attrib V13    0.02681818389314118
#>     Attrib V14    0.018279707514946515
#>     Attrib V15    0.029495794203308827
#>     Attrib V16    0.059688366577159355
#>     Attrib V17    0.14083364589079392
#>     Attrib V18    0.12194887655057066
#>     Attrib V19    0.06034609426112408
#>     Attrib V2    0.07400824579973687
#>     Attrib V20    0.024316687334197777
#>     Attrib V21    0.04164618610786398
#>     Attrib V22    0.008057718829918716
#>     Attrib V23    0.0011027406154608774
#>     Attrib V24    -0.06602797355755882
#>     Attrib V25    0.0016841740091327348
#>     Attrib V26    0.002963868449743488
#>     Attrib V27    -0.07038581078740941
#>     Attrib V28    -0.08348899990901246
#>     Attrib V29    -0.10958139641779897
#>     Attrib V3    0.08251108977573861
#>     Attrib V30    0.003332953067911429
#>     Attrib V31    0.10924864271529941
#>     Attrib V32    0.012700410710639492
#>     Attrib V33    0.02214431203725834
#>     Attrib V34    0.04094749866158703
#>     Attrib V35    0.10994017543801361
#>     Attrib V36    0.10791594823175044
#>     Attrib V37    0.16334960667115242
#>     Attrib V38    0.0180331021286046
#>     Attrib V39    0.09957888158999323
#>     Attrib V4    0.04815856416685395
#>     Attrib V40    0.11043428531328116
#>     Attrib V41    0.06937751565792162
#>     Attrib V42    0.03796055528947176
#>     Attrib V43    -0.006857906686653925
#>     Attrib V44    -0.04259522418798658
#>     Attrib V45    0.012128703701150708
#>     Attrib V46    0.03331113675339008
#>     Attrib V47    0.048734067198295386
#>     Attrib V48    0.055268548535449276
#>     Attrib V49    -0.007953205854131111
#>     Attrib V5    4.8397952555843623E-4
#>     Attrib V50    0.07867723884161357
#>     Attrib V51    0.04727847986751822
#>     Attrib V52    0.06322994768763088
#>     Attrib V53    0.08460931107891408
#>     Attrib V54    0.022792130355329007
#>     Attrib V55    0.03923554919404238
#>     Attrib V56    0.15127879540678782
#>     Attrib V57    0.07235414989002466
#>     Attrib V58    0.09011513807481707
#>     Attrib V59    0.07865115092414103
#>     Attrib V6    0.08702967563913225
#>     Attrib V60    0.09820474332496124
#>     Attrib V7    -0.0015696257517334158
#>     Attrib V8    0.03522976958384483
#>     Attrib V9    0.023200964926001332
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.04833531162894795
#>     Attrib V1    0.26088080776405165
#>     Attrib V10    -0.05593126663334418
#>     Attrib V11    0.024981797875393657
#>     Attrib V12    -0.019563333074448037
#>     Attrib V13    -0.03560469248841377
#>     Attrib V14    0.0048205296453613855
#>     Attrib V15    0.3044130095396772
#>     Attrib V16    0.2148700218169709
#>     Attrib V17    0.1100308136526993
#>     Attrib V18    -0.14333916545473327
#>     Attrib V19    0.18925111799719704
#>     Attrib V2    0.11096132433293913
#>     Attrib V20    0.35267879905615546
#>     Attrib V21    0.2860944797479937
#>     Attrib V22    0.2883656429822337
#>     Attrib V23    0.05617187648467994
#>     Attrib V24    0.08143713327696471
#>     Attrib V25    -0.31290454913394616
#>     Attrib V26    -0.4234609278614642
#>     Attrib V27    -0.5521041585077122
#>     Attrib V28    -0.4629105877137484
#>     Attrib V29    -0.4474390672285787
#>     Attrib V3    0.03283393734760678
#>     Attrib V30    0.03814370883723336
#>     Attrib V31    -0.44831100574074045
#>     Attrib V32    -0.15015694168547328
#>     Attrib V33    0.3301731535895414
#>     Attrib V34    0.06274608201584464
#>     Attrib V35    -0.09356085998758902
#>     Attrib V36    -0.4864756154466837
#>     Attrib V37    -0.5088021141724083
#>     Attrib V38    0.08677175464073773
#>     Attrib V39    0.052059233628484164
#>     Attrib V4    0.09977806561375663
#>     Attrib V40    -0.20363383059067297
#>     Attrib V41    -0.016579268920915016
#>     Attrib V42    0.3123648831760735
#>     Attrib V43    0.2352261868398344
#>     Attrib V44    0.10530039309393445
#>     Attrib V45    0.22640980255468013
#>     Attrib V46    -0.004659015266566076
#>     Attrib V47    -0.22846653581764403
#>     Attrib V48    0.07706008348454943
#>     Attrib V49    0.1881813901862525
#>     Attrib V5    -0.1979703577095377
#>     Attrib V50    -0.36519725948430654
#>     Attrib V51    -0.02424976288754622
#>     Attrib V52    -0.007052697444545709
#>     Attrib V53    0.16345052761961756
#>     Attrib V54    0.2595234754489841
#>     Attrib V55    0.026946797580242147
#>     Attrib V56    0.3134788956161446
#>     Attrib V57    0.3042888642237975
#>     Attrib V58    0.38657686581541223
#>     Attrib V59    0.4040163297442952
#>     Attrib V6    -0.08168008034664803
#>     Attrib V60    0.2634532400443351
#>     Attrib V7    -0.024266604394048374
#>     Attrib V8    0.14075746690002783
#>     Attrib V9    0.3549131352510522
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.11882388469377907
#>     Attrib V1    0.17341234038144435
#>     Attrib V10    -0.03074947126333038
#>     Attrib V11    0.038114017124847265
#>     Attrib V12    0.0415091576032221
#>     Attrib V13    -0.04484089432617894
#>     Attrib V14    0.034851615235336114
#>     Attrib V15    0.13449698372937013
#>     Attrib V16    0.14358802629082387
#>     Attrib V17    0.037479915650373036
#>     Attrib V18    0.01113501315616181
#>     Attrib V19    0.10131088127039632
#>     Attrib V2    0.028616346432593674
#>     Attrib V20    0.16326831500342223
#>     Attrib V21    0.16758528105458992
#>     Attrib V22    0.1094422199003621
#>     Attrib V23    0.011356581105362055
#>     Attrib V24    3.077473276203445E-4
#>     Attrib V25    -0.17189119352069693
#>     Attrib V26    -0.20153049840460482
#>     Attrib V27    -0.2388141046787585
#>     Attrib V28    -0.16854101152154893
#>     Attrib V29    -0.18580306855300044
#>     Attrib V3    0.0752233819595132
#>     Attrib V30    0.0735727349266336
#>     Attrib V31    -0.2315496842892069
#>     Attrib V32    -0.07360723112706606
#>     Attrib V33    0.16117896918181432
#>     Attrib V34    0.05868465816606178
#>     Attrib V35    0.012474744279351697
#>     Attrib V36    -0.1308812861803897
#>     Attrib V37    -0.20035200427465003
#>     Attrib V38    0.01802404360010532
#>     Attrib V39    0.06916029824262783
#>     Attrib V4    0.039010890270370725
#>     Attrib V40    -0.10145642386596739
#>     Attrib V41    -0.008357204160253892
#>     Attrib V42    0.1478522288235529
#>     Attrib V43    0.06537479156809305
#>     Attrib V44    0.07839450222337875
#>     Attrib V45    0.20535702559529445
#>     Attrib V46    0.053113848977186864
#>     Attrib V47    -0.06428387975374067
#>     Attrib V48    0.05834385545857019
#>     Attrib V49    0.16048543250182212
#>     Attrib V5    -0.05474025568265783
#>     Attrib V50    -0.16237685298039836
#>     Attrib V51    0.06117125093220739
#>     Attrib V52    0.08073187243300889
#>     Attrib V53    0.15091974448385756
#>     Attrib V54    0.053861498458358414
#>     Attrib V55    1.5799372509643284E-4
#>     Attrib V56    0.20509565976740823
#>     Attrib V57    0.20906423402057278
#>     Attrib V58    0.30726277111391587
#>     Attrib V59    0.23558634857123087
#>     Attrib V6    0.010306859662174808
#>     Attrib V60    0.16927392078435644
#>     Attrib V7    -0.025395666923381088
#>     Attrib V8    0.1036834515847549
#>     Attrib V9    0.22970875428255938
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
#> 0.08695652 
```
