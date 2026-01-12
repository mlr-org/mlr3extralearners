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
#>     Threshold    -0.088078636884987
#>     Node 2    2.230921739443891
#>     Node 3    1.4484498584349979
#>     Node 4    0.8025460591730164
#>     Node 5    -1.3361404076769605
#>     Node 6    1.578869201822512
#>     Node 7    2.9668052046956004
#>     Node 8    1.995578869947902
#>     Node 9    2.9429758223716966
#>     Node 10    -1.4788492703144795
#>     Node 11    1.2818155842321066
#>     Node 12    1.5385070347023584
#>     Node 13    0.24608667597521236
#>     Node 14    1.3627525440287023
#>     Node 15    -2.2972768446347778
#>     Node 16    0.0689528041063891
#>     Node 17    0.974770573637496
#>     Node 18    -1.3706623787012733
#>     Node 19    1.5446445523262944
#>     Node 20    1.701675976352662
#>     Node 21    -2.3023798560395123
#>     Node 22    0.957948631572424
#>     Node 23    1.3561410049003604
#>     Node 24    -1.2172133907368254
#>     Node 25    4.366978853819032
#>     Node 26    -0.2690798031557224
#>     Node 27    2.315435650270493
#>     Node 28    -1.9547454913766482
#>     Node 29    1.1510294477726977
#>     Node 30    -1.2777938587619448
#>     Node 31    2.7170224065468416
#>     Node 32    0.7129938890179013
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.08572479976418206
#>     Node 2    -2.2800318433170066
#>     Node 3    -1.4315520605970653
#>     Node 4    -0.7577451394829114
#>     Node 5    1.3520729361820127
#>     Node 6    -1.5529956388338577
#>     Node 7    -2.952528078888927
#>     Node 8    -2.0199426750278158
#>     Node 9    -2.931087883665537
#>     Node 10    1.4102556476665515
#>     Node 11    -1.2483792299133216
#>     Node 12    -1.6203327713701963
#>     Node 13    -0.18112233049676085
#>     Node 14    -1.3018720014068812
#>     Node 15    2.277902520568723
#>     Node 16    -0.07299304291838654
#>     Node 17    -0.9380030811524095
#>     Node 18    1.4122658531055148
#>     Node 19    -1.5432825131538843
#>     Node 20    -1.6950437780780174
#>     Node 21    2.350161994786889
#>     Node 22    -1.0047578048140613
#>     Node 23    -1.3952176985414746
#>     Node 24    1.203347695659221
#>     Node 25    -4.354135887612562
#>     Node 26    0.19840780431652083
#>     Node 27    -2.355021557327079
#>     Node 28    1.9032829477137985
#>     Node 29    -1.1841834858326186
#>     Node 30    1.3553722201445608
#>     Node 31    -2.6559644071620325
#>     Node 32    -0.7272431031045755
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.38882721938014764
#>     Attrib V1    0.5133557860067198
#>     Attrib V10    -0.17051429950920213
#>     Attrib V11    -0.36378172630896766
#>     Attrib V12    -0.28598154281626986
#>     Attrib V13    -0.23443214504437887
#>     Attrib V14    0.1308235938460287
#>     Attrib V15    0.25661973072919636
#>     Attrib V16    8.482586437249679E-4
#>     Attrib V17    0.03105596894413603
#>     Attrib V18    0.3715465592387826
#>     Attrib V19    0.459143165929092
#>     Attrib V2    0.24574550342967283
#>     Attrib V20    0.5073516708329996
#>     Attrib V21    0.535110119886438
#>     Attrib V22    0.5449610228474175
#>     Attrib V23    0.7228562696031868
#>     Attrib V24    0.20705599500365737
#>     Attrib V25    -0.6620973454494151
#>     Attrib V26    -1.477771940185918
#>     Attrib V27    -1.1259555882523729
#>     Attrib V28    -0.26342501015576686
#>     Attrib V29    -0.2740853389614755
#>     Attrib V3    0.06355842646939293
#>     Attrib V30    0.14279120200221593
#>     Attrib V31    -0.9451220377532195
#>     Attrib V32    -0.03171959944265567
#>     Attrib V33    0.4148286436467351
#>     Attrib V34    -0.055787934693714535
#>     Attrib V35    -0.17529657030818896
#>     Attrib V36    -0.4796201476902221
#>     Attrib V37    -0.46402082054615246
#>     Attrib V38    0.9984590096201427
#>     Attrib V39    0.40728573194518103
#>     Attrib V4    0.541743308576898
#>     Attrib V40    -0.32571583594672554
#>     Attrib V41    -0.05718198271002824
#>     Attrib V42    -0.05619794898491587
#>     Attrib V43    0.48772741986239426
#>     Attrib V44    0.29004932985150345
#>     Attrib V45    0.10800614377666798
#>     Attrib V46    -0.16807638922368756
#>     Attrib V47    -0.13151977764807515
#>     Attrib V48    0.021589936160119717
#>     Attrib V49    0.03777293014445277
#>     Attrib V5    -0.006348567101545001
#>     Attrib V50    0.10100243087421125
#>     Attrib V51    0.14000836793279126
#>     Attrib V52    0.12445227660315276
#>     Attrib V53    0.36426151585186245
#>     Attrib V54    0.6616633053979993
#>     Attrib V55    -0.29425990640673505
#>     Attrib V56    0.3815743673710637
#>     Attrib V57    0.22606602908473902
#>     Attrib V58    0.19923776247967878
#>     Attrib V59    0.5111242021819614
#>     Attrib V6    0.07503586436368212
#>     Attrib V60    0.577787367043251
#>     Attrib V7    0.22897165358802293
#>     Attrib V8    -0.22941064705896838
#>     Attrib V9    0.20682248438982478
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.32886476753845734
#>     Attrib V1    0.22324167475440373
#>     Attrib V10    0.09835052178477527
#>     Attrib V11    -0.03583182684858012
#>     Attrib V12    0.07914128426716918
#>     Attrib V13    -0.06417049306341382
#>     Attrib V14    -0.08264316081358589
#>     Attrib V15    0.06894342972487734
#>     Attrib V16    -0.13959792081918593
#>     Attrib V17    -0.029598754681796197
#>     Attrib V18    0.2622792791629704
#>     Attrib V19    0.38370231999626003
#>     Attrib V2    0.044251617262575996
#>     Attrib V20    0.23073543049588732
#>     Attrib V21    0.18336969522289856
#>     Attrib V22    0.3822935035466887
#>     Attrib V23    0.6138350333628227
#>     Attrib V24    0.3325467628420322
#>     Attrib V25    -0.09549461686560722
#>     Attrib V26    -0.7509989708949568
#>     Attrib V27    -0.7223542281187443
#>     Attrib V28    -0.2519038743091519
#>     Attrib V29    -0.5579152568187205
#>     Attrib V3    -0.09524677699528082
#>     Attrib V30    0.07317003227816984
#>     Attrib V31    -0.5750738485644765
#>     Attrib V32    0.09656122976589082
#>     Attrib V33    0.36874890608471017
#>     Attrib V34    0.0024489621417692784
#>     Attrib V35    -0.010741361936535578
#>     Attrib V36    -0.39915593658316484
#>     Attrib V37    -0.4765939659549613
#>     Attrib V38    0.49939236921582514
#>     Attrib V39    0.15420327945609652
#>     Attrib V4    0.3265541298953659
#>     Attrib V40    -0.30853933186482996
#>     Attrib V41    -0.08286320773769251
#>     Attrib V42    -0.17188767445125985
#>     Attrib V43    0.35431161049428417
#>     Attrib V44    0.27612714403176236
#>     Attrib V45    0.13973280255758333
#>     Attrib V46    -0.07572742236153429
#>     Attrib V47    0.04002449023540409
#>     Attrib V48    0.07285973981996427
#>     Attrib V49    0.07975854144299
#>     Attrib V5    -0.04683779431159226
#>     Attrib V50    0.029044550015410463
#>     Attrib V51    0.15426070292258226
#>     Attrib V52    0.1929809590219744
#>     Attrib V53    0.2443143613975359
#>     Attrib V54    0.48545567727121985
#>     Attrib V55    -0.306679657299781
#>     Attrib V56    0.22570632438225918
#>     Attrib V57    0.1329399453839704
#>     Attrib V58    0.18792504840856264
#>     Attrib V59    0.23813529224347335
#>     Attrib V6    0.08136090987168584
#>     Attrib V60    0.29919035668560773
#>     Attrib V7    0.12038373168526166
#>     Attrib V8    -0.102533889621402
#>     Attrib V9    0.35364109151817863
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.07049728124233
#>     Attrib V1    0.15976648642884103
#>     Attrib V10    0.06499994003451466
#>     Attrib V11    0.0381648356176038
#>     Attrib V12    0.08357269918508772
#>     Attrib V13    0.0037934445810595256
#>     Attrib V14    0.04143689831162867
#>     Attrib V15    0.08638854334845825
#>     Attrib V16    -0.07758502480376624
#>     Attrib V17    -0.03390915969909653
#>     Attrib V18    0.09900272206477191
#>     Attrib V19    0.13359624059531602
#>     Attrib V2    0.027735426668889954
#>     Attrib V20    0.12323276609475539
#>     Attrib V21    0.1357798520676659
#>     Attrib V22    0.04037196346385076
#>     Attrib V23    0.1343016130599979
#>     Attrib V24    0.02717136446592495
#>     Attrib V25    -0.1632276877628891
#>     Attrib V26    -0.39124904249799825
#>     Attrib V27    -0.3333940254077936
#>     Attrib V28    0.008361044849721543
#>     Attrib V29    -0.08247456211308297
#>     Attrib V3    0.04993375687638944
#>     Attrib V30    0.13345275035149862
#>     Attrib V31    -0.25847576222935836
#>     Attrib V32    0.016541869952789542
#>     Attrib V33    0.18717094559374803
#>     Attrib V34    0.007526075991014374
#>     Attrib V35    -0.02390615603628185
#>     Attrib V36    -0.2183544287313441
#>     Attrib V37    -0.17219951456466376
#>     Attrib V38    0.24784919077323267
#>     Attrib V39    0.09124465102071701
#>     Attrib V4    0.3438409803304542
#>     Attrib V40    -0.17803717857256657
#>     Attrib V41    -0.021660901184412627
#>     Attrib V42    -0.0703681559013834
#>     Attrib V43    0.08752348777409907
#>     Attrib V44    0.10315938628411583
#>     Attrib V45    0.12429328430257762
#>     Attrib V46    -0.020507359019480143
#>     Attrib V47    0.012203885010109234
#>     Attrib V48    0.09526607909529484
#>     Attrib V49    0.07290614327291496
#>     Attrib V5    0.13981452487765234
#>     Attrib V50    0.03380308283012549
#>     Attrib V51    0.1948113319143264
#>     Attrib V52    0.133769341473586
#>     Attrib V53    0.23613094333680654
#>     Attrib V54    0.17197592865676298
#>     Attrib V55    -0.15139114521889996
#>     Attrib V56    0.09712737334880053
#>     Attrib V57    0.16285182262868395
#>     Attrib V58    0.051428710396390125
#>     Attrib V59    0.18660099937486513
#>     Attrib V6    0.06850017667715429
#>     Attrib V60    0.2035119552443607
#>     Attrib V7    0.0425838615229749
#>     Attrib V8    -0.1566555507860593
#>     Attrib V9    0.20986926436293005
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.5694632959466607
#>     Attrib V1    -0.027362603574744848
#>     Attrib V10    -0.4309636205426217
#>     Attrib V11    -0.442055626763446
#>     Attrib V12    -0.6386924621059504
#>     Attrib V13    -0.16288057517480561
#>     Attrib V14    0.3319234927035747
#>     Attrib V15    0.2463434678199966
#>     Attrib V16    0.4444745497635966
#>     Attrib V17    0.40955589296761896
#>     Attrib V18    -0.032761483124816825
#>     Attrib V19    -0.14111514409799356
#>     Attrib V2    0.1887809962607302
#>     Attrib V20    0.04764611132433842
#>     Attrib V21    0.11931588192378266
#>     Attrib V22    -0.051802817262225895
#>     Attrib V23    -0.3869420808493438
#>     Attrib V24    -0.38569031027526646
#>     Attrib V25    0.11141079129766436
#>     Attrib V26    0.4191535243876693
#>     Attrib V27    0.2355661163590894
#>     Attrib V28    -0.24043120903314485
#>     Attrib V29    0.27689473751814037
#>     Attrib V3    0.2845598477551514
#>     Attrib V30    -0.15159295723781005
#>     Attrib V31    0.4596546432286815
#>     Attrib V32    -0.13547475671531053
#>     Attrib V33    -0.12278406899484723
#>     Attrib V34    0.05750567478574557
#>     Attrib V35    0.045267573715287085
#>     Attrib V36    0.6572837332927621
#>     Attrib V37    0.46511069229294544
#>     Attrib V38    -0.45913184160431
#>     Attrib V39    -0.10152565150921333
#>     Attrib V4    -0.33690892126149297
#>     Attrib V40    0.46594391472022667
#>     Attrib V41    -0.007314632013835843
#>     Attrib V42    0.30736004758621355
#>     Attrib V43    -0.33870982654930837
#>     Attrib V44    -0.14491796647524852
#>     Attrib V45    -0.18919103352106095
#>     Attrib V46    -0.2756893363284883
#>     Attrib V47    -0.3012874969561149
#>     Attrib V48    -0.18623604903222798
#>     Attrib V49    -0.16594394257181608
#>     Attrib V5    -0.13746479757885202
#>     Attrib V50    0.18193817459743766
#>     Attrib V51    -0.4141626696142843
#>     Attrib V52    -0.424187070602343
#>     Attrib V53    -0.19105882296509233
#>     Attrib V54    -0.25203750894916754
#>     Attrib V55    0.602008840482101
#>     Attrib V56    0.31251582690198204
#>     Attrib V57    0.25012293558090176
#>     Attrib V58    -0.12871609878156162
#>     Attrib V59    0.11442507207181446
#>     Attrib V6    -0.2547869819950008
#>     Attrib V60    -0.01827505883559914
#>     Attrib V7    0.025449524674981214
#>     Attrib V8    0.2348129785272126
#>     Attrib V9    -0.6318846304435087
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.37776849503443827
#>     Attrib V1    0.3138065609270448
#>     Attrib V10    1.4857167341113278E-4
#>     Attrib V11    -0.12654135112878775
#>     Attrib V12    0.009040632449566268
#>     Attrib V13    -0.17142812667762036
#>     Attrib V14    -0.09276562565726246
#>     Attrib V15    0.05126980745051635
#>     Attrib V16    -0.05436303130962303
#>     Attrib V17    -0.03406361912488023
#>     Attrib V18    0.3258818506138066
#>     Attrib V19    0.3356890207816115
#>     Attrib V2    0.04041910847823145
#>     Attrib V20    0.25658423764590593
#>     Attrib V21    0.2585937475771365
#>     Attrib V22    0.3494339217516203
#>     Attrib V23    0.6091655452497139
#>     Attrib V24    0.3598910466405153
#>     Attrib V25    -0.15628398692440434
#>     Attrib V26    -0.8613009492980715
#>     Attrib V27    -0.7640391657379932
#>     Attrib V28    -0.3310576498358184
#>     Attrib V29    -0.559638838426234
#>     Attrib V3    -0.08455719469119098
#>     Attrib V30    -6.455436618815345E-4
#>     Attrib V31    -0.6397923790408659
#>     Attrib V32    0.09034284613734568
#>     Attrib V33    0.3984708764071481
#>     Attrib V34    0.026302318541797935
#>     Attrib V35    -0.03072935954126309
#>     Attrib V36    -0.4391363854736295
#>     Attrib V37    -0.4686913070836912
#>     Attrib V38    0.58574959615342
#>     Attrib V39    0.1462286506332127
#>     Attrib V4    0.3677623415093367
#>     Attrib V40    -0.3506306457190023
#>     Attrib V41    -0.051958361439444746
#>     Attrib V42    -0.15548106919294527
#>     Attrib V43    0.34483474481564363
#>     Attrib V44    0.22841199449980248
#>     Attrib V45    0.1483956687688029
#>     Attrib V46    -0.06289027063361972
#>     Attrib V47    -0.022972260908726772
#>     Attrib V48    0.07438041991256665
#>     Attrib V49    0.09398492237343486
#>     Attrib V5    -0.04927785968639195
#>     Attrib V50    0.06966778863235855
#>     Attrib V51    0.16610021822933516
#>     Attrib V52    0.14072194449051578
#>     Attrib V53    0.3337929048708986
#>     Attrib V54    0.4630998179081142
#>     Attrib V55    -0.37336210576261075
#>     Attrib V56    0.27307336462417453
#>     Attrib V57    0.16807488661481015
#>     Attrib V58    0.17117602417656938
#>     Attrib V59    0.3102625804719403
#>     Attrib V6    0.18023530912073402
#>     Attrib V60    0.436389838187763
#>     Attrib V7    0.2265413515813582
#>     Attrib V8    -0.11407578962353347
#>     Attrib V9    0.39630392318635405
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.5519158412926611
#>     Attrib V1    -0.04003508501930461
#>     Attrib V10    0.7494273434695956
#>     Attrib V11    1.1195273249087636
#>     Attrib V12    1.3184244084232266
#>     Attrib V13    0.4413050677982891
#>     Attrib V14    -0.26251607567972923
#>     Attrib V15    -0.263601557850908
#>     Attrib V16    -0.5192664814270576
#>     Attrib V17    -0.6633947869849061
#>     Attrib V18    -0.3606641703707926
#>     Attrib V19    -0.2757956750918376
#>     Attrib V2    -0.29326634506586435
#>     Attrib V20    -0.5023138885769747
#>     Attrib V21    -0.2810606095375628
#>     Attrib V22    -0.12582855388969488
#>     Attrib V23    0.3044411761475669
#>     Attrib V24    0.4859681340926617
#>     Attrib V25    0.38494783656329884
#>     Attrib V26    0.7134247488528733
#>     Attrib V27    0.9992064000013824
#>     Attrib V28    1.3641173749276116
#>     Attrib V29    1.027845882412062
#>     Attrib V3    -0.33022246525797666
#>     Attrib V30    0.6482286645151104
#>     Attrib V31    -0.41054966143427724
#>     Attrib V32    -0.178227583494795
#>     Attrib V33    -0.32972570016587294
#>     Attrib V34    -0.19595415872209274
#>     Attrib V35    0.13587754969486285
#>     Attrib V36    -0.3543258637091172
#>     Attrib V37    0.2757728208029451
#>     Attrib V38    0.11516982763170948
#>     Attrib V39    -0.09389791268404173
#>     Attrib V4    0.8603941273095591
#>     Attrib V40    -0.38190873682341975
#>     Attrib V41    0.6250128556181109
#>     Attrib V42    -0.17400079427835208
#>     Attrib V43    0.21909880745589097
#>     Attrib V44    0.15896840274374321
#>     Attrib V45    0.37527737796555133
#>     Attrib V46    0.8700154646949833
#>     Attrib V47    0.7010193054564463
#>     Attrib V48    0.3102315757126645
#>     Attrib V49    0.2929809068894067
#>     Attrib V5    0.8288438772918492
#>     Attrib V50    0.04611375772491927
#>     Attrib V51    0.8486348286978573
#>     Attrib V52    0.858149060785745
#>     Attrib V53    0.35953068267421384
#>     Attrib V54    0.0036796356917843252
#>     Attrib V55    -0.5919992195600214
#>     Attrib V56    -0.8419863688784817
#>     Attrib V57    -0.014449016820672633
#>     Attrib V58    0.1785511539174172
#>     Attrib V59    0.3633565219559533
#>     Attrib V6    0.6999638881114538
#>     Attrib V60    0.2817834119836575
#>     Attrib V7    -0.15133945074343444
#>     Attrib V8    -0.34013822826456347
#>     Attrib V9    0.7024893020151958
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.3619870915852962
#>     Attrib V1    0.022282339838705152
#>     Attrib V10    0.6145783350323183
#>     Attrib V11    0.7458528922418475
#>     Attrib V12    0.9250942043952837
#>     Attrib V13    0.24384039279190353
#>     Attrib V14    -0.28092736604166674
#>     Attrib V15    -0.2136229264148242
#>     Attrib V16    -0.40750716799139436
#>     Attrib V17    -0.5621757367806622
#>     Attrib V18    -0.3605385402901898
#>     Attrib V19    -0.26065894320590766
#>     Attrib V2    -0.21675745050596934
#>     Attrib V20    -0.4158623044941078
#>     Attrib V21    -0.2799391123546979
#>     Attrib V22    -0.24206116840488542
#>     Attrib V23    0.005309408896837555
#>     Attrib V24    0.23156655253643896
#>     Attrib V25    0.2154951689260017
#>     Attrib V26    0.38142451719427095
#>     Attrib V27    0.5747286534631466
#>     Attrib V28    0.8815587031649377
#>     Attrib V29    0.5219045568061592
#>     Attrib V3    -0.2505856804142049
#>     Attrib V30    0.521450610165445
#>     Attrib V31    -0.23212370465099394
#>     Attrib V32    0.03662995315532082
#>     Attrib V33    -0.06475216884116006
#>     Attrib V34    -0.0663359925937431
#>     Attrib V35    0.07887881739722917
#>     Attrib V36    -0.26440008875786036
#>     Attrib V37    0.07447918715067266
#>     Attrib V38    0.17814315259328017
#>     Attrib V39    -0.046470913048305224
#>     Attrib V4    0.776547050496205
#>     Attrib V40    -0.372318434737495
#>     Attrib V41    0.3217454056359658
#>     Attrib V42    -0.2777149077693521
#>     Attrib V43    0.06860566115162578
#>     Attrib V44    0.07888783617272899
#>     Attrib V45    0.24674696151825862
#>     Attrib V46    0.5931072050657934
#>     Attrib V47    0.4951100875320218
#>     Attrib V48    0.3116443305512234
#>     Attrib V49    0.25857253423519927
#>     Attrib V5    0.5418085924734886
#>     Attrib V50    -0.07104802049047945
#>     Attrib V51    0.5714006072519607
#>     Attrib V52    0.5633406306697164
#>     Attrib V53    0.2171202924897881
#>     Attrib V54    0.004272527831539794
#>     Attrib V55    -0.4863395485523668
#>     Attrib V56    -0.5974149155327484
#>     Attrib V57    -0.020745723664104192
#>     Attrib V58    0.046886785342670156
#>     Attrib V59    0.234028758476005
#>     Attrib V6    0.44739572948413314
#>     Attrib V60    0.3072967712712374
#>     Attrib V7    -0.0866117556048796
#>     Attrib V8    -0.3003213534533091
#>     Attrib V9    0.5334868608277257
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.43613848488885165
#>     Attrib V1    -0.1266359029360318
#>     Attrib V10    0.8444823318834602
#>     Attrib V11    1.0773296073349188
#>     Attrib V12    1.3639060147311
#>     Attrib V13    0.5420140063256348
#>     Attrib V14    -0.31062686730146066
#>     Attrib V15    -0.27193787296024874
#>     Attrib V16    -0.5083125773672427
#>     Attrib V17    -0.5804035890234102
#>     Attrib V18    -0.2905889708168748
#>     Attrib V19    -0.28740925212705054
#>     Attrib V2    -0.33573963690664527
#>     Attrib V20    -0.5458093524138817
#>     Attrib V21    -0.2906017050733023
#>     Attrib V22    -0.11408689368379522
#>     Attrib V23    0.2673602627610753
#>     Attrib V24    0.5208848798215614
#>     Attrib V25    0.5020560066694519
#>     Attrib V26    0.8065536831035828
#>     Attrib V27    1.0530820652375064
#>     Attrib V28    1.2840100367364249
#>     Attrib V29    0.8306825234471694
#>     Attrib V3    -0.3583570968162813
#>     Attrib V30    0.5771840014584215
#>     Attrib V31    -0.36557280098676337
#>     Attrib V32    -0.12972432232871636
#>     Attrib V33    -0.30685676192398137
#>     Attrib V34    -0.12744506528628374
#>     Attrib V35    0.13871305434352185
#>     Attrib V36    -0.3294855805333309
#>     Attrib V37    0.2026194286627554
#>     Attrib V38    0.050855307342507
#>     Attrib V39    -0.05117031470771802
#>     Attrib V4    0.7700046101924324
#>     Attrib V40    -0.37946979556879085
#>     Attrib V41    0.5763715354638173
#>     Attrib V42    -0.21899761784641225
#>     Attrib V43    0.2916743819618304
#>     Attrib V44    0.1563477123968615
#>     Attrib V45    0.336451597577166
#>     Attrib V46    0.8423862327920879
#>     Attrib V47    0.6918064348810725
#>     Attrib V48    0.29660918917443946
#>     Attrib V49    0.3389257123753713
#>     Attrib V5    0.7878634634247893
#>     Attrib V50    0.04549695678917791
#>     Attrib V51    0.8616685884040487
#>     Attrib V52    0.856429544028939
#>     Attrib V53    0.4481645749187948
#>     Attrib V54    -0.02885168356349769
#>     Attrib V55    -0.5467192008390896
#>     Attrib V56    -0.7908302205551808
#>     Attrib V57    -0.08684008414940232
#>     Attrib V58    0.17340967126198578
#>     Attrib V59    0.2985879583364005
#>     Attrib V6    0.6951262957810762
#>     Attrib V60    0.18972304965853182
#>     Attrib V7    -0.14392724365543713
#>     Attrib V8    -0.25824097955521225
#>     Attrib V9    0.6910996697258255
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.6297604258309332
#>     Attrib V1    0.02320883894768352
#>     Attrib V10    -0.5332071049292008
#>     Attrib V11    -0.5636925226896446
#>     Attrib V12    -0.6538459166447119
#>     Attrib V13    -0.1017847849037074
#>     Attrib V14    0.42338509660258694
#>     Attrib V15    0.19569835441815775
#>     Attrib V16    0.4725290449696462
#>     Attrib V17    0.3111013175745691
#>     Attrib V18    -0.04352582367831613
#>     Attrib V19    -0.08861590158383534
#>     Attrib V2    0.18791403075917928
#>     Attrib V20    0.1756008790061515
#>     Attrib V21    0.17761818977961344
#>     Attrib V22    -0.07465237028785983
#>     Attrib V23    -0.4591080709277059
#>     Attrib V24    -0.4198359267720518
#>     Attrib V25    0.030418252407860818
#>     Attrib V26    0.44526505222283436
#>     Attrib V27    0.2631414390804067
#>     Attrib V28    -0.26193234230292883
#>     Attrib V29    0.20271301132803063
#>     Attrib V3    0.3326981599433871
#>     Attrib V30    -0.2175669731128984
#>     Attrib V31    0.4557370044709005
#>     Attrib V32    -0.287422666658918
#>     Attrib V33    -0.16265892440555224
#>     Attrib V34    0.05985227389159896
#>     Attrib V35    0.002160075108942782
#>     Attrib V36    0.629880056107576
#>     Attrib V37    0.490626202463801
#>     Attrib V38    -0.3856123843513637
#>     Attrib V39    -0.0794575466621044
#>     Attrib V4    -0.3096110667071967
#>     Attrib V40    0.5153687935943563
#>     Attrib V41    0.0486107562878625
#>     Attrib V42    0.26574304501702645
#>     Attrib V43    -0.3983988407883993
#>     Attrib V44    -0.19799713029034438
#>     Attrib V45    -0.1556206395769966
#>     Attrib V46    -0.27471970342234464
#>     Attrib V47    -0.3401827253085182
#>     Attrib V48    -0.23767847768216385
#>     Attrib V49    -0.18413956306729296
#>     Attrib V5    -0.15721728348750694
#>     Attrib V50    0.22443962757504088
#>     Attrib V51    -0.4788891567633848
#>     Attrib V52    -0.45435662917200775
#>     Attrib V53    -0.07851045725388339
#>     Attrib V54    -0.266126765106832
#>     Attrib V55    0.5997948592939141
#>     Attrib V56    0.2866653420623344
#>     Attrib V57    0.3090756736168363
#>     Attrib V58    -0.1505236750389326
#>     Attrib V59    0.10846850723333168
#>     Attrib V6    -0.26686425977912737
#>     Attrib V60    -0.05982665205134519
#>     Attrib V7    -0.008781383628412435
#>     Attrib V8    0.1798211094995685
#>     Attrib V9    -0.7257057416672503
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.2615910165175305
#>     Attrib V1    0.14766048023053563
#>     Attrib V10    0.1417074096128303
#>     Attrib V11    0.07340595384209005
#>     Attrib V12    0.1918445610374708
#>     Attrib V13    -0.09359420269750524
#>     Attrib V14    -0.14281559457370663
#>     Attrib V15    -0.03690789386057983
#>     Attrib V16    -0.16385051274315016
#>     Attrib V17    -0.01085996213504824
#>     Attrib V18    0.2801773820555664
#>     Attrib V19    0.29554352615167423
#>     Attrib V2    -0.09330067414646198
#>     Attrib V20    0.1941469126859911
#>     Attrib V21    0.07526462810318174
#>     Attrib V22    0.21906048449403248
#>     Attrib V23    0.5101435882380821
#>     Attrib V24    0.3137094631318279
#>     Attrib V25    -0.03096244876508324
#>     Attrib V26    -0.6044739608490886
#>     Attrib V27    -0.5334845298771779
#>     Attrib V28    -0.16007169286773654
#>     Attrib V29    -0.4933086187805573
#>     Attrib V3    -0.17794654553287934
#>     Attrib V30    0.07838013112997476
#>     Attrib V31    -0.531147672794689
#>     Attrib V32    0.07877614315839634
#>     Attrib V33    0.33391967366356967
#>     Attrib V34    0.10552723852125126
#>     Attrib V35    0.06001160294394122
#>     Attrib V36    -0.3191862416529124
#>     Attrib V37    -0.41106984988070744
#>     Attrib V38    0.5085711934420388
#>     Attrib V39    0.05628741562881605
#>     Attrib V4    0.29726167971195117
#>     Attrib V40    -0.3440744221076757
#>     Attrib V41    -0.11527299583430316
#>     Attrib V42    -0.2263239264501986
#>     Attrib V43    0.3016999506838687
#>     Attrib V44    0.27572210859274565
#>     Attrib V45    0.21871577216545288
#>     Attrib V46    -0.013701486198635246
#>     Attrib V47    0.07571349964191224
#>     Attrib V48    0.13234610474966832
#>     Attrib V49    0.09591110156213849
#>     Attrib V5    0.011972698386615528
#>     Attrib V50    -0.03614226688607298
#>     Attrib V51    0.2504357468010971
#>     Attrib V52    0.19930317380432683
#>     Attrib V53    0.21349713852720723
#>     Attrib V54    0.39269807773270987
#>     Attrib V55    -0.3720200521857765
#>     Attrib V56    0.09508279367049906
#>     Attrib V57    0.028919613633288876
#>     Attrib V58    0.09361733981750033
#>     Attrib V59    0.07103517540012569
#>     Attrib V6    0.16331942436336563
#>     Attrib V60    0.27790245613215886
#>     Attrib V7    0.10417052212935231
#>     Attrib V8    -0.15748469146659677
#>     Attrib V9    0.38387086366151996
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.4692265697669354
#>     Attrib V1    0.14879247278996202
#>     Attrib V10    0.1614022001957063
#>     Attrib V11    0.1683573956606989
#>     Attrib V12    0.1942160282399507
#>     Attrib V13    -0.060693608066468244
#>     Attrib V14    -0.15476163417969874
#>     Attrib V15    -0.05970300768382042
#>     Attrib V16    -0.17326007074137184
#>     Attrib V17    -0.04708116761887727
#>     Attrib V18    0.32617670108024205
#>     Attrib V19    0.44023989924114754
#>     Attrib V2    -0.0429002590881624
#>     Attrib V20    0.15188526591646195
#>     Attrib V21    0.11249475254881737
#>     Attrib V22    0.4162894282761789
#>     Attrib V23    0.7748187993709419
#>     Attrib V24    0.4477868683742015
#>     Attrib V25    -0.04472742418759914
#>     Attrib V26    -0.679964647587163
#>     Attrib V27    -0.5897084871052868
#>     Attrib V28    -0.15889489294457068
#>     Attrib V29    -0.5023045040257949
#>     Attrib V3    -0.2657055094903598
#>     Attrib V30    0.08316901203614056
#>     Attrib V31    -0.7327762516707191
#>     Attrib V32    0.055982744287444965
#>     Attrib V33    0.41503806410506505
#>     Attrib V34    0.06720605423685337
#>     Attrib V35    0.029780135612922268
#>     Attrib V36    -0.39273068963339586
#>     Attrib V37    -0.48416566069285744
#>     Attrib V38    0.6487359740492922
#>     Attrib V39    0.07990426668792591
#>     Attrib V4    0.3785463059490951
#>     Attrib V40    -0.40118766938436956
#>     Attrib V41    -0.11374560470496663
#>     Attrib V42    -0.3099258323230654
#>     Attrib V43    0.47594933610060597
#>     Attrib V44    0.30858590326011015
#>     Attrib V45    0.26709070891080205
#>     Attrib V46    0.03912177061149267
#>     Attrib V47    0.04574669709477675
#>     Attrib V48    0.14638726303200927
#>     Attrib V49    0.12035772427440625
#>     Attrib V5    -0.033033241968576973
#>     Attrib V50    -0.08018630713998079
#>     Attrib V51    0.2558496930472505
#>     Attrib V52    0.3201271857806486
#>     Attrib V53    0.296323080670911
#>     Attrib V54    0.40728366992105947
#>     Attrib V55    -0.5243415416379094
#>     Attrib V56    0.11692696229495479
#>     Attrib V57    0.05482908529490131
#>     Attrib V58    0.14384289095139985
#>     Attrib V59    0.20766104808833868
#>     Attrib V6    0.16451895406672054
#>     Attrib V60    0.35159739890091557
#>     Attrib V7    0.20147974868934954
#>     Attrib V8    -0.15140182249277506
#>     Attrib V9    0.5094390276470117
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.20642708314348945
#>     Attrib V1    0.06456959810575559
#>     Attrib V10    -0.006445403360894995
#>     Attrib V11    -0.007032073246151568
#>     Attrib V12    5.955507300252579E-4
#>     Attrib V13    0.07271553252366886
#>     Attrib V14    0.06809279765592464
#>     Attrib V15    0.027103288915209835
#>     Attrib V16    -0.020754090837529493
#>     Attrib V17    0.03567357600509931
#>     Attrib V18    0.05069942470689282
#>     Attrib V19    0.009025159330953405
#>     Attrib V2    0.019770347960694844
#>     Attrib V20    0.01834579386954709
#>     Attrib V21    -0.033361828294120426
#>     Attrib V22    -0.09811068466459928
#>     Attrib V23    -0.0020645707936956313
#>     Attrib V24    -0.022373427003075437
#>     Attrib V25    4.979352560928889E-4
#>     Attrib V26    -0.11319475765371048
#>     Attrib V27    -0.04327702746543146
#>     Attrib V28    -0.06398633170299711
#>     Attrib V29    -0.028212903042271864
#>     Attrib V3    0.12658627399549008
#>     Attrib V30    0.03180290336903372
#>     Attrib V31    -0.0575197336348665
#>     Attrib V32    0.032147731819705094
#>     Attrib V33    0.08857771761523331
#>     Attrib V34    0.10639441368825295
#>     Attrib V35    0.034952791467528194
#>     Attrib V36    0.017078094302282288
#>     Attrib V37    0.06271424434213616
#>     Attrib V38    0.08311781051713023
#>     Attrib V39    0.09350353112273521
#>     Attrib V4    0.12378750923099786
#>     Attrib V40    0.0550609512615445
#>     Attrib V41    0.06925579914240337
#>     Attrib V42    0.04578572225679598
#>     Attrib V43    -0.0031237250803202586
#>     Attrib V44    0.040899394518479106
#>     Attrib V45    -0.016796065335828194
#>     Attrib V46    0.060471496968224944
#>     Attrib V47    0.07530136733545745
#>     Attrib V48    0.019368393003596777
#>     Attrib V49    0.04967318140679577
#>     Attrib V5    0.11028463130855462
#>     Attrib V50    -0.002491781761510073
#>     Attrib V51    0.07004887967953025
#>     Attrib V52    0.08213072144961409
#>     Attrib V53    0.09641356889115389
#>     Attrib V54    0.03423544948672306
#>     Attrib V55    0.04012901008857972
#>     Attrib V56    0.10129675436469274
#>     Attrib V57    0.10302036967058731
#>     Attrib V58    0.06082426233239029
#>     Attrib V59    0.12130331616507448
#>     Attrib V6    0.12788270540230845
#>     Attrib V60    0.1759327049702934
#>     Attrib V7    0.11722269059738527
#>     Attrib V8    -0.01320470791405812
#>     Attrib V9    0.031604625724757064
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.41011443854763363
#>     Attrib V1    0.1503728911897007
#>     Attrib V10    0.324774398393132
#>     Attrib V11    0.31974112308278085
#>     Attrib V12    0.39057041539883247
#>     Attrib V13    -0.028148546255529174
#>     Attrib V14    -0.2499498210355818
#>     Attrib V15    -0.05573018862694382
#>     Attrib V16    -0.28422985708069903
#>     Attrib V17    -0.1877338421144419
#>     Attrib V18    0.13307454612634226
#>     Attrib V19    0.16730679077303243
#>     Attrib V2    -0.12851504274201575
#>     Attrib V20    -0.01586370822831364
#>     Attrib V21    -0.05183089713575891
#>     Attrib V22    0.14277030997221155
#>     Attrib V23    0.4874996725782777
#>     Attrib V24    0.3213089053783131
#>     Attrib V25    0.07868266677024877
#>     Attrib V26    -0.3120170990338253
#>     Attrib V27    -0.3356678380012987
#>     Attrib V28    -0.005578431250242396
#>     Attrib V29    -0.3919900389675389
#>     Attrib V3    -0.29362061586067967
#>     Attrib V30    0.16492939155183556
#>     Attrib V31    -0.4514284520861119
#>     Attrib V32    0.11437257448933648
#>     Attrib V33    0.2882397451195163
#>     Attrib V34    0.038079014745825486
#>     Attrib V35    0.08018705326912512
#>     Attrib V36    -0.40347932988179236
#>     Attrib V37    -0.38107904217293453
#>     Attrib V38    0.3564461306304274
#>     Attrib V39    0.04714390597462462
#>     Attrib V4    0.3373480724292967
#>     Attrib V40    -0.3904165332362451
#>     Attrib V41    -0.10420190417032373
#>     Attrib V42    -0.3498028455011481
#>     Attrib V43    0.2658655432564997
#>     Attrib V44    0.26419055864787017
#>     Attrib V45    0.13924824531567356
#>     Attrib V46    0.11084081644074376
#>     Attrib V47    0.13951321073771847
#>     Attrib V48    0.19891230168511723
#>     Attrib V49    0.19822141290788903
#>     Attrib V5    0.008621042716895308
#>     Attrib V50    -0.07828005134911824
#>     Attrib V51    0.23165335678752386
#>     Attrib V52    0.2637380909038171
#>     Attrib V53    0.14296715758125722
#>     Attrib V54    0.3199148828310146
#>     Attrib V55    -0.4415937597225885
#>     Attrib V56    -0.04423796179313757
#>     Attrib V57    -0.050608446269719755
#>     Attrib V58    0.10851369551946334
#>     Attrib V59    0.06305164124761432
#>     Attrib V6    0.1614695387970854
#>     Attrib V60    0.26316561991331805
#>     Attrib V7    0.0973388976695841
#>     Attrib V8    -0.2143102336088921
#>     Attrib V9    0.5065650454997148
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.5888802783368536
#>     Attrib V1    -0.18678728402396597
#>     Attrib V10    -0.5295501509650609
#>     Attrib V11    -0.5303955493928584
#>     Attrib V12    -0.4433479725053998
#>     Attrib V13    -0.07694077053815326
#>     Attrib V14    0.3249677931328412
#>     Attrib V15    0.2163604268180244
#>     Attrib V16    0.4543448122839193
#>     Attrib V17    0.17052462513675576
#>     Attrib V18    -0.42651976458224933
#>     Attrib V19    -0.5762163954225228
#>     Attrib V2    0.06336856303754075
#>     Attrib V20    -0.27867619938391774
#>     Attrib V21    -0.2532460303776151
#>     Attrib V22    -0.7376440301644784
#>     Attrib V23    -1.4618000071078194
#>     Attrib V24    -0.9832890963981274
#>     Attrib V25    -0.10642718565659633
#>     Attrib V26    0.7749967664343094
#>     Attrib V27    0.6820465694454033
#>     Attrib V28    0.0588657970784148
#>     Attrib V29    0.6064144157097204
#>     Attrib V3    0.48705527516759317
#>     Attrib V30    -0.30903466798023277
#>     Attrib V31    0.9347571717389914
#>     Attrib V32    -0.17554243025757574
#>     Attrib V33    -0.38617541418481915
#>     Attrib V34    0.04913747943236911
#>     Attrib V35    -0.142734645397412
#>     Attrib V36    0.3923356016045192
#>     Attrib V37    0.5153013365677103
#>     Attrib V38    -1.1142201473765965
#>     Attrib V39    -0.30941320981360104
#>     Attrib V4    -0.21995190873049375
#>     Attrib V40    0.6244015532971802
#>     Attrib V41    0.2983925439291188
#>     Attrib V42    0.556716563382931
#>     Attrib V43    -0.7371635671991996
#>     Attrib V44    -0.6946800829118785
#>     Attrib V45    -0.5778894729816688
#>     Attrib V46    -0.18417448314111987
#>     Attrib V47    -0.215535183771484
#>     Attrib V48    -0.0932001882155288
#>     Attrib V49    -0.4130983346037811
#>     Attrib V5    0.226603287607122
#>     Attrib V50    0.050235014234243626
#>     Attrib V51    -0.4441468705168799
#>     Attrib V52    -0.631542968510702
#>     Attrib V53    -0.18327658574066935
#>     Attrib V54    -0.6234139948321982
#>     Attrib V55    0.7277730150736182
#>     Attrib V56    0.02941377077349267
#>     Attrib V57    0.27117077699585546
#>     Attrib V58    -0.32003527158340245
#>     Attrib V59    0.040667280645059554
#>     Attrib V6    -0.3016478099787806
#>     Attrib V60    -0.17411821760436766
#>     Attrib V7    -0.2778711226917979
#>     Attrib V8    0.03919699374541773
#>     Attrib V9    -0.9438797933469935
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.20930922380246963
#>     Attrib V1    0.021370272610151463
#>     Attrib V10    -0.006876867510551764
#>     Attrib V11    -0.052655476661685546
#>     Attrib V12    -0.05037892894013568
#>     Attrib V13    0.025348610147086448
#>     Attrib V14    0.031640844813051114
#>     Attrib V15    0.028734719297865065
#>     Attrib V16    0.09419534762141206
#>     Attrib V17    0.09261950611229418
#>     Attrib V18    0.08806786737930382
#>     Attrib V19    0.01834638420055959
#>     Attrib V2    -0.012047765665053799
#>     Attrib V20    -0.0739442124297347
#>     Attrib V21    -0.10032175982927602
#>     Attrib V22    -0.09599362495446892
#>     Attrib V23    -0.1048517384831043
#>     Attrib V24    -0.034385079690982104
#>     Attrib V25    0.011365770349735429
#>     Attrib V26    -0.031395968495753
#>     Attrib V27    -0.05909008128746483
#>     Attrib V28    -0.038548074088003315
#>     Attrib V29    -0.031996826758028556
#>     Attrib V3    0.09911617142901523
#>     Attrib V30    -0.04236934040326165
#>     Attrib V31    0.00532988862175343
#>     Attrib V32    0.035641688550415454
#>     Attrib V33    0.0599888036118377
#>     Attrib V34    0.10343793828327978
#>     Attrib V35    0.05957641804360175
#>     Attrib V36    0.09196272225508546
#>     Attrib V37    0.12899914691609135
#>     Attrib V38    0.041845322949026285
#>     Attrib V39    0.04156917264816628
#>     Attrib V4    0.051966282703187074
#>     Attrib V40    0.06969800206925861
#>     Attrib V41    0.09600658014783371
#>     Attrib V42    0.10918845532231401
#>     Attrib V43    0.008483354061566514
#>     Attrib V44    -0.005792093017458485
#>     Attrib V45    -0.0011412630077558665
#>     Attrib V46    0.03741493097582871
#>     Attrib V47    0.0304382578592474
#>     Attrib V48    0.0013296866971188094
#>     Attrib V49    -0.019976299733153267
#>     Attrib V5    0.07101512541836005
#>     Attrib V50    0.06736899728157382
#>     Attrib V51    0.09510434107586736
#>     Attrib V52    0.10239120500630977
#>     Attrib V53    0.10944911367470805
#>     Attrib V54    -0.009602382508430825
#>     Attrib V55    0.09386662374635309
#>     Attrib V56    0.11651505719218143
#>     Attrib V57    0.10034756255315136
#>     Attrib V58    0.1103265217569457
#>     Attrib V59    0.018011811282200543
#>     Attrib V6    0.09965974187980937
#>     Attrib V60    0.11327243286291139
#>     Attrib V7    0.06313606289401527
#>     Attrib V8    0.013390109836911501
#>     Attrib V9    0.014460441255786164
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.1797544115170149
#>     Attrib V1    0.23032786407728667
#>     Attrib V10    0.10045636396576754
#>     Attrib V11    0.031063893411286434
#>     Attrib V12    0.03508748017235796
#>     Attrib V13    -0.08930502536615349
#>     Attrib V14    -0.057608395309055
#>     Attrib V15    0.08788901271220488
#>     Attrib V16    -0.07722583580913105
#>     Attrib V17    -0.030156657464526476
#>     Attrib V18    0.16785173821568442
#>     Attrib V19    0.2258343416892271
#>     Attrib V2    0.07328526516766538
#>     Attrib V20    0.14105984812499722
#>     Attrib V21    0.11152564278413327
#>     Attrib V22    0.18763682613080013
#>     Attrib V23    0.22704069146835335
#>     Attrib V24    0.13096526317723445
#>     Attrib V25    -0.16926339562925646
#>     Attrib V26    -0.5093906367816368
#>     Attrib V27    -0.4063348124568102
#>     Attrib V28    -0.13573022910979815
#>     Attrib V29    -0.3035053753057515
#>     Attrib V3    -0.042792259090245977
#>     Attrib V30    0.1046755540459779
#>     Attrib V31    -0.3123910465167986
#>     Attrib V32    0.00828078690202943
#>     Attrib V33    0.2739409866876872
#>     Attrib V34    9.203815432658975E-4
#>     Attrib V35    0.018850049561946174
#>     Attrib V36    -0.2649213183253775
#>     Attrib V37    -0.2582569134866255
#>     Attrib V38    0.396606928113741
#>     Attrib V39    0.10625645150613902
#>     Attrib V4    0.3452965293435473
#>     Attrib V40    -0.26107002086460795
#>     Attrib V41    -0.008227110612642053
#>     Attrib V42    -0.1571058884288503
#>     Attrib V43    0.2000115956420889
#>     Attrib V44    0.1541401077368062
#>     Attrib V45    0.1201469568475527
#>     Attrib V46    -0.04411998256654768
#>     Attrib V47    -0.027216645815825464
#>     Attrib V48    0.12044340852934567
#>     Attrib V49    0.030728543524965117
#>     Attrib V5    0.0539104669808321
#>     Attrib V50    0.010396640296530524
#>     Attrib V51    0.1609070205285532
#>     Attrib V52    0.1264400484304178
#>     Attrib V53    0.19470706874040705
#>     Attrib V54    0.25655984347594263
#>     Attrib V55    -0.17409412460121437
#>     Attrib V56    0.1282005877817279
#>     Attrib V57    0.15356903804090563
#>     Attrib V58    0.03916186037039106
#>     Attrib V59    0.13264508896759458
#>     Attrib V6    0.12515863976691036
#>     Attrib V60    0.27724073417324036
#>     Attrib V7    0.04434754631925521
#>     Attrib V8    -0.12065320172864323
#>     Attrib V9    0.233092945061245
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.6206154753275475
#>     Attrib V1    -0.029719792456441536
#>     Attrib V10    -0.48477776395292405
#>     Attrib V11    -0.5329209366719605
#>     Attrib V12    -0.673202491274018
#>     Attrib V13    -0.13969500111283062
#>     Attrib V14    0.3624296832838059
#>     Attrib V15    0.19513987269886748
#>     Attrib V16    0.4494518253555295
#>     Attrib V17    0.2977648009168899
#>     Attrib V18    -0.03632701013355961
#>     Attrib V19    -0.14793209992647904
#>     Attrib V2    0.1760600902461866
#>     Attrib V20    0.17526236198190165
#>     Attrib V21    0.1862102758777231
#>     Attrib V22    -0.062441153507971504
#>     Attrib V23    -0.44640064736720764
#>     Attrib V24    -0.3872684585441597
#>     Attrib V25    0.06815364151943701
#>     Attrib V26    0.43363461910159135
#>     Attrib V27    0.2702337626021546
#>     Attrib V28    -0.23161233372137727
#>     Attrib V29    0.22841871989439858
#>     Attrib V3    0.362600044059239
#>     Attrib V30    -0.2761150801083832
#>     Attrib V31    0.39551853242396345
#>     Attrib V32    -0.21017792015831124
#>     Attrib V33    -0.17683527422673137
#>     Attrib V34    0.06098917618914013
#>     Attrib V35    -0.03904457976619751
#>     Attrib V36    0.6651863693167238
#>     Attrib V37    0.45821866752683843
#>     Attrib V38    -0.42632004738659035
#>     Attrib V39    -0.020200446191190054
#>     Attrib V4    -0.31117158100889525
#>     Attrib V40    0.45234089775378516
#>     Attrib V41    -0.017615028054469645
#>     Attrib V42    0.27889373945821283
#>     Attrib V43    -0.3705746051031284
#>     Attrib V44    -0.16932469396221833
#>     Attrib V45    -0.213105132364439
#>     Attrib V46    -0.25345945771171985
#>     Attrib V47    -0.2791183843327437
#>     Attrib V48    -0.2124600917068291
#>     Attrib V49    -0.1422917830948385
#>     Attrib V5    -0.13605605091551642
#>     Attrib V50    0.12306803314163545
#>     Attrib V51    -0.40596692279936925
#>     Attrib V52    -0.423153864483894
#>     Attrib V53    -0.11467719344398142
#>     Attrib V54    -0.3012855589480776
#>     Attrib V55    0.6099899672736069
#>     Attrib V56    0.31232548594857634
#>     Attrib V57    0.26878162449883625
#>     Attrib V58    -0.10890050470618491
#>     Attrib V59    0.14741361555889657
#>     Attrib V6    -0.3235980983972329
#>     Attrib V60    -0.0021828977364243642
#>     Attrib V7    0.014802056549500838
#>     Attrib V8    0.21934158910956178
#>     Attrib V9    -0.6539479681105986
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.3915976268792049
#>     Attrib V1    -0.0808893085301775
#>     Attrib V10    0.42318137444460435
#>     Attrib V11    0.46700677884722674
#>     Attrib V12    0.7615988115110929
#>     Attrib V13    0.14862191058603424
#>     Attrib V14    -0.27036006365365756
#>     Attrib V15    -0.1915080235537511
#>     Attrib V16    -0.44792942744514913
#>     Attrib V17    -0.341459600886689
#>     Attrib V18    0.026344395583054556
#>     Attrib V19    0.11129580354834125
#>     Attrib V2    -0.2846382569682912
#>     Attrib V20    -0.24944849159875335
#>     Attrib V21    -0.32933038148486465
#>     Attrib V22    0.01912403835739947
#>     Attrib V23    0.46929974290990484
#>     Attrib V24    0.4991907243023487
#>     Attrib V25    0.3142940352047187
#>     Attrib V26    -0.00933431833831079
#>     Attrib V27    0.05400473277122909
#>     Attrib V28    0.4194364245772586
#>     Attrib V29    -0.08320268904508585
#>     Attrib V3    -0.4289264244961617
#>     Attrib V30    0.24590206540038545
#>     Attrib V31    -0.3308227808251614
#>     Attrib V32    0.1253194328957923
#>     Attrib V33    0.2097329270861499
#>     Attrib V34    0.06707564317933362
#>     Attrib V35    0.1290827854146701
#>     Attrib V36    -0.42753890162617325
#>     Attrib V37    -0.3701183393851361
#>     Attrib V38    0.24195942060499462
#>     Attrib V39    -0.05114254324304528
#>     Attrib V4    0.3970633086965167
#>     Attrib V40    -0.39294578426171667
#>     Attrib V41    0.05141268679815486
#>     Attrib V42    -0.2415151489773991
#>     Attrib V43    0.2765580248029374
#>     Attrib V44    0.17686987308701282
#>     Attrib V45    0.2467509811123339
#>     Attrib V46    0.3320820107356484
#>     Attrib V47    0.2922766077767086
#>     Attrib V48    0.22287331795968218
#>     Attrib V49    0.2841606028342927
#>     Attrib V5    0.19763135898671766
#>     Attrib V50    -0.150350584665053
#>     Attrib V51    0.40183773450819715
#>     Attrib V52    0.5307675229920714
#>     Attrib V53    0.19878294357358361
#>     Attrib V54    0.18058628535930402
#>     Attrib V55    -0.467173740411783
#>     Attrib V56    -0.34946387782112714
#>     Attrib V57    -0.23054204096633854
#>     Attrib V58    0.12042814668325835
#>     Attrib V59    0.015781280230140724
#>     Attrib V6    0.312669137624366
#>     Attrib V60    0.19696820130544415
#>     Attrib V7    0.11401576019556944
#>     Attrib V8    -0.2469617756079691
#>     Attrib V9    0.5579528249374991
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.41821620726573205
#>     Attrib V1    0.2485726633720802
#>     Attrib V10    0.18856640097529925
#>     Attrib V11    0.0821245952505677
#>     Attrib V12    0.24152407208103116
#>     Attrib V13    -0.05432726734229631
#>     Attrib V14    -0.12780006938025476
#>     Attrib V15    -0.02649680872791938
#>     Attrib V16    -0.2323142145583843
#>     Attrib V17    -0.036551847951316364
#>     Attrib V18    0.3833209570383722
#>     Attrib V19    0.45330520021811116
#>     Attrib V2    -0.07010046309570427
#>     Attrib V20    0.21414023728226175
#>     Attrib V21    0.18746788149452484
#>     Attrib V22    0.48899239016255924
#>     Attrib V23    0.904126989528241
#>     Attrib V24    0.5388247368021876
#>     Attrib V25    -0.047222414372255106
#>     Attrib V26    -0.7282149882898108
#>     Attrib V27    -0.65786964820955
#>     Attrib V28    -0.2185777115223619
#>     Attrib V29    -0.5479713306968561
#>     Attrib V3    -0.26914666805802445
#>     Attrib V30    0.08350815532725445
#>     Attrib V31    -0.7734545106350537
#>     Attrib V32    0.03850564857364618
#>     Attrib V33    0.40478005602274353
#>     Attrib V34    0.01701414683749028
#>     Attrib V35    0.050441681880620336
#>     Attrib V36    -0.2864493924516904
#>     Attrib V37    -0.41255511160339114
#>     Attrib V38    0.7662987264695602
#>     Attrib V39    0.13337144540181559
#>     Attrib V4    0.2725792925034244
#>     Attrib V40    -0.4367903789153286
#>     Attrib V41    -0.14678526507942644
#>     Attrib V42    -0.36870096996445156
#>     Attrib V43    0.5271668858631772
#>     Attrib V44    0.45462747757018235
#>     Attrib V45    0.2977110578121956
#>     Attrib V46    -0.046282931560590976
#>     Attrib V47    -0.023901526961793713
#>     Attrib V48    0.09812309108253861
#>     Attrib V49    0.14974766309779866
#>     Attrib V5    -0.09365605659696312
#>     Attrib V50    -0.04843632232558365
#>     Attrib V51    0.28485718061564647
#>     Attrib V52    0.32260316403888284
#>     Attrib V53    0.24995629687330953
#>     Attrib V54    0.48852519791506704
#>     Attrib V55    -0.4633300433777685
#>     Attrib V56    0.1366665979727475
#>     Attrib V57    -0.011432423246978704
#>     Attrib V58    0.16178566135940498
#>     Attrib V59    0.19152611901128477
#>     Attrib V6    0.19194405899398972
#>     Attrib V60    0.404261947162184
#>     Attrib V7    0.2760424431205994
#>     Attrib V8    -0.22010396517416708
#>     Attrib V9    0.5065583314995747
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.4525828489115814
#>     Attrib V1    -0.1776208549445308
#>     Attrib V10    -0.49486054723455375
#>     Attrib V11    -0.48919360013781954
#>     Attrib V12    -0.4129609010259479
#>     Attrib V13    -0.05127562771706871
#>     Attrib V14    0.3328980903969512
#>     Attrib V15    0.17844499924168714
#>     Attrib V16    0.408094199214463
#>     Attrib V17    0.12672930607334792
#>     Attrib V18    -0.4410863037265246
#>     Attrib V19    -0.631022907188497
#>     Attrib V2    0.009625284360013602
#>     Attrib V20    -0.30660289257072887
#>     Attrib V21    -0.20484368724130447
#>     Attrib V22    -0.8340457426672622
#>     Attrib V23    -1.523407736157161
#>     Attrib V24    -0.9950391545638702
#>     Attrib V25    -0.08763507428353355
#>     Attrib V26    0.7883868402868843
#>     Attrib V27    0.7685626784058124
#>     Attrib V28    0.09329674401650219
#>     Attrib V29    0.6455498824518325
#>     Attrib V3    0.4032220262716924
#>     Attrib V30    -0.2641573014756443
#>     Attrib V31    0.9482999305048027
#>     Attrib V32    -0.21359658134178525
#>     Attrib V33    -0.40307787624727104
#>     Attrib V34    0.0033681711743586075
#>     Attrib V35    -0.1573770449322302
#>     Attrib V36    0.36104746430339824
#>     Attrib V37    0.5437345942957765
#>     Attrib V38    -1.1117796567359068
#>     Attrib V39    -0.29610350096898796
#>     Attrib V4    -0.09344542140735505
#>     Attrib V40    0.6558410036022784
#>     Attrib V41    0.38546790157677385
#>     Attrib V42    0.5199877101115973
#>     Attrib V43    -0.7231589179328811
#>     Attrib V44    -0.683226683235828
#>     Attrib V45    -0.661857012066301
#>     Attrib V46    -0.22930855234706424
#>     Attrib V47    -0.2455562270628449
#>     Attrib V48    -0.07427295215911073
#>     Attrib V49    -0.43382510016939085
#>     Attrib V5    0.31551548612096775
#>     Attrib V50    0.0016093155234104802
#>     Attrib V51    -0.44306049302956835
#>     Attrib V52    -0.5811918143417703
#>     Attrib V53    -0.2305008815316123
#>     Attrib V54    -0.6204740304891059
#>     Attrib V55    0.63569626307863
#>     Attrib V56    -0.10399642915562102
#>     Attrib V57    0.3488613074189056
#>     Attrib V58    -0.34287106778558823
#>     Attrib V59    0.10455810377278135
#>     Attrib V6    -0.2749856879429101
#>     Attrib V60    -0.09002238121184357
#>     Attrib V7    -0.21739926396682488
#>     Attrib V8    -0.060690680657838295
#>     Attrib V9    -0.8945049610739497
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.1344478405626394
#>     Attrib V1    0.27356554265196836
#>     Attrib V10    0.025746811836528716
#>     Attrib V11    -0.043637568079429874
#>     Attrib V12    0.011144178105428807
#>     Attrib V13    -0.08714067722973648
#>     Attrib V14    -1.7676754056598665E-4
#>     Attrib V15    0.01991212970523519
#>     Attrib V16    -0.011432582711386814
#>     Attrib V17    -0.009850593913894127
#>     Attrib V18    0.16485316852922338
#>     Attrib V19    0.17548619186775977
#>     Attrib V2    0.06691140572237113
#>     Attrib V20    0.1728605122516202
#>     Attrib V21    0.13190210948417577
#>     Attrib V22    0.1280610682147076
#>     Attrib V23    0.21986430835126552
#>     Attrib V24    0.15398483980965452
#>     Attrib V25    -0.16515380737994334
#>     Attrib V26    -0.5567371917127591
#>     Attrib V27    -0.5025967499081092
#>     Attrib V28    -0.2527795056249791
#>     Attrib V29    -0.2950802019304325
#>     Attrib V3    -0.02082518917671527
#>     Attrib V30    0.007826662754421551
#>     Attrib V31    -0.32512139820430136
#>     Attrib V32    0.018478330919719312
#>     Attrib V33    0.1939000287429176
#>     Attrib V34    0.018151758089277076
#>     Attrib V35    -0.01682018108675269
#>     Attrib V36    -0.24158353991872902
#>     Attrib V37    -0.24915762523649326
#>     Attrib V38    0.3213778912864041
#>     Attrib V39    0.07643959963417962
#>     Attrib V4    0.34879422175280844
#>     Attrib V40    -0.1778810387498811
#>     Attrib V41    -0.06851609273610175
#>     Attrib V42    -0.13471396386238862
#>     Attrib V43    0.21157734406953935
#>     Attrib V44    0.10113835804282423
#>     Attrib V45    0.010982474831566953
#>     Attrib V46    -0.0046823914581416845
#>     Attrib V47    -0.024330965420125333
#>     Attrib V48    0.11201511997365461
#>     Attrib V49    0.060338200178965046
#>     Attrib V5    0.07205247641821916
#>     Attrib V50    0.029101392812280698
#>     Attrib V51    0.12900683399508434
#>     Attrib V52    0.11912773762441956
#>     Attrib V53    0.21134340116349568
#>     Attrib V54    0.33128553033302793
#>     Attrib V55    -0.1477555360011723
#>     Attrib V56    0.20178830280936755
#>     Attrib V57    0.16016363169247566
#>     Attrib V58    0.14895594072295026
#>     Attrib V59    0.22086180979081757
#>     Attrib V6    0.1165609804894878
#>     Attrib V60    0.33909430742523605
#>     Attrib V7    0.10090283243698206
#>     Attrib V8    -0.1990564621159545
#>     Attrib V9    0.19719468799895504
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.21529508563939556
#>     Attrib V1    0.28432115207540737
#>     Attrib V10    -0.048411986331079244
#>     Attrib V11    -0.11677598402725495
#>     Attrib V12    -0.006133668233709071
#>     Attrib V13    -0.08735831657854372
#>     Attrib V14    -0.03799895604843815
#>     Attrib V15    0.04413702504572719
#>     Attrib V16    -0.13231165593326355
#>     Attrib V17    0.033676422423171495
#>     Attrib V18    0.2638869749725993
#>     Attrib V19    0.290691302460751
#>     Attrib V2    -0.011251989891101813
#>     Attrib V20    0.18291932816818132
#>     Attrib V21    0.15001051939754004
#>     Attrib V22    0.318704260571376
#>     Attrib V23    0.5704473942018784
#>     Attrib V24    0.2676814979082787
#>     Attrib V25    -0.16010547514730672
#>     Attrib V26    -0.7152427828478567
#>     Attrib V27    -0.7486682492760174
#>     Attrib V28    -0.4160348126755194
#>     Attrib V29    -0.631398200773492
#>     Attrib V3    -0.035708500872204556
#>     Attrib V30    -0.09991031476953836
#>     Attrib V31    -0.5514659067843772
#>     Attrib V32    0.04892536348741622
#>     Attrib V33    0.34755768239046164
#>     Attrib V34    0.058092666184940654
#>     Attrib V35    0.035335714442054876
#>     Attrib V36    -0.2957807793030134
#>     Attrib V37    -0.34209914003704034
#>     Attrib V38    0.49644514727062966
#>     Attrib V39    0.10942398665042224
#>     Attrib V4    0.3085104290355258
#>     Attrib V40    -0.3032530444116784
#>     Attrib V41    -0.0967621103433689
#>     Attrib V42    -0.18099951378515436
#>     Attrib V43    0.32758168067730986
#>     Attrib V44    0.1882345815316302
#>     Attrib V45    0.12449270817631006
#>     Attrib V46    -0.0700924859057738
#>     Attrib V47    0.020390191620162132
#>     Attrib V48    0.03798891442001742
#>     Attrib V49    0.06525000130018827
#>     Attrib V5    -0.057203090278733486
#>     Attrib V50    -0.0026030502729616255
#>     Attrib V51    0.12856845851682586
#>     Attrib V52    0.2000300311003804
#>     Attrib V53    0.2801125432995719
#>     Attrib V54    0.46571960681878216
#>     Attrib V55    -0.2248881546248727
#>     Attrib V56    0.3024559833683855
#>     Attrib V57    0.08240740445886319
#>     Attrib V58    0.14226519086894784
#>     Attrib V59    0.26229202191217255
#>     Attrib V6    0.13270841743210507
#>     Attrib V60    0.3767942627000003
#>     Attrib V7    0.19921233751720765
#>     Attrib V8    -0.15823610733988666
#>     Attrib V9    0.26699233057418953
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.4786872449328448
#>     Attrib V1    -0.03357968564444294
#>     Attrib V10    -0.4643207675972062
#>     Attrib V11    -0.48324947756480985
#>     Attrib V12    -0.5671957649916325
#>     Attrib V13    -0.14732614172949762
#>     Attrib V14    0.3096587095405635
#>     Attrib V15    0.23652555520738186
#>     Attrib V16    0.3877338400063837
#>     Attrib V17    0.3526097135472272
#>     Attrib V18    -0.08164047985626328
#>     Attrib V19    -0.11469960685210458
#>     Attrib V2    0.13054154612366065
#>     Attrib V20    0.11533848766202343
#>     Attrib V21    0.11517427703893271
#>     Attrib V22    -0.10582692816763499
#>     Attrib V23    -0.4055881959916312
#>     Attrib V24    -0.3694401259850751
#>     Attrib V25    0.048969329693856034
#>     Attrib V26    0.41461956602301914
#>     Attrib V27    0.20860388092950652
#>     Attrib V28    -0.17447373384732476
#>     Attrib V29    0.2117742228188228
#>     Attrib V3    0.2669929002339902
#>     Attrib V30    -0.20465578607982504
#>     Attrib V31    0.35565047186618276
#>     Attrib V32    -0.14807818961682756
#>     Attrib V33    -0.19800009657336412
#>     Attrib V34    0.03226852800571201
#>     Attrib V35    -0.00420094376451784
#>     Attrib V36    0.5850248172683159
#>     Attrib V37    0.41152308154857553
#>     Attrib V38    -0.36689104521413446
#>     Attrib V39    -0.06831168580586548
#>     Attrib V4    -0.22390441766377814
#>     Attrib V40    0.44926823077274414
#>     Attrib V41    0.04554213509482658
#>     Attrib V42    0.21981876354955762
#>     Attrib V43    -0.2902465991653191
#>     Attrib V44    -0.20828522113045866
#>     Attrib V45    -0.2038190776463625
#>     Attrib V46    -0.2106778572541595
#>     Attrib V47    -0.25298831449838416
#>     Attrib V48    -0.1949661065046314
#>     Attrib V49    -0.18992045302769114
#>     Attrib V5    -0.15502871988783012
#>     Attrib V50    0.16353496129047976
#>     Attrib V51    -0.38209752625240034
#>     Attrib V52    -0.32353650310194804
#>     Attrib V53    -0.14366045601826402
#>     Attrib V54    -0.261386651585495
#>     Attrib V55    0.5291751784224414
#>     Attrib V56    0.2785105337639509
#>     Attrib V57    0.3181627426823418
#>     Attrib V58    -0.09531373821795648
#>     Attrib V59    0.10936057448441014
#>     Attrib V6    -0.23483451273674405
#>     Attrib V60    -0.05790143354198871
#>     Attrib V7    -0.04510672736254497
#>     Attrib V8    0.1725506164136838
#>     Attrib V9    -0.5411247378584
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.5992608615870013
#>     Attrib V1    -0.2445810010630886
#>     Attrib V10    1.0526314376984844
#>     Attrib V11    1.5944199704478166
#>     Attrib V12    1.7955789210456201
#>     Attrib V13    0.8223862452125874
#>     Attrib V14    -0.2744833840416626
#>     Attrib V15    -0.3238644860316805
#>     Attrib V16    -0.5943108986020574
#>     Attrib V17    -0.6013579890197657
#>     Attrib V18    -0.2547484467608143
#>     Attrib V19    -0.26220577017408825
#>     Attrib V2    -0.29931679315650017
#>     Attrib V20    -0.5751463388795318
#>     Attrib V21    -0.21768036833245472
#>     Attrib V22    0.05161017298161389
#>     Attrib V23    0.5647508311161075
#>     Attrib V24    0.7166646969328159
#>     Attrib V25    0.5803812554676073
#>     Attrib V26    1.1865302917834186
#>     Attrib V27    1.5226397588890601
#>     Attrib V28    1.8955324921080157
#>     Attrib V29    1.4849077940470994
#>     Attrib V3    -0.30640737704892945
#>     Attrib V30    0.8143735645668381
#>     Attrib V31    -0.6215781425993658
#>     Attrib V32    -0.3492854300826967
#>     Attrib V33    -0.6345758585068599
#>     Attrib V34    -0.31064532115707194
#>     Attrib V35    0.19477419879957625
#>     Attrib V36    -0.5327006070975033
#>     Attrib V37    0.31514325806268717
#>     Attrib V38    -0.08613561005002683
#>     Attrib V39    -0.10439103075206818
#>     Attrib V4    0.7059638889674882
#>     Attrib V40    -0.45405310232870816
#>     Attrib V41    0.866432833911247
#>     Attrib V42    -0.07881632039928058
#>     Attrib V43    0.4530122164805234
#>     Attrib V44    0.4451669771644789
#>     Attrib V45    0.5944488312487245
#>     Attrib V46    1.1488480849333105
#>     Attrib V47    0.911655476648944
#>     Attrib V48    0.3206418825763073
#>     Attrib V49    0.4290150825563861
#>     Attrib V5    1.0885814505245672
#>     Attrib V50    0.21494231082237475
#>     Attrib V51    1.2006857198252272
#>     Attrib V52    1.2224403016588283
#>     Attrib V53    0.7924154660973608
#>     Attrib V54    -0.04746175148203117
#>     Attrib V55    -0.6106342188057142
#>     Attrib V56    -1.0277171411652042
#>     Attrib V57    -0.0076156838073693335
#>     Attrib V58    0.3573125773450738
#>     Attrib V59    0.2439464032423988
#>     Attrib V6    0.9467763421321419
#>     Attrib V60    -0.18438881081112277
#>     Attrib V7    -0.3568238254460012
#>     Attrib V8    -0.20091321486537433
#>     Attrib V9    0.939915192111766
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.2497189621534184
#>     Attrib V1    -0.03184754764653671
#>     Attrib V10    -0.11865143194291328
#>     Attrib V11    -0.15339919396334942
#>     Attrib V12    -0.12596349248577293
#>     Attrib V13    -0.058565440166527025
#>     Attrib V14    0.1180289206819741
#>     Attrib V15    0.02911056377595183
#>     Attrib V16    0.09535583380387314
#>     Attrib V17    0.11867517935438354
#>     Attrib V18    0.0022029913439482744
#>     Attrib V19    0.021859891199808534
#>     Attrib V2    0.031788187439706066
#>     Attrib V20    -0.040693009968341444
#>     Attrib V21    -0.03165971281729499
#>     Attrib V22    -0.06704225790557149
#>     Attrib V23    -0.11170365554688451
#>     Attrib V24    -0.09806048423838472
#>     Attrib V25    0.0459495031981047
#>     Attrib V26    0.0734327234674534
#>     Attrib V27    0.04181732134481066
#>     Attrib V28    -0.04526351773128164
#>     Attrib V29    0.05515363897499345
#>     Attrib V3    0.042585210693497966
#>     Attrib V30    -0.049424288168770834
#>     Attrib V31    0.07844522464420307
#>     Attrib V32    -0.019689168983641325
#>     Attrib V33    0.08058410165454061
#>     Attrib V34    0.07906559464449443
#>     Attrib V35    0.13638963649061883
#>     Attrib V36    0.2573232059478841
#>     Attrib V37    0.21953399571485882
#>     Attrib V38    -0.09928146452648899
#>     Attrib V39    0.010859108792273893
#>     Attrib V4    -0.02299863668649673
#>     Attrib V40    0.16591796201483855
#>     Attrib V41    0.07783380695865214
#>     Attrib V42    0.1479011792527963
#>     Attrib V43    -0.01320808177261936
#>     Attrib V44    0.008915987718343964
#>     Attrib V45    -0.06263459727624929
#>     Attrib V46    -0.07600128502400379
#>     Attrib V47    -0.06917282720925012
#>     Attrib V48    0.010024410463930431
#>     Attrib V49    -0.06015317270319741
#>     Attrib V5    -0.011793943454963127
#>     Attrib V50    0.021934473059331973
#>     Attrib V51    -0.0747348521214212
#>     Attrib V52    -0.052277027278178456
#>     Attrib V53    -0.017348541023811625
#>     Attrib V54    -0.07101699104601887
#>     Attrib V55    0.1268730127516588
#>     Attrib V56    0.13633441839172175
#>     Attrib V57    0.11889111078424026
#>     Attrib V58    0.04397296438877133
#>     Attrib V59    0.05760183673140015
#>     Attrib V6    0.05305512269197124
#>     Attrib V60    0.09046932453107871
#>     Attrib V7    0.01715088432074537
#>     Attrib V8    0.09865077982549789
#>     Attrib V9    -0.1534426439252248
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.5269542352279958
#>     Attrib V1    -0.004228144180449527
#>     Attrib V10    0.779338446414643
#>     Attrib V11    0.9210739648053474
#>     Attrib V12    1.1362399200244753
#>     Attrib V13    0.29476522403993805
#>     Attrib V14    -0.36806234630598017
#>     Attrib V15    -0.2648536774567935
#>     Attrib V16    -0.5176088498683665
#>     Attrib V17    -0.6098720118762687
#>     Attrib V18    -0.21810099149980525
#>     Attrib V19    -0.20812489637785325
#>     Attrib V2    -0.33399951559340335
#>     Attrib V20    -0.4725868665688836
#>     Attrib V21    -0.2781230073760954
#>     Attrib V22    -0.09885151738784881
#>     Attrib V23    0.2267890351585594
#>     Attrib V24    0.4577338685008605
#>     Attrib V25    0.36597310127719646
#>     Attrib V26    0.5337737263825311
#>     Attrib V27    0.6005186402380287
#>     Attrib V28    0.8432951008012076
#>     Attrib V29    0.4374128610104499
#>     Attrib V3    -0.45154579505583364
#>     Attrib V30    0.5059274247959398
#>     Attrib V31    -0.34231503066952407
#>     Attrib V32    0.003994934131937715
#>     Attrib V33    -0.1284623939495
#>     Attrib V34    -0.037563376864546846
#>     Attrib V35    0.14090047186393515
#>     Attrib V36    -0.3408258276096593
#>     Attrib V37    0.02797655672072121
#>     Attrib V38    0.12133900996701535
#>     Attrib V39    -0.041060811062120325
#>     Attrib V4    0.7306233241865097
#>     Attrib V40    -0.4618906655765545
#>     Attrib V41    0.3727521678921387
#>     Attrib V42    -0.3280960037868505
#>     Attrib V43    0.10031799176091756
#>     Attrib V44    0.1372690898804291
#>     Attrib V45    0.3822829987887468
#>     Attrib V46    0.6292238415802226
#>     Attrib V47    0.5259030250765625
#>     Attrib V48    0.37313225857633175
#>     Attrib V49    0.3185804190350699
#>     Attrib V5    0.5800713175054848
#>     Attrib V50    0.004925776051457411
#>     Attrib V51    0.713295153272941
#>     Attrib V52    0.6964377341209941
#>     Attrib V53    0.20715805173802615
#>     Attrib V54    0.035081186534802224
#>     Attrib V55    -0.5389796635864276
#>     Attrib V56    -0.7512842564846057
#>     Attrib V57    -0.1431850161422135
#>     Attrib V58    0.1310981714289334
#>     Attrib V59    0.21904348949237223
#>     Attrib V6    0.5916015696948236
#>     Attrib V60    0.24982884259359595
#>     Attrib V7    -0.0932347849119187
#>     Attrib V8    -0.2555580481341448
#>     Attrib V9    0.7221834378432017
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.675581990421445
#>     Attrib V1    -0.02191217389715721
#>     Attrib V10    -0.6667918182923788
#>     Attrib V11    -0.7185864571986551
#>     Attrib V12    -0.7380737297816203
#>     Attrib V13    -0.17232652652907307
#>     Attrib V14    0.3842173512842288
#>     Attrib V15    0.2811709889896742
#>     Attrib V16    0.5600667421402995
#>     Attrib V17    0.27537283397281037
#>     Attrib V18    -0.24425728860633106
#>     Attrib V19    -0.46654953945537825
#>     Attrib V2    0.10649706881032359
#>     Attrib V20    -0.07906446822038689
#>     Attrib V21    -0.017088973160735692
#>     Attrib V22    -0.40900399300784074
#>     Attrib V23    -1.0271386561272091
#>     Attrib V24    -0.7317632817650898
#>     Attrib V25    -0.07854036658933453
#>     Attrib V26    0.512079782079765
#>     Attrib V27    0.46205750373072196
#>     Attrib V28    -0.20550777485592367
#>     Attrib V29    0.30443713442087716
#>     Attrib V3    0.4814066691782569
#>     Attrib V30    -0.429044840290838
#>     Attrib V31    0.6584827293211072
#>     Attrib V32    -0.1693697658244336
#>     Attrib V33    -0.3140963667685348
#>     Attrib V34    0.03848618186634297
#>     Attrib V35    -0.082062708284569
#>     Attrib V36    0.6144116757515331
#>     Attrib V37    0.482989843304802
#>     Attrib V38    -0.7754230449463407
#>     Attrib V39    -0.17954079082737656
#>     Attrib V4    -0.2641617805171026
#>     Attrib V40    0.6116403634052732
#>     Attrib V41    0.16379220525002952
#>     Attrib V42    0.4474501166308326
#>     Attrib V43    -0.5705534216819478
#>     Attrib V44    -0.4923517463352794
#>     Attrib V45    -0.4210663174153518
#>     Attrib V46    -0.2846783541322027
#>     Attrib V47    -0.38607336105829276
#>     Attrib V48    -0.2075755187109072
#>     Attrib V49    -0.3621044679570105
#>     Attrib V5    -0.05259318986110181
#>     Attrib V50    0.16861207571608075
#>     Attrib V51    -0.6188056616052446
#>     Attrib V52    -0.5461697713430539
#>     Attrib V53    -0.17674110512345473
#>     Attrib V54    -0.38675515436699626
#>     Attrib V55    0.7377994366089075
#>     Attrib V56    0.24483022856363176
#>     Attrib V57    0.37383521602811903
#>     Attrib V58    -0.22049791056235618
#>     Attrib V59    0.15761150373431065
#>     Attrib V6    -0.3245348464244591
#>     Attrib V60    0.010250557342158153
#>     Attrib V7    -0.06571911847606866
#>     Attrib V8    0.16055057217547816
#>     Attrib V9    -0.8757967769546067
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.2738636731535173
#>     Attrib V1    0.14628790189930369
#>     Attrib V10    0.09926376798211302
#>     Attrib V11    0.1174593473210881
#>     Attrib V12    0.1737478842613192
#>     Attrib V13    -0.047757865166353046
#>     Attrib V14    -0.0636318495588157
#>     Attrib V15    -0.006603718319492174
#>     Attrib V16    -0.1551280650774109
#>     Attrib V17    -0.04994861853289087
#>     Attrib V18    0.24836838389028904
#>     Attrib V19    0.2448393928604518
#>     Attrib V2    -0.04412769547815196
#>     Attrib V20    0.18473255752515017
#>     Attrib V21    0.15435816471131342
#>     Attrib V22    0.3070044075449283
#>     Attrib V23    0.4749378220593701
#>     Attrib V24    0.3556963684240441
#>     Attrib V25    0.016337580054847842
#>     Attrib V26    -0.5576916397597065
#>     Attrib V27    -0.5041398346870809
#>     Attrib V28    -0.1684246229088173
#>     Attrib V29    -0.36820248458645244
#>     Attrib V3    -0.1066791382321912
#>     Attrib V30    0.014607012287157932
#>     Attrib V31    -0.47910440505680274
#>     Attrib V32    0.07802973912357972
#>     Attrib V33    0.2844202813855455
#>     Attrib V34    0.04172992607131735
#>     Attrib V35    0.03711180567067352
#>     Attrib V36    -0.3053792404580718
#>     Attrib V37    -0.3204253737892941
#>     Attrib V38    0.43814745265990773
#>     Attrib V39    0.09613764622536888
#>     Attrib V4    0.2669451308784928
#>     Attrib V40    -0.3058907765320262
#>     Attrib V41    -0.06968998840420793
#>     Attrib V42    -0.2541188301665517
#>     Attrib V43    0.32025390986196495
#>     Attrib V44    0.1812405411968557
#>     Attrib V45    0.1997511735900884
#>     Attrib V46    0.005938892189486847
#>     Attrib V47    0.06976083997705539
#>     Attrib V48    0.08416674597540828
#>     Attrib V49    0.0777690699992951
#>     Attrib V5    -0.049269319385886856
#>     Attrib V50    0.005256630347171481
#>     Attrib V51    0.21256104401055675
#>     Attrib V52    0.2405717895030668
#>     Attrib V53    0.2203907153914298
#>     Attrib V54    0.3255837514719818
#>     Attrib V55    -0.2774335085699938
#>     Attrib V56    0.11308840429387672
#>     Attrib V57    0.06290778095754924
#>     Attrib V58    0.0778523145859173
#>     Attrib V59    0.11443880245476529
#>     Attrib V6    0.15303127181573412
#>     Attrib V60    0.27832977798819225
#>     Attrib V7    0.12663321744347628
#>     Attrib V8    -0.13373340520409838
#>     Attrib V9    0.35316102906035324
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.5317771610772853
#>     Attrib V1    0.00616326240662013
#>     Attrib V10    -0.4159438109865779
#>     Attrib V11    -0.487291941049722
#>     Attrib V12    -0.5697101669160736
#>     Attrib V13    -0.08210267563586524
#>     Attrib V14    0.3320190003230508
#>     Attrib V15    0.21847310440036427
#>     Attrib V16    0.4265992817261846
#>     Attrib V17    0.3633761803125117
#>     Attrib V18    -0.07819746056218
#>     Attrib V19    -0.13832167083588498
#>     Attrib V2    0.1767480778047197
#>     Attrib V20    0.11293044782547992
#>     Attrib V21    0.16266972214096384
#>     Attrib V22    -0.062407455459219954
#>     Attrib V23    -0.43414674432028844
#>     Attrib V24    -0.3777714079049493
#>     Attrib V25    0.07810312846908403
#>     Attrib V26    0.41339576374005155
#>     Attrib V27    0.22763688145157474
#>     Attrib V28    -0.18701227573318216
#>     Attrib V29    0.19579386697541795
#>     Attrib V3    0.27255402857863065
#>     Attrib V30    -0.19514822969999657
#>     Attrib V31    0.4320574543156267
#>     Attrib V32    -0.22054132398156187
#>     Attrib V33    -0.1889564952917315
#>     Attrib V34    0.023828507625842533
#>     Attrib V35    0.024070851023126626
#>     Attrib V36    0.5756802903242981
#>     Attrib V37    0.5014047664069184
#>     Attrib V38    -0.4089574927080925
#>     Attrib V39    -0.001637878720791669
#>     Attrib V4    -0.23420613782058708
#>     Attrib V40    0.45572497516160665
#>     Attrib V41    0.026756835918654312
#>     Attrib V42    0.30383729258318065
#>     Attrib V43    -0.3708838375088696
#>     Attrib V44    -0.23332237418812085
#>     Attrib V45    -0.15276131868366208
#>     Attrib V46    -0.22801025590359755
#>     Attrib V47    -0.33009659636680816
#>     Attrib V48    -0.17899119160133453
#>     Attrib V49    -0.18993547016816298
#>     Attrib V5    -0.16747022545341836
#>     Attrib V50    0.12219102163545462
#>     Attrib V51    -0.44834523108840985
#>     Attrib V52    -0.4062614362522954
#>     Attrib V53    -0.12335387325010574
#>     Attrib V54    -0.2553028604293311
#>     Attrib V55    0.522426559636792
#>     Attrib V56    0.3092976340104944
#>     Attrib V57    0.28011126332987274
#>     Attrib V58    -0.09067504129498279
#>     Attrib V59    0.15720707239657108
#>     Attrib V6    -0.27795160572608435
#>     Attrib V60    -0.008370538921244257
#>     Attrib V7    -0.06521648112435978
#>     Attrib V8    0.14614585216440618
#>     Attrib V9    -0.6334823734383279
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.4578611021737228
#>     Attrib V1    0.5495579139898504
#>     Attrib V10    -0.1755971193590218
#>     Attrib V11    -0.3951558926418335
#>     Attrib V12    -0.36766529777200635
#>     Attrib V13    -0.2721316092684514
#>     Attrib V14    0.09059227345870624
#>     Attrib V15    0.3032704767544049
#>     Attrib V16    -0.018913711725771696
#>     Attrib V17    -1.1743523026903225E-4
#>     Attrib V18    0.34395224003359015
#>     Attrib V19    0.4693962323712449
#>     Attrib V2    0.27077688924793264
#>     Attrib V20    0.4911511894526957
#>     Attrib V21    0.4309116211710902
#>     Attrib V22    0.6788314255568889
#>     Attrib V23    0.9698374634056869
#>     Attrib V24    0.3251165385913409
#>     Attrib V25    -0.7626330403179636
#>     Attrib V26    -1.691001755215224
#>     Attrib V27    -1.352607998689439
#>     Attrib V28    -0.4570003260961674
#>     Attrib V29    -0.5334160664227404
#>     Attrib V3    -0.07566118983092297
#>     Attrib V30    -0.026140775606612793
#>     Attrib V31    -1.0140317615608223
#>     Attrib V32    -0.01968345590511016
#>     Attrib V33    0.5549655272482257
#>     Attrib V34    0.024034911283234817
#>     Attrib V35    -0.1368090303998381
#>     Attrib V36    -0.5939800296797793
#>     Attrib V37    -0.5992194319384695
#>     Attrib V38    1.0878470100644864
#>     Attrib V39    0.36288094588657427
#>     Attrib V4    0.5329400890950625
#>     Attrib V40    -0.42226561779894634
#>     Attrib V41    -0.17636257217307405
#>     Attrib V42    -0.13350426889609918
#>     Attrib V43    0.5960666193529652
#>     Attrib V44    0.3636197241827767
#>     Attrib V45    0.12072890727598061
#>     Attrib V46    -0.14236405696310062
#>     Attrib V47    -0.10216028880920736
#>     Attrib V48    0.03712025067882215
#>     Attrib V49    0.08900759668610296
#>     Attrib V5    -0.11943558657641143
#>     Attrib V50    0.11137854017751887
#>     Attrib V51    0.11432121631221662
#>     Attrib V52    0.12743343201585036
#>     Attrib V53    0.401539867972668
#>     Attrib V54    0.8161871194273653
#>     Attrib V55    -0.3200288674940702
#>     Attrib V56    0.4243744850074804
#>     Attrib V57    0.2193063505681739
#>     Attrib V58    0.2445770560392767
#>     Attrib V59    0.4535201896036501
#>     Attrib V6    0.12400886936836383
#>     Attrib V60    0.6680997201700166
#>     Attrib V7    0.3636661017811482
#>     Attrib V8    -0.2542550757444873
#>     Attrib V9    0.3340730098665836
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.03821792011420841
#>     Attrib V1    0.21588851871168804
#>     Attrib V10    -0.014756772768243777
#>     Attrib V11    0.010282948152174246
#>     Attrib V12    0.04156501016170726
#>     Attrib V13    -0.055680448603598796
#>     Attrib V14    0.05569359488470802
#>     Attrib V15    0.06112373368440219
#>     Attrib V16    -0.023919622960125713
#>     Attrib V17    -0.043726168022092005
#>     Attrib V18    0.1779702360686307
#>     Attrib V19    0.10624129302197248
#>     Attrib V2    0.028932178242551496
#>     Attrib V20    0.13595419695502836
#>     Attrib V21    0.11761828429324127
#>     Attrib V22    0.0736685536120104
#>     Attrib V23    0.1906626626284668
#>     Attrib V24    0.055314047863802986
#>     Attrib V25    -0.17124731969251858
#>     Attrib V26    -0.3958635473261699
#>     Attrib V27    -0.3284722501894441
#>     Attrib V28    -0.0879618088869649
#>     Attrib V29    -0.19353971169749457
#>     Attrib V3    0.05476943577093678
#>     Attrib V30    0.08406646312320637
#>     Attrib V31    -0.300344949749827
#>     Attrib V32    -0.021059134461712446
#>     Attrib V33    0.1750745954997378
#>     Attrib V34    0.027053950332920167
#>     Attrib V35    0.002319592498008776
#>     Attrib V36    -0.1083952261537486
#>     Attrib V37    -0.13159701553956663
#>     Attrib V38    0.24797142166515662
#>     Attrib V39    0.09519100808064523
#>     Attrib V4    0.258357016940181
#>     Attrib V40    -0.1778972325769775
#>     Attrib V41    -0.04611090207887101
#>     Attrib V42    -0.06879997902801488
#>     Attrib V43    0.07132286981416103
#>     Attrib V44    0.11192228201428844
#>     Attrib V45    0.09780333740691786
#>     Attrib V46    0.008280971753232594
#>     Attrib V47    0.013164369104255972
#>     Attrib V48    0.023558468140486177
#>     Attrib V49    0.07754105914065408
#>     Attrib V5    0.07142183793440213
#>     Attrib V50    -0.0033375738846673337
#>     Attrib V51    0.1540376456322028
#>     Attrib V52    0.1727265007702126
#>     Attrib V53    0.20150734008771745
#>     Attrib V54    0.17109307728140324
#>     Attrib V55    -0.11745198045005699
#>     Attrib V56    0.11398694036256098
#>     Attrib V57    0.11734452467324821
#>     Attrib V58    0.13649715020007772
#>     Attrib V59    0.14864768877605683
#>     Attrib V6    0.13219466094138405
#>     Attrib V60    0.22999080384663523
#>     Attrib V7    0.08422604161059315
#>     Attrib V8    -0.07000632259478713
#>     Attrib V9    0.1675877568439826
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
#>  0.2173913 
```
