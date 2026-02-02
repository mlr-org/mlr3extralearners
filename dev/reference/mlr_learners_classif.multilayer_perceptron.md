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
#>     Threshold    0.08183636143909004
#>     Node 2    1.8729469738261397
#>     Node 3    0.8652042473354351
#>     Node 4    0.1942453271511193
#>     Node 5    -2.268090426212955
#>     Node 6    0.9316948915896829
#>     Node 7    4.050791078503352
#>     Node 8    -0.11641127479957139
#>     Node 9    3.6767551659475437
#>     Node 10    -1.7847497393444123
#>     Node 11    0.19122729211795034
#>     Node 12    1.4958541496198434
#>     Node 13    1.9894353552532793
#>     Node 14    0.738455717238402
#>     Node 15    -2.0609715932923813
#>     Node 16    -0.7029258711236261
#>     Node 17    -0.9100373672110034
#>     Node 18    0.5498827407398468
#>     Node 19    1.9999147401168618
#>     Node 20    2.2152791378005356
#>     Node 21    -1.8764119801259969
#>     Node 22    0.1848277046127395
#>     Node 23    2.0241408843361084
#>     Node 24    -1.390346412773284
#>     Node 25    3.819000148386211
#>     Node 26    -0.15858128539092597
#>     Node 27    1.265700427020027
#>     Node 28    -2.671483408377263
#>     Node 29    0.7975415281238677
#>     Node 30    0.3941695234277614
#>     Node 31    0.06619339534741824
#>     Node 32    0.12663324462625836
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.07982100042586193
#>     Node 2    -1.9119672670463974
#>     Node 3    -0.843361364347924
#>     Node 4    -0.15119654834174748
#>     Node 5    2.2871078137527063
#>     Node 6    -0.9072070827431007
#>     Node 7    -4.0575914224666345
#>     Node 8    0.08831558596557933
#>     Node 9    -3.6816255417848374
#>     Node 10    1.7161138651893042
#>     Node 11    -0.15488184170668834
#>     Node 12    -1.5647700798246291
#>     Node 13    -1.9324886159493426
#>     Node 14    -0.6683250091366508
#>     Node 15    2.0542367385365425
#>     Node 16    0.6889460722406096
#>     Node 17    0.9461562049961665
#>     Node 18    -0.5107161281227957
#>     Node 19    -2.0034705773577266
#>     Node 20    -2.2017851144578984
#>     Node 21    1.9333333896956308
#>     Node 22    -0.23427834523771757
#>     Node 23    -2.054982653310655
#>     Node 24    1.3756081782522767
#>     Node 25    -3.8100879652501685
#>     Node 26    0.0782193975263155
#>     Node 27    -1.3031811289898672
#>     Node 28    2.633385528602667
#>     Node 29    -0.8318774348918581
#>     Node 30    -0.31773698976515924
#>     Node 31    -0.007727355773403223
#>     Node 32    -0.14376572206782334
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.15786168240470017
#>     Attrib V1    0.5676142458004513
#>     Attrib V10    -0.43124612212966107
#>     Attrib V11    -0.098592279928395
#>     Attrib V12    -0.08621897214571479
#>     Attrib V13    -0.07899991776019939
#>     Attrib V14    0.20885792915947873
#>     Attrib V15    0.49244976820897435
#>     Attrib V16    0.3099919376709075
#>     Attrib V17    0.336006297785299
#>     Attrib V18    -0.07112646805008753
#>     Attrib V19    0.232741138402487
#>     Attrib V2    0.026848667290736233
#>     Attrib V20    1.049743810706013
#>     Attrib V21    0.5928890212618697
#>     Attrib V22    0.23268931856445577
#>     Attrib V23    0.3371592789233868
#>     Attrib V24    0.13068653296147242
#>     Attrib V25    -0.8546322964344875
#>     Attrib V26    -0.9617416369102009
#>     Attrib V27    -0.5699907564871313
#>     Attrib V28    -0.10980616932775471
#>     Attrib V29    -0.20828306743813027
#>     Attrib V3    0.3042781989525835
#>     Attrib V30    0.09662771014234275
#>     Attrib V31    -0.8982093345123597
#>     Attrib V32    -0.05553425719876008
#>     Attrib V33    0.2713884917978964
#>     Attrib V34    -0.008424277384207415
#>     Attrib V35    0.12115038875377254
#>     Attrib V36    -0.2070924481215945
#>     Attrib V37    -0.4556295167669207
#>     Attrib V38    0.24821096977577226
#>     Attrib V39    0.2053694836394234
#>     Attrib V4    0.2282273352387048
#>     Attrib V40    -0.4133049700784007
#>     Attrib V41    -0.26835946304264446
#>     Attrib V42    0.33480895184240606
#>     Attrib V43    0.3439180233217824
#>     Attrib V44    0.34770911306642976
#>     Attrib V45    0.33589322714276365
#>     Attrib V46    -0.05134341489943631
#>     Attrib V47    -0.2843290838678042
#>     Attrib V48    0.060217961379297386
#>     Attrib V49    0.41990192644464314
#>     Attrib V5    0.01725077769825919
#>     Attrib V50    -0.5173211103065567
#>     Attrib V51    0.0071791443148616525
#>     Attrib V52    -0.06199491156548912
#>     Attrib V53    0.02960668316253005
#>     Attrib V54    0.4902352246937472
#>     Attrib V55    -0.19578498666637884
#>     Attrib V56    0.7741272030560165
#>     Attrib V57    0.09568089440393128
#>     Attrib V58    0.4404552760000326
#>     Attrib V59    0.9677498310563086
#>     Attrib V6    -0.15841090119035128
#>     Attrib V60    0.4749823171727622
#>     Attrib V7    -0.01987314184336984
#>     Attrib V8    -0.48748435258773465
#>     Attrib V9    -0.10616748684425027
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.10039207974933471
#>     Attrib V1    0.27443899458197024
#>     Attrib V10    -0.14356137971110472
#>     Attrib V11    0.002511377558409831
#>     Attrib V12    0.06014312485696383
#>     Attrib V13    0.048873936536552684
#>     Attrib V14    0.12089399550689164
#>     Attrib V15    0.271605094870531
#>     Attrib V16    0.08460051479390683
#>     Attrib V17    0.11676362962098567
#>     Attrib V18    -0.0808068880332014
#>     Attrib V19    0.2017881725923244
#>     Attrib V2    0.06203026064124245
#>     Attrib V20    0.5141235873107537
#>     Attrib V21    0.18551937203593383
#>     Attrib V22    0.10114603631364563
#>     Attrib V23    0.1798730707342364
#>     Attrib V24    0.08121858997155339
#>     Attrib V25    -0.38115545601153167
#>     Attrib V26    -0.4475732404009334
#>     Attrib V27    -0.2903170065656207
#>     Attrib V28    -0.094999945311317
#>     Attrib V29    -0.2534372675463961
#>     Attrib V3    0.1849040694333241
#>     Attrib V30    -0.014709436879998853
#>     Attrib V31    -0.46897843092165886
#>     Attrib V32    -0.0013027289425185707
#>     Attrib V33    0.13417841762863214
#>     Attrib V34    -0.01957739164758617
#>     Attrib V35    0.08825895326395153
#>     Attrib V36    -0.14355263589953116
#>     Attrib V37    -0.27838121598389015
#>     Attrib V38    0.046397276624179154
#>     Attrib V39    0.12015378920697076
#>     Attrib V4    0.16261176718984457
#>     Attrib V40    -0.2069736875904172
#>     Attrib V41    -0.1271554167224654
#>     Attrib V42    0.12521598664672706
#>     Attrib V43    0.12937357932536156
#>     Attrib V44    0.14884477207398894
#>     Attrib V45    0.1293913323249075
#>     Attrib V46    -0.014103741019107364
#>     Attrib V47    -0.0652528842176675
#>     Attrib V48    0.02107303115046529
#>     Attrib V49    0.21723036803923118
#>     Attrib V5    0.02641719126556697
#>     Attrib V50    -0.25491704494808265
#>     Attrib V51    0.017029064639744837
#>     Attrib V52    0.02565561820604641
#>     Attrib V53    0.014868675139707277
#>     Attrib V54    0.29955423255803515
#>     Attrib V55    -0.05166850669303705
#>     Attrib V56    0.4122502614970743
#>     Attrib V57    0.05855044276555197
#>     Attrib V58    0.2823561339226358
#>     Attrib V59    0.4971125069631676
#>     Attrib V6    -0.11436440521999855
#>     Attrib V60    0.24887654267479598
#>     Attrib V7    -0.12692532939850829
#>     Attrib V8    -0.2673172421165237
#>     Attrib V9    -0.05666669103078166
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.16724320091914946
#>     Attrib V1    0.06499318841796839
#>     Attrib V10    0.017388367074185698
#>     Attrib V11    0.026165547977042906
#>     Attrib V12    0.04129335474388257
#>     Attrib V13    0.04677721923986711
#>     Attrib V14    0.08682354860617093
#>     Attrib V15    0.09348049849433927
#>     Attrib V16    -0.006999836897965736
#>     Attrib V17    0.005936056935786795
#>     Attrib V18    -0.05076164627817976
#>     Attrib V19    -0.006348355787158685
#>     Attrib V2    0.02697711776237559
#>     Attrib V20    0.05671747489065032
#>     Attrib V21    -0.0025450271610667537
#>     Attrib V22    -0.0992689264026931
#>     Attrib V23    -0.034256185482073036
#>     Attrib V24    -0.06099099969697566
#>     Attrib V25    -0.15477910900134662
#>     Attrib V26    -0.10716539758609656
#>     Attrib V27    -0.10045387147469903
#>     Attrib V28    0.020302309337456456
#>     Attrib V29    0.006941515464373495
#>     Attrib V3    0.11788969333229245
#>     Attrib V30    0.006069266628735375
#>     Attrib V31    -0.08135389169890274
#>     Attrib V32    0.007962668711910266
#>     Attrib V33    0.05358302268294045
#>     Attrib V34    0.048650917918953734
#>     Attrib V35    0.061222557259535945
#>     Attrib V36    -0.02630929865179121
#>     Attrib V37    -0.042640714943859355
#>     Attrib V38    -0.008080040192048204
#>     Attrib V39    0.05742626241971489
#>     Attrib V4    0.07163465870803001
#>     Attrib V40    -0.0028516267100040524
#>     Attrib V41    -0.016372319033523527
#>     Attrib V42    0.03783191772720915
#>     Attrib V43    0.009748259779438752
#>     Attrib V44    0.07235814148548794
#>     Attrib V45    0.10870543799364718
#>     Attrib V46    0.033551687490602305
#>     Attrib V47    0.02746484316147948
#>     Attrib V48    0.06832372517506265
#>     Attrib V49    0.09839623437664949
#>     Attrib V5    0.0673490749858416
#>     Attrib V50    0.00424646506215968
#>     Attrib V51    0.10073573184865667
#>     Attrib V52    0.049383110166051736
#>     Attrib V53    0.07917602157906894
#>     Attrib V54    0.001021572052132579
#>     Attrib V55    -7.132360235066473E-4
#>     Attrib V56    0.14308556655303517
#>     Attrib V57    0.06777219994264291
#>     Attrib V58    0.07105632119554328
#>     Attrib V59    0.11703538377195238
#>     Attrib V6    -0.016612523603278043
#>     Attrib V60    0.09787035606064205
#>     Attrib V7    -0.029000114506272767
#>     Attrib V8    -0.05216720380249641
#>     Attrib V9    0.07532875888232704
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.23262066836178164
#>     Attrib V1    -0.38538260164144744
#>     Attrib V10    -0.22722056769568594
#>     Attrib V11    -0.680221080040738
#>     Attrib V12    -0.5805116139753723
#>     Attrib V13    -0.10830132900365073
#>     Attrib V14    0.1839556654861763
#>     Attrib V15    -0.05256189431872356
#>     Attrib V16    0.14045999055373984
#>     Attrib V17    0.220399493833173
#>     Attrib V18    0.8278792339642091
#>     Attrib V19    -0.35841846970425967
#>     Attrib V2    0.396204314548407
#>     Attrib V20    -1.25895913179057
#>     Attrib V21    -0.2618689459438149
#>     Attrib V22    -0.3023595715587212
#>     Attrib V23    -0.8650855991974681
#>     Attrib V24    -0.8223533170947586
#>     Attrib V25    0.8561289190708082
#>     Attrib V26    0.674705997707079
#>     Attrib V27    0.07703518807233915
#>     Attrib V28    -0.549668143092635
#>     Attrib V29    0.21664927828830396
#>     Attrib V3    0.10265534079226035
#>     Attrib V30    -0.0845243686787593
#>     Attrib V31    1.3577717828567257
#>     Attrib V32    -0.15771750082413602
#>     Attrib V33    -0.33638812879084856
#>     Attrib V34    -0.13438004980755208
#>     Attrib V35    -0.28239788205226185
#>     Attrib V36    0.5838012998824654
#>     Attrib V37    0.9237514041811886
#>     Attrib V38    -0.11191442532467867
#>     Attrib V39    -0.3316950097045955
#>     Attrib V4    -0.21706199320304262
#>     Attrib V40    0.7061965506741894
#>     Attrib V41    0.2583198407349788
#>     Attrib V42    -0.34786075462516236
#>     Attrib V43    -0.2781065050498533
#>     Attrib V44    -0.11266116924498037
#>     Attrib V45    -0.6212438388504135
#>     Attrib V46    -0.24626889007175448
#>     Attrib V47    0.08367033498584527
#>     Attrib V48    -0.5104697058726606
#>     Attrib V49    -1.2070023347033607
#>     Attrib V5    0.06962895996713353
#>     Attrib V50    1.1937900249674336
#>     Attrib V51    -0.26758374462255974
#>     Attrib V52    -0.22505644312160797
#>     Attrib V53    0.08276932402938046
#>     Attrib V54    0.0019283567455981973
#>     Attrib V55    1.043799860449478
#>     Attrib V56    -0.5951598142729262
#>     Attrib V57    0.3276657381602563
#>     Attrib V58    -0.5157969965545861
#>     Attrib V59    -1.0687914128737066
#>     Attrib V6    0.061145735645738025
#>     Attrib V60    -0.5176883106886587
#>     Attrib V7    0.38953494350016576
#>     Attrib V8    0.8779345050510786
#>     Attrib V9    -0.3218022329021511
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.0379581451060736
#>     Attrib V1    0.3328521937466199
#>     Attrib V10    -0.19877919861148877
#>     Attrib V11    0.03512435566139137
#>     Attrib V12    0.08849810219128737
#>     Attrib V13    -0.028354006370587267
#>     Attrib V14    0.06926983512703665
#>     Attrib V15    0.2177990533387524
#>     Attrib V16    0.16669192281750864
#>     Attrib V17    0.13041869308164636
#>     Attrib V18    -0.021860788466204963
#>     Attrib V19    0.16939951720976762
#>     Attrib V2    0.021422735645092058
#>     Attrib V20    0.5524641871508165
#>     Attrib V21    0.24590260729364344
#>     Attrib V22    0.06052225011489143
#>     Attrib V23    0.2023900631989913
#>     Attrib V24    0.1695334505834089
#>     Attrib V25    -0.36593478425981085
#>     Attrib V26    -0.4696017621486557
#>     Attrib V27    -0.27983292682344696
#>     Attrib V28    -0.12606672881148187
#>     Attrib V29    -0.207069766074174
#>     Attrib V3    0.15950535888022477
#>     Attrib V30    -0.03119858184608088
#>     Attrib V31    -0.5249789527659243
#>     Attrib V32    0.012483660536164093
#>     Attrib V33    0.15715764240497232
#>     Attrib V34    0.020186289855859733
#>     Attrib V35    0.12470325494434699
#>     Attrib V36    -0.1670893300936061
#>     Attrib V37    -0.29631637811896516
#>     Attrib V38    0.06891375629212576
#>     Attrib V39    0.0991670579058255
#>     Attrib V4    0.18012748460113037
#>     Attrib V40    -0.28207951722184393
#>     Attrib V41    -0.10693974588133177
#>     Attrib V42    0.160017966599146
#>     Attrib V43    0.1493274922572988
#>     Attrib V44    0.1453605615551184
#>     Attrib V45    0.18447020987351354
#>     Attrib V46    0.029889409469725483
#>     Attrib V47    -0.11288442950678368
#>     Attrib V48    0.0292088965307739
#>     Attrib V49    0.26521241737174794
#>     Attrib V5    0.013554912445515847
#>     Attrib V50    -0.27381528389301646
#>     Attrib V51    0.05076397710038909
#>     Attrib V52    -0.020383739247822354
#>     Attrib V53    0.08134326961566091
#>     Attrib V54    0.23781659008838663
#>     Attrib V55    -0.1383108215983108
#>     Attrib V56    0.4230954939018108
#>     Attrib V57    0.05958911479144708
#>     Attrib V58    0.28781361790353005
#>     Attrib V59    0.5729729383248602
#>     Attrib V6    -0.04250033776439718
#>     Attrib V60    0.31025159532376956
#>     Attrib V7    -0.07913489076732719
#>     Attrib V8    -0.27835229418624763
#>     Attrib V9    0.02659291760839944
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.2630409805194303
#>     Attrib V1    -0.08644429840025844
#>     Attrib V10    1.6866672577830175
#>     Attrib V11    1.4389982529140282
#>     Attrib V12    1.120150838667054
#>     Attrib V13    0.49208885987423895
#>     Attrib V14    -0.2511845381710062
#>     Attrib V15    -0.6787562645968084
#>     Attrib V16    -0.7006706103005026
#>     Attrib V17    -0.9292689228298099
#>     Attrib V18    -0.9297655816464112
#>     Attrib V19    0.3163591448392209
#>     Attrib V2    -0.3769938629211617
#>     Attrib V20    0.21023503954077705
#>     Attrib V21    -0.32743549306491393
#>     Attrib V22    0.24544094295873284
#>     Attrib V23    1.1531361777387084
#>     Attrib V24    1.3661260775886006
#>     Attrib V25    0.3418246152005243
#>     Attrib V26    1.014547579394726
#>     Attrib V27    1.22068141850647
#>     Attrib V28    1.1313107190008762
#>     Attrib V29    0.18234764272299325
#>     Attrib V3    -0.19491769847700072
#>     Attrib V30    -0.3868026016310418
#>     Attrib V31    -1.1930469904028902
#>     Attrib V32    -0.14580448806774068
#>     Attrib V33    -0.45611938243793654
#>     Attrib V34    0.15096170198550354
#>     Attrib V35    0.31259527295671785
#>     Attrib V36    -0.6319383972332514
#>     Attrib V37    -0.7369679160183313
#>     Attrib V38    -0.5495434190034774
#>     Attrib V39    -0.019610801333719462
#>     Attrib V4    0.4919763712841304
#>     Attrib V40    -0.004181669970634645
#>     Attrib V41    0.6577217578804833
#>     Attrib V42    -0.04730462596421168
#>     Attrib V43    -0.3173904039234365
#>     Attrib V44    -0.4315404460762117
#>     Attrib V45    0.20305422937846007
#>     Attrib V46    0.951232326874936
#>     Attrib V47    0.980925573417883
#>     Attrib V48    1.2809802169095208
#>     Attrib V49    1.538089804576781
#>     Attrib V5    0.14250961383950972
#>     Attrib V50    -0.19919413454785304
#>     Attrib V51    1.0368648352432648
#>     Attrib V52    0.9642063699069597
#>     Attrib V53    0.6523540213269565
#>     Attrib V54    -0.9415578680572949
#>     Attrib V55    -1.607520509455726
#>     Attrib V56    -0.49786554263982175
#>     Attrib V57    -0.6483700884432949
#>     Attrib V58    0.16664690142008712
#>     Attrib V59    0.47929944584746276
#>     Attrib V6    0.6655587820028152
#>     Attrib V60    0.6596064155203148
#>     Attrib V7    -0.053317815280541546
#>     Attrib V8    -0.2374465480056867
#>     Attrib V9    0.9401480031177764
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.12950600427741546
#>     Attrib V1    0.03999109878545583
#>     Attrib V10    0.05753406724610818
#>     Attrib V11    0.026370829116162176
#>     Attrib V12    -0.02082249793352447
#>     Attrib V13    0.011554768120742074
#>     Attrib V14    -0.0030547531371049085
#>     Attrib V15    0.022444406681683016
#>     Attrib V16    0.09496974307413418
#>     Attrib V17    0.039454677836496845
#>     Attrib V18    0.021408712085952502
#>     Attrib V19    5.187433158680431E-4
#>     Attrib V2    0.08836307220587641
#>     Attrib V20    -0.08956052301144724
#>     Attrib V21    -0.03934982370247302
#>     Attrib V22    -0.09014862594401493
#>     Attrib V23    -0.10490491202290395
#>     Attrib V24    -0.07673136234408515
#>     Attrib V25    -0.05150714252727044
#>     Attrib V26    -0.06476203225135868
#>     Attrib V27    -0.12230702233146239
#>     Attrib V28    -0.08051628497745333
#>     Attrib V29    -0.018127365144855707
#>     Attrib V3    0.07970033280802248
#>     Attrib V30    0.023651105653158686
#>     Attrib V31    0.07292871561155954
#>     Attrib V32    0.038421966135378516
#>     Attrib V33    0.06138516080902604
#>     Attrib V34    0.047561041657038346
#>     Attrib V35    0.060335163722708175
#>     Attrib V36    0.13456250009344717
#>     Attrib V37    0.11068145208009961
#>     Attrib V38    0.11460841995454177
#>     Attrib V39    0.06973146595456062
#>     Attrib V4    0.10264657084767113
#>     Attrib V40    0.10573020321719866
#>     Attrib V41    0.0744834623699782
#>     Attrib V42    -0.04128924131170255
#>     Attrib V43    0.014513162523216005
#>     Attrib V44    0.10157045970570679
#>     Attrib V45    0.019082522219201425
#>     Attrib V46    0.07614888096387075
#>     Attrib V47    0.06130161072244431
#>     Attrib V48    0.014784268341908323
#>     Attrib V49    -0.020378384635705897
#>     Attrib V5    0.040138835453486246
#>     Attrib V50    0.04376513740389229
#>     Attrib V51    0.0450227144749485
#>     Attrib V52    0.05029516178453201
#>     Attrib V53    0.10817995499721228
#>     Attrib V54    0.05074784097437045
#>     Attrib V55    0.06587252081866603
#>     Attrib V56    0.0201507627804675
#>     Attrib V57    0.15567442750737248
#>     Attrib V58    0.04394160271692353
#>     Attrib V59    0.04497287153401531
#>     Attrib V6    0.012915394828409069
#>     Attrib V60    0.10055312436311313
#>     Attrib V7    0.05844430990422795
#>     Attrib V8    0.10400854900044851
#>     Attrib V9    0.0782895392237678
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.11567013664944446
#>     Attrib V1    -0.09420203988096974
#>     Attrib V10    1.5752326958543623
#>     Attrib V11    1.3137003223095212
#>     Attrib V12    1.151622308434171
#>     Attrib V13    0.48859877966171056
#>     Attrib V14    -0.3136425101072674
#>     Attrib V15    -0.6593826640674408
#>     Attrib V16    -0.6626627625518977
#>     Attrib V17    -0.7883350623389394
#>     Attrib V18    -0.8342411502244129
#>     Attrib V19    0.1973058599405005
#>     Attrib V2    -0.327187159492126
#>     Attrib V20    0.0569484259512645
#>     Attrib V21    -0.38491801357349054
#>     Attrib V22    0.1533310621659279
#>     Attrib V23    0.9421007307944657
#>     Attrib V24    1.2815159693484504
#>     Attrib V25    0.5101242656474745
#>     Attrib V26    1.0699740582548145
#>     Attrib V27    1.1672690359612539
#>     Attrib V28    0.9619178141569924
#>     Attrib V29    0.004115626443065947
#>     Attrib V3    -0.19108063424929378
#>     Attrib V30    -0.3674229243950657
#>     Attrib V31    -0.9978043871442848
#>     Attrib V32    -0.05510975688531049
#>     Attrib V33    -0.40466573475193834
#>     Attrib V34    0.17703772893404543
#>     Attrib V35    0.28591394463732256
#>     Attrib V36    -0.5205613210278862
#>     Attrib V37    -0.6679510241213424
#>     Attrib V38    -0.4534789511491625
#>     Attrib V39    0.0931007743890726
#>     Attrib V4    0.4201350936268479
#>     Attrib V40    -0.039676345523714025
#>     Attrib V41    0.5178521389263702
#>     Attrib V42    -0.17144648596773301
#>     Attrib V43    -0.24620118013675357
#>     Attrib V44    -0.4313105325275346
#>     Attrib V45    0.14028668040734055
#>     Attrib V46    0.8487992948656713
#>     Attrib V47    0.9107020914488424
#>     Attrib V48    1.1715114886001008
#>     Attrib V49    1.4093645675548667
#>     Attrib V5    0.13266193009333838
#>     Attrib V50    -0.17611163401893207
#>     Attrib V51    0.9839666140153143
#>     Attrib V52    0.8989494324192078
#>     Attrib V53    0.6727562856995614
#>     Attrib V54    -0.840526837457859
#>     Attrib V55    -1.3266069869130253
#>     Attrib V56    -0.39051078130315675
#>     Attrib V57    -0.6130460438999699
#>     Attrib V58    0.10383859913590364
#>     Attrib V59    0.36474257642528685
#>     Attrib V6    0.5847281011094047
#>     Attrib V60    0.555297135185643
#>     Attrib V7    -0.1303559487422973
#>     Attrib V8    -0.19781585324172896
#>     Attrib V9    0.8218260447439486
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.34814041734980017
#>     Attrib V1    -0.17337323943145752
#>     Attrib V10    -0.3843338393166637
#>     Attrib V11    -0.5767498774966959
#>     Attrib V12    -0.4202154217715897
#>     Attrib V13    -8.020961445754256E-5
#>     Attrib V14    0.21966028287658979
#>     Attrib V15    -0.008489731991947342
#>     Attrib V16    0.21946782061912642
#>     Attrib V17    0.1884657485370472
#>     Attrib V18    0.7958559300451006
#>     Attrib V19    -0.08371112797988672
#>     Attrib V2    0.22011875136146739
#>     Attrib V20    -0.6358446745389862
#>     Attrib V21    0.14320007245779584
#>     Attrib V22    -0.0356585336733196
#>     Attrib V23    -0.5386548769306987
#>     Attrib V24    -0.5568414239208027
#>     Attrib V25    0.6376471072346562
#>     Attrib V26    0.42041716692735237
#>     Attrib V27    -0.19095997491127606
#>     Attrib V28    -0.6744417071952526
#>     Attrib V29    -0.12227839342236281
#>     Attrib V3    0.10512714599388236
#>     Attrib V30    -0.19268551334660056
#>     Attrib V31    0.8504563761240467
#>     Attrib V32    -0.3468667021587547
#>     Attrib V33    -0.19887226106698896
#>     Attrib V34    -0.013818523125937255
#>     Attrib V35    -0.1746885893384853
#>     Attrib V36    0.45106750447567073
#>     Attrib V37    0.582508298986909
#>     Attrib V38    0.013719450070309332
#>     Attrib V39    -0.1100777343276723
#>     Attrib V4    -0.16539805426360843
#>     Attrib V40    0.5561225282291554
#>     Attrib V41    0.1822968597167361
#>     Attrib V42    -0.281893195561224
#>     Attrib V43    -0.15797942155063827
#>     Attrib V44    -0.06675544400132515
#>     Attrib V45    -0.5053858421781662
#>     Attrib V46    -0.26863558011376254
#>     Attrib V47    -0.07018964029405339
#>     Attrib V48    -0.5795473846416946
#>     Attrib V49    -0.99837367314862
#>     Attrib V5    0.040144439134443786
#>     Attrib V50    0.8906316210068594
#>     Attrib V51    -0.18951159853316657
#>     Attrib V52    -0.1869634357902647
#>     Attrib V53    0.21198789460736567
#>     Attrib V54    0.28586028655980344
#>     Attrib V55    0.9406189807371065
#>     Attrib V56    -0.31621750910518925
#>     Attrib V57    0.45153074033685897
#>     Attrib V58    -0.2769274197655167
#>     Attrib V59    -0.5913223607115029
#>     Attrib V6    -0.04821467039718889
#>     Attrib V60    -0.29954330791994527
#>     Attrib V7    0.33994431003239645
#>     Attrib V8    0.6612535044307596
#>     Attrib V9    -0.3488733385730009
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.1354202132782833
#>     Attrib V1    0.07968837434102231
#>     Attrib V10    0.025157156542277143
#>     Attrib V11    0.0509401731671013
#>     Attrib V12    0.09209341989504097
#>     Attrib V13    -0.021818029543477092
#>     Attrib V14    0.019520674587879837
#>     Attrib V15    0.029287490254263648
#>     Attrib V16    0.004533943300922757
#>     Attrib V17    0.048192131034442615
#>     Attrib V18    -0.012518746194371147
#>     Attrib V19    -0.010855941178092682
#>     Attrib V2    0.0035772200945147583
#>     Attrib V20    0.09002430855905158
#>     Attrib V21    -0.06608751259848612
#>     Attrib V22    -0.11308783841891593
#>     Attrib V23    -0.04182339398149945
#>     Attrib V24    -0.03664747856318131
#>     Attrib V25    -0.09018200393928866
#>     Attrib V26    -0.14309598279549618
#>     Attrib V27    -0.07520856560725327
#>     Attrib V28    0.005367696313842073
#>     Attrib V29    -0.043842853511347
#>     Attrib V3    0.03810496259829324
#>     Attrib V30    0.019493759569044367
#>     Attrib V31    -0.1288226819389137
#>     Attrib V32    -0.005537551509866527
#>     Attrib V33    0.033914571492239524
#>     Attrib V34    0.08195821737237755
#>     Attrib V35    0.09757891914815775
#>     Attrib V36    -0.001285347456988345
#>     Attrib V37    -0.067108963676677
#>     Attrib V38    0.0653107981416362
#>     Attrib V39    0.03168588596983193
#>     Attrib V4    0.07204690112689362
#>     Attrib V40    -0.039990044753517785
#>     Attrib V41    -0.04709097264616929
#>     Attrib V42    0.0064692270977243565
#>     Attrib V43    0.020862778898390912
#>     Attrib V44    0.09038931334687587
#>     Attrib V45    0.11394263367066354
#>     Attrib V46    0.0566184339637077
#>     Attrib V47    0.07901334349858513
#>     Attrib V48    0.08601522421667564
#>     Attrib V49    0.0647988734631885
#>     Attrib V5    0.0648009136838668
#>     Attrib V50    -0.002634793541254022
#>     Attrib V51    0.13261919563842833
#>     Attrib V52    0.027221310444420974
#>     Attrib V53    0.03293300429581159
#>     Attrib V54    0.08957315309928442
#>     Attrib V55    0.009605273986556473
#>     Attrib V56    0.13092680345395705
#>     Attrib V57    0.06389211064178707
#>     Attrib V58    0.10175640616738446
#>     Attrib V59    0.08313633157008041
#>     Attrib V6    0.02914570642300125
#>     Attrib V60    0.11443168890555236
#>     Attrib V7    -0.06601856140549907
#>     Attrib V8    8.285175471705244E-4
#>     Attrib V9    0.07087414290080238
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.04014238721261528
#>     Attrib V1    0.4150555085064857
#>     Attrib V10    -0.3726791906307885
#>     Attrib V11    0.015533471966293599
#>     Attrib V12    -0.07195103423857908
#>     Attrib V13    -0.047962020773573394
#>     Attrib V14    0.1512194838579856
#>     Attrib V15    0.378053169725713
#>     Attrib V16    0.2625614472747376
#>     Attrib V17    0.2548862610565215
#>     Attrib V18    -0.10062282379171711
#>     Attrib V19    0.28279397381678006
#>     Attrib V2    0.0455798570066834
#>     Attrib V20    0.8503563182397226
#>     Attrib V21    0.4129826030857138
#>     Attrib V22    0.22516903796723875
#>     Attrib V23    0.3480515706110974
#>     Attrib V24    0.11284137445619108
#>     Attrib V25    -0.7526899071102818
#>     Attrib V26    -0.8054317502886876
#>     Attrib V27    -0.4197074494595309
#>     Attrib V28    -0.08917162112739359
#>     Attrib V29    -0.15944659373482145
#>     Attrib V3    0.17626470738458308
#>     Attrib V30    0.0439536447979214
#>     Attrib V31    -0.8033524213472462
#>     Attrib V32    -0.09749703318798165
#>     Attrib V33    0.25120212018567556
#>     Attrib V34    0.02438077994226818
#>     Attrib V35    0.13738204495237663
#>     Attrib V36    -0.17198747933795014
#>     Attrib V37    -0.4018346517618506
#>     Attrib V38    0.1893185620742938
#>     Attrib V39    0.12247136909378809
#>     Attrib V4    0.2469562633099617
#>     Attrib V40    -0.35513309622202
#>     Attrib V41    -0.23218131947644666
#>     Attrib V42    0.2315232684040553
#>     Attrib V43    0.3042556307532658
#>     Attrib V44    0.218784645815227
#>     Attrib V45    0.32213518749412506
#>     Attrib V46    0.04107932286902388
#>     Attrib V47    -0.2173072851490311
#>     Attrib V48    0.08431636436466809
#>     Attrib V49    0.37183760408450245
#>     Attrib V5    0.009133262411866638
#>     Attrib V50    -0.4748584717171578
#>     Attrib V51    0.045178579551428615
#>     Attrib V52    0.004152756542259217
#>     Attrib V53    0.0639871206113544
#>     Attrib V54    0.4272445850367631
#>     Attrib V55    -0.20852077816865996
#>     Attrib V56    0.6469664516257962
#>     Attrib V57    0.11783884630067981
#>     Attrib V58    0.43223864312217813
#>     Attrib V59    0.8396391408197313
#>     Attrib V6    -0.13669945214169907
#>     Attrib V60    0.3999632395771661
#>     Attrib V7    -0.02723135364764334
#>     Attrib V8    -0.4221435476855077
#>     Attrib V9    -0.05462399134234343
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.07491614547677475
#>     Attrib V1    0.5114609238454576
#>     Attrib V10    -0.3170908492342477
#>     Attrib V11    0.0967973722095864
#>     Attrib V12    0.038506805406247714
#>     Attrib V13    0.03259509452618045
#>     Attrib V14    0.1170939291828173
#>     Attrib V15    0.42981320067106815
#>     Attrib V16    0.22409869434256022
#>     Attrib V17    0.26633647946409306
#>     Attrib V18    -0.21806672006579375
#>     Attrib V19    0.2815223893479341
#>     Attrib V2    -0.09972504540888791
#>     Attrib V20    1.1452076057890113
#>     Attrib V21    0.5569038617858331
#>     Attrib V22    0.2529411120969405
#>     Attrib V23    0.5205836193700907
#>     Attrib V24    0.2920090633006788
#>     Attrib V25    -0.8378336628480804
#>     Attrib V26    -0.9635109640772366
#>     Attrib V27    -0.40790980154875134
#>     Attrib V28    0.0571787426700838
#>     Attrib V29    -0.11445647563237972
#>     Attrib V3    0.24546503934795005
#>     Attrib V30    0.10601439069250766
#>     Attrib V31    -1.1085590076694338
#>     Attrib V32    -0.057557831478319374
#>     Attrib V33    0.25847268742515805
#>     Attrib V34    0.026885458592384087
#>     Attrib V35    0.18050847559109412
#>     Attrib V36    -0.25387626933461194
#>     Attrib V37    -0.508832194563205
#>     Attrib V38    0.22052324541689877
#>     Attrib V39    0.25656965972304574
#>     Attrib V4    0.24890747246054645
#>     Attrib V40    -0.5272622066361645
#>     Attrib V41    -0.28433794197896956
#>     Attrib V42    0.36956456153598755
#>     Attrib V43    0.3307795191382994
#>     Attrib V44    0.33317842443834184
#>     Attrib V45    0.44001744156174855
#>     Attrib V46    0.07866883561980337
#>     Attrib V47    -0.19889267485875764
#>     Attrib V48    0.12311747296720552
#>     Attrib V49    0.6497666728315803
#>     Attrib V5    -0.029485491118499164
#>     Attrib V50    -0.6501773994248556
#>     Attrib V51    0.02131896581084804
#>     Attrib V52    -0.05769305998042524
#>     Attrib V53    0.04604254899350129
#>     Attrib V54    0.4156494953415095
#>     Attrib V55    -0.4253731934900283
#>     Attrib V56    0.7357471131896482
#>     Attrib V57    0.03389895533618499
#>     Attrib V58    0.47906635611918674
#>     Attrib V59    1.0591775312023066
#>     Attrib V6    -0.10717642265092295
#>     Attrib V60    0.5272785686424196
#>     Attrib V7    -0.01945648521940992
#>     Attrib V8    -0.6492029973433582
#>     Attrib V9    -0.04540071094319717
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.08209908110693857
#>     Attrib V1    0.2724540613080163
#>     Attrib V10    -0.09129708247310442
#>     Attrib V11    0.10151279628269337
#>     Attrib V12    0.09486109425069464
#>     Attrib V13    -0.009945524641014617
#>     Attrib V14    0.0285990698133018
#>     Attrib V15    0.18577017728199097
#>     Attrib V16    0.03659740128029518
#>     Attrib V17    0.11159989227270604
#>     Attrib V18    -0.04740449772850175
#>     Attrib V19    0.10757597826945471
#>     Attrib V2    0.03949136327761269
#>     Attrib V20    0.375697400204208
#>     Attrib V21    0.09921348395730893
#>     Attrib V22    0.017455801582408
#>     Attrib V23    0.18076665774908596
#>     Attrib V24    0.0824581916938479
#>     Attrib V25    -0.28566375265993893
#>     Attrib V26    -0.29758695169206223
#>     Attrib V27    -0.22729519061933798
#>     Attrib V28    -0.12107031969795445
#>     Attrib V29    -0.24239461434474172
#>     Attrib V3    0.09013511593015557
#>     Attrib V30    -0.04357324333860846
#>     Attrib V31    -0.3867071846854701
#>     Attrib V32    -0.018067023540889907
#>     Attrib V33    0.11626434357178904
#>     Attrib V34    0.012357943672140758
#>     Attrib V35    0.12597957743958094
#>     Attrib V36    -0.1275259690656571
#>     Attrib V37    -0.20329227812954304
#>     Attrib V38    0.026900096168462388
#>     Attrib V39    0.084869825617537
#>     Attrib V4    0.12849316761177726
#>     Attrib V40    -0.19766368649287724
#>     Attrib V41    -0.14651730767352752
#>     Attrib V42    0.03145343783639451
#>     Attrib V43    0.07482374985160403
#>     Attrib V44    0.13363917201319653
#>     Attrib V45    0.07360959177060893
#>     Attrib V46    0.03418860758511161
#>     Attrib V47    -0.06994089593322764
#>     Attrib V48    0.09936623681424209
#>     Attrib V49    0.25689004967324436
#>     Attrib V5    -0.00575280234131676
#>     Attrib V50    -0.22617620968332128
#>     Attrib V51    0.020767826140212876
#>     Attrib V52    -0.0038758969395496167
#>     Attrib V53    0.018049027666161635
#>     Attrib V54    0.24857246899772148
#>     Attrib V55    -0.05821571044708395
#>     Attrib V56    0.34581106260413375
#>     Attrib V57    0.04646395093965855
#>     Attrib V58    0.22782205764230107
#>     Attrib V59    0.39490420224322736
#>     Attrib V6    -0.0858709598364495
#>     Attrib V60    0.2818084431658437
#>     Attrib V7    -0.10214466470966427
#>     Attrib V8    -0.2948112326024993
#>     Attrib V9    -0.0031535337982803975
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.22122110155202335
#>     Attrib V1    -0.3712763697526135
#>     Attrib V10    -0.23893480011310475
#>     Attrib V11    -0.6922313517893198
#>     Attrib V12    -0.45201487371230786
#>     Attrib V13    -0.09475962310507792
#>     Attrib V14    0.14986784403833828
#>     Attrib V15    -0.037523076742350336
#>     Attrib V16    0.1238547303117946
#>     Attrib V17    0.10518746012681898
#>     Attrib V18    0.6679132937984926
#>     Attrib V19    -0.3302289475200983
#>     Attrib V2    0.2919386701733942
#>     Attrib V20    -1.1425398914645561
#>     Attrib V21    -0.30646458887144307
#>     Attrib V22    -0.2762827701885829
#>     Attrib V23    -0.8618376534769364
#>     Attrib V24    -0.7190536529715347
#>     Attrib V25    0.7724843846173828
#>     Attrib V26    0.69185048161825
#>     Attrib V27    0.05146100922846931
#>     Attrib V28    -0.45902310701701826
#>     Attrib V29    0.23074417174154882
#>     Attrib V3    0.08118919228491218
#>     Attrib V30    -0.10633031126020932
#>     Attrib V31    1.2474672018673465
#>     Attrib V32    -0.1783768691054313
#>     Attrib V33    -0.34700483036697016
#>     Attrib V34    -0.05803608486697297
#>     Attrib V35    -0.2935012476933897
#>     Attrib V36    0.48032101412244604
#>     Attrib V37    0.8736021213453709
#>     Attrib V38    -0.10187532740368581
#>     Attrib V39    -0.2522271451748474
#>     Attrib V4    -0.18275038806485028
#>     Attrib V40    0.6541826329912157
#>     Attrib V41    0.2511866935113095
#>     Attrib V42    -0.3983309989527263
#>     Attrib V43    -0.3262518510866662
#>     Attrib V44    -0.20734046988217647
#>     Attrib V45    -0.535915523504633
#>     Attrib V46    -0.15597417424861906
#>     Attrib V47    0.09685047960757494
#>     Attrib V48    -0.469380306225466
#>     Attrib V49    -1.1261821121950149
#>     Attrib V5    0.04639081556042121
#>     Attrib V50    1.0577420356079286
#>     Attrib V51    -0.21491762025979277
#>     Attrib V52    -0.21770132227999536
#>     Attrib V53    0.15252274772852772
#>     Attrib V54    -0.04116249203903674
#>     Attrib V55    0.9170511373130489
#>     Attrib V56    -0.5595028997336099
#>     Attrib V57    0.3247809469592104
#>     Attrib V58    -0.4738004182102365
#>     Attrib V59    -0.9785168480214265
#>     Attrib V6    0.03820761288620726
#>     Attrib V60    -0.4852880476249686
#>     Attrib V7    0.2846476547794604
#>     Attrib V8    0.7867847011949485
#>     Attrib V9    -0.2850880842835414
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.16194572884030867
#>     Attrib V1    -0.11748087702656067
#>     Attrib V10    -0.06921676737873869
#>     Attrib V11    -0.20992090436737826
#>     Attrib V12    -0.1822993596608894
#>     Attrib V13    -0.025622167792808282
#>     Attrib V14    -0.009427128243105267
#>     Attrib V15    -0.044024108679346835
#>     Attrib V16    0.13576501133162636
#>     Attrib V17    0.13228024310278597
#>     Attrib V18    0.3340013218423265
#>     Attrib V19    -0.014173454362603649
#>     Attrib V2    0.038705542459967573
#>     Attrib V20    -0.27100168497633137
#>     Attrib V21    0.02475474777909284
#>     Attrib V22    -0.02900395370263107
#>     Attrib V23    -0.2677010380325551
#>     Attrib V24    -0.21707624853669613
#>     Attrib V25    0.22268584984020642
#>     Attrib V26    0.059355794120243895
#>     Attrib V27    -0.17136153001099264
#>     Attrib V28    -0.28732754812063416
#>     Attrib V29    -0.06653870992646682
#>     Attrib V3    0.02966346226890613
#>     Attrib V30    -0.15210527032748317
#>     Attrib V31    0.2667126973520208
#>     Attrib V32    -0.08532894601942213
#>     Attrib V33    -0.10384935912268217
#>     Attrib V34    0.0365035837010304
#>     Attrib V35    -0.029615636076026193
#>     Attrib V36    0.22899819447916178
#>     Attrib V37    0.33817356050584707
#>     Attrib V38    0.02286744033506719
#>     Attrib V39    0.0017549348730533456
#>     Attrib V4    -0.06111701467589191
#>     Attrib V40    0.2353492079848759
#>     Attrib V41    0.11739044185202262
#>     Attrib V42    -0.051577109996082254
#>     Attrib V43    -0.07151767356244708
#>     Attrib V44    -0.07241845930712892
#>     Attrib V45    -0.22543587533868253
#>     Attrib V46    -0.08589763680199376
#>     Attrib V47    -0.04470509623578643
#>     Attrib V48    -0.27613466004100223
#>     Attrib V49    -0.4431211570205606
#>     Attrib V5    -4.3139620094693993E-4
#>     Attrib V50    0.34367734317027027
#>     Attrib V51    -0.0179976362718823
#>     Attrib V52    -0.007997052205583097
#>     Attrib V53    0.12452812508020256
#>     Attrib V54    0.031874985230041085
#>     Attrib V55    0.32960487007730704
#>     Attrib V56    -0.14149563558264494
#>     Attrib V57    0.20589550039912127
#>     Attrib V58    -0.04553974428955126
#>     Attrib V59    -0.29146003989681946
#>     Attrib V6    0.022907453381345554
#>     Attrib V60    -0.10539905818661172
#>     Attrib V7    0.13224099478799006
#>     Attrib V8    0.28289234598801527
#>     Attrib V9    -0.03378213133118204
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.14948908735458064
#>     Attrib V1    -0.11859502880743766
#>     Attrib V10    -0.12791422518530055
#>     Attrib V11    -0.3003296123902046
#>     Attrib V12    -0.3062619491086607
#>     Attrib V13    -0.11309386720444688
#>     Attrib V14    0.032386711174257794
#>     Attrib V15    0.036128190720058434
#>     Attrib V16    0.09938894785217675
#>     Attrib V17    0.08634822220262824
#>     Attrib V18    0.3623986378867298
#>     Attrib V19    -0.07002873408497662
#>     Attrib V2    0.1540679192264259
#>     Attrib V20    -0.36323673079695473
#>     Attrib V21    0.060884429775602086
#>     Attrib V22    0.02803610820223203
#>     Attrib V23    -0.3100146323717941
#>     Attrib V24    -0.2573690970176956
#>     Attrib V25    0.3064290776471755
#>     Attrib V26    0.13108269051059335
#>     Attrib V27    -0.1675898823217998
#>     Attrib V28    -0.3840503844882902
#>     Attrib V29    -0.08864329654409239
#>     Attrib V3    0.01508065308535556
#>     Attrib V30    -0.11800621415143883
#>     Attrib V31    0.4677132115063017
#>     Attrib V32    -0.17110953082041414
#>     Attrib V33    -0.06804416012653322
#>     Attrib V34    -0.027628116681362884
#>     Attrib V35    -0.003942606196111341
#>     Attrib V36    0.3009648628266877
#>     Attrib V37    0.37024667773766373
#>     Attrib V38    0.06277076757021255
#>     Attrib V39    -0.00359261374148722
#>     Attrib V4    -0.09339853248724247
#>     Attrib V40    0.30078802421893297
#>     Attrib V41    0.1476638860420258
#>     Attrib V42    -0.12193430770581018
#>     Attrib V43    -0.019925756959038626
#>     Attrib V44    -0.006758356974127251
#>     Attrib V45    -0.28316629400071097
#>     Attrib V46    -0.18174896880096864
#>     Attrib V47    -0.11595414517567249
#>     Attrib V48    -0.32017808147428073
#>     Attrib V49    -0.5969335476184424
#>     Attrib V5    -0.024570203441397938
#>     Attrib V50    0.45168092684877104
#>     Attrib V51    -0.09707302765822579
#>     Attrib V52    -0.09066267894464514
#>     Attrib V53    0.09806265017725234
#>     Attrib V54    0.10712243815134205
#>     Attrib V55    0.4915849755484686
#>     Attrib V56    -0.1714906700062321
#>     Attrib V57    0.31643425985976625
#>     Attrib V58    -0.15710729790996772
#>     Attrib V59    -0.3641821522119382
#>     Attrib V6    -0.030818683912788716
#>     Attrib V60    -0.1558498620341656
#>     Attrib V7    0.16549264429946353
#>     Attrib V8    0.45219195376634796
#>     Attrib V9    -0.12504672319192242
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.12023894900896218
#>     Attrib V1    0.19270991089413844
#>     Attrib V10    -0.038579896433220344
#>     Attrib V11    0.06351575217510999
#>     Attrib V12    0.0548839109248036
#>     Attrib V13    0.012395958740935563
#>     Attrib V14    0.04268292190885368
#>     Attrib V15    0.08816126541821695
#>     Attrib V16    0.04584704044924774
#>     Attrib V17    0.024439017465244097
#>     Attrib V18    -0.01380081514671431
#>     Attrib V19    0.05091879476383188
#>     Attrib V2    0.03166510502789724
#>     Attrib V20    0.3070765591862661
#>     Attrib V21    0.10624109321907099
#>     Attrib V22    -0.005555248503343369
#>     Attrib V23    0.09992401897552233
#>     Attrib V24    0.054825115146600295
#>     Attrib V25    -0.23166615072329072
#>     Attrib V26    -0.23756354902741786
#>     Attrib V27    -0.12869251131367593
#>     Attrib V28    -0.03975869252732126
#>     Attrib V29    -0.13502357091548847
#>     Attrib V3    0.15279692068856213
#>     Attrib V30    -0.06509250646556229
#>     Attrib V31    -0.3393777749160455
#>     Attrib V32    -0.008026114322090333
#>     Attrib V33    0.06981451650333055
#>     Attrib V34    0.05690539158697746
#>     Attrib V35    0.050293011873657194
#>     Attrib V36    -0.04777518699817828
#>     Attrib V37    -0.208533111279709
#>     Attrib V38    0.022548763346794273
#>     Attrib V39    0.09031584222012606
#>     Attrib V4    0.08601627061018176
#>     Attrib V40    -0.1894975639892918
#>     Attrib V41    -0.1379283743917227
#>     Attrib V42    0.03412490434068825
#>     Attrib V43    0.060878637493521945
#>     Attrib V44    0.11261649235072599
#>     Attrib V45    0.06706196641632269
#>     Attrib V46    0.016821780975429804
#>     Attrib V47    0.009546967988079845
#>     Attrib V48    0.07476514324287219
#>     Attrib V49    0.20954902656571234
#>     Attrib V5    0.015901592773203698
#>     Attrib V50    -0.22244336733335945
#>     Attrib V51    0.10434506069335109
#>     Attrib V52    0.010872269209603692
#>     Attrib V53    0.04614372523894328
#>     Attrib V54    0.09205345943281393
#>     Attrib V55    -0.06484196431079602
#>     Attrib V56    0.26657502158840723
#>     Attrib V57    -0.03576123664923465
#>     Attrib V58    0.15120541733201967
#>     Attrib V59    0.3263485069335382
#>     Attrib V6    -0.07051197461522263
#>     Attrib V60    0.2367676780031412
#>     Attrib V7    -0.05100458880398401
#>     Attrib V8    -0.1696422732641459
#>     Attrib V9    0.027648291928554645
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.23435080320231758
#>     Attrib V1    0.13156834515926902
#>     Attrib V10    0.6907988914221638
#>     Attrib V11    0.7228193568932496
#>     Attrib V12    0.6857436742407758
#>     Attrib V13    0.2021010010541181
#>     Attrib V14    -0.07898980887965815
#>     Attrib V15    -0.0877725290451117
#>     Attrib V16    -0.3692002263526312
#>     Attrib V17    -0.4738331665665489
#>     Attrib V18    -0.8065587681969273
#>     Attrib V19    0.017334759657220422
#>     Attrib V2    -0.0659808747589651
#>     Attrib V20    0.3272159947338416
#>     Attrib V21    -0.2736841036570384
#>     Attrib V22    -0.03603911531700437
#>     Attrib V23    0.45488039021583115
#>     Attrib V24    0.6212483665483861
#>     Attrib V25    -0.22370152831171053
#>     Attrib V26    0.09766913168741727
#>     Attrib V27    0.6042220231439241
#>     Attrib V28    0.862433234265464
#>     Attrib V29    0.22073445036556608
#>     Attrib V3    -0.0196430488771729
#>     Attrib V30    -0.0032990389608361817
#>     Attrib V31    -0.8812269873194523
#>     Attrib V32    0.047592124633976426
#>     Attrib V33    -0.1002987215428793
#>     Attrib V34    -0.04843085125420267
#>     Attrib V35    0.2251204044633509
#>     Attrib V36    -0.40665373056359616
#>     Attrib V37    -0.4912629150050947
#>     Attrib V38    -0.17529883964029358
#>     Attrib V39    -0.03993636722445308
#>     Attrib V4    0.3425958455895417
#>     Attrib V40    -0.36707276204173767
#>     Attrib V41    -0.01620622099854741
#>     Attrib V42    0.03130514237702238
#>     Attrib V43    -0.06670923868898394
#>     Attrib V44    -0.09129233964082183
#>     Attrib V45    0.4507862635850128
#>     Attrib V46    0.47063072865390754
#>     Attrib V47    0.30240539480564715
#>     Attrib V48    0.6571701765693168
#>     Attrib V49    0.9857476080773131
#>     Attrib V5    0.03414235305792678
#>     Attrib V50    -0.5728735210756927
#>     Attrib V51    0.30995372916006936
#>     Attrib V52    0.41799180380882034
#>     Attrib V53    0.3148309213267589
#>     Attrib V54    -0.4014927920411367
#>     Attrib V55    -0.9913258270350647
#>     Attrib V56    0.0322058060071377
#>     Attrib V57    -0.4473471905267613
#>     Attrib V58    0.22868636092294012
#>     Attrib V59    0.47105807499016017
#>     Attrib V6    0.22585544112197878
#>     Attrib V60    0.3785412928591623
#>     Attrib V7    -0.2071792177869507
#>     Attrib V8    -0.5508236106256019
#>     Attrib V9    0.35380142895196676
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.01837006048660549
#>     Attrib V1    0.5994343229845668
#>     Attrib V10    -0.33345937840358214
#>     Attrib V11    0.10361762306610317
#>     Attrib V12    0.06869812051099096
#>     Attrib V13    -0.015441057893608487
#>     Attrib V14    0.17011832788025952
#>     Attrib V15    0.5098953247919774
#>     Attrib V16    0.25823188806754377
#>     Attrib V17    0.28044894463119474
#>     Attrib V18    -0.22829251812240448
#>     Attrib V19    0.3079117663428103
#>     Attrib V2    -0.0889687359185649
#>     Attrib V20    1.2482996570237253
#>     Attrib V21    0.6721503127910309
#>     Attrib V22    0.3708037847663259
#>     Attrib V23    0.5778481440207665
#>     Attrib V24    0.2826495851994236
#>     Attrib V25    -1.011866901983448
#>     Attrib V26    -0.9927098807361551
#>     Attrib V27    -0.36396836036690305
#>     Attrib V28    0.15107845121627805
#>     Attrib V29    -0.020847720429051645
#>     Attrib V3    0.1819706950303738
#>     Attrib V30    0.19775610386835288
#>     Attrib V31    -1.2050051745970711
#>     Attrib V32    -0.16757515153244715
#>     Attrib V33    0.2588501745460758
#>     Attrib V34    -0.09281652844453078
#>     Attrib V35    0.2006242789011532
#>     Attrib V36    -0.1689917874829746
#>     Attrib V37    -0.4745342052479976
#>     Attrib V38    0.29837010597753044
#>     Attrib V39    0.1937303856697684
#>     Attrib V4    0.2665804418272977
#>     Attrib V40    -0.6226278528411516
#>     Attrib V41    -0.3236515561726869
#>     Attrib V42    0.37503968157737355
#>     Attrib V43    0.4710824468457047
#>     Attrib V44    0.4526068616371192
#>     Attrib V45    0.5601508425969941
#>     Attrib V46    0.029938920396843458
#>     Attrib V47    -0.32314132373983073
#>     Attrib V48    0.14174934316593402
#>     Attrib V49    0.6540872884145139
#>     Attrib V5    -0.01870303682556677
#>     Attrib V50    -0.6957177878937878
#>     Attrib V51    0.0838857351450906
#>     Attrib V52    0.00924261698956757
#>     Attrib V53    0.05735509426887174
#>     Attrib V54    0.5274591190341451
#>     Attrib V55    -0.4541166970080642
#>     Attrib V56    0.8059425917008488
#>     Attrib V57    0.00653988059255969
#>     Attrib V58    0.5507779089214335
#>     Attrib V59    1.1524206262119876
#>     Attrib V6    -0.12216859727896419
#>     Attrib V60    0.5304115311070083
#>     Attrib V7    0.02666638088958775
#>     Attrib V8    -0.7530732865539741
#>     Attrib V9    -0.0766444413933719
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.30690086246345677
#>     Attrib V1    -0.22742122144844779
#>     Attrib V10    -0.39720717312856557
#>     Attrib V11    -0.6718191884689028
#>     Attrib V12    -0.522061824080724
#>     Attrib V13    -0.07008037881882022
#>     Attrib V14    0.1945704020317568
#>     Attrib V15    0.03985746378665393
#>     Attrib V16    0.23179336393747396
#>     Attrib V17    0.2535026651307033
#>     Attrib V18    0.8398112588452586
#>     Attrib V19    -0.13433090476846646
#>     Attrib V2    0.2146539765994791
#>     Attrib V20    -0.7215897281755099
#>     Attrib V21    0.16978584457535947
#>     Attrib V22    -0.045656598192453254
#>     Attrib V23    -0.6341197233446767
#>     Attrib V24    -0.592215782297636
#>     Attrib V25    0.7275095409527197
#>     Attrib V26    0.5123381233412874
#>     Attrib V27    -0.17604393592756282
#>     Attrib V28    -0.7280819265607815
#>     Attrib V29    -0.045950389870507834
#>     Attrib V3    0.0954261259311048
#>     Attrib V30    -0.1965868110037355
#>     Attrib V31    0.972906005381821
#>     Attrib V32    -0.3314935355714269
#>     Attrib V33    -0.24436373895631588
#>     Attrib V34    -0.03481259192187868
#>     Attrib V35    -0.22778439077667292
#>     Attrib V36    0.4993369564794279
#>     Attrib V37    0.7059499480520197
#>     Attrib V38    -0.05224627125253917
#>     Attrib V39    -0.12740061153100668
#>     Attrib V4    -0.1088208885890245
#>     Attrib V40    0.6294737391493219
#>     Attrib V41    0.23726481130185959
#>     Attrib V42    -0.3227106707004619
#>     Attrib V43    -0.16152000496736796
#>     Attrib V44    -0.08607744740939055
#>     Attrib V45    -0.581646294801872
#>     Attrib V46    -0.25848203133622155
#>     Attrib V47    -0.048553733937878825
#>     Attrib V48    -0.5447624675665161
#>     Attrib V49    -1.0672125622643747
#>     Attrib V5    0.06947608262481224
#>     Attrib V50    0.9887723287455674
#>     Attrib V51    -0.16328169398812753
#>     Attrib V52    -0.14304753143631752
#>     Attrib V53    0.17452360177328746
#>     Attrib V54    0.2496726240019356
#>     Attrib V55    0.9963663161402462
#>     Attrib V56    -0.38383456945552796
#>     Attrib V57    0.5474942010025716
#>     Attrib V58    -0.2981088553722805
#>     Attrib V59    -0.6108859835390245
#>     Attrib V6    -0.08457703686034163
#>     Attrib V60    -0.2733364878853596
#>     Attrib V7    0.40158374188742635
#>     Attrib V8    0.7005245257376458
#>     Attrib V9    -0.2991501790374556
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.13266354745125714
#>     Attrib V1    0.1583141243071098
#>     Attrib V10    0.042477124861599394
#>     Attrib V11    0.06428759791861902
#>     Attrib V12    0.055909889569994466
#>     Attrib V13    2.3177659666647504E-4
#>     Attrib V14    0.057531834583891106
#>     Attrib V15    0.011113659134107884
#>     Attrib V16    0.05629503215230698
#>     Attrib V17    0.02948109444667012
#>     Attrib V18    -0.03400129179935692
#>     Attrib V19    -0.02581852667696496
#>     Attrib V2    0.07020684272178566
#>     Attrib V20    0.061627307495178384
#>     Attrib V21    -0.06792089562672515
#>     Attrib V22    -0.11394414019718721
#>     Attrib V23    -0.0644841208380019
#>     Attrib V24    0.02371160291403921
#>     Attrib V25    -0.12002334403836849
#>     Attrib V26    -0.12786876680361872
#>     Attrib V27    -0.08837894173884371
#>     Attrib V28    -0.07613631141776854
#>     Attrib V29    -0.03158534671360517
#>     Attrib V3    0.0679033072435806
#>     Attrib V30    -0.02456908273692999
#>     Attrib V31    -0.06715932142460236
#>     Attrib V32    3.503337966648944E-4
#>     Attrib V33    -0.009521913565398084
#>     Attrib V34    0.009344222909368727
#>     Attrib V35    0.06051015048548888
#>     Attrib V36    -0.014353160258537832
#>     Attrib V37    -0.04756508901905536
#>     Attrib V38    -0.014347759405854818
#>     Attrib V39    -5.33440270497842E-4
#>     Attrib V4    0.11024741288716024
#>     Attrib V40    -0.03333644910129131
#>     Attrib V41    -0.06855465052605639
#>     Attrib V42    -0.02164586838807782
#>     Attrib V43    0.08291845132421304
#>     Attrib V44    0.061081880449902974
#>     Attrib V45    0.011506960264237759
#>     Attrib V46    0.08493568564707735
#>     Attrib V47    0.005158888534812258
#>     Attrib V48    0.0942897115891539
#>     Attrib V49    0.09492955492849371
#>     Attrib V5    0.062342704113373414
#>     Attrib V50    -0.039812619011972264
#>     Attrib V51    0.05897198824128718
#>     Attrib V52    0.05872436351351569
#>     Attrib V53    0.039145195485312784
#>     Attrib V54    0.07095208966101257
#>     Attrib V55    0.022880704370374663
#>     Attrib V56    0.1722653183932012
#>     Attrib V57    0.059561867188829165
#>     Attrib V58    0.14549386097548223
#>     Attrib V59    0.14452383391006365
#>     Attrib V6    0.026349441929115994
#>     Attrib V60    0.17497989837772715
#>     Attrib V7    -0.025446897273701485
#>     Attrib V8    -0.09932546364426291
#>     Attrib V9    0.07460182132865353
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.04140487066600851
#>     Attrib V1    0.6143412715565643
#>     Attrib V10    -0.4905481785247075
#>     Attrib V11    0.020696668310919788
#>     Attrib V12    0.044318165770754904
#>     Attrib V13    -0.02794981031046995
#>     Attrib V14    0.14656759641956163
#>     Attrib V15    0.48724879183715375
#>     Attrib V16    0.2583211812624639
#>     Attrib V17    0.3778813880109996
#>     Attrib V18    -0.11582069347477879
#>     Attrib V19    0.2786011283517563
#>     Attrib V2    -0.024934367801744736
#>     Attrib V20    1.0643600256815355
#>     Attrib V21    0.5387886537197081
#>     Attrib V22    0.26466845390199706
#>     Attrib V23    0.45374012433323463
#>     Attrib V24    0.22766847888746544
#>     Attrib V25    -0.8053682706166069
#>     Attrib V26    -0.8853539650374423
#>     Attrib V27    -0.5568971132694684
#>     Attrib V28    -0.14781827113545318
#>     Attrib V29    -0.28478245848409484
#>     Attrib V3    0.3038972105013389
#>     Attrib V30    0.060916164320531554
#>     Attrib V31    -0.9394615998551228
#>     Attrib V32    -0.08687316754784064
#>     Attrib V33    0.28330791329786886
#>     Attrib V34    -0.0012851488552413706
#>     Attrib V35    0.22656160094489883
#>     Attrib V36    -0.20092315126703136
#>     Attrib V37    -0.4467385609786605
#>     Attrib V38    0.23171861638041077
#>     Attrib V39    0.23181202765083203
#>     Attrib V4    0.28115337081760006
#>     Attrib V40    -0.5168163821455474
#>     Attrib V41    -0.35559298088828734
#>     Attrib V42    0.2895530413695337
#>     Attrib V43    0.4218787990575854
#>     Attrib V44    0.3485291986561085
#>     Attrib V45    0.41965988147985367
#>     Attrib V46    -0.0112236801568741
#>     Attrib V47    -0.2399394150386306
#>     Attrib V48    0.03357659080204602
#>     Attrib V49    0.498476657510047
#>     Attrib V5    -0.006016967342873398
#>     Attrib V50    -0.586366877614983
#>     Attrib V51    -0.038115264168496046
#>     Attrib V52    -0.04515389432296063
#>     Attrib V53    0.09383928444175713
#>     Attrib V54    0.5586438965027299
#>     Attrib V55    -0.21904299692009627
#>     Attrib V56    0.9134545722558198
#>     Attrib V57    0.10670565629453982
#>     Attrib V58    0.5059659846352639
#>     Attrib V59    1.0706436690391488
#>     Attrib V6    -0.12860736203675902
#>     Attrib V60    0.4725114778317777
#>     Attrib V7    -0.013247325894549902
#>     Attrib V8    -0.6201243915036403
#>     Attrib V9    -0.11599787868446733
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.24061594440971953
#>     Attrib V1    -0.1891572020688412
#>     Attrib V10    -0.3275772384124409
#>     Attrib V11    -0.49257998929654345
#>     Attrib V12    -0.3775010173092846
#>     Attrib V13    -0.08216068684695933
#>     Attrib V14    0.12254799658359912
#>     Attrib V15    0.050730429843669364
#>     Attrib V16    0.15365762633908917
#>     Attrib V17    0.22380343315313167
#>     Attrib V18    0.5856621372655099
#>     Attrib V19    -0.09253770190956702
#>     Attrib V2    0.14470838730178803
#>     Attrib V20    -0.5090023827573508
#>     Attrib V21    0.11174065919492387
#>     Attrib V22    -0.047618432997989894
#>     Attrib V23    -0.4144372947789174
#>     Attrib V24    -0.4420774737833226
#>     Attrib V25    0.5255335568234207
#>     Attrib V26    0.3513942499837556
#>     Attrib V27    -0.19989879243550407
#>     Attrib V28    -0.5306776467519452
#>     Attrib V29    -0.08796387936206981
#>     Attrib V3    0.06700551923623954
#>     Attrib V30    -0.19866706061244083
#>     Attrib V31    0.6266055401966675
#>     Attrib V32    -0.20253284725739443
#>     Attrib V33    -0.23134487311413585
#>     Attrib V34    -0.03520751061056882
#>     Attrib V35    -0.14240583061533574
#>     Attrib V36    0.4189637885242926
#>     Attrib V37    0.47478685262672154
#>     Attrib V38    -0.008873258193844026
#>     Attrib V39    -0.08349544787926703
#>     Attrib V4    -0.08898172266185068
#>     Attrib V40    0.46524850090927933
#>     Attrib V41    0.1586078301465598
#>     Attrib V42    -0.2398899769031374
#>     Attrib V43    -0.07709966827676054
#>     Attrib V44    -0.08382056180472577
#>     Attrib V45    -0.47269551167421225
#>     Attrib V46    -0.19119043525501248
#>     Attrib V47    -0.02004827473466477
#>     Attrib V48    -0.46086079897414134
#>     Attrib V49    -0.8278355429936816
#>     Attrib V5    -0.020004730743813794
#>     Attrib V50    0.7155190551796341
#>     Attrib V51    -0.12248403858442095
#>     Attrib V52    -0.06579340053530124
#>     Attrib V53    0.12271822825367568
#>     Attrib V54    0.1959821948447965
#>     Attrib V55    0.7571602415726372
#>     Attrib V56    -0.2136160436934714
#>     Attrib V57    0.4320994258601568
#>     Attrib V58    -0.18591019788566326
#>     Attrib V59    -0.4504165440613076
#>     Attrib V6    -0.041755605852157915
#>     Attrib V60    -0.2567644178426973
#>     Attrib V7    0.24828282956708045
#>     Attrib V8    0.5567938289527729
#>     Attrib V9    -0.19864018306181483
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.269458027686041
#>     Attrib V1    -0.10935360604743588
#>     Attrib V10    1.6090791385967405
#>     Attrib V11    1.3360505934348144
#>     Attrib V12    1.104219564972831
#>     Attrib V13    0.44549681826923154
#>     Attrib V14    -0.20134479972364178
#>     Attrib V15    -0.6377454059411577
#>     Attrib V16    -0.6806502140129698
#>     Attrib V17    -0.8610052816619993
#>     Attrib V18    -0.8783694077004983
#>     Attrib V19    0.22651448077528002
#>     Attrib V2    -0.32873186921825504
#>     Attrib V20    0.1641011333663342
#>     Attrib V21    -0.3143291328375251
#>     Attrib V22    0.2855716941072251
#>     Attrib V23    1.0622216988557183
#>     Attrib V24    1.2208905908307468
#>     Attrib V25    0.26480099613469504
#>     Attrib V26    0.9220278121563187
#>     Attrib V27    1.1594680658059127
#>     Attrib V28    1.076197058484719
#>     Attrib V29    0.14690463287589672
#>     Attrib V3    -0.1690726578765885
#>     Attrib V30    -0.3308135258118246
#>     Attrib V31    -1.1592662530539184
#>     Attrib V32    -0.06964124913216194
#>     Attrib V33    -0.4196346470087794
#>     Attrib V34    0.11921552150656793
#>     Attrib V35    0.2648141479383675
#>     Attrib V36    -0.581517416810476
#>     Attrib V37    -0.7281038826618597
#>     Attrib V38    -0.5441431756702807
#>     Attrib V39    0.01472699682747536
#>     Attrib V4    0.5058903593161594
#>     Attrib V40    -0.12081779557868112
#>     Attrib V41    0.5584125635602961
#>     Attrib V42    -0.05271788579995474
#>     Attrib V43    -0.30428361844463314
#>     Attrib V44    -0.33694896379264555
#>     Attrib V45    0.24680553381874853
#>     Attrib V46    0.8304884608483987
#>     Attrib V47    0.838418677087262
#>     Attrib V48    1.2066612591342152
#>     Attrib V49    1.543513287100215
#>     Attrib V5    0.15600992822531923
#>     Attrib V50    -0.22306509714146586
#>     Attrib V51    0.9672116013998449
#>     Attrib V52    0.9383182043111391
#>     Attrib V53    0.605889825504563
#>     Attrib V54    -0.9343659520369311
#>     Attrib V55    -1.533588271448473
#>     Attrib V56    -0.45837601172767567
#>     Attrib V57    -0.6145833378997991
#>     Attrib V58    0.15821303291386105
#>     Attrib V59    0.47722976298158176
#>     Attrib V6    0.6331102965694287
#>     Attrib V60    0.61964304554322
#>     Attrib V7    -0.14131581053068554
#>     Attrib V8    -0.24210222610394835
#>     Attrib V9    0.8515170011007257
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.20391539888599916
#>     Attrib V1    0.06676546929936808
#>     Attrib V10    0.021565715426086325
#>     Attrib V11    -0.025106307151219892
#>     Attrib V12    0.026448337411455122
#>     Attrib V13    -0.01607934226071626
#>     Attrib V14    0.07600285307104426
#>     Attrib V15    0.010614297577396176
#>     Attrib V16    0.039497504900674794
#>     Attrib V17    0.06201547664215931
#>     Attrib V18    0.014143037750714607
#>     Attrib V19    0.02065308669173832
#>     Attrib V2    0.094373790913506
#>     Attrib V20    -0.05903046652805442
#>     Attrib V21    -0.032746320285962166
#>     Attrib V22    -0.09625369118322194
#>     Attrib V23    -0.1271994893966527
#>     Attrib V24    -0.13309243380080343
#>     Attrib V25    -0.034045033507030115
#>     Attrib V26    -0.08307506942789697
#>     Attrib V27    -0.07077263521384697
#>     Attrib V28    -0.057606773789007255
#>     Attrib V29    -0.013262865725425423
#>     Attrib V3    0.03838150237383056
#>     Attrib V30    -0.01479069830940428
#>     Attrib V31    0.03549112247106762
#>     Attrib V32    -0.017761790384798408
#>     Attrib V33    0.04532955537666204
#>     Attrib V34    0.03518541721708432
#>     Attrib V35    0.1128107899925717
#>     Attrib V36    0.1378245383240448
#>     Attrib V37    0.15766628725651247
#>     Attrib V38    0.04437428791338023
#>     Attrib V39    0.08818547213688868
#>     Attrib V4    0.08261075620258236
#>     Attrib V40    0.09916621147453399
#>     Attrib V41    0.0489834085649015
#>     Attrib V42    0.02161236110304763
#>     Attrib V43    0.036058816552572384
#>     Attrib V44    0.0746627575984318
#>     Attrib V45    -0.0053742211776586805
#>     Attrib V46    0.013896522693359633
#>     Attrib V47    0.00704863120392756
#>     Attrib V48    0.008672812549171583
#>     Attrib V49    -0.06616681751288819
#>     Attrib V5    0.0016174566821555438
#>     Attrib V50    0.0882743085898028
#>     Attrib V51    0.023801385135873016
#>     Attrib V52    0.029336649647077922
#>     Attrib V53    0.053762463705102265
#>     Attrib V54    0.034791666885405935
#>     Attrib V55    0.10707322333215602
#>     Attrib V56    0.0713709850859916
#>     Attrib V57    0.13892728297659193
#>     Attrib V58    0.07098263275478604
#>     Attrib V59    0.026568660973070597
#>     Attrib V6    0.0818056894138404
#>     Attrib V60    0.11891626473850732
#>     Attrib V7    0.020538356113493847
#>     Attrib V8    0.14577944683938812
#>     Attrib V9    0.05394364285913749
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.019301506235273914
#>     Attrib V1    0.4543920806622135
#>     Attrib V10    -0.19913623488904622
#>     Attrib V11    0.10284896576037637
#>     Attrib V12    0.09991495579597681
#>     Attrib V13    0.034337503990496676
#>     Attrib V14    0.043051476437297065
#>     Attrib V15    0.287371094284439
#>     Attrib V16    0.12553439064640234
#>     Attrib V17    0.13764178338122657
#>     Attrib V18    -0.07898734289887821
#>     Attrib V19    0.22643741915469887
#>     Attrib V2    0.004132108432412739
#>     Attrib V20    0.7128172729035299
#>     Attrib V21    0.34393942752947965
#>     Attrib V22    0.1592658687394108
#>     Attrib V23    0.30425039734152076
#>     Attrib V24    0.24588102883804164
#>     Attrib V25    -0.5653517373384485
#>     Attrib V26    -0.5488561623452026
#>     Attrib V27    -0.3266751068782863
#>     Attrib V28    -0.07226392746072059
#>     Attrib V29    -0.20880968277482811
#>     Attrib V3    0.16968603664562942
#>     Attrib V30    -0.01334320026091515
#>     Attrib V31    -0.7142132091745932
#>     Attrib V32    -0.04165900624926399
#>     Attrib V33    0.15251003765403137
#>     Attrib V34    0.0470628154338195
#>     Attrib V35    0.15536784789318375
#>     Attrib V36    -0.18228174068223973
#>     Attrib V37    -0.3812227343147688
#>     Attrib V38    0.15166435215992596
#>     Attrib V39    0.18142704142508495
#>     Attrib V4    0.20382689239874455
#>     Attrib V40    -0.4166276508816101
#>     Attrib V41    -0.21777471246505836
#>     Attrib V42    0.19178461084858536
#>     Attrib V43    0.19934510416916618
#>     Attrib V44    0.23759222025078036
#>     Attrib V45    0.3255556688182456
#>     Attrib V46    -0.008101014153099587
#>     Attrib V47    -0.19106704264541205
#>     Attrib V48    0.1245272168359847
#>     Attrib V49    0.38443290946281483
#>     Attrib V5    0.007223371377116719
#>     Attrib V50    -0.3858354747638818
#>     Attrib V51    0.05051417419810063
#>     Attrib V52    -3.232050876017003E-4
#>     Attrib V53    0.08318472631710835
#>     Attrib V54    0.3997127914343015
#>     Attrib V55    -0.18935216195870624
#>     Attrib V56    0.5054446860013921
#>     Attrib V57    0.03471680483042076
#>     Attrib V58    0.3619691390187651
#>     Attrib V59    0.7573193652847119
#>     Attrib V6    -0.07083191273869116
#>     Attrib V60    0.37860354659384593
#>     Attrib V7    -0.12173283025178294
#>     Attrib V8    -0.4814818057585896
#>     Attrib V9    -0.028272743910029093
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.2295653165907756
#>     Attrib V1    -0.48544357377584485
#>     Attrib V10    -0.3135392686222494
#>     Attrib V11    -0.8853471837537158
#>     Attrib V12    -0.7124740403593739
#>     Attrib V13    -0.12335764714264535
#>     Attrib V14    0.24656454782905968
#>     Attrib V15    0.006156470210952711
#>     Attrib V16    0.3529942162586727
#>     Attrib V17    0.3758141091613547
#>     Attrib V18    1.1270775237501676
#>     Attrib V19    -0.36717250790458456
#>     Attrib V2    0.31667939191053474
#>     Attrib V20    -1.3319564930344427
#>     Attrib V21    -0.30658703713789004
#>     Attrib V22    -0.3488728004722579
#>     Attrib V23    -1.0361831278964833
#>     Attrib V24    -0.957585015032339
#>     Attrib V25    0.8199133257229038
#>     Attrib V26    0.6913407755591818
#>     Attrib V27    0.07764488175939116
#>     Attrib V28    -0.5793354006828464
#>     Attrib V29    0.14612167019482622
#>     Attrib V3    0.14196668909001914
#>     Attrib V30    -0.07718940351481234
#>     Attrib V31    1.464036842431813
#>     Attrib V32    -0.05746987236374332
#>     Attrib V33    -0.24610161104559128
#>     Attrib V34    -0.10918722054050721
#>     Attrib V35    -0.2845198160760195
#>     Attrib V36    0.7928345951444056
#>     Attrib V37    1.1106431683933227
#>     Attrib V38    0.050197309851165356
#>     Attrib V39    -0.348845611541308
#>     Attrib V4    -0.06569905718334489
#>     Attrib V40    0.7524433095614811
#>     Attrib V41    0.3618395033353074
#>     Attrib V42    -0.32815559036997
#>     Attrib V43    -0.21954453599798718
#>     Attrib V44    -0.06826503849406743
#>     Attrib V45    -0.57958997170131
#>     Attrib V46    -0.2851873240613495
#>     Attrib V47    -0.0502252051160915
#>     Attrib V48    -0.5799076475979721
#>     Attrib V49    -1.2896888774083073
#>     Attrib V5    0.022234589123433325
#>     Attrib V50    1.3789904093733794
#>     Attrib V51    -0.4300326551782295
#>     Attrib V52    -0.28504220037936984
#>     Attrib V53    -0.04744126248851349
#>     Attrib V54    0.09359787558772319
#>     Attrib V55    1.1729587437387663
#>     Attrib V56    -0.6386082081745366
#>     Attrib V57    0.34737821727051504
#>     Attrib V58    -0.5216395922132276
#>     Attrib V59    -1.2408460688801703
#>     Attrib V6    0.05532801218503217
#>     Attrib V60    -0.6563826814690649
#>     Attrib V7    0.5568705478839455
#>     Attrib V8    1.0608387268307369
#>     Attrib V9    -0.22401315793078527
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.02602058462257291
#>     Attrib V1    0.22426765942322688
#>     Attrib V10    -0.11740700807232718
#>     Attrib V11    0.1510610199643964
#>     Attrib V12    0.15118547271188598
#>     Attrib V13    0.03196456903475962
#>     Attrib V14    0.08887604742374224
#>     Attrib V15    0.1583199336724833
#>     Attrib V16    0.025154600029384886
#>     Attrib V17    0.0497470039704293
#>     Attrib V18    -0.13396031799001043
#>     Attrib V19    0.12217334970234711
#>     Attrib V2    -0.021231619049477377
#>     Attrib V20    0.5271105901366135
#>     Attrib V21    0.18290979690676887
#>     Attrib V22    0.0820720094630184
#>     Attrib V23    0.16782205321824037
#>     Attrib V24    0.19850850793580982
#>     Attrib V25    -0.3145342176123445
#>     Attrib V26    -0.38824053731500546
#>     Attrib V27    -0.16062254831998224
#>     Attrib V28    0.01285552792627095
#>     Attrib V29    -0.1050446413468904
#>     Attrib V3    0.14657243256249616
#>     Attrib V30    -0.08267802101943952
#>     Attrib V31    -0.5179208935108377
#>     Attrib V32    0.014891725759582756
#>     Attrib V33    0.11428572856692022
#>     Attrib V34    0.04320708494825813
#>     Attrib V35    0.13230288380385216
#>     Attrib V36    -0.17720139801803575
#>     Attrib V37    -0.2746205063743792
#>     Attrib V38    0.07505389682682552
#>     Attrib V39    0.12155797097328591
#>     Attrib V4    0.10825977881200011
#>     Attrib V40    -0.2538782743472184
#>     Attrib V41    -0.12812563774978455
#>     Attrib V42    0.060938404549633486
#>     Attrib V43    0.15651036135574262
#>     Attrib V44    0.06485164513934938
#>     Attrib V45    0.22820732248980513
#>     Attrib V46    0.0577851157671691
#>     Attrib V47    -0.03246732097862222
#>     Attrib V48    0.09943328466617805
#>     Attrib V49    0.2890119319985787
#>     Attrib V5    -0.02075460717516393
#>     Attrib V50    -0.28279996553172515
#>     Attrib V51    0.07341619366907474
#>     Attrib V52    0.05602684129070662
#>     Attrib V53    0.028753088728745074
#>     Attrib V54    0.172306582269651
#>     Attrib V55    -0.13773085076087535
#>     Attrib V56    0.3707138063167295
#>     Attrib V57    -0.017609571661453268
#>     Attrib V58    0.1904206350097143
#>     Attrib V59    0.43323023656506465
#>     Attrib V6    -0.04791053656680912
#>     Attrib V60    0.2676804617236616
#>     Attrib V7    -0.1290970718142817
#>     Attrib V8    -0.34361672182565056
#>     Attrib V9    2.4111887165924212E-4
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.09320381874929319
#>     Attrib V1    0.1799767497889418
#>     Attrib V10    0.04888122925760088
#>     Attrib V11    0.07727012624569292
#>     Attrib V12    0.11708412453325709
#>     Attrib V13    0.06831579645350408
#>     Attrib V14    0.037213633239263764
#>     Attrib V15    0.07022714679348852
#>     Attrib V16    -0.009807334052829804
#>     Attrib V17    0.028975194537165558
#>     Attrib V18    -0.08414986996548868
#>     Attrib V19    -0.0065761963167221965
#>     Attrib V2    0.0620019573598698
#>     Attrib V20    0.11823469318504011
#>     Attrib V21    0.013848763123722066
#>     Attrib V22    -0.05625048447089617
#>     Attrib V23    0.0400713668568624
#>     Attrib V24    0.025561384127025123
#>     Attrib V25    -0.1220105632811564
#>     Attrib V26    -0.10361121050455124
#>     Attrib V27    -0.06514881033724772
#>     Attrib V28    0.02197787393595919
#>     Attrib V29    -0.10423304823457631
#>     Attrib V3    0.07246387224531954
#>     Attrib V30    -0.0026577892361915583
#>     Attrib V31    -0.1623244158178074
#>     Attrib V32    -0.01876476134169372
#>     Attrib V33    -2.931498669237492E-4
#>     Attrib V34    -0.002964122115474822
#>     Attrib V35    0.08186182462661454
#>     Attrib V36    -0.08455915147344248
#>     Attrib V37    -0.09441235614670816
#>     Attrib V38    -0.010078619612084611
#>     Attrib V39    0.09222863387999641
#>     Attrib V4    0.13853142004737834
#>     Attrib V40    -0.09495942120953248
#>     Attrib V41    -0.0597502364539454
#>     Attrib V42    0.036725065450385785
#>     Attrib V43    0.023631665727407394
#>     Attrib V44    0.018975739812281844
#>     Attrib V45    0.07978484485048323
#>     Attrib V46    0.04584716097228561
#>     Attrib V47    -0.011366533839373586
#>     Attrib V48    0.09992682758311483
#>     Attrib V49    0.1120868217490044
#>     Attrib V5    -0.020914298866186034
#>     Attrib V50    -0.12134438575358043
#>     Attrib V51    0.051284178694460274
#>     Attrib V52    0.04671385421768864
#>     Attrib V53    0.0649515808424813
#>     Attrib V54    0.07814286351892971
#>     Attrib V55    -0.07497299903583629
#>     Attrib V56    0.21638758459087645
#>     Attrib V57    -0.013938898519397088
#>     Attrib V58    0.14201384893450078
#>     Attrib V59    0.2512652473291706
#>     Attrib V6    -0.01392169495864946
#>     Attrib V60    0.19549865176602105
#>     Attrib V7    -0.1149387214940675
#>     Attrib V8    -0.14847099348592896
#>     Attrib V9    0.020673661327719178
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.15279962102323455
#>     Attrib V1    0.11014118050904073
#>     Attrib V10    0.04397637686971073
#>     Attrib V11    0.0849426450345035
#>     Attrib V12    0.0093201984180052
#>     Attrib V13    0.04259182402156476
#>     Attrib V14    0.06864480428217058
#>     Attrib V15    0.04596474795959061
#>     Attrib V16    0.010746555102690026
#>     Attrib V17    0.039501535811028846
#>     Attrib V18    0.027306535425021133
#>     Attrib V19    -0.021127969226842888
#>     Attrib V2    0.11650814595372717
#>     Attrib V20    0.027788473365388613
#>     Attrib V21    -0.09739594557581377
#>     Attrib V22    -0.05321050224298875
#>     Attrib V23    -0.02954462049743737
#>     Attrib V24    -0.023603741351894438
#>     Attrib V25    -0.10526907725344875
#>     Attrib V26    -0.0671532936122305
#>     Attrib V27    -0.10119648352358741
#>     Attrib V28    -0.09776490646625532
#>     Attrib V29    -0.0683238144230934
#>     Attrib V3    0.04114736911982704
#>     Attrib V30    -0.03331719842717121
#>     Attrib V31    0.0054192242559122136
#>     Attrib V32    0.0051088392415812225
#>     Attrib V33    0.05667538642678139
#>     Attrib V34    0.06776883837494303
#>     Attrib V35    0.10871292600162609
#>     Attrib V36    0.025856874219944617
#>     Attrib V37    0.0483108246734043
#>     Attrib V38    0.07756306726231767
#>     Attrib V39    0.013307436430852722
#>     Attrib V4    0.10893459403369499
#>     Attrib V40    0.01709901906119971
#>     Attrib V41    -0.005522423478513456
#>     Attrib V42    -0.015335189559307315
#>     Attrib V43    0.06054588873610884
#>     Attrib V44    0.10422633202782443
#>     Attrib V45    0.020783669658866168
#>     Attrib V46    0.06116830686719222
#>     Attrib V47    0.055595359091286004
#>     Attrib V48    0.047891692976261974
#>     Attrib V49    0.0386944172249134
#>     Attrib V5    0.03550954173032085
#>     Attrib V50    0.010716902239066808
#>     Attrib V51    0.050103547926921906
#>     Attrib V52    0.07127735070161365
#>     Attrib V53    0.08793468794080757
#>     Attrib V54    0.09499399922484769
#>     Attrib V55    0.0769601400723745
#>     Attrib V56    0.05774256910312613
#>     Attrib V57    0.06594371863643819
#>     Attrib V58    0.04476280789045594
#>     Attrib V59    0.0748992360379543
#>     Attrib V6    0.03661014068772106
#>     Attrib V60    0.11117760564602361
#>     Attrib V7    0.01876105953663659
#>     Attrib V8    0.04331995282806256
#>     Attrib V9    0.10846402144259096
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.1344980093205106
#>     Attrib V1    0.13668945727854304
#>     Attrib V10    -0.018116911854241944
#>     Attrib V11    0.05303741340662799
#>     Attrib V12    0.04296090229634721
#>     Attrib V13    -0.024674722554277075
#>     Attrib V14    0.08179681249215644
#>     Attrib V15    0.05817890238106136
#>     Attrib V16    0.04415093174764943
#>     Attrib V17    -0.00831543301433415
#>     Attrib V18    0.03629919383640866
#>     Attrib V19    -0.05062159978757154
#>     Attrib V2    0.03928494223678654
#>     Attrib V20    0.036454689564269116
#>     Attrib V21    -0.027788422820332597
#>     Attrib V22    -0.09174855701149597
#>     Attrib V23    -0.012685075059800283
#>     Attrib V24    -0.042269681850876976
#>     Attrib V25    -0.14314750104822488
#>     Attrib V26    -0.12003017223201833
#>     Attrib V27    -0.07789681062250993
#>     Attrib V28    -0.005402236492166693
#>     Attrib V29    -0.03126792223182355
#>     Attrib V3    0.10665869944744326
#>     Attrib V30    0.03055454424135874
#>     Attrib V31    -0.09567866325758319
#>     Attrib V32    -0.008842797826683929
#>     Attrib V33    0.0432364509740411
#>     Attrib V34    0.04398718039041794
#>     Attrib V35    0.07180979879338578
#>     Attrib V36    0.06308770024992091
#>     Attrib V37    -0.0012135062681661144
#>     Attrib V38    -0.0024930155402443015
#>     Attrib V39    0.054331622937119343
#>     Attrib V4    0.06208241555210054
#>     Attrib V40    -0.03569537335064423
#>     Attrib V41    -0.04261607594392129
#>     Attrib V42    0.01479370624715877
#>     Attrib V43    -0.011017578142745439
#>     Attrib V44    0.09055621338363905
#>     Attrib V45    0.08532467381380057
#>     Attrib V46    0.05768025537859659
#>     Attrib V47    0.027165876866289275
#>     Attrib V48    0.001371330698173045
#>     Attrib V49    0.08249693344912941
#>     Attrib V5    0.04350876543877364
#>     Attrib V50    -0.041369348180511016
#>     Attrib V51    0.07783768415744623
#>     Attrib V52    0.0889463039167515
#>     Attrib V53    0.05924516922454883
#>     Attrib V54    0.008215516750889083
#>     Attrib V55    0.00499757530919796
#>     Attrib V56    0.10292292162543984
#>     Attrib V57    0.044628244307831015
#>     Attrib V58    0.1392603249648655
#>     Attrib V59    0.08450607638257807
#>     Attrib V6    0.05276213212814146
#>     Attrib V60    0.10839478176434031
#>     Attrib V7    8.949981638729853E-4
#>     Attrib V8    0.043142103024937394
#>     Attrib V9    0.0907522030625457
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
