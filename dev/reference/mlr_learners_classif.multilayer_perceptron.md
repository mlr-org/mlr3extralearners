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
#>     Threshold    -0.7818905542476314
#>     Node 2    2.3181206022394174
#>     Node 3    1.7684908404573112
#>     Node 4    0.6819758493495859
#>     Node 5    -2.8010574196351
#>     Node 6    0.6297233158346282
#>     Node 7    3.7501247016291424
#>     Node 8    0.6157145079038127
#>     Node 9    3.611997097449832
#>     Node 10    -2.5602634602358476
#>     Node 11    1.3218346686485698
#>     Node 12    1.9496544551082764
#>     Node 13    0.47475529920388154
#>     Node 14    2.033637806781237
#>     Node 15    -2.2215676526400787
#>     Node 16    -0.36506260472782676
#>     Node 17    0.19257682080614844
#>     Node 18    0.07386542583987904
#>     Node 19    1.625591151569209
#>     Node 20    1.3555120835868972
#>     Node 21    -2.203024437646425
#>     Node 22    1.0958298130859143
#>     Node 23    1.8966512462625376
#>     Node 24    -0.6112141458616901
#>     Node 25    4.56924231620139
#>     Node 26    -0.6125075375361664
#>     Node 27    1.3696117150824927
#>     Node 28    -3.3642937637826886
#>     Node 29    0.7415584139249203
#>     Node 30    0.3367302297596194
#>     Node 31    0.6102427677303724
#>     Node 32    -0.21182732788253025
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.795185717410723
#>     Node 2    -2.349757292185731
#>     Node 3    -1.7383152499429018
#>     Node 4    -0.6402899278135309
#>     Node 5    2.798309135476636
#>     Node 6    -0.6070434272104452
#>     Node 7    -3.7485379997783244
#>     Node 8    -0.6519023195604962
#>     Node 9    -3.6369777776588332
#>     Node 10    2.5087008343658637
#>     Node 11    -1.2792516971256254
#>     Node 12    -2.010637481071979
#>     Node 13    -0.4210342389511656
#>     Node 14    -1.9820991613634906
#>     Node 15    2.1995530549219318
#>     Node 16    0.36516830551211193
#>     Node 17    -0.15583131280204604
#>     Node 18    -0.030270948153147507
#>     Node 19    -1.6565677166170283
#>     Node 20    -1.3355210877583372
#>     Node 21    2.244143991249392
#>     Node 22    -1.1401403568089579
#>     Node 23    -1.9228944071417933
#>     Node 24    0.6221107515757032
#>     Node 25    -4.561307405735382
#>     Node 26    0.5533656774039172
#>     Node 27    -1.4062495390203735
#>     Node 28    3.357666925330047
#>     Node 29    -0.7752317504046354
#>     Node 30    -0.260817598912828
#>     Node 31    -0.5493513099070532
#>     Node 32    0.20547789260617236
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.1288621852367853
#>     Attrib V1    0.48492104527896474
#>     Attrib V10    0.3618622362267792
#>     Attrib V11    -0.17316918650708654
#>     Attrib V12    -0.18981951986670537
#>     Attrib V13    -0.5285698095172924
#>     Attrib V14    0.13505472487283016
#>     Attrib V15    0.42307508279786143
#>     Attrib V16    0.2184277533358696
#>     Attrib V17    -0.008228535562564546
#>     Attrib V18    0.06002639841412127
#>     Attrib V19    0.3863214319204981
#>     Attrib V2    -0.052307063678398096
#>     Attrib V20    0.43351080517117213
#>     Attrib V21    0.64919216474705
#>     Attrib V22    0.33747766170044874
#>     Attrib V23    -0.04848120847971144
#>     Attrib V24    0.07309531496272179
#>     Attrib V25    -0.6381008111920233
#>     Attrib V26    -1.0737666538306012
#>     Attrib V27    -0.8967199446820019
#>     Attrib V28    -0.45963361777298667
#>     Attrib V29    -0.6001508457518777
#>     Attrib V3    0.029684678721107333
#>     Attrib V30    0.36208890773590136
#>     Attrib V31    -1.0823022742176784
#>     Attrib V32    -0.22532991230566182
#>     Attrib V33    0.6385076165897733
#>     Attrib V34    -0.015146216640235662
#>     Attrib V35    -0.5613238857410401
#>     Attrib V36    -1.0411805419337195
#>     Attrib V37    -1.0222175157521205
#>     Attrib V38    0.27224587499334285
#>     Attrib V39    0.49979036762910617
#>     Attrib V4    0.5068895164687494
#>     Attrib V40    -0.22071346774907058
#>     Attrib V41    -0.2235574003951942
#>     Attrib V42    0.39164204844339756
#>     Attrib V43    0.5188016123384759
#>     Attrib V44    0.4901978345576965
#>     Attrib V45    0.0199467423482873
#>     Attrib V46    -0.38108307354693005
#>     Attrib V47    -0.5806468146149224
#>     Attrib V48    0.35723527966400725
#>     Attrib V49    0.7025094787402641
#>     Attrib V5    -0.3006692142552981
#>     Attrib V50    -0.7708090042793467
#>     Attrib V51    0.114622086802289
#>     Attrib V52    0.022771227964282454
#>     Attrib V53    -0.04134094016072112
#>     Attrib V54    0.6781959134846657
#>     Attrib V55    -0.3084203119105025
#>     Attrib V56    0.20717007399516263
#>     Attrib V57    0.6949090293579495
#>     Attrib V58    0.3780114404048842
#>     Attrib V59    1.0532630197408934
#>     Attrib V6    -0.6391862333876396
#>     Attrib V60    0.4781585544996167
#>     Attrib V7    0.08206388300508834
#>     Attrib V8    -0.10250801523705187
#>     Attrib V9    0.5046006830967373
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.06200786874485112
#>     Attrib V1    0.37931939414520394
#>     Attrib V10    0.2752839026041849
#>     Attrib V11    -0.16437161342751844
#>     Attrib V12    -0.06549380405765405
#>     Attrib V13    -0.3018095206886083
#>     Attrib V14    0.1336123909810103
#>     Attrib V15    0.40697139133667926
#>     Attrib V16    0.13033788578188316
#>     Attrib V17    -0.07566701376565801
#>     Attrib V18    -0.037285510408723646
#>     Attrib V19    0.3218171159770895
#>     Attrib V2    -0.026130578019823117
#>     Attrib V20    0.32705953473830146
#>     Attrib V21    0.4454595974018982
#>     Attrib V22    0.24961016393906066
#>     Attrib V23    -0.07717885372552483
#>     Attrib V24    0.11246890879288489
#>     Attrib V25    -0.3007147039210039
#>     Attrib V26    -0.7577221266093702
#>     Attrib V27    -0.8008721730354287
#>     Attrib V28    -0.5709427263561665
#>     Attrib V29    -0.720031239924319
#>     Attrib V3    0.0012127324869080115
#>     Attrib V30    0.24260854378547136
#>     Attrib V31    -0.6783202342857197
#>     Attrib V32    -0.13308980501395104
#>     Attrib V33    0.5579766842604447
#>     Attrib V34    0.005984346039960938
#>     Attrib V35    -0.3754670606884646
#>     Attrib V36    -0.8263231453971732
#>     Attrib V37    -0.8972954001980056
#>     Attrib V38    0.053225235904209856
#>     Attrib V39    0.3298880584365009
#>     Attrib V4    0.42576061414975147
#>     Attrib V40    -0.17767447505659975
#>     Attrib V41    -0.14050127451262082
#>     Attrib V42    0.2363195403304022
#>     Attrib V43    0.22083220644016358
#>     Attrib V44    0.25984283232596095
#>     Attrib V45    0.015811988915424558
#>     Attrib V46    -0.3319942397120947
#>     Attrib V47    -0.4347531950903333
#>     Attrib V48    0.263601419249543
#>     Attrib V49    0.5132303191862116
#>     Attrib V5    -0.19304609695219613
#>     Attrib V50    -0.565139092184969
#>     Attrib V51    0.05450209153556761
#>     Attrib V52    -0.02309806111987779
#>     Attrib V53    -0.07851046288259907
#>     Attrib V54    0.6089638566907933
#>     Attrib V55    -0.12792522672148257
#>     Attrib V56    0.1553645220388886
#>     Attrib V57    0.5767098993194842
#>     Attrib V58    0.3447258344376657
#>     Attrib V59    0.8571384634064815
#>     Attrib V6    -0.4396347569136764
#>     Attrib V60    0.38106564144655264
#>     Attrib V7    0.12747254129565141
#>     Attrib V8    0.016225663888992402
#>     Attrib V9    0.3953324329424635
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.12131205375092623
#>     Attrib V1    0.15855859048430937
#>     Attrib V10    0.15031654286528318
#>     Attrib V11    0.006003394874639727
#>     Attrib V12    0.053527677532182794
#>     Attrib V13    -0.040628794779827615
#>     Attrib V14    0.16247338396459754
#>     Attrib V15    0.24436640903983198
#>     Attrib V16    0.07439929661380813
#>     Attrib V17    0.005698957888035094
#>     Attrib V18    0.009950978245901777
#>     Attrib V19    0.14808831862185803
#>     Attrib V2    -0.016279132453298168
#>     Attrib V20    0.15620216584990784
#>     Attrib V21    0.21187112872685393
#>     Attrib V22    0.020590339642839527
#>     Attrib V23    -0.051159747041377955
#>     Attrib V24    0.005073836015212206
#>     Attrib V25    -0.20239186640958692
#>     Attrib V26    -0.3387444214045377
#>     Attrib V27    -0.3244632126270087
#>     Attrib V28    -0.14511221999815535
#>     Attrib V29    -0.19192712199690298
#>     Attrib V3    0.0882835262950874
#>     Attrib V30    0.06047509269435703
#>     Attrib V31    -0.3833767514100045
#>     Attrib V32    -0.18132262789250278
#>     Attrib V33    0.1484392919754339
#>     Attrib V34    0.014648945806945212
#>     Attrib V35    -0.09227522466422038
#>     Attrib V36    -0.3159734398211193
#>     Attrib V37    -0.3201860373700327
#>     Attrib V38    0.052350540810456606
#>     Attrib V39    0.15871474873267866
#>     Attrib V4    0.2336822600804052
#>     Attrib V40    -0.11009659791789618
#>     Attrib V41    -0.11587546938579175
#>     Attrib V42    0.06214192935356481
#>     Attrib V43    0.06998133017808085
#>     Attrib V44    0.13840964327059974
#>     Attrib V45    0.1054886012463661
#>     Attrib V46    -0.10497337435482605
#>     Attrib V47    -0.1667900744585044
#>     Attrib V48    0.15692228532697886
#>     Attrib V49    0.26287564461736085
#>     Attrib V5    0.024566462963816007
#>     Attrib V50    -0.18564126467033107
#>     Attrib V51    0.1120900190242462
#>     Attrib V52    0.08665168070819512
#>     Attrib V53    0.08841460191516069
#>     Attrib V54    0.22084101652657687
#>     Attrib V55    0.009437866656087068
#>     Attrib V56    0.1286162628068288
#>     Attrib V57    0.3483742514252436
#>     Attrib V58    0.17375671421539104
#>     Attrib V59    0.406469188252542
#>     Attrib V6    -0.19545636439911332
#>     Attrib V60    0.19238783635655907
#>     Attrib V7    0.052864354294713346
#>     Attrib V8    -0.05947229243529175
#>     Attrib V9    0.2426444347404662
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.4699221115811781
#>     Attrib V1    -0.21029992073159784
#>     Attrib V10    -0.5518209247032331
#>     Attrib V11    -0.3740505923807584
#>     Attrib V12    -1.0225531002751322
#>     Attrib V13    0.30000139488108907
#>     Attrib V14    0.5133025182152147
#>     Attrib V15    0.12167781644731698
#>     Attrib V16    0.128367029064913
#>     Attrib V17    0.7747648346212727
#>     Attrib V18    0.38738342293587197
#>     Attrib V19    0.26242305942368915
#>     Attrib V2    0.1005521421458497
#>     Attrib V20    0.40019544952332753
#>     Attrib V21    -0.3146755077921153
#>     Attrib V22    -0.33554589974872856
#>     Attrib V23    -0.4116584380363291
#>     Attrib V24    -1.0573779944450232
#>     Attrib V25    -0.09128178245343808
#>     Attrib V26    0.5131067688081348
#>     Attrib V27    0.23914132184211706
#>     Attrib V28    -0.3753192321128818
#>     Attrib V29    -0.061239382656149484
#>     Attrib V3    0.11653231866979125
#>     Attrib V30    -0.8117132354829082
#>     Attrib V31    1.7116379366822387
#>     Attrib V32    0.3983404450877715
#>     Attrib V33    -1.246002286207969
#>     Attrib V34    -0.3132825023182511
#>     Attrib V35    0.34572338192809665
#>     Attrib V36    1.4877264026712875
#>     Attrib V37    1.0116863132270175
#>     Attrib V38    -0.3447503402817861
#>     Attrib V39    -1.0266501901350185
#>     Attrib V4    0.17921406127212852
#>     Attrib V40    0.008328134451805724
#>     Attrib V41    -0.6395250509055044
#>     Attrib V42    -0.8094538350993378
#>     Attrib V43    -1.2965627423554311
#>     Attrib V44    -1.000999004805041
#>     Attrib V45    -0.46296484596298526
#>     Attrib V46    -0.27247292866483674
#>     Attrib V47    0.33571936215076015
#>     Attrib V48    -1.0346795209084478
#>     Attrib V49    -1.2268661614315965
#>     Attrib V5    0.3958649227455713
#>     Attrib V50    1.4681644299853938
#>     Attrib V51    0.13251690133564514
#>     Attrib V52    0.2930234316254259
#>     Attrib V53    0.07834980585518218
#>     Attrib V54    -0.3320785434503691
#>     Attrib V55    1.0908413419185898
#>     Attrib V56    0.46183029413378124
#>     Attrib V57    -0.4354290435893957
#>     Attrib V58    0.1561440833910487
#>     Attrib V59    -0.5260007041241814
#>     Attrib V6    0.9371262323413458
#>     Attrib V60    0.3572112577822056
#>     Attrib V7    0.33015295288727053
#>     Attrib V8    0.8563244141459777
#>     Attrib V9    -0.8674813695330637
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.04889422851624118
#>     Attrib V1    0.22919423582239506
#>     Attrib V10    0.11443288520467562
#>     Attrib V11    0.022113306784276986
#>     Attrib V12    0.10264845360825282
#>     Attrib V13    -0.06573693027250459
#>     Attrib V14    0.13751998993337936
#>     Attrib V15    0.20055759965317163
#>     Attrib V16    0.13469498067719615
#>     Attrib V17    -0.013565814970556197
#>     Attrib V18    0.059703687474513656
#>     Attrib V19    0.1088527497604844
#>     Attrib V2    0.02439009761172346
#>     Attrib V20    0.1268927270406932
#>     Attrib V21    0.16930975152930897
#>     Attrib V22    3.355995061977281E-4
#>     Attrib V23    -0.0816319082622026
#>     Attrib V24    0.05855461803320795
#>     Attrib V25    -0.08626301839952603
#>     Attrib V26    -0.280976457961536
#>     Attrib V27    -0.22603280320319516
#>     Attrib V28    -0.21971606548191652
#>     Attrib V29    -0.2705637708235699
#>     Attrib V3    0.09014076563192602
#>     Attrib V30    -0.002185548990401728
#>     Attrib V31    -0.3755154779372688
#>     Attrib V32    -0.15411800224551803
#>     Attrib V33    0.0994120269467585
#>     Attrib V34    -0.04068787583564857
#>     Attrib V35    -0.07635933429415527
#>     Attrib V36    -0.2876773636691102
#>     Attrib V37    -0.27034173439035847
#>     Attrib V38    0.05575638571643613
#>     Attrib V39    0.10379915873815622
#>     Attrib V4    0.2740953988678404
#>     Attrib V40    -0.13303073110701358
#>     Attrib V41    -0.027253292744230377
#>     Attrib V42    0.0681169687206172
#>     Attrib V43    0.06869108690800922
#>     Attrib V44    0.08981701732675339
#>     Attrib V45    0.05411866029657649
#>     Attrib V46    -0.06059240159335427
#>     Attrib V47    -0.14383600372010089
#>     Attrib V48    0.09704440921570141
#>     Attrib V49    0.1748929386848743
#>     Attrib V5    0.016432997579849878
#>     Attrib V50    -0.14249534429981325
#>     Attrib V51    0.0825890810229937
#>     Attrib V52    0.05792446003288739
#>     Attrib V53    0.12468563247716541
#>     Attrib V54    0.25628338582065324
#>     Attrib V55    0.03802099066206086
#>     Attrib V56    0.13748159050315012
#>     Attrib V57    0.36543321836358944
#>     Attrib V58    0.22463133484043088
#>     Attrib V59    0.46017500591717286
#>     Attrib V6    -0.08696945057684284
#>     Attrib V60    0.2953194569866403
#>     Attrib V7    0.09070343522394335
#>     Attrib V8    0.03687160242689294
#>     Attrib V9    0.23703910302496373
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.8489815695614221
#>     Attrib V1    0.31628835903812513
#>     Attrib V10    0.9307005797118523
#>     Attrib V11    1.0703998832300397
#>     Attrib V12    1.8375513044446508
#>     Attrib V13    0.40806338540778525
#>     Attrib V14    -0.4231560946688436
#>     Attrib V15    -0.1063510856418375
#>     Attrib V16    -0.4552593621555657
#>     Attrib V17    -1.0243051210278369
#>     Attrib V18    -0.6745696471364012
#>     Attrib V19    -0.40618955500351106
#>     Attrib V2    0.4348866773869015
#>     Attrib V20    -0.6477990612826264
#>     Attrib V21    -0.20993709739825764
#>     Attrib V22    0.01702610020307266
#>     Attrib V23    0.6703172679069345
#>     Attrib V24    0.888704571172418
#>     Attrib V25    0.24903213935711557
#>     Attrib V26    0.5996784898860036
#>     Attrib V27    1.3910295248446491
#>     Attrib V28    2.065497402783721
#>     Attrib V29    1.3596325828663363
#>     Attrib V3    0.9931794253101416
#>     Attrib V30    0.585750024175737
#>     Attrib V31    -1.2625403541037927
#>     Attrib V32    -0.7714834397776119
#>     Attrib V33    0.12667287308355354
#>     Attrib V34    0.17657393446225733
#>     Attrib V35    0.38549939438120084
#>     Attrib V36    -0.8901571269284405
#>     Attrib V37    0.10957867243298537
#>     Attrib V38    0.1832350584884604
#>     Attrib V39    0.6589183401733255
#>     Attrib V4    0.5537430342543256
#>     Attrib V40    0.0609301399815839
#>     Attrib V41    0.6881706370142787
#>     Attrib V42    -0.19989150202090086
#>     Attrib V43    0.2603642935931184
#>     Attrib V44    0.14916693617382307
#>     Attrib V45    -0.11831410192879749
#>     Attrib V46    0.9329932545349394
#>     Attrib V47    0.7247335138524935
#>     Attrib V48    1.0274438398822447
#>     Attrib V49    1.0472796354692966
#>     Attrib V5    1.4382334232897227
#>     Attrib V50    -0.5231271675303945
#>     Attrib V51    0.43894488242842716
#>     Attrib V52    0.9715372009337637
#>     Attrib V53    1.0451841253874383
#>     Attrib V54    0.3492966644822354
#>     Attrib V55    -0.635257878606811
#>     Attrib V56    -0.45186073166367097
#>     Attrib V57    0.3834387034876616
#>     Attrib V58    -0.1616828843993573
#>     Attrib V59    0.14448452899838035
#>     Attrib V6    0.1738817209580384
#>     Attrib V60    -0.054109046093955615
#>     Attrib V7    -0.24752065938237852
#>     Attrib V8    -1.4341718435855144
#>     Attrib V9    0.671202072217303
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.042990910367867376
#>     Attrib V1    0.16185737275055465
#>     Attrib V10    0.20656440845004373
#>     Attrib V11    0.0842788786919154
#>     Attrib V12    0.08467087936327661
#>     Attrib V13    -0.04052982609267467
#>     Attrib V14    0.058036520729668944
#>     Attrib V15    0.15294061169404713
#>     Attrib V16    0.10958754182384599
#>     Attrib V17    -0.020511038368889664
#>     Attrib V18    -0.02407126529482161
#>     Attrib V19    0.13079611534824803
#>     Attrib V2    -0.00243704275514585
#>     Attrib V20    0.04079617473194706
#>     Attrib V21    0.10512324244805475
#>     Attrib V22    -0.005908006964103863
#>     Attrib V23    -0.0644687456013777
#>     Attrib V24    0.08177884254751529
#>     Attrib V25    -0.09151944005421635
#>     Attrib V26    -0.2155022834042868
#>     Attrib V27    -0.17730055031419836
#>     Attrib V28    -0.06879724989364427
#>     Attrib V29    -0.1532874455977288
#>     Attrib V3    0.056109047256551185
#>     Attrib V30    0.08403812566794963
#>     Attrib V31    -0.39458183039278466
#>     Attrib V32    -0.16907376040073774
#>     Attrib V33    0.13394525656869705
#>     Attrib V34    -0.009078896025515298
#>     Attrib V35    -0.07419789833828794
#>     Attrib V36    -0.22144949852910603
#>     Attrib V37    -0.26676884788854544
#>     Attrib V38    0.13643210044992943
#>     Attrib V39    0.12961383428562975
#>     Attrib V4    0.3034982428298308
#>     Attrib V40    -0.13748363027455576
#>     Attrib V41    -0.09188044644146101
#>     Attrib V42    -0.05786405209620017
#>     Attrib V43    0.0704548576544964
#>     Attrib V44    0.1743468400978782
#>     Attrib V45    0.08931369306681888
#>     Attrib V46    -5.734181036701483E-4
#>     Attrib V47    -0.06793204935955885
#>     Attrib V48    0.23910381964250507
#>     Attrib V49    0.2869731754301212
#>     Attrib V5    0.029137206294592734
#>     Attrib V50    -0.2225521036145967
#>     Attrib V51    0.06870971988308848
#>     Attrib V52    0.0826534252177041
#>     Attrib V53    0.1181617877080225
#>     Attrib V54    0.2704853672537624
#>     Attrib V55    -0.02041597888349112
#>     Attrib V56    0.04863862249520033
#>     Attrib V57    0.3925943646889685
#>     Attrib V58    0.15932460526924389
#>     Attrib V59    0.4242465121164553
#>     Attrib V6    -0.18057982373778494
#>     Attrib V60    0.2664261751126087
#>     Attrib V7    0.07177503299791708
#>     Attrib V8    -0.07322344614674277
#>     Attrib V9    0.23749039133402164
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.10137799752300486
#>     Attrib V1    -0.36613981955246594
#>     Attrib V10    1.58735936015778
#>     Attrib V11    1.4176628598806966
#>     Attrib V12    1.8550391558556631
#>     Attrib V13    0.12330265041565809
#>     Attrib V14    -0.7714885345645529
#>     Attrib V15    -0.5394793250260855
#>     Attrib V16    -0.3327451391518773
#>     Attrib V17    -0.6033113712422501
#>     Attrib V18    0.004317174397637928
#>     Attrib V19    0.6697350272663298
#>     Attrib V2    0.2140451287355421
#>     Attrib V20    -0.060508513297024405
#>     Attrib V21    -0.13142459440732435
#>     Attrib V22    0.3232972311130103
#>     Attrib V23    1.2670899390299268
#>     Attrib V24    1.6152560124806816
#>     Attrib V25    0.9626159559623352
#>     Attrib V26    0.6327305897853966
#>     Attrib V27    0.8443296906658573
#>     Attrib V28    1.390035536708069
#>     Attrib V29    0.25418960804097734
#>     Attrib V3    0.305684402976873
#>     Attrib V30    0.40053587889311487
#>     Attrib V31    -1.4848530429506772
#>     Attrib V32    -0.5952325113257632
#>     Attrib V33    0.6633376543220978
#>     Attrib V34    0.6309874421510624
#>     Attrib V35    0.5418415160702746
#>     Attrib V36    -1.1229316657071922
#>     Attrib V37    -0.5188083712615789
#>     Attrib V38    0.19167075139244003
#>     Attrib V39    0.937580942046311
#>     Attrib V4    -0.6551555362417354
#>     Attrib V40    0.1709981162381979
#>     Attrib V41    0.38603161418174525
#>     Attrib V42    -0.2584725836995028
#>     Attrib V43    0.4582743237221835
#>     Attrib V44    0.4485649568511606
#>     Attrib V45    -0.08541981674216102
#>     Attrib V46    0.7774124322423696
#>     Attrib V47    0.6938457529444263
#>     Attrib V48    1.240519490736779
#>     Attrib V49    1.6725721927480677
#>     Attrib V5    0.43154802167306444
#>     Attrib V50    -0.7879442431759011
#>     Attrib V51    0.7701219897898314
#>     Attrib V52    1.3950615629111212
#>     Attrib V53    1.1067920428851048
#>     Attrib V54    0.6691082654922722
#>     Attrib V55    -0.43544160698829776
#>     Attrib V56    -0.1839600567857142
#>     Attrib V57    -0.7961903848338205
#>     Attrib V58    -0.24570804694669388
#>     Attrib V59    -0.552395571679121
#>     Attrib V6    -0.2596462825459036
#>     Attrib V60    -0.6641151126307965
#>     Attrib V7    -0.5221664980471038
#>     Attrib V8    -0.9021153061548322
#>     Attrib V9    1.367575904878447
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.43234714651847406
#>     Attrib V1    -0.09121470347811975
#>     Attrib V10    -0.8025349377064828
#>     Attrib V11    -0.6675868559996735
#>     Attrib V12    -1.090075113869252
#>     Attrib V13    0.30535696654718375
#>     Attrib V14    0.5034762006418564
#>     Attrib V15    0.02647533456336069
#>     Attrib V16    0.07377897293535006
#>     Attrib V17    0.4874428341557356
#>     Attrib V18    0.3414930937268579
#>     Attrib V19    0.006512347606778096
#>     Attrib V2    0.1855562347786398
#>     Attrib V20    0.15078936745957838
#>     Attrib V21    -0.21664832087200708
#>     Attrib V22    -0.18913133288507622
#>     Attrib V23    -0.4743644236010399
#>     Attrib V24    -0.9762129648376036
#>     Attrib V25    -0.03931392695992244
#>     Attrib V26    0.5644258560129112
#>     Attrib V27    0.1536447395401682
#>     Attrib V28    -0.6797136613205402
#>     Attrib V29    -0.12622022657858836
#>     Attrib V3    0.11428127486965046
#>     Attrib V30    -0.6973055011343349
#>     Attrib V31    1.8850418086056893
#>     Attrib V32    0.5138263534682452
#>     Attrib V33    -0.9746708851511192
#>     Attrib V34    -0.33627191297598413
#>     Attrib V35    0.17478450485735167
#>     Attrib V36    1.1962309225656031
#>     Attrib V37    0.9034041823463184
#>     Attrib V38    -0.28363054911953683
#>     Attrib V39    -0.8811977863339618
#>     Attrib V4    -0.10295872408836351
#>     Attrib V40    0.35917705956537843
#>     Attrib V41    -0.042836121691381235
#>     Attrib V42    -0.1800832341117856
#>     Attrib V43    -0.768547279186371
#>     Attrib V44    -0.7198145517380516
#>     Attrib V45    -0.12783183559040173
#>     Attrib V46    -0.09215849272827177
#>     Attrib V47    0.408698826840602
#>     Attrib V48    -0.9775764404477774
#>     Attrib V49    -1.3008665190361626
#>     Attrib V5    0.04813766815980695
#>     Attrib V50    1.470377942820912
#>     Attrib V51    -0.1460764968897587
#>     Attrib V52    -0.301940736245887
#>     Attrib V53    -0.03506607004750321
#>     Attrib V54    -0.20422501364085446
#>     Attrib V55    0.8532035666828222
#>     Attrib V56    0.2902925092197501
#>     Attrib V57    -0.3015632145087762
#>     Attrib V58    -0.021167042203035332
#>     Attrib V59    -0.5323297800673135
#>     Attrib V6    0.733743133168037
#>     Attrib V60    0.27425212443443087
#>     Attrib V7    0.21145717877595294
#>     Attrib V8    0.6567215331306219
#>     Attrib V9    -1.140539151325256
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.11147859490068879
#>     Attrib V1    0.22262940972430534
#>     Attrib V10    0.2533394458264524
#>     Attrib V11    -0.05583291541420779
#>     Attrib V12    -0.0017798206264500595
#>     Attrib V13    -0.3279994947685068
#>     Attrib V14    0.041330019555632425
#>     Attrib V15    0.24222605167225778
#>     Attrib V16    0.16310480200910557
#>     Attrib V17    0.060893609717068094
#>     Attrib V18    0.1034720919230448
#>     Attrib V19    0.3372892323103545
#>     Attrib V2    -0.14181371682609298
#>     Attrib V20    0.3455909992204778
#>     Attrib V21    0.3392332904506732
#>     Attrib V22    0.173659643566641
#>     Attrib V23    0.020270385855058175
#>     Attrib V24    0.17256120504547767
#>     Attrib V25    -0.17997460285718353
#>     Attrib V26    -0.6278599678774365
#>     Attrib V27    -0.6070287481090965
#>     Attrib V28    -0.3875504344410116
#>     Attrib V29    -0.5564371725407564
#>     Attrib V3    -0.12272772999510899
#>     Attrib V30    0.14905464656626155
#>     Attrib V31    -0.6774635142009227
#>     Attrib V32    -0.18058421039580605
#>     Attrib V33    0.4096120588230989
#>     Attrib V34    0.10477365458581843
#>     Attrib V35    -0.15709667240725345
#>     Attrib V36    -0.5524566393493813
#>     Attrib V37    -0.6821030719202476
#>     Attrib V38    0.1745235051571949
#>     Attrib V39    0.24093627431105305
#>     Attrib V4    0.26061447231482376
#>     Attrib V40    -0.2192138185549696
#>     Attrib V41    -0.21697859965565786
#>     Attrib V42    0.13002542258493577
#>     Attrib V43    0.21126252675593615
#>     Attrib V44    0.3032093283704523
#>     Attrib V45    0.12861787160037916
#>     Attrib V46    -0.21015635043440287
#>     Attrib V47    -0.3034901758356957
#>     Attrib V48    0.2880280053992471
#>     Attrib V49    0.4548348149215488
#>     Attrib V5    -0.13138893225056175
#>     Attrib V50    -0.4465131973640859
#>     Attrib V51    0.17260526077127522
#>     Attrib V52    0.015663105430359224
#>     Attrib V53    0.0012371869301708003
#>     Attrib V54    0.53427776839545
#>     Attrib V55    -0.10611381794600158
#>     Attrib V56    0.12544246752074933
#>     Attrib V57    0.42745709479320143
#>     Attrib V58    0.2696248920566044
#>     Attrib V59    0.6080011071728764
#>     Attrib V6    -0.3215250749500052
#>     Attrib V60    0.30664515700001005
#>     Attrib V7    0.07937321092311572
#>     Attrib V8    -0.012044252824483159
#>     Attrib V9    0.4222750580478986
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.02915331710356315
#>     Attrib V1    0.37974935669637233
#>     Attrib V10    0.2402485427937071
#>     Attrib V11    -0.13896703731487126
#>     Attrib V12    -0.20663902357041145
#>     Attrib V13    -0.4616471306498499
#>     Attrib V14    0.1389130462836993
#>     Attrib V15    0.40426421717132804
#>     Attrib V16    0.2552437221137793
#>     Attrib V17    0.016973491123878307
#>     Attrib V18    0.06435843865406563
#>     Attrib V19    0.4019690601220234
#>     Attrib V2    -0.025681007223372694
#>     Attrib V20    0.3340274830346347
#>     Attrib V21    0.49765452310411984
#>     Attrib V22    0.3111497217608315
#>     Attrib V23    -0.04522053862894954
#>     Attrib V24    0.011307442265368244
#>     Attrib V25    -0.603304061899901
#>     Attrib V26    -0.9920195092409682
#>     Attrib V27    -0.7807275844359706
#>     Attrib V28    -0.47330004986311464
#>     Attrib V29    -0.511768596291457
#>     Attrib V3    -0.06942439464167811
#>     Attrib V30    0.2787371913820156
#>     Attrib V31    -0.9400018761527796
#>     Attrib V32    -0.277107107429414
#>     Attrib V33    0.5514713477749009
#>     Attrib V34    -0.020281823595800233
#>     Attrib V35    -0.44965381954273453
#>     Attrib V36    -0.8535954527418491
#>     Attrib V37    -0.8586306611989478
#>     Attrib V38    0.25053964791641137
#>     Attrib V39    0.3629430556740204
#>     Attrib V4    0.5374192993027316
#>     Attrib V40    -0.22077078605550413
#>     Attrib V41    -0.22237793958519544
#>     Attrib V42    0.2496715821801918
#>     Attrib V43    0.4305561562994648
#>     Attrib V44    0.3784867668785409
#>     Attrib V45    0.10687090917028053
#>     Attrib V46    -0.25193887034220797
#>     Attrib V47    -0.49343294800492216
#>     Attrib V48    0.3509583878896174
#>     Attrib V49    0.5875764122475171
#>     Attrib V5    -0.22064894243428723
#>     Attrib V50    -0.6601389743445771
#>     Attrib V51    0.0995816744513603
#>     Attrib V52    0.0278930962599668
#>     Attrib V53    -0.005724729295472929
#>     Attrib V54    0.6414468443612084
#>     Attrib V55    -0.2652873800554626
#>     Attrib V56    0.1700881178313059
#>     Attrib V57    0.7422912391577725
#>     Attrib V58    0.37555686152049217
#>     Attrib V59    0.9644649076216952
#>     Attrib V6    -0.5332314163689486
#>     Attrib V60    0.43936386820199463
#>     Attrib V7    0.1477956422038883
#>     Attrib V8    -0.07550704130626325
#>     Attrib V9    0.4573827710484702
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.18394702567520552
#>     Attrib V1    0.16777290582538856
#>     Attrib V10    0.1264468586360682
#>     Attrib V11    0.0565090880069818
#>     Attrib V12    0.07616764832991856
#>     Attrib V13    0.055468281651860685
#>     Attrib V14    0.13477513722358847
#>     Attrib V15    0.13365308355667838
#>     Attrib V16    0.028583721950059766
#>     Attrib V17    0.020239815421679946
#>     Attrib V18    0.02033499024472726
#>     Attrib V19    0.09059618418799716
#>     Attrib V2    0.017331997912929817
#>     Attrib V20    0.11339194989589657
#>     Attrib V21    0.11137758641649363
#>     Attrib V22    -0.013633664092318953
#>     Attrib V23    -0.012263550704238148
#>     Attrib V24    0.0586105740247672
#>     Attrib V25    -0.01878713187987628
#>     Attrib V26    -0.212163738851446
#>     Attrib V27    -0.11863787110106426
#>     Attrib V28    -0.1382724585845458
#>     Attrib V29    -0.16729022840872712
#>     Attrib V3    0.13526064628313703
#>     Attrib V30    3.2468081028466016E-5
#>     Attrib V31    -0.36355593845907497
#>     Attrib V32    -0.15576093145037262
#>     Attrib V33    0.05461136923771175
#>     Attrib V34    0.04167234147378344
#>     Attrib V35    -0.04349470336215506
#>     Attrib V36    -0.18053451152995856
#>     Attrib V37    -0.15938429005116195
#>     Attrib V38    0.08180461194473965
#>     Attrib V39    0.16159797130705453
#>     Attrib V4    0.20622264984567618
#>     Attrib V40    -0.05658857872050133
#>     Attrib V41    -0.0418435222044824
#>     Attrib V42    0.037889253317583534
#>     Attrib V43    0.03433409577505603
#>     Attrib V44    0.10246536397252641
#>     Attrib V45    0.02989560258673308
#>     Attrib V46    0.00640113734346526
#>     Attrib V47    -0.03685961002220506
#>     Attrib V48    0.10866093113338869
#>     Attrib V49    0.2129582626214655
#>     Attrib V5    0.05667359173929674
#>     Attrib V50    -0.14410948257644413
#>     Attrib V51    0.07906006550752291
#>     Attrib V52    0.06480400418220877
#>     Attrib V53    0.09731573255941145
#>     Attrib V54    0.21344673838019937
#>     Attrib V55    0.05093042106382689
#>     Attrib V56    0.10976360713171657
#>     Attrib V57    0.28734998046167143
#>     Attrib V58    0.16203156487709947
#>     Attrib V59    0.379302235663107
#>     Attrib V6    -0.060444437766646764
#>     Attrib V60    0.2779830506719468
#>     Attrib V7    0.10533360501979079
#>     Attrib V8    -0.03921020950181306
#>     Attrib V9    0.186388310463211
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.007750654959764103
#>     Attrib V1    0.298528727142487
#>     Attrib V10    0.6769163353469825
#>     Attrib V11    0.27633012001225277
#>     Attrib V12    0.3028977168597511
#>     Attrib V13    -0.44511346913859634
#>     Attrib V14    -0.22140564986404734
#>     Attrib V15    0.14227614769558128
#>     Attrib V16    0.043272874349024854
#>     Attrib V17    -0.18030119403579842
#>     Attrib V18    -0.03591884559429962
#>     Attrib V19    0.4051703060453724
#>     Attrib V2    -0.13681903915811017
#>     Attrib V20    0.18393728967402545
#>     Attrib V21    0.2924606305195768
#>     Attrib V22    0.24926397284252208
#>     Attrib V23    0.25605244341132183
#>     Attrib V24    0.5892861343561673
#>     Attrib V25    0.14197516618149336
#>     Attrib V26    -0.43290478178860825
#>     Attrib V27    -0.6218760464311919
#>     Attrib V28    -0.36385976288830635
#>     Attrib V29    -0.7576425018977345
#>     Attrib V3    -0.22931757194449257
#>     Attrib V30    0.42093003440318805
#>     Attrib V31    -0.6381327630449881
#>     Attrib V32    0.1167408302221777
#>     Attrib V33    0.8798842445197755
#>     Attrib V34    0.09089253040403146
#>     Attrib V35    -0.42911296155206596
#>     Attrib V36    -1.2543522746034856
#>     Attrib V37    -1.2904114604772647
#>     Attrib V38    -0.08174484594882046
#>     Attrib V39    0.364740213257548
#>     Attrib V4    0.2659281438524992
#>     Attrib V40    -0.24685554960573544
#>     Attrib V41    -0.24785501420516906
#>     Attrib V42    0.03688178885773595
#>     Attrib V43    0.20420304413130833
#>     Attrib V44    0.3272300249338005
#>     Attrib V45    -0.14834556187359893
#>     Attrib V46    -0.31401440666044894
#>     Attrib V47    -0.3904103569221669
#>     Attrib V48    0.6839105492304689
#>     Attrib V49    1.0370277589791463
#>     Attrib V5    -0.2588264236414916
#>     Attrib V50    -0.7951743523324891
#>     Attrib V51    0.13726415669965927
#>     Attrib V52    0.1793578382006147
#>     Attrib V53    0.01371811217966139
#>     Attrib V54    0.7186254191708599
#>     Attrib V55    -0.2177514387413629
#>     Attrib V56    0.09666177177651901
#>     Attrib V57    0.2905117399381936
#>     Attrib V58    0.3248864526157766
#>     Attrib V59    0.6789737643162216
#>     Attrib V6    -0.5228107107910069
#>     Attrib V60    0.21240854454344352
#>     Attrib V7    0.1007586856886969
#>     Attrib V8    -0.1485908678393907
#>     Attrib V9    0.7617475947740493
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.25531208783287385
#>     Attrib V1    -0.2059193431376524
#>     Attrib V10    -0.35845682948234475
#>     Attrib V11    -0.24616534649859226
#>     Attrib V12    -0.5375409195513158
#>     Attrib V13    0.32880607853886007
#>     Attrib V14    0.34445185676593065
#>     Attrib V15    0.1634091256527363
#>     Attrib V16    0.2079147257180643
#>     Attrib V17    0.579787738896997
#>     Attrib V18    0.32857556692894657
#>     Attrib V19    0.3049116274321377
#>     Attrib V2    0.14772091108896784
#>     Attrib V20    0.38248508779116036
#>     Attrib V21    -0.27318326522371233
#>     Attrib V22    -0.23428218462938935
#>     Attrib V23    -0.30462909498083185
#>     Attrib V24    -0.779124381595843
#>     Attrib V25    -0.21187456892867676
#>     Attrib V26    0.41576647030936914
#>     Attrib V27    0.12672547740017753
#>     Attrib V28    -0.40600025458045774
#>     Attrib V29    -0.16390906835335026
#>     Attrib V3    0.2634704605859416
#>     Attrib V30    -0.8393744100095262
#>     Attrib V31    1.2246198837287066
#>     Attrib V32    0.2538253387117254
#>     Attrib V33    -1.0146152670500557
#>     Attrib V34    -0.18627934536484403
#>     Attrib V35    0.26734915912174984
#>     Attrib V36    1.0295606795629884
#>     Attrib V37    0.9041760082038931
#>     Attrib V38    -0.2621225437033874
#>     Attrib V39    -0.7562120371496857
#>     Attrib V4    0.20363528374356493
#>     Attrib V40    0.0893246226641755
#>     Attrib V41    -0.2862848839936225
#>     Attrib V42    -0.6739613447254926
#>     Attrib V43    -1.0968003122239045
#>     Attrib V44    -0.9346141346884391
#>     Attrib V45    -0.3175599178355786
#>     Attrib V46    -0.0322915650937894
#>     Attrib V47    0.38769506351748595
#>     Attrib V48    -0.7016848779701129
#>     Attrib V49    -0.8599653464558512
#>     Attrib V5    0.3924618275697272
#>     Attrib V50    1.2427411166750228
#>     Attrib V51    0.12577526433412173
#>     Attrib V52    0.28590163194575596
#>     Attrib V53    0.10648858137002686
#>     Attrib V54    -0.24831235656113815
#>     Attrib V55    0.8801799130321839
#>     Attrib V56    0.28479126828287554
#>     Attrib V57    -0.3601551575374113
#>     Attrib V58    0.1450158810387374
#>     Attrib V59    -0.4995824403686963
#>     Attrib V6    0.7699039218460969
#>     Attrib V60    0.15689736006933866
#>     Attrib V7    0.19886683875171324
#>     Attrib V8    0.5828668305772012
#>     Attrib V9    -0.6386266294313029
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.14982034100863653
#>     Attrib V1    0.059033887362915795
#>     Attrib V10    -0.02395916350446803
#>     Attrib V11    -0.02597573931545699
#>     Attrib V12    -0.05621011880910315
#>     Attrib V13    0.08171431345661957
#>     Attrib V14    0.015343659706939775
#>     Attrib V15    -0.021665919231194875
#>     Attrib V16    0.07409381906580013
#>     Attrib V17    0.12230005038073158
#>     Attrib V18    0.11173357408412336
#>     Attrib V19    0.00671362503338449
#>     Attrib V2    0.04964828529375215
#>     Attrib V20    -0.039175242457506275
#>     Attrib V21    -0.02714662605371705
#>     Attrib V22    0.02790978636599227
#>     Attrib V23    0.015575642608089515
#>     Attrib V24    -0.004753228170063838
#>     Attrib V25    -0.01315472253487679
#>     Attrib V26    -0.0854374688141464
#>     Attrib V27    -0.12212793121746565
#>     Attrib V28    -0.17506177311980664
#>     Attrib V29    -0.11589912769138583
#>     Attrib V3    0.09652676925324176
#>     Attrib V30    -0.15342355921394746
#>     Attrib V31    0.08723725127709155
#>     Attrib V32    0.1218330837056504
#>     Attrib V33    0.037677336469430014
#>     Attrib V34    0.0904959573959219
#>     Attrib V35    0.061928125687127585
#>     Attrib V36    0.13926332991448864
#>     Attrib V37    0.20067121513515995
#>     Attrib V38    0.05899562509274258
#>     Attrib V39    0.029929073483554045
#>     Attrib V4    0.030802751173607125
#>     Attrib V40    0.13584962477632337
#>     Attrib V41    0.2126166234222886
#>     Attrib V42    0.2084181424592901
#>     Attrib V43    0.08000483106447928
#>     Attrib V44    0.02099197796798147
#>     Attrib V45    0.08978898108614389
#>     Attrib V46    0.10770866171186813
#>     Attrib V47    0.09836889614554782
#>     Attrib V48    -0.049066379440602347
#>     Attrib V49    -0.09022382541257612
#>     Attrib V5    0.09233328898686627
#>     Attrib V50    0.2014390337270532
#>     Attrib V51    0.08306224021586209
#>     Attrib V52    0.03733314353040827
#>     Attrib V53    0.05432700185648521
#>     Attrib V54    -0.06286224468269704
#>     Attrib V55    0.060355952227073524
#>     Attrib V56    0.05819863970748279
#>     Attrib V57    0.0616471947559311
#>     Attrib V58    0.07562285592398797
#>     Attrib V59    -0.05980671576739793
#>     Attrib V6    0.17275861983334995
#>     Attrib V60    0.03225571485420345
#>     Attrib V7    0.06561998269439179
#>     Attrib V8    0.06401919604821657
#>     Attrib V9    0.007564514543076257
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.1251053503380845
#>     Attrib V1    0.1416294446633421
#>     Attrib V10    0.15954591060718726
#>     Attrib V11    0.09388933090591527
#>     Attrib V12    0.02565999944841909
#>     Attrib V13    -0.02081344650440918
#>     Attrib V14    0.07193370031082257
#>     Attrib V15    0.14502320312507228
#>     Attrib V16    0.050752924624706396
#>     Attrib V17    0.03047909060595616
#>     Attrib V18    0.014719721280840032
#>     Attrib V19    0.09015761843926759
#>     Attrib V2    0.11183112525699326
#>     Attrib V20    0.03270195849323587
#>     Attrib V21    0.01512126935909788
#>     Attrib V22    0.04871307630893588
#>     Attrib V23    -0.04086826641501792
#>     Attrib V24    0.021844695939820878
#>     Attrib V25    -0.07327774219304842
#>     Attrib V26    -0.12887559949482877
#>     Attrib V27    -0.08329561136815068
#>     Attrib V28    -0.06796269585029312
#>     Attrib V29    -0.12526339148290136
#>     Attrib V3    0.06170619068522363
#>     Attrib V30    0.01746451193900716
#>     Attrib V31    -0.11877543887192389
#>     Attrib V32    -0.11777989306800925
#>     Attrib V33    0.06508722982656685
#>     Attrib V34    -0.00856463288890684
#>     Attrib V35    0.06188706443817697
#>     Attrib V36    -0.06625004126347799
#>     Attrib V37    -0.06535190044356148
#>     Attrib V38    0.11571332694215576
#>     Attrib V39    0.10108544085729246
#>     Attrib V4    0.1163326156047066
#>     Attrib V40    -0.05609311142915137
#>     Attrib V41    0.018680177972487225
#>     Attrib V42    0.00485616055786277
#>     Attrib V43    0.08790761512953113
#>     Attrib V44    0.12281127708896761
#>     Attrib V45    0.11659154224511754
#>     Attrib V46    0.005513641898714417
#>     Attrib V47    -0.032874413768629825
#>     Attrib V48    0.13144594833984416
#>     Attrib V49    0.09708460876898661
#>     Attrib V5    0.061072143739791106
#>     Attrib V50    -0.013492330353928413
#>     Attrib V51    0.10349483013291581
#>     Attrib V52    0.08181714455450634
#>     Attrib V53    0.0525110947554883
#>     Attrib V54    0.10744956839222959
#>     Attrib V55    0.09968630412404667
#>     Attrib V56    0.10166690812784421
#>     Attrib V57    0.20229249604420738
#>     Attrib V58    0.0858386884630108
#>     Attrib V59    0.14621135724893047
#>     Attrib V6    0.024798420084003098
#>     Attrib V60    0.15660218077356763
#>     Attrib V7    0.02443091829095924
#>     Attrib V8    0.0632702427346588
#>     Attrib V9    0.15784058909496898
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.21376506813627602
#>     Attrib V1    0.1020818218494902
#>     Attrib V10    0.10131822744149424
#>     Attrib V11    0.05610769168032142
#>     Attrib V12    0.012914898496173414
#>     Attrib V13    0.021418991754397335
#>     Attrib V14    0.08382226626076889
#>     Attrib V15    0.03313258698614789
#>     Attrib V16    0.04236373977975448
#>     Attrib V17    0.011456345862790056
#>     Attrib V18    0.07856567627782952
#>     Attrib V19    0.01342030392053508
#>     Attrib V2    0.07879063187894358
#>     Attrib V20    0.051608301141165054
#>     Attrib V21    0.04872772266590099
#>     Attrib V22    0.0038222977842707574
#>     Attrib V23    9.227079732080453E-4
#>     Attrib V24    -0.02450728804478149
#>     Attrib V25    -0.008836050331036824
#>     Attrib V26    -0.045217033951747476
#>     Attrib V27    -0.051423688463010535
#>     Attrib V28    -0.08232077857891291
#>     Attrib V29    -0.10325630974220536
#>     Attrib V3    0.12652335493800984
#>     Attrib V30    -0.07545502869279802
#>     Attrib V31    -0.11682951214676886
#>     Attrib V32    -0.053068268147939655
#>     Attrib V33    0.022970757242030116
#>     Attrib V34    0.052862926005455224
#>     Attrib V35    0.01876922233252867
#>     Attrib V36    0.07196765493859258
#>     Attrib V37    0.005706017137110908
#>     Attrib V38    0.04603310656271186
#>     Attrib V39    0.094545146691227
#>     Attrib V4    0.0579499843506873
#>     Attrib V40    -0.0011138637499430015
#>     Attrib V41    -9.055956080370106E-4
#>     Attrib V42    0.041337645746197485
#>     Attrib V43    0.04369272724909305
#>     Attrib V44    0.1208738268522038
#>     Attrib V45    0.03563356150416795
#>     Attrib V46    0.03275044116167647
#>     Attrib V47    0.07664529104596006
#>     Attrib V48    0.07684899756010545
#>     Attrib V49    0.11943928305864146
#>     Attrib V5    0.07872467214179864
#>     Attrib V50    -0.012670795882705232
#>     Attrib V51    0.14547198716193213
#>     Attrib V52    0.07962828017105704
#>     Attrib V53    0.07462184096250693
#>     Attrib V54    0.05526545653973459
#>     Attrib V55    0.09337024517216773
#>     Attrib V56    0.10276429568608333
#>     Attrib V57    0.07151606858269592
#>     Attrib V58    0.09809042155798772
#>     Attrib V59    0.15108973242851725
#>     Attrib V6    0.026330418224284113
#>     Attrib V60    0.16099416864376254
#>     Attrib V7    0.09560592091937811
#>     Attrib V8    0.08005731471870424
#>     Attrib V9    0.12241262951631705
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.17045146746569687
#>     Attrib V1    0.016568250599051516
#>     Attrib V10    0.7026841970556941
#>     Attrib V11    0.4493951244949741
#>     Attrib V12    0.7419414932596158
#>     Attrib V13    -0.19952212021305796
#>     Attrib V14    -0.2280115326948986
#>     Attrib V15    0.11574293412320615
#>     Attrib V16    0.041381908742251665
#>     Attrib V17    -0.21422852006414483
#>     Attrib V18    -0.01615332112043534
#>     Attrib V19    0.5071930341097655
#>     Attrib V2    -0.09368115665041274
#>     Attrib V20    0.1462355848813742
#>     Attrib V21    0.17393473158708775
#>     Attrib V22    0.25805491377815365
#>     Attrib V23    0.3978689079920894
#>     Attrib V24    0.7438599831326127
#>     Attrib V25    0.19022883913211305
#>     Attrib V26    -0.2897359436066081
#>     Attrib V27    -0.2307561434299979
#>     Attrib V28    0.2510203762692933
#>     Attrib V29    -0.19618868704494397
#>     Attrib V3    -0.1138336128452125
#>     Attrib V30    0.44925531257758067
#>     Attrib V31    -1.00811222542346
#>     Attrib V32    -0.17103560915013866
#>     Attrib V33    0.7829130649156614
#>     Attrib V34    0.26628735230446066
#>     Attrib V35    -0.007515480214776433
#>     Attrib V36    -0.9347029324942845
#>     Attrib V37    -0.8844130028085956
#>     Attrib V38    0.11016320431310106
#>     Attrib V39    0.48407797861102303
#>     Attrib V4    0.11672779106537617
#>     Attrib V40    -0.20966865618321118
#>     Attrib V41    -0.1368825956029306
#>     Attrib V42    -0.06438807677267933
#>     Attrib V43    0.21616602155022419
#>     Attrib V44    0.33973873367245166
#>     Attrib V45    0.062458653265424255
#>     Attrib V46    -0.021649129305368296
#>     Attrib V47    -0.29390251264618583
#>     Attrib V48    0.6007464602487865
#>     Attrib V49    1.0261773760303128
#>     Attrib V5    0.03908526278020806
#>     Attrib V50    -0.9714450038040995
#>     Attrib V51    0.16663642539544984
#>     Attrib V52    0.41580712524343466
#>     Attrib V53    0.25386405649684624
#>     Attrib V54    0.6154107794999165
#>     Attrib V55    -0.20969369263034418
#>     Attrib V56    -0.11882496525095425
#>     Attrib V57    -0.06543160508361424
#>     Attrib V58    0.16511010287107755
#>     Attrib V59    0.344778258914851
#>     Attrib V6    -0.44166110464067937
#>     Attrib V60    -0.07381454099225866
#>     Attrib V7    0.005082105317916921
#>     Attrib V8    -0.44781228796728356
#>     Attrib V9    0.7614023360131811
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    -0.04552249952410923
#>     Attrib V1    0.36480980049728623
#>     Attrib V10    0.18064664282209214
#>     Attrib V11    -0.12426331894280351
#>     Attrib V12    -0.03368221188988292
#>     Attrib V13    -0.2710171071009524
#>     Attrib V14    0.15055224177884588
#>     Attrib V15    0.3368808292695583
#>     Attrib V16    0.146521535690672
#>     Attrib V17    0.02245286220626232
#>     Attrib V18    0.0937652268272202
#>     Attrib V19    0.3003825281431098
#>     Attrib V2    -0.04184664052335146
#>     Attrib V20    0.30979690930726184
#>     Attrib V21    0.4335052513217642
#>     Attrib V22    0.22402987833290583
#>     Attrib V23    -0.027815559815804528
#>     Attrib V24    0.05871039039636684
#>     Attrib V25    -0.36179106380165144
#>     Attrib V26    -0.6502733683340385
#>     Attrib V27    -0.591897293934235
#>     Attrib V28    -0.4672636922374714
#>     Attrib V29    -0.4664990272230005
#>     Attrib V3    -0.03525559689889819
#>     Attrib V30    0.14379759686730467
#>     Attrib V31    -0.6535648401080024
#>     Attrib V32    -0.28683019960999473
#>     Attrib V33    0.3084548832967777
#>     Attrib V34    -0.059479696979013785
#>     Attrib V35    -0.26130028794096577
#>     Attrib V36    -0.5196086656236266
#>     Attrib V37    -0.5751746668184515
#>     Attrib V38    0.1710084222383057
#>     Attrib V39    0.2375232083969693
#>     Attrib V4    0.347107484030216
#>     Attrib V40    -0.1900874913378518
#>     Attrib V41    -0.13968039742601615
#>     Attrib V42    0.12264365228667361
#>     Attrib V43    0.24934598498451518
#>     Attrib V44    0.2953244319497143
#>     Attrib V45    0.09358729756547125
#>     Attrib V46    -0.2342504416751547
#>     Attrib V47    -0.40180951565264805
#>     Attrib V48    0.21770452254684328
#>     Attrib V49    0.3786593387464373
#>     Attrib V5    -0.09602713655390678
#>     Attrib V50    -0.4460979137824925
#>     Attrib V51    0.150088624284328
#>     Attrib V52    0.029486190283225862
#>     Attrib V53    -0.0054713309689263
#>     Attrib V54    0.5350477095628521
#>     Attrib V55    -0.06811325513892631
#>     Attrib V56    0.1326222408790767
#>     Attrib V57    0.48601071855545175
#>     Attrib V58    0.29940664695248137
#>     Attrib V59    0.7358302731228485
#>     Attrib V6    -0.30922029864086636
#>     Attrib V60    0.3845569865167365
#>     Attrib V7    0.17185417841245462
#>     Attrib V8    -0.09069829937230779
#>     Attrib V9    0.3248010133315101
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.3962810448624728
#>     Attrib V1    -0.05073588858990862
#>     Attrib V10    -0.8414756744287352
#>     Attrib V11    -0.656533979052884
#>     Attrib V12    -1.1734406987101127
#>     Attrib V13    0.13849384343205765
#>     Attrib V14    0.5332475281995078
#>     Attrib V15    0.043219822027669885
#>     Attrib V16    0.07548843151688978
#>     Attrib V17    0.5921310388502299
#>     Attrib V18    0.2782115197450173
#>     Attrib V19    0.006629909403404528
#>     Attrib V2    -0.05812352922425046
#>     Attrib V20    0.24641572164657252
#>     Attrib V21    -0.09540845726979529
#>     Attrib V22    -0.2288114851427587
#>     Attrib V23    -0.5396644903793075
#>     Attrib V24    -0.9006462841272591
#>     Attrib V25    0.04031362503039708
#>     Attrib V26    0.5886661146069787
#>     Attrib V27    0.1479267117294115
#>     Attrib V28    -0.5930379965339034
#>     Attrib V29    -0.029690723268558254
#>     Attrib V3    -0.08102831669536768
#>     Attrib V30    -0.5361749883081434
#>     Attrib V31    1.7110239692713076
#>     Attrib V32    0.3946455602605545
#>     Attrib V33    -1.0644613648224412
#>     Attrib V34    -0.5344331160057227
#>     Attrib V35    -0.14029851591836312
#>     Attrib V36    1.1555912243165722
#>     Attrib V37    0.7690194133777865
#>     Attrib V38    -0.24810363581211098
#>     Attrib V39    -0.7237355777872612
#>     Attrib V4    0.16055197694102666
#>     Attrib V40    0.2341076387446686
#>     Attrib V41    -0.29482723252747
#>     Attrib V42    -0.2013960942433002
#>     Attrib V43    -0.6852154905731996
#>     Attrib V44    -0.6157764307945597
#>     Attrib V45    -0.17229440603958146
#>     Attrib V46    -0.29755053793593783
#>     Attrib V47    0.17468208925269724
#>     Attrib V48    -0.9344745500270677
#>     Attrib V49    -1.2190976323971585
#>     Attrib V5    0.0439899518827382
#>     Attrib V50    1.3182709896163705
#>     Attrib V51    -0.07870827669126815
#>     Attrib V52    -0.20206857505783804
#>     Attrib V53    -0.10181576803629522
#>     Attrib V54    -0.39704595182689595
#>     Attrib V55    0.6627560153998284
#>     Attrib V56    0.35833609504056974
#>     Attrib V57    -0.04787083765851287
#>     Attrib V58    0.0738523164678718
#>     Attrib V59    -0.2284756801110938
#>     Attrib V6    0.6054144826176335
#>     Attrib V60    0.394006675628774
#>     Attrib V7    0.3017231480492805
#>     Attrib V8    0.8653867284823881
#>     Attrib V9    -0.9784586572129544
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.018656015288738687
#>     Attrib V1    0.3398961554657005
#>     Attrib V10    0.12331138428789015
#>     Attrib V11    -0.07718850530384029
#>     Attrib V12    -0.003066167417089052
#>     Attrib V13    -0.15762927139652427
#>     Attrib V14    0.16296054972775392
#>     Attrib V15    0.2811036293733721
#>     Attrib V16    0.19530578739256882
#>     Attrib V17    0.016633895422482135
#>     Attrib V18    0.03251991531427908
#>     Attrib V19    0.14870865951263232
#>     Attrib V2    0.006324263550388672
#>     Attrib V20    0.21615668052849027
#>     Attrib V21    0.25780798344636663
#>     Attrib V22    0.03285009067531952
#>     Attrib V23    -0.1905553215045048
#>     Attrib V24    0.008425616372647129
#>     Attrib V25    -0.3389347198088609
#>     Attrib V26    -0.6009712911971352
#>     Attrib V27    -0.55323865917972
#>     Attrib V28    -0.472051451968072
#>     Attrib V29    -0.4215418738463247
#>     Attrib V3    0.02876788207962953
#>     Attrib V30    0.003798215136544033
#>     Attrib V31    -0.4691838260497875
#>     Attrib V32    -0.2222762689913027
#>     Attrib V33    0.15420643513343046
#>     Attrib V34    -0.03786142148461839
#>     Attrib V35    -0.18806174476721146
#>     Attrib V36    -0.4282982249669826
#>     Attrib V37    -0.4606514704421293
#>     Attrib V38    0.0693001695301755
#>     Attrib V39    0.14731348775570016
#>     Attrib V4    0.37034504177925837
#>     Attrib V40    -0.16046368788280038
#>     Attrib V41    -0.1831432365228159
#>     Attrib V42    0.04477428767698078
#>     Attrib V43    0.15180979767756694
#>     Attrib V44    0.11843337959426484
#>     Attrib V45    -0.0062061278903731976
#>     Attrib V46    -0.1468259853483699
#>     Attrib V47    -0.32094542495730816
#>     Attrib V48    0.17228332041889796
#>     Attrib V49    0.24987402696694783
#>     Attrib V5    -0.03006483346933872
#>     Attrib V50    -0.3007108835939367
#>     Attrib V51    0.017672832421147613
#>     Attrib V52    -0.016408339815557508
#>     Attrib V53    -0.020330456353900225
#>     Attrib V54    0.42218337791055366
#>     Attrib V55    0.03328951695244521
#>     Attrib V56    0.16712546295858705
#>     Attrib V57    0.5295919307604383
#>     Attrib V58    0.3048585648840106
#>     Attrib V59    0.6208487484178223
#>     Attrib V6    -0.2114639626889216
#>     Attrib V60    0.38727033053209353
#>     Attrib V7    0.12879650573080384
#>     Attrib V8    -0.09532738445392586
#>     Attrib V9    0.22092616435448653
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.060281430549925276
#>     Attrib V1    0.4678824702645905
#>     Attrib V10    0.20501857434457943
#>     Attrib V11    -0.16716653602879364
#>     Attrib V12    -0.11834566690561465
#>     Attrib V13    -0.3710740671246995
#>     Attrib V14    0.1303209352352366
#>     Attrib V15    0.40315721859203707
#>     Attrib V16    0.16487851197912318
#>     Attrib V17    0.028545223572884422
#>     Attrib V18    0.041457600205707226
#>     Attrib V19    0.3312671240003686
#>     Attrib V2    -0.10756434698642697
#>     Attrib V20    0.3372396774224245
#>     Attrib V21    0.4995003417644849
#>     Attrib V22    0.3080525865616378
#>     Attrib V23    -0.04909637050545054
#>     Attrib V24    0.06158089773094079
#>     Attrib V25    -0.4443395715646636
#>     Attrib V26    -0.836828419034922
#>     Attrib V27    -0.862100096225926
#>     Attrib V28    -0.649496854286454
#>     Attrib V29    -0.7589971831042174
#>     Attrib V3    -0.004510919440607272
#>     Attrib V30    0.1495879441754976
#>     Attrib V31    -0.8688998332871599
#>     Attrib V32    -0.26279428315974024
#>     Attrib V33    0.5060382698512533
#>     Attrib V34    -0.02512253555737013
#>     Attrib V35    -0.3345011069281868
#>     Attrib V36    -0.7798631656003892
#>     Attrib V37    -0.8294866064656731
#>     Attrib V38    0.14936741193876563
#>     Attrib V39    0.32054272017730256
#>     Attrib V4    0.4794252202541264
#>     Attrib V40    -0.3007102787417976
#>     Attrib V41    -0.22801803167118007
#>     Attrib V42    0.2255778069834001
#>     Attrib V43    0.3551780013118288
#>     Attrib V44    0.34553355902976735
#>     Attrib V45    0.1525869572238625
#>     Attrib V46    -0.2933959717631758
#>     Attrib V47    -0.45671571161503816
#>     Attrib V48    0.26040199084193305
#>     Attrib V49    0.5551564089825551
#>     Attrib V5    -0.2183088297523485
#>     Attrib V50    -0.6221200142613095
#>     Attrib V51    0.06800914939182333
#>     Attrib V52    -0.056761851097218874
#>     Attrib V53    -0.04707110551906316
#>     Attrib V54    0.6722253606632301
#>     Attrib V55    -0.1920349786549998
#>     Attrib V56    0.20060088049220112
#>     Attrib V57    0.6309322385651819
#>     Attrib V58    0.3554932143157676
#>     Attrib V59    0.9865268845009849
#>     Attrib V6    -0.4124749494151127
#>     Attrib V60    0.48979143423652144
#>     Attrib V7    0.21451650281746168
#>     Attrib V8    -0.04586065811810989
#>     Attrib V9    0.4452483141815493
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.0967707988850269
#>     Attrib V1    0.07822136049491876
#>     Attrib V10    -0.14326867779826108
#>     Attrib V11    -0.083368224199954
#>     Attrib V12    -0.09486449395136777
#>     Attrib V13    0.04747012093347529
#>     Attrib V14    0.0372747557672624
#>     Attrib V15    0.005486328928527532
#>     Attrib V16    -0.016268515453347173
#>     Attrib V17    0.11411019474935234
#>     Attrib V18    0.04841047816779976
#>     Attrib V19    -0.08768642954961892
#>     Attrib V2    0.09892199674550213
#>     Attrib V20    -0.03928203230113983
#>     Attrib V21    -0.001736116033782713
#>     Attrib V22    0.026272388015974427
#>     Attrib V23    0.10269000798305962
#>     Attrib V24    -0.07754852907493551
#>     Attrib V25    -0.06453518003386777
#>     Attrib V26    -0.053109010324001255
#>     Attrib V27    -0.17541078067785915
#>     Attrib V28    -0.27388902634943124
#>     Attrib V29    -0.1599949621967622
#>     Attrib V3    0.06985167134672708
#>     Attrib V30    -0.20569188048312842
#>     Attrib V31    0.21005550914167592
#>     Attrib V32    0.23507373305919504
#>     Attrib V33    0.039892601659551996
#>     Attrib V34    0.09039262489515937
#>     Attrib V35    0.10422402576140677
#>     Attrib V36    0.2682055420610633
#>     Attrib V37    0.227920863344722
#>     Attrib V38    0.044678754220168614
#>     Attrib V39    -0.02053140810423553
#>     Attrib V4    0.031195293172162047
#>     Attrib V40    0.27469952050650426
#>     Attrib V41    0.33546749184495644
#>     Attrib V42    0.24361859345382741
#>     Attrib V43    0.19848258097781682
#>     Attrib V44    0.04116510078167821
#>     Attrib V45    0.04884346311562384
#>     Attrib V46    0.10737353066193585
#>     Attrib V47    0.14305019967347313
#>     Attrib V48    -0.1177264300594842
#>     Attrib V49    -0.20650260591823066
#>     Attrib V5    0.03474930019854742
#>     Attrib V50    0.3020486635669286
#>     Attrib V51    0.032926537438106536
#>     Attrib V52    0.012916683056510586
#>     Attrib V53    -0.026993254588845685
#>     Attrib V54    -0.09765621242646955
#>     Attrib V55    0.05489376044983176
#>     Attrib V56    0.08488740332314725
#>     Attrib V57    0.10571179469048156
#>     Attrib V58    0.03604491893371123
#>     Attrib V59    -0.05765405147777797
#>     Attrib V6    0.23540255634302223
#>     Attrib V60    -0.024915756799441892
#>     Attrib V7    0.05292175266735954
#>     Attrib V8    0.1412645081895148
#>     Attrib V9    -0.07029814022915902
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.7310773003933546
#>     Attrib V1    0.2643080360238612
#>     Attrib V10    1.1950798196460064
#>     Attrib V11    1.5155028243033026
#>     Attrib V12    2.22610504124732
#>     Attrib V13    0.40151820458510035
#>     Attrib V14    -0.5218764246954269
#>     Attrib V15    -0.1696593711772874
#>     Attrib V16    -0.40731228766065597
#>     Attrib V17    -0.9261586769684971
#>     Attrib V18    -0.47342796125941594
#>     Attrib V19    -0.2579798451724083
#>     Attrib V2    0.7842050027385903
#>     Attrib V20    -0.4892068205331627
#>     Attrib V21    -0.02836898826873174
#>     Attrib V22    0.4389270322226658
#>     Attrib V23    1.3436407148215517
#>     Attrib V24    1.146934442955759
#>     Attrib V25    0.08360881897062214
#>     Attrib V26    0.5168120468785454
#>     Attrib V27    1.5239834626283397
#>     Attrib V28    2.451160215548
#>     Attrib V29    1.726259251027939
#>     Attrib V3    1.1615677905607888
#>     Attrib V30    0.9455295801218161
#>     Attrib V31    -1.4240344085036263
#>     Attrib V32    -0.734735877441937
#>     Attrib V33    0.2216331146163485
#>     Attrib V34    0.18669474351835422
#>     Attrib V35    0.31744829803619484
#>     Attrib V36    -1.3246768007189829
#>     Attrib V37    -0.10651701323270928
#>     Attrib V38    0.121363441261438
#>     Attrib V39    0.9962814931837713
#>     Attrib V4    0.3545287438032113
#>     Attrib V40    0.1732277268073568
#>     Attrib V41    0.7835780385432716
#>     Attrib V42    -0.0761071294478288
#>     Attrib V43    0.631645000617032
#>     Attrib V44    0.4709336558659135
#>     Attrib V45    -0.10360068353107664
#>     Attrib V46    1.0565135633386809
#>     Attrib V47    0.8458155518715594
#>     Attrib V48    1.0600654250002572
#>     Attrib V49    1.4156918099319196
#>     Attrib V5    1.265540392383459
#>     Attrib V50    -0.5201258780853186
#>     Attrib V51    0.5919286105375954
#>     Attrib V52    1.6176056019213285
#>     Attrib V53    1.4367425133286318
#>     Attrib V54    0.30478840587837086
#>     Attrib V55    -0.6196951031729656
#>     Attrib V56    -0.41551533524545764
#>     Attrib V57    0.11895734846005135
#>     Attrib V58    -0.15576787605086595
#>     Attrib V59    -0.3968879870929311
#>     Attrib V6    0.004285029212240427
#>     Attrib V60    -0.766322715444982
#>     Attrib V7    -0.6412492478166287
#>     Attrib V8    -1.5440076874933586
#>     Attrib V9    0.8277949731964208
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.15748623378305782
#>     Attrib V1    0.07944581910291941
#>     Attrib V10    -0.13592284091097762
#>     Attrib V11    -0.11151281234532633
#>     Attrib V12    -0.0924578152447793
#>     Attrib V13    0.061176085597487696
#>     Attrib V14    0.09350416124261622
#>     Attrib V15    -0.03392140072765389
#>     Attrib V16    0.008084051470863673
#>     Attrib V17    0.10762876311802286
#>     Attrib V18    0.04507878867577625
#>     Attrib V19    -0.024677833816446393
#>     Attrib V2    0.1293634367572778
#>     Attrib V20    -0.02882313853558535
#>     Attrib V21    0.02047111068012069
#>     Attrib V22    0.053273883535212424
#>     Attrib V23    0.045489316279554284
#>     Attrib V24    -0.0744956488099345
#>     Attrib V25    -0.025348627309769167
#>     Attrib V26    -0.07491416926054466
#>     Attrib V27    -0.09580334412332915
#>     Attrib V28    -0.24419382150090246
#>     Attrib V29    -0.1164429922535503
#>     Attrib V3    0.04236955309963564
#>     Attrib V30    -0.1889074713600735
#>     Attrib V31    0.2397275338257473
#>     Attrib V32    0.18183523962467918
#>     Attrib V33    0.09041358341408026
#>     Attrib V34    0.04756107293951787
#>     Attrib V35    0.11967959163988034
#>     Attrib V36    0.2499471762652063
#>     Attrib V37    0.2704385145494009
#>     Attrib V38    -0.009422297148659452
#>     Attrib V39    -0.020998129957289724
#>     Attrib V4    0.016370598403214975
#>     Attrib V40    0.22986450535838773
#>     Attrib V41    0.27971049045354324
#>     Attrib V42    0.2798046078237706
#>     Attrib V43    0.14466555839350653
#>     Attrib V44    0.04710243450865726
#>     Attrib V45    0.06832021675668755
#>     Attrib V46    0.059830048868111885
#>     Attrib V47    0.08571954885950234
#>     Attrib V48    -0.06935085145391093
#>     Attrib V49    -0.1920432177674923
#>     Attrib V5    0.021097641447020022
#>     Attrib V50    0.2815489280444921
#>     Attrib V51    -0.03439239929448279
#>     Attrib V52    -0.09723493365906627
#>     Attrib V53    -0.01828744289340853
#>     Attrib V54    -0.08169035759850701
#>     Attrib V55    0.05237582287288475
#>     Attrib V56    0.07261690903437162
#>     Attrib V57    0.08516190956903154
#>     Attrib V58    0.02169464174985854
#>     Attrib V59    -0.05832431065087418
#>     Attrib V6    0.2356577855402935
#>     Attrib V60    0.051034422719370726
#>     Attrib V7    0.054778991795529974
#>     Attrib V8    0.15136318814278843
#>     Attrib V9    -0.14427716526341117
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.04742941768340359
#>     Attrib V1    0.3671357874232718
#>     Attrib V10    0.2570186510964767
#>     Attrib V11    -0.02112916422030816
#>     Attrib V12    0.0568784236972893
#>     Attrib V13    -0.21658356299023826
#>     Attrib V14    0.038579127905828715
#>     Attrib V15    0.269570056524162
#>     Attrib V16    0.10581818116995872
#>     Attrib V17    -0.07716387395939572
#>     Attrib V18    0.08018909332275302
#>     Attrib V19    0.28492989142566943
#>     Attrib V2    -0.09082363002022756
#>     Attrib V20    0.21293619070552916
#>     Attrib V21    0.3722326679854725
#>     Attrib V22    0.17073963321364347
#>     Attrib V23    -0.07051501343313496
#>     Attrib V24    0.18835136618484385
#>     Attrib V25    -0.21395807018628746
#>     Attrib V26    -0.5345218544248431
#>     Attrib V27    -0.6121097534278651
#>     Attrib V28    -0.49391849723533604
#>     Attrib V29    -0.564524997347664
#>     Attrib V3    -0.06183645018877967
#>     Attrib V30    0.1400469341414762
#>     Attrib V31    -0.6270261642879728
#>     Attrib V32    -0.18038519747713674
#>     Attrib V33    0.4074961052217138
#>     Attrib V34    0.05815793511822646
#>     Attrib V35    -0.2619572013207246
#>     Attrib V36    -0.6498734125440128
#>     Attrib V37    -0.7379137782810474
#>     Attrib V38    0.09985223375513975
#>     Attrib V39    0.28281253247837046
#>     Attrib V4    0.3812237906653522
#>     Attrib V40    -0.26997862610034395
#>     Attrib V41    -0.17445005343279774
#>     Attrib V42    0.10452861434693746
#>     Attrib V43    0.13411255219905796
#>     Attrib V44    0.24340275034964887
#>     Attrib V45    0.10009191947305729
#>     Attrib V46    -0.2600495083743979
#>     Attrib V47    -0.39285533343235296
#>     Attrib V48    0.3207780851857431
#>     Attrib V49    0.4417811466886506
#>     Attrib V5    -0.10529088239615939
#>     Attrib V50    -0.4487279890019259
#>     Attrib V51    0.0768637447991258
#>     Attrib V52    -0.012480254269015962
#>     Attrib V53    -0.007812227597417849
#>     Attrib V54    0.5433075828991282
#>     Attrib V55    -0.07593584111878246
#>     Attrib V56    0.039294791406644033
#>     Attrib V57    0.49708477640272336
#>     Attrib V58    0.275830427696751
#>     Attrib V59    0.7409185561999704
#>     Attrib V6    -0.3336917481158142
#>     Attrib V60    0.3495962208503146
#>     Attrib V7    0.09991676692878469
#>     Attrib V8    -0.05945438934112307
#>     Attrib V9    0.3935618092013302
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    0.04314956140632891
#>     Attrib V1    -0.3130477018958366
#>     Attrib V10    -1.3272054244725366
#>     Attrib V11    -1.2400482306963607
#>     Attrib V12    -1.2556331803465468
#>     Attrib V13    0.21939805701655488
#>     Attrib V14    0.555476337081475
#>     Attrib V15    -0.1273054541119055
#>     Attrib V16    -0.3457106479685256
#>     Attrib V17    -0.10466583460151022
#>     Attrib V18    -0.174939653735809
#>     Attrib V19    -0.7955559230493097
#>     Attrib V2    0.043878000933093235
#>     Attrib V20    -0.4283873669512426
#>     Attrib V21    -0.5976169884372914
#>     Attrib V22    -0.8685563257570531
#>     Attrib V23    -0.9986177235512459
#>     Attrib V24    -1.1819988351909612
#>     Attrib V25    -0.3375762187574538
#>     Attrib V26    0.1930625347836786
#>     Attrib V27    0.5119213630005728
#>     Attrib V28    -0.1480448599148403
#>     Attrib V29    0.28825563363581785
#>     Attrib V3    0.08629942612463834
#>     Attrib V30    -1.0654694385645302
#>     Attrib V31    1.3894730761081437
#>     Attrib V32    0.09028205437881942
#>     Attrib V33    -1.3134694435051482
#>     Attrib V34    -0.17584262908946208
#>     Attrib V35    0.6129246910992482
#>     Attrib V36    2.122593770908496
#>     Attrib V37    1.7100087129058172
#>     Attrib V38    0.09058915179889902
#>     Attrib V39    -0.5133317331692663
#>     Attrib V4    0.16666972645923644
#>     Attrib V40    0.7469214727481194
#>     Attrib V41    0.31658240194223436
#>     Attrib V42    -0.12112231494490192
#>     Attrib V43    -0.7021691661147744
#>     Attrib V44    -0.8608053063983
#>     Attrib V45    -0.24144818402862858
#>     Attrib V46    -0.12722205034610126
#>     Attrib V47    0.12340870657363542
#>     Attrib V48    -1.0737857869113085
#>     Attrib V49    -1.6799511675291565
#>     Attrib V5    0.016468035716355654
#>     Attrib V50    1.3193203423636302
#>     Attrib V51    -0.4377986892384293
#>     Attrib V52    -0.47864874433952087
#>     Attrib V53    -0.30381092664702797
#>     Attrib V54    -0.899099749981776
#>     Attrib V55    0.4252120348739774
#>     Attrib V56    0.005636704421477913
#>     Attrib V57    0.05822019927390499
#>     Attrib V58    -0.2846280355173089
#>     Attrib V59    -0.26491510380882693
#>     Attrib V6    0.7926340535540178
#>     Attrib V60    0.6226532728719931
#>     Attrib V7    0.22376540403097767
#>     Attrib V8    0.6170161831206556
#>     Attrib V9    -1.3726941522080687
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.041285138129595673
#>     Attrib V1    0.18348814183934736
#>     Attrib V10    0.1805242724234562
#>     Attrib V11    0.12550748463748382
#>     Attrib V12    0.17567855712447436
#>     Attrib V13    -0.0499241657392745
#>     Attrib V14    0.16116564472014192
#>     Attrib V15    0.19918312195909385
#>     Attrib V16    0.04554427713610027
#>     Attrib V17    -0.04771257990347495
#>     Attrib V18    0.014654336199391693
#>     Attrib V19    0.147078580697638
#>     Attrib V2    -0.05024667175485626
#>     Attrib V20    0.1857012398824031
#>     Attrib V21    0.21371571919239477
#>     Attrib V22    0.07593652775837774
#>     Attrib V23    -0.08732147056738038
#>     Attrib V24    0.13815433030052401
#>     Attrib V25    -0.05704302157456228
#>     Attrib V26    -0.35946976544399806
#>     Attrib V27    -0.2931590962335932
#>     Attrib V28    -0.2187992634277628
#>     Attrib V29    -0.2600820851671257
#>     Attrib V3    0.07254800856990004
#>     Attrib V30    6.287801032757374E-4
#>     Attrib V31    -0.47565596576778263
#>     Attrib V32    -0.17986272864156047
#>     Attrib V33    0.1894741755878612
#>     Attrib V34    0.027971197453895466
#>     Attrib V35    -0.10352486641740677
#>     Attrib V36    -0.39165653943750817
#>     Attrib V37    -0.3759746157542593
#>     Attrib V38    0.10695546252637443
#>     Attrib V39    0.19370829049990648
#>     Attrib V4    0.2528375200822999
#>     Attrib V40    -0.15511375470069766
#>     Attrib V41    -0.11253749568208934
#>     Attrib V42    -0.0015615128428785787
#>     Attrib V43    0.1570134740963327
#>     Attrib V44    0.09726328160604127
#>     Attrib V45    0.09394089883500036
#>     Attrib V46    -0.08077585171833454
#>     Attrib V47    -0.14275810949624762
#>     Attrib V48    0.1810749846890121
#>     Attrib V49    0.26490759854230095
#>     Attrib V5    -0.02854109235584845
#>     Attrib V50    -0.2596271597830675
#>     Attrib V51    0.08491149853313971
#>     Attrib V52    0.10809066513894953
#>     Attrib V53    0.04144747251224505
#>     Attrib V54    0.3061862806648855
#>     Attrib V55    0.05054551151844142
#>     Attrib V56    0.12825848087509265
#>     Attrib V57    0.3781702886408274
#>     Attrib V58    0.18232677128524352
#>     Attrib V59    0.44342838591478184
#>     Attrib V6    -0.2079737581691036
#>     Attrib V60    0.25185880964362556
#>     Attrib V7    0.044728593468451074
#>     Attrib V8    -0.0452346355710933
#>     Attrib V9    0.2726149307660685
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.1526735224541305
#>     Attrib V1    0.18394119971514114
#>     Attrib V10    0.19451332146941855
#>     Attrib V11    0.09782837408055031
#>     Attrib V12    0.1321992458357569
#>     Attrib V13    0.07450045882875973
#>     Attrib V14    0.11924881914596183
#>     Attrib V15    0.11973553025515146
#>     Attrib V16    0.03722222754431313
#>     Attrib V17    0.03840333652713047
#>     Attrib V18    -0.004100232623038043
#>     Attrib V19    0.03613715908215773
#>     Attrib V2    0.07480125776406707
#>     Attrib V20    0.017248878427840692
#>     Attrib V21    0.061582690049247185
#>     Attrib V22    -0.014840825723042059
#>     Attrib V23    -0.031320482058487614
#>     Attrib V24    -0.0034181386210140104
#>     Attrib V25    -0.009004023374863558
#>     Attrib V26    -0.07364328215319502
#>     Attrib V27    -0.0906814598664876
#>     Attrib V28    -0.05648537599432942
#>     Attrib V29    -0.17316764761887893
#>     Attrib V3    0.07776013580294114
#>     Attrib V30    0.0010819412376559638
#>     Attrib V31    -0.16822532485731687
#>     Attrib V32    -0.13421226456056082
#>     Attrib V33    0.005189736717276546
#>     Attrib V34    -0.010103751633275461
#>     Attrib V35    0.033035333082971026
#>     Attrib V36    -0.09683456641823568
#>     Attrib V37    -0.049744165170359816
#>     Attrib V38    0.051039114289557604
#>     Attrib V39    0.14747844565493973
#>     Attrib V4    0.20206909706101306
#>     Attrib V40    -0.025460973012541195
#>     Attrib V41    -0.013520031116085622
#>     Attrib V42    0.04941136535250628
#>     Attrib V43    0.040432821375787624
#>     Attrib V44    0.05954845972319429
#>     Attrib V45    0.07796231427396268
#>     Attrib V46    0.015817222900689005
#>     Attrib V47    -0.034126472856872675
#>     Attrib V48    0.14635220716241415
#>     Attrib V49    0.1398767024584121
#>     Attrib V5    0.020654855473914737
#>     Attrib V50    -0.0621696305334807
#>     Attrib V51    0.0878539365110211
#>     Attrib V52    0.11987874475971108
#>     Attrib V53    0.10186018454820044
#>     Attrib V54    0.173877859464926
#>     Attrib V55    0.04716374452721285
#>     Attrib V56    0.1493117401472697
#>     Attrib V57    0.1966693129996381
#>     Attrib V58    0.18424376165777043
#>     Attrib V59    0.300594964046111
#>     Attrib V6    -0.01965805308906382
#>     Attrib V60    0.22178514852198458
#>     Attrib V7    0.01798550560158193
#>     Attrib V8    -0.0034746281679769145
#>     Attrib V9    0.1571331044305694
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.11936038382520604
#>     Attrib V1    0.20331406872931052
#>     Attrib V10    0.13351747984153578
#>     Attrib V11    0.05744498811591197
#>     Attrib V12    0.012676253383662607
#>     Attrib V13    -0.020602712955429228
#>     Attrib V14    0.1470115211080432
#>     Attrib V15    0.20232577007523753
#>     Attrib V16    0.09316612648910241
#>     Attrib V17    0.0549478801993603
#>     Attrib V18    0.06564759340234093
#>     Attrib V19    0.13373462066783665
#>     Attrib V2    0.05466847602776777
#>     Attrib V20    0.16042786988497648
#>     Attrib V21    0.09628265505516641
#>     Attrib V22    0.06680872604288081
#>     Attrib V23    -0.023909978780488096
#>     Attrib V24    0.05889866209656133
#>     Attrib V25    -0.1558882568506577
#>     Attrib V26    -0.27486373999367286
#>     Attrib V27    -0.30502501228969325
#>     Attrib V28    -0.26676541711810386
#>     Attrib V29    -0.30871433954514627
#>     Attrib V3    0.008225425177104092
#>     Attrib V30    -0.03950150437261465
#>     Attrib V31    -0.3332421232789979
#>     Attrib V32    -0.1871740579461233
#>     Attrib V33    0.1100271262343443
#>     Attrib V34    0.017916005372327397
#>     Attrib V35    -0.015702089688804707
#>     Attrib V36    -0.23156525388865518
#>     Attrib V37    -0.22662243110840452
#>     Attrib V38    0.11615647323401042
#>     Attrib V39    0.07700075566839464
#>     Attrib V4    0.22594684972561818
#>     Attrib V40    -0.12307432613820372
#>     Attrib V41    -0.11388032551220313
#>     Attrib V42    0.0047305392522719175
#>     Attrib V43    0.10099894428097445
#>     Attrib V44    0.14457779348846997
#>     Attrib V45    0.036360344318108424
#>     Attrib V46    -0.06832374441500885
#>     Attrib V47    -0.1292748068774499
#>     Attrib V48    0.13166587837526164
#>     Attrib V49    0.19169748317309593
#>     Attrib V5    -0.023836851794515355
#>     Attrib V50    -0.18633317992956802
#>     Attrib V51    0.062328315998990136
#>     Attrib V52    0.06839893779340252
#>     Attrib V53    0.08577159056275588
#>     Attrib V54    0.3242776905819211
#>     Attrib V55    0.08568449862312356
#>     Attrib V56    0.08303371388616622
#>     Attrib V57    0.2995013713459691
#>     Attrib V58    0.15975506031845088
#>     Attrib V59    0.38233880313311297
#>     Attrib V6    -0.11834482598642518
#>     Attrib V60    0.255704293696975
#>     Attrib V7    0.08874567090247236
#>     Attrib V8    0.001999794653356042
#>     Attrib V9    0.23726246488168368
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.15017222643079361
#>     Attrib V1    0.11255938274184081
#>     Attrib V10    -0.025085580168896903
#>     Attrib V11    0.031663259950795206
#>     Attrib V12    -0.019168084385479817
#>     Attrib V13    0.008369234230758393
#>     Attrib V14    0.10914851713528362
#>     Attrib V15    0.03809990809235248
#>     Attrib V16    0.05687210109293066
#>     Attrib V17    0.039649815422862264
#>     Attrib V18    0.0991497272492067
#>     Attrib V19    -0.031078819335462565
#>     Attrib V2    0.07420710188756548
#>     Attrib V20    0.019279425619880337
#>     Attrib V21    0.015142219403540822
#>     Attrib V22    0.015461540422944637
#>     Attrib V23    0.07647535827980759
#>     Attrib V24    -0.012448080345039973
#>     Attrib V25    -0.06799368309109464
#>     Attrib V26    -0.08503668537948637
#>     Attrib V27    -0.09771082931620785
#>     Attrib V28    -0.11193323402401778
#>     Attrib V29    -0.09386816409701865
#>     Attrib V3    0.11409965447762582
#>     Attrib V30    -0.059618465296329484
#>     Attrib V31    0.024098914760285285
#>     Attrib V32    0.034885979532541356
#>     Attrib V33    0.043404479677368414
#>     Attrib V34    0.05893680830656884
#>     Attrib V35    0.08448158432109919
#>     Attrib V36    0.17271793238388047
#>     Attrib V37    0.14043586259100022
#>     Attrib V38    0.01701041110888724
#>     Attrib V39    0.04669000584990563
#>     Attrib V4    0.021903037362723622
#>     Attrib V40    0.08909120953625836
#>     Attrib V41    0.09816859678754918
#>     Attrib V42    0.12573704631405225
#>     Attrib V43    0.019115758840383384
#>     Attrib V44    0.08131408001909163
#>     Attrib V45    0.10146145044182918
#>     Attrib V46    0.06925896063954867
#>     Attrib V47    0.06319898082165518
#>     Attrib V48    -0.03810414584596093
#>     Attrib V49    0.023438025215505538
#>     Attrib V5    0.10128795874173521
#>     Attrib V50    0.08644106745370758
#>     Attrib V51    0.0835062696965716
#>     Attrib V52    0.09542622211614876
#>     Attrib V53    0.055345319184917655
#>     Attrib V54    -0.024633261187835844
#>     Attrib V55    0.05013816621734752
#>     Attrib V56    0.06349703639624728
#>     Attrib V57    0.0464165026461907
#>     Attrib V58    0.11904369854426555
#>     Attrib V59    0.016200545107077288
#>     Attrib V6    0.177136367861123
#>     Attrib V60    0.059753341075028055
#>     Attrib V7    0.09919549924886271
#>     Attrib V8    0.13916085347441073
#>     Attrib V9    0.06314435465845446
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
#>  0.1014493 
```
