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
#>     Threshold    -1.4036013215370058
#>     Node 2    1.6548155977242078
#>     Node 3    1.8995329601230266
#>     Node 4    0.7336813971918035
#>     Node 5    -1.338094154249899
#>     Node 6    1.0807873331666449
#>     Node 7    3.067686247734652
#>     Node 8    0.6661900087769342
#>     Node 9    4.394759200709428
#>     Node 10    -1.868447297942594
#>     Node 11    1.6405795007385005
#>     Node 12    1.1629300321009763
#>     Node 13    -1.2424457081230595
#>     Node 14    1.9236648075287668
#>     Node 15    -2.8396815543112255
#>     Node 16    1.3621193893673136
#>     Node 17    0.7084667537012302
#>     Node 18    -1.4725931655439901
#>     Node 19    1.7936341924543624
#>     Node 20    1.1422803685379743
#>     Node 21    -3.924128037580894
#>     Node 22    2.582852664288456
#>     Node 23    2.2022045362615676
#>     Node 24    0.24303100142175757
#>     Node 25    3.659132816580279
#>     Node 26    -1.7797054798344951
#>     Node 27    2.0489104555912547
#>     Node 28    -1.0461137961075275
#>     Node 29    1.0510022982694884
#>     Node 30    0.23622147199506896
#>     Node 31    2.6201483573901023
#>     Node 32    0.5570153471904128
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    1.4025826015107987
#>     Node 2    -1.706855693115148
#>     Node 3    -1.8772381890847034
#>     Node 4    -0.6901010716686908
#>     Node 5    1.330662812428894
#>     Node 6    -1.0581043825011027
#>     Node 7    -3.053379340364715
#>     Node 8    -0.6949357890781741
#>     Node 9    -4.388682889799564
#>     Node 10    1.814535313211835
#>     Node 11    -1.6034994327778735
#>     Node 12    -1.2311269837628853
#>     Node 13    1.3025777933983098
#>     Node 14    -1.8500471197201735
#>     Node 15    2.8562896199868186
#>     Node 16    -1.3765785483538207
#>     Node 17    -0.6756158747532488
#>     Node 18    1.5263917305737693
#>     Node 19    -1.779264991169855
#>     Node 20    -1.139681005343204
#>     Node 21    3.95757504993905
#>     Node 22    -2.6276680130071988
#>     Node 23    -2.248940038573596
#>     Node 24    -0.25947915187590676
#>     Node 25    -3.6358794645414356
#>     Node 26    1.7099391604879943
#>     Node 27    -2.0867284963656543
#>     Node 28    1.010334358498322
#>     Node 29    -1.0753456697381907
#>     Node 30    -0.16295844688306566
#>     Node 31    -2.569414627327281
#>     Node 32    -0.5783696401671753
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.31408504685724764
#>     Attrib V1    0.18784213969924501
#>     Attrib V10    0.555846483509207
#>     Attrib V11    0.603101205230438
#>     Attrib V12    0.732764493113374
#>     Attrib V13    0.3026294752509131
#>     Attrib V14    -0.4632373391598361
#>     Attrib V15    -0.3408023683223767
#>     Attrib V16    -0.4355273022046267
#>     Attrib V17    -0.5019145624544729
#>     Attrib V18    -0.2934848273636319
#>     Attrib V19    -0.2514355448206425
#>     Attrib V2    -0.03292041022121632
#>     Attrib V20    -0.14502342303344565
#>     Attrib V21    0.12354662713678848
#>     Attrib V22    0.17952854068216814
#>     Attrib V23    0.25785994071085927
#>     Attrib V24    0.5841621152759586
#>     Attrib V25    0.4548333199210849
#>     Attrib V26    0.3869766942144565
#>     Attrib V27    0.4793615073092852
#>     Attrib V28    0.6593805627631252
#>     Attrib V29    0.060397269179642075
#>     Attrib V3    -0.15415927214013675
#>     Attrib V30    -0.09466522061564593
#>     Attrib V31    -0.5588972482055934
#>     Attrib V32    0.4457634076848887
#>     Attrib V33    -0.05326049975765944
#>     Attrib V34    0.10306638810210025
#>     Attrib V35    0.5595958103619681
#>     Attrib V36    -0.055862250055897525
#>     Attrib V37    -0.31452763297085856
#>     Attrib V38    0.13088731543956478
#>     Attrib V39    0.0511955921360169
#>     Attrib V4    -0.0109370536899058
#>     Attrib V40    -0.2392610335182857
#>     Attrib V41    0.1246258508863795
#>     Attrib V42    -0.02525398451317657
#>     Attrib V43    -0.07459497154016773
#>     Attrib V44    -0.10955465415302061
#>     Attrib V45    0.2285046724772065
#>     Attrib V46    0.5187201507935022
#>     Attrib V47    0.44201253137973745
#>     Attrib V48    0.8994660730895828
#>     Attrib V49    0.6954089109815345
#>     Attrib V5    0.13604776362651602
#>     Attrib V50    -0.24927821166297115
#>     Attrib V51    0.5321207907477001
#>     Attrib V52    0.3940565166008021
#>     Attrib V53    0.7255272810852618
#>     Attrib V54    0.31811516900748904
#>     Attrib V55    -0.2198733844180424
#>     Attrib V56    -0.21672130640461007
#>     Attrib V57    -0.23795187824218061
#>     Attrib V58    -0.06756676726323728
#>     Attrib V59    -0.08986624624504101
#>     Attrib V6    -0.2862585375399193
#>     Attrib V60    0.3780584517426118
#>     Attrib V7    -0.351381495046172
#>     Attrib V8    -0.5959424696476796
#>     Attrib V9    0.49735154840541296
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.08351959000421637
#>     Attrib V1    0.3590346528247891
#>     Attrib V10    -0.19266194352078092
#>     Attrib V11    -0.5819535542473614
#>     Attrib V12    -0.5069697394223264
#>     Attrib V13    -0.11575406761882992
#>     Attrib V14    0.0704002762025199
#>     Attrib V15    0.6306966813204843
#>     Attrib V16    0.2238039859809569
#>     Attrib V17    -0.21686408343860025
#>     Attrib V18    -0.23741136521719997
#>     Attrib V19    0.20603011893904458
#>     Attrib V2    0.02353971637787755
#>     Attrib V20    0.23963203076842648
#>     Attrib V21    0.3271002162124065
#>     Attrib V22    0.28667749711845725
#>     Attrib V23    0.28690478796296737
#>     Attrib V24    0.3657620066992079
#>     Attrib V25    -0.3407559250843799
#>     Attrib V26    -0.8383654493602666
#>     Attrib V27    -0.7362863801174758
#>     Attrib V28    -0.0063195662650382825
#>     Attrib V29    -0.08132285083193075
#>     Attrib V3    0.020302547203890686
#>     Attrib V30    -0.17182696189669133
#>     Attrib V31    -0.987568630011179
#>     Attrib V32    0.712931713943232
#>     Attrib V33    0.400322159135397
#>     Attrib V34    -0.22142053892803637
#>     Attrib V35    0.024189547115838192
#>     Attrib V36    -0.36782563773689864
#>     Attrib V37    -0.7979326953266174
#>     Attrib V38    -0.03983595860870798
#>     Attrib V39    0.036183995631609456
#>     Attrib V4    0.2228186536404854
#>     Attrib V40    -0.5579523869097692
#>     Attrib V41    -0.1550645996096641
#>     Attrib V42    0.5939537371852511
#>     Attrib V43    0.11337987706646178
#>     Attrib V44    0.15301944624990732
#>     Attrib V45    0.283206822674415
#>     Attrib V46    0.22369296945939088
#>     Attrib V47    -0.07131581952304744
#>     Attrib V48    0.18599393505121578
#>     Attrib V49    0.378211799919109
#>     Attrib V5    -0.2858450675978119
#>     Attrib V50    -0.6839821512540205
#>     Attrib V51    0.09146039888054504
#>     Attrib V52    -0.024246918709495534
#>     Attrib V53    0.20232229015685915
#>     Attrib V54    0.48980618542272425
#>     Attrib V55    -0.04386928138391326
#>     Attrib V56    0.5487918134368076
#>     Attrib V57    -0.09177074435276232
#>     Attrib V58    0.7403705911051468
#>     Attrib V59    0.15606990075409874
#>     Attrib V6    -0.656108490987214
#>     Attrib V60    0.5120954144631197
#>     Attrib V7    -0.1282439987410573
#>     Attrib V8    -0.13518235677599233
#>     Attrib V9    0.2462283130314796
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.017549287940186068
#>     Attrib V1    0.22543165415869548
#>     Attrib V10    -0.12500062544418217
#>     Attrib V11    -0.12015304366990213
#>     Attrib V12    -0.0731582973886103
#>     Attrib V13    -0.04046878513527765
#>     Attrib V14    0.05863980657962006
#>     Attrib V15    0.22832203480373675
#>     Attrib V16    0.020532078859044053
#>     Attrib V17    -0.0967103059489335
#>     Attrib V18    -0.1165329985952165
#>     Attrib V19    -0.060493663669405943
#>     Attrib V2    -0.0029093450369864176
#>     Attrib V20    -0.007148722352501848
#>     Attrib V21    0.04825310566313142
#>     Attrib V22    -0.13919438681516863
#>     Attrib V23    -0.11260571668127725
#>     Attrib V24    0.007829313659271583
#>     Attrib V25    -0.1767890732801965
#>     Attrib V26    -0.2737918235785424
#>     Attrib V27    -0.23146915650199135
#>     Attrib V28    0.05410087429597087
#>     Attrib V29    0.008449417592694831
#>     Attrib V3    0.02754453987768276
#>     Attrib V30    -0.17248510185376234
#>     Attrib V31    -0.4625611120428105
#>     Attrib V32    0.14703384513023485
#>     Attrib V33    0.17207856691432336
#>     Attrib V34    0.07988968588475479
#>     Attrib V35    0.1516978953314192
#>     Attrib V36    -0.02779849350858142
#>     Attrib V37    -0.17414520554247528
#>     Attrib V38    0.07978948858409594
#>     Attrib V39    0.09818426255556975
#>     Attrib V4    0.1097271768447469
#>     Attrib V40    -0.18069257170717934
#>     Attrib V41    -0.14231739767338736
#>     Attrib V42    0.10988055292643029
#>     Attrib V43    -0.02726667857359539
#>     Attrib V44    -0.002042266370442482
#>     Attrib V45    0.14871918998548395
#>     Attrib V46    0.05651429253462763
#>     Attrib V47    -0.028002068086849775
#>     Attrib V48    0.25123886251559646
#>     Attrib V49    0.2614258216400841
#>     Attrib V5    -0.012938436147562947
#>     Attrib V50    -0.09089217910290864
#>     Attrib V51    0.1325842074518428
#>     Attrib V52    0.04865437268978529
#>     Attrib V53    0.2291700045593191
#>     Attrib V54    0.26098956266156736
#>     Attrib V55    0.08363569671220333
#>     Attrib V56    0.1835258360656659
#>     Attrib V57    0.17676023799955823
#>     Attrib V58    0.25228024064013005
#>     Attrib V59    0.20724196759280583
#>     Attrib V6    -0.2764152961659168
#>     Attrib V60    0.29455180848828005
#>     Attrib V7    -0.0766583042097357
#>     Attrib V8    -0.20451100479075898
#>     Attrib V9    0.035449073437189095
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.15881317108284426
#>     Attrib V1    0.06703650407336677
#>     Attrib V10    0.308869277673087
#>     Attrib V11    0.5131973307747137
#>     Attrib V12    0.3873725925213597
#>     Attrib V13    0.26594135694778714
#>     Attrib V14    0.23926109315590208
#>     Attrib V15    0.13086583211954061
#>     Attrib V16    0.2533270736053737
#>     Attrib V17    0.5170629989440424
#>     Attrib V18    0.38838372313050307
#>     Attrib V19    0.14397028909324777
#>     Attrib V2    0.17812261754617376
#>     Attrib V20    0.05904212678797759
#>     Attrib V21    -0.032432017482778984
#>     Attrib V22    -0.07594022776237565
#>     Attrib V23    -0.18136812956301424
#>     Attrib V24    -0.35402309308782254
#>     Attrib V25    0.037784178326965664
#>     Attrib V26    0.1577685272574364
#>     Attrib V27    0.13918908298094898
#>     Attrib V28    -0.15387596557840702
#>     Attrib V29    -0.16799548055567745
#>     Attrib V3    0.18405631093117114
#>     Attrib V30    0.09293418578205671
#>     Attrib V31    0.439506248960985
#>     Attrib V32    -0.20507026515775262
#>     Attrib V33    0.008294060283880692
#>     Attrib V34    0.11287152977465073
#>     Attrib V35    -0.05224875514134739
#>     Attrib V36    0.031163870441879713
#>     Attrib V37    0.09186162803517266
#>     Attrib V38    -0.12616609282225622
#>     Attrib V39    -0.050264798091915384
#>     Attrib V4    0.03498345686250967
#>     Attrib V40    0.24874089625664914
#>     Attrib V41    -0.05609143686889538
#>     Attrib V42    -0.2506103821227125
#>     Attrib V43    -0.11273997828340653
#>     Attrib V44    -0.16473030087906917
#>     Attrib V45    -0.31657294391018115
#>     Attrib V46    -0.2654732778711541
#>     Attrib V47    -0.027843046792307063
#>     Attrib V48    -0.0804579066866613
#>     Attrib V49    -0.17643472967558263
#>     Attrib V5    0.2784842708581088
#>     Attrib V50    0.3117161200823397
#>     Attrib V51    -0.01695405259835386
#>     Attrib V52    -0.05975649530410931
#>     Attrib V53    -0.20004745780906452
#>     Attrib V54    -0.005095913097448688
#>     Attrib V55    0.2629514982380612
#>     Attrib V56    -0.042791438760429096
#>     Attrib V57    0.19470588098789005
#>     Attrib V58    -0.19021889598932887
#>     Attrib V59    0.07050622002872896
#>     Attrib V6    0.43519030929678204
#>     Attrib V60    -0.06189913803474995
#>     Attrib V7    0.2867552034448551
#>     Attrib V8    0.2552440554339661
#>     Attrib V9    0.025445220563386443
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.15143389691524953
#>     Attrib V1    0.385102860662597
#>     Attrib V10    -0.28579079429056103
#>     Attrib V11    -0.28756477158546445
#>     Attrib V12    -0.16458263119687339
#>     Attrib V13    -0.1300647975006079
#>     Attrib V14    0.04277272808166635
#>     Attrib V15    0.36262859533214975
#>     Attrib V16    0.20489582011161916
#>     Attrib V17    -0.06567932452968576
#>     Attrib V18    -0.002667294041832889
#>     Attrib V19    0.08953464035240136
#>     Attrib V2    0.026791049276550093
#>     Attrib V20    0.14136756043643942
#>     Attrib V21    0.17838852182134
#>     Attrib V22    -0.004928036271611483
#>     Attrib V23    0.01121283682874649
#>     Attrib V24    0.1963056310090943
#>     Attrib V25    -0.17854003015117892
#>     Attrib V26    -0.5062450421172578
#>     Attrib V27    -0.3982974079306652
#>     Attrib V28    -0.08295418814890021
#>     Attrib V29    -0.048291705048706425
#>     Attrib V3    0.005427247952346816
#>     Attrib V30    -0.18638283551582158
#>     Attrib V31    -0.6908136425248249
#>     Attrib V32    0.276211969034062
#>     Attrib V33    0.2128345185606058
#>     Attrib V34    -0.029292116493983996
#>     Attrib V35    0.12195121450967783
#>     Attrib V36    -0.1495149278438452
#>     Attrib V37    -0.3648545700785395
#>     Attrib V38    0.08431838663780836
#>     Attrib V39    0.07713279587445311
#>     Attrib V4    0.17692403005150595
#>     Attrib V40    -0.3642331143886341
#>     Attrib V41    -0.1216613551705225
#>     Attrib V42    0.30296473984964256
#>     Attrib V43    0.0506428815487778
#>     Attrib V44    0.023250024752056304
#>     Attrib V45    0.15838906795556082
#>     Attrib V46    0.09194316924641863
#>     Attrib V47    -0.10849974649700372
#>     Attrib V48    0.1248910747963553
#>     Attrib V49    0.1928436899018978
#>     Attrib V5    -0.1511752036135854
#>     Attrib V50    -0.3025392422899194
#>     Attrib V51    0.06664221351614454
#>     Attrib V52    -0.06301268154454084
#>     Attrib V53    0.21034010042879162
#>     Attrib V54    0.4137904023544851
#>     Attrib V55    0.05932648202500282
#>     Attrib V56    0.35225880195570475
#>     Attrib V57    0.128765979199
#>     Attrib V58    0.430799935853237
#>     Attrib V59    0.3208278444335463
#>     Attrib V6    -0.3576217931875401
#>     Attrib V60    0.4715499144126858
#>     Attrib V7    -0.08468167704049326
#>     Attrib V8    -0.17619071804696135
#>     Attrib V9    0.04163568033649861
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.4952536831654522
#>     Attrib V1    0.30439237587966483
#>     Attrib V10    0.9236405822992754
#>     Attrib V11    1.0332306256372836
#>     Attrib V12    1.1812557841374853
#>     Attrib V13    0.743000557121796
#>     Attrib V14    -0.4164635034250482
#>     Attrib V15    -0.3075415397304993
#>     Attrib V16    -0.41177297540814883
#>     Attrib V17    -0.6788046425135099
#>     Attrib V18    -0.5322118024786401
#>     Attrib V19    -0.5708489773924564
#>     Attrib V2    0.25533282774091604
#>     Attrib V20    -0.3231795535859983
#>     Attrib V21    0.10873233577530539
#>     Attrib V22    0.20890520424268122
#>     Attrib V23    0.3738087862496577
#>     Attrib V24    0.6234145209648734
#>     Attrib V25    0.5109783832804489
#>     Attrib V26    1.0428954244172368
#>     Attrib V27    1.348324120183795
#>     Attrib V28    1.4763139850284537
#>     Attrib V29    0.8314766568823808
#>     Attrib V3    -0.18787101017169358
#>     Attrib V30    -0.03204987548241179
#>     Attrib V31    -0.4895285762940052
#>     Attrib V32    0.063106162185097
#>     Attrib V33    -0.6217000346765134
#>     Attrib V34    -0.25178903153668625
#>     Attrib V35    0.40027500602395116
#>     Attrib V36    -0.2987829264345093
#>     Attrib V37    0.1016103999618458
#>     Attrib V38    0.05474022427259966
#>     Attrib V39    0.04590270128384035
#>     Attrib V4    -0.1621421708776228
#>     Attrib V40    0.08192706740463497
#>     Attrib V41    0.6207669731394261
#>     Attrib V42    -0.15965398537220632
#>     Attrib V43    -0.2422709671339976
#>     Attrib V44    -0.23241477797939147
#>     Attrib V45    0.23567275692560494
#>     Attrib V46    0.9608329112165054
#>     Attrib V47    0.8713279682028047
#>     Attrib V48    1.09716259674582
#>     Attrib V49    0.7874277701398766
#>     Attrib V5    0.32706299635825586
#>     Attrib V50    0.005801430329530392
#>     Attrib V51    0.9504991051737348
#>     Attrib V52    0.8113826964908797
#>     Attrib V53    1.3044292712338215
#>     Attrib V54    0.1816450268873894
#>     Attrib V55    -0.2580154546775702
#>     Attrib V56    -0.39381324177777133
#>     Attrib V57    -0.1871635040147613
#>     Attrib V58    -0.29165232368489324
#>     Attrib V59    -0.0793568803814032
#>     Attrib V6    0.22028060783838935
#>     Attrib V60    0.5567141797712588
#>     Attrib V7    -0.27643486589616123
#>     Attrib V8    -0.8338598565650787
#>     Attrib V9    0.6654729002452096
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.044346735606530206
#>     Attrib V1    0.24191975255113868
#>     Attrib V10    -0.020113335986388908
#>     Attrib V11    -0.001322231486136737
#>     Attrib V12    -0.005638274023742451
#>     Attrib V13    -0.044285614370101825
#>     Attrib V14    -0.046274299898821133
#>     Attrib V15    0.09535862371520909
#>     Attrib V16    0.023899172474218248
#>     Attrib V17    -0.1359477466146199
#>     Attrib V18    -0.1686164681963001
#>     Attrib V19    -0.13048321127088508
#>     Attrib V2    0.052051949024121046
#>     Attrib V20    -0.13506273521780052
#>     Attrib V21    -0.08576340034510782
#>     Attrib V22    -0.21660461040106505
#>     Attrib V23    -0.18109287701275312
#>     Attrib V24    0.015607370029376394
#>     Attrib V25    -0.1012784758671304
#>     Attrib V26    -0.15661154104992445
#>     Attrib V27    -0.09976442240594652
#>     Attrib V28    0.08352187146269989
#>     Attrib V29    0.020788717400435603
#>     Attrib V3    0.013448210975673293
#>     Attrib V30    -0.11303928711643602
#>     Attrib V31    -0.377105148114759
#>     Attrib V32    0.14027136437639645
#>     Attrib V33    0.1821493185045406
#>     Attrib V34    0.11293895015635173
#>     Attrib V35    0.178508930861825
#>     Attrib V36    0.09288452886819382
#>     Attrib V37    -0.07261452939375959
#>     Attrib V38    0.1847335512661723
#>     Attrib V39    0.0946258221505126
#>     Attrib V4    0.1936028439446535
#>     Attrib V40    -0.15191838645134545
#>     Attrib V41    -0.11022951060109162
#>     Attrib V42    -0.04400782215342402
#>     Attrib V43    -0.03444205708938631
#>     Attrib V44    0.02277391384255973
#>     Attrib V45    0.11826133756600259
#>     Attrib V46    0.1482481617975093
#>     Attrib V47    0.06605963382493235
#>     Attrib V48    0.32417783610247636
#>     Attrib V49    0.27356842309186713
#>     Attrib V5    -0.0028807291199872804
#>     Attrib V50    -0.05128082808669012
#>     Attrib V51    0.12877929969058935
#>     Attrib V52    0.09392556276410796
#>     Attrib V53    0.2607627585048831
#>     Attrib V54    0.2832418816162018
#>     Attrib V55    0.05648984500932898
#>     Attrib V56    0.05152835695340083
#>     Attrib V57    0.25678341014431394
#>     Attrib V58    0.188974240400888
#>     Attrib V59    0.22710439527608242
#>     Attrib V6    -0.19532879213937562
#>     Attrib V60    0.3560314509108732
#>     Attrib V7    -0.03067066529852391
#>     Attrib V8    -0.16706065051253968
#>     Attrib V9    0.06264346405646612
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.342357146516718
#>     Attrib V1    -0.13419944842764034
#>     Attrib V10    1.3917913721816275
#>     Attrib V11    1.6031223742473175
#>     Attrib V12    1.7481977268071371
#>     Attrib V13    1.1709351407300015
#>     Attrib V14    -0.6073617833458674
#>     Attrib V15    -0.6599726792738055
#>     Attrib V16    -0.6453128251701029
#>     Attrib V17    -0.6848718629618668
#>     Attrib V18    -0.27160271626388477
#>     Attrib V19    -0.2566144005124321
#>     Attrib V2    0.18386275961109363
#>     Attrib V20    -0.212370228658323
#>     Attrib V21    0.017669407555028778
#>     Attrib V22    0.5080019096887707
#>     Attrib V23    1.265782067049995
#>     Attrib V24    1.592704326894461
#>     Attrib V25    1.3333326768716258
#>     Attrib V26    1.3644884769623289
#>     Attrib V27    1.232727867730279
#>     Attrib V28    0.9813245586461693
#>     Attrib V29    0.015198860043159818
#>     Attrib V3    -0.43361716800936556
#>     Attrib V30    -0.26651657453470107
#>     Attrib V31    -0.13956049994470016
#>     Attrib V32    0.4876666196837586
#>     Attrib V33    -0.6730940463991492
#>     Attrib V34    0.01917305456468368
#>     Attrib V35    0.8163082701253835
#>     Attrib V36    -0.4490319071547747
#>     Attrib V37    -0.5216694752988137
#>     Attrib V38    -0.2252895314095417
#>     Attrib V39    0.3987006768565254
#>     Attrib V4    -0.5728188278310761
#>     Attrib V40    0.5459952250435746
#>     Attrib V41    0.698520393754552
#>     Attrib V42    -0.4074779929092133
#>     Attrib V43    -0.26804709175227914
#>     Attrib V44    -0.2713460158713245
#>     Attrib V45    0.17722847794950372
#>     Attrib V46    1.1737430228768473
#>     Attrib V47    1.4183678237926574
#>     Attrib V48    1.899128158710213
#>     Attrib V49    1.5280862262146944
#>     Attrib V5    0.09953660749403663
#>     Attrib V50    0.014069609314421054
#>     Attrib V51    1.5115804430392363
#>     Attrib V52    1.2342466088775004
#>     Attrib V53    1.8602153901390757
#>     Attrib V54    0.0884152188815693
#>     Attrib V55    0.07576824734701094
#>     Attrib V56    -0.3789017391844606
#>     Attrib V57    -1.102107199516784
#>     Attrib V58    -0.2711042037312641
#>     Attrib V59    -0.7603644701779583
#>     Attrib V6    0.08548124666735725
#>     Attrib V60    -0.17062838930181112
#>     Attrib V7    -0.5583439953248096
#>     Attrib V8    -0.8707309650568025
#>     Attrib V9    1.1103014510057365
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.24466308647031354
#>     Attrib V1    -0.03362975723453619
#>     Attrib V10    -0.04952880997254367
#>     Attrib V11    0.23709150622043992
#>     Attrib V12    0.22059242908020793
#>     Attrib V13    0.10379237133002608
#>     Attrib V14    0.49051938873635714
#>     Attrib V15    0.031204638836990727
#>     Attrib V16    0.23527693424974333
#>     Attrib V17    0.5181325377429494
#>     Attrib V18    0.5417912244558607
#>     Attrib V19    0.06998530838721985
#>     Attrib V2    0.157745614820872
#>     Attrib V20    -0.0015322449677890122
#>     Attrib V21    -0.3643585137603234
#>     Attrib V22    -0.4882728097265454
#>     Attrib V23    -0.549279004668208
#>     Attrib V24    -0.5468095149571939
#>     Attrib V25    0.365802769556037
#>     Attrib V26    0.6111191059143057
#>     Attrib V27    0.41512977308242105
#>     Attrib V28    -0.3791861820635096
#>     Attrib V29    -0.2732805692242036
#>     Attrib V3    0.17189930311456358
#>     Attrib V30    -0.001165133129513085
#>     Attrib V31    0.8814607786870864
#>     Attrib V32    -0.8023400630372389
#>     Attrib V33    -0.2636630579479451
#>     Attrib V34    0.1745257555808617
#>     Attrib V35    -0.09775378415986949
#>     Attrib V36    0.3706431691563753
#>     Attrib V37    0.8611070234254368
#>     Attrib V38    0.0664631763923789
#>     Attrib V39    -0.13944454146562718
#>     Attrib V4    -0.17890251182471692
#>     Attrib V40    0.4071718923828285
#>     Attrib V41    -0.25005721268929854
#>     Attrib V42    -0.6958977251383397
#>     Attrib V43    -0.24019533661044912
#>     Attrib V44    -0.2844441095408178
#>     Attrib V45    -0.4904052737154631
#>     Attrib V46    -0.5598749242677351
#>     Attrib V47    -0.0989442551034148
#>     Attrib V48    -0.2604677454589312
#>     Attrib V49    -0.4609705959831255
#>     Attrib V5    0.06579690946364367
#>     Attrib V50    0.8991810103849321
#>     Attrib V51    -0.22791233749776535
#>     Attrib V52    -0.02911377374153536
#>     Attrib V53    -0.1286977807719044
#>     Attrib V54    -0.09860821235543502
#>     Attrib V55    0.28115150508845294
#>     Attrib V56    -0.19361470234186534
#>     Attrib V57    0.3493920373133978
#>     Attrib V58    -0.5146543413552747
#>     Attrib V59    -0.023446804326616454
#>     Attrib V6    0.5230501367562482
#>     Attrib V60    -0.42597641346163806
#>     Attrib V7    0.16326653235430233
#>     Attrib V8    0.12211391104341901
#>     Attrib V9    -0.4680330400765396
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.26145759617874775
#>     Attrib V1    0.20515623963540208
#>     Attrib V10    0.40667177083757594
#>     Attrib V11    0.5173568220497954
#>     Attrib V12    0.6284958293730759
#>     Attrib V13    0.19529202467713142
#>     Attrib V14    -0.2614007036915786
#>     Attrib V15    -0.21919250469248727
#>     Attrib V16    -0.324568827357023
#>     Attrib V17    -0.43034201388201454
#>     Attrib V18    -0.42619112931838665
#>     Attrib V19    -0.5221421293851634
#>     Attrib V2    -0.013381731871946256
#>     Attrib V20    -0.27969553751194365
#>     Attrib V21    -0.10192564126745002
#>     Attrib V22    -0.27173824777344374
#>     Attrib V23    -0.30961312631503907
#>     Attrib V24    -0.02151611153906039
#>     Attrib V25    0.06265483008438814
#>     Attrib V26    0.24220147612614928
#>     Attrib V27    0.586535469019563
#>     Attrib V28    0.8786566512737506
#>     Attrib V29    0.38163803339207214
#>     Attrib V3    -0.13964693322508867
#>     Attrib V30    -0.1079524112870379
#>     Attrib V31    -0.7318747025653687
#>     Attrib V32    0.04328788697056732
#>     Attrib V33    -0.05255398532556541
#>     Attrib V34    0.1680101763808297
#>     Attrib V35    0.5412611891481255
#>     Attrib V36    0.2101885955093092
#>     Attrib V37    0.15359045867588964
#>     Attrib V38    0.38014298983566136
#>     Attrib V39    0.17096605479509827
#>     Attrib V4    0.08507042887695507
#>     Attrib V40    -0.2144302202838649
#>     Attrib V41    -0.042653986127444275
#>     Attrib V42    -0.19602908561725269
#>     Attrib V43    -0.17345190150271847
#>     Attrib V44    -0.10199341426950319
#>     Attrib V45    0.3052509800688215
#>     Attrib V46    0.5109095274380849
#>     Attrib V47    0.4132289244503154
#>     Attrib V48    0.8143682373438264
#>     Attrib V49    0.5758847688905733
#>     Attrib V5    0.19675243184387833
#>     Attrib V50    0.02616096229881505
#>     Attrib V51    0.4467971826504064
#>     Attrib V52    0.316900415423878
#>     Attrib V53    0.5145479856562315
#>     Attrib V54    0.2548771197605084
#>     Attrib V55    -0.07703977099513135
#>     Attrib V56    -0.25279745207193444
#>     Attrib V57    0.17710172767393434
#>     Attrib V58    -0.004381734412585866
#>     Attrib V59    -0.050543034599534825
#>     Attrib V6    -0.04611887481885328
#>     Attrib V60    0.3629534439840467
#>     Attrib V7    -0.16898791926762838
#>     Attrib V8    -0.47283112135182365
#>     Attrib V9    0.359321792780276
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.3326122337164117
#>     Attrib V1    0.17159525991100996
#>     Attrib V10    0.0803590815938537
#>     Attrib V11    0.2782480370462896
#>     Attrib V12    0.2508876039001819
#>     Attrib V13    0.09148318802114076
#>     Attrib V14    -0.08239423252507055
#>     Attrib V15    -5.205509573894139E-4
#>     Attrib V16    -0.1274918737484676
#>     Attrib V17    -0.3488772840678471
#>     Attrib V18    -0.3416527861747163
#>     Attrib V19    -0.3124607508787737
#>     Attrib V2    -4.036306131083391E-4
#>     Attrib V20    -0.2871322029328351
#>     Attrib V21    -0.15871918175987162
#>     Attrib V22    -0.2992310003248555
#>     Attrib V23    -0.38108912732157696
#>     Attrib V24    -0.13148936080060292
#>     Attrib V25    -0.159961757333048
#>     Attrib V26    -0.03528888537326644
#>     Attrib V27    0.30218903801157787
#>     Attrib V28    0.5277310555290093
#>     Attrib V29    0.2715024102772368
#>     Attrib V3    -0.1502053730216463
#>     Attrib V30    -0.13342350667939398
#>     Attrib V31    -0.6175242114819233
#>     Attrib V32    0.15088221742789892
#>     Attrib V33    0.1311919020302846
#>     Attrib V34    0.13745964143671693
#>     Attrib V35    0.30838728304696467
#>     Attrib V36    0.00444543501190465
#>     Attrib V37    -0.1207673330389321
#>     Attrib V38    0.22931050818269
#>     Attrib V39    0.07858673555468801
#>     Attrib V4    0.12636645240138483
#>     Attrib V40    -0.2167091460391518
#>     Attrib V41    -0.11647821662306238
#>     Attrib V42    -0.12359300930594046
#>     Attrib V43    -0.0809124986915746
#>     Attrib V44    -0.1511340557062249
#>     Attrib V45    0.235570935175572
#>     Attrib V46    0.33809470874022696
#>     Attrib V47    0.1535445488183159
#>     Attrib V48    0.6477314997909757
#>     Attrib V49    0.4842848381701409
#>     Attrib V5    0.021832450338930155
#>     Attrib V50    -0.1202797475063186
#>     Attrib V51    0.21506062676347742
#>     Attrib V52    0.24197783501666922
#>     Attrib V53    0.4518683028732427
#>     Attrib V54    0.3004429900557228
#>     Attrib V55    0.014578182052567116
#>     Attrib V56    -0.0806716625628277
#>     Attrib V57    0.270630385791629
#>     Attrib V58    0.20299285998754402
#>     Attrib V59    0.12840403201760503
#>     Attrib V6    -0.2853715974829086
#>     Attrib V60    0.28442725108545835
#>     Attrib V7    -0.15929132565808454
#>     Attrib V8    -0.31925381089444804
#>     Attrib V9    0.1916536110516897
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.2748362559328206
#>     Attrib V1    -0.031271737027140326
#>     Attrib V10    -0.019417093561854316
#>     Attrib V11    0.14362984909159587
#>     Attrib V12    0.06634155139995222
#>     Attrib V13    0.1095757552012636
#>     Attrib V14    0.38367811594253143
#>     Attrib V15    0.08299266896545288
#>     Attrib V16    0.15472949019684917
#>     Attrib V17    0.3914424727086937
#>     Attrib V18    0.29206553640080235
#>     Attrib V19    0.007225727075634468
#>     Attrib V2    0.10714511173575253
#>     Attrib V20    0.036478972432131024
#>     Attrib V21    -0.22119454978199624
#>     Attrib V22    -0.33780566991647587
#>     Attrib V23    -0.3066651801400901
#>     Attrib V24    -0.27542599767394355
#>     Attrib V25    0.34190770280295174
#>     Attrib V26    0.4290437052489547
#>     Attrib V27    0.2992163764800721
#>     Attrib V28    -0.36942575572126957
#>     Attrib V29    -0.31997205127465334
#>     Attrib V3    0.24314827041914475
#>     Attrib V30    -0.10308533518761859
#>     Attrib V31    0.5296086919307075
#>     Attrib V32    -0.4416948460350988
#>     Attrib V33    -0.102499713759246
#>     Attrib V34    0.1309669316021648
#>     Attrib V35    -0.21088668570888625
#>     Attrib V36    0.11643543396005619
#>     Attrib V37    0.40029953010029595
#>     Attrib V38    -0.10994953987604525
#>     Attrib V39    -0.09021949372751142
#>     Attrib V4    -0.021677537335701137
#>     Attrib V40    0.2686014598662341
#>     Attrib V41    -0.1975354431523085
#>     Attrib V42    -0.393524359773858
#>     Attrib V43    -0.21206630070093072
#>     Attrib V44    -0.2774794666322322
#>     Attrib V45    -0.5025801370031499
#>     Attrib V46    -0.41703024598218946
#>     Attrib V47    -0.10502770725599887
#>     Attrib V48    -0.2790929233656576
#>     Attrib V49    -0.3397519908339375
#>     Attrib V5    0.13074194584621315
#>     Attrib V50    0.4783214737015536
#>     Attrib V51    -0.16262144215639185
#>     Attrib V52    -0.056868881289814696
#>     Attrib V53    -0.12276900065997684
#>     Attrib V54    -0.0703633029207586
#>     Attrib V55    0.223990895032699
#>     Attrib V56    -0.06065310205297021
#>     Attrib V57    0.31920298221714405
#>     Attrib V58    -0.2561128517269915
#>     Attrib V59    0.10460806133892737
#>     Attrib V6    0.3926363029899745
#>     Attrib V60    -0.1909372269522375
#>     Attrib V7    0.2169410426613946
#>     Attrib V8    0.16675971499220804
#>     Attrib V9    -0.2530520857915854
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.38728336299886296
#>     Attrib V1    0.2815532984379893
#>     Attrib V10    0.576944159782504
#>     Attrib V11    0.7527701171977219
#>     Attrib V12    0.8208138831296498
#>     Attrib V13    0.3071007433535458
#>     Attrib V14    -0.3917128672911208
#>     Attrib V15    -0.24505845855351652
#>     Attrib V16    -0.42089577554961566
#>     Attrib V17    -0.5722479421686527
#>     Attrib V18    -0.5210033187781604
#>     Attrib V19    -0.5786978018118019
#>     Attrib V2    0.04989081586485984
#>     Attrib V20    -0.3779118092319375
#>     Attrib V21    -0.06549451639796355
#>     Attrib V22    -0.17629342696986045
#>     Attrib V23    -0.23266546347553924
#>     Attrib V24    0.0540344290094701
#>     Attrib V25    0.12711451817621008
#>     Attrib V26    0.429996809308343
#>     Attrib V27    0.6870271059385942
#>     Attrib V28    0.8887407325944208
#>     Attrib V29    0.3314320177143174
#>     Attrib V3    -0.22365684800502156
#>     Attrib V30    -0.09991682531900568
#>     Attrib V31    -0.6367290961789327
#>     Attrib V32    0.1167251218116645
#>     Attrib V33    -0.11328316474857895
#>     Attrib V34    0.08994057761878423
#>     Attrib V35    0.5801372163562216
#>     Attrib V36    0.07473092961983306
#>     Attrib V37    0.12973276606334544
#>     Attrib V38    0.23405752719055398
#>     Attrib V39    0.15050664901543306
#>     Attrib V4    0.007407899757478327
#>     Attrib V40    -0.188492549522614
#>     Attrib V41    0.0475776635519992
#>     Attrib V42    -0.3003145961051288
#>     Attrib V43    -0.22503405438813587
#>     Attrib V44    -0.17700688820677016
#>     Attrib V45    0.18147738544448747
#>     Attrib V46    0.6259485452901359
#>     Attrib V47    0.4705953383339158
#>     Attrib V48    0.9246315474421722
#>     Attrib V49    0.688545884335201
#>     Attrib V5    0.11997970005026548
#>     Attrib V50    -0.03237558848291563
#>     Attrib V51    0.46195293142658955
#>     Attrib V52    0.4139700035984056
#>     Attrib V53    0.6656454788728573
#>     Attrib V54    0.19884497634496853
#>     Attrib V55    -0.09543711596389438
#>     Attrib V56    -0.29632122425429736
#>     Attrib V57    0.10120850414023541
#>     Attrib V58    -0.028677569191471595
#>     Attrib V59    -0.017689382740097535
#>     Attrib V6    -0.07405341674763809
#>     Attrib V60    0.49920252849645286
#>     Attrib V7    -0.19991668275339744
#>     Attrib V8    -0.6529506214542569
#>     Attrib V9    0.42949124437362485
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.34930955389434143
#>     Attrib V1    0.16981489340940348
#>     Attrib V10    -0.9423592528163809
#>     Attrib V11    -0.6793487738611551
#>     Attrib V12    -0.3566188862555337
#>     Attrib V13    -0.36524433857784444
#>     Attrib V14    0.34953941501473984
#>     Attrib V15    0.12215070714473417
#>     Attrib V16    0.18713811661952878
#>     Attrib V17    0.4656004106023454
#>     Attrib V18    0.5546917333587563
#>     Attrib V19    -0.087858858282961
#>     Attrib V2    0.4121363988309319
#>     Attrib V20    -0.2969651573919658
#>     Attrib V21    -0.8392512896941438
#>     Attrib V22    -0.7363966166984659
#>     Attrib V23    -0.7520288629262821
#>     Attrib V24    -0.6404487286665133
#>     Attrib V25    0.47823167535211564
#>     Attrib V26    0.6335149953502339
#>     Attrib V27    0.6597697113642289
#>     Attrib V28    0.015435294815607969
#>     Attrib V29    0.7590034586333277
#>     Attrib V3    0.1765318555085157
#>     Attrib V30    0.22063191348108452
#>     Attrib V31    1.1514996456975681
#>     Attrib V32    -0.8029283228605518
#>     Attrib V33    -0.5162544557732329
#>     Attrib V34    0.5015550399018629
#>     Attrib V35    0.599599062577531
#>     Attrib V36    0.9935337668938
#>     Attrib V37    1.8634447957190405
#>     Attrib V38    0.05223999481623038
#>     Attrib V39    -0.20722148691945264
#>     Attrib V4    -0.6556900783589583
#>     Attrib V40    0.47165970703192256
#>     Attrib V41    -0.4213737008448309
#>     Attrib V42    -0.8942900429018483
#>     Attrib V43    -0.3001663486186195
#>     Attrib V44    -0.35905349227351474
#>     Attrib V45    -0.4496269380427252
#>     Attrib V46    -0.18165213515089493
#>     Attrib V47    0.4844016672413765
#>     Attrib V48    0.10974611530522338
#>     Attrib V49    -0.45914267615257165
#>     Attrib V5    -0.48476450201125987
#>     Attrib V50    1.4460757503103252
#>     Attrib V51    -0.03338469466703596
#>     Attrib V52    0.1981914441829518
#>     Attrib V53    0.04867816141907312
#>     Attrib V54    -0.40567646368588683
#>     Attrib V55    0.1767893995601208
#>     Attrib V56    -0.08538214459811395
#>     Attrib V57    -0.039244514864485984
#>     Attrib V58    -0.7636560096242745
#>     Attrib V59    -0.17396607355166774
#>     Attrib V6    0.3041321972397457
#>     Attrib V60    -0.29559054878064706
#>     Attrib V7    -0.42846797935455433
#>     Attrib V8    -0.9555886352791347
#>     Attrib V9    -1.2882092215835659
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    0.0828190104181595
#>     Attrib V1    0.3936345823823884
#>     Attrib V10    -0.3063589442095347
#>     Attrib V11    -0.45771098833714846
#>     Attrib V12    -0.37183261305555676
#>     Attrib V13    -0.11605352588311514
#>     Attrib V14    0.0502144555082168
#>     Attrib V15    0.47890031181060394
#>     Attrib V16    0.2988641470592481
#>     Attrib V17    0.01730325237006888
#>     Attrib V18    -6.496820098449498E-4
#>     Attrib V19    0.1674551750318221
#>     Attrib V2    -0.03671414520574896
#>     Attrib V20    0.17005881537568265
#>     Attrib V21    0.2154446794007159
#>     Attrib V22    0.04361702650018336
#>     Attrib V23    -0.012344371197121378
#>     Attrib V24    0.16744208091256166
#>     Attrib V25    -0.35527582152551784
#>     Attrib V26    -0.7338394643335167
#>     Attrib V27    -0.6023439135698233
#>     Attrib V28    -0.048564864970648165
#>     Attrib V29    -0.024649916097698475
#>     Attrib V3    0.03319197382453151
#>     Attrib V30    -0.22701142762160054
#>     Attrib V31    -0.8622470852873528
#>     Attrib V32    0.3495499997902715
#>     Attrib V33    0.25782851368120785
#>     Attrib V34    -0.03236766580062501
#>     Attrib V35    0.06273513871189323
#>     Attrib V36    -0.18849559399722352
#>     Attrib V37    -0.4412920914020041
#>     Attrib V38    0.12425831909590693
#>     Attrib V39    0.09650080184340556
#>     Attrib V4    0.21317691200579786
#>     Attrib V40    -0.4543105999495077
#>     Attrib V41    -0.17784537321045532
#>     Attrib V42    0.42213555367599553
#>     Attrib V43    0.06878974179670855
#>     Attrib V44    0.05018060679063752
#>     Attrib V45    0.2249058626494201
#>     Attrib V46    0.12089787969681871
#>     Attrib V47    -0.15323958092565718
#>     Attrib V48    0.10063123729613971
#>     Attrib V49    0.19370244046225546
#>     Attrib V5    -0.17579432299811357
#>     Attrib V50    -0.4141583597620938
#>     Attrib V51    0.06831623787555563
#>     Attrib V52    -0.08704622879016637
#>     Attrib V53    0.15065802228323286
#>     Attrib V54    0.4415556222442476
#>     Attrib V55    0.06392417266776139
#>     Attrib V56    0.45952520820823667
#>     Attrib V57    0.12117337713790437
#>     Attrib V58    0.565003366178323
#>     Attrib V59    0.24421995109867103
#>     Attrib V6    -0.43150691750786846
#>     Attrib V60    0.5164765140524091
#>     Attrib V7    -0.044355281182851355
#>     Attrib V8    -0.19741205470376375
#>     Attrib V9    0.06721216901020431
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.05904454957409659
#>     Attrib V1    0.3067358135484339
#>     Attrib V10    -0.11328716656112944
#>     Attrib V11    -0.12198315743992887
#>     Attrib V12    -0.12496752463704869
#>     Attrib V13    -0.13845536380922288
#>     Attrib V14    -0.027175470957274826
#>     Attrib V15    0.2390761102129174
#>     Attrib V16    0.04631099055473689
#>     Attrib V17    -0.07461777716756102
#>     Attrib V18    -0.07835657826698983
#>     Attrib V19    0.005057181627611032
#>     Attrib V2    0.09182261938247044
#>     Attrib V20    0.012343352861967827
#>     Attrib V21    0.02318981957833629
#>     Attrib V22    -0.021748887787547255
#>     Attrib V23    -0.0703882939299854
#>     Attrib V24    0.10029043277271578
#>     Attrib V25    -0.1536076723091622
#>     Attrib V26    -0.30761201043049363
#>     Attrib V27    -0.23341752296211937
#>     Attrib V28    -0.04721842018401685
#>     Attrib V29    -0.09151361168764434
#>     Attrib V3    -0.007285126751830251
#>     Attrib V30    -0.14408670275494032
#>     Attrib V31    -0.43852740013576974
#>     Attrib V32    0.1116273931773499
#>     Attrib V33    0.19574946412634214
#>     Attrib V34    0.04522699158794021
#>     Attrib V35    0.1948763133199124
#>     Attrib V36    -0.012794165345560252
#>     Attrib V37    -0.17590798070527236
#>     Attrib V38    0.17057800777769871
#>     Attrib V39    0.12306606760547315
#>     Attrib V4    0.13243730707238305
#>     Attrib V40    -0.24361419432165154
#>     Attrib V41    -0.12676793289151814
#>     Attrib V42    0.09096288586409006
#>     Attrib V43    0.061529135358951714
#>     Attrib V44    0.045162910650677936
#>     Attrib V45    0.1379900534250139
#>     Attrib V46    0.04692807797364032
#>     Attrib V47    -0.06868729100017196
#>     Attrib V48    0.23348620811853474
#>     Attrib V49    0.16678801847147948
#>     Attrib V5    -0.055766882824811854
#>     Attrib V50    -0.13046477770085976
#>     Attrib V51    0.10740786080394772
#>     Attrib V52    0.01216056013150637
#>     Attrib V53    0.14200863944144093
#>     Attrib V54    0.2989436290248094
#>     Attrib V55    0.12006764647248411
#>     Attrib V56    0.21903180239194575
#>     Attrib V57    0.18468914331014633
#>     Attrib V58    0.22592366622289942
#>     Attrib V59    0.1711617820947885
#>     Attrib V6    -0.23893803788306917
#>     Attrib V60    0.3421271595659579
#>     Attrib V7    -0.12317491696417396
#>     Attrib V8    -0.16050398563091603
#>     Attrib V9    0.012637170456145323
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.6820056061323047
#>     Attrib V1    0.05871046766867876
#>     Attrib V10    -0.6967392729031463
#>     Attrib V11    -0.9973927752159522
#>     Attrib V12    -1.0353029294459168
#>     Attrib V13    -0.5612796543844301
#>     Attrib V14    0.4610252070986686
#>     Attrib V15    0.10724141832250272
#>     Attrib V16    -0.012716305725288809
#>     Attrib V17    -0.08973640677717588
#>     Attrib V18    0.003775034582895776
#>     Attrib V19    -0.3266061210067683
#>     Attrib V2    0.3021323350809671
#>     Attrib V20    -0.24785837900321514
#>     Attrib V21    -0.42584355914186894
#>     Attrib V22    -0.5409745378260793
#>     Attrib V23    -0.1861516891357819
#>     Attrib V24    -0.005948445101559662
#>     Attrib V25    0.5758463153246697
#>     Attrib V26    0.6832882199723261
#>     Attrib V27    0.32667767621411137
#>     Attrib V28    -0.3736054964289133
#>     Attrib V29    -0.07471976511617924
#>     Attrib V3    0.41793044667499063
#>     Attrib V30    -0.3794171201073691
#>     Attrib V31    0.42502000935091333
#>     Attrib V32    -0.3197103199806488
#>     Attrib V33    -0.06320834177062071
#>     Attrib V34    0.06142622270342344
#>     Attrib V35    -0.014925482521888652
#>     Attrib V36    0.6036864809946326
#>     Attrib V37    0.9490000190349321
#>     Attrib V38    -0.04969879630292676
#>     Attrib V39    -0.20370556076373852
#>     Attrib V4    -0.05800756637339003
#>     Attrib V40    0.1367586606397781
#>     Attrib V41    -0.35573148985039976
#>     Attrib V42    -0.1434118412192933
#>     Attrib V43    0.037922225632828356
#>     Attrib V44    0.145803495067843
#>     Attrib V45    -0.29644333483407054
#>     Attrib V46    -0.19759511590049614
#>     Attrib V47    0.1658010788502534
#>     Attrib V48    -0.13595410120035262
#>     Attrib V49    -0.2503840424120343
#>     Attrib V5    -0.1796630535575495
#>     Attrib V50    0.744333202799048
#>     Attrib V51    0.11745802702587896
#>     Attrib V52    0.3320020756255713
#>     Attrib V53    0.24743808472895598
#>     Attrib V54    -0.22711027335156253
#>     Attrib V55    0.09705610003762292
#>     Attrib V56    0.3032779873820498
#>     Attrib V57    0.06298707702365283
#>     Attrib V58    -0.03652049412985962
#>     Attrib V59    0.10430653769407902
#>     Attrib V6    0.06417670267171224
#>     Attrib V60    -0.13246098386980798
#>     Attrib V7    -0.14002906301886908
#>     Attrib V8    -0.1584774359639085
#>     Attrib V9    -0.6802690037236544
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.37287731057032536
#>     Attrib V1    0.19771252264604935
#>     Attrib V10    0.44937181883494165
#>     Attrib V11    0.583029232297259
#>     Attrib V12    0.7733747502814172
#>     Attrib V13    0.3137305496417714
#>     Attrib V14    -0.24747485409284947
#>     Attrib V15    -0.16552566882394903
#>     Attrib V16    -0.369385760711138
#>     Attrib V17    -0.5479952977436853
#>     Attrib V18    -0.5218424365522231
#>     Attrib V19    -0.5271952431463658
#>     Attrib V2    0.06446153802030337
#>     Attrib V20    -0.39832122248448193
#>     Attrib V21    -0.14390100631824912
#>     Attrib V22    -0.238132459720766
#>     Attrib V23    -0.36775714485595795
#>     Attrib V24    -0.003299645026492823
#>     Attrib V25    0.06113429894646081
#>     Attrib V26    0.33072074718587563
#>     Attrib V27    0.7028401394695104
#>     Attrib V28    0.9543565245083963
#>     Attrib V29    0.4196471924433515
#>     Attrib V3    -0.1569685664188791
#>     Attrib V30    -0.14629264157955624
#>     Attrib V31    -0.656011627408048
#>     Attrib V32    0.052610904826389984
#>     Attrib V33    -0.09065436157418211
#>     Attrib V34    0.1054900024475746
#>     Attrib V35    0.5415723442640193
#>     Attrib V36    0.08131041768984901
#>     Attrib V37    0.07549945127816075
#>     Attrib V38    0.23803536459292376
#>     Attrib V39    0.1313510975053459
#>     Attrib V4    0.08424918444759968
#>     Attrib V40    -0.1299859761706246
#>     Attrib V41    0.08078507686964446
#>     Attrib V42    -0.21635818831372952
#>     Attrib V43    -0.24731021963553623
#>     Attrib V44    -0.2679288967351504
#>     Attrib V45    0.2645329513385192
#>     Attrib V46    0.5910690651810183
#>     Attrib V47    0.3876868671065426
#>     Attrib V48    0.8285747561643373
#>     Attrib V49    0.6654064806391863
#>     Attrib V5    0.15890666048338742
#>     Attrib V50    -0.07730369348933115
#>     Attrib V51    0.3842211677645419
#>     Attrib V52    0.425076965030794
#>     Attrib V53    0.6832286131966009
#>     Attrib V54    0.18572108267354143
#>     Attrib V55    -0.029480403609580434
#>     Attrib V56    -0.35057280516906897
#>     Attrib V57    0.1388436820084135
#>     Attrib V58    0.027616861875585857
#>     Attrib V59    -0.00910925581747099
#>     Attrib V6    -0.056255830397719385
#>     Attrib V60    0.4280756910156933
#>     Attrib V7    -0.164116484396338
#>     Attrib V8    -0.6061337769036782
#>     Attrib V9    0.3355152601563909
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.19418061546964924
#>     Attrib V1    0.42624087642522335
#>     Attrib V10    -0.2450168557286597
#>     Attrib V11    -0.2080410656730263
#>     Attrib V12    -0.06938000907650065
#>     Attrib V13    -0.04150123032988895
#>     Attrib V14    0.10032978482211913
#>     Attrib V15    0.38041646152476594
#>     Attrib V16    0.0906491393462279
#>     Attrib V17    -0.07600203271509359
#>     Attrib V18    -0.016766811633692123
#>     Attrib V19    0.13122235890086087
#>     Attrib V2    0.008341931832733952
#>     Attrib V20    0.16936267613954334
#>     Attrib V21    0.22587369809966473
#>     Attrib V22    0.0771975770869988
#>     Attrib V23    0.1034893192353822
#>     Attrib V24    0.26154989981455373
#>     Attrib V25    -0.1414583405377544
#>     Attrib V26    -0.3731297282394131
#>     Attrib V27    -0.3052490622146607
#>     Attrib V28    -0.021430378320022342
#>     Attrib V29    -0.0071435622946108565
#>     Attrib V3    -0.06407635097756634
#>     Attrib V30    -0.21695018764689264
#>     Attrib V31    -0.7945765077569378
#>     Attrib V32    0.16956632957115764
#>     Attrib V33    0.1383505283008863
#>     Attrib V34    -0.05706611854705545
#>     Attrib V35    0.16236863982863659
#>     Attrib V36    -0.012768526546615333
#>     Attrib V37    -0.2828454860770103
#>     Attrib V38    0.251988921797946
#>     Attrib V39    0.159579476898956
#>     Attrib V4    0.13176697261340892
#>     Attrib V40    -0.34437365554793964
#>     Attrib V41    -0.16485015309075038
#>     Attrib V42    0.2371132446815181
#>     Attrib V43    0.126081971798939
#>     Attrib V44    0.1081732870079372
#>     Attrib V45    0.19893991695126736
#>     Attrib V46    0.060274816520719074
#>     Attrib V47    -0.14333416688498202
#>     Attrib V48    0.2275189966136806
#>     Attrib V49    0.27016598338069725
#>     Attrib V5    -0.09234793308270779
#>     Attrib V50    -0.36977353362895965
#>     Attrib V51    0.1337962451904851
#>     Attrib V52    -0.019081648534182146
#>     Attrib V53    0.1763606994924912
#>     Attrib V54    0.5948966372327571
#>     Attrib V55    0.1580213829453191
#>     Attrib V56    0.3756298918648242
#>     Attrib V57    0.1145699946743134
#>     Attrib V58    0.44634402483602437
#>     Attrib V59    0.3404272831703835
#>     Attrib V6    -0.4418020035605951
#>     Attrib V60    0.44742672736310474
#>     Attrib V7    -0.09400741253279202
#>     Attrib V8    -0.32797439493759106
#>     Attrib V9    0.008952526629866522
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.31653362610194474
#>     Attrib V1    -0.5678864159690464
#>     Attrib V10    0.20840035160680806
#>     Attrib V11    -0.5094468116125748
#>     Attrib V12    -1.064679786566036
#>     Attrib V13    -0.4321222780682683
#>     Attrib V14    0.7965027106482724
#>     Attrib V15    -0.24479522034424578
#>     Attrib V16    -0.7275258189501947
#>     Attrib V17    -0.7187494629466772
#>     Attrib V18    -0.2756331556479571
#>     Attrib V19    -0.7150668318729612
#>     Attrib V2    -0.24222694375364465
#>     Attrib V20    -0.00773796568122072
#>     Attrib V21    -0.5988518115582475
#>     Attrib V22    -1.1079207137455396
#>     Attrib V23    -0.634964549373931
#>     Attrib V24    -0.7979565895335196
#>     Attrib V25    0.2500821522162722
#>     Attrib V26    -0.16116641382135619
#>     Attrib V27    0.010483476738498176
#>     Attrib V28    0.15122030448344229
#>     Attrib V29    0.8473258426310526
#>     Attrib V3    0.0035194423815961546
#>     Attrib V30    -0.18928098400351095
#>     Attrib V31    -0.1287513037914727
#>     Attrib V32    -1.3071108911130063
#>     Attrib V33    -0.7309839438350355
#>     Attrib V34    -0.25889932937923926
#>     Attrib V35    1.0026381080489244
#>     Attrib V36    3.072944349775871
#>     Attrib V37    3.5942667826870207
#>     Attrib V38    1.1739469384996344
#>     Attrib V39    0.23772576648994814
#>     Attrib V4    -0.15498058810018897
#>     Attrib V40    0.3346826866682139
#>     Attrib V41    -0.5443141722159981
#>     Attrib V42    -0.6778929390354437
#>     Attrib V43    -0.02848063593966631
#>     Attrib V44    0.4822392465748045
#>     Attrib V45    -0.1769987197517537
#>     Attrib V46    -0.6682690321061363
#>     Attrib V47    -0.27323668002713536
#>     Attrib V48    -0.39643715633779264
#>     Attrib V49    -0.6045889017697975
#>     Attrib V5    -0.6224894524685669
#>     Attrib V50    1.0523951374904263
#>     Attrib V51    -0.5802845501433156
#>     Attrib V52    0.16420376270597556
#>     Attrib V53    -0.09025032750106855
#>     Attrib V54    -0.39018967548736605
#>     Attrib V55    -0.17899059769475031
#>     Attrib V56    -0.41728790332305027
#>     Attrib V57    0.2251769065787939
#>     Attrib V58    -0.44743577343604635
#>     Attrib V59    -0.3406536612431639
#>     Attrib V6    0.03998647294186839
#>     Attrib V60    -0.6255062912961045
#>     Attrib V7    0.3665753106721359
#>     Attrib V8    0.3383479805988537
#>     Attrib V9    -0.26370136137773015
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.11899910234025862
#>     Attrib V1    0.7131260160365249
#>     Attrib V10    -0.3545807818237338
#>     Attrib V11    -0.7860095831934508
#>     Attrib V12    -0.8123735341149758
#>     Attrib V13    -0.31598768006888056
#>     Attrib V14    0.20602501971776702
#>     Attrib V15    0.9079939892560159
#>     Attrib V16    0.6161366024680466
#>     Attrib V17    0.0162870779478071
#>     Attrib V18    -0.13811524746157278
#>     Attrib V19    0.2322880380733836
#>     Attrib V2    0.02384844137935501
#>     Attrib V20    0.38361620214552183
#>     Attrib V21    0.4211928984656675
#>     Attrib V22    0.18549534445577276
#>     Attrib V23    0.15667235205342753
#>     Attrib V24    0.22943906860143834
#>     Attrib V25    -0.8212141555691708
#>     Attrib V26    -1.4029880711395182
#>     Attrib V27    -1.1702427851696549
#>     Attrib V28    -0.12404259855024968
#>     Attrib V29    0.05147228592362002
#>     Attrib V3    0.05738663674748684
#>     Attrib V30    -0.16717358060359214
#>     Attrib V31    -1.2339707633906725
#>     Attrib V32    0.8144022567767275
#>     Attrib V33    0.6052005343799819
#>     Attrib V34    -0.17882925103702224
#>     Attrib V35    -0.04804298676748746
#>     Attrib V36    -0.4447058601658469
#>     Attrib V37    -0.9527138582808873
#>     Attrib V38    0.07814957182173932
#>     Attrib V39    0.04825052843624279
#>     Attrib V4    0.43504138590784547
#>     Attrib V40    -0.7580726437065051
#>     Attrib V41    -0.2818129357753216
#>     Attrib V42    0.8154339759132236
#>     Attrib V43    0.24744854618096304
#>     Attrib V44    0.22956318967910852
#>     Attrib V45    0.3594774400835839
#>     Attrib V46    0.2115292485882998
#>     Attrib V47    -0.35527084373330436
#>     Attrib V48    0.12484600477647986
#>     Attrib V49    0.39078334417751664
#>     Attrib V5    -0.2994930442920689
#>     Attrib V50    -0.9066011778621863
#>     Attrib V51    0.01934376716998316
#>     Attrib V52    -0.27448237801233877
#>     Attrib V53    -0.08194264885436853
#>     Attrib V54    0.6145285499510538
#>     Attrib V55    -0.09849406199472711
#>     Attrib V56    0.818662270549362
#>     Attrib V57    0.06290151459175156
#>     Attrib V58    1.0134656569750136
#>     Attrib V59    0.308395086154537
#>     Attrib V6    -0.6322840328302612
#>     Attrib V60    0.783271683100526
#>     Attrib V7    0.13318338931184678
#>     Attrib V8    -0.017911700121865156
#>     Attrib V9    0.3107626683265989
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.21909245582497
#>     Attrib V1    0.684722919760387
#>     Attrib V10    -0.42796955715858814
#>     Attrib V11    -0.5583726129582679
#>     Attrib V12    -0.5205211011448827
#>     Attrib V13    -0.21470958770394555
#>     Attrib V14    0.15975531655964648
#>     Attrib V15    0.8238537010316687
#>     Attrib V16    0.4508802667230062
#>     Attrib V17    0.06861353927720204
#>     Attrib V18    -0.08485389872722413
#>     Attrib V19    0.22433894149658812
#>     Attrib V2    -0.0065945287331242814
#>     Attrib V20    0.2877668619696035
#>     Attrib V21    0.32577064949949974
#>     Attrib V22    0.1505900282667198
#>     Attrib V23    0.17180619948268105
#>     Attrib V24    0.22885818617167988
#>     Attrib V25    -0.6254797839788074
#>     Attrib V26    -1.13470470544957
#>     Attrib V27    -1.0264404193819576
#>     Attrib V28    -0.17923264339983672
#>     Attrib V29    -0.09299219349358583
#>     Attrib V3    0.04668732278776762
#>     Attrib V30    -0.19253493553420736
#>     Attrib V31    -1.1524383656355865
#>     Attrib V32    0.6839378211243793
#>     Attrib V33    0.5065865894478243
#>     Attrib V34    -0.15110237975712942
#>     Attrib V35    0.02915601246924926
#>     Attrib V36    -0.3691698528290772
#>     Attrib V37    -0.7832173813824745
#>     Attrib V38    0.1878555755168418
#>     Attrib V39    0.1572446608494358
#>     Attrib V4    0.3522319542666806
#>     Attrib V40    -0.7124751816995946
#>     Attrib V41    -0.31623925863121616
#>     Attrib V42    0.621067660631239
#>     Attrib V43    0.2049398801704352
#>     Attrib V44    0.1627987994043311
#>     Attrib V45    0.35128561354942883
#>     Attrib V46    0.10377860786338748
#>     Attrib V47    -0.27066242954003394
#>     Attrib V48    0.11371820681327335
#>     Attrib V49    0.3664614133400486
#>     Attrib V5    -0.3156368827013564
#>     Attrib V50    -0.8050657567205246
#>     Attrib V51    0.03425862258434004
#>     Attrib V52    -0.18467689866299017
#>     Attrib V53    0.010357293716117665
#>     Attrib V54    0.6974600899514953
#>     Attrib V55    0.03458423876723716
#>     Attrib V56    0.7693376548802393
#>     Attrib V57    0.06211879002800232
#>     Attrib V58    0.8459662652781731
#>     Attrib V59    0.3964131601895641
#>     Attrib V6    -0.643431324533941
#>     Attrib V60    0.6717901932814023
#>     Attrib V7    0.049997279293630126
#>     Attrib V8    -0.12405034185490785
#>     Attrib V9    0.16974056399759213
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.11153469193663054
#>     Attrib V1    0.16661883765113963
#>     Attrib V10    -0.07663340447590303
#>     Attrib V11    -0.08846584770253366
#>     Attrib V12    -0.04842271484785148
#>     Attrib V13    -0.09180317168338345
#>     Attrib V14    0.025591670606959264
#>     Attrib V15    0.11477811874592946
#>     Attrib V16    -0.015549782316331192
#>     Attrib V17    -0.015064334115215553
#>     Attrib V18    -0.0838539055372684
#>     Attrib V19    -0.0766985796253745
#>     Attrib V2    0.07407148480475541
#>     Attrib V20    -0.07759843159820382
#>     Attrib V21    -0.08939706494555773
#>     Attrib V22    -0.16307941423209607
#>     Attrib V23    -0.06614818686700757
#>     Attrib V24    -0.04940841340277175
#>     Attrib V25    -0.08951415049080719
#>     Attrib V26    -0.11196805439901661
#>     Attrib V27    -0.15766860727413218
#>     Attrib V28    -0.03301723187633999
#>     Attrib V29    -0.03363917495849951
#>     Attrib V3    0.06798749670562887
#>     Attrib V30    -0.06615058568710303
#>     Attrib V31    -0.16526241739168823
#>     Attrib V32    0.13158896642573795
#>     Attrib V33    0.07576089535909163
#>     Attrib V34    0.07216773866236711
#>     Attrib V35    0.1082818752687244
#>     Attrib V36    0.0944164868593995
#>     Attrib V37    -0.017855447153362798
#>     Attrib V38    0.08666030524662574
#>     Attrib V39    0.07072608901826986
#>     Attrib V4    0.16551444927359452
#>     Attrib V40    0.01741615012467605
#>     Attrib V41    0.022582326906084797
#>     Attrib V42    0.047015634890838764
#>     Attrib V43    0.08681553816533905
#>     Attrib V44    0.028973572323261372
#>     Attrib V45    0.008700476284015792
#>     Attrib V46    0.08468532681588618
#>     Attrib V47    0.09100145672687282
#>     Attrib V48    0.14321043348993143
#>     Attrib V49    0.08462944705212176
#>     Attrib V5    0.0014493137435608522
#>     Attrib V50    0.04944556720485163
#>     Attrib V51    0.14587215819929752
#>     Attrib V52    0.14345709553702152
#>     Attrib V53    0.11003353535259078
#>     Attrib V54    0.1401826531690907
#>     Attrib V55    0.11325360897238089
#>     Attrib V56    0.170464432723788
#>     Attrib V57    0.16366222167203098
#>     Attrib V58    0.17736375911560423
#>     Attrib V59    0.15051244315118303
#>     Attrib V6    -0.021814101152750655
#>     Attrib V60    0.18597082503530002
#>     Attrib V7    -0.035810744072553885
#>     Attrib V8    -0.0331952108491839
#>     Attrib V9    0.07036141561679941
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.4647551131141266
#>     Attrib V1    -0.06921623214789324
#>     Attrib V10    1.0899342186801695
#>     Attrib V11    1.3158782015137274
#>     Attrib V12    1.5266955022911823
#>     Attrib V13    0.9708506705946574
#>     Attrib V14    -0.47633114967130913
#>     Attrib V15    -0.5345933711451263
#>     Attrib V16    -0.556839088000227
#>     Attrib V17    -0.5836821546679797
#>     Attrib V18    -0.2553351087551654
#>     Attrib V19    -0.3383139194375774
#>     Attrib V2    0.17910298523406468
#>     Attrib V20    -0.2617818817152835
#>     Attrib V21    0.024565914830826107
#>     Attrib V22    0.4732415970463948
#>     Attrib V23    0.979983560816697
#>     Attrib V24    1.239107320090013
#>     Attrib V25    1.039998778252537
#>     Attrib V26    1.2616072784873122
#>     Attrib V27    1.299131952809444
#>     Attrib V28    1.077603829331244
#>     Attrib V29    0.1686159038678334
#>     Attrib V3    -0.29413815453057923
#>     Attrib V30    -0.2783818761339251
#>     Attrib V31    -0.3172923422243191
#>     Attrib V32    0.3668286485935044
#>     Attrib V33    -0.6548642088010806
#>     Attrib V34    -0.109145926979484
#>     Attrib V35    0.6352403708261869
#>     Attrib V36    -0.3974764010677326
#>     Attrib V37    -0.3642770880442015
#>     Attrib V38    -0.19925652727124482
#>     Attrib V39    0.20305688656125145
#>     Attrib V4    -0.36648223956727805
#>     Attrib V40    0.2779198454898131
#>     Attrib V41    0.6760738880321343
#>     Attrib V42    -0.16195763298570864
#>     Attrib V43    -0.18476012220584973
#>     Attrib V44    -0.07663915371722195
#>     Attrib V45    0.2978467295899275
#>     Attrib V46    0.995528241049677
#>     Attrib V47    1.0682325138179674
#>     Attrib V48    1.5407290415169097
#>     Attrib V49    1.2658493905859673
#>     Attrib V5    0.23466518978577372
#>     Attrib V50    -0.06087595299083315
#>     Attrib V51    1.1993551118349832
#>     Attrib V52    1.0305999792870175
#>     Attrib V53    1.6044550217764708
#>     Attrib V54    0.2419815912790407
#>     Attrib V55    -0.08048224251563658
#>     Attrib V56    -0.35623071903546066
#>     Attrib V57    -0.6255111676537692
#>     Attrib V58    -0.24789544580961564
#>     Attrib V59    -0.4964226888507607
#>     Attrib V6    0.1259412870834528
#>     Attrib V60    0.024642132364504164
#>     Attrib V7    -0.5334525795565076
#>     Attrib V8    -0.9104638122062507
#>     Attrib V9    0.8250921677590318
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.549782665988467
#>     Attrib V1    -0.08455231340967881
#>     Attrib V10    -0.5457912531925406
#>     Attrib V11    -0.9578320866925464
#>     Attrib V12    -0.9559331512741385
#>     Attrib V13    -0.5083459345527979
#>     Attrib V14    0.5528177683475913
#>     Attrib V15    0.04700165161529783
#>     Attrib V16    -0.06680473715946797
#>     Attrib V17    -0.04459307180596005
#>     Attrib V18    -0.060857588527114176
#>     Attrib V19    -0.3520492284050207
#>     Attrib V2    0.21553267180938995
#>     Attrib V20    -0.28761598066731514
#>     Attrib V21    -0.5883477875164668
#>     Attrib V22    -0.6916123398534308
#>     Attrib V23    -0.2639430936932471
#>     Attrib V24    -0.15458024119832903
#>     Attrib V25    0.4452309176231031
#>     Attrib V26    0.46539331008750784
#>     Attrib V27    0.4715731322923425
#>     Attrib V28    -0.02593771509176521
#>     Attrib V29    0.19825480261021206
#>     Attrib V3    0.26353140139065667
#>     Attrib V30    -0.29438043872870306
#>     Attrib V31    0.3708568777486393
#>     Attrib V32    -0.46570345877801944
#>     Attrib V33    -0.19362588272865566
#>     Attrib V34    -0.03126423051165918
#>     Attrib V35    0.30728842540676793
#>     Attrib V36    1.1275837101351587
#>     Attrib V37    1.6540943400065806
#>     Attrib V38    0.2483619603385637
#>     Attrib V39    -0.12710346584517213
#>     Attrib V4    -0.09112059285994148
#>     Attrib V40    0.19099680822467335
#>     Attrib V41    -0.36951072806100554
#>     Attrib V42    -0.3295598944833176
#>     Attrib V43    -0.017265767894799743
#>     Attrib V44    0.16458757428703233
#>     Attrib V45    -0.2793002941484008
#>     Attrib V46    -0.33987790906586257
#>     Attrib V47    -0.05180010402133067
#>     Attrib V48    -0.21247889421600588
#>     Attrib V49    -0.37806739823771723
#>     Attrib V5    -0.3317135115332079
#>     Attrib V50    0.7810974458564471
#>     Attrib V51    -0.07952703503630018
#>     Attrib V52    0.28806240348056494
#>     Attrib V53    0.14380297588226007
#>     Attrib V54    -0.2774037297696964
#>     Attrib V55    -0.036783432627434796
#>     Attrib V56    0.11972287429063072
#>     Attrib V57    0.11422981593324223
#>     Attrib V58    -0.19324716674597525
#>     Attrib V59    0.005222068543475751
#>     Attrib V6    0.1873111940536853
#>     Attrib V60    -0.16061294019315603
#>     Attrib V7    -0.08184493788176227
#>     Attrib V8    -0.19657850933675258
#>     Attrib V9    -0.6471114860733796
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.4334063439481944
#>     Attrib V1    0.3607085919151079
#>     Attrib V10    0.6514269415710041
#>     Attrib V11    0.7336909453177431
#>     Attrib V12    0.843950810981446
#>     Attrib V13    0.39016190429574155
#>     Attrib V14    -0.39586487459195463
#>     Attrib V15    -0.2853873557921294
#>     Attrib V16    -0.44148429308474485
#>     Attrib V17    -0.6547528120648165
#>     Attrib V18    -0.5118682055252342
#>     Attrib V19    -0.6081690843051376
#>     Attrib V2    0.09746636736624494
#>     Attrib V20    -0.416584620783239
#>     Attrib V21    -0.014483597369818548
#>     Attrib V22    -0.13533464632024478
#>     Attrib V23    -0.25906299688187384
#>     Attrib V24    0.11254458605823621
#>     Attrib V25    0.12094123721613062
#>     Attrib V26    0.5183738396590776
#>     Attrib V27    0.7953654110117258
#>     Attrib V28    1.0185425677652926
#>     Attrib V29    0.5126351421316019
#>     Attrib V3    -0.15936045222231793
#>     Attrib V30    -0.08678408932809961
#>     Attrib V31    -0.6838498148253443
#>     Attrib V32    0.050801012637199765
#>     Attrib V33    -0.22441284835916306
#>     Attrib V34    0.09413306570270383
#>     Attrib V35    0.573012980209735
#>     Attrib V36    0.12101421744073186
#>     Attrib V37    0.20725042263933352
#>     Attrib V38    0.31764072283241557
#>     Attrib V39    0.18723538859345568
#>     Attrib V4    0.045934453279145436
#>     Attrib V40    -0.2246266308889251
#>     Attrib V41    0.12383987207563289
#>     Attrib V42    -0.2687002398559124
#>     Attrib V43    -0.26280206719450827
#>     Attrib V44    -0.1934914930720746
#>     Attrib V45    0.2931931391851117
#>     Attrib V46    0.6334639944916635
#>     Attrib V47    0.48190592838566765
#>     Attrib V48    0.923424005672288
#>     Attrib V49    0.6037077121214264
#>     Attrib V5    0.20354074801164113
#>     Attrib V50    0.03446047053727756
#>     Attrib V51    0.5540844526212152
#>     Attrib V52    0.4606884781683412
#>     Attrib V53    0.7362887108447184
#>     Attrib V54    0.20513469007963167
#>     Attrib V55    -0.131528912793818
#>     Attrib V56    -0.3879984669099468
#>     Attrib V57    0.1012343086129976
#>     Attrib V58    -0.10584623372169329
#>     Attrib V59    0.015419821780630451
#>     Attrib V6    0.04481833360985377
#>     Attrib V60    0.53063508474177
#>     Attrib V7    -0.196948840729945
#>     Attrib V8    -0.6672455318208449
#>     Attrib V9    0.46597102454783235
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.3236929968624281
#>     Attrib V1    0.019500493830620972
#>     Attrib V10    -0.43718971539466
#>     Attrib V11    -0.5149018089669115
#>     Attrib V12    -0.5325313017863257
#>     Attrib V13    -0.281582552417307
#>     Attrib V14    0.30291044633595055
#>     Attrib V15    0.14714341053472924
#>     Attrib V16    0.11420727296035334
#>     Attrib V17    0.0829530645764042
#>     Attrib V18    0.12356944190361757
#>     Attrib V19    -0.22342136449704944
#>     Attrib V2    0.16758196462553482
#>     Attrib V20    -0.30507704597404983
#>     Attrib V21    -0.5175545615333242
#>     Attrib V22    -0.5121305676709358
#>     Attrib V23    -0.37394120727871183
#>     Attrib V24    -0.14102161194583224
#>     Attrib V25    0.39880216862370577
#>     Attrib V26    0.501705233420657
#>     Attrib V27    0.3581099756286703
#>     Attrib V28    -0.17517167910623674
#>     Attrib V29    0.0169922858169101
#>     Attrib V3    0.2441907343905657
#>     Attrib V30    -0.004010716713954681
#>     Attrib V31    0.6252780566533233
#>     Attrib V32    -0.17018478018416222
#>     Attrib V33    -0.07971944885303675
#>     Attrib V34    0.09579248464390647
#>     Attrib V35    0.006570235856763683
#>     Attrib V36    0.41214194014324373
#>     Attrib V37    0.7574731601605275
#>     Attrib V38    0.02101365952759758
#>     Attrib V39    -0.14581773969855868
#>     Attrib V4    -0.11405832646955391
#>     Attrib V40    0.23617836333445172
#>     Attrib V41    -0.12944874427815245
#>     Attrib V42    -0.1602558384143338
#>     Attrib V43    0.002060784242336794
#>     Attrib V44    -0.04181363603151462
#>     Attrib V45    -0.2412118694174967
#>     Attrib V46    -0.27062540177740824
#>     Attrib V47    -0.036768891484381554
#>     Attrib V48    -0.18702451902666176
#>     Attrib V49    -0.311908311712843
#>     Attrib V5    -0.2144558319497782
#>     Attrib V50    0.5952429318533581
#>     Attrib V51    -0.15414881259773944
#>     Attrib V52    0.14184364994656562
#>     Attrib V53    0.0360580198124284
#>     Attrib V54    -0.09827840201182249
#>     Attrib V55    0.06319230423142459
#>     Attrib V56    0.12772224743661972
#>     Attrib V57    0.09497538478775766
#>     Attrib V58    -0.1738812211016444
#>     Attrib V59    -0.006319034250016226
#>     Attrib V6    0.1348124008782716
#>     Attrib V60    -0.22613276901698
#>     Attrib V7    -0.07953252120257563
#>     Attrib V8    -0.06638711449014117
#>     Attrib V9    -0.4353784741225627
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.224516797150271
#>     Attrib V1    0.17182221259300692
#>     Attrib V10    0.12013354408435689
#>     Attrib V11    0.28525350522390086
#>     Attrib V12    0.3091368417432478
#>     Attrib V13    0.07326915331905491
#>     Attrib V14    -0.08374059113897052
#>     Attrib V15    -0.02280673889822233
#>     Attrib V16    -0.18656586510247494
#>     Attrib V17    -0.35537625233547177
#>     Attrib V18    -0.3344643226700149
#>     Attrib V19    -0.37766839028751253
#>     Attrib V2    -0.03162690968753765
#>     Attrib V20    -0.22110078366176567
#>     Attrib V21    -0.11702509689884237
#>     Attrib V22    -0.2593914327106196
#>     Attrib V23    -0.3595566312433383
#>     Attrib V24    -0.02446498789578518
#>     Attrib V25    -0.032251350956244304
#>     Attrib V26    -0.020673725106097347
#>     Attrib V27    0.23545838902903365
#>     Attrib V28    0.45970908457549364
#>     Attrib V29    0.23231940839798518
#>     Attrib V3    -0.0770437660237457
#>     Attrib V30    -0.1710951505555027
#>     Attrib V31    -0.49784590220886643
#>     Attrib V32    0.1956340597710138
#>     Attrib V33    0.09377810667046296
#>     Attrib V34    0.11821630721874225
#>     Attrib V35    0.31372360430868906
#>     Attrib V36    0.012422035025732041
#>     Attrib V37    -0.06195554665184341
#>     Attrib V38    0.203543671009503
#>     Attrib V39    0.13836376478608686
#>     Attrib V4    0.05906148450664418
#>     Attrib V40    -0.20951651104298674
#>     Attrib V41    -0.09539405480937821
#>     Attrib V42    -0.14378068409474012
#>     Attrib V43    -0.05943894496675738
#>     Attrib V44    -0.13102017025862484
#>     Attrib V45    0.23506878845401288
#>     Attrib V46    0.30113449867083425
#>     Attrib V47    0.200909712253449
#>     Attrib V48    0.5658993388516518
#>     Attrib V49    0.46949221535836355
#>     Attrib V5    7.082608916045997E-4
#>     Attrib V50    -0.023836606808264438
#>     Attrib V51    0.23745123173924268
#>     Attrib V52    0.243343987517889
#>     Attrib V53    0.3855731161953765
#>     Attrib V54    0.23398486002732635
#>     Attrib V55    0.060392381397513906
#>     Attrib V56    -0.08095052059803572
#>     Attrib V57    0.17107333881890896
#>     Attrib V58    0.12102935607512036
#>     Attrib V59    0.03632267903409803
#>     Attrib V6    -0.1926551661720654
#>     Attrib V60    0.2997420368491703
#>     Attrib V7    -0.1438012402995561
#>     Attrib V8    -0.31892293663429266
#>     Attrib V9    0.19003319166011162
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.1369698895171218
#>     Attrib V1    0.19508661953351505
#>     Attrib V10    0.01634266979544526
#>     Attrib V11    -0.0358147883375958
#>     Attrib V12    0.010018242137863708
#>     Attrib V13    0.004277269110416921
#>     Attrib V14    0.03534289687931658
#>     Attrib V15    0.07260652840090362
#>     Attrib V16    -0.013960137430693737
#>     Attrib V17    -0.025199699759688117
#>     Attrib V18    -0.06976306205060287
#>     Attrib V19    -0.09346359366094907
#>     Attrib V2    0.11404542685568281
#>     Attrib V20    -0.09904596770883455
#>     Attrib V21    -0.052597216595914965
#>     Attrib V22    -0.11000555531934836
#>     Attrib V23    -0.05760751660669992
#>     Attrib V24    -0.017585819556297327
#>     Attrib V25    -0.00795955482117519
#>     Attrib V26    -0.05797606344788532
#>     Attrib V27    -0.10315190563373376
#>     Attrib V28    -0.022413893170122746
#>     Attrib V29    -0.06344818959550676
#>     Attrib V3    0.06888704432147567
#>     Attrib V30    -0.045969790315086606
#>     Attrib V31    -0.0910277486244629
#>     Attrib V32    0.04997499727239962
#>     Attrib V33    0.06488054177153887
#>     Attrib V34    0.057133569352124804
#>     Attrib V35    0.14765133807198422
#>     Attrib V36    0.06647664815071318
#>     Attrib V37    0.06304246198041484
#>     Attrib V38    0.06697589311524368
#>     Attrib V39    0.14586627313633077
#>     Attrib V4    0.16211619950978384
#>     Attrib V40    0.02143176785684051
#>     Attrib V41    0.016032322178821234
#>     Attrib V42    0.11453849869472366
#>     Attrib V43    0.03993730670367704
#>     Attrib V44    0.0225078393797545
#>     Attrib V45    0.06417517041858806
#>     Attrib V46    0.07418349244403692
#>     Attrib V47    0.0353162362436079
#>     Attrib V48    0.16161341788364683
#>     Attrib V49    0.08584559726804598
#>     Attrib V5    0.009829929331171527
#>     Attrib V50    0.0036167258469126827
#>     Attrib V51    0.103603349161418
#>     Attrib V52    0.10000097471768503
#>     Attrib V53    0.15340844073719226
#>     Attrib V54    0.16028222681478457
#>     Attrib V55    0.07259608165952586
#>     Attrib V56    0.17534946598303686
#>     Attrib V57    0.0866786027099745
#>     Attrib V58    0.1901363067379096
#>     Attrib V59    0.18615862571733005
#>     Attrib V6    -0.03218872846907899
#>     Attrib V60    0.22654769377477824
#>     Attrib V7    -0.05045307447672087
#>     Attrib V8    -0.06028688925106925
#>     Attrib V9    0.013370203639631538
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.21106835735521043
#>     Attrib V1    0.7313533337609383
#>     Attrib V10    -0.41100710051807554
#>     Attrib V11    -0.532362842869082
#>     Attrib V12    -0.5933808429343639
#>     Attrib V13    -0.2554511249498794
#>     Attrib V14    0.11684155986861079
#>     Attrib V15    0.871152227459187
#>     Attrib V16    0.55315106249044
#>     Attrib V17    0.08561579730694893
#>     Attrib V18    -0.06998639730352708
#>     Attrib V19    0.27389154116186304
#>     Attrib V2    0.035500002688505665
#>     Attrib V20    0.3529403757814683
#>     Attrib V21    0.22461066607713487
#>     Attrib V22    0.14241029996807844
#>     Attrib V23    0.25260690390214596
#>     Attrib V24    0.3817605189886731
#>     Attrib V25    -0.6790631883490147
#>     Attrib V26    -1.3337034484791068
#>     Attrib V27    -1.2659668790437477
#>     Attrib V28    -0.375598753408889
#>     Attrib V29    -0.36869287166990317
#>     Attrib V3    -0.06525143169185045
#>     Attrib V30    -0.22272835984923162
#>     Attrib V31    -1.1043719849739058
#>     Attrib V32    0.8994797704920624
#>     Attrib V33    0.7574883395595238
#>     Attrib V34    0.06158209802958033
#>     Attrib V35    0.15557461966629924
#>     Attrib V36    -0.3861465378171363
#>     Attrib V37    -1.0082783886787847
#>     Attrib V38    0.22254698509103849
#>     Attrib V39    0.13993786829252797
#>     Attrib V4    0.33418265457127183
#>     Attrib V40    -0.7372388758471775
#>     Attrib V41    -0.37289615703818707
#>     Attrib V42    0.6939824679679965
#>     Attrib V43    0.22747252754805128
#>     Attrib V44    0.16011800187325664
#>     Attrib V45    0.26142378099080826
#>     Attrib V46    0.025978957818233832
#>     Attrib V47    -0.3950355092342403
#>     Attrib V48    0.2150444536056688
#>     Attrib V49    0.45361576269261195
#>     Attrib V5    -0.4417517055592205
#>     Attrib V50    -0.9060033662447838
#>     Attrib V51    0.08612672469726264
#>     Attrib V52    -0.24537499265993323
#>     Attrib V53    -0.04290812247412364
#>     Attrib V54    0.7811008759337411
#>     Attrib V55    0.04337934482734275
#>     Attrib V56    0.7899825067709643
#>     Attrib V57    0.011449019643883524
#>     Attrib V58    0.8958493761196386
#>     Attrib V59    0.37662952789863674
#>     Attrib V6    -0.7363291699821977
#>     Attrib V60    0.7937909832795729
#>     Attrib V7    0.10402378029337711
#>     Attrib V8    -0.07407496243403827
#>     Attrib V9    0.26965961927412757
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.020650606145325868
#>     Attrib V1    0.23121884386836056
#>     Attrib V10    -0.19115494008075914
#>     Attrib V11    -0.1912266440610381
#>     Attrib V12    -0.159177493918125
#>     Attrib V13    -0.13688376406071298
#>     Attrib V14    0.05230179526106833
#>     Attrib V15    0.17246061331691753
#>     Attrib V16    0.07389848357319681
#>     Attrib V17    -0.08615683689383889
#>     Attrib V18    0.008702755825108377
#>     Attrib V19    -0.020600734321583575
#>     Attrib V2    0.01858852848807481
#>     Attrib V20    0.04638276875600957
#>     Attrib V21    0.06649238592673128
#>     Attrib V22    -0.03270504644512933
#>     Attrib V23    0.020061127955353964
#>     Attrib V24    0.059561245012109985
#>     Attrib V25    -0.16101318184672306
#>     Attrib V26    -0.26741372199052776
#>     Attrib V27    -0.2059317596376798
#>     Attrib V28    0.017743555876488633
#>     Attrib V29    0.012084272070505279
#>     Attrib V3    0.05005946484672806
#>     Attrib V30    -0.07408304628324722
#>     Attrib V31    -0.42220435052933314
#>     Attrib V32    0.09499284482080168
#>     Attrib V33    0.13813166789234319
#>     Attrib V34    0.0445153266715555
#>     Attrib V35    0.14228693067928677
#>     Attrib V36    0.07640941888165026
#>     Attrib V37    -0.08572153953082445
#>     Attrib V38    0.06353566589585255
#>     Attrib V39    0.0865233784175625
#>     Attrib V4    0.08722103664321294
#>     Attrib V40    -0.17033369431027395
#>     Attrib V41    -0.1116609780936724
#>     Attrib V42    0.15203660733067387
#>     Attrib V43    -0.006196063651358323
#>     Attrib V44    0.07550039541692903
#>     Attrib V45    0.14216347218095593
#>     Attrib V46    0.08707336577768932
#>     Attrib V47    -0.018940796919098533
#>     Attrib V48    0.09050522710592802
#>     Attrib V49    0.1718382445121081
#>     Attrib V5    -0.04252954189440649
#>     Attrib V50    -0.16157963484425714
#>     Attrib V51    0.0782905052224949
#>     Attrib V52    0.049523747341688865
#>     Attrib V53    0.131349385755844
#>     Attrib V54    0.19126622010508781
#>     Attrib V55    0.021630121051956375
#>     Attrib V56    0.16885006558346058
#>     Attrib V57    0.06962195646892666
#>     Attrib V58    0.2707002266082779
#>     Attrib V59    0.12602734960291417
#>     Attrib V6    -0.16511912422194755
#>     Attrib V60    0.2544789910496448
#>     Attrib V7    -0.05156697942086283
#>     Attrib V8    -0.10571361320951442
#>     Attrib V9    0.03288447845857158
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
