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
#>     Threshold    0.15347898922690945
#>     Node 2    2.041879119323035
#>     Node 3    1.0364418314922086
#>     Node 4    0.3381534364416283
#>     Node 5    -2.605326887140095
#>     Node 6    0.8191207970716514
#>     Node 7    2.3207893561839055
#>     Node 8    1.0863826989087388
#>     Node 9    2.0490886405224535
#>     Node 10    -2.712817534646732
#>     Node 11    1.3634811007741152
#>     Node 12    2.0684878906420803
#>     Node 13    -0.13428106791671585
#>     Node 14    2.310050551571757
#>     Node 15    -1.900963324505365
#>     Node 16    -0.381601280301235
#>     Node 17    0.5294050822249123
#>     Node 18    0.17850933744095912
#>     Node 19    2.0515306818089534
#>     Node 20    2.2516499352758372
#>     Node 21    -1.902535864988893
#>     Node 22    0.7701949168332566
#>     Node 23    2.4179243300217617
#>     Node 24    -1.8041337107430935
#>     Node 25    4.225176023352579
#>     Node 26    -0.28347353361366645
#>     Node 27    2.1445675799821204
#>     Node 28    -2.807032943890762
#>     Node 29    0.951687864888069
#>     Node 30    -0.3467831595387106
#>     Node 31    1.9772044017985804
#>     Node 32    1.3084925342981617
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.12878111598893474
#>     Node 2    -2.0810616968236895
#>     Node 3    -1.0183895941264567
#>     Node 4    -0.303497830086281
#>     Node 5    2.6319258524733655
#>     Node 6    -0.7961401746995391
#>     Node 7    -2.3182181272965106
#>     Node 8    -1.1187339612379512
#>     Node 9    -2.0596195582946137
#>     Node 10    2.669770070812594
#>     Node 11    -1.326915914966598
#>     Node 12    -2.1305437927786013
#>     Node 13    0.17571129693690074
#>     Node 14    -2.237480961181691
#>     Node 15    1.8837374686398554
#>     Node 16    0.349297329826457
#>     Node 17    -0.5018810366058701
#>     Node 18    -0.14707903426736976
#>     Node 19    -2.0310786939391368
#>     Node 20    -2.223403325598928
#>     Node 21    1.9514185381020819
#>     Node 22    -0.8228288742675256
#>     Node 23    -2.4520472398577366
#>     Node 24    1.7904997309779012
#>     Node 25    -4.250616000831797
#>     Node 26    0.18439430938822265
#>     Node 27    -2.173759197240883
#>     Node 28    2.778592143572522
#>     Node 29    -0.9844456568775448
#>     Node 30    0.4069545571782561
#>     Node 31    -1.919983765128764
#>     Node 32    -1.3209645365518088
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.21172143810553903
#>     Attrib V1    0.30730466846018634
#>     Attrib V10    -0.037505953759411056
#>     Attrib V11    0.27111541947037054
#>     Attrib V12    -0.07434728676251433
#>     Attrib V13    -0.2841875318354991
#>     Attrib V14    0.02177989264572847
#>     Attrib V15    0.24426053557710392
#>     Attrib V16    -0.00812918166075286
#>     Attrib V17    -0.10116443664923318
#>     Attrib V18    0.27033979500727023
#>     Attrib V19    0.018054032269346963
#>     Attrib V2    0.30851352047896247
#>     Attrib V20    0.3615822928214741
#>     Attrib V21    0.7184636476128649
#>     Attrib V22    0.4393309285225709
#>     Attrib V23    0.19666937975212911
#>     Attrib V24    0.10772627741851327
#>     Attrib V25    -0.5780743606540921
#>     Attrib V26    -0.8299743346890984
#>     Attrib V27    -0.6439132437097191
#>     Attrib V28    -0.8667550947062608
#>     Attrib V29    -0.6927981197419129
#>     Attrib V3    0.1731047106458245
#>     Attrib V30    0.3200066747875585
#>     Attrib V31    -0.9845480303818746
#>     Attrib V32    -0.4311528596866759
#>     Attrib V33    0.66847671407948
#>     Attrib V34    -0.32615373808684983
#>     Attrib V35    -0.5517724851843355
#>     Attrib V36    -0.6468346205169244
#>     Attrib V37    -0.7264728344135954
#>     Attrib V38    -0.2834503410805832
#>     Attrib V39    -5.633558227919319E-4
#>     Attrib V4    0.2098251485928666
#>     Attrib V40    -0.1817026943743596
#>     Attrib V41    -0.35380661633756394
#>     Attrib V42    0.4398683596250497
#>     Attrib V43    0.4990439582878965
#>     Attrib V44    0.34111046941631307
#>     Attrib V45    0.04733246865332638
#>     Attrib V46    0.017601608867483316
#>     Attrib V47    -0.10515589714522863
#>     Attrib V48    0.028362014233319525
#>     Attrib V49    0.1551769286821129
#>     Attrib V5    -0.2015179821451529
#>     Attrib V50    -0.7558223110916974
#>     Attrib V51    -0.03688830282643354
#>     Attrib V52    0.06387610076339975
#>     Attrib V53    0.5015629922460626
#>     Attrib V54    0.8125741891485458
#>     Attrib V55    0.10783751388312182
#>     Attrib V56    0.13463561020153617
#>     Attrib V57    0.3391590444754867
#>     Attrib V58    0.533135309519952
#>     Attrib V59    0.5613293991998964
#>     Attrib V6    -0.6215066222342285
#>     Attrib V60    0.34320325099575927
#>     Attrib V7    -0.23755788865729616
#>     Attrib V8    0.4908143831671253
#>     Attrib V9    0.35675536833021326
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.0926483173326661
#>     Attrib V1    0.15039898027121432
#>     Attrib V10    -0.0831791823564746
#>     Attrib V11    0.1364369640375784
#>     Attrib V12    0.1030311127581545
#>     Attrib V13    -0.05440656317944101
#>     Attrib V14    0.03197004840707506
#>     Attrib V15    0.17911070845292978
#>     Attrib V16    -0.009211936484926658
#>     Attrib V17    -0.020538071160137644
#>     Attrib V18    0.11540810496427631
#>     Attrib V19    0.052042568435571486
#>     Attrib V2    0.2614113362203446
#>     Attrib V20    0.10918551908776317
#>     Attrib V21    0.17204038631523896
#>     Attrib V22    0.08639469904757775
#>     Attrib V23    0.022245992062879458
#>     Attrib V24    0.053522700734961834
#>     Attrib V25    -0.22765822627258797
#>     Attrib V26    -0.37555131132524605
#>     Attrib V27    -0.29565778482352023
#>     Attrib V28    -0.45934970438573164
#>     Attrib V29    -0.5098345030608494
#>     Attrib V3    0.10789247012396802
#>     Attrib V30    0.10559427638067566
#>     Attrib V31    -0.4171517430316181
#>     Attrib V32    -0.1765180633641022
#>     Attrib V33    0.3256355267366263
#>     Attrib V34    -0.14647317688157596
#>     Attrib V35    -0.19359615593779372
#>     Attrib V36    -0.3521477998712834
#>     Attrib V37    -0.3706251203329582
#>     Attrib V38    -0.17256060055291494
#>     Attrib V39    0.01785497649131097
#>     Attrib V4    0.13983899344378747
#>     Attrib V40    -0.07406541717120976
#>     Attrib V41    -0.15525663684426969
#>     Attrib V42    0.13160755498199636
#>     Attrib V43    0.17928450364695123
#>     Attrib V44    0.12964243991201466
#>     Attrib V45    0.008541683451557881
#>     Attrib V46    -0.03245464627082178
#>     Attrib V47    -0.04137007010872922
#>     Attrib V48    0.015464058178220393
#>     Attrib V49    0.09730187232833294
#>     Attrib V5    -0.07793131062032999
#>     Attrib V50    -0.33895753508703097
#>     Attrib V51    -0.024491156027207188
#>     Attrib V52    0.1109404158788345
#>     Attrib V53    0.2624679789873181
#>     Attrib V54    0.5226803462067352
#>     Attrib V55    0.3069681771127402
#>     Attrib V56    0.16710747440424129
#>     Attrib V57    0.2332109993237063
#>     Attrib V58    0.34045589383090324
#>     Attrib V59    0.3555220870877945
#>     Attrib V6    -0.2936347344278259
#>     Attrib V60    0.19764677400859706
#>     Attrib V7    -0.1831683420419594
#>     Attrib V8    0.20515164211052425
#>     Attrib V9    0.08809182118733214
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.14893454313681
#>     Attrib V1    0.04818281269666931
#>     Attrib V10    -0.015438271591265285
#>     Attrib V11    0.06397820165285316
#>     Attrib V12    0.055860091414517025
#>     Attrib V13    -0.005162226997648563
#>     Attrib V14    0.04899544506482663
#>     Attrib V15    0.07464228118900447
#>     Attrib V16    -0.01823783454151381
#>     Attrib V17    0.012860298052696643
#>     Attrib V18    0.03232962184055192
#>     Attrib V19    -0.013871143879360616
#>     Attrib V2    0.10593469172823683
#>     Attrib V20    0.005460545196874896
#>     Attrib V21    0.04017474210927084
#>     Attrib V22    -0.08387728557715218
#>     Attrib V23    -0.046348573836602625
#>     Attrib V24    -0.057085211503033154
#>     Attrib V25    -0.14885486996756728
#>     Attrib V26    -0.13438705072616466
#>     Attrib V27    -0.10698321129704352
#>     Attrib V28    -0.06505956030597523
#>     Attrib V29    -0.07406945420681026
#>     Attrib V3    0.11563348030420119
#>     Attrib V30    0.038011747713518985
#>     Attrib V31    -0.13462087771223769
#>     Attrib V32    -0.08206164309669356
#>     Attrib V33    0.07789109251797169
#>     Attrib V34    0.002416031404766428
#>     Attrib V35    0.001022844448156479
#>     Attrib V36    -0.10526726737006119
#>     Attrib V37    -0.09527185728163722
#>     Attrib V38    -0.04136110954389372
#>     Attrib V39    0.062025892591865125
#>     Attrib V4    0.09325086990057468
#>     Attrib V40    0.01942552297862209
#>     Attrib V41    -0.050401784492394575
#>     Attrib V42    0.051709006254704024
#>     Attrib V43    0.04018386348318786
#>     Attrib V44    0.079498429256682
#>     Attrib V45    0.09621823150007486
#>     Attrib V46    0.016621915656699193
#>     Attrib V47    0.020490609459846383
#>     Attrib V48    0.10405780115074005
#>     Attrib V49    0.12313847101653826
#>     Attrib V5    0.07637947090855136
#>     Attrib V50    -0.054883853646030475
#>     Attrib V51    0.0840501603833249
#>     Attrib V52    0.07586708364378231
#>     Attrib V53    0.14530041291912427
#>     Attrib V54    0.11984878740044136
#>     Attrib V55    0.12443482577197591
#>     Attrib V56    0.10358619425716667
#>     Attrib V57    0.12236081998303362
#>     Attrib V58    0.09485537644511456
#>     Attrib V59    0.1099157894846938
#>     Attrib V6    -0.07956070710220758
#>     Attrib V60    0.06384344919988402
#>     Attrib V7    -0.06129276073663777
#>     Attrib V8    0.024127253624151235
#>     Attrib V9    0.09042353864729125
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.3256992518643681
#>     Attrib V1    -0.6354546310676804
#>     Attrib V10    -0.4900817955108778
#>     Attrib V11    -0.7774823029033002
#>     Attrib V12    -0.3541794200363284
#>     Attrib V13    0.4127987965842728
#>     Attrib V14    0.6990094657920278
#>     Attrib V15    0.6065000723220687
#>     Attrib V16    0.35871601586662266
#>     Attrib V17    0.27903948649412513
#>     Attrib V18    -0.08234901192545856
#>     Attrib V19    0.19325587528700344
#>     Attrib V2    -0.8191632670476745
#>     Attrib V20    0.04250070298993827
#>     Attrib V21    -0.4167389477092578
#>     Attrib V22    -0.3887274828608957
#>     Attrib V23    -0.6300145109005656
#>     Attrib V24    -0.21430119127462643
#>     Attrib V25    0.5831928817860819
#>     Attrib V26    0.04888598989861544
#>     Attrib V27    -0.7883287819016194
#>     Attrib V28    -1.5669753194402751
#>     Attrib V29    -1.1424338116023676
#>     Attrib V3    0.21797150037051477
#>     Attrib V30    -1.1034295010915163
#>     Attrib V31    1.0103738924075503
#>     Attrib V32    0.3205453751603506
#>     Attrib V33    -0.2654932877854033
#>     Attrib V34    0.6279432030190185
#>     Attrib V35    0.013216012274357489
#>     Attrib V36    0.8903459432027846
#>     Attrib V37    0.1790536623811882
#>     Attrib V38    -0.006187867299837648
#>     Attrib V39    0.17936298545746773
#>     Attrib V4    -0.42906464307070374
#>     Attrib V40    0.4865504178593032
#>     Attrib V41    -0.45242149208671667
#>     Attrib V42    -0.2957547689338386
#>     Attrib V43    -0.38742750847308527
#>     Attrib V44    -0.7155952971852284
#>     Attrib V45    -0.9393461597176649
#>     Attrib V46    -0.8615809572943542
#>     Attrib V47    -0.480834377719809
#>     Attrib V48    -0.6299921993035318
#>     Attrib V49    -0.9984039259964271
#>     Attrib V5    -0.40523953851157024
#>     Attrib V50    0.8625484275774031
#>     Attrib V51    -0.4910186375707306
#>     Attrib V52    -0.647492972500474
#>     Attrib V53    -0.48090815812546045
#>     Attrib V54    -0.33219566767254033
#>     Attrib V55    0.20697856246968585
#>     Attrib V56    0.9226765435948596
#>     Attrib V57    0.4754172813559811
#>     Attrib V58    -0.27083547925872864
#>     Attrib V59    0.8530819532513021
#>     Attrib V6    -0.3289056830702891
#>     Attrib V60    0.25803521421950265
#>     Attrib V7    0.39649940774005665
#>     Attrib V8    -0.16114916860813389
#>     Attrib V9    -0.9424942372646238
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.027737069771459604
#>     Attrib V1    0.13494084289347932
#>     Attrib V10    -0.09224178411555094
#>     Attrib V11    0.14620075176225616
#>     Attrib V12    0.14092882296960135
#>     Attrib V13    -0.1123994678955745
#>     Attrib V14    -0.05149538984054384
#>     Attrib V15    0.04239595743441338
#>     Attrib V16    0.025417906066244358
#>     Attrib V17    -0.027369650337082285
#>     Attrib V18    0.16943350342459212
#>     Attrib V19    0.0015097208626719033
#>     Attrib V2    0.2058103590074128
#>     Attrib V20    0.06478909576079503
#>     Attrib V21    0.16580467820129902
#>     Attrib V22    0.0319394844657948
#>     Attrib V23    0.03450714273315219
#>     Attrib V24    0.13009001966254646
#>     Attrib V25    -0.11692669722234082
#>     Attrib V26    -0.2747576562591411
#>     Attrib V27    -0.1589667913849332
#>     Attrib V28    -0.3472111268877771
#>     Attrib V29    -0.3748857527658504
#>     Attrib V3    0.06887915688072252
#>     Attrib V30    0.06615425248176025
#>     Attrib V31    -0.3618148119644543
#>     Attrib V32    -0.12698812202001517
#>     Attrib V33    0.2507045523713937
#>     Attrib V34    -0.12496094886016043
#>     Attrib V35    -0.14101384243586604
#>     Attrib V36    -0.3466050607117658
#>     Attrib V37    -0.32594750180241494
#>     Attrib V38    -0.1645178582515863
#>     Attrib V39    -0.04922252700978095
#>     Attrib V4    0.14323354653170703
#>     Attrib V40    -0.1211443322481588
#>     Attrib V41    -0.07850713856213384
#>     Attrib V42    0.12621900430305744
#>     Attrib V43    0.14536133380235416
#>     Attrib V44    0.09581184991351978
#>     Attrib V45    0.03911929033019111
#>     Attrib V46    0.024441826432251797
#>     Attrib V47    -0.0437005829124863
#>     Attrib V48    0.03999592012755922
#>     Attrib V49    0.10596392646033274
#>     Attrib V5    -0.040946971905421056
#>     Attrib V50    -0.286594583899025
#>     Attrib V51    0.014598013345655643
#>     Attrib V52    0.05976989056445213
#>     Attrib V53    0.2820115308555454
#>     Attrib V54    0.3637874143044148
#>     Attrib V55    0.1732713889143138
#>     Attrib V56    0.13780804230793814
#>     Attrib V57    0.19256957541709174
#>     Attrib V58    0.2468678100888347
#>     Attrib V59    0.2832796375435637
#>     Attrib V6    -0.1486507821127529
#>     Attrib V60    0.18977959381974954
#>     Attrib V7    -0.13312342209281622
#>     Attrib V8    0.15743876590795128
#>     Attrib V9    0.15789539615413764
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.18458783566244946
#>     Attrib V1    0.32168272527982644
#>     Attrib V10    0.6865329773361619
#>     Attrib V11    0.9932643742692934
#>     Attrib V12    0.4930790787240492
#>     Attrib V13    -0.4581966554539498
#>     Attrib V14    -1.010219515412789
#>     Attrib V15    -0.8987985362911752
#>     Attrib V16    -0.5489958772292745
#>     Attrib V17    -0.17831236734026276
#>     Attrib V18    0.2667202045828746
#>     Attrib V19    -0.08851756003796084
#>     Attrib V2    0.6685265532237471
#>     Attrib V20    -0.09582563829421906
#>     Attrib V21    0.2737648826997779
#>     Attrib V22    0.38921837906741363
#>     Attrib V23    0.7494916100236605
#>     Attrib V24    0.5205932809711903
#>     Attrib V25    -0.005627349802812163
#>     Attrib V26    0.09337843448662733
#>     Attrib V27    0.521726609110699
#>     Attrib V28    0.8262252064001371
#>     Attrib V29    0.15472530172512083
#>     Attrib V3    -0.24909099300897825
#>     Attrib V30    0.6816663113992529
#>     Attrib V31    -0.8967258943208076
#>     Attrib V32    -0.28409582497035635
#>     Attrib V33    0.47548474603208074
#>     Attrib V34    -0.3149654013983846
#>     Attrib V35    0.23541921846519717
#>     Attrib V36    -0.7631617509367233
#>     Attrib V37    -0.25477004073915377
#>     Attrib V38    -0.16552160235812552
#>     Attrib V39    -0.3029125414478123
#>     Attrib V4    0.11436251977977753
#>     Attrib V40    -0.34861838355516583
#>     Attrib V41    0.23174924470328506
#>     Attrib V42    0.1996097622161728
#>     Attrib V43    0.32610690374254264
#>     Attrib V44    0.6800279489991284
#>     Attrib V45    0.7472315074604791
#>     Attrib V46    0.7574591731141374
#>     Attrib V47    0.553528970654347
#>     Attrib V48    0.722244605818265
#>     Attrib V49    0.8431015815249222
#>     Attrib V5    0.161769450655416
#>     Attrib V50    -0.9546818126848181
#>     Attrib V51    0.49344127990448583
#>     Attrib V52    0.5318918678146896
#>     Attrib V53    0.4151383546865008
#>     Attrib V54    0.6832370002193912
#>     Attrib V55    -0.37254459857996924
#>     Attrib V56    -0.7252049444782245
#>     Attrib V57    -0.5358238233528633
#>     Attrib V58    0.007324959385896203
#>     Attrib V59    -0.9390715517947434
#>     Attrib V6    0.18480570975800645
#>     Attrib V60    -0.18108538532062404
#>     Attrib V7    -0.3982441803868306
#>     Attrib V8    0.04375191530704174
#>     Attrib V9    1.123994129555888
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.05549710468425374
#>     Attrib V1    0.054939098236556044
#>     Attrib V10    0.030693661739827956
#>     Attrib V11    0.3455305589913772
#>     Attrib V12    0.1688467560931896
#>     Attrib V13    -0.19981612506817265
#>     Attrib V14    -0.31273144654563184
#>     Attrib V15    -0.11441054826425158
#>     Attrib V16    -0.07455336706508973
#>     Attrib V17    -0.033616803527032474
#>     Attrib V18    0.18530361438560775
#>     Attrib V19    0.03987738883069953
#>     Attrib V2    0.2522733599847713
#>     Attrib V20    0.03207723423415425
#>     Attrib V21    0.23705614574292475
#>     Attrib V22    0.15124419444980197
#>     Attrib V23    0.17029162355412655
#>     Attrib V24    0.24631083012152935
#>     Attrib V25    -0.18448801791449124
#>     Attrib V26    -0.29433881331969264
#>     Attrib V27    -0.13784792459748846
#>     Attrib V28    -0.2612043564529152
#>     Attrib V29    -0.3916438501723591
#>     Attrib V3    -0.04346696585208409
#>     Attrib V30    0.26038559705002107
#>     Attrib V31    -0.5965413650804382
#>     Attrib V32    -0.24244232032684893
#>     Attrib V33    0.40778426540258655
#>     Attrib V34    -0.17492743649944434
#>     Attrib V35    -0.1551088528192474
#>     Attrib V36    -0.3966270661263193
#>     Attrib V37    -0.4028452916757398
#>     Attrib V38    -0.08496800907271763
#>     Attrib V39    -0.054094940413887994
#>     Attrib V4    0.1287030715387589
#>     Attrib V40    -0.1920499670369869
#>     Attrib V41    -0.18683438236655622
#>     Attrib V42    0.028096631866885494
#>     Attrib V43    0.22293872459984418
#>     Attrib V44    0.3036858090593883
#>     Attrib V45    0.18866239201992943
#>     Attrib V46    0.11000978130437568
#>     Attrib V47    0.00637751460331072
#>     Attrib V48    0.2041963865123663
#>     Attrib V49    0.29284844803546295
#>     Attrib V5    -0.12907350836534653
#>     Attrib V50    -0.6330252896576841
#>     Attrib V51    0.0095214954198236
#>     Attrib V52    0.10521063509784181
#>     Attrib V53    0.3572112508713694
#>     Attrib V54    0.5366153924775721
#>     Attrib V55    0.11566379008863217
#>     Attrib V56    0.014960603429715022
#>     Attrib V57    0.13878706095130755
#>     Attrib V58    0.21267928153797636
#>     Attrib V59    0.19314107938864936
#>     Attrib V6    -0.3577888515822361
#>     Attrib V60    0.13379482384164382
#>     Attrib V7    -0.29257776820808307
#>     Attrib V8    0.09697701456324448
#>     Attrib V9    0.29671354858445526
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.14359762780771662
#>     Attrib V1    0.21610808856818242
#>     Attrib V10    0.5840230280533731
#>     Attrib V11    0.897072377199681
#>     Attrib V12    0.6620987989716344
#>     Attrib V13    -0.31690784025843793
#>     Attrib V14    -0.9675191193859665
#>     Attrib V15    -0.839916024322686
#>     Attrib V16    -0.5023959102142277
#>     Attrib V17    -0.15606952586206083
#>     Attrib V18    0.144182384904732
#>     Attrib V19    -0.22961763880387284
#>     Attrib V2    0.5460433956596779
#>     Attrib V20    -0.2894109915469743
#>     Attrib V21    -0.07453040342004108
#>     Attrib V22    7.226847270400142E-5
#>     Attrib V23    0.4167794038092292
#>     Attrib V24    0.4824861623214156
#>     Attrib V25    0.1978830632589038
#>     Attrib V26    0.33086544274622465
#>     Attrib V27    0.6172057666113294
#>     Attrib V28    0.7198134303783452
#>     Attrib V29    -0.037384039875968916
#>     Attrib V3    -0.29533840971440556
#>     Attrib V30    0.4942336956710541
#>     Attrib V31    -0.6120695337803205
#>     Attrib V32    -0.10371155910375929
#>     Attrib V33    0.43398246448443956
#>     Attrib V34    -0.020388386878968445
#>     Attrib V35    0.3873733565531225
#>     Attrib V36    -0.5333801318933244
#>     Attrib V37    -0.21242601823089088
#>     Attrib V38    -0.08704677572979622
#>     Attrib V39    -0.1823210020217846
#>     Attrib V4    0.11392411020357607
#>     Attrib V40    -0.33953177315257493
#>     Attrib V41    0.11439471353142926
#>     Attrib V42    -0.09752208959948018
#>     Attrib V43    0.2464658515498675
#>     Attrib V44    0.4859751228249309
#>     Attrib V45    0.6336608360318378
#>     Attrib V46    0.6174230767668616
#>     Attrib V47    0.47307190948819977
#>     Attrib V48    0.7244807471913245
#>     Attrib V49    0.8064029282024902
#>     Attrib V5    0.1330656140455809
#>     Attrib V50    -0.7542868069597936
#>     Attrib V51    0.47274081119522043
#>     Attrib V52    0.4970715064279594
#>     Attrib V53    0.4285692398217843
#>     Attrib V54    0.6472017238076594
#>     Attrib V55    0.029906783882029695
#>     Attrib V56    -0.5720031964944077
#>     Attrib V57    -0.42234213241863977
#>     Attrib V58    -0.029511361608057292
#>     Attrib V59    -0.7219180137649363
#>     Attrib V6    0.13159823185085065
#>     Attrib V60    -0.22949937264237316
#>     Attrib V7    -0.36736949499945953
#>     Attrib V8    -0.012103091194069715
#>     Attrib V9    0.8373136786070389
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.37125843303188283
#>     Attrib V1    -0.531757092689383
#>     Attrib V10    -0.4941309212890819
#>     Attrib V11    -0.8035464164537464
#>     Attrib V12    -0.3412618033986212
#>     Attrib V13    0.40473310104311616
#>     Attrib V14    0.7533115584423881
#>     Attrib V15    0.6050915820191926
#>     Attrib V16    0.3747688877220119
#>     Attrib V17    0.15068487368494782
#>     Attrib V18    -0.11384039427118298
#>     Attrib V19    0.13304194601648361
#>     Attrib V2    -0.8246118843528237
#>     Attrib V20    0.05619269672904162
#>     Attrib V21    -0.37109755603557104
#>     Attrib V22    -0.3592050245502493
#>     Attrib V23    -0.6884190650309032
#>     Attrib V24    -0.29506251079785856
#>     Attrib V25    0.44727193642132185
#>     Attrib V26    -0.03755634829461362
#>     Attrib V27    -0.904550500107648
#>     Attrib V28    -1.6936610620805588
#>     Attrib V29    -1.2586680074722778
#>     Attrib V3    0.2040473343232854
#>     Attrib V30    -1.0132099435907826
#>     Attrib V31    0.9826763143872799
#>     Attrib V32    0.24024347506362095
#>     Attrib V33    -0.20005130639181198
#>     Attrib V34    0.5772520762932744
#>     Attrib V35    -0.1079093512050958
#>     Attrib V36    0.8300707131203274
#>     Attrib V37    0.13102312414891962
#>     Attrib V38    -0.00199534069794618
#>     Attrib V39    0.20457399627554645
#>     Attrib V4    -0.3973693103041106
#>     Attrib V40    0.4441088966737193
#>     Attrib V41    -0.5110258219228325
#>     Attrib V42    -0.26107554583022186
#>     Attrib V43    -0.35320902089728556
#>     Attrib V44    -0.70920006087942
#>     Attrib V45    -0.8916168372965407
#>     Attrib V46    -0.861677154823884
#>     Attrib V47    -0.5030111698486364
#>     Attrib V48    -0.671184897200009
#>     Attrib V49    -0.9961864495610208
#>     Attrib V5    -0.48255656436529687
#>     Attrib V50    0.8096612117503788
#>     Attrib V51    -0.5589761994494699
#>     Attrib V52    -0.6650243031368351
#>     Attrib V53    -0.43620262768760243
#>     Attrib V54    -0.3313228935269564
#>     Attrib V55    0.09642791404838906
#>     Attrib V56    0.8623820790302771
#>     Attrib V57    0.4631586846828454
#>     Attrib V58    -0.22507529230148143
#>     Attrib V59    0.8046417085137656
#>     Attrib V6    -0.426839916059222
#>     Attrib V60    0.23225710650505432
#>     Attrib V7    0.31686565377908565
#>     Attrib V8    -0.12047074774808526
#>     Attrib V9    -0.9098970239497323
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.11497029166939834
#>     Attrib V1    0.07544786256255932
#>     Attrib V10    -0.008678474011104527
#>     Attrib V11    0.30960104442278275
#>     Attrib V12    0.14741175925317723
#>     Attrib V13    -0.27221864555327635
#>     Attrib V14    -0.2019017501943197
#>     Attrib V15    0.002627693355520894
#>     Attrib V16    -0.06387261182252367
#>     Attrib V17    2.313523649798049E-4
#>     Attrib V18    0.2501105020086529
#>     Attrib V19    0.03495468700701973
#>     Attrib V2    0.1990203759033282
#>     Attrib V20    0.1921414645005387
#>     Attrib V21    0.3197236814843551
#>     Attrib V22    0.2026506861341604
#>     Attrib V23    0.1613531369637426
#>     Attrib V24    0.19075182212150593
#>     Attrib V25    -0.21854370039204962
#>     Attrib V26    -0.5046461308866448
#>     Attrib V27    -0.36452780914771
#>     Attrib V28    -0.5847226603423572
#>     Attrib V29    -0.6817963162849416
#>     Attrib V3    -0.022507010004225433
#>     Attrib V30    0.19322149395250382
#>     Attrib V31    -0.6903787547248474
#>     Attrib V32    -0.28813666146088857
#>     Attrib V33    0.49755641089557595
#>     Attrib V34    -0.11479649239494158
#>     Attrib V35    -0.196067635498215
#>     Attrib V36    -0.4207136197079759
#>     Attrib V37    -0.5224389142537618
#>     Attrib V38    -0.14349716990617392
#>     Attrib V39    -0.039215355106809895
#>     Attrib V4    0.09887984443156139
#>     Attrib V40    -0.1837119004825023
#>     Attrib V41    -0.3320978600683302
#>     Attrib V42    0.16087053504946786
#>     Attrib V43    0.3039909031023833
#>     Attrib V44    0.2943395643623588
#>     Attrib V45    0.1488340380029523
#>     Attrib V46    0.043316284269511895
#>     Attrib V47    5.044350493918495E-4
#>     Attrib V48    0.15117179437319817
#>     Attrib V49    0.22342930151562554
#>     Attrib V5    -0.14524772511206963
#>     Attrib V50    -0.5773772962908537
#>     Attrib V51    0.06769276861337487
#>     Attrib V52    0.07094015569986706
#>     Attrib V53    0.36175086927768196
#>     Attrib V54    0.6966247808974636
#>     Attrib V55    0.17617971343287617
#>     Attrib V56    0.12520661280609757
#>     Attrib V57    0.21180404859765817
#>     Attrib V58    0.3461461740345817
#>     Attrib V59    0.25029459070242177
#>     Attrib V6    -0.4295398170246563
#>     Attrib V60    0.17217827868062044
#>     Attrib V7    -0.30408277789477006
#>     Attrib V8    0.2394724957038282
#>     Attrib V9    0.3224187777206433
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.14174084277067092
#>     Attrib V1    0.14877463304263713
#>     Attrib V10    0.04886450914246925
#>     Attrib V11    0.46227041409706593
#>     Attrib V12    -0.004629845892592527
#>     Attrib V13    -0.34342901356979194
#>     Attrib V14    -0.1907525362901837
#>     Attrib V15    0.06179194972583931
#>     Attrib V16    -0.07490845924358226
#>     Attrib V17    -0.11357595161798643
#>     Attrib V18    0.27337002858873305
#>     Attrib V19    0.053192440248061294
#>     Attrib V2    0.31751402973291626
#>     Attrib V20    0.2141514108293386
#>     Attrib V21    0.6186112001746861
#>     Attrib V22    0.5397352820901239
#>     Attrib V23    0.3361043166169799
#>     Attrib V24    0.2527053664540219
#>     Attrib V25    -0.41028713682475776
#>     Attrib V26    -0.7380571537889885
#>     Attrib V27    -0.5478068074157096
#>     Attrib V28    -0.9290091302848097
#>     Attrib V29    -0.8901960278161489
#>     Attrib V3    0.01864016305874515
#>     Attrib V30    0.3154000516885501
#>     Attrib V31    -0.9818315417261886
#>     Attrib V32    -0.40974892762837556
#>     Attrib V33    0.8191515000271787
#>     Attrib V34    -0.3111587916554495
#>     Attrib V35    -0.4986297437367156
#>     Attrib V36    -0.6694276105467272
#>     Attrib V37    -0.8223219248448789
#>     Attrib V38    -0.34347779412705415
#>     Attrib V39    -0.11583019209213265
#>     Attrib V4    0.22281595738494323
#>     Attrib V40    -0.22957619768801135
#>     Attrib V41    -0.43696862937788067
#>     Attrib V42    0.3367293417692638
#>     Attrib V43    0.5542614113801166
#>     Attrib V44    0.3735067146560288
#>     Attrib V45    0.13376015551890394
#>     Attrib V46    0.13320885044358485
#>     Attrib V47    -0.04605182343740039
#>     Attrib V48    0.14125597703207513
#>     Attrib V49    0.2552451332419866
#>     Attrib V5    -0.23160836170082652
#>     Attrib V50    -0.8994361523565254
#>     Attrib V51    -0.007856742160773022
#>     Attrib V52    0.08725159197311702
#>     Attrib V53    0.501680083541626
#>     Attrib V54    0.893898605313325
#>     Attrib V55    0.02394828794993342
#>     Attrib V56    0.10246064586088502
#>     Attrib V57    0.3310890399831392
#>     Attrib V58    0.5228550381766182
#>     Attrib V59    0.44316032022116947
#>     Attrib V6    -0.673945435302671
#>     Attrib V60    0.2551010192282242
#>     Attrib V7    -0.2665603986821506
#>     Attrib V8    0.46365053213763957
#>     Attrib V9    0.5326386061610783
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.2398145796777707
#>     Attrib V1    0.013580910181819823
#>     Attrib V10    -2.660274681501906E-5
#>     Attrib V11    -0.061731981294274596
#>     Attrib V12    -0.042119231008404055
#>     Attrib V13    0.0560739922713165
#>     Attrib V14    0.05752951087539289
#>     Attrib V15    -0.004076078307830872
#>     Attrib V16    -0.014022081160656957
#>     Attrib V17    0.05355681015553187
#>     Attrib V18    0.04518568169424126
#>     Attrib V19    0.01139323871269741
#>     Attrib V2    0.013650717554743312
#>     Attrib V20    0.004270076410381186
#>     Attrib V21    -0.02274404074009064
#>     Attrib V22    -0.042462658326399824
#>     Attrib V23    0.022760993824843045
#>     Attrib V24    -0.0318400417755874
#>     Attrib V25    0.0263741933271445
#>     Attrib V26    -0.09045021284381466
#>     Attrib V27    -0.059405501947980964
#>     Attrib V28    -0.13900466638987324
#>     Attrib V29    -0.059550652050817714
#>     Attrib V3    0.1669888774999522
#>     Attrib V30    -0.044743534461124584
#>     Attrib V31    0.06810125173928133
#>     Attrib V32    0.0884260499209641
#>     Attrib V33    0.019140407340899054
#>     Attrib V34    0.1317307773623976
#>     Attrib V35    0.06980904171686894
#>     Attrib V36    0.10551388243970501
#>     Attrib V37    0.11103774631104926
#>     Attrib V38    0.0672180635476437
#>     Attrib V39    0.16583196286922353
#>     Attrib V4    0.10948535919973347
#>     Attrib V40    0.2186898174253587
#>     Attrib V41    0.1675653046706367
#>     Attrib V42    0.09701704810987587
#>     Attrib V43    0.02615978339881548
#>     Attrib V44    0.05319180188862124
#>     Attrib V45    -0.03629354938619031
#>     Attrib V46    0.08218657886354822
#>     Attrib V47    0.1287247669028885
#>     Attrib V48    0.03713598518536399
#>     Attrib V49    0.03547183594028026
#>     Attrib V5    0.1616037623667673
#>     Attrib V50    0.08901863220180578
#>     Attrib V51    0.0561883103941935
#>     Attrib V52    0.012025181086757411
#>     Attrib V53    0.017813427787806677
#>     Attrib V54    -0.05308561585472064
#>     Attrib V55    -0.019862204930317935
#>     Attrib V56    0.123637077278366
#>     Attrib V57    0.08577257740510273
#>     Attrib V58    0.01648669248652948
#>     Attrib V59    0.08463076833073034
#>     Attrib V6    0.16913911356068032
#>     Attrib V60    0.10919676071439177
#>     Attrib V7    0.11331685228226356
#>     Attrib V8    -0.010902783586807714
#>     Attrib V9    0.0132181726692257
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.17302866050578142
#>     Attrib V1    0.2608668652998896
#>     Attrib V10    0.08772408697788094
#>     Attrib V11    0.49912009927762707
#>     Attrib V12    0.15903634568502287
#>     Attrib V13    -0.2991537936372602
#>     Attrib V14    -0.23823308306303173
#>     Attrib V15    0.13037807605841584
#>     Attrib V16    -0.16615889667072534
#>     Attrib V17    -0.14411204972855302
#>     Attrib V18    0.21874732190187504
#>     Attrib V19    -0.07969543535946318
#>     Attrib V2    0.3139083711581327
#>     Attrib V20    0.19048975773192425
#>     Attrib V21    0.5493450650948312
#>     Attrib V22    0.4332302928343034
#>     Attrib V23    0.25301028444749174
#>     Attrib V24    0.2882102616071263
#>     Attrib V25    -0.23794372322685767
#>     Attrib V26    -0.5899397637444417
#>     Attrib V27    -0.7232223273802891
#>     Attrib V28    -1.3245942782179079
#>     Attrib V29    -1.3619542404377831
#>     Attrib V3    0.02589214327886575
#>     Attrib V30    0.13852771678581727
#>     Attrib V31    -0.842944372621768
#>     Attrib V32    -0.4047649676583271
#>     Attrib V33    0.7991901574312408
#>     Attrib V34    -0.22078736212657066
#>     Attrib V35    -0.3968790429981285
#>     Attrib V36    -0.6447513039216637
#>     Attrib V37    -0.7503061183713321
#>     Attrib V38    -0.4345576848932036
#>     Attrib V39    -0.0969657674422481
#>     Attrib V4    0.11852978602884504
#>     Attrib V40    -0.2262878429990605
#>     Attrib V41    -0.5058955980058016
#>     Attrib V42    0.2519260554560985
#>     Attrib V43    0.43134982863993887
#>     Attrib V44    0.3283186589440328
#>     Attrib V45    -0.0010023138553088208
#>     Attrib V46    0.022068000884303055
#>     Attrib V47    -0.08396242352759775
#>     Attrib V48    0.16963574003269713
#>     Attrib V49    0.28454163920770476
#>     Attrib V5    -0.35171109064658573
#>     Attrib V50    -0.7763233398935683
#>     Attrib V51    -0.06085617961459752
#>     Attrib V52    0.018762267998620123
#>     Attrib V53    0.4939366001661578
#>     Attrib V54    1.0824129703198955
#>     Attrib V55    0.1934248773865009
#>     Attrib V56    0.21572740370132723
#>     Attrib V57    0.4020980925136665
#>     Attrib V58    0.5413210144712777
#>     Attrib V59    0.47884850123271444
#>     Attrib V6    -0.6463636622016513
#>     Attrib V60    0.3708189614975563
#>     Attrib V7    -0.19833453783346094
#>     Attrib V8    0.4154077454116884
#>     Attrib V9    0.4755586273682011
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.3650538271745324
#>     Attrib V1    -0.29830724214910204
#>     Attrib V10    -0.40790938949081046
#>     Attrib V11    -0.8699792874558203
#>     Attrib V12    -0.3692950378914549
#>     Attrib V13    0.4373921652880565
#>     Attrib V14    0.7849546348941348
#>     Attrib V15    0.6593990176412993
#>     Attrib V16    0.4790171136720212
#>     Attrib V17    0.29325011930333733
#>     Attrib V18    -0.09725540633862244
#>     Attrib V19    0.3075205055921103
#>     Attrib V2    -0.5742338577150822
#>     Attrib V20    0.26611074048447564
#>     Attrib V21    -0.22203045839432325
#>     Attrib V22    -0.18907088707485692
#>     Attrib V23    -0.4057391854835472
#>     Attrib V24    -0.35156623011762883
#>     Attrib V25    0.2765679038771498
#>     Attrib V26    0.21765429216793608
#>     Attrib V27    -0.3184773502787081
#>     Attrib V28    -0.39793387970025673
#>     Attrib V29    0.03247322758094932
#>     Attrib V3    0.3493116263915967
#>     Attrib V30    -0.692548445523759
#>     Attrib V31    0.9731499879312386
#>     Attrib V32    0.2243498342415646
#>     Attrib V33    -0.6861740769957689
#>     Attrib V34    0.3981519017421888
#>     Attrib V35    0.05043597234906393
#>     Attrib V36    0.8340707047885945
#>     Attrib V37    0.4791183144386254
#>     Attrib V38    0.2407371235697578
#>     Attrib V39    0.24352903347699906
#>     Attrib V4    -0.04561586667942493
#>     Attrib V40    0.40880361030141266
#>     Attrib V41    -0.1314004452771224
#>     Attrib V42    -0.35018602925319653
#>     Attrib V43    -0.467506138968023
#>     Attrib V44    -0.7017775731394622
#>     Attrib V45    -0.7588678684796053
#>     Attrib V46    -0.5717475339454388
#>     Attrib V47    -0.32091572897138254
#>     Attrib V48    -0.606717012719618
#>     Attrib V49    -0.829320936212894
#>     Attrib V5    0.044809066750838546
#>     Attrib V50    1.0626896409581943
#>     Attrib V51    -0.18017357618582314
#>     Attrib V52    -0.35621287065209595
#>     Attrib V53    -0.3740094973092168
#>     Attrib V54    -0.6116478049950298
#>     Attrib V55    0.15144022453881753
#>     Attrib V56    0.7742889601798538
#>     Attrib V57    0.1778171429660853
#>     Attrib V58    -0.36085904649765443
#>     Attrib V59    0.5963730650204663
#>     Attrib V6    0.11702913267051232
#>     Attrib V60    0.31890206980021496
#>     Attrib V7    0.45515283360161446
#>     Attrib V8    -0.21615317036306583
#>     Attrib V9    -0.8302826681119784
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.21096777233253955
#>     Attrib V1    -0.015458827010196304
#>     Attrib V10    0.008392494270180798
#>     Attrib V11    -0.15056875528952554
#>     Attrib V12    -0.10118874517043581
#>     Attrib V13    0.026990659861756774
#>     Attrib V14    0.029176112057675972
#>     Attrib V15    -0.011619773841347948
#>     Attrib V16    0.0780792773811816
#>     Attrib V17    0.09531943857271855
#>     Attrib V18    0.10073110588731017
#>     Attrib V19    0.05335381204971782
#>     Attrib V2    -0.061765092846395406
#>     Attrib V20    -0.0771017622802372
#>     Attrib V21    -0.06880420142841967
#>     Attrib V22    0.012944684355609144
#>     Attrib V23    -0.016876713712774237
#>     Attrib V24    -0.021633056778272878
#>     Attrib V25    0.036882723570085804
#>     Attrib V26    -0.07269943050402919
#>     Attrib V27    -0.16198615634310679
#>     Attrib V28    -0.14239615925553456
#>     Attrib V29    -0.08312954034707858
#>     Attrib V3    0.12716303002832452
#>     Attrib V30    -0.12440731372598218
#>     Attrib V31    0.1817606288246427
#>     Attrib V32    0.18112109750697278
#>     Attrib V33    0.05645370753086615
#>     Attrib V34    0.1696989854158582
#>     Attrib V35    0.10284869043336616
#>     Attrib V36    0.21519505783447523
#>     Attrib V37    0.2155743760021193
#>     Attrib V38    0.10217798900728148
#>     Attrib V39    0.14824800684733708
#>     Attrib V4    0.08889218632049965
#>     Attrib V40    0.26667287449324223
#>     Attrib V41    0.28316101193357723
#>     Attrib V42    0.18652169530232326
#>     Attrib V43    0.0706987558797606
#>     Attrib V44    0.014110990300762658
#>     Attrib V45    -0.03167734377947006
#>     Attrib V46    0.0656903548830759
#>     Attrib V47    0.10403895934915866
#>     Attrib V48    0.007418504166079445
#>     Attrib V49    -0.06977711450707748
#>     Attrib V5    0.1669257561066576
#>     Attrib V50    0.22618455553623268
#>     Attrib V51    0.1191965731048398
#>     Attrib V52    0.03994561726736612
#>     Attrib V53    0.033179554758859565
#>     Attrib V54    -0.13474688015172662
#>     Attrib V55    -0.0721875005870459
#>     Attrib V56    0.13293518203865437
#>     Attrib V57    0.08413247316094863
#>     Attrib V58    0.041141859227038224
#>     Attrib V59    -6.710999686540481E-4
#>     Attrib V6    0.21621535304575865
#>     Attrib V60    0.07386885810084515
#>     Attrib V7    0.09564648767407907
#>     Attrib V8    -0.028788101654385983
#>     Attrib V9    0.00563183191901818
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.04174272644518273
#>     Attrib V1    0.10024514627553134
#>     Attrib V10    0.004878792609180635
#>     Attrib V11    0.13252408703418198
#>     Attrib V12    0.05705150892019759
#>     Attrib V13    -0.10639004372402902
#>     Attrib V14    -0.06465555083251742
#>     Attrib V15    0.06875369637945332
#>     Attrib V16    -0.021137877450058074
#>     Attrib V17    -0.005570442125270865
#>     Attrib V18    0.07107920706107036
#>     Attrib V19    0.015122801151418253
#>     Attrib V2    0.19792667436618397
#>     Attrib V20    -0.008624534984676734
#>     Attrib V21    0.014853536278091767
#>     Attrib V22    0.002260946101028307
#>     Attrib V23    -0.05422758788900534
#>     Attrib V24    0.030049055149102805
#>     Attrib V25    -0.16610714805490628
#>     Attrib V26    -0.20326977802623677
#>     Attrib V27    -0.08625078212866087
#>     Attrib V28    -0.17322684434587332
#>     Attrib V29    -0.2408433359630634
#>     Attrib V3    0.040080284414466615
#>     Attrib V30    0.06573716500304376
#>     Attrib V31    -0.18934470074999432
#>     Attrib V32    -0.1481824910164953
#>     Attrib V33    0.1620367632770523
#>     Attrib V34    -0.0653665314146322
#>     Attrib V35    -0.005326136704752965
#>     Attrib V36    -0.19962870537438548
#>     Attrib V37    -0.1946036183324082
#>     Attrib V38    -0.006130129395307647
#>     Attrib V39    0.044862390696020014
#>     Attrib V4    0.09748778787565865
#>     Attrib V40    -0.07320745745216535
#>     Attrib V41    -0.061402798701712474
#>     Attrib V42    0.003522674267566019
#>     Attrib V43    0.11911235733027718
#>     Attrib V44    0.10104566284658367
#>     Attrib V45    0.07352148380085965
#>     Attrib V46    1.564470564005549E-4
#>     Attrib V47    -0.03784297787851266
#>     Attrib V48    0.1251326459852819
#>     Attrib V49    0.07359599655590575
#>     Attrib V5    -0.010510444931899489
#>     Attrib V50    -0.17698531974195286
#>     Attrib V51    0.029417408457643894
#>     Attrib V52    0.048818121455213984
#>     Attrib V53    0.13215584373289518
#>     Attrib V54    0.21314699085100489
#>     Attrib V55    0.18760609105807644
#>     Attrib V56    0.10315340078867012
#>     Attrib V57    0.16340546326773972
#>     Attrib V58    0.0978188966116573
#>     Attrib V59    0.0969348490206066
#>     Attrib V6    -0.10045822783287692
#>     Attrib V60    0.11374455625384759
#>     Attrib V7    -0.1487118981476625
#>     Attrib V8    0.09046214598837762
#>     Attrib V9    0.09026827983674181
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.20086063929961231
#>     Attrib V1    0.05956638912356805
#>     Attrib V10    0.02602446480175334
#>     Attrib V11    0.027039910150805774
#>     Attrib V12    0.009817909565560414
#>     Attrib V13    -0.027335570475574687
#>     Attrib V14    0.017299719917816408
#>     Attrib V15    -0.004881581939867435
#>     Attrib V16    0.009176017027220922
#>     Attrib V17    -0.00261580037134233
#>     Attrib V18    0.09701721869762696
#>     Attrib V19    -0.040265653971694494
#>     Attrib V2    0.0998447523028841
#>     Attrib V20    -0.0013606220332610186
#>     Attrib V21    0.0014920596271607266
#>     Attrib V22    -0.05985742752490193
#>     Attrib V23    -0.03920862065228537
#>     Attrib V24    -0.05615929096090136
#>     Attrib V25    -0.04065291000145752
#>     Attrib V26    -0.06237012804314792
#>     Attrib V27    -0.048231883076140805
#>     Attrib V28    -0.10547984654336286
#>     Attrib V29    -0.11935323401935781
#>     Attrib V3    0.14689264927956286
#>     Attrib V30    -0.051188031918653835
#>     Attrib V31    -0.06889898688583809
#>     Attrib V32    -0.03943888834826559
#>     Attrib V33    0.020780592885451876
#>     Attrib V34    0.04715949576063817
#>     Attrib V35    0.010760034037134195
#>     Attrib V36    0.04713786154338865
#>     Attrib V37    -0.030480646266883224
#>     Attrib V38    -0.002770362481250845
#>     Attrib V39    0.0951638193978176
#>     Attrib V4    0.07692701121132066
#>     Attrib V40    0.044248645538163225
#>     Attrib V41    -0.009683828815470601
#>     Attrib V42    0.025175806298511863
#>     Attrib V43    0.04042318890855895
#>     Attrib V44    0.08881096183948928
#>     Attrib V45    -0.022617298465399265
#>     Attrib V46    0.029351129156594862
#>     Attrib V47    0.10082050309255229
#>     Attrib V48    0.08252818344140297
#>     Attrib V49    0.08408983409837806
#>     Attrib V5    0.07774759873464833
#>     Attrib V50    -0.04655985098995057
#>     Attrib V51    0.11653471770599959
#>     Attrib V52    0.04804972150262032
#>     Attrib V53    0.08372687776899639
#>     Attrib V54    0.053091834302635414
#>     Attrib V55    0.10211806754591671
#>     Attrib V56    0.1299631096584225
#>     Attrib V57    0.06248714032672825
#>     Attrib V58    0.06638689152523307
#>     Attrib V59    0.10007842352788068
#>     Attrib V6    0.007948561724168062
#>     Attrib V60    0.1251386194571343
#>     Attrib V7    0.028486841779478377
#>     Attrib V8    0.06943420883608957
#>     Attrib V9    0.0626723497352714
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    -0.0918190551996553
#>     Attrib V1    0.14895023108470257
#>     Attrib V10    0.22669918083306942
#>     Attrib V11    0.6523586682644079
#>     Attrib V12    0.33430633861206077
#>     Attrib V13    -0.28686083392491635
#>     Attrib V14    -0.3980992449977089
#>     Attrib V15    -0.09326166051563879
#>     Attrib V16    -0.27055362424572493
#>     Attrib V17    -0.09213601590455536
#>     Attrib V18    0.37066420698971325
#>     Attrib V19    0.04634606332765187
#>     Attrib V2    0.41362787402734436
#>     Attrib V20    0.22688509078112554
#>     Attrib V21    0.6638097200043123
#>     Attrib V22    0.6966591240572778
#>     Attrib V23    0.5726359300706607
#>     Attrib V24    0.45979965711549603
#>     Attrib V25    -0.233983720921344
#>     Attrib V26    -0.5514389865945076
#>     Attrib V27    -0.3111609446697141
#>     Attrib V28    -0.5149097523096509
#>     Attrib V29    -0.677476119158633
#>     Attrib V3    -0.07077520709058924
#>     Attrib V30    0.5813119918670159
#>     Attrib V31    -1.080821597756548
#>     Attrib V32    -0.47827454296831795
#>     Attrib V33    0.7573870031222372
#>     Attrib V34    -0.4577941609860347
#>     Attrib V35    -0.33938593247001175
#>     Attrib V36    -0.6218525382099592
#>     Attrib V37    -0.6960160369987318
#>     Attrib V38    -0.17702865391575762
#>     Attrib V39    -0.0769511355920804
#>     Attrib V4    0.24180694218219645
#>     Attrib V40    -0.36617867281089433
#>     Attrib V41    -0.46123893018744083
#>     Attrib V42    0.2927410410900644
#>     Attrib V43    0.5646521252755677
#>     Attrib V44    0.5752140067739605
#>     Attrib V45    0.34585392699566503
#>     Attrib V46    0.17657975028771455
#>     Attrib V47    -0.033985113123269704
#>     Attrib V48    0.19970412002020427
#>     Attrib V49    0.5145313683476611
#>     Attrib V5    -0.20388413445955975
#>     Attrib V50    -1.1609127160963195
#>     Attrib V51    0.08308210090499274
#>     Attrib V52    0.19928375937987547
#>     Attrib V53    0.5465965700496032
#>     Attrib V54    0.9431859656347293
#>     Attrib V55    0.017751332459882356
#>     Attrib V56    0.0416650916394743
#>     Attrib V57    -0.008088335676711723
#>     Attrib V58    0.4162588487625449
#>     Attrib V59    0.28613762673479254
#>     Attrib V6    -0.673594154044087
#>     Attrib V60    0.14179338298707003
#>     Attrib V7    -0.4267651762968606
#>     Attrib V8    0.27760903701852285
#>     Attrib V9    0.669011276833402
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    -0.31480611588348023
#>     Attrib V1    0.2752585209797417
#>     Attrib V10    0.5254591663066078
#>     Attrib V11    0.8170709391698839
#>     Attrib V12    0.3742882199832508
#>     Attrib V13    -0.20185270806957437
#>     Attrib V14    -0.45641719955843885
#>     Attrib V15    -0.26389912803109183
#>     Attrib V16    -0.451972639369148
#>     Attrib V17    -0.10703951846034682
#>     Attrib V18    0.4819316265046597
#>     Attrib V19    0.11663380511651524
#>     Attrib V2    0.4459893540623169
#>     Attrib V20    0.4723524019821762
#>     Attrib V21    1.027431922968634
#>     Attrib V22    1.1091726064501493
#>     Attrib V23    0.9137639403702886
#>     Attrib V24    0.450865948070461
#>     Attrib V25    -0.20572757820592566
#>     Attrib V26    -0.3995671796153809
#>     Attrib V27    -0.1801983858711164
#>     Attrib V28    -0.3792124056834606
#>     Attrib V29    -0.47587553128928334
#>     Attrib V3    -0.010495613536142033
#>     Attrib V30    0.793393937765381
#>     Attrib V31    -1.2236953475925783
#>     Attrib V32    -0.6834407341984207
#>     Attrib V33    0.5499751457130312
#>     Attrib V34    -0.5481656725668338
#>     Attrib V35    -0.16807539154900966
#>     Attrib V36    -0.23890600500180006
#>     Attrib V37    -0.27887270852486046
#>     Attrib V38    0.12951842906355457
#>     Attrib V39    0.016977890440017376
#>     Attrib V4    0.30578760393943893
#>     Attrib V40    -0.4674270816180147
#>     Attrib V41    -0.5149331459316208
#>     Attrib V42    0.19310048015163797
#>     Attrib V43    0.7344879365950351
#>     Attrib V44    0.876164339696155
#>     Attrib V45    0.40379789444598846
#>     Attrib V46    0.2165234406437977
#>     Attrib V47    0.0817847892720583
#>     Attrib V48    0.22923867499537157
#>     Attrib V49    0.47910747579391105
#>     Attrib V5    -0.1200002570223246
#>     Attrib V50    -1.1607197986990483
#>     Attrib V51    0.3428592130792659
#>     Attrib V52    0.2250727047719882
#>     Attrib V53    0.4446791524916125
#>     Attrib V54    0.8214652261313926
#>     Attrib V55    -0.32087448579301237
#>     Attrib V56    0.14051603152483452
#>     Attrib V57    -0.35387471644909624
#>     Attrib V58    0.11919817021547839
#>     Attrib V59    0.14227945284668347
#>     Attrib V6    -0.7341077389924815
#>     Attrib V60    0.05241637272550231
#>     Attrib V7    -0.4910398588894024
#>     Attrib V8    0.09918188890087529
#>     Attrib V9    0.8793786408006538
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.35532763813126556
#>     Attrib V1    -0.24417297630235033
#>     Attrib V10    -0.4149968480528334
#>     Attrib V11    -0.8914810440642302
#>     Attrib V12    -0.45348696227845303
#>     Attrib V13    0.4183218051207928
#>     Attrib V14    0.8047265728596755
#>     Attrib V15    0.6248213402697517
#>     Attrib V16    0.4785759542512705
#>     Attrib V17    0.31582298389970986
#>     Attrib V18    -0.06568326651956623
#>     Attrib V19    0.24630643991006526
#>     Attrib V2    -0.5704182366190189
#>     Attrib V20    0.2817488722151348
#>     Attrib V21    -0.11435157672231375
#>     Attrib V22    -0.19899052965259167
#>     Attrib V23    -0.3729192296279632
#>     Attrib V24    -0.33317149892045833
#>     Attrib V25    0.3570277828684338
#>     Attrib V26    0.26559343599158863
#>     Attrib V27    -0.2590583980452559
#>     Attrib V28    -0.41416005940101397
#>     Attrib V29    0.04752447439157598
#>     Attrib V3    0.32126625623203875
#>     Attrib V30    -0.6807954776544423
#>     Attrib V31    1.0148036293021414
#>     Attrib V32    0.17128606044873723
#>     Attrib V33    -0.6977964033246623
#>     Attrib V34    0.36895884029262266
#>     Attrib V35    0.028500340272850283
#>     Attrib V36    0.8623480596962082
#>     Attrib V37    0.5297021187788458
#>     Attrib V38    0.21493691912825827
#>     Attrib V39    0.24604118143158102
#>     Attrib V4    -0.013573314077534383
#>     Attrib V40    0.5102458093409705
#>     Attrib V41    -0.0041143324868274656
#>     Attrib V42    -0.2922646355822495
#>     Attrib V43    -0.394889075358227
#>     Attrib V44    -0.6532518080230636
#>     Attrib V45    -0.8158513854150777
#>     Attrib V46    -0.6095037825195723
#>     Attrib V47    -0.3301403348546081
#>     Attrib V48    -0.6140001744114805
#>     Attrib V49    -0.8910360575884545
#>     Attrib V5    0.030987350534347806
#>     Attrib V50    1.1106565463509332
#>     Attrib V51    -0.18143841942288122
#>     Attrib V52    -0.33057160174735034
#>     Attrib V53    -0.4293376693038376
#>     Attrib V54    -0.6822994237084442
#>     Attrib V55    0.04502126305423504
#>     Attrib V56    0.7115448039908321
#>     Attrib V57    0.2869188551082529
#>     Attrib V58    -0.4177250775706325
#>     Attrib V59    0.6204623332304074
#>     Attrib V6    0.14496958697208862
#>     Attrib V60    0.39257365162194435
#>     Attrib V7    0.5517516296627921
#>     Attrib V8    -0.2620967849102081
#>     Attrib V9    -0.8089156652257802
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.08676055253712672
#>     Attrib V1    0.16320451444638392
#>     Attrib V10    -0.06710215328212547
#>     Attrib V11    0.14761606950288297
#>     Attrib V12    0.09648392086069103
#>     Attrib V13    -0.09465702658965432
#>     Attrib V14    0.0012804443483812843
#>     Attrib V15    0.04097144912880231
#>     Attrib V16    0.053622520617835734
#>     Attrib V17    0.015341909496351943
#>     Attrib V18    0.12262191312991183
#>     Attrib V19    -0.006573454359491056
#>     Attrib V2    0.211504360482505
#>     Attrib V20    0.06497012824406743
#>     Attrib V21    0.09331045223039965
#>     Attrib V22    -0.028898796604668875
#>     Attrib V23    -0.05007262154508759
#>     Attrib V24    0.09780331668928437
#>     Attrib V25    -0.18379247762104645
#>     Attrib V26    -0.3056685486428121
#>     Attrib V27    -0.24493485937116996
#>     Attrib V28    -0.44200107526195564
#>     Attrib V29    -0.37798416342092384
#>     Attrib V3    0.0502944582476128
#>     Attrib V30    0.010161055412132552
#>     Attrib V31    -0.2822115491598154
#>     Attrib V32    -0.1555419051697434
#>     Attrib V33    0.19342070028955693
#>     Attrib V34    -0.07688027659834354
#>     Attrib V35    -0.11600430595622262
#>     Attrib V36    -0.2509672924337385
#>     Attrib V37    -0.26712591975523475
#>     Attrib V38    -0.13379677189400555
#>     Attrib V39    -0.029402041146137318
#>     Attrib V4    0.12849520487194538
#>     Attrib V40    -0.05238167280039338
#>     Attrib V41    -0.18090435299893123
#>     Attrib V42    0.04110040608790304
#>     Attrib V43    0.1789200423715086
#>     Attrib V44    0.06806578699542838
#>     Attrib V45    -0.04266982948697217
#>     Attrib V46    0.020188880951567262
#>     Attrib V47    -0.0699465073878416
#>     Attrib V48    0.10789156940783974
#>     Attrib V49    0.1266870206941222
#>     Attrib V5    -0.026095332635031356
#>     Attrib V50    -0.2534695667062618
#>     Attrib V51    -0.001528680390000917
#>     Attrib V52    0.08482076552989723
#>     Attrib V53    0.22226881825311945
#>     Attrib V54    0.40059118156348617
#>     Attrib V55    0.26526214891640654
#>     Attrib V56    0.1800142367744091
#>     Attrib V57    0.21819049996440293
#>     Attrib V58    0.2811126469044806
#>     Attrib V59    0.274110426681554
#>     Attrib V6    -0.18030061402280387
#>     Attrib V60    0.21369893800875842
#>     Attrib V7    -0.11990239970034389
#>     Attrib V8    0.05669528666891828
#>     Attrib V9    0.10143115367499611
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.21698671256832983
#>     Attrib V1    0.24004351127589338
#>     Attrib V10    0.10610575007116092
#>     Attrib V11    0.5104774672244669
#>     Attrib V12    0.11170014214600503
#>     Attrib V13    -0.3020211788500605
#>     Attrib V14    -0.21294869117143655
#>     Attrib V15    0.07797462510276267
#>     Attrib V16    -0.20325707139461152
#>     Attrib V17    -0.13021139698008824
#>     Attrib V18    0.2624810523354795
#>     Attrib V19    -0.07122383287238625
#>     Attrib V2    0.24982705663537313
#>     Attrib V20    0.2117339306327138
#>     Attrib V21    0.6890022979333514
#>     Attrib V22    0.6164997351937561
#>     Attrib V23    0.35008055622724876
#>     Attrib V24    0.30734384244290075
#>     Attrib V25    -0.32279145670449627
#>     Attrib V26    -0.7238685262484031
#>     Attrib V27    -0.7903322700979345
#>     Attrib V28    -1.328398692755568
#>     Attrib V29    -1.3104064425955269
#>     Attrib V3    0.11433727919573941
#>     Attrib V30    0.21125790481205628
#>     Attrib V31    -1.0144803269881093
#>     Attrib V32    -0.4539507770992438
#>     Attrib V33    0.829043597341833
#>     Attrib V34    -0.3624883268222683
#>     Attrib V35    -0.5002412208132168
#>     Attrib V36    -0.6816759424315645
#>     Attrib V37    -0.858868210465451
#>     Attrib V38    -0.5151794930399229
#>     Attrib V39    -0.15495460313341763
#>     Attrib V4    0.2251026407516841
#>     Attrib V40    -0.3360425310350875
#>     Attrib V41    -0.5522438331136998
#>     Attrib V42    0.38387312691196046
#>     Attrib V43    0.5977699181219241
#>     Attrib V44    0.39304715493171166
#>     Attrib V45    0.117155773760346
#>     Attrib V46    0.08340375253056326
#>     Attrib V47    0.01991509095465916
#>     Attrib V48    0.11996819678372404
#>     Attrib V49    0.28964036986291636
#>     Attrib V5    -0.3154343883201564
#>     Attrib V50    -0.9195408467828284
#>     Attrib V51    -0.05317801817242494
#>     Attrib V52    0.047945530250147576
#>     Attrib V53    0.5611834844336199
#>     Attrib V54    1.0340756968421678
#>     Attrib V55    0.0323813354981713
#>     Attrib V56    0.18014099353185065
#>     Attrib V57    0.3738985439169928
#>     Attrib V58    0.5809300617889533
#>     Attrib V59    0.5261248017241845
#>     Attrib V6    -0.7001905941147354
#>     Attrib V60    0.30044599801281296
#>     Attrib V7    -0.2306068464890106
#>     Attrib V8    0.5119634772571451
#>     Attrib V9    0.5863300363910289
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.26956634237626953
#>     Attrib V1    -0.3178168087181062
#>     Attrib V10    -0.5066508031855045
#>     Attrib V11    -0.8503680716771448
#>     Attrib V12    -0.41774442941784184
#>     Attrib V13    0.3660534016635704
#>     Attrib V14    0.7687546197829401
#>     Attrib V15    0.6494092818016682
#>     Attrib V16    0.46246930991728485
#>     Attrib V17    0.32637113246745186
#>     Attrib V18    -0.10102183625984394
#>     Attrib V19    0.21855192761013512
#>     Attrib V2    -0.5786263601301612
#>     Attrib V20    0.2114078118842604
#>     Attrib V21    -0.22286664450278146
#>     Attrib V22    -0.3168516403968646
#>     Attrib V23    -0.43132549305194173
#>     Attrib V24    -0.3894348182777654
#>     Attrib V25    0.22199417814677574
#>     Attrib V26    0.13594278952300115
#>     Attrib V27    -0.33577048344663185
#>     Attrib V28    -0.4341716103623216
#>     Attrib V29    -0.03944346843066326
#>     Attrib V3    0.26908298786175355
#>     Attrib V30    -0.6885805286946504
#>     Attrib V31    0.8765319951072935
#>     Attrib V32    0.24746871359531875
#>     Attrib V33    -0.6201111073892274
#>     Attrib V34    0.3653922412422777
#>     Attrib V35    0.00842013107821499
#>     Attrib V36    0.7895668186867326
#>     Attrib V37    0.3471339617200421
#>     Attrib V38    0.1954876946712385
#>     Attrib V39    0.2111563540872992
#>     Attrib V4    -0.05772336645803516
#>     Attrib V40    0.45754415040830787
#>     Attrib V41    -0.06644011985365388
#>     Attrib V42    -0.2938207459293769
#>     Attrib V43    -0.3530307027309969
#>     Attrib V44    -0.6696647961625231
#>     Attrib V45    -0.7730748158083094
#>     Attrib V46    -0.5687973491067448
#>     Attrib V47    -0.3168357981376214
#>     Attrib V48    -0.6011592088983625
#>     Attrib V49    -0.836414901784291
#>     Attrib V5    -0.05959498583802094
#>     Attrib V50    1.0009082703866872
#>     Attrib V51    -0.2522076844248232
#>     Attrib V52    -0.30853240995260944
#>     Attrib V53    -0.4236540354633445
#>     Attrib V54    -0.5914313586134418
#>     Attrib V55    0.22840434514007
#>     Attrib V56    0.7079878390088781
#>     Attrib V57    0.34438904794544317
#>     Attrib V58    -0.26334407529232673
#>     Attrib V59    0.6272867788395443
#>     Attrib V6    0.08292161737663518
#>     Attrib V60    0.27149539439851167
#>     Attrib V7    0.4044765302778005
#>     Attrib V8    -0.16572504643426594
#>     Attrib V9    -0.7912055914092383
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.5486857579973363
#>     Attrib V1    0.48919568380726064
#>     Attrib V10    0.4326836136537142
#>     Attrib V11    1.191262302305062
#>     Attrib V12    1.2680543889820726
#>     Attrib V13    -0.05906829028087868
#>     Attrib V14    -0.9582246087371459
#>     Attrib V15    -1.337141814168544
#>     Attrib V16    -0.875357068949223
#>     Attrib V17    0.051377062398771274
#>     Attrib V18    0.3623930140371216
#>     Attrib V19    -0.3481633728389621
#>     Attrib V2    1.0194838459660216
#>     Attrib V20    -0.4242247326925231
#>     Attrib V21    -0.17345787120725653
#>     Attrib V22    -0.09372049364583472
#>     Attrib V23    0.8680103825135218
#>     Attrib V24    0.8258264989144151
#>     Attrib V25    0.19715943804689953
#>     Attrib V26    0.8736112270764961
#>     Attrib V27    1.664434412255311
#>     Attrib V28    2.362820970434454
#>     Attrib V29    1.4178380381546496
#>     Attrib V3    -0.13632015516739507
#>     Attrib V30    0.6480147323063229
#>     Attrib V31    -0.9370215751098734
#>     Attrib V32    -0.39662059314091297
#>     Attrib V33    -0.27046197936224986
#>     Attrib V34    -0.39545311600098315
#>     Attrib V35    0.518504846889172
#>     Attrib V36    -1.0580800722054557
#>     Attrib V37    0.09012056391723348
#>     Attrib V38    0.03154433243611391
#>     Attrib V39    -0.33952883218087454
#>     Attrib V4    0.4054543230579085
#>     Attrib V40    -0.23024147911424026
#>     Attrib V41    1.2521013186718224
#>     Attrib V42    0.09772235944731286
#>     Attrib V43    0.21922908761715476
#>     Attrib V44    0.7720386544074537
#>     Attrib V45    1.0594842129563988
#>     Attrib V46    0.8811646317603641
#>     Attrib V47    0.5534544359206189
#>     Attrib V48    1.0180779738021801
#>     Attrib V49    1.210435073264832
#>     Attrib V5    0.9502301982952297
#>     Attrib V50    -0.9589732685186788
#>     Attrib V51    1.04116564701261
#>     Attrib V52    0.9512677474643008
#>     Attrib V53    0.9296854354513191
#>     Attrib V54    0.70593319670289
#>     Attrib V55    0.15517100558971073
#>     Attrib V56    -0.7146397024778816
#>     Attrib V57    -0.24460132950787242
#>     Attrib V58    0.0714852133337168
#>     Attrib V59    -0.6368704709825143
#>     Attrib V6    1.0693995115255879
#>     Attrib V60    -0.4017013133895205
#>     Attrib V7    -0.6458364650949497
#>     Attrib V8    -0.33721926346110376
#>     Attrib V9    0.8562362428835699
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.2409621608048936
#>     Attrib V1    0.0135184262997883
#>     Attrib V10    -0.006015405336621648
#>     Attrib V11    -0.13534045349920898
#>     Attrib V12    -0.040332877251650114
#>     Attrib V13    -0.013400352654809804
#>     Attrib V14    0.09931187880984714
#>     Attrib V15    -0.004709010771023493
#>     Attrib V16    0.017574148652242442
#>     Attrib V17    0.06986175597347001
#>     Attrib V18    0.015068145522164622
#>     Attrib V19    0.07971512795275197
#>     Attrib V2    0.02281103638727223
#>     Attrib V20    -0.02948938421226669
#>     Attrib V21    -0.03210682680817641
#>     Attrib V22    -0.0032162996393358175
#>     Attrib V23    -0.005163393607554057
#>     Attrib V24    -0.06340537555066171
#>     Attrib V25    0.014332076042879704
#>     Attrib V26    -0.07243104819977533
#>     Attrib V27    -0.09119246111337011
#>     Attrib V28    -0.10030449579183541
#>     Attrib V29    -0.058196305981792235
#>     Attrib V3    0.08483521612393403
#>     Attrib V30    -0.0852168907724312
#>     Attrib V31    0.13685439346684045
#>     Attrib V32    0.09515412609248683
#>     Attrib V33    0.06119627781071816
#>     Attrib V34    0.09254663244432941
#>     Attrib V35    0.14071226961067365
#>     Attrib V36    0.20789096762429385
#>     Attrib V37    0.17535453189895345
#>     Attrib V38    0.04737046897546874
#>     Attrib V39    0.13685726006815538
#>     Attrib V4    0.12191172313461933
#>     Attrib V40    0.23160243642530043
#>     Attrib V41    0.1940428580822012
#>     Attrib V42    0.1221786887799623
#>     Attrib V43    0.07554657303668706
#>     Attrib V44    0.05525212908309497
#>     Attrib V45    -0.0406803535740092
#>     Attrib V46    0.02222415643483586
#>     Attrib V47    0.07392830768711713
#>     Attrib V48    0.07774091567558686
#>     Attrib V49    -0.032673451403146266
#>     Attrib V5    0.10848022424815486
#>     Attrib V50    0.172012669066294
#>     Attrib V51    0.05141798444290502
#>     Attrib V52    0.0016558717825963566
#>     Attrib V53    -0.004844212836730696
#>     Attrib V54    -0.06955084979521337
#>     Attrib V55    -0.04148016583044647
#>     Attrib V56    0.15338269510498637
#>     Attrib V57    0.10992788223602801
#>     Attrib V58    0.02082967513458721
#>     Attrib V59    0.05959826758469392
#>     Attrib V6    0.20910656717071324
#>     Attrib V60    0.12208955507341399
#>     Attrib V7    0.057628426599907696
#>     Attrib V8    0.026209473080016477
#>     Attrib V9    -0.024670247755330384
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    -0.1678092114355846
#>     Attrib V1    0.28099820540481096
#>     Attrib V10    0.5114013408129114
#>     Attrib V11    0.8512830012483786
#>     Attrib V12    0.3803220989925848
#>     Attrib V13    -0.18630213430696305
#>     Attrib V14    -0.5498372603968493
#>     Attrib V15    -0.2913896195174947
#>     Attrib V16    -0.42678946103606535
#>     Attrib V17    -0.12712288152230933
#>     Attrib V18    0.5252008559174504
#>     Attrib V19    0.11489235711224328
#>     Attrib V2    0.45621618514951046
#>     Attrib V20    0.41197545691428633
#>     Attrib V21    0.958098034446613
#>     Attrib V22    1.0229113534960783
#>     Attrib V23    0.8314907771978245
#>     Attrib V24    0.47487564062726556
#>     Attrib V25    -0.2121160248494996
#>     Attrib V26    -0.3258929741923055
#>     Attrib V27    -0.1667951181001851
#>     Attrib V28    -0.33749759549892183
#>     Attrib V29    -0.47617449788524
#>     Attrib V3    -0.04041696818650313
#>     Attrib V30    0.7516303724030331
#>     Attrib V31    -1.226837412532287
#>     Attrib V32    -0.6538170145844546
#>     Attrib V33    0.5406395902234123
#>     Attrib V34    -0.48034053339281946
#>     Attrib V35    -0.1391270627602905
#>     Attrib V36    -0.30132170844033573
#>     Attrib V37    -0.2845377777162436
#>     Attrib V38    0.14268655044660758
#>     Attrib V39    0.0861978983265712
#>     Attrib V4    0.28446786456893747
#>     Attrib V40    -0.5185147345507093
#>     Attrib V41    -0.5006254893260578
#>     Attrib V42    0.20597096684463534
#>     Attrib V43    0.636585971630365
#>     Attrib V44    0.8372154790742239
#>     Attrib V45    0.4922054113033001
#>     Attrib V46    0.2216750645468086
#>     Attrib V47    0.07415713597623377
#>     Attrib V48    0.27236475940135874
#>     Attrib V49    0.5013315731899362
#>     Attrib V5    -0.15162922488381766
#>     Attrib V50    -1.1125032355682092
#>     Attrib V51    0.2663591329707089
#>     Attrib V52    0.22649916040599238
#>     Attrib V53    0.4974751433742898
#>     Attrib V54    0.8179723328551529
#>     Attrib V55    -0.25343867132532205
#>     Attrib V56    0.06871911743756697
#>     Attrib V57    -0.3069911081852866
#>     Attrib V58    0.1330478135787676
#>     Attrib V59    0.14579137964995612
#>     Attrib V6    -0.6735721308640195
#>     Attrib V60    0.040038414787651834
#>     Attrib V7    -0.5841982563866129
#>     Attrib V8    0.1506772551780881
#>     Attrib V9    0.8785674563078617
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.31855333673326186
#>     Attrib V1    -0.502214216931758
#>     Attrib V10    -0.4994681702936826
#>     Attrib V11    -0.8403090968199904
#>     Attrib V12    -0.5314190681206021
#>     Attrib V13    0.33817533472464956
#>     Attrib V14    0.7336410923089717
#>     Attrib V15    0.7787623399497238
#>     Attrib V16    0.4566959161164855
#>     Attrib V17    0.050818019411418454
#>     Attrib V18    -0.20804389534973844
#>     Attrib V19    0.08285553021143853
#>     Attrib V2    -0.8841720060392952
#>     Attrib V20    0.10167934599978289
#>     Attrib V21    -0.31057719956493257
#>     Attrib V22    -0.35228760087459365
#>     Attrib V23    -0.8255478087638639
#>     Attrib V24    -0.3401255844460899
#>     Attrib V25    0.37633232868338534
#>     Attrib V26    -0.10611043265085478
#>     Attrib V27    -0.9507953721171505
#>     Attrib V28    -1.7253927975312562
#>     Attrib V29    -1.190049057107537
#>     Attrib V3    0.18626081646168488
#>     Attrib V30    -0.9801949174427049
#>     Attrib V31    0.9012156841722602
#>     Attrib V32    0.33932352218116657
#>     Attrib V33    -0.13567515663035462
#>     Attrib V34    0.5949853385981029
#>     Attrib V35    -0.10253736064899677
#>     Attrib V36    0.9025289270386059
#>     Attrib V37    0.12856307684217988
#>     Attrib V38    0.03852322093011805
#>     Attrib V39    0.2665186777112917
#>     Attrib V4    -0.3507339706715657
#>     Attrib V40    0.39293635977205565
#>     Attrib V41    -0.5885971776946575
#>     Attrib V42    -0.25661282006149316
#>     Attrib V43    -0.3721281633603205
#>     Attrib V44    -0.7677141728278074
#>     Attrib V45    -0.8491620783796449
#>     Attrib V46    -0.8203821202148974
#>     Attrib V47    -0.5271543565275706
#>     Attrib V48    -0.6918785285049533
#>     Attrib V49    -1.0553993574180127
#>     Attrib V5    -0.5597417910009346
#>     Attrib V50    0.7994955736148047
#>     Attrib V51    -0.6561246035200486
#>     Attrib V52    -0.6715373343168121
#>     Attrib V53    -0.5783213816839772
#>     Attrib V54    -0.30481211366003136
#>     Attrib V55    0.1453623333086754
#>     Attrib V56    0.8209588016995671
#>     Attrib V57    0.4773791848010777
#>     Attrib V58    -0.17616282712345827
#>     Attrib V59    0.8199985180588554
#>     Attrib V6    -0.5361256598755761
#>     Attrib V60    0.269702082791663
#>     Attrib V7    0.40515305953787173
#>     Attrib V8    0.030254427230989426
#>     Attrib V9    -0.7801885905628964
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.06295559328971789
#>     Attrib V1    0.09580832684027775
#>     Attrib V10    -0.09297326480480132
#>     Attrib V11    0.2559625140627965
#>     Attrib V12    0.1522161981937408
#>     Attrib V13    -0.13106988526243693
#>     Attrib V14    -0.03581096599030287
#>     Attrib V15    0.05763342997666188
#>     Attrib V16    -0.04293659684207823
#>     Attrib V17    -0.02585038634318612
#>     Attrib V18    0.16489782424996496
#>     Attrib V19    -0.012352767685515784
#>     Attrib V2    0.20964756349870256
#>     Attrib V20    0.1395439092718404
#>     Attrib V21    0.24132559944344462
#>     Attrib V22    0.13408246572240198
#>     Attrib V23    0.03157562907944816
#>     Attrib V24    0.1519833286105476
#>     Attrib V25    -0.1537122835919157
#>     Attrib V26    -0.3834598460639937
#>     Attrib V27    -0.2811686946318669
#>     Attrib V28    -0.4781247140987682
#>     Attrib V29    -0.4386388675671352
#>     Attrib V3    0.06666027342658098
#>     Attrib V30    0.042818177114642614
#>     Attrib V31    -0.4578379944273024
#>     Attrib V32    -0.19726533152391915
#>     Attrib V33    0.3191403483041067
#>     Attrib V34    -0.09912130743554078
#>     Attrib V35    -0.1390019295842731
#>     Attrib V36    -0.3405717208045174
#>     Attrib V37    -0.3248808411771042
#>     Attrib V38    -0.12486688630526575
#>     Attrib V39    0.0024512973769067027
#>     Attrib V4    0.08319443038469168
#>     Attrib V40    -0.12737545464134
#>     Attrib V41    -0.19135104937347142
#>     Attrib V42    0.06659537016077047
#>     Attrib V43    0.24465130716107725
#>     Attrib V44    0.10578540284679386
#>     Attrib V45    0.11402241637706971
#>     Attrib V46    0.032807178677108965
#>     Attrib V47    -0.011022603870231532
#>     Attrib V48    0.08633706461771529
#>     Attrib V49    0.144644286950286
#>     Attrib V5    -0.1290611160680485
#>     Attrib V50    -0.3637071294172504
#>     Attrib V51    0.03839222335033364
#>     Attrib V52    0.13552372872433338
#>     Attrib V53    0.2911163132064433
#>     Attrib V54    0.48362380997119997
#>     Attrib V55    0.2813353901084721
#>     Attrib V56    0.13608158600357093
#>     Attrib V57    0.1827959966314116
#>     Attrib V58    0.24590674285874756
#>     Attrib V59    0.2562399360388443
#>     Attrib V6    -0.2714441905358183
#>     Attrib V60    0.193880625529343
#>     Attrib V7    -0.194537191154992
#>     Attrib V8    0.16565352261446328
#>     Attrib V9    0.1641573216575449
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.20331327566874127
#>     Attrib V1    0.005246315185848563
#>     Attrib V10    0.048235368446356224
#>     Attrib V11    -0.13802883791489526
#>     Attrib V12    -0.06363308466465864
#>     Attrib V13    0.0478602039380179
#>     Attrib V14    0.08204047838873456
#>     Attrib V15    0.04986734505327086
#>     Attrib V16    0.07582410852481516
#>     Attrib V17    0.13269856871072777
#>     Attrib V18    0.08012337500726985
#>     Attrib V19    0.020425808667586698
#>     Attrib V2    -0.008761626104576172
#>     Attrib V20    -0.06765801295479822
#>     Attrib V21    -0.0178044717911671
#>     Attrib V22    0.02872691046899973
#>     Attrib V23    -0.001538826150836154
#>     Attrib V24    -0.10050662335495586
#>     Attrib V25    0.056416831674764856
#>     Attrib V26    -0.0030696838719734827
#>     Attrib V27    -0.14532075150555746
#>     Attrib V28    -0.1406165114473179
#>     Attrib V29    -0.1130476542515558
#>     Attrib V3    0.09054249677835287
#>     Attrib V30    -0.07390587141717699
#>     Attrib V31    0.2923633751698375
#>     Attrib V32    0.15060645635914427
#>     Attrib V33    0.026828062631054594
#>     Attrib V34    0.12337586590231682
#>     Attrib V35    0.1400564462850973
#>     Attrib V36    0.22397178583760474
#>     Attrib V37    0.22834823338901422
#>     Attrib V38    0.04630470970133775
#>     Attrib V39    0.18930699986786084
#>     Attrib V4    0.10092272787760513
#>     Attrib V40    0.3300580331752181
#>     Attrib V41    0.280240404595125
#>     Attrib V42    0.17586261685074986
#>     Attrib V43    0.04935084643707839
#>     Attrib V44    -0.008864806610016488
#>     Attrib V45    -0.06124061181461305
#>     Attrib V46    0.03890058913249961
#>     Attrib V47    0.08057509616607181
#>     Attrib V48    0.04572100220690603
#>     Attrib V49    -0.08141694244825533
#>     Attrib V5    0.11915572829693873
#>     Attrib V50    0.17495392026729567
#>     Attrib V51    0.03812679876950572
#>     Attrib V52    -0.008996515141630523
#>     Attrib V53    -0.026105074353748755
#>     Attrib V54    -0.12191830084674836
#>     Attrib V55    -0.10183407867406899
#>     Attrib V56    0.16911853258088766
#>     Attrib V57    0.04883704228395174
#>     Attrib V58    0.013140236329419663
#>     Attrib V59    0.05836371055062822
#>     Attrib V6    0.2163761774405832
#>     Attrib V60    0.075197815055239
#>     Attrib V7    0.06469618782020824
#>     Attrib V8    -0.010889245029496928
#>     Attrib V9    -0.04306678315175116
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.1635015439998801
#>     Attrib V1    0.23318188558562578
#>     Attrib V10    -0.02577803236420702
#>     Attrib V11    0.3589394731222095
#>     Attrib V12    0.05656627427844513
#>     Attrib V13    -0.19102025478753348
#>     Attrib V14    -0.08742842300377296
#>     Attrib V15    0.16201727876407251
#>     Attrib V16    -0.08136895177061437
#>     Attrib V17    -0.09674823469388937
#>     Attrib V18    0.1992888816383971
#>     Attrib V19    -0.0608148387607154
#>     Attrib V2    0.31785039367168505
#>     Attrib V20    0.22029907591241596
#>     Attrib V21    0.4395648706489866
#>     Attrib V22    0.3580482853856809
#>     Attrib V23    0.1546882691572695
#>     Attrib V24    0.24323330286266887
#>     Attrib V25    -0.2922624634153337
#>     Attrib V26    -0.5569587382727439
#>     Attrib V27    -0.680812341305426
#>     Attrib V28    -1.196748272496195
#>     Attrib V29    -1.1533274865745156
#>     Attrib V3    0.04631933766805959
#>     Attrib V30    0.020731384532976165
#>     Attrib V31    -0.7261843846468528
#>     Attrib V32    -0.40192242060860833
#>     Attrib V33    0.6397537251238068
#>     Attrib V34    -0.11380821868442534
#>     Attrib V35    -0.2993563248379928
#>     Attrib V36    -0.5117843699538895
#>     Attrib V37    -0.6108767633359485
#>     Attrib V38    -0.30431539617953823
#>     Attrib V39    -0.10006884164837672
#>     Attrib V4    0.1369406435040555
#>     Attrib V40    -0.176738604396671
#>     Attrib V41    -0.439778483715064
#>     Attrib V42    0.2249909631605179
#>     Attrib V43    0.4072615739567049
#>     Attrib V44    0.24165773387550848
#>     Attrib V45    -0.006552571397542093
#>     Attrib V46    -0.02283201849069021
#>     Attrib V47    -0.08577847723083812
#>     Attrib V48    0.09099060538729767
#>     Attrib V49    0.15421260869885575
#>     Attrib V5    -0.313876498184946
#>     Attrib V50    -0.6330058790334576
#>     Attrib V51    -0.06672861701551577
#>     Attrib V52    0.011393787687959175
#>     Attrib V53    0.48676797970137425
#>     Attrib V54    0.909480496507329
#>     Attrib V55    0.2313432015579728
#>     Attrib V56    0.17895848780364093
#>     Attrib V57    0.38281414754998555
#>     Attrib V58    0.4234044427926837
#>     Attrib V59    0.4693235131457771
#>     Attrib V6    -0.5498857627878111
#>     Attrib V60    0.34309958148859615
#>     Attrib V7    -0.14682297962155472
#>     Attrib V8    0.39115919566496477
#>     Attrib V9    0.3612177022804017
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.12387016418896911
#>     Attrib V1    0.20870458000753214
#>     Attrib V10    -0.12993427789278045
#>     Attrib V11    0.20323741070978218
#>     Attrib V12    0.04498572112676442
#>     Attrib V13    -0.18688704957168814
#>     Attrib V14    0.02107918269742218
#>     Attrib V15    0.16590103977828005
#>     Attrib V16    0.0314288568608602
#>     Attrib V17    -0.058024002281929374
#>     Attrib V18    0.26470201977442737
#>     Attrib V19    0.0048187262515224675
#>     Attrib V2    0.23468779083632035
#>     Attrib V20    0.19173721908561342
#>     Attrib V21    0.39233828895792716
#>     Attrib V22    0.20723317566795169
#>     Attrib V23    0.11605259082663233
#>     Attrib V24    0.08582292817897808
#>     Attrib V25    -0.378071014856362
#>     Attrib V26    -0.5458266927338489
#>     Attrib V27    -0.42309730419819297
#>     Attrib V28    -0.6086484249442614
#>     Attrib V29    -0.5797584648028239
#>     Attrib V3    0.11584700727426428
#>     Attrib V30    0.15109754653715013
#>     Attrib V31    -0.6536142984051732
#>     Attrib V32    -0.32262325896952526
#>     Attrib V33    0.4331011161118379
#>     Attrib V34    -0.17209134065889517
#>     Attrib V35    -0.2765305784512499
#>     Attrib V36    -0.37056750413115935
#>     Attrib V37    -0.4644495116752997
#>     Attrib V38    -0.21701885452622482
#>     Attrib V39    0.006296220689389142
#>     Attrib V4    0.1309075970914128
#>     Attrib V40    -0.14888687274880705
#>     Attrib V41    -0.2757075595467035
#>     Attrib V42    0.23693680806796139
#>     Attrib V43    0.2571684134421037
#>     Attrib V44    0.2106977198696791
#>     Attrib V45    0.07945122810799227
#>     Attrib V46    0.02492054850049114
#>     Attrib V47    -0.06636566291597935
#>     Attrib V48    0.020736925240916314
#>     Attrib V49    0.1911059558285354
#>     Attrib V5    -0.13455462624234
#>     Attrib V50    -0.49724889385930116
#>     Attrib V51    -0.012642114138816328
#>     Attrib V52    0.08188470968547996
#>     Attrib V53    0.36102422111992305
#>     Attrib V54    0.5495168501794285
#>     Attrib V55    0.17821599167000854
#>     Attrib V56    0.15564484592747876
#>     Attrib V57    0.26528799088547217
#>     Attrib V58    0.40973092315170306
#>     Attrib V59    0.3595892996443096
#>     Attrib V6    -0.35533945662228433
#>     Attrib V60    0.2489985360854387
#>     Attrib V7    -0.17972128466759635
#>     Attrib V8    0.28564195931796904
#>     Attrib V9    0.23190318430565074
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
