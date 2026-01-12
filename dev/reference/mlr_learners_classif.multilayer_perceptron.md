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
#>     Threshold    -0.7115448700632906
#>     Node 2    1.7782558115655196
#>     Node 3    1.2467567439763518
#>     Node 4    1.0848375847048124
#>     Node 5    -3.0568731758084104
#>     Node 6    1.2070215054184001
#>     Node 7    3.519968561555259
#>     Node 8    1.22684787964334
#>     Node 9    3.6193622875416653
#>     Node 10    -2.1697546021940637
#>     Node 11    1.4735471785806198
#>     Node 12    1.9747187257221561
#>     Node 13    1.2783590801043194
#>     Node 14    1.8005407125112132
#>     Node 15    -1.6252423989793598
#>     Node 16    0.4724674593802708
#>     Node 17    0.4368641308561032
#>     Node 18    0.9141445990776963
#>     Node 19    2.248920316704988
#>     Node 20    1.496868115712709
#>     Node 21    -1.7869771588922923
#>     Node 22    0.9617522179181464
#>     Node 23    2.354777333087772
#>     Node 24    -0.2608393112995557
#>     Node 25    5.512050621819704
#>     Node 26    0.4195478145058164
#>     Node 27    1.949596743001896
#>     Node 28    -3.3469299195205937
#>     Node 29    1.0359030770994555
#>     Node 30    0.7330247848155775
#>     Node 31    0.48323186535869295
#>     Node 32    0.8099492131349881
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.731317296643149
#>     Node 2    -1.8255734629281017
#>     Node 3    -1.2370544506176653
#>     Node 4    -1.0565944290598288
#>     Node 5    3.0699461932277536
#>     Node 6    -1.1880068515466884
#>     Node 7    -3.509791479486475
#>     Node 8    -1.262573244691227
#>     Node 9    -3.61195965654276
#>     Node 10    2.114938209983088
#>     Node 11    -1.4394026541886304
#>     Node 12    -2.0408361155745554
#>     Node 13    -1.224659555539749
#>     Node 14    -1.7249422193098203
#>     Node 15    1.6135161921967172
#>     Node 16    -0.49157241007521874
#>     Node 17    -0.4047112316034884
#>     Node 18    -0.8812852322945965
#>     Node 19    -2.2498058352043038
#>     Node 20    -1.482586810035293
#>     Node 21    1.8405678411765332
#>     Node 22    -1.0194765677093154
#>     Node 23    -2.372861702724321
#>     Node 24    0.2522199468141651
#>     Node 25    -5.527656188524093
#>     Node 26    -0.5059636569149496
#>     Node 27    -1.9785081437719583
#>     Node 28    3.3213171642303867
#>     Node 29    -1.0796997827081267
#>     Node 30    -0.6624035872045845
#>     Node 31    -0.42845986994481855
#>     Node 32    -0.8358331951966141
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.14957255547762452
#>     Attrib V1    0.5142614231905274
#>     Attrib V10    -0.41895407289313447
#>     Attrib V11    0.06675994755357624
#>     Attrib V12    0.37835104504702916
#>     Attrib V13    -0.08613931486239836
#>     Attrib V14    -0.33778553256004507
#>     Attrib V15    -0.34981771282231894
#>     Attrib V16    -0.29440323868994733
#>     Attrib V17    0.01917655657414685
#>     Attrib V18    0.37173857142303113
#>     Attrib V19    0.11576350184548664
#>     Attrib V2    -0.09747351140768352
#>     Attrib V20    0.5252488734162721
#>     Attrib V21    0.3744978820946698
#>     Attrib V22    0.1673190101469038
#>     Attrib V23    0.28404798849445984
#>     Attrib V24    0.062110541013336754
#>     Attrib V25    -0.32792924881440494
#>     Attrib V26    -0.48474016615166443
#>     Attrib V27    -0.8812124015026312
#>     Attrib V28    -0.5353399689400962
#>     Attrib V29    -0.5508872642851144
#>     Attrib V3    0.3232685278996416
#>     Attrib V30    5.91192534496654E-4
#>     Attrib V31    -1.2827767298139283
#>     Attrib V32    -0.381741212824697
#>     Attrib V33    0.8242443824646349
#>     Attrib V34    0.3975320238913795
#>     Attrib V35    2.4347451509412318E-4
#>     Attrib V36    -0.7717022764925725
#>     Attrib V37    -1.1818793900612221
#>     Attrib V38    -0.35264015968376355
#>     Attrib V39    0.10124391033331254
#>     Attrib V4    0.04039286853452393
#>     Attrib V40    -0.4856409908642805
#>     Attrib V41    -0.23576487926152567
#>     Attrib V42    0.4033759560481972
#>     Attrib V43    0.3202601686139995
#>     Attrib V44    0.10510105726315293
#>     Attrib V45    0.26421570950313455
#>     Attrib V46    0.31388809939135076
#>     Attrib V47    0.07618108724013763
#>     Attrib V48    0.3480725230476692
#>     Attrib V49    0.3878426010944055
#>     Attrib V5    -0.0020854115543310296
#>     Attrib V50    -0.7026188386017848
#>     Attrib V51    -0.012847382588902211
#>     Attrib V52    0.2382649441315068
#>     Attrib V53    0.0989504040139592
#>     Attrib V54    0.46026827973817996
#>     Attrib V55    -0.30044515674134453
#>     Attrib V56    0.08821614251807829
#>     Attrib V57    0.11569414453946483
#>     Attrib V58    0.44605781951547324
#>     Attrib V59    0.7047900908864645
#>     Attrib V6    0.09743039163495733
#>     Attrib V60    0.6527401409310728
#>     Attrib V7    -0.24006834278536165
#>     Attrib V8    -0.017428076290277046
#>     Attrib V9    0.7056262033267249
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.19924080686089968
#>     Attrib V1    0.4796067294065479
#>     Attrib V10    -0.29144416929544353
#>     Attrib V11    0.01608024366745999
#>     Attrib V12    0.20162657362919223
#>     Attrib V13    -0.03839258450011668
#>     Attrib V14    -0.06899866723910102
#>     Attrib V15    0.01732128754058539
#>     Attrib V16    -0.14520573341054552
#>     Attrib V17    -0.11095776674530988
#>     Attrib V18    0.007861540627286131
#>     Attrib V19    -0.07736348758359221
#>     Attrib V2    0.026859332889744875
#>     Attrib V20    0.25025991833224215
#>     Attrib V21    0.18365240568924118
#>     Attrib V22    0.037814800111611105
#>     Attrib V23    0.004552757973102201
#>     Attrib V24    -0.1451745707892262
#>     Attrib V25    -0.37773258243040275
#>     Attrib V26    -0.4242629675700255
#>     Attrib V27    -0.5905052368836797
#>     Attrib V28    -0.41653652404300706
#>     Attrib V29    -0.3889792390762003
#>     Attrib V3    0.17642042110655912
#>     Attrib V30    0.05044686481575771
#>     Attrib V31    -0.7375485919943707
#>     Attrib V32    -0.21475304642505252
#>     Attrib V33    0.5596377956414677
#>     Attrib V34    0.21331176831782703
#>     Attrib V35    -0.06940659263757792
#>     Attrib V36    -0.524475580985034
#>     Attrib V37    -0.7073448023898551
#>     Attrib V38    -0.3286255887950736
#>     Attrib V39    0.053369917324345435
#>     Attrib V4    0.08294056768230329
#>     Attrib V40    -0.30010880821680086
#>     Attrib V41    -0.1674660637997799
#>     Attrib V42    0.15375941836829954
#>     Attrib V43    0.03821454669343879
#>     Attrib V44    -0.01885626390926863
#>     Attrib V45    0.14560305804494236
#>     Attrib V46    0.1464881942983938
#>     Attrib V47    0.005893338992111611
#>     Attrib V48    0.15355737135211375
#>     Attrib V49    0.19105060533931165
#>     Attrib V5    -0.004919457307177868
#>     Attrib V50    -0.4302329361406195
#>     Attrib V51    -0.023156701836474457
#>     Attrib V52    0.15169250694167546
#>     Attrib V53    0.026822539353605894
#>     Attrib V54    0.46361889289458413
#>     Attrib V55    -0.10515317403819399
#>     Attrib V56    -0.0052718256602542314
#>     Attrib V57    0.17667475974934954
#>     Attrib V58    0.39449766306462664
#>     Attrib V59    0.5416709967999029
#>     Attrib V6    0.06310887683486814
#>     Attrib V60    0.427821942847569
#>     Attrib V7    -0.08502898432041565
#>     Attrib V8    0.030812677321243324
#>     Attrib V9    0.3766534892764724
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.19336353371133624
#>     Attrib V1    0.39877410184069073
#>     Attrib V10    -0.08151490255655024
#>     Attrib V11    0.17205907525299216
#>     Attrib V12    0.17866356293311603
#>     Attrib V13    -0.06731691826342293
#>     Attrib V14    -0.034761394812484865
#>     Attrib V15    0.023024503806836995
#>     Attrib V16    -0.12970642273486696
#>     Attrib V17    -0.2010841104148844
#>     Attrib V18    -0.17001012811004632
#>     Attrib V19    -0.3038500037158329
#>     Attrib V2    -0.03875260380684344
#>     Attrib V20    -0.04508920783873154
#>     Attrib V21    -0.0038418365773332267
#>     Attrib V22    -0.22334193914067252
#>     Attrib V23    -0.18780798013946562
#>     Attrib V24    -0.29776553887718454
#>     Attrib V25    -0.5217643705025794
#>     Attrib V26    -0.2688794205473634
#>     Attrib V27    -0.20012324228868733
#>     Attrib V28    0.026616250508177532
#>     Attrib V29    0.025749314348255777
#>     Attrib V3    0.09805599043131316
#>     Attrib V30    0.2595360965819286
#>     Attrib V31    -0.4790905605732537
#>     Attrib V32    -0.12960834530942786
#>     Attrib V33    0.409625059851801
#>     Attrib V34    0.15074697794118408
#>     Attrib V35    -0.073649150519927
#>     Attrib V36    -0.3613893077990725
#>     Attrib V37    -0.41803834278751617
#>     Attrib V38    -0.21616839003966165
#>     Attrib V39    0.0575243325505831
#>     Attrib V4    0.07024803089606203
#>     Attrib V40    -0.2390287521286996
#>     Attrib V41    -0.1823716803173203
#>     Attrib V42    -0.004681748133689679
#>     Attrib V43    -0.0625143261021538
#>     Attrib V44    -0.0034343743108881104
#>     Attrib V45    0.21237467623316195
#>     Attrib V46    0.09559416274598363
#>     Attrib V47    -0.056711911477243374
#>     Attrib V48    0.25936699845539707
#>     Attrib V49    0.2531703329198781
#>     Attrib V5    0.017540403269091523
#>     Attrib V50    -0.29433026297223436
#>     Attrib V51    0.12530956487060924
#>     Attrib V52    0.13976395922994692
#>     Attrib V53    0.06334395156190732
#>     Attrib V54    0.2871775104309315
#>     Attrib V55    -0.12914658443629567
#>     Attrib V56    -0.11660456945975442
#>     Attrib V57    0.138524070212753
#>     Attrib V58    0.24594902016584583
#>     Attrib V59    0.37081053463881314
#>     Attrib V6    -0.04763253343619688
#>     Attrib V60    0.34886217720959095
#>     Attrib V7    -0.07328911590164733
#>     Attrib V8    -0.023527299036067515
#>     Attrib V9    0.4275044385076167
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    0.03591153296641517
#>     Attrib V1    0.013988507299862334
#>     Attrib V10    0.603281348630532
#>     Attrib V11    -0.3717089056370355
#>     Attrib V12    -1.0912567786413425
#>     Attrib V13    -0.1586895866547061
#>     Attrib V14    0.9374334548434538
#>     Attrib V15    1.1489133624561654
#>     Attrib V16    0.6040252632440795
#>     Attrib V17    -0.5560060655197111
#>     Attrib V18    -1.166731223727499
#>     Attrib V19    -0.6935904751257432
#>     Attrib V2    0.24857692605765133
#>     Attrib V20    -0.6571252320685937
#>     Attrib V21    -0.11681552317176888
#>     Attrib V22    -0.7065507904231431
#>     Attrib V23    -1.6884260735491734
#>     Attrib V24    -1.1280221950262783
#>     Attrib V25    -0.2877236388512882
#>     Attrib V26    -0.1768948713110126
#>     Attrib V27    0.1470460713433381
#>     Attrib V28    -0.8235457522370607
#>     Attrib V29    -0.27968379177708846
#>     Attrib V3    -0.5801746091208723
#>     Attrib V30    -0.4847457168784229
#>     Attrib V31    1.9716623448496127
#>     Attrib V32    0.6445542930473328
#>     Attrib V33    -0.7521345032936854
#>     Attrib V34    -0.1651262093673299
#>     Attrib V35    -0.18881476141614953
#>     Attrib V36    0.7781367977209039
#>     Attrib V37    1.0645553485621515
#>     Attrib V38    -0.03813478619607196
#>     Attrib V39    -0.2762881226046195
#>     Attrib V4    -0.1357735603906302
#>     Attrib V40    0.847134811558471
#>     Attrib V41    0.04783074978614428
#>     Attrib V42    -0.5770845209094108
#>     Attrib V43    -0.8120741410045594
#>     Attrib V44    -0.8032902810124295
#>     Attrib V45    -0.7874317725136709
#>     Attrib V46    -0.7748130702399307
#>     Attrib V47    -0.4080436750533923
#>     Attrib V48    -0.6867092546264486
#>     Attrib V49    -1.0271803576117853
#>     Attrib V5    -0.2916610420463678
#>     Attrib V50    1.109463626815954
#>     Attrib V51    -0.3223535741856521
#>     Attrib V52    -1.0710037043736933
#>     Attrib V53    -0.6081277257499046
#>     Attrib V54    -0.3951168264709921
#>     Attrib V55    0.6565034541715362
#>     Attrib V56    -0.20328768178323353
#>     Attrib V57    0.37821277710485507
#>     Attrib V58    -0.27307143956515817
#>     Attrib V59    -0.08335754076939705
#>     Attrib V6    -0.4827322522383222
#>     Attrib V60    -0.25219682641492247
#>     Attrib V7    0.8122067122971283
#>     Attrib V8    0.6558872774322503
#>     Attrib V9    -1.2990056394168301
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.1885123350226317
#>     Attrib V1    0.525812272625376
#>     Attrib V10    -0.3696233246754842
#>     Attrib V11    -0.045063709732917206
#>     Attrib V12    0.15890285327120127
#>     Attrib V13    -0.08377617293592164
#>     Attrib V14    -0.03349897874971497
#>     Attrib V15    0.03713283442655618
#>     Attrib V16    -0.025848902038388598
#>     Attrib V17    -0.10682638511847145
#>     Attrib V18    0.07032791592546829
#>     Attrib V19    -0.11890082488090704
#>     Attrib V2    0.058453755455178384
#>     Attrib V20    0.2820608734258344
#>     Attrib V21    0.2779605835790179
#>     Attrib V22    0.005111592532526504
#>     Attrib V23    -0.07806391177224567
#>     Attrib V24    -0.16575788199910194
#>     Attrib V25    -0.37563418750807603
#>     Attrib V26    -0.416773733154783
#>     Attrib V27    -0.5671267358522644
#>     Attrib V28    -0.4863689736292573
#>     Attrib V29    -0.34232757393088803
#>     Attrib V3    0.17434445998696202
#>     Attrib V30    -0.02034659579403595
#>     Attrib V31    -0.7305741814957873
#>     Attrib V32    -0.2789995418937544
#>     Attrib V33    0.4607943681241997
#>     Attrib V34    0.19449589811087664
#>     Attrib V35    -0.043941822072900046
#>     Attrib V36    -0.4681236876737649
#>     Attrib V37    -0.5943658705714541
#>     Attrib V38    -0.22822819399155977
#>     Attrib V39    0.045229304213358426
#>     Attrib V4    0.1326395190674306
#>     Attrib V40    -0.31744767352033887
#>     Attrib V41    -0.15034168483939536
#>     Attrib V42    0.13982137936145625
#>     Attrib V43    0.04721871209594344
#>     Attrib V44    -0.022988791375602256
#>     Attrib V45    0.1906958326979708
#>     Attrib V46    0.17284178663100147
#>     Attrib V47    -0.04906545950849039
#>     Attrib V48    0.08825256371748258
#>     Attrib V49    0.13633082602385582
#>     Attrib V5    -0.004645711505171981
#>     Attrib V50    -0.31573722041937374
#>     Attrib V51    -0.017230117287058082
#>     Attrib V52    0.07179867444185863
#>     Attrib V53    0.13297221808933868
#>     Attrib V54    0.41233469530724337
#>     Attrib V55    -0.1209134490410525
#>     Attrib V56    0.044596260023562394
#>     Attrib V57    0.2420311318303656
#>     Attrib V58    0.3512146447713816
#>     Attrib V59    0.5640305044504954
#>     Attrib V6    0.12087853831239208
#>     Attrib V60    0.5014358884315048
#>     Attrib V7    -0.002621370261227047
#>     Attrib V8    0.020434503170439128
#>     Attrib V9    0.3565190898880052
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.7582631688140766
#>     Attrib V1    0.8637276917423149
#>     Attrib V10    0.5152556916033958
#>     Attrib V11    1.3025303868834093
#>     Attrib V12    1.342370916755539
#>     Attrib V13    0.561749152738421
#>     Attrib V14    -0.11179895056925518
#>     Attrib V15    -0.19691379169835158
#>     Attrib V16    -0.4799564679627503
#>     Attrib V17    -0.7043993394304194
#>     Attrib V18    -0.9200856572606128
#>     Attrib V19    -1.1002464577994078
#>     Attrib V2    0.3039447531030948
#>     Attrib V20    -0.6915848520338546
#>     Attrib V21    -0.35269200306874243
#>     Attrib V22    -0.2148851253657624
#>     Attrib V23    0.32203241396218557
#>     Attrib V24    -0.15066142847854305
#>     Attrib V25    -1.0049061562867498
#>     Attrib V26    0.2135492488379124
#>     Attrib V27    1.2702105208683996
#>     Attrib V28    1.7195912843532486
#>     Attrib V29    0.989442162896282
#>     Attrib V3    0.2805481243201759
#>     Attrib V30    0.6869169347100575
#>     Attrib V31    -1.2525043644963607
#>     Attrib V32    -0.3151226106222825
#>     Attrib V33    0.3069625802213587
#>     Attrib V34    0.1908546127613697
#>     Attrib V35    0.29607245507512764
#>     Attrib V36    -0.09096830186129885
#>     Attrib V37    0.460480097748542
#>     Attrib V38    0.02299740523144577
#>     Attrib V39    0.18571198500454847
#>     Attrib V4    0.1667738526628081
#>     Attrib V40    0.14426722577520487
#>     Attrib V41    0.6851119025070502
#>     Attrib V42    -0.3108492558533464
#>     Attrib V43    -0.31550455065589306
#>     Attrib V44    -0.10100590496048754
#>     Attrib V45    0.25529421158726157
#>     Attrib V46    0.4219893828012486
#>     Attrib V47    0.012656836440484022
#>     Attrib V48    0.7053974594950854
#>     Attrib V49    0.5006920517106309
#>     Attrib V5    0.3506273187288292
#>     Attrib V50    -0.8098223264692803
#>     Attrib V51    0.504564288094141
#>     Attrib V52    0.82518818457889
#>     Attrib V53    0.2806515837281039
#>     Attrib V54    0.3494291833645379
#>     Attrib V55    -0.18571866459393263
#>     Attrib V56    -0.6581495367917842
#>     Attrib V57    -0.4888538715285905
#>     Attrib V58    -0.21197337198392446
#>     Attrib V59    0.036697503555449304
#>     Attrib V6    0.2052372659367454
#>     Attrib V60    0.423229018056944
#>     Attrib V7    -0.13966889793333168
#>     Attrib V8    -0.5104762357092025
#>     Attrib V9    1.1441270376663748
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.2740060490241595
#>     Attrib V1    0.34239180722372725
#>     Attrib V10    0.09337996641018324
#>     Attrib V11    0.2923506124599455
#>     Attrib V12    0.2444686003505723
#>     Attrib V13    -0.008947061314417104
#>     Attrib V14    -0.1032977465330298
#>     Attrib V15    -0.040715032071489174
#>     Attrib V16    -0.10131605265198841
#>     Attrib V17    -0.3137454214510852
#>     Attrib V18    -0.39069605437979266
#>     Attrib V19    -0.47938956870163946
#>     Attrib V2    -0.0029651951022466603
#>     Attrib V20    -0.37784204995750653
#>     Attrib V21    -0.34422034188255396
#>     Attrib V22    -0.48381592140170276
#>     Attrib V23    -0.4259225827883764
#>     Attrib V24    -0.3431518401099099
#>     Attrib V25    -0.4695463652632992
#>     Attrib V26    -0.08121566041524766
#>     Attrib V27    0.15672966858617818
#>     Attrib V28    0.3089009760028293
#>     Attrib V29    0.16898253053483248
#>     Attrib V3    0.02336179788855313
#>     Attrib V30    0.38191828504626585
#>     Attrib V31    -0.19480560836119243
#>     Attrib V32    0.07140797547197518
#>     Attrib V33    0.33632479294530804
#>     Attrib V34    0.12421748288866695
#>     Attrib V35    0.006863954653738754
#>     Attrib V36    -0.14346477395391644
#>     Attrib V37    -0.14278520820697124
#>     Attrib V38    -0.016826651503515557
#>     Attrib V39    0.08329212258711663
#>     Attrib V4    0.10297467604141748
#>     Attrib V40    -0.1184923315167881
#>     Attrib V41    -0.08465148511119681
#>     Attrib V42    -0.23255514631462423
#>     Attrib V43    -0.13821733302307732
#>     Attrib V44    0.007928866571444825
#>     Attrib V45    0.1573118140167451
#>     Attrib V46    0.1351975830018932
#>     Attrib V47    -0.02638224598270473
#>     Attrib V48    0.34996380997788445
#>     Attrib V49    0.26670981561318774
#>     Attrib V5    -0.03083095934002258
#>     Attrib V50    -0.26099572110842867
#>     Attrib V51    0.11758237575119022
#>     Attrib V52    0.17677064905204823
#>     Attrib V53    0.13342821776603608
#>     Attrib V54    0.29602021997255085
#>     Attrib V55    -0.07659414369729464
#>     Attrib V56    -0.21741515979213866
#>     Attrib V57    0.17450358310470993
#>     Attrib V58    0.16705631430165158
#>     Attrib V59    0.27658935500911125
#>     Attrib V6    -0.08242845016111201
#>     Attrib V60    0.3521730555752782
#>     Attrib V7    -0.04453751335692334
#>     Attrib V8    -0.04570296338961604
#>     Attrib V9    0.4006722551692797
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.6552834255050428
#>     Attrib V1    0.48504239689384454
#>     Attrib V10    0.4545839048787776
#>     Attrib V11    1.2133556324608794
#>     Attrib V12    1.4696900141360574
#>     Attrib V13    0.8111591058742978
#>     Attrib V14    -0.10713992376756204
#>     Attrib V15    -0.14721670802621073
#>     Attrib V16    -0.26941743930219364
#>     Attrib V17    -0.17630809119824015
#>     Attrib V18    -0.3323420052008239
#>     Attrib V19    -0.7834215011351114
#>     Attrib V2    0.17838039362860328
#>     Attrib V20    -0.5688011820796295
#>     Attrib V21    -0.21958063977991976
#>     Attrib V22    0.14142975132384059
#>     Attrib V23    0.9567967814016318
#>     Attrib V24    0.40312857112546613
#>     Attrib V25    -0.640631000930127
#>     Attrib V26    0.45688192767278957
#>     Attrib V27    1.5395987274287495
#>     Attrib V28    1.942744362035682
#>     Attrib V29    1.0697348501380963
#>     Attrib V3    0.18370474055269534
#>     Attrib V30    0.7643375347883513
#>     Attrib V31    -1.1851401509577868
#>     Attrib V32    -0.23177871723794582
#>     Attrib V33    0.20144300906115026
#>     Attrib V34    -0.05765369529141409
#>     Attrib V35    0.007442231999534393
#>     Attrib V36    -0.323367722437205
#>     Attrib V37    0.32672444411663637
#>     Attrib V38    -0.074552797666895
#>     Attrib V39    0.16975860761978742
#>     Attrib V4    0.0763856725770766
#>     Attrib V40    0.25649246546718607
#>     Attrib V41    0.9016022202655943
#>     Attrib V42    -0.2910193535384612
#>     Attrib V43    -0.08732320843526961
#>     Attrib V44    0.07187661708368118
#>     Attrib V45    0.16424265077433697
#>     Attrib V46    0.2640928107514016
#>     Attrib V47    -0.07624867987897507
#>     Attrib V48    0.5807564685092288
#>     Attrib V49    0.6317862442313377
#>     Attrib V5    0.4579382272943246
#>     Attrib V50    -0.746798741558576
#>     Attrib V51    0.6392075138366087
#>     Attrib V52    1.0977475927794424
#>     Attrib V53    0.9005881014214563
#>     Attrib V54    0.4701808109162248
#>     Attrib V55    -0.11919236874261169
#>     Attrib V56    -0.5937924798423303
#>     Attrib V57    -0.7697959861628867
#>     Attrib V58    -0.22275418913494135
#>     Attrib V59    -0.15977829706772353
#>     Attrib V6    0.40731247228696915
#>     Attrib V60    0.07950651521898489
#>     Attrib V7    -0.24615972481531254
#>     Attrib V8    -0.44649321539204534
#>     Attrib V9    1.1372800347391931
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.41279171181882024
#>     Attrib V1    -0.09859768285617948
#>     Attrib V10    0.5223882067480564
#>     Attrib V11    -0.2869879965514445
#>     Attrib V12    -0.9607427554938268
#>     Attrib V13    -0.1701151243405197
#>     Attrib V14    0.5178883820022044
#>     Attrib V15    0.5594793254254904
#>     Attrib V16    0.4986176429820248
#>     Attrib V17    -0.1630704829442205
#>     Attrib V18    -0.4589562873673977
#>     Attrib V19    -0.052150502777003234
#>     Attrib V2    0.18791030536571976
#>     Attrib V20    -0.05407348617141987
#>     Attrib V21    0.15533192090685713
#>     Attrib V22    -0.24891299115055043
#>     Attrib V23    -0.944872815390565
#>     Attrib V24    -0.6028582886533526
#>     Attrib V25    0.1868419586659801
#>     Attrib V26    0.23235168604503467
#>     Attrib V27    0.075408198851363
#>     Attrib V28    -0.5582904480000195
#>     Attrib V29    -0.09416898068491726
#>     Attrib V3    -0.4245574583197616
#>     Attrib V30    -0.19333891840313747
#>     Attrib V31    1.2161385109489495
#>     Attrib V32    0.06253474674200882
#>     Attrib V33    -0.6846129863858885
#>     Attrib V34    -0.10993179384955276
#>     Attrib V35    0.20210662913113087
#>     Attrib V36    1.1056354694372956
#>     Attrib V37    1.221241266027055
#>     Attrib V38    0.5682223007753533
#>     Attrib V39    -0.07932069979926498
#>     Attrib V4    -0.0026633238147925854
#>     Attrib V40    0.4972280548246455
#>     Attrib V41    -0.08143410912549537
#>     Attrib V42    -0.34880897053397697
#>     Attrib V43    -0.3022680845647989
#>     Attrib V44    -0.02961940498384282
#>     Attrib V45    0.012220382915830968
#>     Attrib V46    -0.3641697946314823
#>     Attrib V47    -0.15304737464338328
#>     Attrib V48    -0.5852285412343501
#>     Attrib V49    -0.709032501545084
#>     Attrib V5    -0.24521732827325604
#>     Attrib V50    1.0151809544086707
#>     Attrib V51    -0.21832341839178734
#>     Attrib V52    -0.8131897084318508
#>     Attrib V53    -0.48823535029970244
#>     Attrib V54    -0.36673230653170147
#>     Attrib V55    0.477396694646552
#>     Attrib V56    -0.03827104470555578
#>     Attrib V57    0.136993344655714
#>     Attrib V58    -0.4838219450546274
#>     Attrib V59    -0.3702120567409202
#>     Attrib V6    -0.511848931352016
#>     Attrib V60    -0.38972950936695583
#>     Attrib V7    0.5453098866583733
#>     Attrib V8    0.5122768448213377
#>     Attrib V9    -0.8889573905280101
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.18004976439420045
#>     Attrib V1    0.3875115388923627
#>     Attrib V10    -0.3339155731494387
#>     Attrib V11    0.1097771298840137
#>     Attrib V12    0.3046375834878692
#>     Attrib V13    -0.17618583630802723
#>     Attrib V14    -0.37089814858076164
#>     Attrib V15    -0.27245028628786416
#>     Attrib V16    -0.16717686538262705
#>     Attrib V17    0.0366180029006856
#>     Attrib V18    0.25012842400965923
#>     Attrib V19    0.07043692292617199
#>     Attrib V2    -0.1447992945921686
#>     Attrib V20    0.4460056075128831
#>     Attrib V21    0.23542416804325794
#>     Attrib V22    0.08444616987803191
#>     Attrib V23    0.22186135567755225
#>     Attrib V24    0.024055830085383888
#>     Attrib V25    -0.284995310059143
#>     Attrib V26    -0.40515110097736007
#>     Attrib V27    -0.6694550505305866
#>     Attrib V28    -0.3776148724869069
#>     Attrib V29    -0.4449172506678774
#>     Attrib V3    0.11347246408914034
#>     Attrib V30    0.07226652700615528
#>     Attrib V31    -1.1151054850204214
#>     Attrib V32    -0.3691531035984639
#>     Attrib V33    0.7055506980833348
#>     Attrib V34    0.41031686508750476
#>     Attrib V35    0.15799325269930808
#>     Attrib V36    -0.4710542956440187
#>     Attrib V37    -0.8350020297147142
#>     Attrib V38    -0.17312324734636803
#>     Attrib V39    0.05358812167431123
#>     Attrib V4    0.013886085450052646
#>     Attrib V40    -0.4913653962230854
#>     Attrib V41    -0.3231942839220222
#>     Attrib V42    0.18893722653907566
#>     Attrib V43    0.18569822648150464
#>     Attrib V44    0.1644126952251991
#>     Attrib V45    0.39601484086394456
#>     Attrib V46    0.3005366735371849
#>     Attrib V47    0.09122128379822599
#>     Attrib V48    0.32957520787455713
#>     Attrib V49    0.3324125438840049
#>     Attrib V5    -0.031125534212867075
#>     Attrib V50    -0.5646592851747511
#>     Attrib V51    0.07381873976125831
#>     Attrib V52    0.18263204765138036
#>     Attrib V53    0.0375247585608361
#>     Attrib V54    0.5018329298802104
#>     Attrib V55    -0.21404890893525144
#>     Attrib V56    0.01470870235871923
#>     Attrib V57    0.12668124835525538
#>     Attrib V58    0.37032974922678064
#>     Attrib V59    0.468795623221612
#>     Attrib V6    0.04643769789960642
#>     Attrib V60    0.5183600910270526
#>     Attrib V7    -0.22435186598996956
#>     Attrib V8    -0.03726823512078622
#>     Attrib V9    0.6658461393673824
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.24821406633554635
#>     Attrib V1    0.5107075259885071
#>     Attrib V10    -0.5166406051914137
#>     Attrib V11    0.09959249972791849
#>     Attrib V12    0.31039813951987805
#>     Attrib V13    -0.13192901654214964
#>     Attrib V14    -0.37141541478165807
#>     Attrib V15    -0.29381796741326544
#>     Attrib V16    -0.20633557293563015
#>     Attrib V17    -0.059567819149789515
#>     Attrib V18    0.23333480354857636
#>     Attrib V19    0.14052671770114575
#>     Attrib V2    -0.04734031970209909
#>     Attrib V20    0.5355866263019552
#>     Attrib V21    0.34105567090403727
#>     Attrib V22    0.15675597046092007
#>     Attrib V23    0.19212915589416496
#>     Attrib V24    -0.034379934356464456
#>     Attrib V25    -0.3805412357309804
#>     Attrib V26    -0.5836665983787711
#>     Attrib V27    -1.0649567631817625
#>     Attrib V28    -0.8538352821451044
#>     Attrib V29    -0.7481660516836864
#>     Attrib V3    0.2091619034910537
#>     Attrib V30    -0.11062592779298858
#>     Attrib V31    -1.306261870575782
#>     Attrib V32    -0.4643506534978677
#>     Attrib V33    0.9847775553939369
#>     Attrib V34    0.6295094875124486
#>     Attrib V35    0.1661221268475382
#>     Attrib V36    -0.7062018311646044
#>     Attrib V37    -1.1994004532967044
#>     Attrib V38    -0.37889193118670456
#>     Attrib V39    0.04711768827325432
#>     Attrib V4    0.0646329626678698
#>     Attrib V40    -0.47195616799459694
#>     Attrib V41    -0.3072157027560212
#>     Attrib V42    0.3186948781690597
#>     Attrib V43    0.27927000584305856
#>     Attrib V44    -0.003022229632446061
#>     Attrib V45    0.3643942251611588
#>     Attrib V46    0.42768967883555226
#>     Attrib V47    0.09006551491885809
#>     Attrib V48    0.3617977300366549
#>     Attrib V49    0.341904263947058
#>     Attrib V5    -0.08408845130518668
#>     Attrib V50    -0.7277554217944425
#>     Attrib V51    -0.049426612866314654
#>     Attrib V52    0.20531545974573315
#>     Attrib V53    0.0758805422821343
#>     Attrib V54    0.5705963972495957
#>     Attrib V55    -0.23535008888511139
#>     Attrib V56    0.12093684775100524
#>     Attrib V57    0.25081241436760277
#>     Attrib V58    0.5276284245243389
#>     Attrib V59    0.783909190249767
#>     Attrib V6    0.04839495513561506
#>     Attrib V60    0.7060211172420466
#>     Attrib V7    -0.15406434630598162
#>     Attrib V8    0.057094027681237156
#>     Attrib V9    0.738403415575842
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.09612979983418708
#>     Attrib V1    0.454692703950239
#>     Attrib V10    -0.39702758465644833
#>     Attrib V11    -0.0363589838252629
#>     Attrib V12    0.18898770092633294
#>     Attrib V13    0.011787205062892393
#>     Attrib V14    -0.10348826313731531
#>     Attrib V15    -0.08187624468067338
#>     Attrib V16    -0.16160865921811204
#>     Attrib V17    -0.024487031813017954
#>     Attrib V18    0.1444160423990713
#>     Attrib V19    -0.045116126575845905
#>     Attrib V2    -0.011549319363211498
#>     Attrib V20    0.33325758782283715
#>     Attrib V21    0.28318239158942643
#>     Attrib V22    0.06444896731005012
#>     Attrib V23    0.08549406368064028
#>     Attrib V24    -0.06101504952295842
#>     Attrib V25    -0.2582922208581672
#>     Attrib V26    -0.40886559185020876
#>     Attrib V27    -0.616655243349192
#>     Attrib V28    -0.5053315714415685
#>     Attrib V29    -0.3711349692278575
#>     Attrib V3    0.2401992919548013
#>     Attrib V30    -0.03784024459654255
#>     Attrib V31    -0.8583365026951565
#>     Attrib V32    -0.2981367720230074
#>     Attrib V33    0.512618655672602
#>     Attrib V34    0.2907818730375158
#>     Attrib V35    -0.035639380497730216
#>     Attrib V36    -0.5034777472372798
#>     Attrib V37    -0.69321826414767
#>     Attrib V38    -0.2550722804538318
#>     Attrib V39    0.11068670506751713
#>     Attrib V4    0.08815292841315553
#>     Attrib V40    -0.29220521809332045
#>     Attrib V41    -0.16817504866420735
#>     Attrib V42    0.1870917230524954
#>     Attrib V43    0.06957598446642985
#>     Attrib V44    -0.005030675957359545
#>     Attrib V45    0.14626011839885122
#>     Attrib V46    0.21076687941593372
#>     Attrib V47    0.022631173350511534
#>     Attrib V48    0.14676681793088317
#>     Attrib V49    0.22762472638560285
#>     Attrib V5    0.008486747268095611
#>     Attrib V50    -0.4484343956529287
#>     Attrib V51    -0.04600207173730091
#>     Attrib V52    0.10185063709552086
#>     Attrib V53    0.1190816323410311
#>     Attrib V54    0.40750277249677713
#>     Attrib V55    -0.16279772745981272
#>     Attrib V56    0.05927052168708074
#>     Attrib V57    0.2223407621300111
#>     Attrib V58    0.34329648088977927
#>     Attrib V59    0.5865401594725631
#>     Attrib V6    0.1376894550395529
#>     Attrib V60    0.5472135761791547
#>     Attrib V7    -0.019442963065210164
#>     Attrib V8    -0.06762870422213797
#>     Attrib V9    0.3937102115583585
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.1684118251746204
#>     Attrib V1    0.6014548641434909
#>     Attrib V10    -0.4809031206245837
#>     Attrib V11    0.014700018933251659
#>     Attrib V12    0.26877035408147
#>     Attrib V13    -0.10044647098659587
#>     Attrib V14    -0.19944277995853113
#>     Attrib V15    -0.04124167216033845
#>     Attrib V16    -0.17557792580011491
#>     Attrib V17    -0.09495176603556504
#>     Attrib V18    0.09921792953496776
#>     Attrib V19    -0.0653809779021475
#>     Attrib V2    0.026802515390667234
#>     Attrib V20    0.43294539190671627
#>     Attrib V21    0.29486272941835323
#>     Attrib V22    0.044442631733051866
#>     Attrib V23    0.005926884294709273
#>     Attrib V24    -0.1534580537578377
#>     Attrib V25    -0.33598439309302675
#>     Attrib V26    -0.4823860896969718
#>     Attrib V27    -1.0406851484654518
#>     Attrib V28    -1.0231389501236368
#>     Attrib V29    -0.8383892213443505
#>     Attrib V3    0.15171467141878203
#>     Attrib V30    -0.15647926224506223
#>     Attrib V31    -0.9097677608849657
#>     Attrib V32    -0.3657770390741837
#>     Attrib V33    0.7646943889256608
#>     Attrib V34    0.4964196052979559
#>     Attrib V35    0.14616766224213765
#>     Attrib V36    -0.5657672818125085
#>     Attrib V37    -0.8831240752327997
#>     Attrib V38    -0.36838878683191845
#>     Attrib V39    0.04735663204331267
#>     Attrib V4    0.061337691822226044
#>     Attrib V40    -0.402555314145597
#>     Attrib V41    -0.3109350775197266
#>     Attrib V42    0.16614435329754645
#>     Attrib V43    0.08984782213773872
#>     Attrib V44    0.002279171559008338
#>     Attrib V45    0.21969742535177997
#>     Attrib V46    0.2828974555566276
#>     Attrib V47    0.01636325228078228
#>     Attrib V48    0.26747256343251097
#>     Attrib V49    0.2899487844243754
#>     Attrib V5    -0.09547503233029787
#>     Attrib V50    -0.4959850011751451
#>     Attrib V51    -0.09747451629152877
#>     Attrib V52    0.07671897046388475
#>     Attrib V53    0.03537814484466184
#>     Attrib V54    0.6132726954608321
#>     Attrib V55    -0.08024458066675284
#>     Attrib V56    0.11352447001650331
#>     Attrib V57    0.29191595398587195
#>     Attrib V58    0.450234368230898
#>     Attrib V59    0.7073799982747503
#>     Attrib V6    0.05663435676109047
#>     Attrib V60    0.6495530270904593
#>     Attrib V7    -0.04975834045243562
#>     Attrib V8    -0.03830684537315254
#>     Attrib V9    0.470446714142571
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.4831265498260536
#>     Attrib V1    -0.18323157883321486
#>     Attrib V10    0.2876331082378099
#>     Attrib V11    -0.3492918899523094
#>     Attrib V12    -0.653299469014067
#>     Attrib V13    -0.09277632016784326
#>     Attrib V14    0.4211133624132464
#>     Attrib V15    0.5050519369418349
#>     Attrib V16    0.370162777053674
#>     Attrib V17    -0.019334917306248502
#>     Attrib V18    -0.27551524459573135
#>     Attrib V19    0.1102810006019032
#>     Attrib V2    0.20781137180889517
#>     Attrib V20    0.03316652460587872
#>     Attrib V21    0.16435360085880257
#>     Attrib V22    0.008622484558846826
#>     Attrib V23    -0.5280223676920871
#>     Attrib V24    -0.28599388314235874
#>     Attrib V25    0.23864189493316862
#>     Attrib V26    0.15521011456818934
#>     Attrib V27    -0.05716860850026891
#>     Attrib V28    -0.5300920232554177
#>     Attrib V29    -0.12128464458502988
#>     Attrib V3    -0.14355496752745275
#>     Attrib V30    -0.35901624504054136
#>     Attrib V31    0.988333301554692
#>     Attrib V32    0.1192536646649585
#>     Attrib V33    -0.6436294828240238
#>     Attrib V34    -0.16329166786346747
#>     Attrib V35    -0.08459986786271621
#>     Attrib V36    0.6146457674630007
#>     Attrib V37    0.7644269872780806
#>     Attrib V38    0.28633754828618796
#>     Attrib V39    -0.08570525138114718
#>     Attrib V4    0.12960200891892637
#>     Attrib V40    0.3583669307860029
#>     Attrib V41    -0.04779586526708065
#>     Attrib V42    -0.21185451379466316
#>     Attrib V43    -0.2465873412751962
#>     Attrib V44    -0.1576210065480068
#>     Attrib V45    -0.1833579238339017
#>     Attrib V46    -0.2971085416673762
#>     Attrib V47    -0.041312833127359096
#>     Attrib V48    -0.5095323375326845
#>     Attrib V49    -0.608405974114907
#>     Attrib V5    -0.04050327808049835
#>     Attrib V50    0.8548909508959515
#>     Attrib V51    -0.10318974619725829
#>     Attrib V52    -0.5979160579196668
#>     Attrib V53    -0.2972729563804506
#>     Attrib V54    -0.32672240861368124
#>     Attrib V55    0.4183874346071164
#>     Attrib V56    0.23922757422047078
#>     Attrib V57    0.1335011866935854
#>     Attrib V58    -0.317823972281561
#>     Attrib V59    -0.22255660860414206
#>     Attrib V6    -0.2792646497748747
#>     Attrib V60    -0.3125737339259848
#>     Attrib V7    0.3712409703687322
#>     Attrib V8    0.3021148876342531
#>     Attrib V9    -0.8281149895645219
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.07507025949182204
#>     Attrib V1    0.219965125953901
#>     Attrib V10    0.024611926495137722
#>     Attrib V11    0.08179694533357314
#>     Attrib V12    0.08523059231344565
#>     Attrib V13    0.024493561090731995
#>     Attrib V14    -0.036865895785805576
#>     Attrib V15    -0.0027431234881012
#>     Attrib V16    -7.369835711289954E-4
#>     Attrib V17    -0.07013865607551474
#>     Attrib V18    -0.07549689563824298
#>     Attrib V19    -0.12773582964517524
#>     Attrib V2    0.012417449035315935
#>     Attrib V20    -0.07851818128338933
#>     Attrib V21    -0.11017512995311177
#>     Attrib V22    -0.19101847108019987
#>     Attrib V23    -0.20906422987114232
#>     Attrib V24    -0.12722751950330843
#>     Attrib V25    -0.16196802241707423
#>     Attrib V26    -0.09452025470752534
#>     Attrib V27    -0.04412293099579587
#>     Attrib V28    0.05136322459046953
#>     Attrib V29    -0.013356966088272443
#>     Attrib V3    0.10972882662471842
#>     Attrib V30    0.05893534376344524
#>     Attrib V31    -0.19348090411155303
#>     Attrib V32    -0.027967324288387784
#>     Attrib V33    0.12989323906365371
#>     Attrib V34    0.10475823303253075
#>     Attrib V35    0.022464644814021953
#>     Attrib V36    -0.0979019245360235
#>     Attrib V37    -0.0691003500970014
#>     Attrib V38    0.00995478412322002
#>     Attrib V39    0.08577357634275098
#>     Attrib V4    0.10204612128399938
#>     Attrib V40    -0.06830549394668667
#>     Attrib V41    -0.037472190461787354
#>     Attrib V42    0.005639933196525923
#>     Attrib V43    -0.0011740361099195039
#>     Attrib V44    0.023423084996473272
#>     Attrib V45    0.12870088634886973
#>     Attrib V46    0.10987155823793589
#>     Attrib V47    0.023058363527841002
#>     Attrib V48    0.0958464595363008
#>     Attrib V49    0.060984096411904096
#>     Attrib V5    0.03564151547844324
#>     Attrib V50    -0.02319724867374529
#>     Attrib V51    0.12577397571315457
#>     Attrib V52    0.13643192024985523
#>     Attrib V53    0.13586894972921898
#>     Attrib V54    0.15925495874853135
#>     Attrib V55    0.06204757810117567
#>     Attrib V56    0.03726703137202024
#>     Attrib V57    0.14831112863122198
#>     Attrib V58    0.19591490910033083
#>     Attrib V59    0.14867807508127664
#>     Attrib V6    0.03508140310568761
#>     Attrib V60    0.2532218666980938
#>     Attrib V7    0.005882472033773076
#>     Attrib V8    -0.019736027798350014
#>     Attrib V9    0.22099823774378255
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.056717543851253556
#>     Attrib V1    0.22039773857674777
#>     Attrib V10    0.0924067832265841
#>     Attrib V11    0.12221135942915211
#>     Attrib V12    0.050875956005043486
#>     Attrib V13    -0.03348461506046114
#>     Attrib V14    -0.017701207015770066
#>     Attrib V15    0.08033675235593157
#>     Attrib V16    -0.02585782030053301
#>     Attrib V17    -0.09228901461889939
#>     Attrib V18    -0.12794721230175388
#>     Attrib V19    -0.12631731391743445
#>     Attrib V2    0.1306194022106777
#>     Attrib V20    -0.09622046936029044
#>     Attrib V21    -0.12346754113887635
#>     Attrib V22    -0.13339179669230458
#>     Attrib V23    -0.20360051681453542
#>     Attrib V24    -0.14032675928976093
#>     Attrib V25    -0.18280145246207538
#>     Attrib V26    -0.06013163723434848
#>     Attrib V27    0.010655861077906201
#>     Attrib V28    0.07019560451344052
#>     Attrib V29    -0.013074290730996625
#>     Attrib V3    0.08236889604775388
#>     Attrib V30    0.11893584490792827
#>     Attrib V31    -0.06078479003600615
#>     Attrib V32    -0.04187590004734443
#>     Attrib V33    0.1510724327171209
#>     Attrib V34    0.03709111916783728
#>     Attrib V35    0.09639940527089011
#>     Attrib V36    -0.04356181517668081
#>     Attrib V37    -0.032388865734408516
#>     Attrib V38    0.09544008119640732
#>     Attrib V39    0.12249849522059571
#>     Attrib V4    0.09986577339278484
#>     Attrib V40    -0.03553174914323572
#>     Attrib V41    0.007255597976542731
#>     Attrib V42    -0.034487204594627126
#>     Attrib V43    0.06150730648274953
#>     Attrib V44    0.10664927154689088
#>     Attrib V45    0.1549794194825123
#>     Attrib V46    0.061123498331666276
#>     Attrib V47    -0.007250297961218113
#>     Attrib V48    0.14456266409162416
#>     Attrib V49    0.04909660656111767
#>     Attrib V5    0.03955346581786773
#>     Attrib V50    -0.017104158515229954
#>     Attrib V51    0.09582854257670907
#>     Attrib V52    0.08372038843360131
#>     Attrib V53    0.06009045795054621
#>     Attrib V54    0.12243274394112964
#>     Attrib V55    0.10186103992960355
#>     Attrib V56    0.05525923526767797
#>     Attrib V57    0.16535564372364353
#>     Attrib V58    0.08787209689629366
#>     Attrib V59    0.10335229845518394
#>     Attrib V6    0.019196545510107105
#>     Attrib V60    0.2187847452081333
#>     Attrib V7    -0.031215215531716797
#>     Attrib V8    0.0551692017798014
#>     Attrib V9    0.18165461386682197
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    0.022695865550979223
#>     Attrib V1    0.42509825720607
#>     Attrib V10    -0.07192967530407861
#>     Attrib V11    0.11521925139220734
#>     Attrib V12    0.13826750360404222
#>     Attrib V13    -0.036522378119914344
#>     Attrib V14    1.7264194357702702E-4
#>     Attrib V15    0.022512139139919004
#>     Attrib V16    -0.06641209842683464
#>     Attrib V17    -0.19315778135616132
#>     Attrib V18    -0.06779834983606402
#>     Attrib V19    -0.24737212608179324
#>     Attrib V2    0.06522551197403811
#>     Attrib V20    0.05792663889384251
#>     Attrib V21    0.07237546898182509
#>     Attrib V22    -0.1496493326843699
#>     Attrib V23    -0.200541529348445
#>     Attrib V24    -0.2663024229462532
#>     Attrib V25    -0.3609700665478561
#>     Attrib V26    -0.22919370487097676
#>     Attrib V27    -0.25122313825565534
#>     Attrib V28    -0.212514399594325
#>     Attrib V29    -0.1782768452224715
#>     Attrib V3    0.1659669006292919
#>     Attrib V30    0.03656625560636215
#>     Attrib V31    -0.4792799826212597
#>     Attrib V32    -0.21076954118573138
#>     Attrib V33    0.2914778618417483
#>     Attrib V34    0.18510299477154699
#>     Attrib V35    -0.02304490590226533
#>     Attrib V36    -0.15663569004327274
#>     Attrib V37    -0.3134581204519556
#>     Attrib V38    -0.1015142858874128
#>     Attrib V39    0.10879186539266554
#>     Attrib V4    0.10732481266264898
#>     Attrib V40    -0.20083658090357412
#>     Attrib V41    -0.18775479396088066
#>     Attrib V42    -0.013853717046908767
#>     Attrib V43    -0.0021493301810621025
#>     Attrib V44    0.03778277342853461
#>     Attrib V45    0.11284043103928958
#>     Attrib V46    0.10583995641539584
#>     Attrib V47    0.027019667184998618
#>     Attrib V48    0.15192845172829247
#>     Attrib V49    0.16196307291369874
#>     Attrib V5    0.01788992931950196
#>     Attrib V50    -0.21072926407131287
#>     Attrib V51    0.12975601703528397
#>     Attrib V52    0.08110123228121241
#>     Attrib V53    0.07981116344315929
#>     Attrib V54    0.32908052080488914
#>     Attrib V55    0.027484955228950666
#>     Attrib V56    0.014141925641971153
#>     Attrib V57    0.17881235184945937
#>     Attrib V58    0.2699456389286683
#>     Attrib V59    0.4375479525598945
#>     Attrib V6    -0.016269097815250926
#>     Attrib V60    0.468171301003137
#>     Attrib V7    0.05719943622987306
#>     Attrib V8    0.07487946990765626
#>     Attrib V9    0.299042491082441
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.5281555478814055
#>     Attrib V1    -0.0038002791021409196
#>     Attrib V10    0.138459523519979
#>     Attrib V11    0.7812844155342303
#>     Attrib V12    1.0923193084869574
#>     Attrib V13    0.10914289471892094
#>     Attrib V14    -0.5069737364339675
#>     Attrib V15    -0.489471353829396
#>     Attrib V16    -0.3503956925090546
#>     Attrib V17    -0.11391163969109831
#>     Attrib V18    0.025352209707380523
#>     Attrib V19    -0.09426426031426888
#>     Attrib V2    -0.3560249834303216
#>     Attrib V20    -0.397095960627619
#>     Attrib V21    -0.658083739855105
#>     Attrib V22    -0.2387537546292755
#>     Attrib V23    0.6011750204243432
#>     Attrib V24    0.527018139035507
#>     Attrib V25    -0.06699044132088425
#>     Attrib V26    0.22527757554735292
#>     Attrib V27    0.6197372425334116
#>     Attrib V28    0.9465679947788479
#>     Attrib V29    0.11519478171334284
#>     Attrib V3    -0.012414871034798127
#>     Attrib V30    0.5665063714710683
#>     Attrib V31    -0.7077394595640352
#>     Attrib V32    0.2758848465891419
#>     Attrib V33    0.9131673857670828
#>     Attrib V34    0.5543001871575185
#>     Attrib V35    0.4927100934760966
#>     Attrib V36    -0.35290638989243267
#>     Attrib V37    -0.5950863556455182
#>     Attrib V38    -0.42159802842189387
#>     Attrib V39    -0.07854959026452815
#>     Attrib V4    -0.0010119156738098252
#>     Attrib V40    -0.13807069395578037
#>     Attrib V41    0.27847494888515084
#>     Attrib V42    -0.08103972219823016
#>     Attrib V43    -0.04776892074295833
#>     Attrib V44    -0.012679273283753054
#>     Attrib V45    0.15357183574016015
#>     Attrib V46    0.23487163718700987
#>     Attrib V47    0.01075869534549331
#>     Attrib V48    0.7374682698817879
#>     Attrib V49    0.7902022282832882
#>     Attrib V5    0.18948952661571064
#>     Attrib V50    -0.8566911329689721
#>     Attrib V51    0.42836599092980965
#>     Attrib V52    0.7753643071300244
#>     Attrib V53    0.43302819050383
#>     Attrib V54    0.40617455080529025
#>     Attrib V55    -0.17128906334128516
#>     Attrib V56    -0.39740562650192796
#>     Attrib V57    -0.37805638847497114
#>     Attrib V58    0.24151380800682315
#>     Attrib V59    0.2316383673229151
#>     Attrib V6    0.06859442581691498
#>     Attrib V60    0.5173688544807844
#>     Attrib V7    -0.4450964865877982
#>     Attrib V8    -0.34979266624399674
#>     Attrib V9    1.004664517705375
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.18056977281390718
#>     Attrib V1    0.44146887921406974
#>     Attrib V10    -0.3721740766812613
#>     Attrib V11    0.06609749105859562
#>     Attrib V12    0.39134499744215706
#>     Attrib V13    -0.08298985196925389
#>     Attrib V14    -0.33447742093135313
#>     Attrib V15    -0.30970942014551106
#>     Attrib V16    -0.2951520700909735
#>     Attrib V17    0.011553814506988336
#>     Attrib V18    0.30908502982650765
#>     Attrib V19    0.11688707547064561
#>     Attrib V2    -0.11555677121527903
#>     Attrib V20    0.441744487785406
#>     Attrib V21    0.34586088339601123
#>     Attrib V22    0.22708295919111526
#>     Attrib V23    0.33915918606389833
#>     Attrib V24    0.10946507479622175
#>     Attrib V25    -0.21541133220983755
#>     Attrib V26    -0.2907302890374121
#>     Attrib V27    -0.647631630061619
#>     Attrib V28    -0.41066375495163376
#>     Attrib V29    -0.3650366403085666
#>     Attrib V3    0.17245052081875162
#>     Attrib V30    0.07295834202604555
#>     Attrib V31    -1.1553123319866763
#>     Attrib V32    -0.48589526535451705
#>     Attrib V33    0.6625375462390547
#>     Attrib V34    0.30143567740613736
#>     Attrib V35    0.07104417377461796
#>     Attrib V36    -0.4946858778243495
#>     Attrib V37    -0.8246784289724968
#>     Attrib V38    -0.20044224550703482
#>     Attrib V39    0.06515368861499252
#>     Attrib V4    0.027665936507773478
#>     Attrib V40    -0.49124974873882526
#>     Attrib V41    -0.2457719507564231
#>     Attrib V42    0.2251818390794504
#>     Attrib V43    0.29373563023308696
#>     Attrib V44    0.18367731716948438
#>     Attrib V45    0.3322084000665044
#>     Attrib V46    0.2854298203840901
#>     Attrib V47    0.022019442034077026
#>     Attrib V48    0.3095141790367631
#>     Attrib V49    0.3455859628520507
#>     Attrib V5    0.011063997622020996
#>     Attrib V50    -0.6144687183916606
#>     Attrib V51    0.06224936381147346
#>     Attrib V52    0.2641238479195012
#>     Attrib V53    0.08494502061273707
#>     Attrib V54    0.5037867490610229
#>     Attrib V55    -0.2321447604768075
#>     Attrib V56    0.051068085108419876
#>     Attrib V57    0.09835224673769068
#>     Attrib V58    0.39267022779752153
#>     Attrib V59    0.5860100667769301
#>     Attrib V6    0.13243853931114896
#>     Attrib V60    0.585225344724625
#>     Attrib V7    -0.14921581307908982
#>     Attrib V8    -0.13455969474152607
#>     Attrib V9    0.6577990946509785
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.19326004932120378
#>     Attrib V1    -0.14272673585979392
#>     Attrib V10    0.4415102835193637
#>     Attrib V11    -0.2778382310098901
#>     Attrib V12    -0.7237775614619455
#>     Attrib V13    -0.11598814079271323
#>     Attrib V14    0.4624686670376613
#>     Attrib V15    0.5609471880343634
#>     Attrib V16    0.4110543386046875
#>     Attrib V17    -0.1447756995254469
#>     Attrib V18    -0.4757618354884302
#>     Attrib V19    -0.1505027623152197
#>     Attrib V2    0.144147054067503
#>     Attrib V20    -0.19831813654651426
#>     Attrib V21    0.012541698949560287
#>     Attrib V22    -0.3346693705118238
#>     Attrib V23    -0.8796455912193395
#>     Attrib V24    -0.49779094581089633
#>     Attrib V25    0.10356691290362159
#>     Attrib V26    0.1255536260669656
#>     Attrib V27    0.1412104284801285
#>     Attrib V28    -0.4397066258547745
#>     Attrib V29    -0.05031584653269339
#>     Attrib V3    -0.34932481634502294
#>     Attrib V30    -0.24228397265493815
#>     Attrib V31    1.2645127597730175
#>     Attrib V32    0.2799081767567297
#>     Attrib V33    -0.6263722395223469
#>     Attrib V34    -0.12180336239847418
#>     Attrib V35    0.025990204044388884
#>     Attrib V36    0.7439858159890815
#>     Attrib V37    0.996578147840228
#>     Attrib V38    0.28025742869969833
#>     Attrib V39    -0.08354775510554825
#>     Attrib V4    0.044650269732829
#>     Attrib V40    0.5700347039207835
#>     Attrib V41    0.11457011872414928
#>     Attrib V42    -0.3363376613969864
#>     Attrib V43    -0.34917924282674545
#>     Attrib V44    -0.20449853145645303
#>     Attrib V45    -0.2477562820746319
#>     Attrib V46    -0.38232434506322405
#>     Attrib V47    -0.16442482592418795
#>     Attrib V48    -0.4350579820507318
#>     Attrib V49    -0.6319520979382212
#>     Attrib V5    -0.10259409179424932
#>     Attrib V50    0.8302006601326344
#>     Attrib V51    -0.14375237172408484
#>     Attrib V52    -0.6157119803464053
#>     Attrib V53    -0.36224636274886785
#>     Attrib V54    -0.3424857656623052
#>     Attrib V55    0.3678844776470874
#>     Attrib V56    -0.041369819797184855
#>     Attrib V57    0.18028595350176432
#>     Attrib V58    -0.3993716367750856
#>     Attrib V59    -0.26269791401805653
#>     Attrib V6    -0.3547450356972844
#>     Attrib V60    -0.304177319521125
#>     Attrib V7    0.49492664628962757
#>     Attrib V8    0.31376017946606316
#>     Attrib V9    -0.7763482270531286
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.07687613220366532
#>     Attrib V1    0.5047858939081105
#>     Attrib V10    -0.11360861888143357
#>     Attrib V11    0.08926949172415181
#>     Attrib V12    0.12426034035389608
#>     Attrib V13    -0.06985854974839283
#>     Attrib V14    0.045594807565165006
#>     Attrib V15    0.05425975471365334
#>     Attrib V16    -0.0040134298890194126
#>     Attrib V17    -0.1549027038261959
#>     Attrib V18    -0.12966340450550945
#>     Attrib V19    -0.23204697715932449
#>     Attrib V2    0.09409727232045591
#>     Attrib V20    0.0864949032659328
#>     Attrib V21    0.05524010898338302
#>     Attrib V22    -0.18297791163572463
#>     Attrib V23    -0.2829373245130138
#>     Attrib V24    -0.252255129165477
#>     Attrib V25    -0.4507426377630097
#>     Attrib V26    -0.33585669009787433
#>     Attrib V27    -0.35212307678172927
#>     Attrib V28    -0.35410922075644297
#>     Attrib V29    -0.19710581548704295
#>     Attrib V3    0.10382034355175179
#>     Attrib V30    0.018617209590083127
#>     Attrib V31    -0.42119975440721236
#>     Attrib V32    -0.21884884294046167
#>     Attrib V33    0.2567739360327321
#>     Attrib V34    0.14680948222524878
#>     Attrib V35    -0.023010809422182987
#>     Attrib V36    -0.24430224642977386
#>     Attrib V37    -0.32602819644462205
#>     Attrib V38    -0.14664549365995752
#>     Attrib V39    0.040657994713791494
#>     Attrib V4    0.15195832000519563
#>     Attrib V40    -0.17260682219402854
#>     Attrib V41    -0.2197993406550022
#>     Attrib V42    -0.03488258842466325
#>     Attrib V43    0.05366275290711814
#>     Attrib V44    -0.015285696344558935
#>     Attrib V45    0.09090802714944518
#>     Attrib V46    0.14914749798699306
#>     Attrib V47    -0.05517059521203542
#>     Attrib V48    0.1604029513000814
#>     Attrib V49    0.14162886216343398
#>     Attrib V5    0.03977649424509314
#>     Attrib V50    -0.1655306092677542
#>     Attrib V51    0.04434034681714215
#>     Attrib V52    0.085103513982223
#>     Attrib V53    0.065856810911299
#>     Attrib V54    0.4138108718680142
#>     Attrib V55    0.032037834848831416
#>     Attrib V56    0.03185182562946986
#>     Attrib V57    0.27013106004542303
#>     Attrib V58    0.3575144367172671
#>     Attrib V59    0.45534522361296353
#>     Attrib V6    0.04335127131153377
#>     Attrib V60    0.4713795819496292
#>     Attrib V7    0.03979532247209619
#>     Attrib V8    -0.024242006941585324
#>     Attrib V9    0.2685922316882537
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.11695720060954043
#>     Attrib V1    0.5090050754247506
#>     Attrib V10    -0.6251514624786823
#>     Attrib V11    0.008873324242804938
#>     Attrib V12    0.4965898010200248
#>     Attrib V13    -0.03702548556889329
#>     Attrib V14    -0.4253347223405453
#>     Attrib V15    -0.4103031351062836
#>     Attrib V16    -0.42317147949806977
#>     Attrib V17    -0.0319911911646488
#>     Attrib V18    0.31143437335500107
#>     Attrib V19    0.14094776907439305
#>     Attrib V2    -0.11468264314557736
#>     Attrib V20    0.566330589808409
#>     Attrib V21    0.333963099218221
#>     Attrib V22    0.17838060078177992
#>     Attrib V23    0.16091921225170078
#>     Attrib V24    -0.00650202059110414
#>     Attrib V25    -0.19511213860371326
#>     Attrib V26    -0.4958602794836213
#>     Attrib V27    -1.3502487049576775
#>     Attrib V28    -1.3191510430645208
#>     Attrib V29    -1.1440677744779806
#>     Attrib V3    0.3605902240631184
#>     Attrib V30    -0.26661082009278275
#>     Attrib V31    -1.2213817657637764
#>     Attrib V32    -0.5195200108701996
#>     Attrib V33    0.9682697635183153
#>     Attrib V34    0.6971032607834293
#>     Attrib V35    0.24022228142930255
#>     Attrib V36    -0.7815582295424348
#>     Attrib V37    -1.3473494890347686
#>     Attrib V38    -0.527946784339466
#>     Attrib V39    0.039589494619724455
#>     Attrib V4    0.08152339169686497
#>     Attrib V40    -0.5428713483723558
#>     Attrib V41    -0.30757862406587516
#>     Attrib V42    0.3534866353833858
#>     Attrib V43    0.2870086308574802
#>     Attrib V44    -0.04813036740486144
#>     Attrib V45    0.3624554143789303
#>     Attrib V46    0.39450696387866047
#>     Attrib V47    0.1782457657312423
#>     Attrib V48    0.40615953910972297
#>     Attrib V49    0.4330376521975655
#>     Attrib V5    -0.08963072086674251
#>     Attrib V50    -0.6325558999117402
#>     Attrib V51    -0.07718253243133497
#>     Attrib V52    0.18408815564071435
#>     Attrib V53    0.0838262954693059
#>     Attrib V54    0.637210585790583
#>     Attrib V55    -0.16511625900599194
#>     Attrib V56    0.2838464685013691
#>     Attrib V57    0.28469119080787003
#>     Attrib V58    0.5570441895243813
#>     Attrib V59    0.9216129964819585
#>     Attrib V6    0.21844954414786208
#>     Attrib V60    0.8142156618517549
#>     Attrib V7    -0.14187074369958844
#>     Attrib V8    -0.02300283735473257
#>     Attrib V9    0.6727974185994947
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.15824284627895732
#>     Attrib V1    -0.01705800630657071
#>     Attrib V10    0.05323235219205496
#>     Attrib V11    -0.031244586610735623
#>     Attrib V12    -0.050098110078336686
#>     Attrib V13    -0.008353594272615516
#>     Attrib V14    0.06929732611107164
#>     Attrib V15    0.12146724398987963
#>     Attrib V16    0.08368211474139668
#>     Attrib V17    0.12993012559950756
#>     Attrib V18    0.06292452871647194
#>     Attrib V19    0.07354770133492905
#>     Attrib V2    0.07612500496257757
#>     Attrib V20    -0.001001550220539422
#>     Attrib V21    0.038831754545983206
#>     Attrib V22    0.026655621690734568
#>     Attrib V23    0.041615764171339484
#>     Attrib V24    -0.06295303737607881
#>     Attrib V25    -0.009016385547832718
#>     Attrib V26    -0.05340063242215758
#>     Attrib V27    -0.1415070297223538
#>     Attrib V28    -0.11360910166198529
#>     Attrib V29    -0.08795942803450835
#>     Attrib V3    0.0347059148307072
#>     Attrib V30    -0.07286454407168283
#>     Attrib V31    0.15659635571591698
#>     Attrib V32    0.14366954497313983
#>     Attrib V33    -0.08377604213482956
#>     Attrib V34    -0.018067764201690983
#>     Attrib V35    0.025070430803762495
#>     Attrib V36    0.17229674848436474
#>     Attrib V37    0.15778166055217635
#>     Attrib V38    0.06851216514639279
#>     Attrib V39    0.041793419668084635
#>     Attrib V4    0.10507317123095301
#>     Attrib V40    0.19621254188337306
#>     Attrib V41    0.17140457369128873
#>     Attrib V42    0.043478210203754655
#>     Attrib V43    0.08727396598478299
#>     Attrib V44    0.010705969175980901
#>     Attrib V45    -0.08488100539406641
#>     Attrib V46    -0.018412113793872184
#>     Attrib V47    0.09996318725680199
#>     Attrib V48    -0.060348413994041734
#>     Attrib V49    -0.10718224776109554
#>     Attrib V5    0.012519467644717534
#>     Attrib V50    0.20267895783562212
#>     Attrib V51    0.06910894885711102
#>     Attrib V52    0.05390249168192368
#>     Attrib V53    -0.0328332368681746
#>     Attrib V54    -0.07917123895170511
#>     Attrib V55    0.0935305259543028
#>     Attrib V56    0.1575108184061431
#>     Attrib V57    0.11315445140574375
#>     Attrib V58    0.052672386133697686
#>     Attrib V59    0.011862079585036626
#>     Attrib V6    0.08434372039770179
#>     Attrib V60    -0.018052972187774904
#>     Attrib V7    0.06643543557663488
#>     Attrib V8    0.10956242553456944
#>     Attrib V9    -0.020236416378651822
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.5648311726257036
#>     Attrib V1    0.1746841399689658
#>     Attrib V10    0.31391029930065373
#>     Attrib V11    0.9432674925292097
#>     Attrib V12    1.1672960390220999
#>     Attrib V13    0.5889599582776588
#>     Attrib V14    -0.05761446287776593
#>     Attrib V15    -0.45583885305559274
#>     Attrib V16    -0.46808880851724066
#>     Attrib V17    0.3237823208255716
#>     Attrib V18    0.2599858924346127
#>     Attrib V19    -0.6402171099188949
#>     Attrib V2    0.14672813898534978
#>     Attrib V20    -0.7461282317964371
#>     Attrib V21    -0.012787362303354186
#>     Attrib V22    0.7317705901755357
#>     Attrib V23    1.9518257044852922
#>     Attrib V24    0.6092787829354581
#>     Attrib V25    -1.3413431358450842
#>     Attrib V26    0.06793551186848681
#>     Attrib V27    1.9448403674439156
#>     Attrib V28    2.7955769392159677
#>     Attrib V29    1.7554841888385329
#>     Attrib V3    0.6696397377271907
#>     Attrib V30    1.11793809716116
#>     Attrib V31    -1.5960681998330006
#>     Attrib V32    -0.20851919843672406
#>     Attrib V33    -0.15133263093693
#>     Attrib V34    -1.0719747431107534
#>     Attrib V35    -0.9051675487968533
#>     Attrib V36    -0.8458095406287485
#>     Attrib V37    -0.0495163326164034
#>     Attrib V38    -0.1607890715216276
#>     Attrib V39    0.5919436980373619
#>     Attrib V4    0.3211119962956508
#>     Attrib V40    0.3568987027611431
#>     Attrib V41    1.1930687696517133
#>     Attrib V42    0.456921606999155
#>     Attrib V43    0.7319015534407933
#>     Attrib V44    1.0894163809570114
#>     Attrib V45    0.3539160428402889
#>     Attrib V46    0.4500317407817823
#>     Attrib V47    -0.16662226522339316
#>     Attrib V48    0.44625503558913077
#>     Attrib V49    1.1526141196825792
#>     Attrib V5    1.1109656836074722
#>     Attrib V50    -1.0874549617547884
#>     Attrib V51    0.8784618552432635
#>     Attrib V52    1.7527813078297583
#>     Attrib V53    1.3049502817149239
#>     Attrib V54    0.08089277134496323
#>     Attrib V55    -0.8688910811139647
#>     Attrib V56    -0.9324752055476166
#>     Attrib V57    -1.4067292444826056
#>     Attrib V58    -0.050074178723580665
#>     Attrib V59    -0.6742018991404668
#>     Attrib V6    1.0038045315533715
#>     Attrib V60    -0.26029689043171494
#>     Attrib V7    -0.7666652733048159
#>     Attrib V8    -0.6252010030071782
#>     Attrib V9    1.4663924758826001
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.11970943858266914
#>     Attrib V1    0.23125418928998684
#>     Attrib V10    0.024856815232734492
#>     Attrib V11    0.06516708720333206
#>     Attrib V12    0.10904615971355218
#>     Attrib V13    -0.01305358163198164
#>     Attrib V14    0.0499099742485675
#>     Attrib V15    0.013773398428006851
#>     Attrib V16    -0.04080617792658843
#>     Attrib V17    -0.07067019933374803
#>     Attrib V18    -0.15637567560405669
#>     Attrib V19    -0.10263302644652388
#>     Attrib V2    0.09264544554953599
#>     Attrib V20    -0.05845604523148999
#>     Attrib V21    -0.07944651425166617
#>     Attrib V22    -0.1842784559486213
#>     Attrib V23    -0.18015556417145875
#>     Attrib V24    -0.17021217284560872
#>     Attrib V25    -0.16525361887962084
#>     Attrib V26    -0.07818981657919824
#>     Attrib V27    0.008745621070744196
#>     Attrib V28    0.08448449353795184
#>     Attrib V29    0.029005320826967565
#>     Attrib V3    0.07121378792230769
#>     Attrib V30    0.0881900577995304
#>     Attrib V31    -0.17483214485094659
#>     Attrib V32    -0.07057549676319426
#>     Attrib V33    0.1439949478634539
#>     Attrib V34    0.05021753945470972
#>     Attrib V35    0.09485335803288054
#>     Attrib V36    0.01111978158089032
#>     Attrib V37    0.02987007488117734
#>     Attrib V38    0.037769332044441634
#>     Attrib V39    0.11834130689154732
#>     Attrib V4    0.13988825098771412
#>     Attrib V40    -0.029990267747821986
#>     Attrib V41    -0.045724869368744016
#>     Attrib V42    -0.009258368407337781
#>     Attrib V43    0.030092872337665437
#>     Attrib V44    0.08525173948502549
#>     Attrib V45    0.12138609904309391
#>     Attrib V46    0.06936418680320072
#>     Attrib V47    -7.113866338618435E-4
#>     Attrib V48    0.13656636964644608
#>     Attrib V49    0.06763703528529603
#>     Attrib V5    0.00478487794492209
#>     Attrib V50    -0.030216266532033964
#>     Attrib V51    0.06281431489626224
#>     Attrib V52    0.09151492999880954
#>     Attrib V53    0.08117852774936542
#>     Attrib V54    0.15373718867008682
#>     Attrib V55    0.06641118512093075
#>     Attrib V56    0.05335104635044402
#>     Attrib V57    0.16076608797086264
#>     Attrib V58    0.14632717982437263
#>     Attrib V59    0.1880557380205314
#>     Attrib V6    0.0503542699831859
#>     Attrib V60    0.28980670896922317
#>     Attrib V7    -0.01019245335786408
#>     Attrib V8    0.04087042491271388
#>     Attrib V9    0.17213031836935966
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.2729439420760063
#>     Attrib V1    0.552839436703457
#>     Attrib V10    -0.43810145703965475
#>     Attrib V11    0.1395919223065039
#>     Attrib V12    0.44903368383088516
#>     Attrib V13    -0.0653171923301419
#>     Attrib V14    -0.4821532849194343
#>     Attrib V15    -0.3692217421013302
#>     Attrib V16    -0.27838868656682136
#>     Attrib V17    -0.07055175280561615
#>     Attrib V18    0.34025473298943204
#>     Attrib V19    0.1387366509036636
#>     Attrib V2    -0.1240122395476213
#>     Attrib V20    0.5163144289208418
#>     Attrib V21    0.328346125885109
#>     Attrib V22    0.12919778655114342
#>     Attrib V23    0.2075868101461579
#>     Attrib V24    0.10577778361846828
#>     Attrib V25    -0.23882538721104013
#>     Attrib V26    -0.39360348241666515
#>     Attrib V27    -1.058600939534819
#>     Attrib V28    -0.8771976224428967
#>     Attrib V29    -0.7891334561105612
#>     Attrib V3    0.17744949759365114
#>     Attrib V30    -0.06451567675088378
#>     Attrib V31    -1.2997661869900343
#>     Attrib V32    -0.4766210678162801
#>     Attrib V33    0.9439504135182876
#>     Attrib V34    0.634587938315206
#>     Attrib V35    0.24960329747702084
#>     Attrib V36    -0.6099560919093184
#>     Attrib V37    -1.1155735206853403
#>     Attrib V38    -0.32500874530429624
#>     Attrib V39    0.11852715839541378
#>     Attrib V4    0.007841690491567941
#>     Attrib V40    -0.5883850024595292
#>     Attrib V41    -0.31806013174529774
#>     Attrib V42    0.28222680808377
#>     Attrib V43    0.17481705843810239
#>     Attrib V44    0.08851649346112336
#>     Attrib V45    0.46145556652926545
#>     Attrib V46    0.3450956152131094
#>     Attrib V47    0.06695060656217007
#>     Attrib V48    0.4646765769131896
#>     Attrib V49    0.41130922102780276
#>     Attrib V5    -0.1042019498882551
#>     Attrib V50    -0.665629393106377
#>     Attrib V51    0.0028664262515292792
#>     Attrib V52    0.215340719212179
#>     Attrib V53    0.07077570317084947
#>     Attrib V54    0.6926145189513387
#>     Attrib V55    -0.15127052141268962
#>     Attrib V56    0.03179064563338939
#>     Attrib V57    0.17463744442429485
#>     Attrib V58    0.46179230637255847
#>     Attrib V59    0.7765265898164463
#>     Attrib V6    0.11227873864433215
#>     Attrib V60    0.7313816102113272
#>     Attrib V7    -0.18613271897289352
#>     Attrib V8    -0.014662837205931286
#>     Attrib V9    0.7852102934520363
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.21847615179350713
#>     Attrib V1    0.2891955339830574
#>     Attrib V10    0.4931203407978231
#>     Attrib V11    -0.5651819021655362
#>     Attrib V12    -1.5913774453138643
#>     Attrib V13    -0.5832638999142982
#>     Attrib V14    0.6939527052534764
#>     Attrib V15    0.9403189776142533
#>     Attrib V16    0.5540269632996406
#>     Attrib V17    -0.8735733807126309
#>     Attrib V18    -1.1989765415045943
#>     Attrib V19    -0.6419640802049015
#>     Attrib V2    0.16345547697162358
#>     Attrib V20    -0.2806448384556814
#>     Attrib V21    0.517129805281333
#>     Attrib V22    -0.3424374909072479
#>     Attrib V23    -1.6542541145704077
#>     Attrib V24    -0.976365006029357
#>     Attrib V25    -0.18866350408560204
#>     Attrib V26    -0.3898053094429661
#>     Attrib V27    -0.005327671099483591
#>     Attrib V28    -0.893192746051858
#>     Attrib V29    -0.5662718588549004
#>     Attrib V3    -0.6251494469337183
#>     Attrib V30    -0.6646949109235047
#>     Attrib V31    1.4951833056924781
#>     Attrib V32    0.3289266508216351
#>     Attrib V33    -0.805148154631506
#>     Attrib V34    -0.2762503557887046
#>     Attrib V35    -0.10152441731042088
#>     Attrib V36    1.120783524636705
#>     Attrib V37    1.026747514468463
#>     Attrib V38    0.2869499379687997
#>     Attrib V39    -0.12054284103065437
#>     Attrib V4    0.19317905827323692
#>     Attrib V40    0.6116554463998417
#>     Attrib V41    -0.08541511712900099
#>     Attrib V42    -0.6116364672586878
#>     Attrib V43    -0.6987328743538996
#>     Attrib V44    -0.6225798568915496
#>     Attrib V45    -0.665324837072113
#>     Attrib V46    -0.9358953370768331
#>     Attrib V47    -0.5537377224008606
#>     Attrib V48    -0.9296865767632945
#>     Attrib V49    -1.216399874102885
#>     Attrib V5    -0.46306496050473867
#>     Attrib V50    1.3119095238253766
#>     Attrib V51    -0.3311382347073232
#>     Attrib V52    -1.3293555434580955
#>     Attrib V53    -0.9179508970676618
#>     Attrib V54    -0.057481855068104756
#>     Attrib V55    0.8063664241648653
#>     Attrib V56    -0.0938061177369205
#>     Attrib V57    0.6122814186181541
#>     Attrib V58    0.07800363424731606
#>     Attrib V59    0.4269339182965997
#>     Attrib V6    -0.633474913721374
#>     Attrib V60    0.30452259567061757
#>     Attrib V7    0.8814811975803701
#>     Attrib V8    0.9199595620910532
#>     Attrib V9    -1.2628386562717664
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.24917320754852046
#>     Attrib V1    0.3605164344750563
#>     Attrib V10    -0.15855534945751554
#>     Attrib V11    0.2530298475122977
#>     Attrib V12    0.3087075518201384
#>     Attrib V13    -0.0696649562198349
#>     Attrib V14    -0.11003177996780761
#>     Attrib V15    -0.11134605005050847
#>     Attrib V16    -0.18212318404387853
#>     Attrib V17    -0.183350030731248
#>     Attrib V18    -0.05911070788716863
#>     Attrib V19    -0.25427656027099027
#>     Attrib V2    -0.07307690323739945
#>     Attrib V20    0.055954979187447906
#>     Attrib V21    0.036098774309440924
#>     Attrib V22    -0.06652937780637734
#>     Attrib V23    -0.07175885457974358
#>     Attrib V24    -0.08792354004702362
#>     Attrib V25    -0.2889037998243539
#>     Attrib V26    -0.22873783340811743
#>     Attrib V27    -0.24210267455720128
#>     Attrib V28    -0.11790754608809693
#>     Attrib V29    -0.10108763840526427
#>     Attrib V3    0.0906929853964515
#>     Attrib V30    0.15220535363911852
#>     Attrib V31    -0.6069817606947483
#>     Attrib V32    -0.1475664906760429
#>     Attrib V33    0.48479666547247713
#>     Attrib V34    0.21191961687585215
#>     Attrib V35    -0.003962632104027624
#>     Attrib V36    -0.3905319365844857
#>     Attrib V37    -0.49422002427835976
#>     Attrib V38    -0.2353357271722423
#>     Attrib V39    0.028427843183665837
#>     Attrib V4    0.023844154093223328
#>     Attrib V40    -0.29513033074799433
#>     Attrib V41    -0.15448292295664784
#>     Attrib V42    -0.04431869711447345
#>     Attrib V43    0.0035484933888409766
#>     Attrib V44    -0.08039405460574098
#>     Attrib V45    0.20629168453916372
#>     Attrib V46    0.1524375709932496
#>     Attrib V47    0.020037250276547305
#>     Attrib V48    0.2871567773690527
#>     Attrib V49    0.24294445139464232
#>     Attrib V5    -0.05609889163388785
#>     Attrib V50    -0.372379720040849
#>     Attrib V51    0.11648587960123126
#>     Attrib V52    0.2054220395589573
#>     Attrib V53    0.0331831305632379
#>     Attrib V54    0.36932010478046123
#>     Attrib V55    -0.09306097589124315
#>     Attrib V56    -0.08908014610854578
#>     Attrib V57    0.09861567019729538
#>     Attrib V58    0.238907613695745
#>     Attrib V59    0.3760510639538374
#>     Attrib V6    0.030200740877722277
#>     Attrib V60    0.4335725717187291
#>     Attrib V7    -0.0949203136483876
#>     Attrib V8    -0.010205749231501497
#>     Attrib V9    0.4684588691967548
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    0.029693585945577465
#>     Attrib V1    0.35607693392703704
#>     Attrib V10    0.04527248072027487
#>     Attrib V11    0.14451902993535196
#>     Attrib V12    0.18763971677983549
#>     Attrib V13    0.04709408176576749
#>     Attrib V14    -0.009540035584012643
#>     Attrib V15    0.015375702251227997
#>     Attrib V16    -0.09706736769311948
#>     Attrib V17    -0.14108451296561558
#>     Attrib V18    -0.16935320031250947
#>     Attrib V19    -0.2551618804631566
#>     Attrib V2    0.0744965025823937
#>     Attrib V20    -0.09513118844816895
#>     Attrib V21    -0.06286572403832565
#>     Attrib V22    -0.21806828136203354
#>     Attrib V23    -0.2168649867306204
#>     Attrib V24    -0.22663633976994643
#>     Attrib V25    -0.23495048235634386
#>     Attrib V26    -0.06529400228135118
#>     Attrib V27    -0.0627568028507674
#>     Attrib V28    0.0183143399600996
#>     Attrib V29    -0.06778612951536304
#>     Attrib V3    0.07642683878259117
#>     Attrib V30    0.14821883297818697
#>     Attrib V31    -0.20387416006238687
#>     Attrib V32    -0.09428286716214106
#>     Attrib V33    0.19435708388519105
#>     Attrib V34    0.09041206874315587
#>     Attrib V35    0.039546677987191865
#>     Attrib V36    -0.14612658841219858
#>     Attrib V37    -0.11661052158251921
#>     Attrib V38    -0.050190442162021925
#>     Attrib V39    0.13834022365403073
#>     Attrib V4    0.1387224974125705
#>     Attrib V40    -0.08003003795790233
#>     Attrib V41    -0.08330554308487108
#>     Attrib V42    -0.012498750983451499
#>     Attrib V43    -0.030706235175636008
#>     Attrib V44    -0.015252703645899627
#>     Attrib V45    0.1276174841915892
#>     Attrib V46    0.09026478417517629
#>     Attrib V47    -0.03600844413481547
#>     Attrib V48    0.17430907137996599
#>     Attrib V49    0.10964809001965889
#>     Attrib V5    -0.014184343340054383
#>     Attrib V50    -0.13701478837452394
#>     Attrib V51    0.07470379501914982
#>     Attrib V52    0.12248299150746778
#>     Attrib V53    0.10418986701486294
#>     Attrib V54    0.26029922480942336
#>     Attrib V55    -0.00940330481955316
#>     Attrib V56    0.01274078694430844
#>     Attrib V57    0.11711298659959296
#>     Attrib V58    0.21982327706354363
#>     Attrib V59    0.31161459604171676
#>     Attrib V6    0.01674511795903403
#>     Attrib V60    0.34213444742507876
#>     Attrib V7    -0.029227761955666644
#>     Attrib V8    -0.00887328648598198
#>     Attrib V9    0.23490503918115993
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.08674206750239365
#>     Attrib V1    0.24194404710665707
#>     Attrib V10    0.02614001912824796
#>     Attrib V11    0.13954342354048202
#>     Attrib V12    0.06286497976133651
#>     Attrib V13    0.03144590283501533
#>     Attrib V14    0.031413889976940744
#>     Attrib V15    0.03558869670294349
#>     Attrib V16    -0.04646385629247202
#>     Attrib V17    -0.07862005993004846
#>     Attrib V18    -0.09795968419108614
#>     Attrib V19    -0.15874904642775214
#>     Attrib V2    0.12266194087235649
#>     Attrib V20    -0.027027976885774015
#>     Attrib V21    -0.1317154157587201
#>     Attrib V22    -0.14750702675356586
#>     Attrib V23    -0.15097132529316712
#>     Attrib V24    -0.12829086467150905
#>     Attrib V25    -0.19419232627784716
#>     Attrib V26    -0.0432487565813175
#>     Attrib V27    -0.06147938966419721
#>     Attrib V28    -0.01905770248311457
#>     Attrib V29    -0.047301291787126665
#>     Attrib V3    0.05826654631676451
#>     Attrib V30    0.050457015599346684
#>     Attrib V31    -0.12841955177611847
#>     Attrib V32    -0.0675039687947551
#>     Attrib V33    0.1454274083242659
#>     Attrib V34    0.09486372148979363
#>     Attrib V35    0.09945658568517174
#>     Attrib V36    -0.05345017213803639
#>     Attrib V37    -0.02447132200837372
#>     Attrib V38    0.06556729936888273
#>     Attrib V39    0.048668227499243356
#>     Attrib V4    0.12558670104228498
#>     Attrib V40    -0.043350186223487755
#>     Attrib V41    -0.0716790377937559
#>     Attrib V42    -0.04295100311971656
#>     Attrib V43    0.05109682318771442
#>     Attrib V44    0.10653393714301913
#>     Attrib V45    0.09942512547967154
#>     Attrib V46    0.09152440812368591
#>     Attrib V47    0.03464541956261999
#>     Attrib V48    0.11853876372092446
#>     Attrib V49    0.08642790207693397
#>     Attrib V5    0.021047492221648572
#>     Attrib V50    -0.05188202964681214
#>     Attrib V51    0.06667149376788403
#>     Attrib V52    0.11640364436241311
#>     Attrib V53    0.12146652512242555
#>     Attrib V54    0.22498418219533964
#>     Attrib V55    0.09673118548127384
#>     Attrib V56    0.005391625288580693
#>     Attrib V57    0.13628332899154363
#>     Attrib V58    0.11513771406247547
#>     Attrib V59    0.1740473853174482
#>     Attrib V6    0.01259677166092896
#>     Attrib V60    0.24771804257822141
#>     Attrib V7    0.0206855831263897
#>     Attrib V8    0.022186322882771236
#>     Attrib V9    0.21796044508939114
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.03442703803395089
#>     Attrib V1    0.41172546283961553
#>     Attrib V10    -0.11016862353980879
#>     Attrib V11    0.11027314401392237
#>     Attrib V12    0.11330541517588431
#>     Attrib V13    -0.06713314812991653
#>     Attrib V14    0.06318278816440628
#>     Attrib V15    0.07585192794015085
#>     Attrib V16    -0.03320925159753433
#>     Attrib V17    -0.18593623647483806
#>     Attrib V18    -0.09155463250259314
#>     Attrib V19    -0.2634322016759039
#>     Attrib V2    0.04888489490828682
#>     Attrib V20    0.004199318283627057
#>     Attrib V21    0.009481843668432093
#>     Attrib V22    -0.1867455234809975
#>     Attrib V23    -0.19569464045471968
#>     Attrib V24    -0.2713580519989929
#>     Attrib V25    -0.42335857073461236
#>     Attrib V26    -0.22221820406720258
#>     Attrib V27    -0.16312433546408517
#>     Attrib V28    -0.04757910192801316
#>     Attrib V29    -0.05791322176056171
#>     Attrib V3    0.14012754104814576
#>     Attrib V30    0.13691087891697223
#>     Attrib V31    -0.40750375368810715
#>     Attrib V32    -0.18414512700585506
#>     Attrib V33    0.23441477363890093
#>     Attrib V34    0.10364989654860599
#>     Attrib V35    -0.003056910085247586
#>     Attrib V36    -0.12862022775925566
#>     Attrib V37    -0.21384460967723407
#>     Attrib V38    -0.0910843328004666
#>     Attrib V39    0.0923512197608384
#>     Attrib V4    0.10794694340640759
#>     Attrib V40    -0.17321207195517394
#>     Attrib V41    -0.17340851368200214
#>     Attrib V42    -0.003517795390728758
#>     Attrib V43    -0.021874339230825286
#>     Attrib V44    0.054936811586026334
#>     Attrib V45    0.1795853583219349
#>     Attrib V46    0.11902203461400741
#>     Attrib V47    -0.019806131817806376
#>     Attrib V48    0.09434619806494847
#>     Attrib V49    0.15851911812950426
#>     Attrib V5    0.021051522526202057
#>     Attrib V50    -0.1644116612804958
#>     Attrib V51    0.09304918905468201
#>     Attrib V52    0.14376818805605202
#>     Attrib V53    0.09518086956044211
#>     Attrib V54    0.26217209679746584
#>     Attrib V55    -0.008415799248620298
#>     Attrib V56    -0.020434748916447365
#>     Attrib V57    0.17949710210409375
#>     Attrib V58    0.3006852103357851
#>     Attrib V59    0.31737928226498235
#>     Attrib V6    0.02468883780830617
#>     Attrib V60    0.3554434840106331
#>     Attrib V7    0.004351035406423174
#>     Attrib V8    0.055243097890412166
#>     Attrib V9    0.2770172142593841
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
