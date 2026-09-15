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
#>     Threshold    -0.19066510828601005
#>     Node 2    2.030725118409459
#>     Node 3    1.7082648143607448
#>     Node 4    0.5408755652637627
#>     Node 5    -2.8474665557047842
#>     Node 6    0.7652298380372685
#>     Node 7    4.355421055229642
#>     Node 8    0.4461469469655143
#>     Node 9    3.4283131747455466
#>     Node 10    -1.4272961905835782
#>     Node 11    0.8544585047369798
#>     Node 12    1.373814619064045
#>     Node 13    0.5394834011666978
#>     Node 14    1.480929994670676
#>     Node 15    -2.5283621523180146
#>     Node 16    -0.7959788442279405
#>     Node 17    0.031644502546655025
#>     Node 18    -0.18532541185505663
#>     Node 19    2.3981224258409277
#>     Node 20    1.4300519975535937
#>     Node 21    -2.6040485542712943
#>     Node 22    0.2841549186935346
#>     Node 23    1.762460356255768
#>     Node 24    -1.4350926099974424
#>     Node 25    3.923211856375713
#>     Node 26    -1.1202470540114247
#>     Node 27    1.5444517449517783
#>     Node 28    -2.6025356475718167
#>     Node 29    1.2138359862308254
#>     Node 30    -0.7052191206294803
#>     Node 31    0.9752787829695488
#>     Node 32    -0.15948739882542706
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.21435187207310064
#>     Node 2    -2.0655161358555914
#>     Node 3    -1.6887063001373093
#>     Node 4    -0.5092573567425274
#>     Node 5    2.8630719695204943
#>     Node 6    -0.7558759712288596
#>     Node 7    -4.351565645078996
#>     Node 8    -0.48086788536920966
#>     Node 9    -3.4224633700736695
#>     Node 10    1.3669561468658693
#>     Node 11    -0.8298637574423585
#>     Node 12    -1.4472231847186487
#>     Node 13    -0.4941043479954721
#>     Node 14    -1.420570143685475
#>     Node 15    2.5035106619108674
#>     Node 16    0.775340314152593
#>     Node 17    -0.0040800814781623744
#>     Node 18    0.21995142230929876
#>     Node 19    -2.3921112495125327
#>     Node 20    -1.4065485225098606
#>     Node 21    2.655167882661777
#>     Node 22    -0.34689238560499397
#>     Node 23    -1.800792659584077
#>     Node 24    1.425002642775318
#>     Node 25    -3.905717923783727
#>     Node 26    1.057523936614062
#>     Node 27    -1.5676444624361343
#>     Node 28    2.60251016128023
#>     Node 29    -1.2419534117766973
#>     Node 30    0.7623937839351577
#>     Node 31    -0.9334391696433627
#>     Node 32    0.13454383254161922
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.29739344522313915
#>     Attrib V1    0.43969700713163773
#>     Attrib V10    -0.47323144517149307
#>     Attrib V11    -0.13420750163056405
#>     Attrib V12    -0.3306546492242028
#>     Attrib V13    -0.16712442917200357
#>     Attrib V14    0.16289551787838605
#>     Attrib V15    0.5457602242607332
#>     Attrib V16    0.001040874251049545
#>     Attrib V17    -0.10429176097895458
#>     Attrib V18    0.12564090852570986
#>     Attrib V19    0.2954490114360249
#>     Attrib V2    0.39528745664371406
#>     Attrib V20    0.5008164060538464
#>     Attrib V21    0.7001742019644839
#>     Attrib V22    0.22791502672764094
#>     Attrib V23    0.13540254250800574
#>     Attrib V24    0.3407685360105874
#>     Attrib V25    -0.6570926344019906
#>     Attrib V26    -0.9520256715977047
#>     Attrib V27    -0.34732955304655844
#>     Attrib V28    -0.15277658586496107
#>     Attrib V29    0.31103071274046895
#>     Attrib V3    -0.15187429312587725
#>     Attrib V30    0.4960828061292178
#>     Attrib V31    -1.647317498838956
#>     Attrib V32    -0.19843217700350016
#>     Attrib V33    0.18100553200061822
#>     Attrib V34    -0.3914742869763016
#>     Attrib V35    -0.2566418459931797
#>     Attrib V36    -0.5835428887785037
#>     Attrib V37    -0.5773109372499836
#>     Attrib V38    0.4685457817946547
#>     Attrib V39    0.07862856595187409
#>     Attrib V4    0.19303009364783363
#>     Attrib V40    -0.6691352189543037
#>     Attrib V41    -0.2192446225820625
#>     Attrib V42    0.6271021040523853
#>     Attrib V43    0.5531046206769721
#>     Attrib V44    0.7954199910786317
#>     Attrib V45    0.9354960783547457
#>     Attrib V46    0.4154281232854802
#>     Attrib V47    -0.19171873705530693
#>     Attrib V48    0.18425893785556344
#>     Attrib V49    0.2903464461659834
#>     Attrib V5    0.1258611743748028
#>     Attrib V50    -0.885185299617563
#>     Attrib V51    -0.15277927816027756
#>     Attrib V52    0.153524631187455
#>     Attrib V53    0.6096809325936211
#>     Attrib V54    0.6740990308485904
#>     Attrib V55    0.17426832216793023
#>     Attrib V56    0.09744160593016211
#>     Attrib V57    -0.02581287168774384
#>     Attrib V58    0.5435779188474428
#>     Attrib V59    0.5100292121316095
#>     Attrib V6    -0.6809207513553548
#>     Attrib V60    -0.17222169507941093
#>     Attrib V7    -0.3883913520075051
#>     Attrib V8    -0.34157311462209544
#>     Attrib V9    0.16634913348251495
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.2631683345029939
#>     Attrib V1    0.3504585860011573
#>     Attrib V10    -0.4286353182578302
#>     Attrib V11    -0.20439070816312788
#>     Attrib V12    -0.3092667586130599
#>     Attrib V13    -0.1381638723213188
#>     Attrib V14    0.1681951281471963
#>     Attrib V15    0.5807672674013946
#>     Attrib V16    0.05336480402530495
#>     Attrib V17    -0.0634177008355008
#>     Attrib V18    0.05414255141670271
#>     Attrib V19    0.2759237366328976
#>     Attrib V2    0.3643427360879506
#>     Attrib V20    0.41284791745616023
#>     Attrib V21    0.5389557194329753
#>     Attrib V22    0.19311296993791977
#>     Attrib V23    0.07946136839197043
#>     Attrib V24    0.26109796610552033
#>     Attrib V25    -0.5284404106519123
#>     Attrib V26    -0.8648905929748736
#>     Attrib V27    -0.43516598294413555
#>     Attrib V28    -0.2870144668235879
#>     Attrib V29    0.07945198399246514
#>     Attrib V3    -0.09866274764470392
#>     Attrib V30    0.38784857894934593
#>     Attrib V31    -1.2047004850610437
#>     Attrib V32    -0.08677835843398007
#>     Attrib V33    0.23707820621062528
#>     Attrib V34    -0.3370994043530526
#>     Attrib V35    -0.24928611116365706
#>     Attrib V36    -0.5601919696558668
#>     Attrib V37    -0.580190108215022
#>     Attrib V38    0.2150212901617842
#>     Attrib V39    0.013827429968120544
#>     Attrib V4    0.18226940672524336
#>     Attrib V40    -0.5479720249123471
#>     Attrib V41    -0.20873662512247582
#>     Attrib V42    0.5133758546860044
#>     Attrib V43    0.39237621215698826
#>     Attrib V44    0.5809823990609629
#>     Attrib V45    0.6862134047961795
#>     Attrib V46    0.2923560786634816
#>     Attrib V47    -0.14220123852801494
#>     Attrib V48    0.16060238508487854
#>     Attrib V49    0.2507768393851389
#>     Attrib V5    0.05128625285433499
#>     Attrib V50    -0.6738512185534707
#>     Attrib V51    -0.14962895578877017
#>     Attrib V52    0.16171918719404835
#>     Attrib V53    0.4986846252831725
#>     Attrib V54    0.6836095473960911
#>     Attrib V55    0.2819240791716443
#>     Attrib V56    0.19526627873949362
#>     Attrib V57    0.09197476859530315
#>     Attrib V58    0.5690133268281576
#>     Attrib V59    0.49360428792653777
#>     Attrib V6    -0.5853504694805501
#>     Attrib V60    -0.13293720298288075
#>     Attrib V7    -0.3583336374791162
#>     Attrib V8    -0.2316685335180653
#>     Attrib V9    0.10969412755933192
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.13059164721337194
#>     Attrib V1    0.04263281905482743
#>     Attrib V10    -0.09389113907947551
#>     Attrib V11    0.024777612175013543
#>     Attrib V12    -0.012020017062182295
#>     Attrib V13    -8.613905808160866E-4
#>     Attrib V14    -0.03174202532957569
#>     Attrib V15    0.1589297364982872
#>     Attrib V16    -0.03513430309262352
#>     Attrib V17    -0.042766366605439136
#>     Attrib V18    -0.022480627148520567
#>     Attrib V19    0.02269709808912527
#>     Attrib V2    0.10321463794870374
#>     Attrib V20    0.030976899806822864
#>     Attrib V21    0.110432959236807
#>     Attrib V22    -0.025597175811864374
#>     Attrib V23    0.0333405789177507
#>     Attrib V24    0.16270071472433822
#>     Attrib V25    -0.09962437366326526
#>     Attrib V26    -0.2204020487875782
#>     Attrib V27    -0.15840126348516495
#>     Attrib V28    -0.14574391839881337
#>     Attrib V29    -0.10354964374229668
#>     Attrib V3    -0.05577871070358102
#>     Attrib V30    0.07680375065431017
#>     Attrib V31    -0.34803222464309846
#>     Attrib V32    0.02480528074210149
#>     Attrib V33    0.15235449118288832
#>     Attrib V34    0.044115632051119714
#>     Attrib V35    0.0450847958794905
#>     Attrib V36    -0.18925882714975378
#>     Attrib V37    -0.22864198845446954
#>     Attrib V38    -0.006297810899255517
#>     Attrib V39    -0.02544884290544178
#>     Attrib V4    -0.015142505124769312
#>     Attrib V40    -0.16028511027126222
#>     Attrib V41    -0.11512891651886545
#>     Attrib V42    0.13050482307726194
#>     Attrib V43    0.1428734328451864
#>     Attrib V44    0.21258066993579963
#>     Attrib V45    0.2942763348015854
#>     Attrib V46    0.09484029509391767
#>     Attrib V47    -0.07355409601448983
#>     Attrib V48    0.0973417370256348
#>     Attrib V49    0.10527243535532634
#>     Attrib V5    0.04963875634528653
#>     Attrib V50    -0.24557683308811698
#>     Attrib V51    -0.05304402325943452
#>     Attrib V52    0.021193627275721424
#>     Attrib V53    0.20465355979537583
#>     Attrib V54    0.12868697959152225
#>     Attrib V55    0.04859694559176704
#>     Attrib V56    0.06663290560492215
#>     Attrib V57    -0.021876340860307156
#>     Attrib V58    0.13032787440765112
#>     Attrib V59    0.02237092556435776
#>     Attrib V6    -0.251153878022123
#>     Attrib V60    -0.15957488948832568
#>     Attrib V7    -0.14283433730366235
#>     Attrib V8    -0.17960924982470253
#>     Attrib V9    0.13594679825935804
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    0.15991782294011678
#>     Attrib V1    -0.55750278333693
#>     Attrib V10    -0.09497175050758917
#>     Attrib V11    -0.6852602082622423
#>     Attrib V12    -0.24372969385676865
#>     Attrib V13    -0.12609567039094105
#>     Attrib V14    0.3953674416608886
#>     Attrib V15    -0.4605119907132851
#>     Attrib V16    0.5122552822971421
#>     Attrib V17    0.818742832192656
#>     Attrib V18    0.5924923748426445
#>     Attrib V19    0.015672067843219697
#>     Attrib V2    -0.7296262370106569
#>     Attrib V20    -0.1343411525428639
#>     Attrib V21    -0.257409686775321
#>     Attrib V22    -0.24150742221976146
#>     Attrib V23    -0.6751279372955188
#>     Attrib V24    -1.3232235879231828
#>     Attrib V25    0.3332205588158101
#>     Attrib V26    0.9302074719895866
#>     Attrib V27    0.26167095152065606
#>     Attrib V28    0.32924268936096585
#>     Attrib V29    0.24303340678149873
#>     Attrib V3    0.5081134492069057
#>     Attrib V30    -0.32157230076902776
#>     Attrib V31    2.113087546545801
#>     Attrib V32    0.025732325165566505
#>     Attrib V33    -0.38786336622109363
#>     Attrib V34    0.0882889467650565
#>     Attrib V35    0.2871662487389364
#>     Attrib V36    1.489915930922396
#>     Attrib V37    1.2672302823904533
#>     Attrib V38    -0.04449445068172472
#>     Attrib V39    0.03588581100890001
#>     Attrib V4    0.07365552225041468
#>     Attrib V40    0.748585801247927
#>     Attrib V41    0.2055384081447549
#>     Attrib V42    -0.37373362817469313
#>     Attrib V43    -0.32341710803364127
#>     Attrib V44    -0.24152917254356338
#>     Attrib V45    -0.9132964661771196
#>     Attrib V46    -0.7194628232617288
#>     Attrib V47    0.03900799900318137
#>     Attrib V48    -0.40487501599734593
#>     Attrib V49    -0.4438551214806978
#>     Attrib V5    -0.13038966683115494
#>     Attrib V50    1.6815435903528648
#>     Attrib V51    -0.014111853789173175
#>     Attrib V52    -0.38597833444793406
#>     Attrib V53    -1.0224273662160146
#>     Attrib V54    -0.4268088790895058
#>     Attrib V55    0.06657126309874967
#>     Attrib V56    0.07997561050602403
#>     Attrib V57    0.4108191295996449
#>     Attrib V58    -0.7842559354358228
#>     Attrib V59    -0.07349770233512447
#>     Attrib V6    0.7421049806616639
#>     Attrib V60    0.47415534891907407
#>     Attrib V7    0.5615687527453985
#>     Attrib V8    0.8288496019640492
#>     Attrib V9    -0.8594120380447079
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.08662826952673203
#>     Attrib V1    0.11992899412034815
#>     Attrib V10    -0.14934795394812606
#>     Attrib V11    0.01530914328303711
#>     Attrib V12    -0.007257513383971487
#>     Attrib V13    -0.10843719208782249
#>     Attrib V14    -0.1576539433395356
#>     Attrib V15    0.1396617523206007
#>     Attrib V16    0.0366283915894602
#>     Attrib V17    -0.05438661968004156
#>     Attrib V18    0.05592438383563545
#>     Attrib V19    0.04286591570518549
#>     Attrib V2    0.15771466698340905
#>     Attrib V20    0.0513374774309652
#>     Attrib V21    0.14079855601722174
#>     Attrib V22    0.006000935369244365
#>     Attrib V23    0.058054677824893056
#>     Attrib V24    0.31486003666722123
#>     Attrib V25    -0.01315796216744684
#>     Attrib V26    -0.2943572948865433
#>     Attrib V27    -0.1665056426777808
#>     Attrib V28    -0.3185845073502347
#>     Attrib V29    -0.26116393810240385
#>     Attrib V3    -0.12611632079138022
#>     Attrib V30    0.07317543806503296
#>     Attrib V31    -0.49682855300119466
#>     Attrib V32    0.05407837773542149
#>     Attrib V33    0.18124618967368417
#>     Attrib V34    0.0064613291143534035
#>     Attrib V35    0.049265262830008
#>     Attrib V36    -0.27342892998837226
#>     Attrib V37    -0.3105406511864235
#>     Attrib V38    0.021358410728398943
#>     Attrib V39    -0.06703810744250774
#>     Attrib V4    0.025665314199227428
#>     Attrib V40    -0.28184949506656465
#>     Attrib V41    -0.10299256028634725
#>     Attrib V42    0.17811098784876717
#>     Attrib V43    0.2252170570152418
#>     Attrib V44    0.26415366148669034
#>     Attrib V45    0.3297421094855461
#>     Attrib V46    0.18077224521889884
#>     Attrib V47    -0.07738540473309709
#>     Attrib V48    0.06968060587196824
#>     Attrib V49    0.07335738877280802
#>     Attrib V5    0.0036996378024726872
#>     Attrib V50    -0.32685357282251304
#>     Attrib V51    -0.09761091515483675
#>     Attrib V52    -0.0188171687178782
#>     Attrib V53    0.26904031153777436
#>     Attrib V54    0.22419985728708572
#>     Attrib V55    0.04146085969149596
#>     Attrib V56    0.06960570940108224
#>     Attrib V57    -0.06352382766421401
#>     Attrib V58    0.20781844015831127
#>     Attrib V59    0.05423753714425425
#>     Attrib V6    -0.2481904014796339
#>     Attrib V60    -0.1445700835352602
#>     Attrib V7    -0.15948242390545042
#>     Attrib V8    -0.1772943262131798
#>     Attrib V9    0.1936898697971385
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.3290414665637158
#>     Attrib V1    1.258568007982283
#>     Attrib V10    1.4104410004545784
#>     Attrib V11    1.6548139966073212
#>     Attrib V12    0.9603891044797476
#>     Attrib V13    0.7229728301591498
#>     Attrib V14    -0.21418858702016705
#>     Attrib V15    -0.23337007590900138
#>     Attrib V16    -0.9748470982721195
#>     Attrib V17    -1.3428295552276615
#>     Attrib V18    -0.7012469279479737
#>     Attrib V19    -0.3458652626330986
#>     Attrib V2    1.2915784174886125
#>     Attrib V20    0.10181079545641228
#>     Attrib V21    0.5546254084935103
#>     Attrib V22    0.8409146051311664
#>     Attrib V23    0.6520811590910518
#>     Attrib V24    0.5618118085106268
#>     Attrib V25    0.1376713220517825
#>     Attrib V26    1.0441165664127712
#>     Attrib V27    1.592982060953048
#>     Attrib V28    1.5573101971215437
#>     Attrib V29    1.6740733118799747
#>     Attrib V3    -0.23360469759024638
#>     Attrib V30    0.6985245971377984
#>     Attrib V31    -1.3981904396184386
#>     Attrib V32    -0.25823169335928065
#>     Attrib V33    -0.22703611989362338
#>     Attrib V34    -0.015026509573039843
#>     Attrib V35    0.36682032753498645
#>     Attrib V36    -1.015315134373165
#>     Attrib V37    0.025031569621419114
#>     Attrib V38    0.04815248183604133
#>     Attrib V39    0.8038734937992968
#>     Attrib V4    -0.30099224262712615
#>     Attrib V40    1.2441511368874512
#>     Attrib V41    1.0935988220100405
#>     Attrib V42    -0.11473294641555148
#>     Attrib V43    -0.39795921901633746
#>     Attrib V44    -0.20609669709288875
#>     Attrib V45    0.8010470496429394
#>     Attrib V46    1.471669919885604
#>     Attrib V47    0.9751455018037846
#>     Attrib V48    0.4747143809830909
#>     Attrib V49    0.5290630233498536
#>     Attrib V5    0.5183263513771859
#>     Attrib V50    -0.6792932697969616
#>     Attrib V51    0.5031798180359858
#>     Attrib V52    0.6899130590429015
#>     Attrib V53    1.2729023476329262
#>     Attrib V54    0.08065048541184706
#>     Attrib V55    -0.9884002698801023
#>     Attrib V56    -0.6687184349912032
#>     Attrib V57    -0.7727468317574688
#>     Attrib V58    -0.0962545074529682
#>     Attrib V59    -0.9600598694709823
#>     Attrib V6    0.428960736652091
#>     Attrib V60    0.5056109840924001
#>     Attrib V7    0.06371219198879852
#>     Attrib V8    -0.40417009381514013
#>     Attrib V9    1.4444636219204672
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.04097841794428267
#>     Attrib V1    0.06731038713066488
#>     Attrib V10    -0.006519613366827266
#>     Attrib V11    0.12562087969422225
#>     Attrib V12    0.031507296681217885
#>     Attrib V13    0.007394999670073827
#>     Attrib V14    -0.13750701974095528
#>     Attrib V15    0.04244761034721397
#>     Attrib V16    0.0010722828396098594
#>     Attrib V17    -0.05830464565298617
#>     Attrib V18    -0.0645816948046112
#>     Attrib V19    -0.007712438611586677
#>     Attrib V2    0.12656080645656465
#>     Attrib V20    -0.0732381195397345
#>     Attrib V21    3.7151839681355537E-4
#>     Attrib V22    -0.06485808332729644
#>     Attrib V23    -0.002755549395159256
#>     Attrib V24    0.18652201921475847
#>     Attrib V25    -0.005570309818409956
#>     Attrib V26    -0.08451755471862149
#>     Attrib V27    -0.03487127878607243
#>     Attrib V28    -0.07877129410088858
#>     Attrib V29    -0.07085494356927867
#>     Attrib V3    -0.06733726739028471
#>     Attrib V30    0.10795755742786642
#>     Attrib V31    -0.26612609226981976
#>     Attrib V32    0.047507987899410076
#>     Attrib V33    0.13617907101024346
#>     Attrib V34    0.04963096684538079
#>     Attrib V35    0.05712426022882355
#>     Attrib V36    -0.08476555131480969
#>     Attrib V37    -0.15941995305302667
#>     Attrib V38    0.0712821592432924
#>     Attrib V39    -0.02621546848560622
#>     Attrib V4    0.05537174541972708
#>     Attrib V40    -0.1382634848271852
#>     Attrib V41    -0.07060043797689604
#>     Attrib V42    0.014991101110747605
#>     Attrib V43    0.14625491656582656
#>     Attrib V44    0.23835340318877288
#>     Attrib V45    0.2505204563602633
#>     Attrib V46    0.16590379022307142
#>     Attrib V47    0.008596441190552596
#>     Attrib V48    0.12406944817375332
#>     Attrib V49    0.1003167461696878
#>     Attrib V5    0.04245806057439458
#>     Attrib V50    -0.24513492980771281
#>     Attrib V51    -0.08044562814454917
#>     Attrib V52    0.0301897456853364
#>     Attrib V53    0.2022454613239921
#>     Attrib V54    0.131102087192922
#>     Attrib V55    -0.0021735401071709625
#>     Attrib V56    -0.017986700908643245
#>     Attrib V57    0.017918368643031406
#>     Attrib V58    0.09462809485985094
#>     Attrib V59    0.025983293107375887
#>     Attrib V6    -0.184828512182637
#>     Attrib V60    -0.09059160196855187
#>     Attrib V7    -0.09467182650280669
#>     Attrib V8    -0.12961036395647768
#>     Attrib V9    0.1385528162979157
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.06160306459854127
#>     Attrib V1    0.9116489969664348
#>     Attrib V10    1.1800781885870655
#>     Attrib V11    1.4621834884887708
#>     Attrib V12    1.0831733111127373
#>     Attrib V13    0.7860512007716763
#>     Attrib V14    -0.18404635759633134
#>     Attrib V15    -0.2260487021311582
#>     Attrib V16    -0.8227600124545884
#>     Attrib V17    -1.0935958985286982
#>     Attrib V18    -0.6455540157031276
#>     Attrib V19    -0.44301922086052936
#>     Attrib V2    1.0455552346960018
#>     Attrib V20    -0.22376578306646233
#>     Attrib V21    0.11049066766826894
#>     Attrib V22    0.48296883895328
#>     Attrib V23    0.5127087983269828
#>     Attrib V24    0.5349378000045302
#>     Attrib V25    0.271627401296888
#>     Attrib V26    0.9393208808470248
#>     Attrib V27    1.4762653592757247
#>     Attrib V28    1.351651406403393
#>     Attrib V29    1.2457017481005508
#>     Attrib V3    -0.1460172844351913
#>     Attrib V30    0.577439514397648
#>     Attrib V31    -1.0030652267265554
#>     Attrib V32    -0.10386128202036714
#>     Attrib V33    -0.13439455579651532
#>     Attrib V34    0.015034180869882206
#>     Attrib V35    0.1990315964346421
#>     Attrib V36    -0.8656816015626885
#>     Attrib V37    -0.04509715252006662
#>     Attrib V38    0.04330935966084118
#>     Attrib V39    0.6907623496959812
#>     Attrib V4    -0.0883035542226079
#>     Attrib V40    0.8983030061750238
#>     Attrib V41    0.8701274701805993
#>     Attrib V42    -0.04653931569542165
#>     Attrib V43    -0.12753829719282533
#>     Attrib V44    -0.1617374266514377
#>     Attrib V45    0.5759675600588716
#>     Attrib V46    1.1478560293197801
#>     Attrib V47    0.7790411225018747
#>     Attrib V48    0.3428146443377265
#>     Attrib V49    0.4239352277773933
#>     Attrib V5    0.556171021693756
#>     Attrib V50    -0.6404615470859902
#>     Attrib V51    0.4519349161367254
#>     Attrib V52    0.6096347765504573
#>     Attrib V53    1.1210984150595262
#>     Attrib V54    0.016542248979644732
#>     Attrib V55    -0.685588768600563
#>     Attrib V56    -0.4747406896105369
#>     Attrib V57    -0.598610354300352
#>     Attrib V58    -0.01088656693087665
#>     Attrib V59    -0.6808323104041617
#>     Attrib V6    0.34064991617309665
#>     Attrib V60    0.32449201031061253
#>     Attrib V7    -0.042958748423057455
#>     Attrib V8    -0.348166607638626
#>     Attrib V9    1.1338333905098748
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.026383837485662663
#>     Attrib V1    -0.12826197543156892
#>     Attrib V10    -0.03233383514820017
#>     Attrib V11    -0.31471962031782136
#>     Attrib V12    -0.15317681282872747
#>     Attrib V13    -0.0575548764065929
#>     Attrib V14    0.2567008729188917
#>     Attrib V15    -0.20379179256169805
#>     Attrib V16    0.269215888330396
#>     Attrib V17    0.305921762304687
#>     Attrib V18    0.19020707079751706
#>     Attrib V19    0.04170078240568635
#>     Attrib V2    -0.33712193581139926
#>     Attrib V20    0.079188846858118
#>     Attrib V21    -0.037711036797174906
#>     Attrib V22    -0.06040923278714159
#>     Attrib V23    -0.15708279214086765
#>     Attrib V24    -0.5607106216276938
#>     Attrib V25    0.11830079938770945
#>     Attrib V26    0.4075437163661957
#>     Attrib V27    0.04538576437622663
#>     Attrib V28    0.15657108128248068
#>     Attrib V29    0.0712129795409213
#>     Attrib V3    0.31532175888298986
#>     Attrib V30    -0.23964114659231048
#>     Attrib V31    0.8847199765201023
#>     Attrib V32    -0.26897775203292734
#>     Attrib V33    -0.3493710536951185
#>     Attrib V34    -0.0342710494572353
#>     Attrib V35    0.033841182466644935
#>     Attrib V36    0.6726137717945948
#>     Attrib V37    0.562794838377736
#>     Attrib V38    -0.009182012692394952
#>     Attrib V39    0.020881783444129325
#>     Attrib V4    0.09483447759710575
#>     Attrib V40    0.30417306749257184
#>     Attrib V41    0.042155219121318095
#>     Attrib V42    -0.28965596948790706
#>     Attrib V43    -0.3738964859427725
#>     Attrib V44    -0.3807937517984155
#>     Attrib V45    -0.5837125058703952
#>     Attrib V46    -0.4551052881391928
#>     Attrib V47    -0.0160156276522726
#>     Attrib V48    -0.27833512176095215
#>     Attrib V49    -0.2706017609184476
#>     Attrib V5    -0.04577447153859493
#>     Attrib V50    0.8787528876916324
#>     Attrib V51    0.1403455249079143
#>     Attrib V52    -0.023834924100058514
#>     Attrib V53    -0.41544833550123206
#>     Attrib V54    -0.27349886478287927
#>     Attrib V55    0.09442352988110252
#>     Attrib V56    0.011577435121209958
#>     Attrib V57    0.24042337312026482
#>     Attrib V58    -0.2721813920150722
#>     Attrib V59    0.1402164817620735
#>     Attrib V6    0.4509390355437056
#>     Attrib V60    0.25365954481756553
#>     Attrib V7    0.2687403001297516
#>     Attrib V8    0.4079241054611627
#>     Attrib V9    -0.479920791180702
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.16573309569305564
#>     Attrib V1    0.06356080652652735
#>     Attrib V10    -0.12535094844606318
#>     Attrib V11    0.026141023884829962
#>     Attrib V12    -0.01309108979783658
#>     Attrib V13    -0.12434831921969441
#>     Attrib V14    -0.17521191926080465
#>     Attrib V15    0.13820213346717022
#>     Attrib V16    -0.007005764541639873
#>     Attrib V17    0.019798016144789536
#>     Attrib V18    0.06258419613009499
#>     Attrib V19    0.08014444931239897
#>     Attrib V2    0.11037101639776992
#>     Attrib V20    0.11712816518257467
#>     Attrib V21    0.13000944010618526
#>     Attrib V22    0.018943017657560908
#>     Attrib V23    0.07842955527145037
#>     Attrib V24    0.2922558893643285
#>     Attrib V25    -0.037965267396196746
#>     Attrib V26    -0.3478788579688237
#>     Attrib V27    -0.21889226738849968
#>     Attrib V28    -0.3109000897983324
#>     Attrib V29    -0.29555596793796257
#>     Attrib V3    -0.18372712402334332
#>     Attrib V30    0.0825650729171398
#>     Attrib V31    -0.5719733493984372
#>     Attrib V32    -0.010656632874217413
#>     Attrib V33    0.166343795927484
#>     Attrib V34    0.07331761469089872
#>     Attrib V35    0.10384675164680887
#>     Attrib V36    -0.19105675148569848
#>     Attrib V37    -0.32032913146398917
#>     Attrib V38    0.10144098345747367
#>     Attrib V39    -0.07476408816849454
#>     Attrib V4    -0.009167312219645762
#>     Attrib V40    -0.306782098948796
#>     Attrib V41    -0.21234908679020248
#>     Attrib V42    0.14433705225953505
#>     Attrib V43    0.24175321064127944
#>     Attrib V44    0.34856510502884797
#>     Attrib V45    0.4141438334191499
#>     Attrib V46    0.17763156665436525
#>     Attrib V47    -0.028927607023457355
#>     Attrib V48    0.1475452598574717
#>     Attrib V49    0.1038936010903642
#>     Attrib V5    0.038870366605779985
#>     Attrib V50    -0.33188723750561666
#>     Attrib V51    -0.035480973420173506
#>     Attrib V52    -0.019835918570789125
#>     Attrib V53    0.22251348984044736
#>     Attrib V54    0.31310367974492465
#>     Attrib V55    0.07161058941556586
#>     Attrib V56    0.06138855529053474
#>     Attrib V57    -0.06300517796413344
#>     Attrib V58    0.21924760147349895
#>     Attrib V59    -0.029166873532964096
#>     Attrib V6    -0.27964768215113117
#>     Attrib V60    -0.20616742886593004
#>     Attrib V7    -0.20771314342319025
#>     Attrib V8    -0.1872346183874092
#>     Attrib V9    0.1802333970842167
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.07338783628962063
#>     Attrib V1    0.1007604788943609
#>     Attrib V10    -0.10232093833609164
#>     Attrib V11    0.25088240466825157
#>     Attrib V12    -0.005337808615195962
#>     Attrib V13    -0.048994841956794634
#>     Attrib V14    -0.22841090248393872
#>     Attrib V15    0.19234017275240453
#>     Attrib V16    -0.10094249398324286
#>     Attrib V17    -0.17420623446344394
#>     Attrib V18    -0.01708851863846414
#>     Attrib V19    0.13220357260037754
#>     Attrib V2    0.32393787108607425
#>     Attrib V20    0.03334151731573706
#>     Attrib V21    0.2076295344354795
#>     Attrib V22    0.16130132271741524
#>     Attrib V23    0.19721183678309134
#>     Attrib V24    0.49103854062190794
#>     Attrib V25    -0.13935718039663447
#>     Attrib V26    -0.4198309318385175
#>     Attrib V27    -0.05476930837505684
#>     Attrib V28    -0.2668749995211415
#>     Attrib V29    -0.1688676461788897
#>     Attrib V3    -0.3591174049694573
#>     Attrib V30    0.264672076045986
#>     Attrib V31    -0.9864896479623508
#>     Attrib V32    0.031332452265343196
#>     Attrib V33    0.3064170832865779
#>     Attrib V34    -0.001111951556895396
#>     Attrib V35    0.04473520129958827
#>     Attrib V36    -0.4369033484902063
#>     Attrib V37    -0.4599265970213654
#>     Attrib V38    0.16002314814251078
#>     Attrib V39    -0.08589882819485267
#>     Attrib V4    0.004425841238375327
#>     Attrib V40    -0.379758484806376
#>     Attrib V41    -0.17416627461823292
#>     Attrib V42    0.23803159500571494
#>     Attrib V43    0.5031777598765584
#>     Attrib V44    0.568754962028078
#>     Attrib V45    0.7139382176333895
#>     Attrib V46    0.44695254303808774
#>     Attrib V47    -0.04333786798421685
#>     Attrib V48    0.2817051709283359
#>     Attrib V49    0.22580165846315545
#>     Attrib V5    0.053816361286560116
#>     Attrib V50    -0.7394780210565234
#>     Attrib V51    -0.15215320478574798
#>     Attrib V52    0.04528158024771268
#>     Attrib V53    0.45225085592714814
#>     Attrib V54    0.4075387161565634
#>     Attrib V55    -0.08487082551189903
#>     Attrib V56    0.009994982464057596
#>     Attrib V57    -0.1704739698083001
#>     Attrib V58    0.3146373815303557
#>     Attrib V59    -0.0270032824276685
#>     Attrib V6    -0.5060608939087748
#>     Attrib V60    -0.34823499730060725
#>     Attrib V7    -0.2624434774887674
#>     Attrib V8    -0.3289753975094753
#>     Attrib V9    0.4087138314121391
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.13131720210372613
#>     Attrib V1    0.06686244838649404
#>     Attrib V10    -0.09814084660228137
#>     Attrib V11    0.05354212387256478
#>     Attrib V12    0.011634032615901806
#>     Attrib V13    0.040706788310396855
#>     Attrib V14    -0.09269675751042959
#>     Attrib V15    0.06185366448992131
#>     Attrib V16    -0.08656140511458603
#>     Attrib V17    -0.053551291401116516
#>     Attrib V18    -0.009175408480048292
#>     Attrib V19    0.008618795093695236
#>     Attrib V2    0.10488072522079404
#>     Attrib V20    0.02894838575403558
#>     Attrib V21    0.06106218881250681
#>     Attrib V22    -0.02795349185308452
#>     Attrib V23    0.09478157290659169
#>     Attrib V24    0.24219011867204465
#>     Attrib V25    0.027600888902246084
#>     Attrib V26    -0.19480979617076039
#>     Attrib V27    -0.032776830960147905
#>     Attrib V28    -0.16235753301575842
#>     Attrib V29    -0.0989421686226378
#>     Attrib V3    -0.048950822976083164
#>     Attrib V30    0.08072553509340556
#>     Attrib V31    -0.40921618712755253
#>     Attrib V32    0.0352121936597748
#>     Attrib V33    0.11430600191891119
#>     Attrib V34    0.06665517315903621
#>     Attrib V35    0.02592897573224495
#>     Attrib V36    -0.2082223955757809
#>     Attrib V37    -0.21234028089705792
#>     Attrib V38    0.023470303075737345
#>     Attrib V39    0.018249650125257217
#>     Attrib V4    0.008573810121010468
#>     Attrib V40    -0.14131577305956772
#>     Attrib V41    -0.07476800798911919
#>     Attrib V42    0.11774841050765544
#>     Attrib V43    0.13458333743044193
#>     Attrib V44    0.19115900873354674
#>     Attrib V45    0.20746790071576296
#>     Attrib V46    0.15785801792229984
#>     Attrib V47    -0.00889430277519639
#>     Attrib V48    0.058770951448483086
#>     Attrib V49    0.09868930081071137
#>     Attrib V5    0.05050637326517395
#>     Attrib V50    -0.30726122302092096
#>     Attrib V51    -0.10464297533757179
#>     Attrib V52    -0.010582099775947824
#>     Attrib V53    0.1844562024986261
#>     Attrib V54    0.14240557864060624
#>     Attrib V55    0.013184820982120347
#>     Attrib V56    0.018898346819400533
#>     Attrib V57    -0.06644229164252308
#>     Attrib V58    0.11692614675521322
#>     Attrib V59    0.03195134049148474
#>     Attrib V6    -0.1794029563720511
#>     Attrib V60    -0.09689754886227726
#>     Attrib V7    -0.08964803451113307
#>     Attrib V8    -0.20542119515138657
#>     Attrib V9    0.11312975740956384
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.3094012307779755
#>     Attrib V1    0.24467185085742776
#>     Attrib V10    -0.19529939073362354
#>     Attrib V11    0.038094307569008515
#>     Attrib V12    -0.15523091935596484
#>     Attrib V13    -0.21729248274791518
#>     Attrib V14    -0.2802944171994076
#>     Attrib V15    0.29779392103110197
#>     Attrib V16    -0.027731243110022376
#>     Attrib V17    -0.029442144544493953
#>     Attrib V18    0.06828951530206974
#>     Attrib V19    0.15356773224821
#>     Attrib V2    0.25428947837684035
#>     Attrib V20    0.2031832214826142
#>     Attrib V21    0.3468697116213152
#>     Attrib V22    0.15022122095903356
#>     Attrib V23    0.2009439884283624
#>     Attrib V24    0.47321117675379515
#>     Attrib V25    -0.10146886905107837
#>     Attrib V26    -0.5079742960878774
#>     Attrib V27    -0.41031402226788527
#>     Attrib V28    -0.6097751493238953
#>     Attrib V29    -0.5131109438672132
#>     Attrib V3    -0.26087513491785497
#>     Attrib V30    0.12171171658382979
#>     Attrib V31    -0.923957767651784
#>     Attrib V32    -0.016820935752598302
#>     Attrib V33    0.30530940919088984
#>     Attrib V34    -0.03999785442345232
#>     Attrib V35    0.028490133951459117
#>     Attrib V36    -0.4190023422242166
#>     Attrib V37    -0.5416966080463564
#>     Attrib V38    0.07046698878914284
#>     Attrib V39    -0.0989163845991588
#>     Attrib V4    0.04124291256617536
#>     Attrib V40    -0.5381236030865671
#>     Attrib V41    -0.3300985602115749
#>     Attrib V42    0.23078290376976127
#>     Attrib V43    0.36513795842436736
#>     Attrib V44    0.5785209960851607
#>     Attrib V45    0.5767500238799856
#>     Attrib V46    0.35421490888238294
#>     Attrib V47    -0.06387226780982466
#>     Attrib V48    0.2729459164527147
#>     Attrib V49    0.27478111940886557
#>     Attrib V5    -0.03824038234367068
#>     Attrib V50    -0.5399624575007282
#>     Attrib V51    -0.12357163751735913
#>     Attrib V52    -0.0018959282758378587
#>     Attrib V53    0.37339321011383375
#>     Attrib V54    0.5589472952606896
#>     Attrib V55    0.15845538803957857
#>     Attrib V56    0.10498967513189851
#>     Attrib V57    -0.06728616511883716
#>     Attrib V58    0.4285701958406747
#>     Attrib V59    0.10772163050502018
#>     Attrib V6    -0.5060373214124579
#>     Attrib V60    -0.23620850843443086
#>     Attrib V7    -0.25953612870792453
#>     Attrib V8    -0.36064840357486144
#>     Attrib V9    0.27851427090176656
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    0.23554076856389675
#>     Attrib V1    -0.5706467723173526
#>     Attrib V10    0.40850962211305636
#>     Attrib V11    -0.09604973866673305
#>     Attrib V12    0.3116824310871269
#>     Attrib V13    0.1503603139273599
#>     Attrib V14    0.015322587954006626
#>     Attrib V15    -0.48841232748126284
#>     Attrib V16    0.21638093924649232
#>     Attrib V17    0.315520768240356
#>     Attrib V18    -0.004905741361552938
#>     Attrib V19    -0.25774378261728964
#>     Attrib V2    -0.5358616105968981
#>     Attrib V20    -0.48443784757802816
#>     Attrib V21    -0.760223476989087
#>     Attrib V22    -0.2426267599348122
#>     Attrib V23    -0.2514333422268744
#>     Attrib V24    -0.6871399112891649
#>     Attrib V25    0.4918555309132962
#>     Attrib V26    1.0548584356434625
#>     Attrib V27    0.3989472571702804
#>     Attrib V28    0.38130069575386166
#>     Attrib V29    -0.0663361777993393
#>     Attrib V3    0.3695496453742844
#>     Attrib V30    -0.5026960834577613
#>     Attrib V31    1.9618922799227603
#>     Attrib V32    0.045300935307135054
#>     Attrib V33    -0.5099078633028393
#>     Attrib V34    0.33728694216326244
#>     Attrib V35    0.343477331782977
#>     Attrib V36    0.9760490997644816
#>     Attrib V37    1.0581002818108103
#>     Attrib V38    -0.33150501462267906
#>     Attrib V39    -0.008055210965105404
#>     Attrib V4    -0.12401139951403693
#>     Attrib V40    0.7570761263695123
#>     Attrib V41    0.19962133742456797
#>     Attrib V42    -0.8106290948581766
#>     Attrib V43    -0.6511230955926142
#>     Attrib V44    -0.8313904532618056
#>     Attrib V45    -1.0966008627339874
#>     Attrib V46    -0.5369614053632044
#>     Attrib V47    0.1263760022387837
#>     Attrib V48    -0.43344879202749814
#>     Attrib V49    -0.5259903123278162
#>     Attrib V5    -0.062432484741647434
#>     Attrib V50    1.2338309100857945
#>     Attrib V51    0.262195061981865
#>     Attrib V52    -0.040824728533727775
#>     Attrib V53    -0.7311009718469859
#>     Attrib V54    -0.7657461067620293
#>     Attrib V55    -0.11619543148259782
#>     Attrib V56    -0.0642261251684795
#>     Attrib V57    0.02529533853253626
#>     Attrib V58    -0.704149230404497
#>     Attrib V59    -0.4292976805532554
#>     Attrib V6    0.7941734832093286
#>     Attrib V60    0.36356868258382097
#>     Attrib V7    0.38138607429728594
#>     Attrib V8    0.5429107741506418
#>     Attrib V9    -0.39140327635613
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.09597655950273895
#>     Attrib V1    -0.057562442235990906
#>     Attrib V10    0.10772387967876117
#>     Attrib V11    -0.0990912656208097
#>     Attrib V12    -0.08594548463122366
#>     Attrib V13    0.032486154878597885
#>     Attrib V14    0.12006621142184476
#>     Attrib V15    -4.674739955004696E-4
#>     Attrib V16    0.2929104915783213
#>     Attrib V17    0.340518595787217
#>     Attrib V18    0.22214240287297685
#>     Attrib V19    0.11362673620632602
#>     Attrib V2    -0.14063499418069075
#>     Attrib V20    0.05182548554992516
#>     Attrib V21    0.014130270410919656
#>     Attrib V22    0.05409841560679282
#>     Attrib V23    -0.08195441384792247
#>     Attrib V24    -0.2347406184755666
#>     Attrib V25    0.07370166983577435
#>     Attrib V26    0.1153102453410674
#>     Attrib V27    -0.05065843370522341
#>     Attrib V28    0.04346811845453752
#>     Attrib V29    -0.02529045093450427
#>     Attrib V3    0.22807708527230788
#>     Attrib V30    -0.21491992056336479
#>     Attrib V31    0.3531445011397522
#>     Attrib V32    -0.13737446268664766
#>     Attrib V33    -0.23482813119580498
#>     Attrib V34    -0.038068808988502706
#>     Attrib V35    -0.03916256242188568
#>     Attrib V36    0.28841384563721756
#>     Attrib V37    0.30344898345368626
#>     Attrib V38    -0.03404528111371133
#>     Attrib V39    0.03802345357144813
#>     Attrib V4    0.11953059281607419
#>     Attrib V40    0.14688345330218852
#>     Attrib V41    0.06176352336908734
#>     Attrib V42    -0.09806788685406549
#>     Attrib V43    -0.25381392573317146
#>     Attrib V44    -0.3050539034171796
#>     Attrib V45    -0.32883935757364385
#>     Attrib V46    -0.17904369383122126
#>     Attrib V47    0.04328922294248829
#>     Attrib V48    -0.10249404397673385
#>     Attrib V49    -0.10840608861912851
#>     Attrib V5    0.06866990611878071
#>     Attrib V50    0.4709240433918044
#>     Attrib V51    0.18170329640032334
#>     Attrib V52    0.03529298290760478
#>     Attrib V53    -0.1611446577216757
#>     Attrib V54    -0.15609806759534092
#>     Attrib V55    0.07007531253022016
#>     Attrib V56    0.022242820992350608
#>     Attrib V57    0.19141418350053346
#>     Attrib V58    -0.036887961586556925
#>     Attrib V59    0.054049550541200836
#>     Attrib V6    0.30450914437510085
#>     Attrib V60    0.15432161805444447
#>     Attrib V7    0.17612200663692543
#>     Attrib V8    0.22104600120133852
#>     Attrib V9    -0.08973438723473187
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.11668342345275469
#>     Attrib V1    0.10772687031646498
#>     Attrib V10    0.08508440728169585
#>     Attrib V11    0.0734969098500494
#>     Attrib V12    0.012782564000098471
#>     Attrib V13    -0.00684014892449756
#>     Attrib V14    -0.008521281126168095
#>     Attrib V15    0.0829495853039066
#>     Attrib V16    0.01329450718813495
#>     Attrib V17    0.0164924860394589
#>     Attrib V18    -0.006514662329817423
#>     Attrib V19    -0.0018170659651481087
#>     Attrib V2    0.1506054362739617
#>     Attrib V20    -0.05479801714813672
#>     Attrib V21    -0.054031358517135655
#>     Attrib V22    0.0034716071721679898
#>     Attrib V23    -0.04369428804265487
#>     Attrib V24    0.008874136006020834
#>     Attrib V25    -0.05063932996927725
#>     Attrib V26    -0.07026954554161914
#>     Attrib V27    -0.034544819714009536
#>     Attrib V28    -0.04182342415415991
#>     Attrib V29    -0.05353194213112268
#>     Attrib V3    0.07776951040154732
#>     Attrib V30    0.035643021966739526
#>     Attrib V31    0.0062651802232108495
#>     Attrib V32    -0.026167656269869215
#>     Attrib V33    0.0714684908886306
#>     Attrib V34    0.017693927510381076
#>     Attrib V35    0.11345385686611076
#>     Attrib V36    0.025741152902398996
#>     Attrib V37    0.010828229048737644
#>     Attrib V38    0.10483377894712088
#>     Attrib V39    0.08237751185198275
#>     Attrib V4    0.10288813807867137
#>     Attrib V40    0.006775066550645123
#>     Attrib V41    0.07629511915722342
#>     Attrib V42    0.06043566724322112
#>     Attrib V43    0.09039054624698394
#>     Attrib V44    0.0825595538472264
#>     Attrib V45    0.10924996122822321
#>     Attrib V46    0.03406698226911888
#>     Attrib V47    -7.772246442159248E-5
#>     Attrib V48    0.08974270229061469
#>     Attrib V49    0.024067163398485848
#>     Attrib V5    0.10694914448488765
#>     Attrib V50    0.035174245346625645
#>     Attrib V51    0.06150167508510229
#>     Attrib V52    0.0376822559945544
#>     Attrib V53    0.048170306758535474
#>     Attrib V54    0.030123786236338965
#>     Attrib V55    0.09643469333339122
#>     Attrib V56    0.074137393799918
#>     Attrib V57    0.08981850477424437
#>     Attrib V58    0.046795222596039514
#>     Attrib V59    -1.672147038829202E-4
#>     Attrib V6    0.06128560388103203
#>     Attrib V60    0.037137440079930174
#>     Attrib V7    -0.012195818933114881
#>     Attrib V8    0.06779026032741513
#>     Attrib V9    0.07838555262313106
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.18918036390504472
#>     Attrib V1    0.044518627604925594
#>     Attrib V10    0.08760089903074351
#>     Attrib V11    0.0293516735247357
#>     Attrib V12    0.008788893298598086
#>     Attrib V13    0.03387485012852691
#>     Attrib V14    0.05788721573804877
#>     Attrib V15    -0.0033770279542119264
#>     Attrib V16    0.05872612313782389
#>     Attrib V17    0.04051909445827763
#>     Attrib V18    0.08362763756693
#>     Attrib V19    -0.03133614273580038
#>     Attrib V2    0.06762009046221935
#>     Attrib V20    0.012115123772434637
#>     Attrib V21    0.016988599978997033
#>     Attrib V22    -0.004446666027441639
#>     Attrib V23    0.00672766816704573
#>     Attrib V24    -0.08054060556590953
#>     Attrib V25    -0.0018583224518035199
#>     Attrib V26    0.008464338335394488
#>     Attrib V27    -0.0194485664328122
#>     Attrib V28    -0.03251305022082621
#>     Attrib V29    -0.04954103073112121
#>     Attrib V3    0.17523295354501267
#>     Attrib V30    -0.0986956740403174
#>     Attrib V31    0.007830336379247538
#>     Attrib V32    -0.04497444584496765
#>     Attrib V33    -0.029034804004984226
#>     Attrib V34    0.030075506235395642
#>     Attrib V35    0.01415717441361318
#>     Attrib V36    0.14410575494656805
#>     Attrib V37    0.06872515514100486
#>     Attrib V38    0.01803750689272686
#>     Attrib V39    0.08885049920518423
#>     Attrib V4    0.09004451785028354
#>     Attrib V40    0.06472965685869571
#>     Attrib V41    0.03712171148324643
#>     Attrib V42    0.03984208492590952
#>     Attrib V43    -0.01705753829828125
#>     Attrib V44    0.0154395468428236
#>     Attrib V45    -0.06068098889779713
#>     Attrib V46    -0.010777635296139173
#>     Attrib V47    0.08415019643695487
#>     Attrib V48    0.030979756622149156
#>     Attrib V49    0.058856162098905415
#>     Attrib V5    0.12503561078279635
#>     Attrib V50    0.06615301587858972
#>     Attrib V51    0.1407945388828156
#>     Attrib V52    0.04802166884644737
#>     Attrib V53    0.020347508296996372
#>     Attrib V54    -0.01853682597016879
#>     Attrib V55    0.08311838712850309
#>     Attrib V56    0.06729450633717778
#>     Attrib V57    0.024724958365045617
#>     Attrib V58    0.05364298604694139
#>     Attrib V59    0.06686502173586102
#>     Attrib V6    0.0985181347471238
#>     Attrib V60    0.10304233395329468
#>     Attrib V7    0.10906631364931733
#>     Attrib V8    0.1324204619004316
#>     Attrib V9    0.049409964583477656
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.015534664992252669
#>     Attrib V1    0.6450472038222963
#>     Attrib V10    0.7302035087231195
#>     Attrib V11    1.0809247694223512
#>     Attrib V12    0.8836619228799462
#>     Attrib V13    0.6016591352388337
#>     Attrib V14    -0.008782859134204728
#>     Attrib V15    -0.03866804659075253
#>     Attrib V16    -0.6393096559605769
#>     Attrib V17    -0.8356661838794792
#>     Attrib V18    -0.5343889339550428
#>     Attrib V19    -0.3224940163895116
#>     Attrib V2    0.8227113669532127
#>     Attrib V20    -0.297385435312984
#>     Attrib V21    -0.10096697798977051
#>     Attrib V22    0.21490333595722366
#>     Attrib V23    0.2630371145684664
#>     Attrib V24    0.40792771626737867
#>     Attrib V25    0.2006841294274733
#>     Attrib V26    0.6146368610756848
#>     Attrib V27    1.1279547350622163
#>     Attrib V28    1.0931619470928273
#>     Attrib V29    0.9913351137546956
#>     Attrib V3    -0.12083340958856
#>     Attrib V30    0.5646583718175798
#>     Attrib V31    -0.6931009981259818
#>     Attrib V32    -0.01324006553113312
#>     Attrib V33    -0.027351715696851627
#>     Attrib V34    -0.07661241360912283
#>     Attrib V35    0.0904337770180107
#>     Attrib V36    -0.7514730661453664
#>     Attrib V37    -0.19723953208126718
#>     Attrib V38    -0.010845572737577774
#>     Attrib V39    0.38433452443837685
#>     Attrib V4    0.0726884974730928
#>     Attrib V40    0.5080901396384501
#>     Attrib V41    0.5412833608942624
#>     Attrib V42    0.09613987205265119
#>     Attrib V43    0.004846371319814921
#>     Attrib V44    0.026201371285934083
#>     Attrib V45    0.5709983701893278
#>     Attrib V46    0.8447166589571015
#>     Attrib V47    0.47616776450447923
#>     Attrib V48    0.28446292120329525
#>     Attrib V49    0.39700615369041353
#>     Attrib V5    0.5274004466482655
#>     Attrib V50    -0.6301539239739716
#>     Attrib V51    0.2094705152751173
#>     Attrib V52    0.47143716806033764
#>     Attrib V53    0.8483830279268041
#>     Attrib V54    0.10931885698081516
#>     Attrib V55    -0.41348251315786094
#>     Attrib V56    -0.3773986953900481
#>     Attrib V57    -0.3180267189217221
#>     Attrib V58    0.17958488023044705
#>     Attrib V59    -0.3741016820875591
#>     Attrib V6    0.1576587495052225
#>     Attrib V60    0.16108646442441177
#>     Attrib V7    -0.07751170798472919
#>     Attrib V8    -0.27765989154744414
#>     Attrib V9    0.8276278194182395
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    -0.22111116462985614
#>     Attrib V1    0.20267566820160887
#>     Attrib V10    -0.06882218049293247
#>     Attrib V11    0.14011304776872563
#>     Attrib V12    -0.0016808653850603364
#>     Attrib V13    -0.10111318758538673
#>     Attrib V14    -0.28270580499287373
#>     Attrib V15    0.1687290432280997
#>     Attrib V16    -0.13874703101590738
#>     Attrib V17    -0.09670568086548045
#>     Attrib V18    0.09169162749558551
#>     Attrib V19    0.2030498141295707
#>     Attrib V2    0.26522725657343915
#>     Attrib V20    0.19169735683089964
#>     Attrib V21    0.397149195130707
#>     Attrib V22    0.2877830990365876
#>     Attrib V23    0.3073977495812592
#>     Attrib V24    0.5240616069549571
#>     Attrib V25    -0.1105720481236417
#>     Attrib V26    -0.3840003938968649
#>     Attrib V27    -0.14633483350749454
#>     Attrib V28    -0.40096181893745264
#>     Attrib V29    -0.2491269117159699
#>     Attrib V3    -0.31875460523336335
#>     Attrib V30    0.22944862171784988
#>     Attrib V31    -0.9960073178022719
#>     Attrib V32    -0.07659072101164924
#>     Attrib V33    0.20378067793500174
#>     Attrib V34    -0.06495444404974739
#>     Attrib V35    0.09466683304955278
#>     Attrib V36    -0.2637045553333166
#>     Attrib V37    -0.32541970366367673
#>     Attrib V38    0.2530294154921229
#>     Attrib V39    -0.05134003319647552
#>     Attrib V4    0.02321539933433972
#>     Attrib V40    -0.4674672227771044
#>     Attrib V41    -0.20553836623125302
#>     Attrib V42    0.22435351762907974
#>     Attrib V43    0.5126022486995411
#>     Attrib V44    0.7313588780922801
#>     Attrib V45    0.7459606758585952
#>     Attrib V46    0.3913106360023154
#>     Attrib V47    -0.0434082822747296
#>     Attrib V48    0.23552210373988913
#>     Attrib V49    0.23485368730745157
#>     Attrib V5    0.12110440211933578
#>     Attrib V50    -0.631219617583381
#>     Attrib V51    -0.036099884743488735
#>     Attrib V52    0.04967105502654552
#>     Attrib V53    0.37006719054942416
#>     Attrib V54    0.44682581905137264
#>     Attrib V55    -0.010801392374038507
#>     Attrib V56    0.03459743495233343
#>     Attrib V57    -0.2950385077272759
#>     Attrib V58    0.3311724032456768
#>     Attrib V59    -0.03503330620172217
#>     Attrib V6    -0.4201182576848873
#>     Attrib V60    -0.3182486652030316
#>     Attrib V7    -0.21415482997253144
#>     Attrib V8    -0.43936405280234425
#>     Attrib V9    0.3750457132301955
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.39495861326587006
#>     Attrib V1    -0.4433577838252241
#>     Attrib V10    0.19172641936673596
#>     Attrib V11    -0.26793920888024475
#>     Attrib V12    0.13738642028386186
#>     Attrib V13    0.12924105153566198
#>     Attrib V14    0.33392163754124393
#>     Attrib V15    -0.39916177562878663
#>     Attrib V16    0.26255363506676105
#>     Attrib V17    0.33174628011213303
#>     Attrib V18    0.059619174994731135
#>     Attrib V19    -0.26917895531098707
#>     Attrib V2    -0.5154832105888891
#>     Attrib V20    -0.30932635241655865
#>     Attrib V21    -0.5431500538115213
#>     Attrib V22    -0.30911008177442284
#>     Attrib V23    -0.3799789840716097
#>     Attrib V24    -0.982820441932937
#>     Attrib V25    0.19715573272814366
#>     Attrib V26    0.9352237117286057
#>     Attrib V27    0.46667087346023306
#>     Attrib V28    0.621586920272149
#>     Attrib V29    0.47365229651472385
#>     Attrib V3    0.41696094344515805
#>     Attrib V30    -0.2612065264051846
#>     Attrib V31    1.9970955771411039
#>     Attrib V32    -0.043405954655803776
#>     Attrib V33    -0.6043447555659599
#>     Attrib V34    0.09128123129105674
#>     Attrib V35    0.18547802139478278
#>     Attrib V36    1.0022670630483843
#>     Attrib V37    1.2186089501478232
#>     Attrib V38    -0.25538525723622896
#>     Attrib V39    0.0637363899203657
#>     Attrib V4    -0.013658603937994809
#>     Attrib V40    0.8428761536493964
#>     Attrib V41    0.34399109232635083
#>     Attrib V42    -0.6911257887499832
#>     Attrib V43    -0.6483826665216972
#>     Attrib V44    -0.8337691803717435
#>     Attrib V45    -1.1841491983205266
#>     Attrib V46    -0.6850864602676894
#>     Attrib V47    -0.022160925120115624
#>     Attrib V48    -0.5630122997296922
#>     Attrib V49    -0.5933431442341924
#>     Attrib V5    -0.05324948630323559
#>     Attrib V50    1.2584854915250645
#>     Attrib V51    0.2136624368022788
#>     Attrib V52    0.11937650262992969
#>     Attrib V53    -0.7295726631746506
#>     Attrib V54    -0.7200935316396769
#>     Attrib V55    -0.07526011209462093
#>     Attrib V56    -0.05559643830972166
#>     Attrib V57    0.255990195712265
#>     Attrib V58    -0.7087429340722745
#>     Attrib V59    -0.14072193467717675
#>     Attrib V6    0.7629851577778864
#>     Attrib V60    0.590001457892498
#>     Attrib V7    0.3867503274707421
#>     Attrib V8    0.6153985425688832
#>     Attrib V9    -0.570498950685953
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.13388823021759924
#>     Attrib V1    0.16671633631173297
#>     Attrib V10    -0.025337740097091124
#>     Attrib V11    0.07341080703801785
#>     Attrib V12    0.03533862558290524
#>     Attrib V13    -0.02788425381285729
#>     Attrib V14    -0.008144422152664664
#>     Attrib V15    0.035571241460509814
#>     Attrib V16    0.03700859243848159
#>     Attrib V17    -0.008363390773551988
#>     Attrib V18    -0.014662215994578358
#>     Attrib V19    -0.03839327412654593
#>     Attrib V2    0.15400437352884616
#>     Attrib V20    -0.019482475015771952
#>     Attrib V21    -0.04286874465006584
#>     Attrib V22    -0.12092810642495236
#>     Attrib V23    -0.09103511421991484
#>     Attrib V24    0.10585102453378366
#>     Attrib V25    -0.06311571781859009
#>     Attrib V26    -0.1513302479649625
#>     Attrib V27    -0.09964855391033411
#>     Attrib V28    -0.1774633152241252
#>     Attrib V29    -0.06373069440210485
#>     Attrib V3    -0.010836269091740734
#>     Attrib V30    0.042134186645510635
#>     Attrib V31    -0.15411455552415648
#>     Attrib V32    0.02788733345766517
#>     Attrib V33    0.05666306908812932
#>     Attrib V34    0.029907734797492345
#>     Attrib V35    0.0676662698561634
#>     Attrib V36    -0.06364623408422751
#>     Attrib V37    -0.09842537992383844
#>     Attrib V38    0.02109496992109067
#>     Attrib V39    -0.02040779042768938
#>     Attrib V4    0.07476637526852055
#>     Attrib V40    -0.0755950164190768
#>     Attrib V41    -0.09716681516953389
#>     Attrib V42    0.058141000061501406
#>     Attrib V43    0.17062100354574036
#>     Attrib V44    0.13900723460739098
#>     Attrib V45    0.12787599723350435
#>     Attrib V46    0.13118000303415003
#>     Attrib V47    -0.04031599382268378
#>     Attrib V48    0.10707793795472377
#>     Attrib V49    0.08341930885613924
#>     Attrib V5    0.08833664998430486
#>     Attrib V50    -0.12425023316185789
#>     Attrib V51    -0.027774458838761826
#>     Attrib V52    0.07712279976839256
#>     Attrib V53    0.1421915912268829
#>     Attrib V54    0.16360453124590413
#>     Attrib V55    0.1180262630164407
#>     Attrib V56    0.10889364781972714
#>     Attrib V57    0.055353658094146364
#>     Attrib V58    0.19552233054710474
#>     Attrib V59    0.07970295344400308
#>     Attrib V6    -0.09331762307574526
#>     Attrib V60    0.0073113628799950795
#>     Attrib V7    -0.07524549289316952
#>     Attrib V8    -0.1239620597937229
#>     Attrib V9    0.10543980008183156
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.33378391432928367
#>     Attrib V1    0.20678824253618053
#>     Attrib V10    -0.32896664918291507
#>     Attrib V11    -0.028021217610809085
#>     Attrib V12    -0.21400366170805543
#>     Attrib V13    -0.22202043292070683
#>     Attrib V14    -0.2924677126326887
#>     Attrib V15    0.2695482926658018
#>     Attrib V16    -0.0691574549789944
#>     Attrib V17    -0.012102322122013006
#>     Attrib V18    0.09470527405961317
#>     Attrib V19    0.23183345611760395
#>     Attrib V2    0.20504544202618727
#>     Attrib V20    0.2355371972361814
#>     Attrib V21    0.44646000076786024
#>     Attrib V22    0.24065840554614024
#>     Attrib V23    0.2482049643265912
#>     Attrib V24    0.5311439245317716
#>     Attrib V25    -0.20677319499871788
#>     Attrib V26    -0.6313963548322452
#>     Attrib V27    -0.44067970427729003
#>     Attrib V28    -0.6196499173803147
#>     Attrib V29    -0.44350398818150755
#>     Attrib V3    -0.251122302318586
#>     Attrib V30    0.18019406570895166
#>     Attrib V31    -1.289738635951061
#>     Attrib V32    -0.12058659452952712
#>     Attrib V33    0.2899003757585811
#>     Attrib V34    -0.10189483136480434
#>     Attrib V35    0.03941225823756088
#>     Attrib V36    -0.40549420950095943
#>     Attrib V37    -0.5617704953601714
#>     Attrib V38    0.2436102073390762
#>     Attrib V39    -0.09316246619133255
#>     Attrib V4    0.13236387030100694
#>     Attrib V40    -0.7311699048901031
#>     Attrib V41    -0.35825896639889654
#>     Attrib V42    0.3768056673768758
#>     Attrib V43    0.5830809971360742
#>     Attrib V44    0.7750472352776882
#>     Attrib V45    0.8988831368557653
#>     Attrib V46    0.4436619058578142
#>     Attrib V47    -0.04532863919404249
#>     Attrib V48    0.21054583340320943
#>     Attrib V49    0.28188210016699594
#>     Attrib V5    0.017578087044338754
#>     Attrib V50    -0.7166875486712911
#>     Attrib V51    -0.1522765690070587
#>     Attrib V52    0.018563440887755713
#>     Attrib V53    0.47705373390456846
#>     Attrib V54    0.6073997395373346
#>     Attrib V55    0.13501896028807706
#>     Attrib V56    0.06407934872751082
#>     Attrib V57    -0.1729557448237095
#>     Attrib V58    0.4689377262383833
#>     Attrib V59    0.16653351013631662
#>     Attrib V6    -0.5654525361209458
#>     Attrib V60    -0.37629982193181233
#>     Attrib V7    -0.28077387872928644
#>     Attrib V8    -0.420771544365459
#>     Attrib V9    0.30005892723459027
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    0.003703831098912587
#>     Attrib V1    -0.14930188697297114
#>     Attrib V10    -0.01360401818744602
#>     Attrib V11    -0.29247981118411887
#>     Attrib V12    -0.14626754540230463
#>     Attrib V13    -0.07759581251837802
#>     Attrib V14    0.21564463348117918
#>     Attrib V15    -0.11732764567522729
#>     Attrib V16    0.25814251586771914
#>     Attrib V17    0.41600525546629186
#>     Attrib V18    0.1546580836708252
#>     Attrib V19    0.026771787907276322
#>     Attrib V2    -0.33719864979535813
#>     Attrib V20    0.0870477720259371
#>     Attrib V21    -0.04088097584419687
#>     Attrib V22    -0.06494330701686711
#>     Attrib V23    -0.1381245525514393
#>     Attrib V24    -0.5481427584041714
#>     Attrib V25    0.1539278212311355
#>     Attrib V26    0.4256390707589742
#>     Attrib V27    -0.00464529874237373
#>     Attrib V28    0.1829288746086206
#>     Attrib V29    0.07741769869393449
#>     Attrib V3    0.32947915024257446
#>     Attrib V30    -0.30569911401652566
#>     Attrib V31    0.8426767866814138
#>     Attrib V32    -0.19086173101738588
#>     Attrib V33    -0.45216402071693595
#>     Attrib V34    -0.0755217731779468
#>     Attrib V35    -0.005682887163462348
#>     Attrib V36    0.6672262862190754
#>     Attrib V37    0.5150348118050087
#>     Attrib V38    -0.060025246747156424
#>     Attrib V39    0.013244237255160208
#>     Attrib V4    0.15763331092704722
#>     Attrib V40    0.28436872300315846
#>     Attrib V41    0.024338615722555485
#>     Attrib V42    -0.33520821739919315
#>     Attrib V43    -0.35990007479153246
#>     Attrib V44    -0.45241975518189165
#>     Attrib V45    -0.6767502474956424
#>     Attrib V46    -0.4173322951566847
#>     Attrib V47    0.046374526818906046
#>     Attrib V48    -0.2635470451215527
#>     Attrib V49    -0.29293702991111
#>     Attrib V5    -0.056499042804854044
#>     Attrib V50    0.8819620712231832
#>     Attrib V51    0.20946993055095686
#>     Attrib V52    0.08108744195626483
#>     Attrib V53    -0.4708099287696242
#>     Attrib V54    -0.30282307949228543
#>     Attrib V55    0.1296385205543829
#>     Attrib V56    0.07671277839805538
#>     Attrib V57    0.30730308104673165
#>     Attrib V58    -0.22292253350137062
#>     Attrib V59    0.16061288140791405
#>     Attrib V6    0.4652813326668393
#>     Attrib V60    0.24570088481280317
#>     Attrib V7    0.2491399328339629
#>     Attrib V8    0.4161852251529954
#>     Attrib V9    -0.37085517603193013
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.19775582171364994
#>     Attrib V1    0.7830644177830508
#>     Attrib V10    1.055309420343823
#>     Attrib V11    1.3975955745598856
#>     Attrib V12    1.075027813395719
#>     Attrib V13    0.7732565605708124
#>     Attrib V14    -0.10115506303851148
#>     Attrib V15    -0.23910087286022455
#>     Attrib V16    -0.8447574577230564
#>     Attrib V17    -1.0420536347733595
#>     Attrib V18    -0.40027001227313447
#>     Attrib V19    -0.166476403161747
#>     Attrib V2    1.0695232830619055
#>     Attrib V20    -0.06871632895592514
#>     Attrib V21    0.24673383332962293
#>     Attrib V22    0.8349972699927168
#>     Attrib V23    0.8855727278518218
#>     Attrib V24    0.7350059493919716
#>     Attrib V25    0.34496059664632756
#>     Attrib V26    1.0890556749245839
#>     Attrib V27    1.6925874286313074
#>     Attrib V28    1.5645932271922038
#>     Attrib V29    1.471730383943309
#>     Attrib V3    -0.21609229933230326
#>     Attrib V30    0.5977462899502315
#>     Attrib V31    -1.2103631504613774
#>     Attrib V32    -0.16423336250804682
#>     Attrib V33    -0.27310034600796923
#>     Attrib V34    -0.12537439645377224
#>     Attrib V35    0.14227669484174557
#>     Attrib V36    -1.0915542043723945
#>     Attrib V37    -0.180187559895352
#>     Attrib V38    -0.045935488320543436
#>     Attrib V39    0.777075442479133
#>     Attrib V4    -0.1471785775080675
#>     Attrib V40    1.0538588620412432
#>     Attrib V41    1.096052798790854
#>     Attrib V42    0.12466404396463159
#>     Attrib V43    -0.16008275582223216
#>     Attrib V44    -0.0013490343811580635
#>     Attrib V45    0.6756090711948198
#>     Attrib V46    1.2695111179527434
#>     Attrib V47    0.8915247189661876
#>     Attrib V48    0.4336591773746888
#>     Attrib V49    0.6112333345977117
#>     Attrib V5    0.7135196817036831
#>     Attrib V50    -0.6629487137193926
#>     Attrib V51    0.5568847180240027
#>     Attrib V52    0.8144630310999456
#>     Attrib V53    1.364835351910218
#>     Attrib V54    0.25816975508149076
#>     Attrib V55    -0.9032033313367556
#>     Attrib V56    -0.6018215819974053
#>     Attrib V57    -0.703576746592163
#>     Attrib V58    -0.04179549298003968
#>     Attrib V59    -0.7710516595334359
#>     Attrib V6    0.4406384234975249
#>     Attrib V60    0.3615192820016492
#>     Attrib V7    -0.045613221128558715
#>     Attrib V8    -0.5086752287570814
#>     Attrib V9    1.1251764534111461
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.07043415153688361
#>     Attrib V1    -0.12961843139814094
#>     Attrib V10    -0.04322173667067235
#>     Attrib V11    -0.3177566409421662
#>     Attrib V12    -0.16498786231017742
#>     Attrib V13    -0.10005306180662758
#>     Attrib V14    0.2137598360471419
#>     Attrib V15    -0.14352221816528613
#>     Attrib V16    0.19276416899082818
#>     Attrib V17    0.28239024523773554
#>     Attrib V18    0.08990871068970849
#>     Attrib V19    0.08376983651079338
#>     Attrib V2    -0.2488128033941129
#>     Attrib V20    0.09563322085239143
#>     Attrib V21    0.00982941916625352
#>     Attrib V22    -0.010679548839170518
#>     Attrib V23    -0.11682800471710303
#>     Attrib V24    -0.4074509970611288
#>     Attrib V25    0.12600847089136155
#>     Attrib V26    0.2534346925521565
#>     Attrib V27    0.021988448819658446
#>     Attrib V28    0.14519929477353716
#>     Attrib V29    0.10189771550659942
#>     Attrib V3    0.23553739126183101
#>     Attrib V30    -0.208477363179014
#>     Attrib V31    0.6321571597920054
#>     Attrib V32    -0.19153000745950838
#>     Attrib V33    -0.27795147362831263
#>     Attrib V34    -0.0965559819618308
#>     Attrib V35    0.041617323568757525
#>     Attrib V36    0.5724319444850806
#>     Attrib V37    0.4851256108314672
#>     Attrib V38    -0.035008828721800486
#>     Attrib V39    0.046865224981329376
#>     Attrib V4    0.1360854705369714
#>     Attrib V40    0.1961355038862419
#>     Attrib V41    -0.0015394919150942986
#>     Attrib V42    -0.16831323090196976
#>     Attrib V43    -0.27779777108780973
#>     Attrib V44    -0.3030508667067838
#>     Attrib V45    -0.4871801089072909
#>     Attrib V46    -0.38436844430984296
#>     Attrib V47    -0.048418263949223106
#>     Attrib V48    -0.17088794107129515
#>     Attrib V49    -0.2174853812859734
#>     Attrib V5    -0.09000321877705804
#>     Attrib V50    0.6607588007613259
#>     Attrib V51    0.10264285494813069
#>     Attrib V52    -0.024603080019688313
#>     Attrib V53    -0.36079593960077294
#>     Attrib V54    -0.21002124946730225
#>     Attrib V55    0.07427815498443473
#>     Attrib V56    0.0586059263781686
#>     Attrib V57    0.2233722787641489
#>     Attrib V58    -0.18654543991000527
#>     Attrib V59    0.15738635617381191
#>     Attrib V6    0.3357766223533241
#>     Attrib V60    0.2672383352039359
#>     Attrib V7    0.177590855820348
#>     Attrib V8    0.33253616645890444
#>     Attrib V9    -0.3734806685841716
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.09183786262258328
#>     Attrib V1    0.49761459786068796
#>     Attrib V10    0.4766164618995462
#>     Attrib V11    0.7483765841969181
#>     Attrib V12    0.4071933457268666
#>     Attrib V13    0.2270047126671255
#>     Attrib V14    -0.32098592170121487
#>     Attrib V15    -0.06570969697465484
#>     Attrib V16    -0.40509960485346475
#>     Attrib V17    -0.5171581432609987
#>     Attrib V18    -0.21641718401983231
#>     Attrib V19    -0.13162071872822972
#>     Attrib V2    0.4615640876694376
#>     Attrib V20    -0.1260422326848211
#>     Attrib V21    0.14676502183575724
#>     Attrib V22    0.19526526926397533
#>     Attrib V23    0.20028879985888173
#>     Attrib V24    0.5026887919506308
#>     Attrib V25    0.194645904658987
#>     Attrib V26    0.38349800516453925
#>     Attrib V27    0.6144868588262601
#>     Attrib V28    0.4153710392596332
#>     Attrib V29    0.3383215716922959
#>     Attrib V3    -0.2822436835323165
#>     Attrib V30    0.41807536970982057
#>     Attrib V31    -0.6719210694977427
#>     Attrib V32    0.0024939036766059844
#>     Attrib V33    0.015048666311069547
#>     Attrib V34    -0.009746277855185888
#>     Attrib V35    0.09199532455048968
#>     Attrib V36    -0.5300538186456687
#>     Attrib V37    -0.2997137279793439
#>     Attrib V38    2.5746193151541017E-4
#>     Attrib V39    0.15035860397687875
#>     Attrib V4    -0.06917811494758745
#>     Attrib V40    -0.05000073914877194
#>     Attrib V41    0.12146974207884563
#>     Attrib V42    0.03196989339064871
#>     Attrib V43    0.17083686843114174
#>     Attrib V44    0.38879155570880847
#>     Attrib V45    0.6598899673886932
#>     Attrib V46    0.6185400150448591
#>     Attrib V47    0.31413814067121915
#>     Attrib V48    0.3178355421101598
#>     Attrib V49    0.2603078380116501
#>     Attrib V5    0.257292219702069
#>     Attrib V50    -0.491768793357888
#>     Attrib V51    0.02636435992755724
#>     Attrib V52    0.17141575319286756
#>     Attrib V53    0.570599335987668
#>     Attrib V54    0.20417129775790901
#>     Attrib V55    -0.3622204042356132
#>     Attrib V56    -0.369718769745443
#>     Attrib V57    -0.25752316184648794
#>     Attrib V58    0.15609437719435137
#>     Attrib V59    -0.31468714067918097
#>     Attrib V6    -0.08746954969238764
#>     Attrib V60    -0.1642315869647009
#>     Attrib V7    -0.1603900405058641
#>     Attrib V8    -0.28480906971191317
#>     Attrib V9    0.669061089628571
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.05471746841375687
#>     Attrib V1    -0.42439350303535395
#>     Attrib V10    -0.4757351763399336
#>     Attrib V11    -1.0848076629331511
#>     Attrib V12    -0.6796393529192833
#>     Attrib V13    -0.5002330385238805
#>     Attrib V14    0.14412822293701325
#>     Attrib V15    -0.4036387800129927
#>     Attrib V16    0.3057442410668494
#>     Attrib V17    0.3245162554179959
#>     Attrib V18    0.1495103811421571
#>     Attrib V19    -0.23000326104815721
#>     Attrib V2    -0.5366347097298817
#>     Attrib V20    -0.15337244962819555
#>     Attrib V21    -0.3335158421095062
#>     Attrib V22    -0.3258107279457729
#>     Attrib V23    -0.2952103621490058
#>     Attrib V24    -0.6917711771643255
#>     Attrib V25    0.260608308214139
#>     Attrib V26    0.6638801730135896
#>     Attrib V27    0.24284239817032183
#>     Attrib V28    0.5187419050733965
#>     Attrib V29    0.49801515274798647
#>     Attrib V3    0.52409788352187
#>     Attrib V30    -0.2175028807431576
#>     Attrib V31    1.5001261462172626
#>     Attrib V32    -0.08508671466743623
#>     Attrib V33    -0.7098990402583452
#>     Attrib V34    -0.0020106141040526168
#>     Attrib V35    0.5438117695238512
#>     Attrib V36    1.7548808526373638
#>     Attrib V37    1.635666649723531
#>     Attrib V38    0.27055403940866135
#>     Attrib V39    0.04997491411927133
#>     Attrib V4    0.12801483821957566
#>     Attrib V40    0.3535001959234945
#>     Attrib V41    -0.06399008194890722
#>     Attrib V42    -0.4803872529784358
#>     Attrib V43    -0.36575646798170625
#>     Attrib V44    -0.012615290012073278
#>     Attrib V45    -0.6097390451307269
#>     Attrib V46    -0.6514981774873335
#>     Attrib V47    -0.10927729207502575
#>     Attrib V48    -0.4510109618894987
#>     Attrib V49    -0.416059353055711
#>     Attrib V5    -0.5837901392076946
#>     Attrib V50    1.5178157468588798
#>     Attrib V51    0.1546529841620726
#>     Attrib V52    0.28327520334756684
#>     Attrib V53    -0.5993491440464274
#>     Attrib V54    -0.42807472106208844
#>     Attrib V55    0.03170550664211675
#>     Attrib V56    0.44598852666179933
#>     Attrib V57    0.2199500753866257
#>     Attrib V58    -0.3892529609932844
#>     Attrib V59    0.010841139099882808
#>     Attrib V6    0.4603481161904899
#>     Attrib V60    0.44261772252526926
#>     Attrib V7    0.29239152533308604
#>     Attrib V8    0.5424352240701845
#>     Attrib V9    -0.8646563035789372
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.12353844778190191
#>     Attrib V1    0.12333294901080952
#>     Attrib V10    -0.07581477515013725
#>     Attrib V11    0.24330703797219427
#>     Attrib V12    0.07356669912952639
#>     Attrib V13    -0.02001077781516881
#>     Attrib V14    -0.17531728159144086
#>     Attrib V15    0.18579505039174177
#>     Attrib V16    -0.15052591062596254
#>     Attrib V17    -0.18563205993641735
#>     Attrib V18    -0.026240973933849086
#>     Attrib V19    0.035662237499341026
#>     Attrib V2    0.25978061500167243
#>     Attrib V20    0.10524224011861287
#>     Attrib V21    0.2564682632001756
#>     Attrib V22    0.18304174007482552
#>     Attrib V23    0.16916485973749787
#>     Attrib V24    0.5232854485954996
#>     Attrib V25    -0.0349574226343147
#>     Attrib V26    -0.392856862919917
#>     Attrib V27    -0.10909035982934402
#>     Attrib V28    -0.2498254392076649
#>     Attrib V29    -0.12855299810441062
#>     Attrib V3    -0.23649836901135185
#>     Attrib V30    0.17663669097051843
#>     Attrib V31    -0.8421549437665842
#>     Attrib V32    0.04370422683147336
#>     Attrib V33    0.23966621658885504
#>     Attrib V34    -0.011255725778871194
#>     Attrib V35    0.06001890847022227
#>     Attrib V36    -0.41850842740602207
#>     Attrib V37    -0.3799738032032402
#>     Attrib V38    0.1258032726958337
#>     Attrib V39    -0.030106503892740295
#>     Attrib V4    -0.04743315147838646
#>     Attrib V40    -0.37890828687352546
#>     Attrib V41    -0.14828294640382728
#>     Attrib V42    0.19761175024355812
#>     Attrib V43    0.4427960466794121
#>     Attrib V44    0.46426116591520117
#>     Attrib V45    0.6438958583077923
#>     Attrib V46    0.37454882758403857
#>     Attrib V47    0.010779964875376738
#>     Attrib V48    0.20877995543783015
#>     Attrib V49    0.19273983847674778
#>     Attrib V5    0.02579652680136209
#>     Attrib V50    -0.6017065219872781
#>     Attrib V51    -0.11085579753212194
#>     Attrib V52    0.05875989597558896
#>     Attrib V53    0.37759088599660323
#>     Attrib V54    0.33923932648639876
#>     Attrib V55    0.005928200460860782
#>     Attrib V56    0.016038197588510845
#>     Attrib V57    -0.198226001190242
#>     Attrib V58    0.24269571429595646
#>     Attrib V59    -0.07433709241530648
#>     Attrib V6    -0.3943939826489521
#>     Attrib V60    -0.2803116926406289
#>     Attrib V7    -0.2728983286128672
#>     Attrib V8    -0.350941988079229
#>     Attrib V9    0.342521055988588
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.10697174297294294
#>     Attrib V1    0.03057206651505604
#>     Attrib V10    0.21955113512134766
#>     Attrib V11    0.057902178290334186
#>     Attrib V12    0.05939994940973437
#>     Attrib V13    0.13339528929673716
#>     Attrib V14    0.1739725324582819
#>     Attrib V15    0.11844794202520935
#>     Attrib V16    0.3019983540389447
#>     Attrib V17    0.413449070349252
#>     Attrib V18    0.24718127410020446
#>     Attrib V19    0.09773486008043579
#>     Attrib V2    0.020801697428341266
#>     Attrib V20    0.045209452490100784
#>     Attrib V21    0.09973727814134241
#>     Attrib V22    0.10726458806809289
#>     Attrib V23    -0.062396821311791445
#>     Attrib V24    -0.2686226304615777
#>     Attrib V25    0.07422936717566665
#>     Attrib V26    0.16050101157290506
#>     Attrib V27    -0.017544363827830502
#>     Attrib V28    -0.0046876807852472705
#>     Attrib V29    -0.11311076215910222
#>     Attrib V3    0.1828879838875687
#>     Attrib V30    -0.14283236007943337
#>     Attrib V31    0.2991375788767979
#>     Attrib V32    -0.17363657038360586
#>     Attrib V33    -0.20113619736312457
#>     Attrib V34    -0.07177585997008806
#>     Attrib V35    0.011658945875798512
#>     Attrib V36    0.19629741798859338
#>     Attrib V37    0.2552658911555999
#>     Attrib V38    -0.08863115436053891
#>     Attrib V39    0.06605360734611337
#>     Attrib V4    0.16551863892010224
#>     Attrib V40    0.17981178874328396
#>     Attrib V41    0.1141491551404027
#>     Attrib V42    -0.00958127989353065
#>     Attrib V43    -0.18209211235060843
#>     Attrib V44    -0.23926057626876301
#>     Attrib V45    -0.2119896252437884
#>     Attrib V46    -0.09759522950599746
#>     Attrib V47    0.06525672684913707
#>     Attrib V48    0.029618047554566793
#>     Attrib V49    -0.028667720340539073
#>     Attrib V5    0.10803203140818389
#>     Attrib V50    0.2865572750004099
#>     Attrib V51    0.0871704257375192
#>     Attrib V52    -0.044486048732636604
#>     Attrib V53    -0.15242343192630078
#>     Attrib V54    -0.07707928037761712
#>     Attrib V55    0.038423567903147555
#>     Attrib V56    0.04113321516077634
#>     Attrib V57    0.13869011838259174
#>     Attrib V58    -0.009386371160140565
#>     Attrib V59    0.08977083667855003
#>     Attrib V6    0.29946718035377745
#>     Attrib V60    0.11770934056924513
#>     Attrib V7    0.12773801966007095
#>     Attrib V8    0.20528639075311508
#>     Attrib V9    -0.02124987216960109
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.24622023431174003
#>     Attrib V1    0.12232194243166242
#>     Attrib V10    -0.1878140884299004
#>     Attrib V11    -0.022628233924267743
#>     Attrib V12    -0.15502550612492166
#>     Attrib V13    -0.11086259067682555
#>     Attrib V14    -0.15174491991482503
#>     Attrib V15    0.20049878327640688
#>     Attrib V16    0.0298345895000518
#>     Attrib V17    0.04122547212906503
#>     Attrib V18    0.08581440912910018
#>     Attrib V19    0.10590864809074185
#>     Attrib V2    0.20600997066685625
#>     Attrib V20    0.13705850262220892
#>     Attrib V21    0.14841514560467803
#>     Attrib V22    0.09528320207155484
#>     Attrib V23    0.11162584208267294
#>     Attrib V24    0.34714460851682105
#>     Attrib V25    -0.10716258853074664
#>     Attrib V26    -0.37543470288841013
#>     Attrib V27    -0.35043000083262443
#>     Attrib V28    -0.5155768607396236
#>     Attrib V29    -0.4289294152237277
#>     Attrib V3    -0.1760737958598507
#>     Attrib V30    -0.00846185189848428
#>     Attrib V31    -0.5599398436000911
#>     Attrib V32    -0.01083287646489257
#>     Attrib V33    0.21992357191946274
#>     Attrib V34    0.06334339310537762
#>     Attrib V35    0.10502755214314727
#>     Attrib V36    -0.21794354746049005
#>     Attrib V37    -0.3135074751480875
#>     Attrib V38    0.1081846814037249
#>     Attrib V39    -0.11536773856469307
#>     Attrib V4    0.05516005829690059
#>     Attrib V40    -0.36296523355031063
#>     Attrib V41    -0.24456152881992207
#>     Attrib V42    0.14692377792543226
#>     Attrib V43    0.27652478604153324
#>     Attrib V44    0.3496932466411037
#>     Attrib V45    0.3395772601108339
#>     Attrib V46    0.17971277828447849
#>     Attrib V47    -0.07725328340578479
#>     Attrib V48    0.14023182916864277
#>     Attrib V49    0.1298061606444508
#>     Attrib V5    -0.026627933730152504
#>     Attrib V50    -0.34085605151265314
#>     Attrib V51    -0.09762434472324341
#>     Attrib V52    0.010956095519575654
#>     Attrib V53    0.29275559156066444
#>     Attrib V54    0.3817791792749236
#>     Attrib V55    0.15926340306527795
#>     Attrib V56    0.056392451920612686
#>     Attrib V57    -0.05170925614657968
#>     Attrib V58    0.21710010085831946
#>     Attrib V59    0.04283019877254862
#>     Attrib V6    -0.3285333196416235
#>     Attrib V60    -0.17916342897590481
#>     Attrib V7    -0.17094708984383467
#>     Attrib V8    -0.24064515820744284
#>     Attrib V9    0.1860064444895706
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.1484574574964145
#>     Attrib V1    0.08079379607911966
#>     Attrib V10    0.027237858132556268
#>     Attrib V11    0.046660972169206644
#>     Attrib V12    0.03601531425179089
#>     Attrib V13    0.003417842053082041
#>     Attrib V14    0.09109150055213643
#>     Attrib V15    0.04382855941638258
#>     Attrib V16    0.07895738265328593
#>     Attrib V17    0.04296344947264867
#>     Attrib V18    0.08522250507082031
#>     Attrib V19    -0.04276459673688955
#>     Attrib V2    0.048950547432595894
#>     Attrib V20    -0.013296786165703392
#>     Attrib V21    -0.01241424698964562
#>     Attrib V22    -0.02188415096305407
#>     Attrib V23    0.035833488773724415
#>     Attrib V24    -0.0395667798636072
#>     Attrib V25    -0.05072147400713887
#>     Attrib V26    -0.03950790849108726
#>     Attrib V27    -0.039461258408400424
#>     Attrib V28    5.88262874118343E-4
#>     Attrib V29    -0.03069171635068221
#>     Attrib V3    0.14443484116232147
#>     Attrib V30    -0.00752672061388637
#>     Attrib V31    -0.0031813924020913037
#>     Attrib V32    -0.04010862485556802
#>     Attrib V33    0.0035620667916179487
#>     Attrib V34    0.03163766947176545
#>     Attrib V35    0.07206970847781903
#>     Attrib V36    0.14610752198539798
#>     Attrib V37    0.09053950374904539
#>     Attrib V38    -0.003124309152125573
#>     Attrib V39    0.056550293588187306
#>     Attrib V4    0.095327178843394
#>     Attrib V40    0.05083959795362016
#>     Attrib V41    0.030720510763613342
#>     Attrib V42    0.05826835158253356
#>     Attrib V43    -0.04637763827713688
#>     Attrib V44    0.005651935160914398
#>     Attrib V45    0.017741210998038194
#>     Attrib V46    0.011808549577101738
#>     Attrib V47    0.0304756898426926
#>     Attrib V48    -0.005649296433860483
#>     Attrib V49    0.06789365820317526
#>     Attrib V5    0.1257561708030359
#>     Attrib V50    0.06437477957230454
#>     Attrib V51    0.09931104341481166
#>     Attrib V52    0.09655619792301236
#>     Attrib V53    0.04074564703293643
#>     Attrib V54    -0.01444298507617629
#>     Attrib V55    0.040918583986266216
#>     Attrib V56    0.04594429506307563
#>     Attrib V57    0.056352819116697817
#>     Attrib V58    0.10958326921648691
#>     Attrib V59    0.021549575444627166
#>     Attrib V6    0.15022464233645688
#>     Attrib V60    0.05614341446889864
#>     Attrib V7    0.08758113597429613
#>     Attrib V8    0.12843291653414296
#>     Attrib V9    0.07847564456787852
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
