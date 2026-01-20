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
#>     Threshold    -1.3256068157922252
#>     Node 2    1.980274652357577
#>     Node 3    1.0361506957665638
#>     Node 4    0.6020091542529509
#>     Node 5    -2.2754938372390474
#>     Node 6    2.420023858341212
#>     Node 7    3.0222798938225095
#>     Node 8    0.8221483356228135
#>     Node 9    3.211174432626689
#>     Node 10    -1.0327846760959492
#>     Node 11    0.8901991636889672
#>     Node 12    1.1475308592516331
#>     Node 13    1.5424308326899827
#>     Node 14    1.576118244438736
#>     Node 15    -3.2535787693640352
#>     Node 16    -0.026262084007499648
#>     Node 17    0.5001343505724152
#>     Node 18    0.9054655757224694
#>     Node 19    2.853734964111103
#>     Node 20    2.777924796910242
#>     Node 21    -2.7171929231639926
#>     Node 22    1.3375289076184291
#>     Node 23    2.6086593606142285
#>     Node 24    -2.6221361400903924
#>     Node 25    3.3374182089200506
#>     Node 26    -0.48493158105027684
#>     Node 27    2.1932520355307683
#>     Node 28    -2.83845887141783
#>     Node 29    1.1633786581942491
#>     Node 30    -0.21690204024134097
#>     Node 31    1.2327349312938418
#>     Node 32    1.4955595413830705
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    1.3319121202164723
#>     Node 2    -2.019349324778247
#>     Node 3    -1.0260186000779064
#>     Node 4    -0.5646793921680596
#>     Node 5    2.301777226811108
#>     Node 6    -2.383411020473497
#>     Node 7    -3.015182115102035
#>     Node 8    -0.8605095613621957
#>     Node 9    -3.208718885158851
#>     Node 10    0.9857891475839444
#>     Node 11    -0.8615620959358337
#>     Node 12    -1.228088497439815
#>     Node 13    -1.479091977931734
#>     Node 14    -1.519292351371688
#>     Node 15    3.2441519517797897
#>     Node 16    0.016575563285210634
#>     Node 17    -0.4675586962468429
#>     Node 18    -0.8724589258261252
#>     Node 19    -2.8553851864236908
#>     Node 20    -2.7698204654162457
#>     Node 21    2.750183330910937
#>     Node 22    -1.4005741075264155
#>     Node 23    -2.6396929607537984
#>     Node 24    2.6120720886203133
#>     Node 25    -3.3272691459868478
#>     Node 26    0.41365347714615425
#>     Node 27    -2.238929398430686
#>     Node 28    2.8134234804684364
#>     Node 29    -1.1944489917255852
#>     Node 30    0.3020106763124803
#>     Node 31    -1.1821457655205758
#>     Node 32    -1.50984743905102
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.12704719087506872
#>     Attrib V1    0.6988173806200461
#>     Attrib V10    -0.16891071081827008
#>     Attrib V11    -0.4004533902354599
#>     Attrib V12    -0.6131135473424576
#>     Attrib V13    -0.2508782476405683
#>     Attrib V14    0.0906790153630016
#>     Attrib V15    0.49424096848256643
#>     Attrib V16    0.45914999871907136
#>     Attrib V17    0.21334070951959894
#>     Attrib V18    0.3317011984662778
#>     Attrib V19    0.3158466554880401
#>     Attrib V2    0.194661721259524
#>     Attrib V20    0.24098896977551054
#>     Attrib V21    0.40661270306913094
#>     Attrib V22    0.43094731472021264
#>     Attrib V23    0.29592804618835133
#>     Attrib V24    0.26636779883632666
#>     Attrib V25    -0.2992714891255131
#>     Attrib V26    -1.0989703369611743
#>     Attrib V27    -0.783814595835047
#>     Attrib V28    0.184707544921251
#>     Attrib V29    0.027233739671782532
#>     Attrib V3    -0.09478536192520635
#>     Attrib V30    0.2615420853367531
#>     Attrib V31    -1.110742437387821
#>     Attrib V32    0.438184069804944
#>     Attrib V33    0.3974832170720536
#>     Attrib V34    -0.5735978533416249
#>     Attrib V35    -0.3662231581612328
#>     Attrib V36    -0.5270247212046814
#>     Attrib V37    -0.5651329990313796
#>     Attrib V38    0.4771317667616917
#>     Attrib V39    0.42268518773087904
#>     Attrib V4    0.153264550776935
#>     Attrib V40    -0.45006082367796824
#>     Attrib V41    0.09215611397911344
#>     Attrib V42    0.6454096755464471
#>     Attrib V43    0.27224620147325723
#>     Attrib V44    0.27132216863083847
#>     Attrib V45    -0.20365962482982058
#>     Attrib V46    -0.17492391180536485
#>     Attrib V47    -0.29545849449137995
#>     Attrib V48    -0.017955818580934476
#>     Attrib V49    0.6712475128760711
#>     Attrib V5    -0.06292560536122248
#>     Attrib V50    -0.5420284629157482
#>     Attrib V51    0.5962545919427644
#>     Attrib V52    0.0896989740613137
#>     Attrib V53    0.07768458345252519
#>     Attrib V54    0.5711497618526968
#>     Attrib V55    -0.6261949551123331
#>     Attrib V56    0.42850072565397745
#>     Attrib V57    -0.2588824738651281
#>     Attrib V58    0.8070789798984347
#>     Attrib V59    0.4441632113130559
#>     Attrib V6    -0.23227914382618256
#>     Attrib V60    0.8275118455984142
#>     Attrib V7    0.4836801685112054
#>     Attrib V8    -0.6290260286386677
#>     Attrib V9    0.36637022544897024
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.09329017513972584
#>     Attrib V1    0.5790184649256923
#>     Attrib V10    -0.023430484381446817
#>     Attrib V11    -0.09949017619797411
#>     Attrib V12    -0.08411745309505171
#>     Attrib V13    0.06943360360822534
#>     Attrib V14    0.2253618888153249
#>     Attrib V15    0.34866275338609
#>     Attrib V16    0.10914649816886487
#>     Attrib V17    -0.01961524613689405
#>     Attrib V18    0.06233363639710501
#>     Attrib V19    -0.06468284565842031
#>     Attrib V2    0.2684201119880715
#>     Attrib V20    -0.023246413657188547
#>     Attrib V21    0.12561206905070502
#>     Attrib V22    0.03212683599617787
#>     Attrib V23    -0.1757883555673901
#>     Attrib V24    -0.07884643166572332
#>     Attrib V25    -0.1320110515303849
#>     Attrib V26    -0.38851395518775184
#>     Attrib V27    -0.3767058973904691
#>     Attrib V28    -0.14337301682995862
#>     Attrib V29    -0.2396322210379921
#>     Attrib V3    0.10403509344629332
#>     Attrib V30    0.04993485022792118
#>     Attrib V31    -0.4397540170407394
#>     Attrib V32    0.07869087941143894
#>     Attrib V33    0.12292946115126421
#>     Attrib V34    -0.2493068647847894
#>     Attrib V35    -0.06543349398477165
#>     Attrib V36    -0.1926785846522064
#>     Attrib V37    -0.2081761716154898
#>     Attrib V38    0.06900572074452223
#>     Attrib V39    0.07452801300652515
#>     Attrib V4    0.14942498067172927
#>     Attrib V40    -0.3071856635413924
#>     Attrib V41    -0.055623647250574414
#>     Attrib V42    0.14932600602490131
#>     Attrib V43    0.067712628999586
#>     Attrib V44    0.07318071506919477
#>     Attrib V45    -0.12215018106123605
#>     Attrib V46    -0.15149522510995686
#>     Attrib V47    -0.11251029234323391
#>     Attrib V48    0.05141739601101881
#>     Attrib V49    0.2683227164318093
#>     Attrib V5    -0.07595140207955478
#>     Attrib V50    -0.08704402612985944
#>     Attrib V51    0.28940689065537123
#>     Attrib V52    0.08857341614118139
#>     Attrib V53    0.3006266428137113
#>     Attrib V54    0.5089934646167114
#>     Attrib V55    -0.0347522471541279
#>     Attrib V56    0.40158654957329953
#>     Attrib V57    0.06851471804389694
#>     Attrib V58    0.5044661798012154
#>     Attrib V59    0.4373770901890477
#>     Attrib V6    -0.07287797178340873
#>     Attrib V60    0.5119985352123921
#>     Attrib V7    0.14810453642197802
#>     Attrib V8    -0.26691611557493444
#>     Attrib V9    0.15655464407975847
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.10281238641865018
#>     Attrib V1    0.35947274240775956
#>     Attrib V10    0.04725635532966949
#>     Attrib V11    -1.358407500216692E-4
#>     Attrib V12    -0.018821619598036143
#>     Attrib V13    0.04112269208676838
#>     Attrib V14    0.15482194672497754
#>     Attrib V15    0.19061553393032624
#>     Attrib V16    0.04709493212969934
#>     Attrib V17    -0.028302059104319974
#>     Attrib V18    0.01767453037583003
#>     Attrib V19    -0.08872758972932165
#>     Attrib V2    0.19228323382811546
#>     Attrib V20    -0.03955104673571328
#>     Attrib V21    0.07838067619536393
#>     Attrib V22    -0.10722857475324755
#>     Attrib V23    -0.17030752004738797
#>     Attrib V24    -0.11082425740047964
#>     Attrib V25    -0.15105033433882828
#>     Attrib V26    -0.24062009355922545
#>     Attrib V27    -0.2335358618355925
#>     Attrib V28    -0.00952660097833675
#>     Attrib V29    -0.05645061346599857
#>     Attrib V3    0.17487134795051576
#>     Attrib V30    0.026268021633213613
#>     Attrib V31    -0.22577449135582056
#>     Attrib V32    0.07043387762556852
#>     Attrib V33    0.12354332097066646
#>     Attrib V34    -0.0683423692712919
#>     Attrib V35    0.01275667533521471
#>     Attrib V36    -0.10993093061096239
#>     Attrib V37    -0.10179720794884423
#>     Attrib V38    0.05390032076737253
#>     Attrib V39    0.06362711688672477
#>     Attrib V4    0.1618253261263309
#>     Attrib V40    -0.19061633069669437
#>     Attrib V41    -0.08351214635616658
#>     Attrib V42    0.045708186431859386
#>     Attrib V43    0.0034677696917736677
#>     Attrib V44    0.07909199094011736
#>     Attrib V45    0.0166968477060108
#>     Attrib V46    -0.05938114261227069
#>     Attrib V47    -0.05811978086522165
#>     Attrib V48    0.10560121002615815
#>     Attrib V49    0.213191732754721
#>     Attrib V5    0.06568189799954058
#>     Attrib V50    -0.028842975356315036
#>     Attrib V51    0.2835564760460098
#>     Attrib V52    0.12407040062411935
#>     Attrib V53    0.27572075049794387
#>     Attrib V54    0.22348804363663488
#>     Attrib V55    -0.03576914079560243
#>     Attrib V56    0.225726077185308
#>     Attrib V57    0.10281190981262509
#>     Attrib V58    0.2557845361781022
#>     Attrib V59    0.2581014847133475
#>     Attrib V6    -0.03960076458357846
#>     Attrib V60    0.34704663518726636
#>     Attrib V7    0.0786360733832135
#>     Attrib V8    -0.18337527960816696
#>     Attrib V9    0.21178767416075145
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.5784231893207058
#>     Attrib V1    -0.4765265396352447
#>     Attrib V10    -0.34249758980658385
#>     Attrib V11    -0.08334464197645815
#>     Attrib V12    -0.26690458864775385
#>     Attrib V13    -0.3316676578106739
#>     Attrib V14    0.3209798926528133
#>     Attrib V15    0.05048630520426009
#>     Attrib V16    0.613963098064973
#>     Attrib V17    1.3120097136135682
#>     Attrib V18    0.649468371247234
#>     Attrib V19    -0.4794757987172361
#>     Attrib V2    -0.24051115677571572
#>     Attrib V20    -0.6076445292536943
#>     Attrib V21    -0.2877137440646354
#>     Attrib V22    -0.1686579445192073
#>     Attrib V23    -0.37177119372008777
#>     Attrib V24    -0.7166076321682239
#>     Attrib V25    0.26600767344097176
#>     Attrib V26    0.5337623607674351
#>     Attrib V27    0.34243985094361395
#>     Attrib V28    -0.18049481038915852
#>     Attrib V29    0.10411005947023985
#>     Attrib V3    -0.013312505997713369
#>     Attrib V30    0.35682218320261033
#>     Attrib V31    1.4728618140761456
#>     Attrib V32    0.11956972041068682
#>     Attrib V33    0.15402249437104684
#>     Attrib V34    0.22596507522954346
#>     Attrib V35    -0.18064121387039325
#>     Attrib V36    1.0627332563151655
#>     Attrib V37    0.8078866390308008
#>     Attrib V38    -0.2485787331445107
#>     Attrib V39    -0.17264261151207633
#>     Attrib V4    0.28907261967188624
#>     Attrib V40    0.8511896070621799
#>     Attrib V41    -0.09037104704875985
#>     Attrib V42    -0.07980334853458906
#>     Attrib V43    -0.22142047610058158
#>     Attrib V44    -0.08152927558069321
#>     Attrib V45    -0.11537678611181228
#>     Attrib V46    -0.35140535159130937
#>     Attrib V47    -0.05200406222108804
#>     Attrib V48    -0.1721007704724572
#>     Attrib V49    -1.151142244659795
#>     Attrib V5    0.26381043290498757
#>     Attrib V50    0.3787839432232458
#>     Attrib V51    -0.9472708414701249
#>     Attrib V52    -0.7279235383114919
#>     Attrib V53    -0.7665135410369937
#>     Attrib V54    -0.11853581384282977
#>     Attrib V55    0.5425138530913826
#>     Attrib V56    0.25217709452793957
#>     Attrib V57    0.8126037995823434
#>     Attrib V58    -0.8404309183918736
#>     Attrib V59    0.38094408850138767
#>     Attrib V6    0.43183172755562443
#>     Attrib V60    -0.12920968079746167
#>     Attrib V7    0.4019078220868261
#>     Attrib V8    1.4462544841637976
#>     Attrib V9    -0.7342115705532433
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.1290255091482056
#>     Attrib V1    0.3109789733559575
#>     Attrib V10    0.057474163499413665
#>     Attrib V11    -0.272683766031574
#>     Attrib V12    -0.34899330499702774
#>     Attrib V13    -0.23746500022706632
#>     Attrib V14    -0.34448367793839807
#>     Attrib V15    0.24601338839053502
#>     Attrib V16    0.5083212525472272
#>     Attrib V17    0.283767289732606
#>     Attrib V18    0.5871217066037611
#>     Attrib V19    0.7166345231577499
#>     Attrib V2    0.046801402500857694
#>     Attrib V20    -0.004430547209729758
#>     Attrib V21    -0.041769887401516
#>     Attrib V22    0.47994310563995424
#>     Attrib V23    0.7195457644548383
#>     Attrib V24    1.0129527864548127
#>     Attrib V25    0.495462048591342
#>     Attrib V26    -0.7373337710499749
#>     Attrib V27    -0.6446014315594197
#>     Attrib V28    0.1200042196289993
#>     Attrib V29    -0.592969741504079
#>     Attrib V3    -0.29794489432022403
#>     Attrib V30    0.06322346367153103
#>     Attrib V31    -0.9471568342103324
#>     Attrib V32    1.016041648331316
#>     Attrib V33    0.7782045436831317
#>     Attrib V34    -0.3315384344243966
#>     Attrib V35    -0.12902363110335896
#>     Attrib V36    -0.7638882769433768
#>     Attrib V37    -1.0580558280566543
#>     Attrib V38    0.25733140954059963
#>     Attrib V39    0.23657505788560065
#>     Attrib V4    0.03675342612282204
#>     Attrib V40    -0.527000600019617
#>     Attrib V41    0.2792359464636659
#>     Attrib V42    0.6852458690364108
#>     Attrib V43    0.22753262219305415
#>     Attrib V44    0.3303040807994137
#>     Attrib V45    -0.19691072369513715
#>     Attrib V46    -0.11192098779385636
#>     Attrib V47    -0.16568666479876967
#>     Attrib V48    0.19191047258408242
#>     Attrib V49    1.0929094761568683
#>     Attrib V5    -0.15997720173274935
#>     Attrib V50    -0.7925198615355313
#>     Attrib V51    0.9053850233953417
#>     Attrib V52    0.2888906870725429
#>     Attrib V53    -0.005295053906555337
#>     Attrib V54    0.5603284892710994
#>     Attrib V55    -0.9379786181778841
#>     Attrib V56    0.5618063069034867
#>     Attrib V57    -0.43413669006244815
#>     Attrib V58    0.8625819424015954
#>     Attrib V59    0.23964680241498382
#>     Attrib V6    -0.25012953708100977
#>     Attrib V60    1.079279242490153
#>     Attrib V7    0.6049022888486295
#>     Attrib V8    -0.8799360336662472
#>     Attrib V9    0.6679014144688626
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.5854719560413865
#>     Attrib V1    0.666970227472945
#>     Attrib V10    0.7866613037903127
#>     Attrib V11    0.9029171201813531
#>     Attrib V12    1.4342782941662835
#>     Attrib V13    0.4851632388395075
#>     Attrib V14    -0.4389357830515806
#>     Attrib V15    -0.24053387430737125
#>     Attrib V16    -0.5278746004165944
#>     Attrib V17    -1.0905572552515626
#>     Attrib V18    -0.6606412299995882
#>     Attrib V19    -0.8051884969750748
#>     Attrib V2    0.9390702119081094
#>     Attrib V20    -0.48172840104412346
#>     Attrib V21    0.29275385047672947
#>     Attrib V22    0.07411282784773116
#>     Attrib V23    0.09325092951738108
#>     Attrib V24    0.28895793470179576
#>     Attrib V25    0.09417059086456263
#>     Attrib V26    0.7076911679961072
#>     Attrib V27    0.8759915432384082
#>     Attrib V28    1.5307106377431523
#>     Attrib V29    1.3786886307774429
#>     Attrib V3    0.6474194718289548
#>     Attrib V30    0.9091094287246094
#>     Attrib V31    -0.41143033580051536
#>     Attrib V32    -0.20968631112563357
#>     Attrib V33    -0.37583177532132617
#>     Attrib V34    0.03458076118131032
#>     Attrib V35    0.4465046692742006
#>     Attrib V36    -0.6103493183125724
#>     Attrib V37    0.18801961422452748
#>     Attrib V38    -0.16953034175461248
#>     Attrib V39    0.2919299053299656
#>     Attrib V4    0.16107145025723119
#>     Attrib V40    -0.0972589792448983
#>     Attrib V41    0.7590853402214355
#>     Attrib V42    -0.4682177168069663
#>     Attrib V43    -0.2398514488003754
#>     Attrib V44    0.20040624383936478
#>     Attrib V45    0.5340685662018108
#>     Attrib V46    0.673459086695163
#>     Attrib V47    0.16055766753042092
#>     Attrib V48    0.32735666365753147
#>     Attrib V49    0.9805899954820394
#>     Attrib V5    0.36278576855976286
#>     Attrib V50    -0.4596598623413081
#>     Attrib V51    0.7675366499791175
#>     Attrib V52    1.0324120475394853
#>     Attrib V53    0.4956981309496157
#>     Attrib V54    0.24468074817608296
#>     Attrib V55    -0.4493380505736507
#>     Attrib V56    -0.7677544391165843
#>     Attrib V57    -0.4839568196455223
#>     Attrib V58    0.21177752255312843
#>     Attrib V59    -0.47945744047224237
#>     Attrib V6    0.6782699443580003
#>     Attrib V60    0.03539553954009393
#>     Attrib V7    -0.5220425242654653
#>     Attrib V8    -0.47362993899413447
#>     Attrib V9    1.4615073466853266
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.08550773525545731
#>     Attrib V1    0.46674179313579356
#>     Attrib V10    0.08583539234850968
#>     Attrib V11    0.007409604858583679
#>     Attrib V12    -0.033531446398352524
#>     Attrib V13    -0.02381721634811093
#>     Attrib V14    -0.014997260438470451
#>     Attrib V15    0.12437125315721186
#>     Attrib V16    0.11385933956153609
#>     Attrib V17    -0.05317833584193837
#>     Attrib V18    0.026893037584366595
#>     Attrib V19    -0.07138395016855699
#>     Attrib V2    0.22292068374344895
#>     Attrib V20    -0.09310640779473497
#>     Attrib V21    0.07306017981194468
#>     Attrib V22    -0.07611113988922712
#>     Attrib V23    -0.19402649081615167
#>     Attrib V24    -0.01720492462458687
#>     Attrib V25    -0.10107854573867407
#>     Attrib V26    -0.3198749372166426
#>     Attrib V27    -0.304657446791493
#>     Attrib V28    -0.04709450767637993
#>     Attrib V29    -0.11749258922229107
#>     Attrib V3    0.09027183751894699
#>     Attrib V30    0.0789255847897463
#>     Attrib V31    -0.3397608118479172
#>     Attrib V32    0.1765515819140205
#>     Attrib V33    0.2325598055993328
#>     Attrib V34    -0.07696325069258762
#>     Attrib V35    0.010864670844091017
#>     Attrib V36    -0.1144222945417305
#>     Attrib V37    -0.14673269506066677
#>     Attrib V38    0.17245543469968544
#>     Attrib V39    0.0443347059121994
#>     Attrib V4    0.204148346803099
#>     Attrib V40    -0.3131678053340681
#>     Attrib V41    -0.08438047351946718
#>     Attrib V42    -0.057015543497614375
#>     Attrib V43    -0.020117043118171047
#>     Attrib V44    0.10563514079770842
#>     Attrib V45    -0.026978930407807515
#>     Attrib V46    -0.03828659750150544
#>     Attrib V47    -0.07869067252563207
#>     Attrib V48    0.151860982079318
#>     Attrib V49    0.28456662553254186
#>     Attrib V5    -0.034706419461271294
#>     Attrib V50    -0.1837209562961462
#>     Attrib V51    0.2888275086565561
#>     Attrib V52    0.11017501154429285
#>     Attrib V53    0.24630753858577475
#>     Attrib V54    0.34465833578235994
#>     Attrib V55    -0.21577264506021737
#>     Attrib V56    0.1891311660826342
#>     Attrib V57    0.08592072575132269
#>     Attrib V58    0.25586552704354365
#>     Attrib V59    0.3091372440085353
#>     Attrib V6    -0.05426872833927377
#>     Attrib V60    0.5150129107945439
#>     Attrib V7    0.12110788573426104
#>     Attrib V8    -0.323900623649483
#>     Attrib V9    0.27244651945060744
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.3960114385837553
#>     Attrib V1    0.9007763038100721
#>     Attrib V10    0.9390019407334428
#>     Attrib V11    0.9178289402061334
#>     Attrib V12    1.530548338303532
#>     Attrib V13    0.43155266555008764
#>     Attrib V14    -0.531326821953934
#>     Attrib V15    -0.3918691976799526
#>     Attrib V16    -0.823700032501387
#>     Attrib V17    -1.4741900291963759
#>     Attrib V18    -1.1525010568226668
#>     Attrib V19    -1.3197136777949838
#>     Attrib V2    0.9961642225095365
#>     Attrib V20    -0.6611204324331662
#>     Attrib V21    0.3183915151315278
#>     Attrib V22    -0.11783228676323579
#>     Attrib V23    -0.42118213393873966
#>     Attrib V24    -0.17611720988770438
#>     Attrib V25    -0.2537160051483017
#>     Attrib V26    0.5448618658549788
#>     Attrib V27    0.7838871091720159
#>     Attrib V28    1.2628004645017292
#>     Attrib V29    1.0566195728470769
#>     Attrib V3    0.7828221523356376
#>     Attrib V30    0.9212579774905688
#>     Attrib V31    -0.28251973176629996
#>     Attrib V32    -0.16187421668063645
#>     Attrib V33    -0.27483662338202897
#>     Attrib V34    0.22215904938349845
#>     Attrib V35    0.47077377952968996
#>     Attrib V36    -0.5629691549351655
#>     Attrib V37    0.17146396150050874
#>     Attrib V38    -0.2004905034252722
#>     Attrib V39    0.28283604088371883
#>     Attrib V4    0.34968237052325557
#>     Attrib V40    -0.21502501998239662
#>     Attrib V41    0.5093140512551371
#>     Attrib V42    -0.7339431553607821
#>     Attrib V43    -0.137316276216022
#>     Attrib V44    0.14632982625105737
#>     Attrib V45    0.45218773231929327
#>     Attrib V46    0.6745898959380137
#>     Attrib V47    0.09805156339337852
#>     Attrib V48    0.28139331182456323
#>     Attrib V49    0.9841054927003254
#>     Attrib V5    0.30567617415269654
#>     Attrib V50    -0.44297258782127485
#>     Attrib V51    0.736920136640122
#>     Attrib V52    0.9030561793453401
#>     Attrib V53    0.42672264516986363
#>     Attrib V54    -0.0119977260606499
#>     Attrib V55    -0.44317532594998316
#>     Attrib V56    -0.7120825712526463
#>     Attrib V57    -0.47777881347523043
#>     Attrib V58    0.19637876117075811
#>     Attrib V59    -0.36516164837959597
#>     Attrib V6    0.49656264704835723
#>     Attrib V60    0.061421423130004336
#>     Attrib V7    -0.7432053050534791
#>     Attrib V8    -0.5066551961778626
#>     Attrib V9    1.4904376752133324
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.19466121997818647
#>     Attrib V1    -0.07296674282245817
#>     Attrib V10    0.1727617801371299
#>     Attrib V11    0.21666109667170502
#>     Attrib V12    0.23999357579022615
#>     Attrib V13    0.14862278201036502
#>     Attrib V14    0.20610859018223895
#>     Attrib V15    0.18762766428578076
#>     Attrib V16    0.34537147145383246
#>     Attrib V17    0.28363755383399436
#>     Attrib V18    0.1566874490286747
#>     Attrib V19    0.20761092954292815
#>     Attrib V2    -0.05595465305282858
#>     Attrib V20    0.21909657421194254
#>     Attrib V21    0.04284981219174635
#>     Attrib V22    -0.09815814747907366
#>     Attrib V23    -0.16917781677537655
#>     Attrib V24    -0.3344602054582294
#>     Attrib V25    -0.19528612935257197
#>     Attrib V26    0.1115482847533218
#>     Attrib V27    0.09429115163227801
#>     Attrib V28    -0.15975689357805625
#>     Attrib V29    -0.07015816817680072
#>     Attrib V3    0.038434380426731626
#>     Attrib V30    -0.11408062251172209
#>     Attrib V31    0.25918195476422146
#>     Attrib V32    -0.2767196786889761
#>     Attrib V33    0.010336730574806365
#>     Attrib V34    0.41539115088254247
#>     Attrib V35    0.17758980050725906
#>     Attrib V36    0.20975879514872847
#>     Attrib V37    0.21659073845394586
#>     Attrib V38    -0.019257231624970415
#>     Attrib V39    -0.04103037763851802
#>     Attrib V4    0.036108483118313536
#>     Attrib V40    0.4801417417590684
#>     Attrib V41    0.22619637935227316
#>     Attrib V42    -0.02500239947251235
#>     Attrib V43    -0.07536758119659802
#>     Attrib V44    -0.10906095888832412
#>     Attrib V45    0.06105761888411088
#>     Attrib V46    0.05938403373691717
#>     Attrib V47    0.10417181843308694
#>     Attrib V48    -0.10835184411415368
#>     Attrib V49    -0.31713974869575634
#>     Attrib V5    0.20725145433074285
#>     Attrib V50    0.3095021796683309
#>     Attrib V51    -0.2697259912494277
#>     Attrib V52    -0.13156305588147552
#>     Attrib V53    -0.22024676322220996
#>     Attrib V54    -0.18977169269720923
#>     Attrib V55    0.2701060795443783
#>     Attrib V56    -0.07037883309862708
#>     Attrib V57    0.23207988480908395
#>     Attrib V58    -0.27687227377434204
#>     Attrib V59    -0.010656986146228536
#>     Attrib V6    0.23993443748657822
#>     Attrib V60    -0.19375367359610368
#>     Attrib V7    0.07532556506866699
#>     Attrib V8    0.4064889936738346
#>     Attrib V9    -0.19469773362881437
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.022501695222397724
#>     Attrib V1    0.49795642563753445
#>     Attrib V10    0.026641928164153634
#>     Attrib V11    -0.031405273593172196
#>     Attrib V12    -0.030763849423324004
#>     Attrib V13    -0.07960069541411588
#>     Attrib V14    0.03955731254953834
#>     Attrib V15    0.14688117747814614
#>     Attrib V16    0.09505595866884979
#>     Attrib V17    0.024856333221776494
#>     Attrib V18    0.10529473388437871
#>     Attrib V19    -0.07514236242100214
#>     Attrib V2    0.1911508131360326
#>     Attrib V20    0.015380287020269856
#>     Attrib V21    0.07644293655649237
#>     Attrib V22    -0.07463198766518901
#>     Attrib V23    -0.18188367750864443
#>     Attrib V24    -0.059296980836132974
#>     Attrib V25    -0.10250219101335833
#>     Attrib V26    -0.42236845343782414
#>     Attrib V27    -0.3582917011421461
#>     Attrib V28    -0.09135058721516126
#>     Attrib V29    -0.20985847721076903
#>     Attrib V3    0.05628215664353627
#>     Attrib V30    0.027513412049028976
#>     Attrib V31    -0.4054411148142729
#>     Attrib V32    0.13178374130304912
#>     Attrib V33    0.20377870592575853
#>     Attrib V34    -0.044573987818235704
#>     Attrib V35    0.058930024617780206
#>     Attrib V36    -0.12797570611404943
#>     Attrib V37    -0.17866138895525263
#>     Attrib V38    0.1951305581382214
#>     Attrib V39    0.04940373130404652
#>     Attrib V4    0.14396042686106553
#>     Attrib V40    -0.3295411319802944
#>     Attrib V41    -0.1387686632804505
#>     Attrib V42    0.0369589690194342
#>     Attrib V43    0.009939536343524983
#>     Attrib V44    0.11091368840803445
#>     Attrib V45    0.01392278350364473
#>     Attrib V46    -0.08330597848549048
#>     Attrib V47    -0.07392404407135815
#>     Attrib V48    0.12682625703665729
#>     Attrib V49    0.2414427639850071
#>     Attrib V5    -0.01058630413591857
#>     Attrib V50    -0.10577927945428939
#>     Attrib V51    0.3655567786145673
#>     Attrib V52    0.07577949918810789
#>     Attrib V53    0.23217767827944116
#>     Attrib V54    0.45542955672215013
#>     Attrib V55    -0.11337994507172919
#>     Attrib V56    0.3203162682250121
#>     Attrib V57    0.07286708976011273
#>     Attrib V58    0.35770578902661043
#>     Attrib V59    0.28515935284349936
#>     Attrib V6    -0.03261743958927138
#>     Attrib V60    0.49052905083947446
#>     Attrib V7    0.09025940621838266
#>     Attrib V8    -0.27390501163465153
#>     Attrib V9    0.2505619231918595
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.2392031121461072
#>     Attrib V1    0.5338598930531016
#>     Attrib V10    -0.14534592846311578
#>     Attrib V11    -0.10706438013526842
#>     Attrib V12    -0.22777471654351933
#>     Attrib V13    0.027935974760086024
#>     Attrib V14    0.2505238481341438
#>     Attrib V15    0.3484305412135143
#>     Attrib V16    0.24243467488748738
#>     Attrib V17    0.09200876504825553
#>     Attrib V18    0.2178176455748909
#>     Attrib V19    0.050274724290975854
#>     Attrib V2    0.23292753088012405
#>     Attrib V20    -0.009792104233701056
#>     Attrib V21    0.1906888120279777
#>     Attrib V22    0.1413658722207762
#>     Attrib V23    -0.021492919524568402
#>     Attrib V24    0.05512448877296111
#>     Attrib V25    -0.09242490050166989
#>     Attrib V26    -0.40491611775697883
#>     Attrib V27    -0.29026340724906174
#>     Attrib V28    -0.004822485457053247
#>     Attrib V29    -0.0298536861342772
#>     Attrib V3    -0.029245610032462156
#>     Attrib V30    0.046178664579344796
#>     Attrib V31    -0.6472799741074879
#>     Attrib V32    -0.005507691615943944
#>     Attrib V33    0.09907359762510759
#>     Attrib V34    -0.3153189612747309
#>     Attrib V35    -0.12140118764174042
#>     Attrib V36    -0.22601760777590924
#>     Attrib V37    -0.2518062108500412
#>     Attrib V38    0.17084659373921676
#>     Attrib V39    0.08196723147829425
#>     Attrib V4    0.14095393120489358
#>     Attrib V40    -0.31152007716148894
#>     Attrib V41    -0.00967847154479963
#>     Attrib V42    0.22704312818689884
#>     Attrib V43    0.16498393152245777
#>     Attrib V44    0.053898602239147886
#>     Attrib V45    -0.09392769368286921
#>     Attrib V46    -0.11364134428967594
#>     Attrib V47    -0.17884087396466525
#>     Attrib V48    0.11474299305908504
#>     Attrib V49    0.34319722767716965
#>     Attrib V5    -0.06484386833684105
#>     Attrib V50    -0.18040458500907497
#>     Attrib V51    0.37341924141183847
#>     Attrib V52    0.0882192120833611
#>     Attrib V53    0.42553674992572976
#>     Attrib V54    0.5591313373009577
#>     Attrib V55    -0.1595281506914767
#>     Attrib V56    0.4349838334731878
#>     Attrib V57    0.05450378152852163
#>     Attrib V58    0.5803691790179895
#>     Attrib V59    0.5209543472630257
#>     Attrib V6    -0.07568470112426011
#>     Attrib V60    0.5828360392812588
#>     Attrib V7    0.22559021677632496
#>     Attrib V8    -0.34966217301579433
#>     Attrib V9    0.1985946153768952
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.07269173347389443
#>     Attrib V1    0.25610581915519554
#>     Attrib V10    -0.041345904841946175
#>     Attrib V11    -0.19238969248857535
#>     Attrib V12    -0.18862599958911258
#>     Attrib V13    -0.02255981749336468
#>     Attrib V14    -0.15789667167757365
#>     Attrib V15    0.14575217127660423
#>     Attrib V16    0.21532606952088376
#>     Attrib V17    0.21917805637910556
#>     Attrib V18    0.4459656928828965
#>     Attrib V19    0.38780596492364533
#>     Attrib V2    0.054183249503056405
#>     Attrib V20    0.0010379299426906373
#>     Attrib V21    0.055838132888645045
#>     Attrib V22    0.3977852307168028
#>     Attrib V23    0.5856002518088544
#>     Attrib V24    0.69921559294013
#>     Attrib V25    0.3730321481549182
#>     Attrib V26    -0.49597636430070613
#>     Attrib V27    -0.43560832341032485
#>     Attrib V28    0.09683123444789768
#>     Attrib V29    -0.16525466345836545
#>     Attrib V3    -0.1201585551158641
#>     Attrib V30    0.15897982418253803
#>     Attrib V31    -0.6930685817120307
#>     Attrib V32    0.543332846491112
#>     Attrib V33    0.4190571852051096
#>     Attrib V34    -0.21391990151664766
#>     Attrib V35    -0.09486847501713214
#>     Attrib V36    -0.4072865837674563
#>     Attrib V37    -0.5500623677164144
#>     Attrib V38    0.16283606073121457
#>     Attrib V39    0.22814070912408627
#>     Attrib V4    0.053325643108081404
#>     Attrib V40    -0.3042529186306303
#>     Attrib V41    0.2666370503874883
#>     Attrib V42    0.495317779206431
#>     Attrib V43    0.15019780130850788
#>     Attrib V44    0.2206606003509857
#>     Attrib V45    -0.14458310859982423
#>     Attrib V46    -0.05153706751358564
#>     Attrib V47    -0.09719182429759315
#>     Attrib V48    0.1064898871242345
#>     Attrib V49    0.7291391417727257
#>     Attrib V5    -0.03453064779064089
#>     Attrib V50    -0.5555900767753122
#>     Attrib V51    0.5881343807126184
#>     Attrib V52    0.179861446739288
#>     Attrib V53    0.07810610986766518
#>     Attrib V54    0.44990535840869705
#>     Attrib V55    -0.5887108420005278
#>     Attrib V56    0.19758331768278548
#>     Attrib V57    -0.30785438776424645
#>     Attrib V58    0.5693462361946171
#>     Attrib V59    0.2579837111149151
#>     Attrib V6    -0.029410151271140626
#>     Attrib V60    0.7655444704321857
#>     Attrib V7    0.3985812658656162
#>     Attrib V8    -0.6378889196554015
#>     Attrib V9    0.41499941680714775
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.20719795034784808
#>     Attrib V1    0.8441630897053932
#>     Attrib V10    -0.09973385111856344
#>     Attrib V11    -0.11491235399134345
#>     Attrib V12    -0.17898044942565447
#>     Attrib V13    -0.09145393738741181
#>     Attrib V14    0.1100420621625238
#>     Attrib V15    0.38367972748808005
#>     Attrib V16    0.13489304144688352
#>     Attrib V17    -0.018968203102715683
#>     Attrib V18    0.08843371056318461
#>     Attrib V19    -0.13519633108798793
#>     Attrib V2    0.2939791074094376
#>     Attrib V20    -0.006224936984301305
#>     Attrib V21    0.23140718346126649
#>     Attrib V22    0.08526852136917276
#>     Attrib V23    -0.15891027473810418
#>     Attrib V24    -0.0858529394940901
#>     Attrib V25    -0.2472770050843862
#>     Attrib V26    -0.6173369567154605
#>     Attrib V27    -0.6514169823253787
#>     Attrib V28    -0.3653107598293273
#>     Attrib V29    -0.40728984800537055
#>     Attrib V3    -0.03595918277226029
#>     Attrib V30    0.02606344311566647
#>     Attrib V31    -0.5866011979791799
#>     Attrib V32    0.17623785451142476
#>     Attrib V33    0.2898552885615382
#>     Attrib V34    -0.22472788362635787
#>     Attrib V35    -0.059385680907892376
#>     Attrib V36    -0.26798547168929066
#>     Attrib V37    -0.22223793734761355
#>     Attrib V38    0.19502450785030567
#>     Attrib V39    0.10653600976223322
#>     Attrib V4    0.1239935924494157
#>     Attrib V40    -0.45120344166326826
#>     Attrib V41    -0.16514418843783596
#>     Attrib V42    0.11826730277301678
#>     Attrib V43    0.032402268094188176
#>     Attrib V44    0.08177698745286514
#>     Attrib V45    -0.20932784471824303
#>     Attrib V46    -0.18789455431097885
#>     Attrib V47    -0.2647824848056904
#>     Attrib V48    0.09055027791542748
#>     Attrib V49    0.42143890373815984
#>     Attrib V5    -0.2258074521859352
#>     Attrib V50    -0.17603744677891706
#>     Attrib V51    0.3313572990633929
#>     Attrib V52    -0.01958059409188974
#>     Attrib V53    0.20432705679340427
#>     Attrib V54    0.6683697060087564
#>     Attrib V55    -0.14625833661335025
#>     Attrib V56    0.5213869545273825
#>     Attrib V57    0.051905382791639115
#>     Attrib V58    0.6164435655628743
#>     Attrib V59    0.49808365496531226
#>     Attrib V6    -0.11703086432804799
#>     Attrib V60    0.7319232313972928
#>     Attrib V7    0.3306541933455057
#>     Attrib V8    -0.5014752524020658
#>     Attrib V9    0.2383482516768235
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.8408302228443367
#>     Attrib V1    -0.10604347830357558
#>     Attrib V10    -1.2086405625464587
#>     Attrib V11    -0.931931026589946
#>     Attrib V12    -0.6849671871285431
#>     Attrib V13    -0.5616406082919098
#>     Attrib V14    0.5536030106556825
#>     Attrib V15    0.5144767060388548
#>     Attrib V16    0.7257468676216045
#>     Attrib V17    0.8477936745157829
#>     Attrib V18    0.10993320546479307
#>     Attrib V19    -0.7922893362214033
#>     Attrib V2    0.1193136659282209
#>     Attrib V20    -0.9324147185588088
#>     Attrib V21    -1.005624824665238
#>     Attrib V22    -0.7537989327873937
#>     Attrib V23    -0.616352369228761
#>     Attrib V24    -0.4642887019600332
#>     Attrib V25    0.292484115018631
#>     Attrib V26    0.2629628902773578
#>     Attrib V27    0.29443587540063576
#>     Attrib V28    -0.0025973697802547492
#>     Attrib V29    0.7327293930263425
#>     Attrib V3    0.2245164591020469
#>     Attrib V30    0.2981126105351283
#>     Attrib V31    2.0676052103811173
#>     Attrib V32    0.701730475884071
#>     Attrib V33    0.038300436468726426
#>     Attrib V34    0.38973379177635575
#>     Attrib V35    -0.21408734283449904
#>     Attrib V36    0.5389204386344356
#>     Attrib V37    0.8408125087717236
#>     Attrib V38    -0.7536865628511888
#>     Attrib V39    -0.7186517156251078
#>     Attrib V4    -0.1027332498926558
#>     Attrib V40    0.6373597273219593
#>     Attrib V41    -0.06093623946010857
#>     Attrib V42    -0.09386946609374049
#>     Attrib V43    -0.7259387101212715
#>     Attrib V44    -0.7371195664150945
#>     Attrib V45    -0.2531599787135923
#>     Attrib V46    -0.03151502010717081
#>     Attrib V47    0.3446250683562524
#>     Attrib V48    0.12887218041488233
#>     Attrib V49    -1.4199383941810668
#>     Attrib V5    -0.2964222934942213
#>     Attrib V50    0.6407265275390488
#>     Attrib V51    -0.8909790217144399
#>     Attrib V52    -0.5632317470571261
#>     Attrib V53    -0.3448129658312358
#>     Attrib V54    -0.09103147431159547
#>     Attrib V55    1.2060702294021297
#>     Attrib V56    0.8440729391531521
#>     Attrib V57    0.6671428713102349
#>     Attrib V58    -0.697777828945298
#>     Attrib V59    0.21745502808755984
#>     Attrib V6    0.14894012644873242
#>     Attrib V60    0.050253058664112685
#>     Attrib V7    -0.13735773630158468
#>     Attrib V8    0.6981296858652375
#>     Attrib V9    -1.56814540987065
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.20416272397444712
#>     Attrib V1    0.05399963223476165
#>     Attrib V10    0.06637970500452253
#>     Attrib V11    0.030407371284533545
#>     Attrib V12    0.006931413426069034
#>     Attrib V13    0.04402577175104687
#>     Attrib V14    0.03385674412088286
#>     Attrib V15    0.029304654203247193
#>     Attrib V16    0.10430468008237363
#>     Attrib V17    0.08746585856369063
#>     Attrib V18    0.07851934654690186
#>     Attrib V19    0.03282170391786724
#>     Attrib V2    0.046934427391873694
#>     Attrib V20    -0.05077133418752096
#>     Attrib V21    -0.07770424622181472
#>     Attrib V22    -0.08731397980837245
#>     Attrib V23    -0.07674329565425775
#>     Attrib V24    -0.0026661553489717997
#>     Attrib V25    -0.0032561299196165044
#>     Attrib V26    -0.06803147942918367
#>     Attrib V27    -0.06768309154073716
#>     Attrib V28    -0.016749607833950072
#>     Attrib V29    -0.05523476325643933
#>     Attrib V3    0.13048188350053785
#>     Attrib V30    -0.07042233059844444
#>     Attrib V31    -0.03156160166283879
#>     Attrib V32    0.029912865576930223
#>     Attrib V33    0.016756183849361495
#>     Attrib V34    0.06862702656035635
#>     Attrib V35    0.04269228673363871
#>     Attrib V36    0.041742496718204354
#>     Attrib V37    0.0807678744905728
#>     Attrib V38    0.06973087729040184
#>     Attrib V39    0.07030907278467012
#>     Attrib V4    0.13143926639824985
#>     Attrib V40    0.04573141488986561
#>     Attrib V41    0.07210234951306328
#>     Attrib V42    0.0682671827050755
#>     Attrib V43    0.006663777722243953
#>     Attrib V44    0.00800755101037172
#>     Attrib V45    0.02392149686329678
#>     Attrib V46    0.06287613387956077
#>     Attrib V47    0.05812965687552673
#>     Attrib V48    0.026722682442788817
#>     Attrib V49    -0.0016153092240552447
#>     Attrib V5    0.11600706230365375
#>     Attrib V50    0.07383400063842746
#>     Attrib V51    0.12038643027870087
#>     Attrib V52    0.11399687051980291
#>     Attrib V53    0.11089366692147937
#>     Attrib V54    0.034547684045482564
#>     Attrib V55    0.10970513177221344
#>     Attrib V56    0.07823598154372834
#>     Attrib V57    0.1264836868193488
#>     Attrib V58    0.11565501668828725
#>     Attrib V59    0.054304265631209825
#>     Attrib V6    0.07188143096466577
#>     Attrib V60    0.10824555684329103
#>     Attrib V7    0.047875100275968974
#>     Attrib V8    0.058348827605247275
#>     Attrib V9    0.09123661756747842
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.08184728616883226
#>     Attrib V1    0.3662701228160313
#>     Attrib V10    0.09244043722231308
#>     Attrib V11    0.036443703156978785
#>     Attrib V12    -0.054484517257034244
#>     Attrib V13    -0.04483934577746037
#>     Attrib V14    0.06001549312325517
#>     Attrib V15    0.16313464705027117
#>     Attrib V16    0.053816108441192376
#>     Attrib V17    -0.02489898200173791
#>     Attrib V18    0.02882714007390405
#>     Attrib V19    -0.0321673274810337
#>     Attrib V2    0.26560466532979166
#>     Attrib V20    -0.05045738847532738
#>     Attrib V21    -0.00980737344311589
#>     Attrib V22    -0.049726633341327584
#>     Attrib V23    -0.17018014611997723
#>     Attrib V24    -0.04867759583065145
#>     Attrib V25    -0.130128907951124
#>     Attrib V26    -0.25148248356257596
#>     Attrib V27    -0.1956258080048094
#>     Attrib V28    -0.0802213302419294
#>     Attrib V29    -0.14607172736361418
#>     Attrib V3    0.1325784857286272
#>     Attrib V30    0.013795117697442696
#>     Attrib V31    -0.15783880898358812
#>     Attrib V32    0.053548787951644666
#>     Attrib V33    0.15398800806679963
#>     Attrib V34    -0.060231421237818404
#>     Attrib V35    0.079375377518
#>     Attrib V36    -0.07358729104584726
#>     Attrib V37    -0.07199876898095074
#>     Attrib V38    0.15709923269240486
#>     Attrib V39    0.0771190111560815
#>     Attrib V4    0.1775526036998193
#>     Attrib V40    -0.2035322197414161
#>     Attrib V41    -0.04091391048423466
#>     Attrib V42    -0.014696671393170843
#>     Attrib V43    0.04695683873109134
#>     Attrib V44    0.09080994684336421
#>     Attrib V45    0.016980561619790308
#>     Attrib V46    -0.033443978128911415
#>     Attrib V47    -0.05651665240445514
#>     Attrib V48    0.132996444979049
#>     Attrib V49    0.13246955035258373
#>     Attrib V5    0.03699740819999852
#>     Attrib V50    -0.02288520171289539
#>     Attrib V51    0.23293177538416615
#>     Attrib V52    0.10239228757302068
#>     Attrib V53    0.17582787487481444
#>     Attrib V54    0.23643265511320283
#>     Attrib V55    0.04750706535199237
#>     Attrib V56    0.20802402671863643
#>     Attrib V57    0.1318104687139964
#>     Attrib V58    0.1940769687991134
#>     Attrib V59    0.1895847373411713
#>     Attrib V6    -0.009144219894450063
#>     Attrib V60    0.34670058418405164
#>     Attrib V7    0.03410934708860724
#>     Attrib V8    -0.0941225240760025
#>     Attrib V9    0.16999983170783597
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.013523679325226962
#>     Attrib V1    0.5285049591791631
#>     Attrib V10    0.02237954934723032
#>     Attrib V11    -0.04237394582169858
#>     Attrib V12    -0.0882964060567103
#>     Attrib V13    0.007829026193978282
#>     Attrib V14    0.13898899334948386
#>     Attrib V15    0.20200797539791215
#>     Attrib V16    0.12091965717015966
#>     Attrib V17    -0.037537458249120796
#>     Attrib V18    0.13271036163713945
#>     Attrib V19    -0.12111343372088035
#>     Attrib V2    0.24012122731259014
#>     Attrib V20    -0.01695575173266133
#>     Attrib V21    0.12050907358476348
#>     Attrib V22    -0.0647810055582493
#>     Attrib V23    -0.20730444786898938
#>     Attrib V24    -0.10288951696292448
#>     Attrib V25    -0.1284858421626356
#>     Attrib V26    -0.33934243328174973
#>     Attrib V27    -0.3171323069687253
#>     Attrib V28    -0.14417418217278666
#>     Attrib V29    -0.20350200064495716
#>     Attrib V3    0.15401440147926218
#>     Attrib V30    -0.038908591632473365
#>     Attrib V31    -0.38657128676743563
#>     Attrib V32    0.06679801412453182
#>     Attrib V33    0.14606041830190936
#>     Attrib V34    -0.07525079989062759
#>     Attrib V35    -0.006340534442678639
#>     Attrib V36    -0.05896088653829753
#>     Attrib V37    -0.13858632680890676
#>     Attrib V38    0.1276015932033485
#>     Attrib V39    0.07864314569292476
#>     Attrib V4    0.12669944587688062
#>     Attrib V40    -0.3126951063108517
#>     Attrib V41    -0.12610784281458495
#>     Attrib V42    0.057811211633272803
#>     Attrib V43    0.02332095705423307
#>     Attrib V44    0.08085542872487664
#>     Attrib V45    -0.10822870277697981
#>     Attrib V46    -0.10461446540211874
#>     Attrib V47    -0.06169657563003989
#>     Attrib V48    0.10740689009200038
#>     Attrib V49    0.2656048278783368
#>     Attrib V5    -0.04525785524471871
#>     Attrib V50    -0.11276143888481724
#>     Attrib V51    0.33360520260945675
#>     Attrib V52    0.05309323182966936
#>     Attrib V53    0.2896008448904171
#>     Attrib V54    0.36320914157486606
#>     Attrib V55    -0.02424943101370609
#>     Attrib V56    0.3613758505361246
#>     Attrib V57    0.053857765364405924
#>     Attrib V58    0.36509397094422963
#>     Attrib V59    0.3918142253733676
#>     Attrib V6    -0.0621155836496652
#>     Attrib V60    0.5443920048741892
#>     Attrib V7    0.19591737283734878
#>     Attrib V8    -0.21739834755998433
#>     Attrib V9    0.20892799769221512
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.5488367352018143
#>     Attrib V1    0.3061311230753494
#>     Attrib V10    0.6542266570617791
#>     Attrib V11    0.6394821188462616
#>     Attrib V12    1.5269022942943047
#>     Attrib V13    0.5608729779557666
#>     Attrib V14    -0.36158554706974727
#>     Attrib V15    -0.13435545001077348
#>     Attrib V16    -0.44787736320552507
#>     Attrib V17    -0.7491456967481711
#>     Attrib V18    -0.2859764690058077
#>     Attrib V19    -0.4802780079396479
#>     Attrib V2    0.6803029613949152
#>     Attrib V20    -0.6218906987181442
#>     Attrib V21    0.017795036384773005
#>     Attrib V22    0.19560510877958628
#>     Attrib V23    0.25082733133232765
#>     Attrib V24    0.6103773996285966
#>     Attrib V25    0.5416225329306184
#>     Attrib V26    0.8544306202107228
#>     Attrib V27    1.0168105632019422
#>     Attrib V28    1.5239289738128445
#>     Attrib V29    1.133983100388158
#>     Attrib V3    0.4515309497361824
#>     Attrib V30    0.6550245238416151
#>     Attrib V31    -0.40474458500441557
#>     Attrib V32    -0.14845740470121913
#>     Attrib V33    -0.37236943373088666
#>     Attrib V34    -0.020033183981828854
#>     Attrib V35    0.47706259694599557
#>     Attrib V36    -0.5189257985285975
#>     Attrib V37    0.09826380329564482
#>     Attrib V38    -0.25698520282713105
#>     Attrib V39    0.16960643154339053
#>     Attrib V4    0.17324137121180058
#>     Attrib V40    -0.06186378920986227
#>     Attrib V41    0.8904215812960429
#>     Attrib V42    -0.338984583609528
#>     Attrib V43    -0.23723923526673718
#>     Attrib V44    0.148915892821987
#>     Attrib V45    0.4463677899353975
#>     Attrib V46    0.55002503236917
#>     Attrib V47    0.13596894719587715
#>     Attrib V48    0.4483138420715852
#>     Attrib V49    1.0956625775280147
#>     Attrib V5    0.47474411642571884
#>     Attrib V50    -0.5149524578397319
#>     Attrib V51    0.7858974628734602
#>     Attrib V52    1.0179578875230895
#>     Attrib V53    0.5796730415514195
#>     Attrib V54    0.20854862008094746
#>     Attrib V55    -0.5421115316869046
#>     Attrib V56    -0.7300398695559155
#>     Attrib V57    -0.353662971542307
#>     Attrib V58    0.2166179677538155
#>     Attrib V59    -0.27242479656764845
#>     Attrib V6    0.8107243645693508
#>     Attrib V60    0.3467762674124951
#>     Attrib V7    -0.42617476729890286
#>     Attrib V8    -0.682758206824525
#>     Attrib V9    1.1580185215992307
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.2005434582618842
#>     Attrib V1    -0.15350560012153433
#>     Attrib V10    0.2511549866324149
#>     Attrib V11    0.07315876994573683
#>     Attrib V12    0.4787319707181897
#>     Attrib V13    0.2954020028144054
#>     Attrib V14    -0.29077957763319273
#>     Attrib V15    -0.23900268205825415
#>     Attrib V16    -0.23994195859923792
#>     Attrib V17    -0.060328652165088203
#>     Attrib V18    0.6427254574770455
#>     Attrib V19    0.628478628779352
#>     Attrib V2    -0.05421499009053763
#>     Attrib V20    -0.12123720433475521
#>     Attrib V21    -0.212218912965249
#>     Attrib V22    0.7205908647754729
#>     Attrib V23    1.5198767980712586
#>     Attrib V24    1.7830496680544936
#>     Attrib V25    1.4039032665022122
#>     Attrib V26    0.570174389361453
#>     Attrib V27    0.4079576640507863
#>     Attrib V28    0.7786821021561209
#>     Attrib V29    0.04793718964542666
#>     Attrib V3    -0.29960071325782633
#>     Attrib V30    0.0454649588892266
#>     Attrib V31    -0.9167434835242075
#>     Attrib V32    0.020156182047358185
#>     Attrib V33    0.07337205549295572
#>     Attrib V34    0.010272783179988063
#>     Attrib V35    0.6440479327677984
#>     Attrib V36    0.26541181798199487
#>     Attrib V37    -0.07961501545617963
#>     Attrib V38    0.3397835227792117
#>     Attrib V39    0.25532424297651496
#>     Attrib V4    0.030392013645382486
#>     Attrib V40    -0.10015249718178226
#>     Attrib V41    0.7106987472761986
#>     Attrib V42    0.2924811346933355
#>     Attrib V43    0.29448487136427165
#>     Attrib V44    0.5311804675588963
#>     Attrib V45    0.3331572086950769
#>     Attrib V46    0.2665579002280689
#>     Attrib V47    0.09460522488612762
#>     Attrib V48    0.40938774739206213
#>     Attrib V49    1.3239006201795243
#>     Attrib V5    0.13580498988463247
#>     Attrib V50    -0.3892626456950428
#>     Attrib V51    1.0412168694103143
#>     Attrib V52    0.6591991206117067
#>     Attrib V53    0.0942018959943032
#>     Attrib V54    0.6966606131813988
#>     Attrib V55    -0.37565160037489426
#>     Attrib V56    -0.38122787762159005
#>     Attrib V57    -0.46593832768840776
#>     Attrib V58    0.5258706474292086
#>     Attrib V59    0.25349969049982873
#>     Attrib V6    0.17246458935721745
#>     Attrib V60    0.9362195803968695
#>     Attrib V7    0.349601933839686
#>     Attrib V8    -0.7388654245167778
#>     Attrib V9    0.7512265203976642
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.2026683862672727
#>     Attrib V1    -0.3731201158390483
#>     Attrib V10    -0.42953091135386845
#>     Attrib V11    -0.33203918279564676
#>     Attrib V12    -0.44000995304007706
#>     Attrib V13    -0.3737004521737861
#>     Attrib V14    0.3219584763423864
#>     Attrib V15    -0.2529504809055214
#>     Attrib V16    0.032284994224653064
#>     Attrib V17    0.12127830158268375
#>     Attrib V18    -0.4034782113720134
#>     Attrib V19    -0.4452592024626967
#>     Attrib V2    -0.428405993569066
#>     Attrib V20    0.09179174242933737
#>     Attrib V21    -0.02325302173429609
#>     Attrib V22    -0.9029624007717844
#>     Attrib V23    -1.1411721727671273
#>     Attrib V24    -1.111639585821282
#>     Attrib V25    -0.4247168282397496
#>     Attrib V26    0.2656251167807902
#>     Attrib V27    0.6621986043250269
#>     Attrib V28    -0.05200871553098644
#>     Attrib V29    -0.06539522169693066
#>     Attrib V3    0.009148700578220507
#>     Attrib V30    -0.8635855697022149
#>     Attrib V31    0.6529436198791789
#>     Attrib V32    -0.7988639433781165
#>     Attrib V33    -0.4951176269039524
#>     Attrib V34    0.2609783317040978
#>     Attrib V35    0.1674980927042768
#>     Attrib V36    1.1041984404836107
#>     Attrib V37    1.0861602945279687
#>     Attrib V38    -0.004845271022394729
#>     Attrib V39    -0.19165537880925598
#>     Attrib V4    0.12663352995176422
#>     Attrib V40    0.5303746629187853
#>     Attrib V41    -0.41156403921212875
#>     Attrib V42    -0.6841065063759513
#>     Attrib V43    -0.48701937053828714
#>     Attrib V44    -0.4621315826754042
#>     Attrib V45    -0.09890603165678552
#>     Attrib V46    -0.22826518976154492
#>     Attrib V47    -0.03948584408082363
#>     Attrib V48    -0.1372559625437643
#>     Attrib V49    -1.41029559204927
#>     Attrib V5    0.24258002097895193
#>     Attrib V50    0.722586199980928
#>     Attrib V51    -1.1970088051485648
#>     Attrib V52    -0.7920520351398749
#>     Attrib V53    -0.13825089671899943
#>     Attrib V54    -0.20133953795398354
#>     Attrib V55    0.9130661158736695
#>     Attrib V56    0.07959569249074698
#>     Attrib V57    1.2835235221194312
#>     Attrib V58    -0.9013082704024886
#>     Attrib V59    0.6660137783375939
#>     Attrib V6    0.2906182296155267
#>     Attrib V60    -0.20699096927601593
#>     Attrib V7    -0.06765541584022942
#>     Attrib V8    0.9667558625771663
#>     Attrib V9    -1.0159206787161619
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.1378086964787939
#>     Attrib V1    0.7762861874782505
#>     Attrib V10    -0.059584164533296444
#>     Attrib V11    -0.12798735799877067
#>     Attrib V12    -0.16759017202329496
#>     Attrib V13    -0.043004382538412315
#>     Attrib V14    0.20072306778846918
#>     Attrib V15    0.294760218532425
#>     Attrib V16    0.19248413810563608
#>     Attrib V17    -0.020342995341526986
#>     Attrib V18    0.06189828073550884
#>     Attrib V19    -0.1566520352829034
#>     Attrib V2    0.29146301402770275
#>     Attrib V20    0.00142338518896305
#>     Attrib V21    0.18705562237403447
#>     Attrib V22    -0.028421369876405166
#>     Attrib V23    -0.30389871081439
#>     Attrib V24    -0.10355090247904626
#>     Attrib V25    -0.29133898203058556
#>     Attrib V26    -0.5795921341810294
#>     Attrib V27    -0.5324354358999704
#>     Attrib V28    -0.3236772256803069
#>     Attrib V29    -0.2807811341442242
#>     Attrib V3    0.049196197035778266
#>     Attrib V30    -0.02706680974535336
#>     Attrib V31    -0.4783049585992318
#>     Attrib V32    0.09330959612528851
#>     Attrib V33    0.16740825657173894
#>     Attrib V34    -0.1783698422260518
#>     Attrib V35    -0.04486578309740064
#>     Attrib V36    -0.18390157601159499
#>     Attrib V37    -0.17552739614012217
#>     Attrib V38    0.15805543254829932
#>     Attrib V39    0.033794703234493906
#>     Attrib V4    0.1783185591152875
#>     Attrib V40    -0.37711550260800447
#>     Attrib V41    -0.178426917125624
#>     Attrib V42    0.09578222433118344
#>     Attrib V43    0.09658990284504924
#>     Attrib V44    0.014113340637859847
#>     Attrib V45    -0.2051845358662869
#>     Attrib V46    -0.14778288836861866
#>     Attrib V47    -0.24126692755056506
#>     Attrib V48    0.1035673747416392
#>     Attrib V49    0.3164506483425263
#>     Attrib V5    -0.10063593305053238
#>     Attrib V50    -0.10687856224215771
#>     Attrib V51    0.30161612771899093
#>     Attrib V52    0.022748712520177176
#>     Attrib V53    0.2794094028730731
#>     Attrib V54    0.5576239622063621
#>     Attrib V55    -0.09050825908091492
#>     Attrib V56    0.4942942197652282
#>     Attrib V57    0.11259085676811544
#>     Attrib V58    0.5626573939779295
#>     Attrib V59    0.5071768419037228
#>     Attrib V6    -0.05141662474039448
#>     Attrib V60    0.684055106177227
#>     Attrib V7    0.2732105351287497
#>     Attrib V8    -0.4414236009882643
#>     Attrib V9    0.2086470049597556
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.07279300833844532
#>     Attrib V1    0.26500331770588403
#>     Attrib V10    -0.01693223610400299
#>     Attrib V11    -0.3161037552105519
#>     Attrib V12    -0.37952872998836684
#>     Attrib V13    -0.1472880012487455
#>     Attrib V14    -0.3083245264852313
#>     Attrib V15    0.2690566160149505
#>     Attrib V16    0.4792224013137436
#>     Attrib V17    0.49586765422100604
#>     Attrib V18    0.7317301016677464
#>     Attrib V19    0.8298387572537995
#>     Attrib V2    -0.014343088680987515
#>     Attrib V20    -0.08267272283499072
#>     Attrib V21    -0.1379026247556936
#>     Attrib V22    0.5506593948774243
#>     Attrib V23    0.8762110084666224
#>     Attrib V24    1.0953162697954677
#>     Attrib V25    0.5531550355744185
#>     Attrib V26    -0.7046151917494405
#>     Attrib V27    -0.6682712257044783
#>     Attrib V28    0.11092005274016235
#>     Attrib V29    -0.7330758914126045
#>     Attrib V3    -0.28724309930616676
#>     Attrib V30    -0.018414611363304023
#>     Attrib V31    -1.0072380230651072
#>     Attrib V32    1.0182751121856661
#>     Attrib V33    0.7819515304582466
#>     Attrib V34    -0.4033026053576094
#>     Attrib V35    -0.13519394423795417
#>     Attrib V36    -0.7727128115543276
#>     Attrib V37    -1.1083487954319888
#>     Attrib V38    0.3050676716969678
#>     Attrib V39    0.22096726191078042
#>     Attrib V4    0.06576140173232786
#>     Attrib V40    -0.6034043011027087
#>     Attrib V41    0.21908575483019133
#>     Attrib V42    0.7279274938740832
#>     Attrib V43    0.3095628442436641
#>     Attrib V44    0.3725323786646865
#>     Attrib V45    -0.21103707410276898
#>     Attrib V46    -0.1614118889611242
#>     Attrib V47    -0.10828671145156092
#>     Attrib V48    0.2188089505292999
#>     Attrib V49    1.134465912071518
#>     Attrib V5    -0.16672391598862918
#>     Attrib V50    -0.863341107515539
#>     Attrib V51    0.9487320183796613
#>     Attrib V52    0.3802501596530115
#>     Attrib V53    7.644081440705303E-4
#>     Attrib V54    0.622636326384873
#>     Attrib V55    -0.9914686925525708
#>     Attrib V56    0.7770087264694279
#>     Attrib V57    -0.42881400033608946
#>     Attrib V58    0.8681553651991422
#>     Attrib V59    0.2896200056011293
#>     Attrib V6    -0.3178920407549933
#>     Attrib V60    1.154357069468763
#>     Attrib V7    0.6632674671094406
#>     Attrib V8    -0.997074406551186
#>     Attrib V9    0.5872192587717866
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.5011655004195321
#>     Attrib V1    -0.21151523246964743
#>     Attrib V10    0.0983381844674767
#>     Attrib V11    0.200815863906673
#>     Attrib V12    -0.29957774917553287
#>     Attrib V13    -0.04153324509290287
#>     Attrib V14    0.8404216914600613
#>     Attrib V15    0.41717149493384603
#>     Attrib V16    0.3318164330476208
#>     Attrib V17    0.3754106927964903
#>     Attrib V18    -0.10278344630770549
#>     Attrib V19    0.15062658699326464
#>     Attrib V2    -0.12211056128620758
#>     Attrib V20    0.5898515466530636
#>     Attrib V21    -0.0987725760670098
#>     Attrib V22    -0.6762598153811418
#>     Attrib V23    -0.6953661977238011
#>     Attrib V24    -0.8323031430451596
#>     Attrib V25    -0.16630222882671195
#>     Attrib V26    0.6554120041579232
#>     Attrib V27    0.5794628213477084
#>     Attrib V28    -0.27958119758219524
#>     Attrib V29    -0.05579524911644753
#>     Attrib V3    0.15743185028388076
#>     Attrib V30    -0.7114029098356375
#>     Attrib V31    0.4927853744800856
#>     Attrib V32    -0.5358029655227147
#>     Attrib V33    -0.5107983235377449
#>     Attrib V34    0.30914805681238455
#>     Attrib V35    0.09589873429096299
#>     Attrib V36    0.7164902582861808
#>     Attrib V37    0.44506098863250937
#>     Attrib V38    -0.2250673191551463
#>     Attrib V39    -0.5952146926628306
#>     Attrib V4    0.11280687431296749
#>     Attrib V40    0.09136333266071059
#>     Attrib V41    -0.8995633100329449
#>     Attrib V42    -0.9294954528686397
#>     Attrib V43    -0.7120628573968142
#>     Attrib V44    -0.7493718690743951
#>     Attrib V45    -0.5107281101046912
#>     Attrib V46    -0.3106985576503587
#>     Attrib V47    0.060311545401057355
#>     Attrib V48    -0.17899582274803894
#>     Attrib V49    -0.9725090642686217
#>     Attrib V5    -0.08634300362659736
#>     Attrib V50    0.8879440681816826
#>     Attrib V51    -0.6289991796657193
#>     Attrib V52    -0.20780434343240423
#>     Attrib V53    0.25775842100637686
#>     Attrib V54    0.19947894479083142
#>     Attrib V55    1.478491211401831
#>     Attrib V56    0.33933531616544527
#>     Attrib V57    0.8640331742555089
#>     Attrib V58    -0.37613517499987276
#>     Attrib V59    0.20967467867085285
#>     Attrib V6    -0.17130818310982732
#>     Attrib V60    -0.5511256859331113
#>     Attrib V7    -0.2129529400133604
#>     Attrib V8    0.851902703980796
#>     Attrib V9    -0.6585485734030767
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.5486307445322016
#>     Attrib V1    0.9434718009818357
#>     Attrib V10    0.8113000204117955
#>     Attrib V11    0.8075559893737568
#>     Attrib V12    1.5126350610494277
#>     Attrib V13    0.32155088447659436
#>     Attrib V14    -0.4152926524961419
#>     Attrib V15    -0.34849123015596095
#>     Attrib V16    -0.8950475418790091
#>     Attrib V17    -1.5797186927004676
#>     Attrib V18    -1.3249635474025454
#>     Attrib V19    -1.4937712802205887
#>     Attrib V2    0.9436031810192264
#>     Attrib V20    -0.8369774226294461
#>     Attrib V21    0.1759743331680167
#>     Attrib V22    -0.16335275715368638
#>     Attrib V23    -0.5670940248869073
#>     Attrib V24    -0.3790976072445871
#>     Attrib V25    -0.44970670701681964
#>     Attrib V26    0.45169873911628255
#>     Attrib V27    0.817757823274681
#>     Attrib V28    1.2494134341503702
#>     Attrib V29    1.0107404172916268
#>     Attrib V3    0.8275801222679541
#>     Attrib V30    0.8969163769090542
#>     Attrib V31    -0.3161358287725143
#>     Attrib V32    -0.25162340989435233
#>     Attrib V33    -0.28800784719997724
#>     Attrib V34    0.23602601911903712
#>     Attrib V35    0.4944593944022136
#>     Attrib V36    -0.5132262976771109
#>     Attrib V37    0.25606369363132153
#>     Attrib V38    -0.1918058524463564
#>     Attrib V39    0.2390228584487665
#>     Attrib V4    0.4420499192978604
#>     Attrib V40    -0.2813146512467155
#>     Attrib V41    0.5487724527274909
#>     Attrib V42    -0.6145522578170876
#>     Attrib V43    -0.1660657862855875
#>     Attrib V44    0.15801155736723133
#>     Attrib V45    0.37474621483477805
#>     Attrib V46    0.5468168303134145
#>     Attrib V47    -0.0504118863421935
#>     Attrib V48    0.2645527597997772
#>     Attrib V49    0.9564299836669434
#>     Attrib V5    0.4309618232792163
#>     Attrib V50    -0.5349280015882475
#>     Attrib V51    0.6471632180948154
#>     Attrib V52    0.8099560740830879
#>     Attrib V53    0.39397146714675124
#>     Attrib V54    -0.03863607295896196
#>     Attrib V55    -0.5569915412649125
#>     Attrib V56    -0.7283100076315991
#>     Attrib V57    -0.24388019575603465
#>     Attrib V58    0.15994534887565476
#>     Attrib V59    -0.08784584770528765
#>     Attrib V6    0.5941637752872544
#>     Attrib V60    0.404682584246399
#>     Attrib V7    -0.6900758992742683
#>     Attrib V8    -0.7192587931562612
#>     Attrib V9    1.3572829147385392
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.17958651218922167
#>     Attrib V1    -0.05994555876948497
#>     Attrib V10    0.09095276618187866
#>     Attrib V11    0.07095533776357896
#>     Attrib V12    0.09157876018233206
#>     Attrib V13    0.026863652853558594
#>     Attrib V14    0.13285265854160272
#>     Attrib V15    0.059397131547001755
#>     Attrib V16    0.12251113222087803
#>     Attrib V17    0.15176863039224225
#>     Attrib V18    0.009110307799639481
#>     Attrib V19    0.1523403735178734
#>     Attrib V2    1.4627954144802988E-4
#>     Attrib V20    0.13224814394876303
#>     Attrib V21    0.05335475831893361
#>     Attrib V22    -0.049019192196856
#>     Attrib V23    -0.050082900606888574
#>     Attrib V24    -0.10966968305122045
#>     Attrib V25    -0.059098656186169836
#>     Attrib V26    0.008283341129472937
#>     Attrib V27    0.056435546069693955
#>     Attrib V28    -0.05398770455003072
#>     Attrib V29    -0.07369132916142472
#>     Attrib V3    0.038382949490964303
#>     Attrib V30    -0.16411535256817097
#>     Attrib V31    0.020744007847620375
#>     Attrib V32    -0.14936004999787525
#>     Attrib V33    -0.019823302361292993
#>     Attrib V34    0.10442175108216394
#>     Attrib V35    0.079911710838464
#>     Attrib V36    0.11679723289068794
#>     Attrib V37    0.11840400420474219
#>     Attrib V38    -0.034295769834981074
#>     Attrib V39    0.02437549983104413
#>     Attrib V4    0.10634380339844457
#>     Attrib V40    0.17798828284927215
#>     Attrib V41    0.04322938979950047
#>     Attrib V42    -0.018043743549296075
#>     Attrib V43    -0.030273950918740595
#>     Attrib V44    -0.0327385739224847
#>     Attrib V45    -0.019059703551951638
#>     Attrib V46    -0.02146288581542178
#>     Attrib V47    0.003784476167289152
#>     Attrib V48    -0.016003421119173394
#>     Attrib V49    -0.166076888246074
#>     Attrib V5    0.1071201550401148
#>     Attrib V50    0.09903366306800203
#>     Attrib V51    -0.13152602185629336
#>     Attrib V52    -0.03209740208249756
#>     Attrib V53    -0.07721895017498977
#>     Attrib V54    -0.0864262674420106
#>     Attrib V55    0.15089262709497125
#>     Attrib V56    0.015291325811244372
#>     Attrib V57    0.1857880184766647
#>     Attrib V58    -0.06772807131712605
#>     Attrib V59    0.04780631096069079
#>     Attrib V6    0.16030235752863495
#>     Attrib V60    -0.03715538141772085
#>     Attrib V7    0.03238452535389553
#>     Attrib V8    0.26105367469416935
#>     Attrib V9    -0.04271075283945714
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.5268433215925556
#>     Attrib V1    0.6013308077122896
#>     Attrib V10    0.7626679452350462
#>     Attrib V11    0.5073053991856636
#>     Attrib V12    0.9815256398077711
#>     Attrib V13    0.08341276610006693
#>     Attrib V14    -0.603411666727449
#>     Attrib V15    -0.36461002090077876
#>     Attrib V16    -0.49402233441098276
#>     Attrib V17    -0.9202695308771744
#>     Attrib V18    -0.49030461609167897
#>     Attrib V19    -0.6520929323999219
#>     Attrib V2    0.4325139728428607
#>     Attrib V20    -0.5652289349535868
#>     Attrib V21    8.380502025975873E-4
#>     Attrib V22    -0.07636380159078338
#>     Attrib V23    -0.16061971189451718
#>     Attrib V24    0.37920680418128994
#>     Attrib V25    0.4099127789682929
#>     Attrib V26    0.541368602426236
#>     Attrib V27    0.4913689076196161
#>     Attrib V28    0.943511739643636
#>     Attrib V29    0.5452783865551474
#>     Attrib V3    0.1804607391486733
#>     Attrib V30    0.4862557820233431
#>     Attrib V31    -0.356511721286573
#>     Attrib V32    0.18728491127879557
#>     Attrib V33    0.11797983901635686
#>     Attrib V34    0.41888208177869607
#>     Attrib V35    0.6649544671519418
#>     Attrib V36    -0.17095345945922413
#>     Attrib V37    0.13865511673552153
#>     Attrib V38    -0.022763566284785822
#>     Attrib V39    0.1881756720061872
#>     Attrib V4    0.1473539429366035
#>     Attrib V40    -0.29095536722391047
#>     Attrib V41    0.39251659845551473
#>     Attrib V42    -0.5889134881191508
#>     Attrib V43    -0.4412217765041066
#>     Attrib V44    0.01918773900946012
#>     Attrib V45    0.36144812451888275
#>     Attrib V46    0.3689883399891472
#>     Attrib V47    0.024515221167332072
#>     Attrib V48    0.48439985041853895
#>     Attrib V49    0.917003682180669
#>     Attrib V5    0.21749234898891895
#>     Attrib V50    -0.4112943276339769
#>     Attrib V51    0.6532209151064988
#>     Attrib V52    0.5887822911876789
#>     Attrib V53    0.06320439640153379
#>     Attrib V54    0.30093853644080554
#>     Attrib V55    -0.5284534090856036
#>     Attrib V56    -0.5393465424778451
#>     Attrib V57    -0.2818494537317903
#>     Attrib V58    0.1244284686306777
#>     Attrib V59    -0.02933123364314953
#>     Attrib V6    0.554497937559812
#>     Attrib V60    0.5662534772898324
#>     Attrib V7    -0.3335775534040537
#>     Attrib V8    -0.5550809162243001
#>     Attrib V9    1.242008300305479
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.7489902455689077
#>     Attrib V1    -0.2956594361073962
#>     Attrib V10    -0.9404668328098486
#>     Attrib V11    -1.1452315566082005
#>     Attrib V12    -1.4423898557324402
#>     Attrib V13    -0.9292791505878731
#>     Attrib V14    0.37878484940993346
#>     Attrib V15    -0.1716812128388366
#>     Attrib V16    -0.1389374102429988
#>     Attrib V17    0.20746455699201874
#>     Attrib V18    -0.04424213867147811
#>     Attrib V19    -0.9360219997649087
#>     Attrib V2    -0.3558516090972013
#>     Attrib V20    -0.5374505455679123
#>     Attrib V21    -0.23830260492316682
#>     Attrib V22    -0.3609060113748718
#>     Attrib V23    0.29430906805829743
#>     Attrib V24    -0.06560033044447788
#>     Attrib V25    -0.17372953229545027
#>     Attrib V26    -0.5428194324843318
#>     Attrib V27    0.13834835668671694
#>     Attrib V28    -0.18189261205951213
#>     Attrib V29    -0.1698804460407176
#>     Attrib V3    0.0075272263273593685
#>     Attrib V30    -1.073032135717758
#>     Attrib V31    0.5078416896469594
#>     Attrib V32    0.20011138299221604
#>     Attrib V33    0.07383907769121867
#>     Attrib V34    0.014123142929081744
#>     Attrib V35    0.35473708353273625
#>     Attrib V36    1.4221081972366159
#>     Attrib V37    0.8409919466996976
#>     Attrib V38    -0.5823133646659467
#>     Attrib V39    -0.42450105181728437
#>     Attrib V4    0.3288244072150084
#>     Attrib V40    0.48788447267922547
#>     Attrib V41    -0.0875311202650226
#>     Attrib V42    0.1465216041419149
#>     Attrib V43    0.0795517886628208
#>     Attrib V44    -0.2456481936070121
#>     Attrib V45    -0.7297770027240935
#>     Attrib V46    -0.6099348138259746
#>     Attrib V47    -0.20331262503268688
#>     Attrib V48    -0.4869210557843722
#>     Attrib V49    -1.5597960632615053
#>     Attrib V5    0.21128933455518897
#>     Attrib V50    0.43946822868983926
#>     Attrib V51    -0.6841379711939063
#>     Attrib V52    0.021691752409943012
#>     Attrib V53    0.8887995146366787
#>     Attrib V54    0.5957538570998219
#>     Attrib V55    0.849622844332282
#>     Attrib V56    0.42323278793759395
#>     Attrib V57    1.1052937950496975
#>     Attrib V58    -0.007221309629182591
#>     Attrib V59    1.0092709713723758
#>     Attrib V6    0.4284768823496329
#>     Attrib V60    0.12650037720580395
#>     Attrib V7    -0.03601619739108945
#>     Attrib V8    1.3943968194304233
#>     Attrib V9    -0.8832849964979255
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.22669664451978433
#>     Attrib V1    0.2514265327086396
#>     Attrib V10    0.09448870968440638
#>     Attrib V11    0.017058471351384982
#>     Attrib V12    0.06814229748761276
#>     Attrib V13    -0.04048982829531187
#>     Attrib V14    -0.18558000859113968
#>     Attrib V15    0.0271134368697912
#>     Attrib V16    0.01935687761095792
#>     Attrib V17    -0.07634794738770943
#>     Attrib V18    0.2033234979155903
#>     Attrib V19    0.0818853876774113
#>     Attrib V2    0.07360412211487057
#>     Attrib V20    -0.10362690286167367
#>     Attrib V21    0.052084505820900864
#>     Attrib V22    0.3385943786581153
#>     Attrib V23    0.36351189878325063
#>     Attrib V24    0.639934569418107
#>     Attrib V25    0.45639920179971954
#>     Attrib V26    -0.1854988748620366
#>     Attrib V27    -0.2677642361918538
#>     Attrib V28    0.15789055883316236
#>     Attrib V29    -0.02980310090796132
#>     Attrib V3    -0.15261454470653263
#>     Attrib V30    0.2017720061806133
#>     Attrib V31    -0.3960672395676778
#>     Attrib V32    0.48464560142200924
#>     Attrib V33    0.3778273686354962
#>     Attrib V34    -0.08449943831019996
#>     Attrib V35    0.05280214001610146
#>     Attrib V36    -0.3348742081441127
#>     Attrib V37    -0.4148244401764638
#>     Attrib V38    0.03885471095682735
#>     Attrib V39    0.14244934913095236
#>     Attrib V4    -0.03157246351862696
#>     Attrib V40    -0.2606838830497795
#>     Attrib V41    0.20856847547799756
#>     Attrib V42    0.17553723401172386
#>     Attrib V43    0.11795356622094606
#>     Attrib V44    0.11526057071911754
#>     Attrib V45    0.035144223579802604
#>     Attrib V46    -0.004593330683212113
#>     Attrib V47    -0.06965946580586352
#>     Attrib V48    0.15488463051048648
#>     Attrib V49    0.6306090501790549
#>     Attrib V5    -0.10462673312190168
#>     Attrib V50    -0.40911809621067974
#>     Attrib V51    0.5522719879934255
#>     Attrib V52    0.2790210110282579
#>     Attrib V53    0.04174547066457543
#>     Attrib V54    0.36869231508420286
#>     Attrib V55    -0.45114598674483364
#>     Attrib V56    0.009751773670126586
#>     Attrib V57    -0.3634349617172323
#>     Attrib V58    0.4072192732273379
#>     Attrib V59    0.07821544768726484
#>     Attrib V6    0.06993950791284331
#>     Attrib V60    0.5630334821958428
#>     Attrib V7    0.23625633419913902
#>     Attrib V8    -0.43631162712898636
#>     Attrib V9    0.536410547398071
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.1625567175599344
#>     Attrib V1    0.018012837460318332
#>     Attrib V10    0.15165885624587044
#>     Attrib V11    0.1025726682046075
#>     Attrib V12    0.09118583578630779
#>     Attrib V13    0.07802280486967812
#>     Attrib V14    0.07761743296075146
#>     Attrib V15    0.08023073794750472
#>     Attrib V16    0.1244070937409537
#>     Attrib V17    0.15924107882802332
#>     Attrib V18    0.06346601800393731
#>     Attrib V19    0.05101640086973821
#>     Attrib V2    0.05964325797234451
#>     Attrib V20    0.03295785640899689
#>     Attrib V21    0.03378872190023048
#>     Attrib V22    -0.035823910818883614
#>     Attrib V23    -0.03059019835327413
#>     Attrib V24    -0.09101350048981481
#>     Attrib V25    -0.015726087102248997
#>     Attrib V26    0.024290929760751263
#>     Attrib V27    -0.031953885291442226
#>     Attrib V28    -0.04963240586888504
#>     Attrib V29    -0.11871947173021649
#>     Attrib V3    0.07165302945566993
#>     Attrib V30    -0.07265370701950258
#>     Attrib V31    0.07717966348769635
#>     Attrib V32    -0.0760352516337483
#>     Attrib V33    -0.032527518705960067
#>     Attrib V34    0.056555906777599134
#>     Attrib V35    0.061796685138157954
#>     Attrib V36    0.05668488006436709
#>     Attrib V37    0.1079895565982325
#>     Attrib V38    0.001784496130809662
#>     Attrib V39    0.10877319645269844
#>     Attrib V4    0.13793343100917105
#>     Attrib V40    0.1710262778377682
#>     Attrib V41    0.09290946962157734
#>     Attrib V42    0.04921928198089796
#>     Attrib V43    -0.014232636011798777
#>     Attrib V44    -0.015812123181790094
#>     Attrib V45    0.024539417086710667
#>     Attrib V46    0.0310492581128736
#>     Attrib V47    0.020406029126062493
#>     Attrib V48    0.019575871959438572
#>     Attrib V49    -0.07998215779146069
#>     Attrib V5    0.11070702042955305
#>     Attrib V50    0.025356097581737833
#>     Attrib V51    -0.03812695335398349
#>     Attrib V52    0.03191917209005882
#>     Attrib V53    -0.020180177976147167
#>     Attrib V54    -0.022123432227891055
#>     Attrib V55    0.09116374308556868
#>     Attrib V56    0.050681467583543485
#>     Attrib V57    0.09233493070352936
#>     Attrib V58    0.02473520874458073
#>     Attrib V59    0.0958951958358933
#>     Attrib V6    0.12313306880720076
#>     Attrib V60    0.023443342427055577
#>     Attrib V7    0.028765210378488865
#>     Attrib V8    0.17099798747604064
#>     Attrib V9    0.026978045198186276
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.09750890043897356
#>     Attrib V1    0.6404010331328848
#>     Attrib V10    -0.08221175586981588
#>     Attrib V11    -0.11499855602077862
#>     Attrib V12    -0.24721205802567986
#>     Attrib V13    -0.08061280037203665
#>     Attrib V14    0.06429934399771814
#>     Attrib V15    0.2423785371954855
#>     Attrib V16    0.16122762558219164
#>     Attrib V17    0.054111501948970867
#>     Attrib V18    0.1512235560685403
#>     Attrib V19    6.381441450347019E-4
#>     Attrib V2    0.2914136898104505
#>     Attrib V20    0.060050881081456356
#>     Attrib V21    0.1127651714460589
#>     Attrib V22    0.07884676247084092
#>     Attrib V23    -0.07681022762719908
#>     Attrib V24    0.0583901046438104
#>     Attrib V25    -0.20017580246124805
#>     Attrib V26    -0.5976997371659862
#>     Attrib V27    -0.6287421765866293
#>     Attrib V28    -0.31271538620947137
#>     Attrib V29    -0.36138928784685986
#>     Attrib V3    -0.021834430814365768
#>     Attrib V30    -0.019937770809045047
#>     Attrib V31    -0.4591008190030984
#>     Attrib V32    0.24093647309300334
#>     Attrib V33    0.3340185346681884
#>     Attrib V34    -0.10285932535572566
#>     Attrib V35    0.012649057034650817
#>     Attrib V36    -0.2007266156818292
#>     Attrib V37    -0.1764179648981034
#>     Attrib V38    0.2987788826350826
#>     Attrib V39    0.07804484699335534
#>     Attrib V4    0.13824291564379998
#>     Attrib V40    -0.3903306657333565
#>     Attrib V41    -0.14759284676132764
#>     Attrib V42    0.10698026543346656
#>     Attrib V43    0.05597343536418879
#>     Attrib V44    0.1067575712774491
#>     Attrib V45    -0.12882465151490904
#>     Attrib V46    -0.1488112402054138
#>     Attrib V47    -0.2001264140142484
#>     Attrib V48    0.060761261861422826
#>     Attrib V49    0.3186509259009666
#>     Attrib V5    -0.16295692873751455
#>     Attrib V50    -0.2220910816509437
#>     Attrib V51    0.3030343498559286
#>     Attrib V52    0.02886244128159452
#>     Attrib V53    0.18803080711727438
#>     Attrib V54    0.5646120568384859
#>     Attrib V55    -0.12086602581257694
#>     Attrib V56    0.39757862580272585
#>     Attrib V57    0.013078973106208942
#>     Attrib V58    0.42103152819476597
#>     Attrib V59    0.37063320929211324
#>     Attrib V6    -0.09980425089085959
#>     Attrib V60    0.5920378206086181
#>     Attrib V7    0.2961833615237027
#>     Attrib V8    -0.4065061793691191
#>     Attrib V9    0.2617734605110226
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.11969043076997445
#>     Attrib V1    0.6882861702642953
#>     Attrib V10    -0.19360273562983846
#>     Attrib V11    -0.29416212253594565
#>     Attrib V12    -0.45569477199602443
#>     Attrib V13    -0.2408155459319138
#>     Attrib V14    0.09608868571651007
#>     Attrib V15    0.38768413745086927
#>     Attrib V16    0.33182200971923154
#>     Attrib V17    0.08022458314816448
#>     Attrib V18    0.25393509775700474
#>     Attrib V19    0.07089250393103426
#>     Attrib V2    0.22854321283580364
#>     Attrib V20    0.12396522123550227
#>     Attrib V21    0.35430724151872367
#>     Attrib V22    0.2691263373997879
#>     Attrib V23    0.074590041577053
#>     Attrib V24    -0.0071954883927030375
#>     Attrib V25    -0.42765205990116506
#>     Attrib V26    -0.897849690816881
#>     Attrib V27    -0.6786603928610747
#>     Attrib V28    0.0027853727610732573
#>     Attrib V29    -0.04739716945406838
#>     Attrib V3    -0.0040142452051478
#>     Attrib V30    0.2518912501329807
#>     Attrib V31    -0.7468404821829111
#>     Attrib V32    0.29396543329410274
#>     Attrib V33    0.3513949656778979
#>     Attrib V34    -0.3650974105896125
#>     Attrib V35    -0.2302268680936204
#>     Attrib V36    -0.3366699947173089
#>     Attrib V37    -0.3561843581624318
#>     Attrib V38    0.2809164549882562
#>     Attrib V39    0.263879559416939
#>     Attrib V4    0.15236066755901034
#>     Attrib V40    -0.46064049957159386
#>     Attrib V41    -0.10323733634315818
#>     Attrib V42    0.37534553842235985
#>     Attrib V43    0.11178639554362561
#>     Attrib V44    0.2056898179907239
#>     Attrib V45    -0.08297882453107604
#>     Attrib V46    -0.11277874770570641
#>     Attrib V47    -0.24625551445907534
#>     Attrib V48    -0.05474804581505759
#>     Attrib V49    0.5028478417274946
#>     Attrib V5    -0.10020449241137144
#>     Attrib V50    -0.41197982312781617
#>     Attrib V51    0.4003275155383558
#>     Attrib V52    0.04849074914263506
#>     Attrib V53    0.0782989294433295
#>     Attrib V54    0.37952478035852455
#>     Attrib V55    -0.4513184332720272
#>     Attrib V56    0.33031923714405725
#>     Attrib V57    -0.16143405106056732
#>     Attrib V58    0.6513080271616616
#>     Attrib V59    0.3077196831019506
#>     Attrib V6    -0.12702446624513913
#>     Attrib V60    0.621664546786897
#>     Attrib V7    0.36389121767206134
#>     Attrib V8    -0.46522697475221414
#>     Attrib V9    0.3245714255519031
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
