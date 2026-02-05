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
#>     Threshold    0.21198367595902518
#>     Node 2    2.2055666901519735
#>     Node 3    0.998226037953403
#>     Node 4    0.4925134846422031
#>     Node 5    -2.8723566465361428
#>     Node 6    1.6991393820520777
#>     Node 7    2.484903317107216
#>     Node 8    0.8461925749563531
#>     Node 9    2.5256806072418705
#>     Node 10    -0.9794978136463326
#>     Node 11    1.3092218081976077
#>     Node 12    1.7490698509600282
#>     Node 13    0.8459948737878518
#>     Node 14    1.9509499178658158
#>     Node 15    -2.193094821455156
#>     Node 16    0.06417313376559308
#>     Node 17    0.5528390740995369
#>     Node 18    0.09376317652458549
#>     Node 19    1.4069354892351686
#>     Node 20    2.132241314979953
#>     Node 21    -2.157300463549862
#>     Node 22    0.9266763674438524
#>     Node 23    2.2294876372248655
#>     Node 24    -1.6465345221083187
#>     Node 25    3.784207785502854
#>     Node 26    0.2768909254146612
#>     Node 27    2.3204874056830325
#>     Node 28    -4.043185445069097
#>     Node 29    1.1182710545203427
#>     Node 30    0.5254561442943478
#>     Node 31    1.9125675162577624
#>     Node 32    0.7370502434719064
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.1897218158750852
#>     Node 2    -2.2494532784320636
#>     Node 3    -0.9829909738883884
#>     Node 4    -0.4557972318995916
#>     Node 5    2.889276192278163
#>     Node 6    -1.671593189809519
#>     Node 7    -2.4796992828494346
#>     Node 8    -0.8831903958408611
#>     Node 9    -2.5285934083160972
#>     Node 10    0.916853946029472
#>     Node 11    -1.2725740221535022
#>     Node 12    -1.822850839092657
#>     Node 13    -0.7946519858198967
#>     Node 14    -1.8784178345778497
#>     Node 15    2.17933150881897
#>     Node 16    -0.08355800441386176
#>     Node 17    -0.5235443962868523
#>     Node 18    -0.056626558072915154
#>     Node 19    -1.4005787699120735
#>     Node 20    -2.1144405005851876
#>     Node 21    2.211669260190502
#>     Node 22    -0.9808084892707379
#>     Node 23    -2.2633702405090834
#>     Node 24    1.633383328214688
#>     Node 25    -3.794624590095381
#>     Node 26    -0.36506500679512094
#>     Node 27    -2.351172749005061
#>     Node 28    4.017583034806167
#>     Node 29    -1.1501676817043762
#>     Node 30    -0.45322087637629743
#>     Node 31    -1.8465527366931946
#>     Node 32    -0.7571213841602019
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.2792426203614194
#>     Attrib V1    0.4584108144780501
#>     Attrib V10    0.14115027669370736
#>     Attrib V11    -0.005301156034666921
#>     Attrib V12    -0.11204670728357191
#>     Attrib V13    0.14056716318570958
#>     Attrib V14    -0.062438467990587214
#>     Attrib V15    -0.12899796700915414
#>     Attrib V16    -0.06513518712039397
#>     Attrib V17    0.21772982109059483
#>     Attrib V18    0.14264963949453946
#>     Attrib V19    0.4445350017549993
#>     Attrib V2    -0.14929536540753413
#>     Attrib V20    0.8482969716975098
#>     Attrib V21    0.6028261270788807
#>     Attrib V22    0.7036933798234639
#>     Attrib V23    0.5954161345439543
#>     Attrib V24    0.3850327451153781
#>     Attrib V25    -0.4448879193550602
#>     Attrib V26    -0.9054836358504804
#>     Attrib V27    -0.856575581934547
#>     Attrib V28    -0.3115711894798257
#>     Attrib V29    -0.848769510970454
#>     Attrib V3    0.09380661147795034
#>     Attrib V30    -0.025872026018196898
#>     Attrib V31    -0.5819296537861305
#>     Attrib V32    0.11239459181240712
#>     Attrib V33    0.44974863829374695
#>     Attrib V34    -0.18306066803386634
#>     Attrib V35    -0.11217630241250982
#>     Attrib V36    -0.5972145384682359
#>     Attrib V37    -0.7334524799623152
#>     Attrib V38    0.5809199480154705
#>     Attrib V39    0.2660781810656004
#>     Attrib V4    0.34930979324526756
#>     Attrib V40    -0.1872541017477
#>     Attrib V41    0.13449302185452303
#>     Attrib V42    0.11959506777160621
#>     Attrib V43    0.5704769257311056
#>     Attrib V44    0.25308567003897614
#>     Attrib V45    0.048265723378347385
#>     Attrib V46    -0.12554394087716575
#>     Attrib V47    -0.33632395200414084
#>     Attrib V48    -0.0341833185141126
#>     Attrib V49    0.7004213791049536
#>     Attrib V5    0.05322714024018928
#>     Attrib V50    -0.3004079297150986
#>     Attrib V51    0.06835709190801363
#>     Attrib V52    -0.6102113700925014
#>     Attrib V53    0.3646651521216103
#>     Attrib V54    0.828848066427803
#>     Attrib V55    -0.7075280269072591
#>     Attrib V56    0.5824842944760368
#>     Attrib V57    0.48528179965321844
#>     Attrib V58    0.806466640921378
#>     Attrib V59    0.7945277141142872
#>     Attrib V6    -0.005940428586168598
#>     Attrib V60    0.5344925639680286
#>     Attrib V7    0.399304771398108
#>     Attrib V8    -0.1724161421698334
#>     Attrib V9    0.505767320242962
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.11659530310197434
#>     Attrib V1    0.16618864477623446
#>     Attrib V10    0.05962861121300692
#>     Attrib V11    0.0075924198281476195
#>     Attrib V12    0.035878577332132
#>     Attrib V13    0.142249348994151
#>     Attrib V14    0.04515014630383826
#>     Attrib V15    0.0041718042959948244
#>     Attrib V16    -0.07279619235771567
#>     Attrib V17    0.08849819393895926
#>     Attrib V18    0.06920533781352177
#>     Attrib V19    0.2493147355093657
#>     Attrib V2    -0.027802497903006818
#>     Attrib V20    0.2966547318509021
#>     Attrib V21    0.17126172621454677
#>     Attrib V22    0.288604125685978
#>     Attrib V23    0.24333770636013408
#>     Attrib V24    0.17929843092817885
#>     Attrib V25    -0.11806246394530162
#>     Attrib V26    -0.3529290354033182
#>     Attrib V27    -0.326725014365083
#>     Attrib V28    -0.12002262451873462
#>     Attrib V29    -0.431441444838162
#>     Attrib V3    0.0366462043468371
#>     Attrib V30    -0.008873862788769166
#>     Attrib V31    -0.23338357501418622
#>     Attrib V32    0.0653641359298737
#>     Attrib V33    0.16812128447422395
#>     Attrib V34    -0.1263389723359014
#>     Attrib V35    -0.02095989433896483
#>     Attrib V36    -0.3366559109644331
#>     Attrib V37    -0.3424842886530466
#>     Attrib V38    0.15993211193242163
#>     Attrib V39    0.07499812918557858
#>     Attrib V4    0.2696728153767192
#>     Attrib V40    -0.08415119359411102
#>     Attrib V41    0.1207586383806851
#>     Attrib V42    -0.01550726456337654
#>     Attrib V43    0.21749997869190957
#>     Attrib V44    0.13119272511472793
#>     Attrib V45    0.0025996222344646693
#>     Attrib V46    -0.07062316841511126
#>     Attrib V47    -0.08615756916327172
#>     Attrib V48    0.002672673459835876
#>     Attrib V49    0.3379853290958997
#>     Attrib V5    0.040198986615213664
#>     Attrib V50    -0.13186359835865158
#>     Attrib V51    0.04199792994364985
#>     Attrib V52    -0.18219501656007553
#>     Attrib V53    0.19995063647682634
#>     Attrib V54    0.4788347835858198
#>     Attrib V55    -0.18062656634578067
#>     Attrib V56    0.29081550246756105
#>     Attrib V57    0.3297009902515415
#>     Attrib V58    0.44280761946738556
#>     Attrib V59    0.40161218173454144
#>     Attrib V6    -0.00924685225896704
#>     Attrib V60    0.2544037423124064
#>     Attrib V7    0.1065751344814812
#>     Attrib V8    -0.1290603492746355
#>     Attrib V9    0.19077173304216855
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.07322894196762714
#>     Attrib V1    0.06745298801146755
#>     Attrib V10    0.05108147163365787
#>     Attrib V11    0.013653521427938369
#>     Attrib V12    0.033068245242061305
#>     Attrib V13    0.08617701475262554
#>     Attrib V14    0.08112109827968753
#>     Attrib V15    0.008954678385300258
#>     Attrib V16    -0.07435795031567993
#>     Attrib V17    0.025443266095081143
#>     Attrib V18    -0.0012135034196164146
#>     Attrib V19    0.038614250622269315
#>     Attrib V2    -0.02009177697097426
#>     Attrib V20    0.06547968834756598
#>     Attrib V21    0.05628809066799905
#>     Attrib V22    0.01624669044216052
#>     Attrib V23    0.06787774128809199
#>     Attrib V24    0.035154559474103654
#>     Attrib V25    -0.08202868574005327
#>     Attrib V26    -0.10770815344724669
#>     Attrib V27    -0.08614527455900481
#>     Attrib V28    0.09781643811811608
#>     Attrib V29    -0.044103693384138665
#>     Attrib V3    0.07646055357994144
#>     Attrib V30    0.004314936820256499
#>     Attrib V31    -0.09004055132570411
#>     Attrib V32    0.005223589592169117
#>     Attrib V33    0.05870533412773943
#>     Attrib V34    -0.018969453920858536
#>     Attrib V35    0.03718419541820903
#>     Attrib V36    -0.15349028822623587
#>     Attrib V37    -0.11249318094563257
#>     Attrib V38    0.04046993632729142
#>     Attrib V39    0.03054641889863366
#>     Attrib V4    0.17611951727158723
#>     Attrib V40    -0.03844649432506672
#>     Attrib V41    0.039425861971541944
#>     Attrib V42    -0.03440054163736075
#>     Attrib V43    0.03115940110921903
#>     Attrib V44    0.05754924933568815
#>     Attrib V45    0.06990325851522784
#>     Attrib V46    0.008738525138229192
#>     Attrib V47    0.015470033587187513
#>     Attrib V48    0.0973975435467346
#>     Attrib V49    0.22687596952140146
#>     Attrib V5    0.10858191659655464
#>     Attrib V50    0.00850657833896517
#>     Attrib V51    0.12339104657415086
#>     Attrib V52    -0.015456578703377176
#>     Attrib V53    0.16802035284515796
#>     Attrib V54    0.1290045473966139
#>     Attrib V55    -0.062258616505602875
#>     Attrib V56    0.1307263389378327
#>     Attrib V57    0.20736497599819376
#>     Attrib V58    0.14869643881858943
#>     Attrib V59    0.16248439291412414
#>     Attrib V6    0.02539975078114549
#>     Attrib V60    0.1486886153668031
#>     Attrib V7    0.07462983607022858
#>     Attrib V8    -0.11445538344084637
#>     Attrib V9    0.1558414314973558
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.5470774544588168
#>     Attrib V1    -0.14635967316515996
#>     Attrib V10    -1.0116786265132451
#>     Attrib V11    -0.87033232569043
#>     Attrib V12    -0.6412502582048936
#>     Attrib V13    -0.25671638282973924
#>     Attrib V14    1.066497437457959
#>     Attrib V15    1.4144152530557637
#>     Attrib V16    1.0240306440388558
#>     Attrib V17    0.20412075391829615
#>     Attrib V18    0.08101367318402693
#>     Attrib V19    -0.3870935068883188
#>     Attrib V2    0.09318885534637741
#>     Attrib V20    -0.4106772052043994
#>     Attrib V21    -0.3217500057936629
#>     Attrib V22    -0.45783596721783987
#>     Attrib V23    -0.24657554589782046
#>     Attrib V24    -0.11719314886416704
#>     Attrib V25    0.6438330598514085
#>     Attrib V26    0.14564804931492276
#>     Attrib V27    -0.1994526393800239
#>     Attrib V28    -0.8765143626987792
#>     Attrib V29    0.17484021867229727
#>     Attrib V3    0.4631823945939403
#>     Attrib V30    -0.40674929508011926
#>     Attrib V31    0.4291915584819
#>     Attrib V32    -0.23762659591734617
#>     Attrib V33    -0.17689236457889143
#>     Attrib V34    0.18655834398794627
#>     Attrib V35    -0.364710050161669
#>     Attrib V36    1.236306867851046
#>     Attrib V37    0.5283440774023779
#>     Attrib V38    -0.07566349825139088
#>     Attrib V39    0.4483424689284192
#>     Attrib V4    -0.7392072670754594
#>     Attrib V40    0.7002429209367437
#>     Attrib V41    -0.5917905702360936
#>     Attrib V42    0.370958716499026
#>     Attrib V43    0.10772267848345855
#>     Attrib V44    -0.18781222997193522
#>     Attrib V45    -1.0149704906359112
#>     Attrib V46    -0.8333227081665934
#>     Attrib V47    -0.5808451036401583
#>     Attrib V48    -0.7090841678833693
#>     Attrib V49    -1.2317411849132949
#>     Attrib V5    -0.5672330839165872
#>     Attrib V50    0.7096190583996422
#>     Attrib V51    -0.7567490202851495
#>     Attrib V52    -0.47589158938648707
#>     Attrib V53    0.03235979015385883
#>     Attrib V54    -0.2044271273640119
#>     Attrib V55    1.6328365814164247
#>     Attrib V56    0.30838370724573505
#>     Attrib V57    0.35269395056442476
#>     Attrib V58    -0.2630939988210226
#>     Attrib V59    0.6278075563647311
#>     Attrib V6    -0.6075010546286724
#>     Attrib V60    -0.0941283734803997
#>     Attrib V7    0.059403042846272694
#>     Attrib V8    1.0139903663133782
#>     Attrib V9    -1.367225501932154
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.28111937527980235
#>     Attrib V1    0.3220002376844199
#>     Attrib V10    0.059022630419364105
#>     Attrib V11    0.0032403790696713883
#>     Attrib V12    -0.006202173576819102
#>     Attrib V13    0.07471954201738419
#>     Attrib V14    -0.09429988526974664
#>     Attrib V15    -0.11443847394471028
#>     Attrib V16    0.0033180838914560616
#>     Attrib V17    0.17812052057318406
#>     Attrib V18    0.1652183196097952
#>     Attrib V19    0.3694668765542147
#>     Attrib V2    -0.12765313632001568
#>     Attrib V20    0.5801932652424203
#>     Attrib V21    0.39394099911273
#>     Attrib V22    0.47424230530008155
#>     Attrib V23    0.44101539254646765
#>     Attrib V24    0.3662734154256466
#>     Attrib V25    -0.25965480789749407
#>     Attrib V26    -0.687389124869962
#>     Attrib V27    -0.6312034933082429
#>     Attrib V28    -0.3396576779291844
#>     Attrib V29    -0.7411939774116928
#>     Attrib V3    0.02994508386222396
#>     Attrib V30    -0.04912428352525242
#>     Attrib V31    -0.4052979124266179
#>     Attrib V32    0.11942990535235709
#>     Attrib V33    0.36502403539516237
#>     Attrib V34    -0.13157569088187715
#>     Attrib V35    -0.030461687886817693
#>     Attrib V36    -0.500429889350708
#>     Attrib V37    -0.5624383170429453
#>     Attrib V38    0.3926252044313553
#>     Attrib V39    0.15165632448178568
#>     Attrib V4    0.31878387665167
#>     Attrib V40    -0.18233230263830602
#>     Attrib V41    0.14496143109950244
#>     Attrib V42    0.03196256627491899
#>     Attrib V43    0.3967670360813109
#>     Attrib V44    0.17739529659593856
#>     Attrib V45    0.04213269408856088
#>     Attrib V46    -0.07916172227278132
#>     Attrib V47    -0.26575964983350425
#>     Attrib V48    -0.06165564358222713
#>     Attrib V49    0.5562985246368068
#>     Attrib V5    -0.005765385101348848
#>     Attrib V50    -0.20642454547590655
#>     Attrib V51    0.06269478151662033
#>     Attrib V52    -0.47191889840787765
#>     Attrib V53    0.35199833402822084
#>     Attrib V54    0.6804737027951419
#>     Attrib V55    -0.5117018415843245
#>     Attrib V56    0.467409318133147
#>     Attrib V57    0.43785021040039906
#>     Attrib V58    0.6500369472775366
#>     Attrib V59    0.6428025955701252
#>     Attrib V6    0.06521049653626995
#>     Attrib V60    0.46439926350551
#>     Attrib V7    0.33214797100080373
#>     Attrib V8    -0.1523991452058082
#>     Attrib V9    0.4391048683415158
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.5747114617165975
#>     Attrib V1    0.14330466830716013
#>     Attrib V10    0.6890713008352728
#>     Attrib V11    0.6640697316329537
#>     Attrib V12    0.5555734421839877
#>     Attrib V13    0.27684952612075314
#>     Attrib V14    -0.7519591420100539
#>     Attrib V15    -1.1314875645161502
#>     Attrib V16    -0.8752782627970583
#>     Attrib V17    -0.15106491289274793
#>     Attrib V18    -0.006016780910258853
#>     Attrib V19    0.32339359024532865
#>     Attrib V2    -0.1441844147466549
#>     Attrib V20    0.3150107973874644
#>     Attrib V21    0.20150163543893115
#>     Attrib V22    0.27288055473069833
#>     Attrib V23    0.3711434183681281
#>     Attrib V24    0.20768660276447098
#>     Attrib V25    -0.35911721324837587
#>     Attrib V26    0.07914227416864018
#>     Attrib V27    0.4020000971139142
#>     Attrib V28    0.9348036879014263
#>     Attrib V29    0.09572012894640589
#>     Attrib V3    -0.26044912141011833
#>     Attrib V30    0.2223561504131385
#>     Attrib V31    -0.4418691791513307
#>     Attrib V32    0.06409841231324676
#>     Attrib V33    0.022912272650559867
#>     Attrib V34    -0.21645689237685178
#>     Attrib V35    0.3897347031006369
#>     Attrib V36    -0.9655745063080369
#>     Attrib V37    -0.31774845395400514
#>     Attrib V38    0.025948851544929857
#>     Attrib V39    -0.4331837588907459
#>     Attrib V4    0.7031052687908338
#>     Attrib V40    -0.452067034732797
#>     Attrib V41    0.6685900084208765
#>     Attrib V42    -0.1810198357791765
#>     Attrib V43    0.009298956988302007
#>     Attrib V44    0.1328481785085178
#>     Attrib V45    0.6544495586725912
#>     Attrib V46    0.6525204287927963
#>     Attrib V47    0.5074034189983608
#>     Attrib V48    0.5268214809242351
#>     Attrib V49    0.9393389616919489
#>     Attrib V5    0.5375877965243209
#>     Attrib V50    -0.5311652063890733
#>     Attrib V51    0.579916139721884
#>     Attrib V52    0.344031896656793
#>     Attrib V53    0.18211026476106068
#>     Attrib V54    0.2857597191344106
#>     Attrib V55    -1.3825706378108824
#>     Attrib V56    -0.20277804420499604
#>     Attrib V57    -0.1484498668927661
#>     Attrib V58    0.17959030180909388
#>     Attrib V59    -0.17835865049235589
#>     Attrib V6    0.4684807903109007
#>     Attrib V60    0.32885109818283104
#>     Attrib V7    -0.08547642526347725
#>     Attrib V8    -0.9829145698321843
#>     Attrib V9    1.0011057058776522
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.19205035652216723
#>     Attrib V1    0.07465459832149497
#>     Attrib V10    0.1301673351657096
#>     Attrib V11    0.11983048081183163
#>     Attrib V12    0.08210740342328393
#>     Attrib V13    0.0787861373015751
#>     Attrib V14    -0.15562221402798826
#>     Attrib V15    -0.20890651431363821
#>     Attrib V16    -0.15177679165034422
#>     Attrib V17    -0.003564802938475453
#>     Attrib V18    -0.020488435101424486
#>     Attrib V19    0.1200810510573039
#>     Attrib V2    -0.06004360888932474
#>     Attrib V20    0.12247347806529536
#>     Attrib V21    0.08437204667025455
#>     Attrib V22    0.13469347982526117
#>     Attrib V23    0.18657859266234142
#>     Attrib V24    0.22401112770770912
#>     Attrib V25    -0.04066965363864138
#>     Attrib V26    -0.09785760941789161
#>     Attrib V27    -0.04396361945448285
#>     Attrib V28    0.15570223503213856
#>     Attrib V29    -0.132077681084013
#>     Attrib V3    -0.03831796084898334
#>     Attrib V30    0.08584226648274898
#>     Attrib V31    -0.17329147210810594
#>     Attrib V32    0.03435268874278409
#>     Attrib V33    0.06984205370194352
#>     Attrib V34    -0.0709463086679137
#>     Attrib V35    0.07450181671546936
#>     Attrib V36    -0.23861841671703174
#>     Attrib V37    -0.2053281666353479
#>     Attrib V38    0.18030537773210376
#>     Attrib V39    -0.028082056753461006
#>     Attrib V4    0.3042495484187552
#>     Attrib V40    -0.15036574298682584
#>     Attrib V41    0.10242752718097231
#>     Attrib V42    -0.19964990124694632
#>     Attrib V43    0.07645655730264252
#>     Attrib V44    0.11812793602703263
#>     Attrib V45    0.11091108304196878
#>     Attrib V46    0.08324659786641832
#>     Attrib V47    0.012229666230699349
#>     Attrib V48    0.12528643048967916
#>     Attrib V49    0.3786636586168915
#>     Attrib V5    0.04958376124960154
#>     Attrib V50    -0.2006194758592608
#>     Attrib V51    0.07988970229346047
#>     Attrib V52    -0.11603758365912809
#>     Attrib V53    0.19162592000343553
#>     Attrib V54    0.26501195851973847
#>     Attrib V55    -0.3233968358951718
#>     Attrib V56    0.06687344385301047
#>     Attrib V57    0.24202017069335913
#>     Attrib V58    0.18193145288953902
#>     Attrib V59    0.23523349656570317
#>     Attrib V6    0.017931714626308187
#>     Attrib V60    0.25886813854693963
#>     Attrib V7    0.092778882756834
#>     Attrib V8    -0.2900947742489975
#>     Attrib V9    0.23801732953667867
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.39942890569665657
#>     Attrib V1    -0.02858255894275363
#>     Attrib V10    0.8494861940076484
#>     Attrib V11    0.7310959335883251
#>     Attrib V12    0.7395518200371092
#>     Attrib V13    0.4254659038477385
#>     Attrib V14    -0.7426932165511743
#>     Attrib V15    -1.1118339786324882
#>     Attrib V16    -0.8535463814333637
#>     Attrib V17    -0.154014610967215
#>     Attrib V18    0.01919804227162158
#>     Attrib V19    0.22140756404150147
#>     Attrib V2    -0.23042115318611994
#>     Attrib V20    0.031774126285698305
#>     Attrib V21    0.04888160721068955
#>     Attrib V22    0.17990472542533134
#>     Attrib V23    0.34148244900215524
#>     Attrib V24    0.317310601774831
#>     Attrib V25    -0.08979385261411743
#>     Attrib V26    0.3089246994820946
#>     Attrib V27    0.6497090337275173
#>     Attrib V28    1.0229358849463994
#>     Attrib V29    0.019091623335798953
#>     Attrib V3    -0.35268419127112316
#>     Attrib V30    0.18064932256529387
#>     Attrib V31    -0.3538883959996118
#>     Attrib V32    0.06467110824585612
#>     Attrib V33    -0.07388166728177337
#>     Attrib V34    -0.08537162663464162
#>     Attrib V35    0.4973757913089087
#>     Attrib V36    -0.8761242447377894
#>     Attrib V37    -0.38611219670075847
#>     Attrib V38    -0.1267588280948019
#>     Attrib V39    -0.41518104120065585
#>     Attrib V4    0.6864636490124512
#>     Attrib V40    -0.42106498107528384
#>     Attrib V41    0.6403053324191278
#>     Attrib V42    -0.34570488427386253
#>     Attrib V43    0.0015693157340876613
#>     Attrib V44    0.1764400679400702
#>     Attrib V45    0.7149777413060495
#>     Attrib V46    0.7145273870010367
#>     Attrib V47    0.5943517973640572
#>     Attrib V48    0.5858308073457428
#>     Attrib V49    0.9348973022347349
#>     Attrib V5    0.5559781815699251
#>     Attrib V50    -0.4809788905350874
#>     Attrib V51    0.6463368906033685
#>     Attrib V52    0.4450432284044759
#>     Attrib V53    0.18154788126145127
#>     Attrib V54    0.13369971768917757
#>     Attrib V55    -1.0491444439999031
#>     Attrib V56    -0.22522738457339594
#>     Attrib V57    -0.20264618367336706
#>     Attrib V58    0.17860103181429154
#>     Attrib V59    -0.2438351019887536
#>     Attrib V6    0.5192983019185219
#>     Attrib V60    0.322486830172909
#>     Attrib V7    0.045848504983190826
#>     Attrib V8    -0.8394829067049044
#>     Attrib V9    0.9575948248038337
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.4066165168057875
#>     Attrib V1    -0.018062980286646924
#>     Attrib V10    -0.30856676647833775
#>     Attrib V11    -0.4502136807445649
#>     Attrib V12    -0.3204942296433597
#>     Attrib V13    -0.18734330503737853
#>     Attrib V14    0.31058579578930173
#>     Attrib V15    0.3669138674743819
#>     Attrib V16    0.3969656924432124
#>     Attrib V17    0.07233585858695231
#>     Attrib V18    0.11330813974132872
#>     Attrib V19    -0.05829481481418469
#>     Attrib V2    0.08348901797781166
#>     Attrib V20    -0.11471511966332748
#>     Attrib V21    -0.01614810800590154
#>     Attrib V22    -0.10989059297555855
#>     Attrib V23    -0.07969701801982682
#>     Attrib V24    -0.1472126166866374
#>     Attrib V25    0.21563674895687346
#>     Attrib V26    0.16816434210271886
#>     Attrib V27    -0.03093797134006294
#>     Attrib V28    -0.36571941814240755
#>     Attrib V29    0.033106715092673294
#>     Attrib V3    0.20889169449901004
#>     Attrib V30    -0.1452867223325941
#>     Attrib V31    0.17043623094653818
#>     Attrib V32    -0.1707581100752311
#>     Attrib V33    -0.0024641393876050875
#>     Attrib V34    0.16396717202215638
#>     Attrib V35    -0.050102753972848774
#>     Attrib V36    0.5198837433355599
#>     Attrib V37    0.3399615005598646
#>     Attrib V38    -0.10097773268450325
#>     Attrib V39    0.02592587179946848
#>     Attrib V4    -0.255617142868908
#>     Attrib V40    0.30420358432091577
#>     Attrib V41    -0.0661801553755475
#>     Attrib V42    0.1368823137044883
#>     Attrib V43    -0.0864550360339679
#>     Attrib V44    -0.06200600935149091
#>     Attrib V45    -0.3230849414643983
#>     Attrib V46    -0.28017707889868454
#>     Attrib V47    -0.13361693995981935
#>     Attrib V48    -0.2528176644356558
#>     Attrib V49    -0.5466186252615698
#>     Attrib V5    -0.0953338766254029
#>     Attrib V50    0.38009513646893306
#>     Attrib V51    -0.17208185718446414
#>     Attrib V52    0.0819493285361048
#>     Attrib V53    0.061207943353239216
#>     Attrib V54    -0.25167745051330287
#>     Attrib V55    0.4087854801620021
#>     Attrib V56    0.061124994130083814
#>     Attrib V57    -0.03681282761990779
#>     Attrib V58    -0.3025152899140637
#>     Attrib V59    0.017674003147085237
#>     Attrib V6    -0.03410524445423959
#>     Attrib V60    -0.08496749498290161
#>     Attrib V7    -0.02734195635898777
#>     Attrib V8    0.33488266004310463
#>     Attrib V9    -0.43598446069484575
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.17964853790000515
#>     Attrib V1    0.17802638576378887
#>     Attrib V10    0.1377850455686285
#>     Attrib V11    0.09043911689471242
#>     Attrib V12    0.08594412112334508
#>     Attrib V13    0.08564658809453311
#>     Attrib V14    -0.13464249825038802
#>     Attrib V15    -0.2127323121001882
#>     Attrib V16    -0.12042686799955916
#>     Attrib V17    0.17538646888280224
#>     Attrib V18    0.13986074161622414
#>     Attrib V19    0.3082285564129311
#>     Attrib V2    -0.16088865884088083
#>     Attrib V20    0.49127671122058497
#>     Attrib V21    0.2855832038769413
#>     Attrib V22    0.39874978044102716
#>     Attrib V23    0.39151684950692955
#>     Attrib V24    0.30389140241522616
#>     Attrib V25    -0.14148834931837848
#>     Attrib V26    -0.4610462030040377
#>     Attrib V27    -0.4235541880677309
#>     Attrib V28    -0.15673684894751802
#>     Attrib V29    -0.6018665645144894
#>     Attrib V3    -0.060263773385449665
#>     Attrib V30    0.0024213928768572414
#>     Attrib V31    -0.323571117474596
#>     Attrib V32    0.08768054465789861
#>     Attrib V33    0.2516215796698763
#>     Attrib V34    -0.051152400141007894
#>     Attrib V35    0.04303831405075574
#>     Attrib V36    -0.39895140184212047
#>     Attrib V37    -0.45772212802141526
#>     Attrib V38    0.36347497593069716
#>     Attrib V39    0.07632490642275143
#>     Attrib V4    0.2509067611692
#>     Attrib V40    -0.1795748221178577
#>     Attrib V41    0.06290043431936132
#>     Attrib V42    -0.06903167553100562
#>     Attrib V43    0.29821160386846923
#>     Attrib V44    0.21067431945716367
#>     Attrib V45    0.14815041444037466
#>     Attrib V46    -0.02405684399327742
#>     Attrib V47    -0.11078212164202877
#>     Attrib V48    0.05943819569292708
#>     Attrib V49    0.526284422798828
#>     Attrib V5    0.03859155364572443
#>     Attrib V50    -0.20286821678591546
#>     Attrib V51    0.15898130344362443
#>     Attrib V52    -0.31416010996333354
#>     Attrib V53    0.23698025238249054
#>     Attrib V54    0.5736996484611905
#>     Attrib V55    -0.4484293928509114
#>     Attrib V56    0.3465676306181369
#>     Attrib V57    0.2848260533658952
#>     Attrib V58    0.48223804236131207
#>     Attrib V59    0.3630221457139183
#>     Attrib V6    0.04842110130129217
#>     Attrib V60    0.30372491927456796
#>     Attrib V7    0.1649485893126143
#>     Attrib V8    -0.21079733309644066
#>     Attrib V9    0.4012068478208546
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.33572628184954895
#>     Attrib V1    0.2743575291762137
#>     Attrib V10    0.09172748152742861
#>     Attrib V11    0.09499675568828538
#>     Attrib V12    -0.059978893854063735
#>     Attrib V13    0.13029606190445736
#>     Attrib V14    -0.10209763993965568
#>     Attrib V15    -0.1985614098453828
#>     Attrib V16    -0.0765975936039966
#>     Attrib V17    0.17169843216055697
#>     Attrib V18    0.11733858765424929
#>     Attrib V19    0.44622768385112904
#>     Attrib V2    -0.11477683144737938
#>     Attrib V20    0.6130816774500996
#>     Attrib V21    0.4228817593542047
#>     Attrib V22    0.608051654832684
#>     Attrib V23    0.5080654126560438
#>     Attrib V24    0.3088979504125328
#>     Attrib V25    -0.3541242417822754
#>     Attrib V26    -0.6793146885570515
#>     Attrib V27    -0.5830480823667853
#>     Attrib V28    -0.2538310580663294
#>     Attrib V29    -0.7080042317416323
#>     Attrib V3    -0.025471530621716497
#>     Attrib V30    -0.040482992106120275
#>     Attrib V31    -0.4812582835302068
#>     Attrib V32    0.08586421183247966
#>     Attrib V33    0.41024972467967885
#>     Attrib V34    -0.13764899299682914
#>     Attrib V35    -0.0662756015531132
#>     Attrib V36    -0.5554481057599717
#>     Attrib V37    -0.6316100279752236
#>     Attrib V38    0.4450014951298819
#>     Attrib V39    0.11137106403768646
#>     Attrib V4    0.3785996217897752
#>     Attrib V40    -0.16194328367241148
#>     Attrib V41    0.1502100073914017
#>     Attrib V42    0.0017929134459391688
#>     Attrib V43    0.4816721045453465
#>     Attrib V44    0.16634820312047233
#>     Attrib V45    0.10495952721282066
#>     Attrib V46    -0.027478894570119115
#>     Attrib V47    -0.2569925144839862
#>     Attrib V48    0.0360135476994978
#>     Attrib V49    0.6350908296377579
#>     Attrib V5    0.04494826507584494
#>     Attrib V50    -0.3163876339973138
#>     Attrib V51    0.09979676726925638
#>     Attrib V52    -0.42896739405278567
#>     Attrib V53    0.349945396894378
#>     Attrib V54    0.725755675339724
#>     Attrib V55    -0.6388373778962695
#>     Attrib V56    0.48447686132484413
#>     Attrib V57    0.43301358835368636
#>     Attrib V58    0.713463188812046
#>     Attrib V59    0.6468844532699455
#>     Attrib V6    0.0015040766395469389
#>     Attrib V60    0.42317198018573826
#>     Attrib V7    0.30595529646604624
#>     Attrib V8    -0.2107018885833894
#>     Attrib V9    0.47931975760957357
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.022931011245092642
#>     Attrib V1    0.1525146629525446
#>     Attrib V10    0.02411720544738521
#>     Attrib V11    0.011692129578121248
#>     Attrib V12    0.01277175520865735
#>     Attrib V13    0.14488601278422678
#>     Attrib V14    0.01991019571429305
#>     Attrib V15    -0.08249293483555487
#>     Attrib V16    -0.08930565155746395
#>     Attrib V17    0.11202145200296644
#>     Attrib V18    0.10171398321151738
#>     Attrib V19    0.16588968815378796
#>     Attrib V2    -0.06500813374999954
#>     Attrib V20    0.2629535100905345
#>     Attrib V21    0.17173040373776016
#>     Attrib V22    0.18234127175056225
#>     Attrib V23    0.24550601285983137
#>     Attrib V24    0.19333295990256943
#>     Attrib V25    -0.05242151558491743
#>     Attrib V26    -0.2793439778239851
#>     Attrib V27    -0.16666798425672402
#>     Attrib V28    -0.06347379841852434
#>     Attrib V29    -0.23679084894409155
#>     Attrib V3    0.0730579433180389
#>     Attrib V30    -0.019221184706877673
#>     Attrib V31    -0.2663831060691216
#>     Attrib V32    0.012403613562536336
#>     Attrib V33    0.09371218208407628
#>     Attrib V34    -0.0303706461193832
#>     Attrib V35    0.009429685780231066
#>     Attrib V36    -0.24652884374910644
#>     Attrib V37    -0.2028981952906849
#>     Attrib V38    0.18330750495759845
#>     Attrib V39    0.10775574400756593
#>     Attrib V4    0.26015136422339025
#>     Attrib V40    -0.061055211520901424
#>     Attrib V41    0.10173336308880178
#>     Attrib V42    -0.047060286702338534
#>     Attrib V43    0.11835286474633869
#>     Attrib V44    0.08838166839504506
#>     Attrib V45    -1.6308817268874035E-4
#>     Attrib V46    0.025978948152883378
#>     Attrib V47    -0.01746155454106812
#>     Attrib V48    0.03232238678315143
#>     Attrib V49    0.3454413027429003
#>     Attrib V5    0.09154310614963317
#>     Attrib V50    -0.12430095157873441
#>     Attrib V51    0.059167349064752
#>     Attrib V52    -0.16574108634799734
#>     Attrib V53    0.2170914018258399
#>     Attrib V54    0.30637687975511746
#>     Attrib V55    -0.21899001710588048
#>     Attrib V56    0.199315594605535
#>     Attrib V57    0.267214830801606
#>     Attrib V58    0.28308027026957955
#>     Attrib V59    0.3621317186953832
#>     Attrib V6    0.07717706351136469
#>     Attrib V60    0.296739232613765
#>     Attrib V7    0.18084154385820445
#>     Attrib V8    -0.1855746980547555
#>     Attrib V9    0.19795971144331065
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.32978431511381456
#>     Attrib V1    0.308492280549102
#>     Attrib V10    0.22228468899563536
#>     Attrib V11    0.20965995595807704
#>     Attrib V12    0.10302585507106926
#>     Attrib V13    0.11775433905107248
#>     Attrib V14    -0.2762301169195312
#>     Attrib V15    -0.2583624248089301
#>     Attrib V16    -0.19021363751282214
#>     Attrib V17    0.1845078050399915
#>     Attrib V18    0.1176064939853506
#>     Attrib V19    0.41292910428159224
#>     Attrib V2    -0.1717498010579113
#>     Attrib V20    0.6020700371725161
#>     Attrib V21    0.35552495597038714
#>     Attrib V22    0.5657853160072008
#>     Attrib V23    0.563304561774348
#>     Attrib V24    0.42590399194687356
#>     Attrib V25    -0.22519969251619498
#>     Attrib V26    -0.606249713700203
#>     Attrib V27    -0.6890717240462618
#>     Attrib V28    -0.40807208389021
#>     Attrib V29    -1.0293844746069647
#>     Attrib V3    -0.0904726684048188
#>     Attrib V30    -0.008103475893102997
#>     Attrib V31    -0.33723865393697955
#>     Attrib V32    0.1627775708997404
#>     Attrib V33    0.43913046010547885
#>     Attrib V34    -0.08729909684598018
#>     Attrib V35    0.049589836522752465
#>     Attrib V36    -0.5868273397433613
#>     Attrib V37    -0.665806387123681
#>     Attrib V38    0.4207321122771059
#>     Attrib V39    0.12697214491608347
#>     Attrib V4    0.26902081612445256
#>     Attrib V40    -0.22164920202411512
#>     Attrib V41    0.06555435755170193
#>     Attrib V42    -0.12618124112850929
#>     Attrib V43    0.422832348090204
#>     Attrib V44    0.27504278965815676
#>     Attrib V45    0.04719882920942508
#>     Attrib V46    -0.07891335667388481
#>     Attrib V47    -0.28315722714797265
#>     Attrib V48    0.07981220397478726
#>     Attrib V49    0.798706579579581
#>     Attrib V5    -0.09636475944461875
#>     Attrib V50    -0.30790927930678896
#>     Attrib V51    0.081167233019683
#>     Attrib V52    -0.5047480341104331
#>     Attrib V53    0.2757707705834042
#>     Attrib V54    0.8656215493527074
#>     Attrib V55    -0.5935314130082031
#>     Attrib V56    0.5570335362240504
#>     Attrib V57    0.3748590015191942
#>     Attrib V58    0.7008233396446133
#>     Attrib V59    0.584554333880799
#>     Attrib V6    0.01932257178573372
#>     Attrib V60    0.4992935068851504
#>     Attrib V7    0.3595383571055014
#>     Attrib V8    -0.3308245002534371
#>     Attrib V9    0.5260916720376189
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.579382472928256
#>     Attrib V1    -0.19166023886076328
#>     Attrib V10    -0.7436584102144743
#>     Attrib V11    -0.759109560432135
#>     Attrib V12    -0.4933786539287405
#>     Attrib V13    -0.2567917664415273
#>     Attrib V14    0.7990988161998486
#>     Attrib V15    1.1304567765359335
#>     Attrib V16    0.8886855143066917
#>     Attrib V17    0.16027731720653526
#>     Attrib V18    0.07811527450733179
#>     Attrib V19    -0.23248449891145104
#>     Attrib V2    0.04890675007156942
#>     Attrib V20    -0.35302267084050093
#>     Attrib V21    -0.28996825340533694
#>     Attrib V22    -0.3507349278126066
#>     Attrib V23    -0.29764173423569806
#>     Attrib V24    -0.12961072637018647
#>     Attrib V25    0.5179590872223646
#>     Attrib V26    0.26633780504644866
#>     Attrib V27    -0.13022295924281307
#>     Attrib V28    -0.69766408241217
#>     Attrib V29    0.178281941386519
#>     Attrib V3    0.37127865355929257
#>     Attrib V30    -0.33956464659320096
#>     Attrib V31    0.3925287295076824
#>     Attrib V32    -0.24537475998365382
#>     Attrib V33    -0.20958078514733697
#>     Attrib V34    0.23399384793407565
#>     Attrib V35    -0.2755091624413938
#>     Attrib V36    0.9899342710255178
#>     Attrib V37    0.4920444254320047
#>     Attrib V38    -0.19862307771782414
#>     Attrib V39    0.27064311068602165
#>     Attrib V4    -0.5774617395081278
#>     Attrib V40    0.565882421034011
#>     Attrib V41    -0.41879849007634085
#>     Attrib V42    0.20001270733760218
#>     Attrib V43    -0.05381789529361364
#>     Attrib V44    -0.1876419826463174
#>     Attrib V45    -0.6775645838120963
#>     Attrib V46    -0.5385333283150502
#>     Attrib V47    -0.3662444050104575
#>     Attrib V48    -0.508661947396425
#>     Attrib V49    -1.0289782920670294
#>     Attrib V5    -0.3944159366948358
#>     Attrib V50    0.6421001842057046
#>     Attrib V51    -0.49883624654764164
#>     Attrib V52    -0.1989398255785974
#>     Attrib V53    0.07045153083040606
#>     Attrib V54    -0.32265888085834327
#>     Attrib V55    1.349407424166764
#>     Attrib V56    0.19513057891246152
#>     Attrib V57    0.14660222542397086
#>     Attrib V58    -0.2756825503734127
#>     Attrib V59    0.3510539637245205
#>     Attrib V6    -0.3985212610123884
#>     Attrib V60    -0.1416452925980508
#>     Attrib V7    0.006806585886048684
#>     Attrib V8    0.8722763884009386
#>     Attrib V9    -1.0098621961966634
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.19307029903646145
#>     Attrib V1    0.04203352793720006
#>     Attrib V10    0.019379355108564207
#>     Attrib V11    -0.052220995639406936
#>     Attrib V12    -0.030225607224882284
#>     Attrib V13    0.030871842579581425
#>     Attrib V14    0.03204127818229145
#>     Attrib V15    0.028298494497854775
#>     Attrib V16    0.10822733373449178
#>     Attrib V17    0.1084952429761368
#>     Attrib V18    0.07535716668580839
#>     Attrib V19    0.01385966462113244
#>     Attrib V2    0.007150637912710394
#>     Attrib V20    -0.07413538401138124
#>     Attrib V21    -0.09596354703974874
#>     Attrib V22    -0.07303983065555335
#>     Attrib V23    -0.054780585497010786
#>     Attrib V24    0.0066466040771441266
#>     Attrib V25    0.023973027104028804
#>     Attrib V26    -0.04113401891906283
#>     Attrib V27    -0.046667579909786844
#>     Attrib V28    -0.014174638955967574
#>     Attrib V29    -0.043146668393272525
#>     Attrib V3    0.11019605562911833
#>     Attrib V30    -0.06046644940701605
#>     Attrib V31    -0.03374878935924417
#>     Attrib V32    0.014449727502679392
#>     Attrib V33    0.019493708593323094
#>     Attrib V34    0.07154864837947338
#>     Attrib V35    0.06605295114938935
#>     Attrib V36    0.07375791845187872
#>     Attrib V37    0.10257927546528801
#>     Attrib V38    0.046352757365978936
#>     Attrib V39    0.04274864536051896
#>     Attrib V4    0.08342957398457748
#>     Attrib V40    0.04332625442279351
#>     Attrib V41    0.0760067614739631
#>     Attrib V42    0.08616599150479659
#>     Attrib V43    0.029706527093945827
#>     Attrib V44    0.004140112734761787
#>     Attrib V45    -0.010813362570157872
#>     Attrib V46    0.060596641175281483
#>     Attrib V47    0.06121279319484689
#>     Attrib V48    0.010627709321280545
#>     Attrib V49    -0.004041371550987735
#>     Attrib V5    0.08301340148553381
#>     Attrib V50    0.11297494160072402
#>     Attrib V51    0.12072837773244569
#>     Attrib V52    0.09607185063341832
#>     Attrib V53    0.1434663281122522
#>     Attrib V54    0.012450939946363546
#>     Attrib V55    0.0891967085747555
#>     Attrib V56    0.08349996889396977
#>     Attrib V57    0.10536837658184747
#>     Attrib V58    0.07510194045023984
#>     Attrib V59    0.020020705958824686
#>     Attrib V6    0.07691713307771711
#>     Attrib V60    0.11422100711529747
#>     Attrib V7    0.05060690284089747
#>     Attrib V8    0.024574798933860678
#>     Attrib V9    0.07514863488839638
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.017542231146110036
#>     Attrib V1    0.13904966165827157
#>     Attrib V10    0.11664258889583339
#>     Attrib V11    0.06454213701123833
#>     Attrib V12    0.009479513766817046
#>     Attrib V13    0.016138303084515266
#>     Attrib V14    4.3923348639017724E-4
#>     Attrib V15    0.014376160856789038
#>     Attrib V16    -0.05111066989467849
#>     Attrib V17    0.04413480207569237
#>     Attrib V18    0.024193348364926415
#>     Attrib V19    0.08416117577895822
#>     Attrib V2    0.04755683434185687
#>     Attrib V20    0.06581287523020136
#>     Attrib V21    0.02153777936227863
#>     Attrib V22    0.1159838990144014
#>     Attrib V23    0.07544126890234064
#>     Attrib V24    0.11383766046073403
#>     Attrib V25    -0.07714765528601276
#>     Attrib V26    -0.16029491748630897
#>     Attrib V27    -0.08831331828601124
#>     Attrib V28    0.004876282755364268
#>     Attrib V29    -0.17991110708787783
#>     Attrib V3    0.024564033555952557
#>     Attrib V30    0.01917571326399758
#>     Attrib V31    -0.06931993820153605
#>     Attrib V32    -0.015064906658581456
#>     Attrib V33    0.09081092440697677
#>     Attrib V34    -0.06401795354909645
#>     Attrib V35    0.0657180177349451
#>     Attrib V36    -0.18253041120355198
#>     Attrib V37    -0.15678535474840308
#>     Attrib V38    0.14090942182518298
#>     Attrib V39    0.04384208808381022
#>     Attrib V4    0.1990949059502314
#>     Attrib V40    -0.10664186627402916
#>     Attrib V41    0.06760861171341331
#>     Attrib V42    -0.10099324715196321
#>     Attrib V43    0.10133575287884321
#>     Attrib V44    0.08210343477591167
#>     Attrib V45    0.050517012205109985
#>     Attrib V46    -0.004692640834750479
#>     Attrib V47    -0.034121439764666125
#>     Attrib V48    0.1113090533607281
#>     Attrib V49    0.19209875817534242
#>     Attrib V5    0.061183011487049715
#>     Attrib V50    -0.03068622738495654
#>     Attrib V51    0.09693971391143869
#>     Attrib V52    -0.05859120256363276
#>     Attrib V53    0.12788278045137808
#>     Attrib V54    0.18329288015697134
#>     Attrib V55    -0.03970147623083529
#>     Attrib V56    0.14355433258182418
#>     Attrib V57    0.24752920069157253
#>     Attrib V58    0.1503685772580876
#>     Attrib V59    0.14609920815224403
#>     Attrib V6    0.07324131111949868
#>     Attrib V60    0.19910259482511783
#>     Attrib V7    0.06240817345293438
#>     Attrib V8    -0.056577363655743854
#>     Attrib V9    0.1769864997567826
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.2173982630521865
#>     Attrib V1    0.05603835118067032
#>     Attrib V10    0.024181974525956877
#>     Attrib V11    -0.04457915293322732
#>     Attrib V12    -0.046900695052657815
#>     Attrib V13    -0.004900676543913957
#>     Attrib V14    0.06227041369041152
#>     Attrib V15    0.016925082550459186
#>     Attrib V16    0.05751667633908377
#>     Attrib V17    0.02812483845252804
#>     Attrib V18    0.07293275114071678
#>     Attrib V19    -0.043328628437482385
#>     Attrib V2    0.06076661755700951
#>     Attrib V20    -0.018477192088769773
#>     Attrib V21    -0.0257028254944021
#>     Attrib V22    -0.05168860396962401
#>     Attrib V23    -0.008350855782191642
#>     Attrib V24    -0.039972263933503914
#>     Attrib V25    0.009975433947031697
#>     Attrib V26    -0.004205754588674284
#>     Attrib V27    -0.0172021659064079
#>     Attrib V28    -0.03902727110039923
#>     Attrib V29    -0.056731880276706545
#>     Attrib V3    0.1442144302997831
#>     Attrib V30    -0.06705760740610626
#>     Attrib V31    -0.030209478510031394
#>     Attrib V32    -0.009774468939633126
#>     Attrib V33    0.03678251096434836
#>     Attrib V34    0.07530749091464652
#>     Attrib V35    0.05627900059171589
#>     Attrib V36    0.13465898208154928
#>     Attrib V37    0.056599374935242884
#>     Attrib V38    0.026932681504173325
#>     Attrib V39    0.07221876436665484
#>     Attrib V4    0.05812913360409079
#>     Attrib V40    0.04252844132880882
#>     Attrib V41    0.023878510920996923
#>     Attrib V42    0.04309525186230268
#>     Attrib V43    0.043828608690748366
#>     Attrib V44    0.08279747440374918
#>     Attrib V45    -0.05868039054186457
#>     Attrib V46    0.02486160678427713
#>     Attrib V47    0.09767514625142625
#>     Attrib V48    0.03587252961410459
#>     Attrib V49    0.06074923348726071
#>     Attrib V5    0.08883352954430873
#>     Attrib V50    0.034344953805137975
#>     Attrib V51    0.1312274875175337
#>     Attrib V52    0.06263170134674638
#>     Attrib V53    0.11389778973459509
#>     Attrib V54    0.010986822788798358
#>     Attrib V55    0.09283110927592295
#>     Attrib V56    0.10522105001858849
#>     Attrib V57    0.041464450524725305
#>     Attrib V58    0.04259980977416219
#>     Attrib V59    0.09525216549244025
#>     Attrib V6    0.035713283738384324
#>     Attrib V60    0.14735201399633582
#>     Attrib V7    0.08809099600194925
#>     Attrib V8    0.08522035757493768
#>     Attrib V9    0.05735654476568459
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.2761108024648724
#>     Attrib V1    0.1983787134423508
#>     Attrib V10    0.09841809356526596
#>     Attrib V11    0.06878588592992663
#>     Attrib V12    0.10838279831986754
#>     Attrib V13    0.1521965380015523
#>     Attrib V14    -0.09188959318467421
#>     Attrib V15    -0.1561623708160546
#>     Attrib V16    -0.1648973633004557
#>     Attrib V17    0.11733974761346204
#>     Attrib V18    0.10620803975405624
#>     Attrib V19    0.35204839953619094
#>     Attrib V2    -0.10855953574973332
#>     Attrib V20    0.4360897985227407
#>     Attrib V21    0.28198000939194384
#>     Attrib V22    0.4579723013766861
#>     Attrib V23    0.38990814241670263
#>     Attrib V24    0.33107747455626335
#>     Attrib V25    -0.16112471642925444
#>     Attrib V26    -0.43628131291726535
#>     Attrib V27    -0.3977367680808947
#>     Attrib V28    -0.12520662688634088
#>     Attrib V29    -0.5623232960736625
#>     Attrib V3    -0.0664210520905608
#>     Attrib V30    -0.01510613146507949
#>     Attrib V31    -0.3279656855569122
#>     Attrib V32    0.07729985695021366
#>     Attrib V33    0.3040224239376194
#>     Attrib V34    -0.11152237858017086
#>     Attrib V35    0.029824637062053152
#>     Attrib V36    -0.4789477182100955
#>     Attrib V37    -0.5244083830974383
#>     Attrib V38    0.2955895477360343
#>     Attrib V39    0.04689126364055399
#>     Attrib V4    0.3477795515129228
#>     Attrib V40    -0.15197767292160572
#>     Attrib V41    0.1329694567699946
#>     Attrib V42    -0.020779292490366443
#>     Attrib V43    0.31820757973044644
#>     Attrib V44    0.148945524881146
#>     Attrib V45    0.1474936227361763
#>     Attrib V46    -0.016447984622522373
#>     Attrib V47    -0.2139786791329853
#>     Attrib V48    0.03949042819077225
#>     Attrib V49    0.6386699673477746
#>     Attrib V5    0.02779619572790581
#>     Attrib V50    -0.28984486130317827
#>     Attrib V51    0.08141127597586528
#>     Attrib V52    -0.27102747003636546
#>     Attrib V53    0.30536485591484536
#>     Attrib V54    0.6317609417718731
#>     Attrib V55    -0.46390374654689814
#>     Attrib V56    0.32721027915259143
#>     Attrib V57    0.2847755838654585
#>     Attrib V58    0.5811004849077152
#>     Attrib V59    0.461941974699635
#>     Attrib V6    0.019286109951063023
#>     Attrib V60    0.34902300263998376
#>     Attrib V7    0.23482499363575304
#>     Attrib V8    -0.30026812150288024
#>     Attrib V9    0.37747779038022444
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.3279405373005488
#>     Attrib V1    0.4133182402073889
#>     Attrib V10    0.21993362823624754
#>     Attrib V11    0.08718102725814045
#>     Attrib V12    0.027585241066228554
#>     Attrib V13    0.16172086343528083
#>     Attrib V14    -0.17094061255431572
#>     Attrib V15    -0.2638223206369751
#>     Attrib V16    -0.1801117268293662
#>     Attrib V17    0.17789715240582377
#>     Attrib V18    0.1227443375080723
#>     Attrib V19    0.4804585405208274
#>     Attrib V2    -0.18882981995823592
#>     Attrib V20    0.7891350373959021
#>     Attrib V21    0.5575995022971394
#>     Attrib V22    0.7546149673287047
#>     Attrib V23    0.6975504200555039
#>     Attrib V24    0.4683477565224233
#>     Attrib V25    -0.34488792326882023
#>     Attrib V26    -0.7240280065317848
#>     Attrib V27    -0.6875237008788996
#>     Attrib V28    -0.30995776149788684
#>     Attrib V29    -0.8901058743764464
#>     Attrib V3    -0.02336633439746857
#>     Attrib V30    -0.008759364458924205
#>     Attrib V31    -0.4825114532947492
#>     Attrib V32    0.1055624981026217
#>     Attrib V33    0.4549887228781351
#>     Attrib V34    -0.17882586831699984
#>     Attrib V35    -0.028275402193271487
#>     Attrib V36    -0.5266719285071346
#>     Attrib V37    -0.6591049233605902
#>     Attrib V38    0.5756717813439072
#>     Attrib V39    0.1717148600445102
#>     Attrib V4    0.3244010968377896
#>     Attrib V40    -0.24460952853469942
#>     Attrib V41    0.12024937264075594
#>     Attrib V42    -0.05222482755237384
#>     Attrib V43    0.5643885387149794
#>     Attrib V44    0.3213732180740087
#>     Attrib V45    0.1465717414917073
#>     Attrib V46    -0.09073284100692659
#>     Attrib V47    -0.33478698482609615
#>     Attrib V48    0.0177717031803728
#>     Attrib V49    0.8008523312927733
#>     Attrib V5    0.017524070635455746
#>     Attrib V50    -0.3165834926400766
#>     Attrib V51    0.17202174104137316
#>     Attrib V52    -0.5246171240734951
#>     Attrib V53    0.321142124255379
#>     Attrib V54    0.8655121951273133
#>     Attrib V55    -0.7617091478880235
#>     Attrib V56    0.5688043495806512
#>     Attrib V57    0.3615835746072923
#>     Attrib V58    0.7940244698417929
#>     Attrib V59    0.6787484057620793
#>     Attrib V6    0.028405222296816603
#>     Attrib V60    0.49713587505601264
#>     Attrib V7    0.42176828651253645
#>     Attrib V8    -0.32659751207081045
#>     Attrib V9    0.599375948311115
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.4712494155357671
#>     Attrib V1    -0.1213052897943779
#>     Attrib V10    -0.8022985672649154
#>     Attrib V11    -0.8445607477417518
#>     Attrib V12    -0.5388416315714257
#>     Attrib V13    -0.32796168316592256
#>     Attrib V14    0.7709323000263285
#>     Attrib V15    1.088867118680747
#>     Attrib V16    0.8720177646091801
#>     Attrib V17    0.1747147020958987
#>     Attrib V18    0.10267973751086504
#>     Attrib V19    -0.2973512838379021
#>     Attrib V2    0.017398622935911257
#>     Attrib V20    -0.3653011670299637
#>     Attrib V21    -0.23144943201631527
#>     Attrib V22    -0.435232326382896
#>     Attrib V23    -0.3507002256642689
#>     Attrib V24    -0.1334735881208399
#>     Attrib V25    0.5435264554066799
#>     Attrib V26    0.20556019115324278
#>     Attrib V27    -0.11492576382886219
#>     Attrib V28    -0.7132053241230417
#>     Attrib V29    0.17404906830624778
#>     Attrib V3    0.33759476922931786
#>     Attrib V30    -0.3789922915850858
#>     Attrib V31    0.3558231141330403
#>     Attrib V32    -0.3046473610058259
#>     Attrib V33    -0.19331998147109447
#>     Attrib V34    0.20343131445848447
#>     Attrib V35    -0.2703540299900955
#>     Attrib V36    1.0178724313346155
#>     Attrib V37    0.5366738848322402
#>     Attrib V38    -0.23957862749785794
#>     Attrib V39    0.2533371846562254
#>     Attrib V4    -0.47602893212787706
#>     Attrib V40    0.6416644547495991
#>     Attrib V41    -0.2920412957208112
#>     Attrib V42    0.22493526431467978
#>     Attrib V43    -0.033837439910135186
#>     Attrib V44    -0.20792587590924283
#>     Attrib V45    -0.8081425349203062
#>     Attrib V46    -0.6173805874661575
#>     Attrib V47    -0.4150681470297112
#>     Attrib V48    -0.49589603907924634
#>     Attrib V49    -1.089939133047844
#>     Attrib V5    -0.3285013952458003
#>     Attrib V50    0.6073689725406529
#>     Attrib V51    -0.5598656211930567
#>     Attrib V52    -0.2146871121116399
#>     Attrib V53    0.04474360937067577
#>     Attrib V54    -0.30575732183934423
#>     Attrib V55    1.1786144312478035
#>     Attrib V56    0.10753325742061354
#>     Attrib V57    0.3392225550436661
#>     Attrib V58    -0.33565779491096576
#>     Attrib V59    0.5323156204180911
#>     Attrib V6    -0.36597626980415005
#>     Attrib V60    0.09543442579862187
#>     Attrib V7    0.07434106389185846
#>     Attrib V8    0.7497534530244511
#>     Attrib V9    -1.0470049158957533
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.1226465981444444
#>     Attrib V1    0.21158759236670674
#>     Attrib V10    0.057379826448503805
#>     Attrib V11    0.03612612191615819
#>     Attrib V12    0.0251925298094533
#>     Attrib V13    0.06126569000885433
#>     Attrib V14    0.008000646955968783
#>     Attrib V15    -0.09137581471644922
#>     Attrib V16    0.004537301513296575
#>     Attrib V17    0.12178632232982022
#>     Attrib V18    0.09430096041359191
#>     Attrib V19    0.16697826295975163
#>     Attrib V2    -0.03582263927083993
#>     Attrib V20    0.2597062807053678
#>     Attrib V21    0.1491408268231687
#>     Attrib V22    0.19595968832350627
#>     Attrib V23    0.1744645159178268
#>     Attrib V24    0.2391408207103389
#>     Attrib V25    -0.11970635330770849
#>     Attrib V26    -0.34610685198123164
#>     Attrib V27    -0.33276365036970107
#>     Attrib V28    -0.2090829722409078
#>     Attrib V29    -0.37981576889536883
#>     Attrib V3    -0.013654847238834188
#>     Attrib V30    -0.062241115392380676
#>     Attrib V31    -0.17019025444068744
#>     Attrib V32    0.04003732167231358
#>     Attrib V33    0.11116609986525444
#>     Attrib V34    -0.06861070820954115
#>     Attrib V35    0.010921254617329498
#>     Attrib V36    -0.28667378612797817
#>     Attrib V37    -0.29517431514650916
#>     Attrib V38    0.16990995351207946
#>     Attrib V39    0.027594641253482464
#>     Attrib V4    0.24685019045580522
#>     Attrib V40    -0.07842889104943512
#>     Attrib V41    0.0402737713864265
#>     Attrib V42    -0.08269719629476681
#>     Attrib V43    0.23337695219732493
#>     Attrib V44    0.08109101215206094
#>     Attrib V45    -0.04328314245856118
#>     Attrib V46    -0.01370152377518776
#>     Attrib V47    -0.13850224661530425
#>     Attrib V48    0.07832309524235143
#>     Attrib V49    0.36475608419990235
#>     Attrib V5    0.04336769283468127
#>     Attrib V50    -0.12379401529277002
#>     Attrib V51    0.045771809419933356
#>     Attrib V52    -0.20226079017418214
#>     Attrib V53    0.1968293384238783
#>     Attrib V54    0.4250225066453896
#>     Attrib V55    -0.1755825087371973
#>     Attrib V56    0.2857198021618534
#>     Attrib V57    0.3214515193087375
#>     Attrib V58    0.40168271972494873
#>     Attrib V59    0.36741595614026507
#>     Attrib V6    0.04504813588916052
#>     Attrib V60    0.31478728303219644
#>     Attrib V7    0.1658730474270132
#>     Attrib V8    -0.2206656499678491
#>     Attrib V9    0.22525205210805213
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.3357437654837961
#>     Attrib V1    0.39229910294524883
#>     Attrib V10    0.19191223356806986
#>     Attrib V11    0.15046136495646628
#>     Attrib V12    0.060848346256373836
#>     Attrib V13    0.16846356594288012
#>     Attrib V14    -0.22568527103259048
#>     Attrib V15    -0.26918826080706715
#>     Attrib V16    -0.16972837842024152
#>     Attrib V17    0.24493387467615516
#>     Attrib V18    0.11269193690399544
#>     Attrib V19    0.47666652116575814
#>     Attrib V2    -0.25228456610852357
#>     Attrib V20    0.7385420083299761
#>     Attrib V21    0.4432541278754257
#>     Attrib V22    0.7104412915270607
#>     Attrib V23    0.6803439001426681
#>     Attrib V24    0.4863717876983059
#>     Attrib V25    -0.2967358003748892
#>     Attrib V26    -0.7681403635720041
#>     Attrib V27    -0.8567708943125715
#>     Attrib V28    -0.459816880261019
#>     Attrib V29    -1.1305017035202538
#>     Attrib V3    -0.0032096611010350704
#>     Attrib V30    -0.05718031350801327
#>     Attrib V31    -0.4428306525390264
#>     Attrib V32    0.13823951984745597
#>     Attrib V33    0.4981895478241114
#>     Attrib V34    -0.10892620395966005
#>     Attrib V35    0.05131348803055367
#>     Attrib V36    -0.558183747204846
#>     Attrib V37    -0.7354987521144399
#>     Attrib V38    0.5165374768267629
#>     Attrib V39    0.1911192133568696
#>     Attrib V4    0.29634568711137904
#>     Attrib V40    -0.27464178443312515
#>     Attrib V41    0.01908650573062879
#>     Attrib V42    -0.0595097158314075
#>     Attrib V43    0.5742266093345368
#>     Attrib V44    0.2475843202653595
#>     Attrib V45    0.09849902911038395
#>     Attrib V46    -0.09772173688484709
#>     Attrib V47    -0.27459597468498126
#>     Attrib V48    -0.02629196538854533
#>     Attrib V49    0.804267941717603
#>     Attrib V5    -0.0857400652806614
#>     Attrib V50    -0.31774146927475444
#>     Attrib V51    0.06726333534083546
#>     Attrib V52    -0.5973560710795149
#>     Attrib V53    0.3550298100646148
#>     Attrib V54    0.9102656978993653
#>     Attrib V55    -0.7003059397198599
#>     Attrib V56    0.6374197322746141
#>     Attrib V57    0.40464230608666596
#>     Attrib V58    0.7806724281506864
#>     Attrib V59    0.7486243028485067
#>     Attrib V6    0.020871348259226596
#>     Attrib V60    0.5623742277478656
#>     Attrib V7    0.4771205185641261
#>     Attrib V8    -0.2631379498480733
#>     Attrib V9    0.5872366029306513
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.4870162067376225
#>     Attrib V1    -0.13800611192004847
#>     Attrib V10    -0.5413427552336901
#>     Attrib V11    -0.613215814983992
#>     Attrib V12    -0.4824584062051563
#>     Attrib V13    -0.30071957643467856
#>     Attrib V14    0.5705201570714484
#>     Attrib V15    0.8414460264030853
#>     Attrib V16    0.6749518269678576
#>     Attrib V17    0.18680388998575137
#>     Attrib V18    0.07275113137119625
#>     Attrib V19    -0.19035664353843368
#>     Attrib V2    0.072483897963184
#>     Attrib V20    -0.2666691890765966
#>     Attrib V21    -0.15048680923922692
#>     Attrib V22    -0.3002497155912097
#>     Attrib V23    -0.22408624043133407
#>     Attrib V24    -0.20159237286159795
#>     Attrib V25    0.3863358402864435
#>     Attrib V26    0.24386968099655684
#>     Attrib V27    -0.07841983990621113
#>     Attrib V28    -0.5402987995615433
#>     Attrib V29    0.1418003720654826
#>     Attrib V3    0.27516209375373984
#>     Attrib V30    -0.26279805734681067
#>     Attrib V31    0.25928668679
#>     Attrib V32    -0.18015859597132425
#>     Attrib V33    -0.18570353462210953
#>     Attrib V34    0.15216602964431492
#>     Attrib V35    -0.21840559145177207
#>     Attrib V36    0.8155854846626424
#>     Attrib V37    0.38998983728836745
#>     Attrib V38    -0.22134579510204674
#>     Attrib V39    0.12825499386101896
#>     Attrib V4    -0.41186080437913536
#>     Attrib V40    0.483078825064017
#>     Attrib V41    -0.23727953362146703
#>     Attrib V42    0.1686686439852868
#>     Attrib V43    -0.03775367449560132
#>     Attrib V44    -0.14309236965906816
#>     Attrib V45    -0.5726579163050219
#>     Attrib V46    -0.4124853077476216
#>     Attrib V47    -0.2136402299083514
#>     Attrib V48    -0.3753534156627468
#>     Attrib V49    -0.8613155529266883
#>     Attrib V5    -0.2929463146888337
#>     Attrib V50    0.5570852754535589
#>     Attrib V51    -0.33912757190659854
#>     Attrib V52    0.054948566696516744
#>     Attrib V53    -0.031087160598601053
#>     Attrib V54    -0.354783873547928
#>     Attrib V55    0.9818947502185219
#>     Attrib V56    0.11610774327040044
#>     Attrib V57    0.12935832866454106
#>     Attrib V58    -0.27248227129249
#>     Attrib V59    0.19505902037566938
#>     Attrib V6    -0.2134412041923242
#>     Attrib V60    -0.1351443267049198
#>     Attrib V7    -0.021792447094384527
#>     Attrib V8    0.6808541187460271
#>     Attrib V9    -0.6744747374056703
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.5852616372069143
#>     Attrib V1    0.1548828942556478
#>     Attrib V10    0.6937402968513672
#>     Attrib V11    0.8735404360063436
#>     Attrib V12    0.9576958936032065
#>     Attrib V13    0.35368407435116933
#>     Attrib V14    -0.644515340739838
#>     Attrib V15    -1.0765182859934999
#>     Attrib V16    -0.8286194029167114
#>     Attrib V17    -0.1648107212721284
#>     Attrib V18    -0.051898428276080336
#>     Attrib V19    -0.05047769806974004
#>     Attrib V2    0.23632365887515008
#>     Attrib V20    -0.2741719599676833
#>     Attrib V21    -0.011381344872670769
#>     Attrib V22    0.029441308379739607
#>     Attrib V23    0.3257020499587421
#>     Attrib V24    0.176090321656037
#>     Attrib V25    -0.276917611360678
#>     Attrib V26    0.7230965889307985
#>     Attrib V27    1.4562461401318294
#>     Attrib V28    1.9717661146904493
#>     Attrib V29    1.1333248775260107
#>     Attrib V3    -0.04524131858242483
#>     Attrib V30    0.5509413876262954
#>     Attrib V31    -0.5513330391500406
#>     Attrib V32    -0.1883806718135331
#>     Attrib V33    -0.6985283886654637
#>     Attrib V34    -0.3330081374470179
#>     Attrib V35    0.6461715417797878
#>     Attrib V36    -1.030543110857118
#>     Attrib V37    -0.030823172239219827
#>     Attrib V38    -0.2891434990880461
#>     Attrib V39    -0.5346227284895936
#>     Attrib V4    1.209495185663457
#>     Attrib V40    -0.4001610812767413
#>     Attrib V41    1.1927019282400717
#>     Attrib V42    -0.264385376755942
#>     Attrib V43    -0.11335894068958527
#>     Attrib V44    0.3000890473926822
#>     Attrib V45    1.0893779516662936
#>     Attrib V46    0.8787213870857081
#>     Attrib V47    0.5476043062150356
#>     Attrib V48    0.45901089932301004
#>     Attrib V49    0.8002743354112262
#>     Attrib V5    1.025283744526491
#>     Attrib V50    -0.5281299745452548
#>     Attrib V51    0.7412581924467654
#>     Attrib V52    0.8189753955639625
#>     Attrib V53    0.34409052968313153
#>     Attrib V54    0.014461199669095324
#>     Attrib V55    -0.8146295317842425
#>     Attrib V56    -0.24041480825639203
#>     Attrib V57    0.1481628441889841
#>     Attrib V58    0.24217161759574105
#>     Attrib V59    0.014250803934761743
#>     Attrib V6    0.7728111456750554
#>     Attrib V60    0.5524064032004307
#>     Attrib V7    -0.1816814625112753
#>     Attrib V8    -1.0287448505871577
#>     Attrib V9    0.8181665233985361
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.15226074034063633
#>     Attrib V1    0.10661004853636748
#>     Attrib V10    0.024744994273042432
#>     Attrib V11    -0.03527671528310679
#>     Attrib V12    0.038979736672219004
#>     Attrib V13    0.020803127139076286
#>     Attrib V14    0.10184291668248027
#>     Attrib V15    -0.009015987846040654
#>     Attrib V16    -0.006475170407270427
#>     Attrib V17    0.07991578457309735
#>     Attrib V18    -0.007693069381863164
#>     Attrib V19    0.07302520953053651
#>     Attrib V2    0.04724442330965198
#>     Attrib V20    0.02763644823690922
#>     Attrib V21    -0.00614342536009354
#>     Attrib V22    -0.01011236909051758
#>     Attrib V23    0.03143821091782983
#>     Attrib V24    0.01639466779261289
#>     Attrib V25    -0.023303780106169018
#>     Attrib V26    -0.09050416318706524
#>     Attrib V27    -0.009922426022243535
#>     Attrib V28    0.05630648290843469
#>     Attrib V29    -0.04452083910967877
#>     Attrib V3    0.04745543489709408
#>     Attrib V30    -0.022784381036141655
#>     Attrib V31    -0.10776205792870125
#>     Attrib V32    -0.04489788514991384
#>     Attrib V33    0.046399690313154836
#>     Attrib V34    -0.025921450738202737
#>     Attrib V35    0.09782416814206948
#>     Attrib V36    0.004450666354340621
#>     Attrib V37    0.029557624564744856
#>     Attrib V38    0.06420809461155544
#>     Attrib V39    0.0527514408837048
#>     Attrib V4    0.18807084113633604
#>     Attrib V40    -0.02107844755421743
#>     Attrib V41    0.03297326197476298
#>     Attrib V42    -0.015412019363726704
#>     Attrib V43    0.05830627915866468
#>     Attrib V44    0.059056265820551
#>     Attrib V45    0.006299789724983655
#>     Attrib V46    0.021884631143051718
#>     Attrib V47    0.025956863435622347
#>     Attrib V48    0.1040367832497848
#>     Attrib V49    0.12195345807807252
#>     Attrib V5    0.041330434184294315
#>     Attrib V50    0.047456387851582724
#>     Attrib V51    0.06869911197523952
#>     Attrib V52    0.01038267858243698
#>     Attrib V53    0.12840837883922315
#>     Attrib V54    0.11561506799601125
#>     Attrib V55    0.002997377588397462
#>     Attrib V56    0.12859922312854136
#>     Attrib V57    0.18632075987866592
#>     Attrib V58    0.1120771247481598
#>     Attrib V59    0.15843716822278978
#>     Attrib V6    0.09297570558971384
#>     Attrib V60    0.2192901440475545
#>     Attrib V7    0.04401878521469929
#>     Attrib V8    -0.009020064249029718
#>     Attrib V9    0.08512079482444426
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.41810920393484013
#>     Attrib V1    0.41205286731054236
#>     Attrib V10    0.3259479459160758
#>     Attrib V11    0.2117056032890944
#>     Attrib V12    0.07520133129741176
#>     Attrib V13    0.21109473245825383
#>     Attrib V14    -0.3475753330888232
#>     Attrib V15    -0.3789475883822026
#>     Attrib V16    -0.22570025598562563
#>     Attrib V17    0.15124334339741197
#>     Attrib V18    0.15547650704262594
#>     Attrib V19    0.5248851669518859
#>     Attrib V2    -0.2325809778723149
#>     Attrib V20    0.7631625904594929
#>     Attrib V21    0.5176593167368113
#>     Attrib V22    0.7736908589596255
#>     Attrib V23    0.6937107505813961
#>     Attrib V24    0.5665819707541841
#>     Attrib V25    -0.3218218361943928
#>     Attrib V26    -0.7287052139038636
#>     Attrib V27    -0.821074531431198
#>     Attrib V28    -0.4280912033260195
#>     Attrib V29    -1.140314532609692
#>     Attrib V3    -0.06308414336044423
#>     Attrib V30    -0.021796977248391754
#>     Attrib V31    -0.4263435413500228
#>     Attrib V32    0.19988349502831984
#>     Attrib V33    0.5214859426877531
#>     Attrib V34    -0.08650946712391869
#>     Attrib V35    0.00882119278017138
#>     Attrib V36    -0.6644369721849668
#>     Attrib V37    -0.8466428257313593
#>     Attrib V38    0.5721256716322658
#>     Attrib V39    0.20145383636763975
#>     Attrib V4    0.3052919510172821
#>     Attrib V40    -0.32851244353848963
#>     Attrib V41    0.06779275712285365
#>     Attrib V42    -0.07997615755543844
#>     Attrib V43    0.5290605081392821
#>     Attrib V44    0.33371698852483
#>     Attrib V45    0.19382854365469726
#>     Attrib V46    -0.11319052548040649
#>     Attrib V47    -0.3570673424456671
#>     Attrib V48    0.052223096538256
#>     Attrib V49    0.8804053355915358
#>     Attrib V5    -0.06722278419501718
#>     Attrib V50    -0.31472641743460456
#>     Attrib V51    0.1437143440970964
#>     Attrib V52    -0.6126429878004611
#>     Attrib V53    0.37056838250020346
#>     Attrib V54    0.9698302594182651
#>     Attrib V55    -0.8106358961243098
#>     Attrib V56    0.5754305196876204
#>     Attrib V57    0.3594280083212799
#>     Attrib V58    0.8394530641641752
#>     Attrib V59    0.6966535501929726
#>     Attrib V6    0.08533415865672571
#>     Attrib V60    0.5411478149587088
#>     Attrib V7    0.45015010377351306
#>     Attrib V8    -0.2976275254413359
#>     Attrib V9    0.7029410902160222
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.5073739982504767
#>     Attrib V1    -0.1793620394150662
#>     Attrib V10    -1.160155377092549
#>     Attrib V11    -1.0723754165186874
#>     Attrib V12    -0.7116341218705263
#>     Attrib V13    -0.44063910740528944
#>     Attrib V14    0.9582111434203826
#>     Attrib V15    1.529725240593972
#>     Attrib V16    1.0858304374346883
#>     Attrib V17    0.17826014097551687
#>     Attrib V18    0.037290597916799284
#>     Attrib V19    -0.34731888703235336
#>     Attrib V2    -0.20370559484920261
#>     Attrib V20    -0.24302888835714176
#>     Attrib V21    -0.538010215388931
#>     Attrib V22    -0.47798438069090077
#>     Attrib V23    -0.6185067833479331
#>     Attrib V24    -0.16709354176914668
#>     Attrib V25    0.5720041609673503
#>     Attrib V26    -0.4260409068092099
#>     Attrib V27    -1.1361103181847356
#>     Attrib V28    -1.9524666415465282
#>     Attrib V29    -0.9156771096237037
#>     Attrib V3    0.24625156194655848
#>     Attrib V30    -0.5892109843580505
#>     Attrib V31    0.654142782820592
#>     Attrib V32    0.015385585877039414
#>     Attrib V33    0.40332012358868846
#>     Attrib V34    0.4623123649925287
#>     Attrib V35    -0.5826550701212276
#>     Attrib V36    1.5423537322601621
#>     Attrib V37    0.45010539325770293
#>     Attrib V38    0.42595214425236716
#>     Attrib V39    0.7086787684035062
#>     Attrib V4    -1.1732956598498265
#>     Attrib V40    0.5367964545844661
#>     Attrib V41    -1.2860547727662108
#>     Attrib V42    0.15967405107783153
#>     Attrib V43    -0.02097381767505126
#>     Attrib V44    -0.581179441664425
#>     Attrib V45    -1.5182647169869388
#>     Attrib V46    -1.1610543507392521
#>     Attrib V47    -0.8625097697077633
#>     Attrib V48    -0.6438029392829544
#>     Attrib V49    -1.1113259043248138
#>     Attrib V5    -1.084975900116689
#>     Attrib V50    0.6478356922157549
#>     Attrib V51    -1.0374566013658448
#>     Attrib V52    -0.965332480892304
#>     Attrib V53    -0.21311002091523681
#>     Attrib V54    0.19059316972780427
#>     Attrib V55    1.3071201414011648
#>     Attrib V56    0.32169991490516675
#>     Attrib V57    0.3856588221397729
#>     Attrib V58    -0.4772786669143036
#>     Attrib V59    0.7551775793926598
#>     Attrib V6    -0.9498294865873176
#>     Attrib V60    0.14659057799350497
#>     Attrib V7    0.18708003933162184
#>     Attrib V8    0.9214955098108918
#>     Attrib V9    -1.4215554256933634
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.1849379286561892
#>     Attrib V1    0.16288427767736927
#>     Attrib V10    0.09073388753438197
#>     Attrib V11    0.12729740458575659
#>     Attrib V12    0.08219576156639345
#>     Attrib V13    0.11377408238914871
#>     Attrib V14    -0.04544665011336909
#>     Attrib V15    -0.17190635810190977
#>     Attrib V16    -0.13388705992710487
#>     Attrib V17    0.10355610691675023
#>     Attrib V18    0.11797568304064818
#>     Attrib V19    0.2551790771359539
#>     Attrib V2    -0.10061374902523136
#>     Attrib V20    0.42584170610711375
#>     Attrib V21    0.3012704006955034
#>     Attrib V22    0.4118691766475446
#>     Attrib V23    0.3063660066834762
#>     Attrib V24    0.3026927321024996
#>     Attrib V25    -0.10207621016573881
#>     Attrib V26    -0.4032586751075864
#>     Attrib V27    -0.3588869242826681
#>     Attrib V28    -0.13955644015122387
#>     Attrib V29    -0.43904843306178976
#>     Attrib V3    0.00892111943432453
#>     Attrib V30    -0.059616909560583076
#>     Attrib V31    -0.26539725026126576
#>     Attrib V32    0.096506615842325
#>     Attrib V33    0.20817463614169596
#>     Attrib V34    -0.0819748558566244
#>     Attrib V35    0.03142010058982204
#>     Attrib V36    -0.38037574700634214
#>     Attrib V37    -0.34182450081937976
#>     Attrib V38    0.2958502760516269
#>     Attrib V39    0.10101397165659107
#>     Attrib V4    0.24255603512482302
#>     Attrib V40    -0.1478169576271731
#>     Attrib V41    0.1135833343727236
#>     Attrib V42    -0.11799929786134127
#>     Attrib V43    0.3008564959731636
#>     Attrib V44    0.12417630267868922
#>     Attrib V45    0.13460871791373577
#>     Attrib V46    -0.011414325233868624
#>     Attrib V47    -0.09815942184514119
#>     Attrib V48    0.04159460735805429
#>     Attrib V49    0.4702656166984079
#>     Attrib V5    -0.011640023995418582
#>     Attrib V50    -0.16195807125028755
#>     Attrib V51    0.11610019628691057
#>     Attrib V52    -0.19978317943107554
#>     Attrib V53    0.23047450754536603
#>     Attrib V54    0.47809378785109247
#>     Attrib V55    -0.33572217800706833
#>     Attrib V56    0.33008845587346564
#>     Attrib V57    0.2818498941829966
#>     Attrib V58    0.40624700738784586
#>     Attrib V59    0.35324221409455975
#>     Attrib V6    0.05769246517569932
#>     Attrib V60    0.3024882204479244
#>     Attrib V7    0.17498661012438596
#>     Attrib V8    -0.22159843057261408
#>     Attrib V9    0.3329130666338811
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.043624362363846
#>     Attrib V1    0.14517813583447042
#>     Attrib V10    0.10382501303995041
#>     Attrib V11    0.033771624953741954
#>     Attrib V12    0.07642810862425184
#>     Attrib V13    0.09923554597367329
#>     Attrib V14    0.0337538076705728
#>     Attrib V15    -0.026188669007961744
#>     Attrib V16    -0.0537539322968122
#>     Attrib V17    0.07308684647853372
#>     Attrib V18    0.01883091536062364
#>     Attrib V19    0.01664422372423821
#>     Attrib V2    0.027894931191729557
#>     Attrib V20    0.026540021572905293
#>     Attrib V21    0.037498669458630375
#>     Attrib V22    0.04126291989747371
#>     Attrib V23    0.0815204525422816
#>     Attrib V24    0.05670248182300393
#>     Attrib V25    -0.001241666360032761
#>     Attrib V26    -0.059081566401255496
#>     Attrib V27    -0.054859397932280764
#>     Attrib V28    0.0552192945679329
#>     Attrib V29    -0.15054933478265037
#>     Attrib V3    0.03222214548346246
#>     Attrib V30    0.008629201418701351
#>     Attrib V31    -0.06316138512270793
#>     Attrib V32    -0.035453689807530775
#>     Attrib V33    -0.005276481592668711
#>     Attrib V34    -0.05780731956679535
#>     Attrib V35    0.06702548364093713
#>     Attrib V36    -0.1382800418474797
#>     Attrib V37    -0.05935500513183376
#>     Attrib V38    0.06323003569533177
#>     Attrib V39    0.06967192748315065
#>     Attrib V4    0.22380041725297092
#>     Attrib V40    -0.045021450879675
#>     Attrib V41    0.05512640254464994
#>     Attrib V42    -0.03626526457798273
#>     Attrib V43    0.038227911386120896
#>     Attrib V44    0.0048739854425409275
#>     Attrib V45    0.01215450228992886
#>     Attrib V46    0.024506191352347963
#>     Attrib V47    -0.002161303399962815
#>     Attrib V48    0.10256184291677833
#>     Attrib V49    0.17520361441553545
#>     Attrib V5    0.024873475349727867
#>     Attrib V50    -0.030572715234639346
#>     Attrib V51    0.07989745042933488
#>     Attrib V52    -0.010245326259881006
#>     Attrib V53    0.16305687741781275
#>     Attrib V54    0.1903998036527515
#>     Attrib V55    -0.07530637231307914
#>     Attrib V56    0.16866096189825505
#>     Attrib V57    0.17414148585266626
#>     Attrib V58    0.1959764232467834
#>     Attrib V59    0.2268835028967036
#>     Attrib V6    0.06132919705036089
#>     Attrib V60    0.22703730051207519
#>     Attrib V7    0.04332096165894002
#>     Attrib V8    -0.10735462565482698
#>     Attrib V9    0.12548928696781414
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.2208504618339617
#>     Attrib V1    0.3544337794848752
#>     Attrib V10    0.07003815495540575
#>     Attrib V11    0.03558932223268458
#>     Attrib V12    -0.08204810072255132
#>     Attrib V13    0.11398844199791885
#>     Attrib V14    -0.0882592556391265
#>     Attrib V15    -0.09483181909256112
#>     Attrib V16    -0.04360965580897755
#>     Attrib V17    0.2296128830346617
#>     Attrib V18    0.12833634304866143
#>     Attrib V19    0.37098033307533484
#>     Attrib V2    -0.0688316822402405
#>     Attrib V20    0.6505632734758594
#>     Attrib V21    0.3393025942963588
#>     Attrib V22    0.547583944177326
#>     Attrib V23    0.5158240533187809
#>     Attrib V24    0.4280689229584466
#>     Attrib V25    -0.3237476464095127
#>     Attrib V26    -0.7383245442655278
#>     Attrib V27    -0.7989423798438902
#>     Attrib V28    -0.48052176784358713
#>     Attrib V29    -0.9388620408329797
#>     Attrib V3    0.0013592127485068627
#>     Attrib V30    -0.09499511123573363
#>     Attrib V31    -0.3268471206747078
#>     Attrib V32    0.08845647994729863
#>     Attrib V33    0.4170442866980491
#>     Attrib V34    -0.04185330406574399
#>     Attrib V35    0.039118437337744054
#>     Attrib V36    -0.4538442619277394
#>     Attrib V37    -0.5792936113844622
#>     Attrib V38    0.5028686573212232
#>     Attrib V39    0.17941686507084223
#>     Attrib V4    0.2517997344189815
#>     Attrib V40    -0.16079515765313615
#>     Attrib V41    9.313819051447564E-4
#>     Attrib V42    -0.04801801862779988
#>     Attrib V43    0.4651546580532375
#>     Attrib V44    0.2244728686867784
#>     Attrib V45    -0.017596824984578232
#>     Attrib V46    -0.10910666729840048
#>     Attrib V47    -0.2794936623622731
#>     Attrib V48    -0.020864343610806316
#>     Attrib V49    0.6122084185510694
#>     Attrib V5    -0.09445974276126198
#>     Attrib V50    -0.23213007072188271
#>     Attrib V51    0.014594869827691984
#>     Attrib V52    -0.5359310103459365
#>     Attrib V53    0.34378242598948894
#>     Attrib V54    0.8203808095072924
#>     Attrib V55    -0.4407939164270023
#>     Attrib V56    0.4961541243137414
#>     Attrib V57    0.47224340908490975
#>     Attrib V58    0.6178533007898228
#>     Attrib V59    0.6206809011111697
#>     Attrib V6    0.013201522877936241
#>     Attrib V60    0.4993184576939188
#>     Attrib V7    0.3958741444072816
#>     Attrib V8    -0.1759715182016644
#>     Attrib V9    0.4363349455127778
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.03873050369264109
#>     Attrib V1    0.19783404707851793
#>     Attrib V10    0.004444546165368222
#>     Attrib V11    0.010678711529572865
#>     Attrib V12    -0.007560323592950437
#>     Attrib V13    0.042117245240450504
#>     Attrib V14    0.08230792739769549
#>     Attrib V15    -0.013310743974255987
#>     Attrib V16    -0.001143069275106017
#>     Attrib V17    0.07033163249234421
#>     Attrib V18    0.14420712371033775
#>     Attrib V19    0.12422049254134941
#>     Attrib V2    -0.043495534031909734
#>     Attrib V20    0.2347197630502164
#>     Attrib V21    0.1792199709258914
#>     Attrib V22    0.19178398860679877
#>     Attrib V23    0.22713739644877767
#>     Attrib V24    0.14489333744100263
#>     Attrib V25    -0.1541007572273506
#>     Attrib V26    -0.2794893962488968
#>     Attrib V27    -0.23020087652905108
#>     Attrib V28    -0.04796939877770966
#>     Attrib V29    -0.25653109330326723
#>     Attrib V3    0.06444936368259566
#>     Attrib V30    -0.0038229500845692976
#>     Attrib V31    -0.24291528529436635
#>     Attrib V32    -0.01793099418686878
#>     Attrib V33    0.11611337759193757
#>     Attrib V34    -0.06212484281651282
#>     Attrib V35    0.019556153246608688
#>     Attrib V36    -0.16447143065233955
#>     Attrib V37    -0.19873423305269963
#>     Attrib V38    0.1549961358371377
#>     Attrib V39    0.08200017274557435
#>     Attrib V4    0.2047135438975106
#>     Attrib V40    -0.11052375403712138
#>     Attrib V41    0.032443205546346006
#>     Attrib V42    -0.03001324149936433
#>     Attrib V43    0.11075046236817682
#>     Attrib V44    0.11730850509091081
#>     Attrib V45    0.07493402482340647
#>     Attrib V46    0.00910843221143431
#>     Attrib V47    -0.05480368621332033
#>     Attrib V48    0.014847763478127506
#>     Attrib V49    0.331093307523454
#>     Attrib V5    0.06439479646379206
#>     Attrib V50    -0.09470641150382685
#>     Attrib V51    0.090799394059366
#>     Attrib V52    -0.09402054354915149
#>     Attrib V53    0.20327154642034967
#>     Attrib V54    0.2632151651481509
#>     Attrib V55    -0.17381234942719562
#>     Attrib V56    0.19379524072570622
#>     Attrib V57    0.23704988227857143
#>     Attrib V58    0.3417202439666162
#>     Attrib V59    0.27764580382274145
#>     Attrib V6    0.07616983335816917
#>     Attrib V60    0.22671852720200658
#>     Attrib V7    0.14908766697895853
#>     Attrib V8    -0.0821094586290878
#>     Attrib V9    0.22386044872104627
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
#>  0.1449275 
```
