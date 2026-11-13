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
#>     Threshold    -0.5134779302117265
#>     Node 2    2.6866667755635567
#>     Node 3    1.8977880827142333
#>     Node 4    1.052622925548098
#>     Node 5    -1.6625927279440418
#>     Node 6    1.3811467692951649
#>     Node 7    1.541661038097182
#>     Node 8    0.997251013252916
#>     Node 9    2.5106002362502493
#>     Node 10    -1.7921814063641186
#>     Node 11    0.7826286409348592
#>     Node 12    2.2334249075495043
#>     Node 13    0.33838033485436764
#>     Node 14    1.8342922406561484
#>     Node 15    -3.1047940083387364
#>     Node 16    -0.245313756263546
#>     Node 17    0.3346125008849091
#>     Node 18    -0.4949600774226395
#>     Node 19    1.7676254579657564
#>     Node 20    1.8176854093260773
#>     Node 21    -1.272474344708416
#>     Node 22    1.5007515635863136
#>     Node 23    1.019492446763063
#>     Node 24    -1.0310116469145245
#>     Node 25    5.848603019152109
#>     Node 26    -0.7585793656458004
#>     Node 27    1.8617837075182389
#>     Node 28    -4.370038186377187
#>     Node 29    0.8036206140977302
#>     Node 30    -0.07370165786917292
#>     Node 31    1.2418406972052232
#>     Node 32    0.8707526526324335
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.5294993258899884
#>     Node 2    -2.716704035027819
#>     Node 3    -1.8676317736671157
#>     Node 4    -1.0086110749266772
#>     Node 5    1.6831118197283474
#>     Node 6    -1.3546979014343445
#>     Node 7    -1.5191629699948053
#>     Node 8    -1.0416107635983227
#>     Node 9    -2.530296192166928
#>     Node 10    1.760301236942582
#>     Node 11    -0.7563207742878619
#>     Node 12    -2.2929951683607235
#>     Node 13    -0.2948710118104801
#>     Node 14    -1.7665218707373969
#>     Node 15    3.1088956332807722
#>     Node 16    0.21638785809606806
#>     Node 17    -0.3158034813999205
#>     Node 18    0.5255659553039603
#>     Node 19    -1.754833359656301
#>     Node 20    -1.7921411248888242
#>     Node 21    1.3342297810447707
#>     Node 22    -1.549970627667912
#>     Node 23    -1.0647457818977757
#>     Node 24    1.029336657554064
#>     Node 25    -5.854598139947346
#>     Node 26    0.6743262115926201
#>     Node 27    -1.8945023041659754
#>     Node 28    4.339857708509604
#>     Node 29    -0.8381852571146834
#>     Node 30    0.1372508530373657
#>     Node 31    -1.1853735416410625
#>     Node 32    -0.8899388573035381
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.06395365147811384
#>     Attrib V1    0.43128857930428766
#>     Attrib V10    0.18190925252147216
#>     Attrib V11    0.41778279225293674
#>     Attrib V12    0.15620373466890092
#>     Attrib V13    -0.6402505137243367
#>     Attrib V14    -0.5531623324304089
#>     Attrib V15    -0.2292459555110592
#>     Attrib V16    0.46075698195074094
#>     Attrib V17    0.3220202252667547
#>     Attrib V18    -0.15402443521370168
#>     Attrib V19    0.22392283951516895
#>     Attrib V2    -0.19001591198569018
#>     Attrib V20    0.6861467929818038
#>     Attrib V21    0.5971301934929497
#>     Attrib V22    0.45211033080922797
#>     Attrib V23    0.24721436721414544
#>     Attrib V24    0.2634689180163667
#>     Attrib V25    -0.3865387051793788
#>     Attrib V26    -0.8073792640481476
#>     Attrib V27    -0.7569412987816727
#>     Attrib V28    -0.5566648038112504
#>     Attrib V29    -1.5373069308864058
#>     Attrib V3    0.04175017926351664
#>     Attrib V30    0.10119903137425053
#>     Attrib V31    -1.5511244687292873
#>     Attrib V32    -0.16745302852702368
#>     Attrib V33    1.0523701405297174
#>     Attrib V34    0.17759768968319528
#>     Attrib V35    0.03777313283810622
#>     Attrib V36    -0.9426577992724636
#>     Attrib V37    -1.4982224099764123
#>     Attrib V38    -0.49595146738311635
#>     Attrib V39    -0.0683436609734634
#>     Attrib V4    0.25244490244702117
#>     Attrib V40    0.12960698522127378
#>     Attrib V41    0.07016988242507814
#>     Attrib V42    0.8525721340990781
#>     Attrib V43    0.5637369154878612
#>     Attrib V44    0.1929065992552832
#>     Attrib V45    -0.23343402764396493
#>     Attrib V46    -0.13256731903153993
#>     Attrib V47    -0.3946560762827728
#>     Attrib V48    0.5266418452933703
#>     Attrib V49    0.5112956981458924
#>     Attrib V5    -0.5732681555421535
#>     Attrib V50    -1.1975725908948383
#>     Attrib V51    0.18094502400532658
#>     Attrib V52    -0.04668000818876206
#>     Attrib V53    0.21330745811436017
#>     Attrib V54    1.0209153389541001
#>     Attrib V55    -0.9381426094706039
#>     Attrib V56    0.1323012097851204
#>     Attrib V57    -0.06918062670945221
#>     Attrib V58    0.4281810075381245
#>     Attrib V59    1.1702976427452618
#>     Attrib V6    -0.43865752975591304
#>     Attrib V60    1.1211604978666876
#>     Attrib V7    0.3121975347284228
#>     Attrib V8    0.9190990985433232
#>     Attrib V9    0.9008228082167563
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.017429985161457818
#>     Attrib V1    0.48800546801653566
#>     Attrib V10    -0.06195228953624798
#>     Attrib V11    0.13749267849783323
#>     Attrib V12    0.04462659040253553
#>     Attrib V13    -0.5164764160906403
#>     Attrib V14    -0.3734013190422443
#>     Attrib V15    0.041303704207291576
#>     Attrib V16    0.4362924487564172
#>     Attrib V17    0.29117239226066954
#>     Attrib V18    -0.16795115097217794
#>     Attrib V19    0.21380952458356095
#>     Attrib V2    0.012093791652395262
#>     Attrib V20    0.4905630067164422
#>     Attrib V21    0.33168269383578647
#>     Attrib V22    0.2897024167577084
#>     Attrib V23    0.08855894219942945
#>     Attrib V24    0.11833596319163311
#>     Attrib V25    -0.38191703357987183
#>     Attrib V26    -0.7267714804247652
#>     Attrib V27    -0.6566007990987631
#>     Attrib V28    -0.4707590931954726
#>     Attrib V29    -1.1387461680751405
#>     Attrib V3    0.08865544678123498
#>     Attrib V30    0.12400793519070645
#>     Attrib V31    -1.126324076392437
#>     Attrib V32    -0.11785601460084721
#>     Attrib V33    0.8003977429015902
#>     Attrib V34    0.079445061799568
#>     Attrib V35    -0.041848213093710215
#>     Attrib V36    -0.7382186180179304
#>     Attrib V37    -1.0389444305473854
#>     Attrib V38    -0.34234295480362875
#>     Attrib V39    -0.00675201944397536
#>     Attrib V4    0.2736377090393486
#>     Attrib V40    0.052716859975061564
#>     Attrib V41    0.003353497792666635
#>     Attrib V42    0.584785862080003
#>     Attrib V43    0.30614612518895185
#>     Attrib V44    0.09814813220603469
#>     Attrib V45    -0.19874107340798525
#>     Attrib V46    -0.13965135817120802
#>     Attrib V47    -0.35024083150048024
#>     Attrib V48    0.2504266261867019
#>     Attrib V49    0.3002249504866775
#>     Attrib V5    -0.3890440218273579
#>     Attrib V50    -0.8759156855919988
#>     Attrib V51    0.09059481063532383
#>     Attrib V52    -0.029543426480749934
#>     Attrib V53    0.17700738400714436
#>     Attrib V54    0.9133149136281354
#>     Attrib V55    -0.6730866760187455
#>     Attrib V56    0.1527812424824415
#>     Attrib V57    0.0608096610792321
#>     Attrib V58    0.3622755547088768
#>     Attrib V59    0.8906352124946578
#>     Attrib V6    -0.24396186586857466
#>     Attrib V60    0.8659607528999268
#>     Attrib V7    0.26090296874392205
#>     Attrib V8    0.5246042143714502
#>     Attrib V9    0.4742585987664319
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.08095939726343823
#>     Attrib V1    0.3536783527009095
#>     Attrib V10    -0.11720232772434677
#>     Attrib V11    0.03998218955779648
#>     Attrib V12    -0.05310719096274265
#>     Attrib V13    -0.3521437502164319
#>     Attrib V14    -0.1385495989339895
#>     Attrib V15    0.1220555547967432
#>     Attrib V16    0.3218357349842208
#>     Attrib V17    0.2249266674861703
#>     Attrib V18    -0.058941102928215784
#>     Attrib V19    0.11991525900952327
#>     Attrib V2    0.01458979386078534
#>     Attrib V20    0.3352259002457566
#>     Attrib V21    0.2686013059124571
#>     Attrib V22    0.09786793536255003
#>     Attrib V23    0.004954065984251637
#>     Attrib V24    -0.06365531855724818
#>     Attrib V25    -0.4595760914367829
#>     Attrib V26    -0.5860743485220536
#>     Attrib V27    -0.4373703484939763
#>     Attrib V28    -0.17045602865582307
#>     Attrib V29    -0.42816000204248916
#>     Attrib V3    0.07502976831956501
#>     Attrib V30    0.11525947874072001
#>     Attrib V31    -0.7599233172941897
#>     Attrib V32    -0.1943026915712758
#>     Attrib V33    0.4513547183398995
#>     Attrib V34    0.08336555643318148
#>     Attrib V35    0.025275124123928315
#>     Attrib V36    -0.39978842932790937
#>     Attrib V37    -0.5003874069489948
#>     Attrib V38    -0.13282473408784126
#>     Attrib V39    0.03301215415700983
#>     Attrib V4    0.2361106691052324
#>     Attrib V40    -0.023071579740983252
#>     Attrib V41    -0.07727605726649638
#>     Attrib V42    0.2809555604413216
#>     Attrib V43    0.10932015103597426
#>     Attrib V44    0.0637941540918465
#>     Attrib V45    -0.0338872261293555
#>     Attrib V46    -0.09800892793711533
#>     Attrib V47    -0.23387559535678462
#>     Attrib V48    0.24022378416931894
#>     Attrib V49    0.255383735002346
#>     Attrib V5    -0.1491995524881502
#>     Attrib V50    -0.5131574855235703
#>     Attrib V51    0.1927624040055622
#>     Attrib V52    0.0460823147554378
#>     Attrib V53    0.23048513264606696
#>     Attrib V54    0.5077933141262231
#>     Attrib V55    -0.384893010028352
#>     Attrib V56    0.08348122526068662
#>     Attrib V57    0.08454870692104276
#>     Attrib V58    0.19877771370271324
#>     Attrib V59    0.5849097628320342
#>     Attrib V6    -0.1633887294039484
#>     Attrib V60    0.5578628240670924
#>     Attrib V7    0.05563018375334612
#>     Attrib V8    0.14618741166892016
#>     Attrib V9    0.2779218994396724
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.466856746748183
#>     Attrib V1    -0.06082095955639035
#>     Attrib V10    -0.2737508480631268
#>     Attrib V11    -0.6462110945088357
#>     Attrib V12    -0.49000492783819755
#>     Attrib V13    0.3638696206641418
#>     Attrib V14    0.8939014935002912
#>     Attrib V15    0.5736275142164244
#>     Attrib V16    0.056669978582656814
#>     Attrib V17    0.22422590370412493
#>     Attrib V18    0.6255610259863359
#>     Attrib V19    0.3617670983815948
#>     Attrib V2    0.28885857909003315
#>     Attrib V20    0.024529348896022856
#>     Attrib V21    0.12132532971812017
#>     Attrib V22    -0.2148637983927087
#>     Attrib V23    -0.33859312939883585
#>     Attrib V24    -0.37736486101393263
#>     Attrib V25    0.5917294524247817
#>     Attrib V26    0.5734888732706589
#>     Attrib V27    0.045803772634164096
#>     Attrib V28    -0.35345750171500834
#>     Attrib V29    0.29919954623419276
#>     Attrib V3    0.3500482476704305
#>     Attrib V30    -0.6354942183799478
#>     Attrib V31    0.6906249554175465
#>     Attrib V32    0.19896065451265596
#>     Attrib V33    -0.3611792153427479
#>     Attrib V34    0.08790138564905678
#>     Attrib V35    -0.025471507939033758
#>     Attrib V36    0.7606927533428788
#>     Attrib V37    0.37046154130862696
#>     Attrib V38    -0.15446802103848759
#>     Attrib V39    -0.40289145496786233
#>     Attrib V4    -0.0233241902028673
#>     Attrib V40    -0.3368783707980982
#>     Attrib V41    -0.2829631728893463
#>     Attrib V42    -0.2061529719945396
#>     Attrib V43    -0.16208180085231053
#>     Attrib V44    -0.17371580436253808
#>     Attrib V45    -0.09889079634928889
#>     Attrib V46    -0.2972918574653427
#>     Attrib V47    0.1889997139618069
#>     Attrib V48    -0.5333519726582104
#>     Attrib V49    -0.5522816637913619
#>     Attrib V5    0.35537957766332506
#>     Attrib V50    1.3849696849815458
#>     Attrib V51    -0.41888248599998285
#>     Attrib V52    -0.30111653678587613
#>     Attrib V53    -0.23966175944727588
#>     Attrib V54    -0.4379391766002924
#>     Attrib V55    0.9112803958511795
#>     Attrib V56    0.4763361826464262
#>     Attrib V57    0.3332352203072858
#>     Attrib V58    -0.07905832665348317
#>     Attrib V59    -0.3054556217468292
#>     Attrib V6    -0.05115666725050156
#>     Attrib V60    -0.21114029080608515
#>     Attrib V7    0.2621850471743785
#>     Attrib V8    -0.25795646681351914
#>     Attrib V9    -0.8818989924341429
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.01178027178933147
#>     Attrib V1    0.44097911765250947
#>     Attrib V10    -0.15980124055760045
#>     Attrib V11    0.062143021069626464
#>     Attrib V12    0.06674364569883298
#>     Attrib V13    -0.42984503376022826
#>     Attrib V14    -0.2599109635745846
#>     Attrib V15    0.03765536285629073
#>     Attrib V16    0.41846951485060896
#>     Attrib V17    0.24321617686339944
#>     Attrib V18    -0.001027430755871646
#>     Attrib V19    0.12312817300553697
#>     Attrib V2    0.013994931677591511
#>     Attrib V20    0.3568544885835454
#>     Attrib V21    0.25937595652448936
#>     Attrib V22    0.11710515858383559
#>     Attrib V23    0.0019599232389255774
#>     Attrib V24    0.11366770922768697
#>     Attrib V25    -0.2252609522653686
#>     Attrib V26    -0.5592120136541581
#>     Attrib V27    -0.5150744421991426
#>     Attrib V28    -0.455125807165117
#>     Attrib V29    -0.8261111463933932
#>     Attrib V3    0.060933735380245775
#>     Attrib V30    0.02789346734200436
#>     Attrib V31    -0.8566975666223334
#>     Attrib V32    -0.13772125522979248
#>     Attrib V33    0.5665340327208161
#>     Attrib V34    0.11105886044150894
#>     Attrib V35    0.04404028365226107
#>     Attrib V36    -0.494511654256232
#>     Attrib V37    -0.6993159106388142
#>     Attrib V38    -0.23288383871547938
#>     Attrib V39    -0.028991278845483127
#>     Attrib V4    0.2645465734381088
#>     Attrib V40    -0.0076635289168504065
#>     Attrib V41    0.008614690486052312
#>     Attrib V42    0.3489508961169757
#>     Attrib V43    0.16292656610004305
#>     Attrib V44    0.0015042711399583558
#>     Attrib V45    -0.1572245549115063
#>     Attrib V46    -0.08982877224717388
#>     Attrib V47    -0.28317249709781717
#>     Attrib V48    0.17287659614544046
#>     Attrib V49    0.1844663799281969
#>     Attrib V5    -0.24938459956871817
#>     Attrib V50    -0.5649053733382288
#>     Attrib V51    0.11950415489748856
#>     Attrib V52    -0.09013608184710824
#>     Attrib V53    0.21897309576964635
#>     Attrib V54    0.6676484463978678
#>     Attrib V55    -0.4861032437670999
#>     Attrib V56    0.12835586916121927
#>     Attrib V57    0.11673899037485938
#>     Attrib V58    0.25743807269421726
#>     Attrib V59    0.7430044424262002
#>     Attrib V6    -0.13740195168450894
#>     Attrib V60    0.7798182874856648
#>     Attrib V7    0.20740405221636624
#>     Attrib V8    0.3323531501903009
#>     Attrib V9    0.35829300962496347
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.00671183569368592
#>     Attrib V1    0.3106299545954502
#>     Attrib V10    0.19758071458601284
#>     Attrib V11    0.7416061486000234
#>     Attrib V12    0.3661395789933563
#>     Attrib V13    -0.1904988611654766
#>     Attrib V14    -0.48822124139373735
#>     Attrib V15    -0.3158914979840705
#>     Attrib V16    0.22644317301603664
#>     Attrib V17    0.1466327580815259
#>     Attrib V18    -0.17093571897693663
#>     Attrib V19    0.20015117978859437
#>     Attrib V2    0.05122256054673926
#>     Attrib V20    0.44752569282972127
#>     Attrib V21    0.4291553709750719
#>     Attrib V22    0.5935971181912368
#>     Attrib V23    0.7903960877780754
#>     Attrib V24    0.5956907190360877
#>     Attrib V25    -0.14721641565423307
#>     Attrib V26    -0.1516043452742733
#>     Attrib V27    -0.025880982835332765
#>     Attrib V28    0.14556378646752657
#>     Attrib V29    -0.4458451702816805
#>     Attrib V3    -0.003031809925811564
#>     Attrib V30    0.5265671482765264
#>     Attrib V31    -0.744522039470969
#>     Attrib V32    -0.05606489353168439
#>     Attrib V33    0.5931833418753132
#>     Attrib V34    -0.1287303750451572
#>     Attrib V35    -0.10570571266245814
#>     Attrib V36    -0.9597349724870178
#>     Attrib V37    -0.9229619923619732
#>     Attrib V38    -0.2867123286930818
#>     Attrib V39    -0.05220113673107934
#>     Attrib V4    0.15880816230899836
#>     Attrib V40    0.053672090760943446
#>     Attrib V41    0.09409593058970643
#>     Attrib V42    0.6333769293728938
#>     Attrib V43    0.41901852912798615
#>     Attrib V44    0.14313891375376644
#>     Attrib V45    -0.13949751228329846
#>     Attrib V46    0.1249788682930621
#>     Attrib V47    -0.11149762887307413
#>     Attrib V48    0.4314605172968959
#>     Attrib V49    0.5277570146226295
#>     Attrib V5    -0.39306985230074215
#>     Attrib V50    -1.0416769982248197
#>     Attrib V51    0.5184393816529299
#>     Attrib V52    0.4942408411263667
#>     Attrib V53    0.3383547295215254
#>     Attrib V54    0.6998194668963804
#>     Attrib V55    -0.5558347682965041
#>     Attrib V56    0.02958523727509951
#>     Attrib V57    -0.4431501413560884
#>     Attrib V58    0.3184852460637311
#>     Attrib V59    0.4775414771197368
#>     Attrib V6    -0.2606958343417775
#>     Attrib V60    0.3529891341466668
#>     Attrib V7    -0.25539511610559207
#>     Attrib V8    0.3946373948969867
#>     Attrib V9    0.8413118217341689
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.04633235714901185
#>     Attrib V1    0.2724403420477347
#>     Attrib V10    0.011829002415925969
#>     Attrib V11    0.24225995089306446
#>     Attrib V12    0.12103532607487841
#>     Attrib V13    -0.309394195579955
#>     Attrib V14    -0.34446217165163995
#>     Attrib V15    -0.08127805666468343
#>     Attrib V16    0.2964082319281319
#>     Attrib V17    0.1755957465661903
#>     Attrib V18    -0.09400608431184589
#>     Attrib V19    0.10322792229239502
#>     Attrib V2    -0.056607515565832364
#>     Attrib V20    0.21302896516581202
#>     Attrib V21    0.1284291282694682
#>     Attrib V22    0.07912853959440783
#>     Attrib V23    0.047275687279465364
#>     Attrib V24    0.10710117186726477
#>     Attrib V25    -0.24811557364415185
#>     Attrib V26    -0.37517193988255715
#>     Attrib V27    -0.2608825981549184
#>     Attrib V28    -0.14924528950980245
#>     Attrib V29    -0.5293781671431476
#>     Attrib V3    -0.046456440766918454
#>     Attrib V30    0.1682058730373482
#>     Attrib V31    -0.6677278539132244
#>     Attrib V32    -0.10158077809439035
#>     Attrib V33    0.5083738954961622
#>     Attrib V34    0.1474063522451142
#>     Attrib V35    0.1285364871507034
#>     Attrib V36    -0.34736927651811395
#>     Attrib V37    -0.5187096237564375
#>     Attrib V38    -0.09602245401064778
#>     Attrib V39    -0.023298895313581168
#>     Attrib V4    0.25202041661009256
#>     Attrib V40    -0.03383436913930732
#>     Attrib V41    -0.07977229442868926
#>     Attrib V42    0.11410065875000809
#>     Attrib V43    0.08391461367805103
#>     Attrib V44    0.04755538980749056
#>     Attrib V45    -0.07428588706881567
#>     Attrib V46    -0.008584091236747622
#>     Attrib V47    -0.1323089220131178
#>     Attrib V48    0.42517120625571475
#>     Attrib V49    0.32012862941413894
#>     Attrib V5    -0.22488083324770966
#>     Attrib V50    -0.634059730974038
#>     Attrib V51    0.2091704413832923
#>     Attrib V52    0.1061211466701417
#>     Attrib V53    0.24053795689430854
#>     Attrib V54    0.5338748288830183
#>     Attrib V55    -0.42804443170078743
#>     Attrib V56    -0.050814107690171764
#>     Attrib V57    0.047349871720053165
#>     Attrib V58    0.11855130188794756
#>     Attrib V59    0.5424079323503392
#>     Attrib V6    -0.192197691136831
#>     Attrib V60    0.5927632003220974
#>     Attrib V7    -0.025977307073044416
#>     Attrib V8    0.09499532604036119
#>     Attrib V9    0.3625067758632765
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    -0.07159492683964498
#>     Attrib V1    -0.253375018389122
#>     Attrib V10    0.8718276473633874
#>     Attrib V11    1.3693174689147913
#>     Attrib V12    0.9983372802288959
#>     Attrib V13    0.40328042474288284
#>     Attrib V14    -0.6728159860433544
#>     Attrib V15    -0.739578857006625
#>     Attrib V16    -0.3562521851807138
#>     Attrib V17    -0.2971896867509042
#>     Attrib V18    -0.27575335778191334
#>     Attrib V19    -0.25973936766872324
#>     Attrib V2    -0.14652318929547392
#>     Attrib V20    -0.18674052034462765
#>     Attrib V21    -0.24625398289031936
#>     Attrib V22    0.2937352911992153
#>     Attrib V23    0.9855401001833403
#>     Attrib V24    0.843481272515492
#>     Attrib V25    0.3403387582059414
#>     Attrib V26    0.7272182168423694
#>     Attrib V27    1.016757084138286
#>     Attrib V28    0.8999313469393936
#>     Attrib V29    -0.08467823551508295
#>     Attrib V3    -0.31048809050447684
#>     Attrib V30    0.5909582932533063
#>     Attrib V31    -0.15054289834436224
#>     Attrib V32    -0.11281004389232835
#>     Attrib V33    0.3339483579942489
#>     Attrib V34    0.34112811539884247
#>     Attrib V35    0.7965737139991926
#>     Attrib V36    -0.4607952823612244
#>     Attrib V37    -0.2561101396752215
#>     Attrib V38    -0.1674437405411853
#>     Attrib V39    0.10543188900240799
#>     Attrib V4    -0.11558920271555556
#>     Attrib V40    0.28946714693904363
#>     Attrib V41    0.15463366670754025
#>     Attrib V42    -0.17375183887441406
#>     Attrib V43    0.08725445443586695
#>     Attrib V44    0.004257800408427233
#>     Attrib V45    0.19539866417776808
#>     Attrib V46    0.7130668371364595
#>     Attrib V47    0.5552287501504181
#>     Attrib V48    1.1914066195168047
#>     Attrib V49    1.0027400217242743
#>     Attrib V5    -0.1672540016069748
#>     Attrib V50    -0.8192924644945903
#>     Attrib V51    1.1895659278463273
#>     Attrib V52    1.1934579878529732
#>     Attrib V53    0.6031003476805632
#>     Attrib V54    0.32503123038028836
#>     Attrib V55    0.1300093935898751
#>     Attrib V56    -0.5259104296704572
#>     Attrib V57    -0.9105290268204002
#>     Attrib V58    0.09721025639792485
#>     Attrib V59    -0.38543600476058704
#>     Attrib V6    -0.167878762715013
#>     Attrib V60    -0.212397653193334
#>     Attrib V7    -0.9385879262965298
#>     Attrib V8    -0.11204124506905651
#>     Attrib V9    1.222361430515044
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.47986696955040337
#>     Attrib V1    -0.004420755869438351
#>     Attrib V10    -0.0229387926351271
#>     Attrib V11    -0.4167857348708123
#>     Attrib V12    -0.18481547170906967
#>     Attrib V13    0.6100039651627264
#>     Attrib V14    1.1097434887609072
#>     Attrib V15    0.5978966237996642
#>     Attrib V16    0.15039002894268752
#>     Attrib V17    0.26252914833514746
#>     Attrib V18    0.7383124793166504
#>     Attrib V19    0.4062186061823061
#>     Attrib V2    0.2689579026715745
#>     Attrib V20    0.22163069128754756
#>     Attrib V21    0.17966462187524043
#>     Attrib V22    -0.2033092036988205
#>     Attrib V23    -0.2876411561436951
#>     Attrib V24    -0.349165938766295
#>     Attrib V25    0.5389078356713761
#>     Attrib V26    0.6312852468316038
#>     Attrib V27    0.2460726880381558
#>     Attrib V28    -0.14417357514337148
#>     Attrib V29    0.1238883345676164
#>     Attrib V3    0.31852853367148126
#>     Attrib V30    -0.8319274724366509
#>     Attrib V31    0.4466128735280777
#>     Attrib V32    -0.08690970411685991
#>     Attrib V33    -0.5005108381459767
#>     Attrib V34    -0.0974622647368295
#>     Attrib V35    -0.22630535044303413
#>     Attrib V36    0.6168111116567384
#>     Attrib V37    0.3741270341681978
#>     Attrib V38    -0.027885062258932135
#>     Attrib V39    -0.2936586324127144
#>     Attrib V4    0.06545676792168581
#>     Attrib V40    -0.35384277803800623
#>     Attrib V41    -0.38748423632823026
#>     Attrib V42    -0.4753651069870878
#>     Attrib V43    -0.4259433817895885
#>     Attrib V44    -0.4007913887284799
#>     Attrib V45    -0.2529276571311435
#>     Attrib V46    -0.42511736118041693
#>     Attrib V47    0.046625398321236626
#>     Attrib V48    -0.5615102866388977
#>     Attrib V49    -0.48058983032036223
#>     Attrib V5    0.3853425451841965
#>     Attrib V50    1.3422579717667504
#>     Attrib V51    -0.34101327085883903
#>     Attrib V52    -0.23825716934619295
#>     Attrib V53    -0.06442339554861212
#>     Attrib V54    -0.30786515416439547
#>     Attrib V55    0.8796302818372574
#>     Attrib V56    0.3246605113222327
#>     Attrib V57    0.4759051936155978
#>     Attrib V58    -0.08744146565185307
#>     Attrib V59    -0.37808246948177854
#>     Attrib V6    0.14685710343623817
#>     Attrib V60    -0.2525142729869245
#>     Attrib V7    0.346988094181719
#>     Attrib V8    -0.15564600452178143
#>     Attrib V9    -0.66257035489261
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.09226357516159141
#>     Attrib V1    0.2615322342894389
#>     Attrib V10    -0.0851661591455659
#>     Attrib V11    0.06191005483599809
#>     Attrib V12    0.052674663638345116
#>     Attrib V13    -0.31639089644748875
#>     Attrib V14    -0.1454464227397751
#>     Attrib V15    0.034886870968181875
#>     Attrib V16    0.22927403642488958
#>     Attrib V17    0.18892549356368965
#>     Attrib V18    -0.008266953018301788
#>     Attrib V19    0.03396511572346404
#>     Attrib V2    -0.04496470353275639
#>     Attrib V20    0.22687453644636307
#>     Attrib V21    0.03562423084770088
#>     Attrib V22    -0.06830529256053791
#>     Attrib V23    -0.09608241186543869
#>     Attrib V24    -0.0631465752416839
#>     Attrib V25    -0.22569084718688326
#>     Attrib V26    -0.3930969665357165
#>     Attrib V27    -0.24548368112789262
#>     Attrib V28    -0.15167808024002896
#>     Attrib V29    -0.40992637185556263
#>     Attrib V3    -0.021962740507087672
#>     Attrib V30    0.04800562289622242
#>     Attrib V31    -0.5719625010550745
#>     Attrib V32    -0.19177390151440835
#>     Attrib V33    0.3190004280680235
#>     Attrib V34    0.21070056233882628
#>     Attrib V35    0.21133762210987833
#>     Attrib V36    -0.15448118775199096
#>     Attrib V37    -0.31987615423767946
#>     Attrib V38    -0.011856885743165605
#>     Attrib V39    0.008184818924958537
#>     Attrib V4    0.1922853939832223
#>     Attrib V40    -0.03191536070755145
#>     Attrib V41    -0.1315540213137837
#>     Attrib V42    0.0685717334679456
#>     Attrib V43    0.03661361129797157
#>     Attrib V44    0.042298078010401266
#>     Attrib V45    0.005581701573836575
#>     Attrib V46    -0.029896143281944065
#>     Attrib V47    -0.07505745246515705
#>     Attrib V48    0.27305507736073936
#>     Attrib V49    0.17108395671537463
#>     Attrib V5    -0.07587208114493864
#>     Attrib V50    -0.3103027421631536
#>     Attrib V51    0.21878331310598365
#>     Attrib V52    0.01952632803796809
#>     Attrib V53    0.1696504695585929
#>     Attrib V54    0.5012552094064537
#>     Attrib V55    -0.20870382840554605
#>     Attrib V56    0.04378230509465004
#>     Attrib V57    0.11285880666208876
#>     Attrib V58    0.16071409018947802
#>     Attrib V59    0.41700930693620475
#>     Attrib V6    -0.1176752603034241
#>     Attrib V60    0.4922125366739269
#>     Attrib V7    -0.04460875072412799
#>     Attrib V8    0.08354443321292321
#>     Attrib V9    0.19353361115959955
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.048500521895833926
#>     Attrib V1    0.6122235212458385
#>     Attrib V10    -0.17998465315766118
#>     Attrib V11    0.12533422744830747
#>     Attrib V12    -0.13384431936677949
#>     Attrib V13    -0.702126184104954
#>     Attrib V14    -0.3572937343512657
#>     Attrib V15    0.08432605875895377
#>     Attrib V16    0.6141414415045321
#>     Attrib V17    0.3468945676690581
#>     Attrib V18    -0.209935899645901
#>     Attrib V19    0.21986266722074335
#>     Attrib V2    0.08584881248186557
#>     Attrib V20    0.584142469348088
#>     Attrib V21    0.49387647448019845
#>     Attrib V22    0.3587591453609749
#>     Attrib V23    0.07310598193174025
#>     Attrib V24    -0.05216752972894013
#>     Attrib V25    -0.7759133942984273
#>     Attrib V26    -1.0116770233304582
#>     Attrib V27    -0.6698224632333895
#>     Attrib V28    -0.36381017061746196
#>     Attrib V29    -0.9443302040453705
#>     Attrib V3    0.09880436415741495
#>     Attrib V30    0.17221828049473512
#>     Attrib V31    -1.4630840919522594
#>     Attrib V32    -0.30793136778058966
#>     Attrib V33    0.8145165009905906
#>     Attrib V34    -0.009529453229518646
#>     Attrib V35    -0.20556239942568838
#>     Attrib V36    -0.8855727440042126
#>     Attrib V37    -1.1176879667866642
#>     Attrib V38    -0.2554185550169553
#>     Attrib V39    -0.006946824525988737
#>     Attrib V4    0.41534246185689583
#>     Attrib V40    0.043260591591977864
#>     Attrib V41    -0.028579539406545628
#>     Attrib V42    0.6476127494510185
#>     Attrib V43    0.4194207538339177
#>     Attrib V44    0.10868392581793787
#>     Attrib V45    -0.17895161042653374
#>     Attrib V46    -0.08541239058996107
#>     Attrib V47    -0.4584780222978554
#>     Attrib V48    0.3025222908772329
#>     Attrib V49    0.3485858679027745
#>     Attrib V5    -0.40816202952877595
#>     Attrib V50    -1.0208887658551418
#>     Attrib V51    0.12824664017515994
#>     Attrib V52    -0.03597341058964106
#>     Attrib V53    0.2782291125526948
#>     Attrib V54    0.9388832184559973
#>     Attrib V55    -0.9103342013618393
#>     Attrib V56    0.20222339398907815
#>     Attrib V57    0.1979771154123516
#>     Attrib V58    0.42160887286819726
#>     Attrib V59    1.056872875009538
#>     Attrib V6    -0.2744927308266865
#>     Attrib V60    1.0084961454140466
#>     Attrib V7    0.33318132231619585
#>     Attrib V8    0.603479887676308
#>     Attrib V9    0.545903799663317
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.20238283521571127
#>     Attrib V1    0.170181637023634
#>     Attrib V10    -0.011214469713349058
#>     Attrib V11    0.0607387676011745
#>     Attrib V12    0.037967197107607015
#>     Attrib V13    -0.0012221305318771448
#>     Attrib V14    0.026327694192684915
#>     Attrib V15    0.02968400656462813
#>     Attrib V16    0.045477289606121
#>     Attrib V17    0.04325813675707787
#>     Attrib V18    -0.02553439690853582
#>     Attrib V19    -0.03561053667053557
#>     Attrib V2    0.03417068028593068
#>     Attrib V20    0.06571851158281683
#>     Attrib V21    -5.956990775490062E-4
#>     Attrib V22    -0.08416924104641285
#>     Attrib V23    -0.019925058716144962
#>     Attrib V24    -0.013240438338560387
#>     Attrib V25    -0.05242363922286827
#>     Attrib V26    -0.13955681738790968
#>     Attrib V27    -0.010757513814325083
#>     Attrib V28    -0.06547640310133022
#>     Attrib V29    -0.13043552640843753
#>     Attrib V3    0.11633361767810385
#>     Attrib V30    0.00579792409926385
#>     Attrib V31    -0.2886052424108305
#>     Attrib V32    -0.095957924534667
#>     Attrib V33    0.1342835283377144
#>     Attrib V34    0.13990689754551605
#>     Attrib V35    0.11559630691760417
#>     Attrib V36    -0.04843130382925657
#>     Attrib V37    -0.0703407691967878
#>     Attrib V38    -0.015176916491824597
#>     Attrib V39    0.07419149571408172
#>     Attrib V4    0.17394962838385553
#>     Attrib V40    0.03818793623658236
#>     Attrib V41    -0.010519153743486704
#>     Attrib V42    0.025012654543890303
#>     Attrib V43    -0.016601206500419775
#>     Attrib V44    0.008606029200408323
#>     Attrib V45    -0.025460860696698354
#>     Attrib V46    0.06964051917800117
#>     Attrib V47    0.05071907437994823
#>     Attrib V48    0.16207337388681722
#>     Attrib V49    0.16983821206226588
#>     Attrib V5    0.041326106566553424
#>     Attrib V50    -0.1042612315762338
#>     Attrib V51    0.13572138822532295
#>     Attrib V52    0.05961531193377767
#>     Attrib V53    0.142624643203516
#>     Attrib V54    0.21597663755612692
#>     Attrib V55    -0.027947137531917274
#>     Attrib V56    0.0400058005870645
#>     Attrib V57    0.10363037312679696
#>     Attrib V58    0.11162904624752314
#>     Attrib V59    0.2976655091867822
#>     Attrib V6    -0.02595881573861178
#>     Attrib V60    0.34418940744526083
#>     Attrib V7    0.04075215638446611
#>     Attrib V8    0.008008039146817122
#>     Attrib V9    0.12147638497360924
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.03902945717315075
#>     Attrib V1    0.48588249726564997
#>     Attrib V10    -0.06230181204670154
#>     Attrib V11    0.25068569711877386
#>     Attrib V12    0.1386142928792328
#>     Attrib V13    -0.5778227596528205
#>     Attrib V14    -0.5050628553788779
#>     Attrib V15    -0.04418009995358759
#>     Attrib V16    0.42076905597909653
#>     Attrib V17    0.34276678026045476
#>     Attrib V18    -0.08003213639246508
#>     Attrib V19    0.1721073657826033
#>     Attrib V2    -0.026615893074815194
#>     Attrib V20    0.4299759142633613
#>     Attrib V21    0.22221798425752598
#>     Attrib V22    0.14775427451578496
#>     Attrib V23    0.04572482514312628
#>     Attrib V24    0.10899516574333841
#>     Attrib V25    -0.2733843457211574
#>     Attrib V26    -0.628521369016807
#>     Attrib V27    -0.6651717397277115
#>     Attrib V28    -0.5935672070616075
#>     Attrib V29    -1.244397557551815
#>     Attrib V3    -0.020374276738735257
#>     Attrib V30    0.053033299923581134
#>     Attrib V31    -0.963891953387826
#>     Attrib V32    -0.07128356967743948
#>     Attrib V33    0.815012446303098
#>     Attrib V34    0.22645471645460202
#>     Attrib V35    0.14343081653591086
#>     Attrib V36    -0.6199240622676955
#>     Attrib V37    -0.8915749117101853
#>     Attrib V38    -0.2927483989803709
#>     Attrib V39    -0.029468819596118898
#>     Attrib V4    0.2324468758040251
#>     Attrib V40    0.0329748615312928
#>     Attrib V41    -0.08553576093691018
#>     Attrib V42    0.3831229115454126
#>     Attrib V43    0.225958689555405
#>     Attrib V44    0.08951606555372275
#>     Attrib V45    -0.21634947627170353
#>     Attrib V46    -0.10496535565246862
#>     Attrib V47    -0.32793833577054154
#>     Attrib V48    0.3844895908388556
#>     Attrib V49    0.35074894435792614
#>     Attrib V5    -0.4243708768252176
#>     Attrib V50    -0.8028293405569406
#>     Attrib V51    0.10271435676687309
#>     Attrib V52    -0.07105726320900951
#>     Attrib V53    0.14991818670596127
#>     Attrib V54    0.8753585936272648
#>     Attrib V55    -0.6028098154652234
#>     Attrib V56    0.1788064179615522
#>     Attrib V57    0.10049208794909789
#>     Attrib V58    0.29570599434403494
#>     Attrib V59    0.8095772553498564
#>     Attrib V6    -0.2866506340035392
#>     Attrib V60    0.9252629099495339
#>     Attrib V7    0.20188053055197958
#>     Attrib V8    0.31437555910173387
#>     Attrib V9    0.46189425770624326
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.24208711818824824
#>     Attrib V1    0.3196132542549197
#>     Attrib V10    -0.781140014433906
#>     Attrib V11    -1.2432887043914076
#>     Attrib V12    -0.6834220742743521
#>     Attrib V13    -0.6382491280537044
#>     Attrib V14    0.45127249565160493
#>     Attrib V15    0.8491173640681818
#>     Attrib V16    0.5757303969528591
#>     Attrib V17    0.6559942351791794
#>     Attrib V18    0.3351637600732871
#>     Attrib V19    -0.14384890160427238
#>     Attrib V2    0.049105624766283676
#>     Attrib V20    -0.485851646825218
#>     Attrib V21    -0.5189442304270098
#>     Attrib V22    -0.7964760613642206
#>     Attrib V23    -1.2400127393817182
#>     Attrib V24    -0.4073737582264796
#>     Attrib V25    0.8191548746982384
#>     Attrib V26    -0.3882358898444853
#>     Attrib V27    -1.3980607872391557
#>     Attrib V28    -1.2597497049410806
#>     Attrib V29    -0.15640774915490138
#>     Attrib V3    0.24841556378277424
#>     Attrib V30    -0.45690805977471455
#>     Attrib V31    0.7528708804536483
#>     Attrib V32    0.25693065127658793
#>     Attrib V33    -0.19058712456894497
#>     Attrib V34    0.1412962420489604
#>     Attrib V35    -0.5988301485035338
#>     Attrib V36    1.0169481117222492
#>     Attrib V37    0.5894438429646466
#>     Attrib V38    0.4729692576322682
#>     Attrib V39    0.21479353259665024
#>     Attrib V4    0.03891748326106946
#>     Attrib V40    -0.23822118926419064
#>     Attrib V41    -0.3872819386666722
#>     Attrib V42    -0.2515001624916922
#>     Attrib V43    -0.37881593222995874
#>     Attrib V44    -0.24928778431388773
#>     Attrib V45    -0.17058432189518358
#>     Attrib V46    -0.6839534022263277
#>     Attrib V47    -0.44497595585040134
#>     Attrib V48    -1.3897142426384876
#>     Attrib V49    -1.4302321957087698
#>     Attrib V5    0.13481780494528992
#>     Attrib V50    0.8884916192620904
#>     Attrib V51    -1.2530810953453937
#>     Attrib V52    -1.6608927958524973
#>     Attrib V53    -0.9208618922631093
#>     Attrib V54    -0.28428323821340457
#>     Attrib V55    0.2682104872604719
#>     Attrib V56    0.8102682757260175
#>     Attrib V57    1.0929720819205533
#>     Attrib V58    -0.2987693340385727
#>     Attrib V59    0.5620662202759353
#>     Attrib V6    -0.07327098116669
#>     Attrib V60    0.629574964924343
#>     Attrib V7    1.3037670877910996
#>     Attrib V8    0.20228737543739647
#>     Attrib V9    -1.3741846921796308
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1987912034466593
#>     Attrib V1    0.02037018672790304
#>     Attrib V10    0.05553976959963969
#>     Attrib V11    -0.023018740831491843
#>     Attrib V12    -0.006238506560220806
#>     Attrib V13    0.0883123106227912
#>     Attrib V14    0.05447853413413883
#>     Attrib V15    0.02637595174956666
#>     Attrib V16    0.08935828584599073
#>     Attrib V17    0.1316240499589565
#>     Attrib V18    0.1584114334191476
#>     Attrib V19    0.06956199987471223
#>     Attrib V2    0.0510899923364834
#>     Attrib V20    -0.03231530905175408
#>     Attrib V21    -0.014452888719855783
#>     Attrib V22    -0.012681721580978958
#>     Attrib V23    -0.03055197744712535
#>     Attrib V24    -0.01713805111504813
#>     Attrib V25    8.284209067434321E-4
#>     Attrib V26    -0.059658567485228416
#>     Attrib V27    -0.08588470227532521
#>     Attrib V28    -0.0621837955480917
#>     Attrib V29    -0.05554448075028844
#>     Attrib V3    0.1280866302144359
#>     Attrib V30    -0.09747186307403355
#>     Attrib V31    0.05539833393465612
#>     Attrib V32    0.10257749450739712
#>     Attrib V33    0.0538816900654567
#>     Attrib V34    0.12862860173648716
#>     Attrib V35    0.09161478127404354
#>     Attrib V36    0.13033425444167362
#>     Attrib V37    0.17302081413505674
#>     Attrib V38    0.07733482190722767
#>     Attrib V39    0.061681424109648664
#>     Attrib V4    0.0877963857927882
#>     Attrib V40    0.06466469000744893
#>     Attrib V41    0.09894231253958624
#>     Attrib V42    0.06855057188206347
#>     Attrib V43    0.025502505389471644
#>     Attrib V44    0.0064826877816008864
#>     Attrib V45    0.03210312843672331
#>     Attrib V46    0.052756149257795176
#>     Attrib V47    0.0693515168948806
#>     Attrib V48    -0.019289248379225854
#>     Attrib V49    -0.018478776986972537
#>     Attrib V5    0.11781209737560483
#>     Attrib V50    0.17789409915249482
#>     Attrib V51    0.08004246044582808
#>     Attrib V52    0.06025158436505927
#>     Attrib V53    0.06415917622822771
#>     Attrib V54    -0.04645007697773544
#>     Attrib V55    0.09820989866033009
#>     Attrib V56    0.14543770260421313
#>     Attrib V57    0.12546616320570503
#>     Attrib V58    0.1044545644005472
#>     Attrib V59    -0.036432338313853715
#>     Attrib V6    0.1294241835661428
#>     Attrib V60    0.03219013810409333
#>     Attrib V7    0.0723751299459474
#>     Attrib V8    0.03524891240396796
#>     Attrib V9    0.06998913046045156
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.11386098319484028
#>     Attrib V1    0.19301190542519212
#>     Attrib V10    0.0521934396438782
#>     Attrib V11    0.09896279253080625
#>     Attrib V12    0.012363517567957777
#>     Attrib V13    -0.12735412881056524
#>     Attrib V14    -0.040205210197616116
#>     Attrib V15    0.08386731724790397
#>     Attrib V16    0.08428328285910011
#>     Attrib V17    0.03074503256686906
#>     Attrib V18    -0.04657523072935811
#>     Attrib V19    -0.011645009191511941
#>     Attrib V2    0.082163787063068
#>     Attrib V20    0.02156219071938886
#>     Attrib V21    -0.047425644630586766
#>     Attrib V22    -0.02374180984898372
#>     Attrib V23    -0.08639760280792225
#>     Attrib V24    -0.020840045017786392
#>     Attrib V25    -0.1362603904792379
#>     Attrib V26    -0.1417214994937956
#>     Attrib V27    -0.05798818889260675
#>     Attrib V28    -0.07348473287611
#>     Attrib V29    -0.20734532936612163
#>     Attrib V3    0.025223130671283792
#>     Attrib V30    0.030929656234392488
#>     Attrib V31    -0.22392344757164553
#>     Attrib V32    -0.12425650065773287
#>     Attrib V33    0.2125058238180791
#>     Attrib V34    0.0979583248556454
#>     Attrib V35    0.1858918584241349
#>     Attrib V36    -0.056281985290250254
#>     Attrib V37    -0.11251588353573531
#>     Attrib V38    0.039009100030879415
#>     Attrib V39    0.05089857369533709
#>     Attrib V4    0.155439182308526
#>     Attrib V40    -0.03313257643772017
#>     Attrib V41    -0.022941330308916857
#>     Attrib V42    -0.023007464952038474
#>     Attrib V43    0.05212003610360457
#>     Attrib V44    0.0507965586518443
#>     Attrib V45    0.05299715550925227
#>     Attrib V46    0.017195407662650465
#>     Attrib V47    -0.03719470151217483
#>     Attrib V48    0.23568648300137524
#>     Attrib V49    0.12321175878684669
#>     Attrib V5    -0.012527783329006694
#>     Attrib V50    -0.09335360778773515
#>     Attrib V51    0.16465308041465884
#>     Attrib V52    0.05901189223474313
#>     Attrib V53    0.0933309879561325
#>     Attrib V54    0.21104668879014593
#>     Attrib V55    -0.0077445240311264235
#>     Attrib V56    0.035578868614452114
#>     Attrib V57    0.12272804410991747
#>     Attrib V58    0.06804943746487095
#>     Attrib V59    0.19636148109698234
#>     Attrib V6    -0.07481300814719827
#>     Attrib V60    0.29548744109381536
#>     Attrib V7    -0.05949331236276585
#>     Attrib V8    0.05613665672823041
#>     Attrib V9    0.15012264375063025
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.2183295237171219
#>     Attrib V1    -0.03914754995739892
#>     Attrib V10    -0.018085078018034422
#>     Attrib V11    -0.17081880849628514
#>     Attrib V12    -0.1237594464412535
#>     Attrib V13    0.10458118366409538
#>     Attrib V14    0.17330162025833037
#>     Attrib V15    0.05824199926460507
#>     Attrib V16    0.032383381300506824
#>     Attrib V17    0.10410643866184681
#>     Attrib V18    0.28374998682942776
#>     Attrib V19    0.06914298371788281
#>     Attrib V2    0.13649970580177742
#>     Attrib V20    0.022098059839875617
#>     Attrib V21    0.09623954980659546
#>     Attrib V22    0.03352114716458099
#>     Attrib V23    0.0212557407687899
#>     Attrib V24    -0.09228017428370586
#>     Attrib V25    0.06689826104755278
#>     Attrib V26    0.06124013585337412
#>     Attrib V27    -0.0438080204657467
#>     Attrib V28    -0.11165601829150683
#>     Attrib V29    0.011299178125378489
#>     Attrib V3    0.20153317949764976
#>     Attrib V30    -0.18663058258793516
#>     Attrib V31    0.25785453478483067
#>     Attrib V32    0.17930073422607704
#>     Attrib V33    0.017553277676947737
#>     Attrib V34    0.14448946333272053
#>     Attrib V35    0.06179975192021024
#>     Attrib V36    0.31978639967069733
#>     Attrib V37    0.22166098333113676
#>     Attrib V38    0.015323922587422002
#>     Attrib V39    0.012959456702849995
#>     Attrib V4    -5.386578553769723E-4
#>     Attrib V40    0.04349190551435974
#>     Attrib V41    0.03788184923171363
#>     Attrib V42    -0.008430140187909328
#>     Attrib V43    -0.0019725982503403126
#>     Attrib V44    0.019282627228885515
#>     Attrib V45    -0.0859499072237092
#>     Attrib V46    -0.0697648723860601
#>     Attrib V47    0.07721612984777597
#>     Attrib V48    -0.1845357598394417
#>     Attrib V49    -0.12836250574731167
#>     Attrib V5    0.1659427250467814
#>     Attrib V50    0.2701917904114088
#>     Attrib V51    -0.06027137237537324
#>     Attrib V52    -0.06454151037918564
#>     Attrib V53    -0.04065282392738262
#>     Attrib V54    -0.19592261365224492
#>     Attrib V55    0.18687005121499034
#>     Attrib V56    0.22152663560539396
#>     Attrib V57    0.08538942391331679
#>     Attrib V58    0.0055272421893811
#>     Attrib V59    -0.11644327828599443
#>     Attrib V6    0.15938181685524422
#>     Attrib V60    -0.07803184075922431
#>     Attrib V7    0.1656766125653003
#>     Attrib V8    0.057787821973681056
#>     Attrib V9    -0.11386260157400717
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.0862719480373602
#>     Attrib V1    0.281453662418799
#>     Attrib V10    0.022381202703728648
#>     Attrib V11    0.45590401405312814
#>     Attrib V12    0.4097744335251651
#>     Attrib V13    -0.25850464919439436
#>     Attrib V14    -0.4486758441541723
#>     Attrib V15    -0.20426897440105263
#>     Attrib V16    0.22663520165247486
#>     Attrib V17    0.1787801394555149
#>     Attrib V18    -0.22134777223563898
#>     Attrib V19    0.16381630426128
#>     Attrib V2    -0.006527957548606121
#>     Attrib V20    0.2702212764629351
#>     Attrib V21    0.269361181556054
#>     Attrib V22    0.5002956846110895
#>     Attrib V23    0.506532480394039
#>     Attrib V24    0.5320548120231883
#>     Attrib V25    -0.16727553315954302
#>     Attrib V26    -0.3716889350447028
#>     Attrib V27    -0.21872922247434207
#>     Attrib V28    -0.07944366755589037
#>     Attrib V29    -0.7851389532138484
#>     Attrib V3    -0.0365740044363105
#>     Attrib V30    0.4230808001883517
#>     Attrib V31    -0.8255065845516764
#>     Attrib V32    0.003379828408345679
#>     Attrib V33    0.749625766550537
#>     Attrib V34    -0.1298343784054866
#>     Attrib V35    -0.20232885746456866
#>     Attrib V36    -1.0640484730917834
#>     Attrib V37    -1.26062358243991
#>     Attrib V38    -0.47807541108064516
#>     Attrib V39    -0.10328017349584222
#>     Attrib V4    0.2555764194750902
#>     Attrib V40    0.06229428427874259
#>     Attrib V41    0.09089609981214183
#>     Attrib V42    0.7200873367622457
#>     Attrib V43    0.38444870539835124
#>     Attrib V44    -0.027843094231493316
#>     Attrib V45    -0.2614554093807445
#>     Attrib V46    -0.05468015563047169
#>     Attrib V47    -0.33225051464306327
#>     Attrib V48    0.43937802915782337
#>     Attrib V49    0.5415321672999157
#>     Attrib V5    -0.3397078804802959
#>     Attrib V50    -1.1834929854636858
#>     Attrib V51    0.3617889205171699
#>     Attrib V52    0.34090776625319075
#>     Attrib V53    0.4253318570283526
#>     Attrib V54    0.7711192569855332
#>     Attrib V55    -0.6509512021257245
#>     Attrib V56    0.04315510022396512
#>     Attrib V57    -0.2600617616245467
#>     Attrib V58    0.42225280867720666
#>     Attrib V59    0.7755117774822456
#>     Attrib V6    -0.11488463079579102
#>     Attrib V60    0.6791271434330867
#>     Attrib V7    0.008556407187305975
#>     Attrib V8    0.43439591300056235
#>     Attrib V9    0.6757764141369912
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    -0.06719739277511168
#>     Attrib V1    0.3643143971859481
#>     Attrib V10    0.13123121345629163
#>     Attrib V11    0.5587301369520825
#>     Attrib V12    0.39770214467259996
#>     Attrib V13    -0.29109958514566736
#>     Attrib V14    -0.49997315010404697
#>     Attrib V15    -0.29742938165312
#>     Attrib V16    0.2153757975528773
#>     Attrib V17    0.23451097662199002
#>     Attrib V18    -0.13875752437045485
#>     Attrib V19    0.20367789349912666
#>     Attrib V2    0.011147644405256917
#>     Attrib V20    0.42480747566527916
#>     Attrib V21    0.48917966756770603
#>     Attrib V22    0.6555658780219131
#>     Attrib V23    0.7137496967074173
#>     Attrib V24    0.5752534284529304
#>     Attrib V25    -0.18622354045906273
#>     Attrib V26    -0.3118504996334205
#>     Attrib V27    -0.2104425054248319
#>     Attrib V28    -0.15091377667852965
#>     Attrib V29    -0.7287297430309608
#>     Attrib V3    -0.02764684366719846
#>     Attrib V30    0.5182065623035041
#>     Attrib V31    -0.8459308030088933
#>     Attrib V32    0.0010974529215518251
#>     Attrib V33    0.6929689379178217
#>     Attrib V34    -0.22803444670789044
#>     Attrib V35    -0.2833990023768151
#>     Attrib V36    -1.0229442253926704
#>     Attrib V37    -1.1762427658111472
#>     Attrib V38    -0.40414530699304185
#>     Attrib V39    -0.11423029224386795
#>     Attrib V4    0.24381813437832395
#>     Attrib V40    -0.021043324708641516
#>     Attrib V41    0.07932597432667422
#>     Attrib V42    0.6775026956278483
#>     Attrib V43    0.5385582190406026
#>     Attrib V44    0.21706609692096543
#>     Attrib V45    -0.21229689444787625
#>     Attrib V46    -0.053348534761513355
#>     Attrib V47    -0.2843159356222707
#>     Attrib V48    0.41929358214101226
#>     Attrib V49    0.5182570107515422
#>     Attrib V5    -0.34390993027704325
#>     Attrib V50    -1.1190191782708852
#>     Attrib V51    0.5373802473755591
#>     Attrib V52    0.3676374744485752
#>     Attrib V53    0.32285572487987574
#>     Attrib V54    0.7388685016757726
#>     Attrib V55    -0.6711870660828402
#>     Attrib V56    0.16079827931928276
#>     Attrib V57    -0.3408260674464464
#>     Attrib V58    0.39982983612060996
#>     Attrib V59    0.7610440656653308
#>     Attrib V6    -0.2551894651842364
#>     Attrib V60    0.5590062386732044
#>     Attrib V7    -0.09371998832832822
#>     Attrib V8    0.46391040931438615
#>     Attrib V9    0.7796366247121431
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.31479005657888603
#>     Attrib V1    -0.02946198376979021
#>     Attrib V10    -0.2016823285389469
#>     Attrib V11    -0.5366844069296874
#>     Attrib V12    -0.34719980217521573
#>     Attrib V13    0.27721437385511083
#>     Attrib V14    0.6507235539105265
#>     Attrib V15    0.381255905164296
#>     Attrib V16    0.035618048409476445
#>     Attrib V17    0.20327448896186773
#>     Attrib V18    0.5507787666306082
#>     Attrib V19    0.30229720853648345
#>     Attrib V2    0.19493534683989505
#>     Attrib V20    0.10488749735936467
#>     Attrib V21    0.173416107033942
#>     Attrib V22    -0.1441237487602833
#>     Attrib V23    -0.25533068233085554
#>     Attrib V24    -0.2619292351740462
#>     Attrib V25    0.3893164728465455
#>     Attrib V26    0.4109378507875943
#>     Attrib V27    0.029743059493591784
#>     Attrib V28    -0.2729003930780774
#>     Attrib V29    0.23799795911336427
#>     Attrib V3    0.27907639534960965
#>     Attrib V30    -0.4719607220267349
#>     Attrib V31    0.628615295342719
#>     Attrib V32    0.18384067403476687
#>     Attrib V33    -0.2429759487528934
#>     Attrib V34    0.11898886439882189
#>     Attrib V35    -0.03784240846177866
#>     Attrib V36    0.5936926672416016
#>     Attrib V37    0.4111009448272032
#>     Attrib V38    -0.07098081575735632
#>     Attrib V39    -0.2793458061938216
#>     Attrib V4    0.08481341969300135
#>     Attrib V40    -0.20701384589660188
#>     Attrib V41    -0.1377276626198716
#>     Attrib V42    -0.25734301109034086
#>     Attrib V43    -0.1670781208953732
#>     Attrib V44    -0.17186556299615263
#>     Attrib V45    -0.10690714667038125
#>     Attrib V46    -0.2466458819065152
#>     Attrib V47    0.07895662328886087
#>     Attrib V48    -0.4574272031458792
#>     Attrib V49    -0.47341148003063777
#>     Attrib V5    0.3361558294558894
#>     Attrib V50    1.041327309068038
#>     Attrib V51    -0.35159775010673294
#>     Attrib V52    -0.18572544770565924
#>     Attrib V53    -0.15312000934347247
#>     Attrib V54    -0.3757300355388275
#>     Attrib V55    0.5972313102545411
#>     Attrib V56    0.3042530980609165
#>     Attrib V57    0.32819078970172566
#>     Attrib V58    -0.08485659080261358
#>     Attrib V59    -0.2820020296314413
#>     Attrib V6    0.08634713905574315
#>     Attrib V60    -0.22601124783990664
#>     Attrib V7    0.2629804121858526
#>     Attrib V8    -0.20218246488944203
#>     Attrib V9    -0.5856853201697371
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.007618981020737541
#>     Attrib V1    0.5775588768276114
#>     Attrib V10    -0.22957646373065455
#>     Attrib V11    -0.008881161450629473
#>     Attrib V12    -0.056434977785525024
#>     Attrib V13    -0.514351555383969
#>     Attrib V14    -0.2042799890853108
#>     Attrib V15    0.119485682406493
#>     Attrib V16    0.48990468891614514
#>     Attrib V17    0.2925987528348082
#>     Attrib V18    -0.07618275254177057
#>     Attrib V19    0.10922973819550401
#>     Attrib V2    0.08165094219613721
#>     Attrib V20    0.4132294149792671
#>     Attrib V21    0.25715259430665954
#>     Attrib V22    0.060818175448459445
#>     Attrib V23    -0.1560820446108019
#>     Attrib V24    -0.050516299756208256
#>     Attrib V25    -0.5109290953807885
#>     Attrib V26    -0.7633170627090134
#>     Attrib V27    -0.6210271742104714
#>     Attrib V28    -0.4698510914067993
#>     Attrib V29    -0.6723266937064348
#>     Attrib V3    0.06231029703050043
#>     Attrib V30    0.06158054892072133
#>     Attrib V31    -0.8868753589643826
#>     Attrib V32    -0.23686281210915708
#>     Attrib V33    0.465756619288999
#>     Attrib V34    0.06652305892348756
#>     Attrib V35    -0.020833368473263923
#>     Attrib V36    -0.46567187470204924
#>     Attrib V37    -0.6043129222382745
#>     Attrib V38    -0.15025173151114607
#>     Attrib V39    -0.008605942410149557
#>     Attrib V4    0.32406108143495266
#>     Attrib V40    -0.03236205412666438
#>     Attrib V41    -0.1546338315885851
#>     Attrib V42    0.2603134429719588
#>     Attrib V43    0.20643546360325107
#>     Attrib V44    0.02039075650266198
#>     Attrib V45    -0.21864129737440172
#>     Attrib V46    -0.11817481186136916
#>     Attrib V47    -0.3535027404997291
#>     Attrib V48    0.20568158101734246
#>     Attrib V49    0.18688136120668208
#>     Attrib V5    -0.21281280757960044
#>     Attrib V50    -0.5949065840851767
#>     Attrib V51    0.07494736016552017
#>     Attrib V52    -0.06199702597737495
#>     Attrib V53    0.25206803681531165
#>     Attrib V54    0.8032087225530582
#>     Attrib V55    -0.4662607877598532
#>     Attrib V56    0.1832379430907538
#>     Attrib V57    0.2147878582624057
#>     Attrib V58    0.308153963431827
#>     Attrib V59    0.7903267393382157
#>     Attrib V6    -0.13274629306867153
#>     Attrib V60    0.8251010623702167
#>     Attrib V7    0.1976156488068175
#>     Attrib V8    0.1614179414654271
#>     Attrib V9    0.21643384808943433
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.004196839944828798
#>     Attrib V1    0.43982691628566306
#>     Attrib V10    -0.20802743886280067
#>     Attrib V11    0.04690470153927467
#>     Attrib V12    0.05741424190277319
#>     Attrib V13    -0.303659581581496
#>     Attrib V14    -0.11192186843910827
#>     Attrib V15    0.10589039092486643
#>     Attrib V16    0.26957894872452204
#>     Attrib V17    0.2474185891644973
#>     Attrib V18    0.0011528302071034426
#>     Attrib V19    0.10376685543776978
#>     Attrib V2    -0.008870108588232846
#>     Attrib V20    0.248544344969991
#>     Attrib V21    0.10858603245416755
#>     Attrib V22    0.0020349329175396776
#>     Attrib V23    -0.07562950664619379
#>     Attrib V24    -0.0442078998333184
#>     Attrib V25    -0.27735839875950685
#>     Attrib V26    -0.4448624236100222
#>     Attrib V27    -0.40724536925896093
#>     Attrib V28    -0.3421944079248778
#>     Attrib V29    -0.5661843205407675
#>     Attrib V3    0.07885557739735986
#>     Attrib V30    -0.006487003586425193
#>     Attrib V31    -0.6804115479740687
#>     Attrib V32    -0.24813238287405845
#>     Attrib V33    0.34723947181997644
#>     Attrib V34    0.1342135695482021
#>     Attrib V35    0.17646150543431036
#>     Attrib V36    -0.24257117133856432
#>     Attrib V37    -0.39363370344325976
#>     Attrib V38    -0.12826594996118162
#>     Attrib V39    5.597543132612367E-4
#>     Attrib V4    0.2868856457169371
#>     Attrib V40    -0.051708332216889745
#>     Attrib V41    -0.09931883544951756
#>     Attrib V42    0.12061667799056548
#>     Attrib V43    0.1169010335030252
#>     Attrib V44    -0.025602885976778973
#>     Attrib V45    -0.10291948634888495
#>     Attrib V46    -0.09407988779685565
#>     Attrib V47    -0.16111330850240876
#>     Attrib V48    0.1336233209807384
#>     Attrib V49    0.13691924977791955
#>     Attrib V5    -0.13271876719494718
#>     Attrib V50    -0.42745956854919914
#>     Attrib V51    0.07761305187650208
#>     Attrib V52    0.004331317000940595
#>     Attrib V53    0.275375380122161
#>     Attrib V54    0.6240493155275016
#>     Attrib V55    -0.26888576990906454
#>     Attrib V56    0.13817953816902764
#>     Attrib V57    0.10924390336046721
#>     Attrib V58    0.20012265921067574
#>     Attrib V59    0.6861680989702239
#>     Attrib V6    -0.10720623770927673
#>     Attrib V60    0.6422074171669023
#>     Attrib V7    0.11036458549931424
#>     Attrib V8    0.10925088380530432
#>     Attrib V9    0.1447288885167859
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.27273235969326953
#>     Attrib V1    -0.031117234528101962
#>     Attrib V10    -0.058643001198697614
#>     Attrib V11    -0.3065990073241789
#>     Attrib V12    -0.1744835574874057
#>     Attrib V13    0.23854583538311816
#>     Attrib V14    0.48034035499296424
#>     Attrib V15    0.31334863168524824
#>     Attrib V16    0.05436117509154889
#>     Attrib V17    0.276592860529235
#>     Attrib V18    0.45859991267397576
#>     Attrib V19    0.26862784580808474
#>     Attrib V2    0.17176865121274082
#>     Attrib V20    0.1733904783343906
#>     Attrib V21    0.1626157133988301
#>     Attrib V22    -0.04037680848261055
#>     Attrib V23    -0.06845771865645055
#>     Attrib V24    -0.25603057165400983
#>     Attrib V25    0.16744339804478484
#>     Attrib V26    0.24482865738568824
#>     Attrib V27    0.043719790658984514
#>     Attrib V28    -0.09987552354065797
#>     Attrib V29    0.08764732166784435
#>     Attrib V3    0.24110815493821605
#>     Attrib V30    -0.4412874546970142
#>     Attrib V31    0.3590235890278775
#>     Attrib V32    0.23681600066277914
#>     Attrib V33    -0.15556501805709624
#>     Attrib V34    0.09432597495223227
#>     Attrib V35    -0.018849629853912604
#>     Attrib V36    0.412016006619379
#>     Attrib V37    0.24090354120556504
#>     Attrib V38    -0.08210150121779221
#>     Attrib V39    -0.274088243639585
#>     Attrib V4    0.11737415034438825
#>     Attrib V40    -0.1851918133710637
#>     Attrib V41    -0.15154814006851347
#>     Attrib V42    -0.2797394077885893
#>     Attrib V43    -0.19839759858651895
#>     Attrib V44    -0.2660474174580163
#>     Attrib V45    -0.2017995851902752
#>     Attrib V46    -0.19119603467178303
#>     Attrib V47    0.09274804319125886
#>     Attrib V48    -0.3189627431664028
#>     Attrib V49    -0.33017711903973584
#>     Attrib V5    0.23542493213037666
#>     Attrib V50    0.7473933516396523
#>     Attrib V51    -0.20321032389655572
#>     Attrib V52    -0.040493968341882354
#>     Attrib V53    -0.16256072284025336
#>     Attrib V54    -0.2880184503988297
#>     Attrib V55    0.4259050741681723
#>     Attrib V56    0.2684920210086956
#>     Attrib V57    0.300454518476761
#>     Attrib V58    -0.06285963566739457
#>     Attrib V59    -0.2987625681312475
#>     Attrib V6    0.2008672081129807
#>     Attrib V60    -0.23840431381813487
#>     Attrib V7    0.1539220018770196
#>     Attrib V8    -0.10734296448686623
#>     Attrib V9    -0.28991117619321355
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.7574878188872254
#>     Attrib V1    0.1054677414724325
#>     Attrib V10    1.0004424453880298
#>     Attrib V11    1.3907453437800334
#>     Attrib V12    0.32939080508136426
#>     Attrib V13    1.0249904375127563
#>     Attrib V14    0.26602679217115915
#>     Attrib V15    -0.026583480853054297
#>     Attrib V16    -0.4977751085746265
#>     Attrib V17    -0.7984117077784981
#>     Attrib V18    -0.5059264717114376
#>     Attrib V19    -0.24559172882758876
#>     Attrib V2    0.36760771390838315
#>     Attrib V20    -0.41738893118979287
#>     Attrib V21    0.1653934614769013
#>     Attrib V22    1.2396166241764652
#>     Attrib V23    2.5051774093660475
#>     Attrib V24    1.0394252753846178
#>     Attrib V25    -1.6185456051142453
#>     Attrib V26    0.38796105561189315
#>     Attrib V27    1.948431795777024
#>     Attrib V28    2.719751243647789
#>     Attrib V29    2.875885711361262
#>     Attrib V3    -0.05178535203870324
#>     Attrib V30    1.578569857413177
#>     Attrib V31    -0.5715558825625754
#>     Attrib V32    -0.7114390450974382
#>     Attrib V33    -0.8055445612811287
#>     Attrib V34    -0.831144362976026
#>     Attrib V35    -0.038037828814890685
#>     Attrib V36    -1.4500469285983597
#>     Attrib V37    -0.4145504596795996
#>     Attrib V38    -0.6203369744975593
#>     Attrib V39    0.4851594745554124
#>     Attrib V4    0.38457376022139605
#>     Attrib V40    0.7617526221914752
#>     Attrib V41    0.9851570438486189
#>     Attrib V42    -0.03208988319885061
#>     Attrib V43    0.2756036908278601
#>     Attrib V44    0.7386309732785931
#>     Attrib V45    0.6685330610144596
#>     Attrib V46    1.6335584609343865
#>     Attrib V47    0.46562347172986307
#>     Attrib V48    0.82044648107501
#>     Attrib V49    1.9517098719611479
#>     Attrib V5    1.02311592391679
#>     Attrib V50    -0.9566282786352086
#>     Attrib V51    1.889451726115365
#>     Attrib V52    2.3608053614624915
#>     Attrib V53    1.7068538623494476
#>     Attrib V54    -0.13321399621823188
#>     Attrib V55    0.18826336983312422
#>     Attrib V56    -1.4227624017436373
#>     Attrib V57    -1.519077983097851
#>     Attrib V58    0.48973557687934044
#>     Attrib V59    -0.8439569109118092
#>     Attrib V6    1.0982917943250559
#>     Attrib V60    -1.1093118164157338
#>     Attrib V7    -0.800067002840755
#>     Attrib V8    -0.38065370518026553
#>     Attrib V9    1.4673736856165962
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.22602431827564123
#>     Attrib V1    -0.04741641916871255
#>     Attrib V10    -0.07547234669609401
#>     Attrib V11    -0.26612124045678376
#>     Attrib V12    -0.11925441810939189
#>     Attrib V13    0.1561892595069171
#>     Attrib V14    0.302842839552633
#>     Attrib V15    0.10580129580480255
#>     Attrib V16    0.01844838115196243
#>     Attrib V17    0.18768676521592098
#>     Attrib V18    0.3025553850879877
#>     Attrib V19    0.2389644604415325
#>     Attrib V2    0.14563934380633406
#>     Attrib V20    0.08622665085108519
#>     Attrib V21    0.13835176483154601
#>     Attrib V22    0.05108373034042318
#>     Attrib V23    -0.005948919222737313
#>     Attrib V24    -0.1310705950652377
#>     Attrib V25    0.10610856320445977
#>     Attrib V26    0.08460713473805843
#>     Attrib V27    0.016186979882316738
#>     Attrib V28    -0.08443439030228105
#>     Attrib V29    0.07911416952712244
#>     Attrib V3    0.13510902256040205
#>     Attrib V30    -0.2392093600765648
#>     Attrib V31    0.33653380451705456
#>     Attrib V32    0.21297672498523437
#>     Attrib V33    0.012891438317166905
#>     Attrib V34    0.10536948986607182
#>     Attrib V35    0.08999763126960755
#>     Attrib V36    0.3317348199203369
#>     Attrib V37    0.2618591898307138
#>     Attrib V38    -0.07138616701610387
#>     Attrib V39    -0.12898236513254988
#>     Attrib V4    0.04941711469038172
#>     Attrib V40    -0.054238480542199013
#>     Attrib V41    -0.0258402080995249
#>     Attrib V42    -0.07302949118397095
#>     Attrib V43    -0.0708656145849851
#>     Attrib V44    -0.09915077323388617
#>     Attrib V45    -0.0994246501134363
#>     Attrib V46    -0.15235953695444945
#>     Attrib V47    0.006605049129568121
#>     Attrib V48    -0.21632666471068696
#>     Attrib V49    -0.24866910987870028
#>     Attrib V5    0.13701497115080133
#>     Attrib V50    0.46036250717448934
#>     Attrib V51    -0.21913172568000172
#>     Attrib V52    -0.12129239573251574
#>     Attrib V53    -0.1259126819105404
#>     Attrib V54    -0.24369117162003393
#>     Attrib V55    0.2375246511532979
#>     Attrib V56    0.23033461245843018
#>     Attrib V57    0.17941020364627905
#>     Attrib V58    -0.035388784984805216
#>     Attrib V59    -0.1989090525885676
#>     Attrib V6    0.20278412061290121
#>     Attrib V60    -0.13115815119049518
#>     Attrib V7    0.1250775000366683
#>     Attrib V8    -0.025401053416847705
#>     Attrib V9    -0.2489313909531209
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.09515604760104084
#>     Attrib V1    0.4290063388398949
#>     Attrib V10    0.1110979201821199
#>     Attrib V11    0.4823696659010514
#>     Attrib V12    0.26074518316010187
#>     Attrib V13    -0.4023424187827518
#>     Attrib V14    -0.5724744560033228
#>     Attrib V15    -0.2345744031035307
#>     Attrib V16    0.34572401895067917
#>     Attrib V17    0.2251734253674156
#>     Attrib V18    -0.11354275496390244
#>     Attrib V19    0.2190467847333861
#>     Attrib V2    -0.07055755768402217
#>     Attrib V20    0.43297896591973306
#>     Attrib V21    0.4314254458122349
#>     Attrib V22    0.4465695879349826
#>     Attrib V23    0.31324713855401065
#>     Attrib V24    0.3546723543863091
#>     Attrib V25    -0.305969436821781
#>     Attrib V26    -0.4922928017236076
#>     Attrib V27    -0.48606212654835135
#>     Attrib V28    -0.39288335081039827
#>     Attrib V29    -1.0827808653788105
#>     Attrib V3    -0.06766375902134207
#>     Attrib V30    0.22791261724661155
#>     Attrib V31    -1.074498821023332
#>     Attrib V32    -0.05945038632756141
#>     Attrib V33    0.8038443693040322
#>     Attrib V34    0.039285651865722505
#>     Attrib V35    -0.06169800314204992
#>     Attrib V36    -0.8658915578549681
#>     Attrib V37    -1.148429018414732
#>     Attrib V38    -0.3648759541803199
#>     Attrib V39    -0.035954656570920354
#>     Attrib V4    0.23517189973744457
#>     Attrib V40    -0.03255469947532727
#>     Attrib V41    0.022207963857964443
#>     Attrib V42    0.6611944684445293
#>     Attrib V43    0.3729474540106294
#>     Attrib V44    0.14251235706139817
#>     Attrib V45    -0.12667240612562122
#>     Attrib V46    -0.10713797413417006
#>     Attrib V47    -0.33720995666545606
#>     Attrib V48    0.5332828942332396
#>     Attrib V49    0.47960701715866594
#>     Attrib V5    -0.4375381787001449
#>     Attrib V50    -1.027302416672961
#>     Attrib V51    0.3100939492503051
#>     Attrib V52    0.17167875690201576
#>     Attrib V53    0.28378343599572964
#>     Attrib V54    0.8910601294701844
#>     Attrib V55    -0.6740555187674093
#>     Attrib V56    0.03752616454278172
#>     Attrib V57    -0.14605108469430733
#>     Attrib V58    0.3628681207698143
#>     Attrib V59    0.8866048818842082
#>     Attrib V6    -0.20979461579259212
#>     Attrib V60    0.7797194040778637
#>     Attrib V7    0.09083252489645591
#>     Attrib V8    0.5728467826137964
#>     Attrib V9    0.7348204854399648
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.4236727900652483
#>     Attrib V1    -0.08305403867461046
#>     Attrib V10    -0.6969506208467389
#>     Attrib V11    -1.3651445069677928
#>     Attrib V12    -0.8649246638849694
#>     Attrib V13    -0.820858999464264
#>     Attrib V14    0.07559845066699222
#>     Attrib V15    0.27266170379711735
#>     Attrib V16    0.47955714997987586
#>     Attrib V17    0.5623469176965943
#>     Attrib V18    0.5445554156228202
#>     Attrib V19    0.31849593896853495
#>     Attrib V2    -0.4333188712609639
#>     Attrib V20    0.2921010698280852
#>     Attrib V21    0.01245038936470231
#>     Attrib V22    -0.7466703070963733
#>     Attrib V23    -1.7558931506203608
#>     Attrib V24    -0.9053082710541539
#>     Attrib V25    0.7875934144869351
#>     Attrib V26    -0.5017001687005289
#>     Attrib V27    -1.6185716496511053
#>     Attrib V28    -2.09253936526951
#>     Attrib V29    -1.8518167670670758
#>     Attrib V3    0.13036462317902564
#>     Attrib V30    -1.2306243669265562
#>     Attrib V31    0.25373067584340614
#>     Attrib V32    0.5375724168801566
#>     Attrib V33    0.456466512624344
#>     Attrib V34    0.6173069094588018
#>     Attrib V35    -0.03884477164277455
#>     Attrib V36    1.04219192422806
#>     Attrib V37    0.011627244666222487
#>     Attrib V38    0.11677422992129528
#>     Attrib V39    -0.46812142325933914
#>     Attrib V4    -0.20938474115789132
#>     Attrib V40    -0.6091530287771114
#>     Attrib V41    -0.6017375066420533
#>     Attrib V42    0.16162227489546785
#>     Attrib V43    -0.0773738036746538
#>     Attrib V44    -0.2877869546006958
#>     Attrib V45    -0.2738162348495109
#>     Attrib V46    -1.069991546784741
#>     Attrib V47    -0.5207757228473148
#>     Attrib V48    -1.0215677783900077
#>     Attrib V49    -1.4695072541862597
#>     Attrib V5    -0.5942430302095839
#>     Attrib V50    0.8379406584662958
#>     Attrib V51    -1.6737155520049394
#>     Attrib V52    -1.7927814213026554
#>     Attrib V53    -1.2787557131178495
#>     Attrib V54    -0.16827775932686784
#>     Attrib V55    -0.31174817286644557
#>     Attrib V56    0.956991438727556
#>     Attrib V57    1.002750965304267
#>     Attrib V58    -0.23662482350843272
#>     Attrib V59    0.494631289032103
#>     Attrib V6    -0.636591684132054
#>     Attrib V60    0.637929755832089
#>     Attrib V7    1.060012005709074
#>     Attrib V8    0.49143763074190744
#>     Attrib V9    -1.037350268789877
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.03160089508222133
#>     Attrib V1    0.2958549390196559
#>     Attrib V10    -0.10545701509454651
#>     Attrib V11    0.15637094032497817
#>     Attrib V12    0.092074326390824
#>     Attrib V13    -0.2528245331335599
#>     Attrib V14    -0.09123706389913827
#>     Attrib V15    0.05297462928444367
#>     Attrib V16    0.21895868449770434
#>     Attrib V17    0.13204715981578896
#>     Attrib V18    -0.040946858410399696
#>     Attrib V19    0.04253896212690422
#>     Attrib V2    -0.00997157889814782
#>     Attrib V20    0.2475182405784828
#>     Attrib V21    0.1348454637516428
#>     Attrib V22    0.07033002475872399
#>     Attrib V23    -0.06133257018363226
#>     Attrib V24    0.06774915407431784
#>     Attrib V25    -0.16689715302202285
#>     Attrib V26    -0.3873267540731889
#>     Attrib V27    -0.2719222109278525
#>     Attrib V28    -0.23178324340248593
#>     Attrib V29    -0.43275044667932644
#>     Attrib V3    0.043822302833259316
#>     Attrib V30    -0.0038972692733809052
#>     Attrib V31    -0.5839317773671051
#>     Attrib V32    -0.15083731067890746
#>     Attrib V33    0.37865223517522284
#>     Attrib V34    0.1523429804609783
#>     Attrib V35    0.1285756462868204
#>     Attrib V36    -0.29664198204538855
#>     Attrib V37    -0.4058449127808588
#>     Attrib V38    -0.1180492343596541
#>     Attrib V39    0.015157937057659006
#>     Attrib V4    0.17563611847409524
#>     Attrib V40    -0.004684985019794337
#>     Attrib V41    -0.029778702862859368
#>     Attrib V42    0.14321739138541575
#>     Attrib V43    0.1213701759661457
#>     Attrib V44    -0.0561662576866465
#>     Attrib V45    -0.03993753116306305
#>     Attrib V46    -0.03334643717838499
#>     Attrib V47    -0.11926414361456825
#>     Attrib V48    0.2264213959437982
#>     Attrib V49    0.17141527284115043
#>     Attrib V5    -0.15190470294400826
#>     Attrib V50    -0.4023535607538225
#>     Attrib V51    0.18131846479491914
#>     Attrib V52    0.08965704626724935
#>     Attrib V53    0.20594618359156475
#>     Attrib V54    0.5270675735425338
#>     Attrib V55    -0.19059096724919494
#>     Attrib V56    0.05414719424634394
#>     Attrib V57    0.051454502268211716
#>     Attrib V58    0.16379375294815202
#>     Attrib V59    0.506674411962271
#>     Attrib V6    -0.08790553591410032
#>     Attrib V60    0.5615255708294754
#>     Attrib V7    0.04727703770833159
#>     Attrib V8    0.1331147876777352
#>     Attrib V9    0.20614018550116345
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.18846546704452102
#>     Attrib V1    0.08740121935159882
#>     Attrib V10    0.09305745004408651
#>     Attrib V11    0.02224253367995428
#>     Attrib V12    0.04916313476186672
#>     Attrib V13    0.0825090704836498
#>     Attrib V14    0.08186132859033692
#>     Attrib V15    0.06512580331549689
#>     Attrib V16    0.05877483705081844
#>     Attrib V17    0.12013692771308633
#>     Attrib V18    0.08215141401915836
#>     Attrib V19    0.007356349440109626
#>     Attrib V2    0.11110797947343493
#>     Attrib V20    -0.019752185125454666
#>     Attrib V21    0.030845925051962396
#>     Attrib V22    -0.015272025023402476
#>     Attrib V23    -0.012602316606026094
#>     Attrib V24    -0.07354336130351186
#>     Attrib V25    1.750411231894156E-4
#>     Attrib V26    -1.848084695724211E-4
#>     Attrib V27    -0.06121985177260106
#>     Attrib V28    -0.05325685998615257
#>     Attrib V29    -0.10516619706485944
#>     Attrib V3    0.08009311370506846
#>     Attrib V30    -0.03279547330929866
#>     Attrib V31    0.06813631046170507
#>     Attrib V32    0.017966168292529373
#>     Attrib V33    0.04327390303407871
#>     Attrib V34    0.07643228491193604
#>     Attrib V35    0.13953183142243591
#>     Attrib V36    0.10183649760446732
#>     Attrib V37    0.14414456239197607
#>     Attrib V38    0.022113360521603703
#>     Attrib V39    0.10195174638857728
#>     Attrib V4    0.1257552786506823
#>     Attrib V40    0.0916645486884114
#>     Attrib V41    0.06542807314131288
#>     Attrib V42    0.053086485012672616
#>     Attrib V43    0.01834138567429848
#>     Attrib V44    0.006723622027865077
#>     Attrib V45    0.03040682473167808
#>     Attrib V46    0.03924744628899307
#>     Attrib V47    0.04077831365538471
#>     Attrib V48    0.07036708587693234
#>     Attrib V49    0.025410844415510205
#>     Attrib V5    0.04987583306559367
#>     Attrib V50    0.08571322580046097
#>     Attrib V51    0.0454448469157099
#>     Attrib V52    0.048424137281904145
#>     Attrib V53    0.052261695554876246
#>     Attrib V54    0.030055139142842944
#>     Attrib V55    0.053253014234731416
#>     Attrib V56    0.15832464625564052
#>     Attrib V57    0.07789001997961197
#>     Attrib V58    0.10964013085256386
#>     Attrib V59    0.08994958403027273
#>     Attrib V6    0.0684675463806274
#>     Attrib V60    0.0987866183331816
#>     Attrib V7    0.00387349841892229
#>     Attrib V8    0.043904142311489126
#>     Attrib V9    0.048572147008141456
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.06724357966494489
#>     Attrib V1    0.43727081566441556
#>     Attrib V10    -0.1797014972396718
#>     Attrib V11    0.058261552937297456
#>     Attrib V12    -0.0367518448322018
#>     Attrib V13    -0.3772773279188109
#>     Attrib V14    -0.17486784029643332
#>     Attrib V15    0.11148405090024321
#>     Attrib V16    0.3649799465959105
#>     Attrib V17    0.27490031412231963
#>     Attrib V18    -0.004028016643361836
#>     Attrib V19    0.11133271256667694
#>     Attrib V2    0.06187982679437116
#>     Attrib V20    0.342171505812387
#>     Attrib V21    0.12423202187427344
#>     Attrib V22    0.06590830214933126
#>     Attrib V23    -0.06619991002456524
#>     Attrib V24    0.014974867378325466
#>     Attrib V25    -0.3294640400248601
#>     Attrib V26    -0.5349796381708173
#>     Attrib V27    -0.519275571974467
#>     Attrib V28    -0.4423588726797646
#>     Attrib V29    -0.7128920370428017
#>     Attrib V3    0.008021528056042983
#>     Attrib V30    -0.002945098461626701
#>     Attrib V31    -0.7357317653665718
#>     Attrib V32    -0.22078513483163126
#>     Attrib V33    0.4705506184081597
#>     Attrib V34    0.17290924723676088
#>     Attrib V35    0.13002771196163054
#>     Attrib V36    -0.36339390147327477
#>     Attrib V37    -0.5290958187100417
#>     Attrib V38    -0.10725983169824235
#>     Attrib V39    -0.014118897150735039
#>     Attrib V4    0.26433600720300965
#>     Attrib V40    -0.006594270030760458
#>     Attrib V41    -0.11238975809959298
#>     Attrib V42    0.1830730925607686
#>     Attrib V43    0.15116744107176835
#>     Attrib V44    0.046926787601251706
#>     Attrib V45    -0.16209883039935896
#>     Attrib V46    -0.10631231520452096
#>     Attrib V47    -0.23320191293296028
#>     Attrib V48    0.1983783419419787
#>     Attrib V49    0.16074594460113834
#>     Attrib V5    -0.22117422384544191
#>     Attrib V50    -0.508064871390226
#>     Attrib V51    0.08029262851627965
#>     Attrib V52    -0.07585389123342769
#>     Attrib V53    0.22532514271047338
#>     Attrib V54    0.7053166916841974
#>     Attrib V55    -0.3373790088231535
#>     Attrib V56    0.0940240754621172
#>     Attrib V57    0.1465305700374272
#>     Attrib V58    0.18716079191061363
#>     Attrib V59    0.6601543228294013
#>     Attrib V6    -0.16461860080485852
#>     Attrib V60    0.717362834232465
#>     Attrib V7    0.1514268330907051
#>     Attrib V8    0.18613720937941777
#>     Attrib V9    0.24417412455418708
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.07417606746770682
#>     Attrib V1    0.38450975622755607
#>     Attrib V10    -0.1894624284589242
#>     Attrib V11    -0.004648531492605727
#>     Attrib V12    -0.059131241793234424
#>     Attrib V13    -0.32936508072339576
#>     Attrib V14    -0.023809227810557724
#>     Attrib V15    0.15420823226451974
#>     Attrib V16    0.324516384248933
#>     Attrib V17    0.15225056795878067
#>     Attrib V18    0.03349822983230879
#>     Attrib V19    0.04953962752917144
#>     Attrib V2    0.014944550472455196
#>     Attrib V20    0.2582704112734318
#>     Attrib V21    0.16265261017998353
#>     Attrib V22    0.011085611742690389
#>     Attrib V23    -0.046069490884574384
#>     Attrib V24    -0.07675851646315004
#>     Attrib V25    -0.3759006290294554
#>     Attrib V26    -0.4709563560069756
#>     Attrib V27    -0.3339420330576058
#>     Attrib V28    -0.18353085627659227
#>     Attrib V29    -0.3816636123891492
#>     Attrib V3    0.07391624841191446
#>     Attrib V30    0.05864188691389955
#>     Attrib V31    -0.6827250668588304
#>     Attrib V32    -0.25845438224103423
#>     Attrib V33    0.3152006766036438
#>     Attrib V34    0.10202834519163068
#>     Attrib V35    0.0925055812383026
#>     Attrib V36    -0.18415839674847456
#>     Attrib V37    -0.34847540418891304
#>     Attrib V38    -0.10406819938485594
#>     Attrib V39    0.03445338214155397
#>     Attrib V4    0.21297450823629108
#>     Attrib V40    -0.05777439573887157
#>     Attrib V41    -0.11481751930446313
#>     Attrib V42    0.1556951665193959
#>     Attrib V43    0.03867577411938668
#>     Attrib V44    0.043736810731962034
#>     Attrib V45    -0.04071967804826143
#>     Attrib V46    -0.049322284935686175
#>     Attrib V47    -0.1648936704986417
#>     Attrib V48    0.14292249966851991
#>     Attrib V49    0.19655453844179868
#>     Attrib V5    -0.10298578372988235
#>     Attrib V50    -0.3700508219882761
#>     Attrib V51    0.14549573298048807
#>     Attrib V52    0.035018550819337045
#>     Attrib V53    0.20256633429149937
#>     Attrib V54    0.4603889509327026
#>     Attrib V55    -0.25867394287056866
#>     Attrib V56    0.07545281602281191
#>     Attrib V57    0.12276666171552943
#>     Attrib V58    0.2535592529652752
#>     Attrib V59    0.5267363823062615
#>     Attrib V6    -0.07722717096273021
#>     Attrib V60    0.5527197442711577
#>     Attrib V7    0.090636762181347
#>     Attrib V8    0.14866837808246497
#>     Attrib V9    0.1764126984044684
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
#>   0.115942 
```
