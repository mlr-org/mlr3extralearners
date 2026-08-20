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
#>     Threshold    -0.8585715257365525
#>     Node 2    2.961732220153792
#>     Node 3    1.351262732459418
#>     Node 4    1.137372031739863
#>     Node 5    -3.0260675493224243
#>     Node 6    1.0438126925775477
#>     Node 7    2.7809189410098325
#>     Node 8    1.2917339643319852
#>     Node 9    2.8888062391667333
#>     Node 10    -0.965927299630755
#>     Node 11    1.415340102316917
#>     Node 12    1.6439818180070713
#>     Node 13    0.5571254794124819
#>     Node 14    1.7876184390021772
#>     Node 15    -2.5648672645354327
#>     Node 16    0.4271024353700258
#>     Node 17    0.517261184782561
#>     Node 18    -0.5426327229274023
#>     Node 19    2.2363072061579365
#>     Node 20    1.5145367946117783
#>     Node 21    -3.6965163631662965
#>     Node 22    1.2070554186426004
#>     Node 23    1.8484123610598835
#>     Node 24    -1.5388784646295164
#>     Node 25    4.087175071193006
#>     Node 26    -0.6269508044986518
#>     Node 27    2.2593052766159327
#>     Node 28    -2.061606319956941
#>     Node 29    1.1391975379376398
#>     Node 30    -0.19703615554550838
#>     Node 31    1.2022626569020172
#>     Node 32    0.9740286646489305
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.9279934126225331
#>     Node 2    -2.968614086384465
#>     Node 3    -1.3308579993651914
#>     Node 4    -1.105575583078142
#>     Node 5    3.01441913614635
#>     Node 6    -1.0247053711387617
#>     Node 7    -2.768360123367339
#>     Node 8    -1.3381222284275966
#>     Node 9    -2.881721384064476
#>     Node 10    0.9173008180737506
#>     Node 11    -1.3897222452521014
#>     Node 12    -1.722745475140195
#>     Node 13    -0.5099467513546241
#>     Node 14    -1.7365167419571146
#>     Node 15    2.5635307751398355
#>     Node 16    -0.45083068796069276
#>     Node 17    -0.49236270834881607
#>     Node 18    0.595123205803265
#>     Node 19    -2.2375917246764985
#>     Node 20    -1.5062608390798837
#>     Node 21    3.699949766347508
#>     Node 22    -1.2612620314421057
#>     Node 23    -1.8841023823140828
#>     Node 24    1.554063838942359
#>     Node 25    -4.07325075720768
#>     Node 26    0.5549638196933947
#>     Node 27    -2.3060732820191543
#>     Node 28    2.0216746241085923
#>     Node 29    -1.1783368710226596
#>     Node 30    0.26455144687994797
#>     Node 31    -1.1446656219083544
#>     Node 32    -0.9950467505477849
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.34308841106140475
#>     Attrib V1    0.4529676416623417
#>     Attrib V10    -0.33401390973933737
#>     Attrib V11    0.5727846960409374
#>     Attrib V12    0.41502362843927804
#>     Attrib V13    -0.16071361849126153
#>     Attrib V14    -0.033913252885325616
#>     Attrib V15    0.44733100286743804
#>     Attrib V16    0.5689573186635232
#>     Attrib V17    0.39782780551957075
#>     Attrib V18    -0.49902032343133007
#>     Attrib V19    0.11815860035926776
#>     Attrib V2    -0.16202081980938315
#>     Attrib V20    1.0506392003742286
#>     Attrib V21    0.7729090150340724
#>     Attrib V22    0.29236088971849017
#>     Attrib V23    0.5141557162011984
#>     Attrib V24    0.8923071463105698
#>     Attrib V25    -0.4924630642835886
#>     Attrib V26    -0.7324972083048282
#>     Attrib V27    -0.9736668341679391
#>     Attrib V28    -0.23537687346949984
#>     Attrib V29    -0.4106662764965856
#>     Attrib V3    -0.12865914893496258
#>     Attrib V30    0.6637500256465437
#>     Attrib V31    -1.9609737625434307
#>     Attrib V32    0.06859279334601323
#>     Attrib V33    1.1053510352966767
#>     Attrib V34    0.014144213282781185
#>     Attrib V35    -0.6672506669216822
#>     Attrib V36    -0.8334114557984992
#>     Attrib V37    -1.130185206187506
#>     Attrib V38    0.3582135534845756
#>     Attrib V39    0.3501586046495503
#>     Attrib V4    0.3991863103282427
#>     Attrib V40    -0.21150933767434102
#>     Attrib V41    0.7287504880249637
#>     Attrib V42    1.1707299909201416
#>     Attrib V43    -0.13976618793891626
#>     Attrib V44    -0.25293254537206566
#>     Attrib V45    0.20363888506823385
#>     Attrib V46    0.2101241538905043
#>     Attrib V47    -0.8776491124161955
#>     Attrib V48    -0.09776784786495131
#>     Attrib V49    1.388351204016263
#>     Attrib V5    -0.15773049990597898
#>     Attrib V50    -0.7289442256875165
#>     Attrib V51    0.38432598329201384
#>     Attrib V52    0.06188524404189876
#>     Attrib V53    0.024207663342270792
#>     Attrib V54    0.08718144295707976
#>     Attrib V55    -0.7913222238680275
#>     Attrib V56    0.015760820989809143
#>     Attrib V57    0.28564665928254207
#>     Attrib V58    0.7566213285419314
#>     Attrib V59    1.467010065118828
#>     Attrib V6    -0.5926977291675398
#>     Attrib V60    0.7860379642748648
#>     Attrib V7    -0.1997134135246157
#>     Attrib V8    0.13533952186447953
#>     Attrib V9    0.3402126470185668
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.18101096539492462
#>     Attrib V1    0.1934357470668889
#>     Attrib V10    -0.22555687320004453
#>     Attrib V11    0.17881761608333288
#>     Attrib V12    0.2258014775440328
#>     Attrib V13    -0.10259290307467157
#>     Attrib V14    -0.07354399889071118
#>     Attrib V15    0.2639449076577516
#>     Attrib V16    0.3664631086132526
#>     Attrib V17    0.3488025555847605
#>     Attrib V18    -0.13361170444924253
#>     Attrib V19    0.12847692964850416
#>     Attrib V2    -0.017167466605504784
#>     Attrib V20    0.37593619593314714
#>     Attrib V21    0.1979103764849677
#>     Attrib V22    0.050872049139157084
#>     Attrib V23    0.19454913274657643
#>     Attrib V24    0.3826238522895535
#>     Attrib V25    -0.21964942789814335
#>     Attrib V26    -0.30878210550860746
#>     Attrib V27    -0.4353143260477414
#>     Attrib V28    -0.11538594415724046
#>     Attrib V29    -0.4565425313211144
#>     Attrib V3    -0.008771965307174239
#>     Attrib V30    0.23045313601863374
#>     Attrib V31    -0.7310012634585448
#>     Attrib V32    0.203800824137952
#>     Attrib V33    0.5392376170816969
#>     Attrib V34    -0.05585168202970548
#>     Attrib V35    -0.38245002880335766
#>     Attrib V36    -0.5825458213420824
#>     Attrib V37    -0.596875741988833
#>     Attrib V38    0.06217730010996779
#>     Attrib V39    0.138148567372603
#>     Attrib V4    0.24433574737122038
#>     Attrib V40    -0.10815071823207524
#>     Attrib V41    0.3318947423193358
#>     Attrib V42    0.4467149289727609
#>     Attrib V43    -0.0692260857858161
#>     Attrib V44    -0.04658897351429105
#>     Attrib V45    0.05211712358808563
#>     Attrib V46    0.03774107009514732
#>     Attrib V47    -0.46842108500406465
#>     Attrib V48    -0.08851720090933027
#>     Attrib V49    0.6588969130910315
#>     Attrib V5    0.03626911430424146
#>     Attrib V50    -0.3763291011835769
#>     Attrib V51    0.15111107973030785
#>     Attrib V52    0.04935155984793153
#>     Attrib V53    0.044079299847234
#>     Attrib V54    0.2396206995151231
#>     Attrib V55    -0.27023376200107674
#>     Attrib V56    0.12362676446824158
#>     Attrib V57    0.12763481800007992
#>     Attrib V58    0.4234234862286104
#>     Attrib V59    0.5994215583310827
#>     Attrib V6    -0.10700221330775116
#>     Attrib V60    0.3471883553718633
#>     Attrib V7    -0.0131341687781955
#>     Attrib V8    0.045901823188035304
#>     Attrib V9    0.08922148579243015
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.2001636040597916
#>     Attrib V1    0.00479154677030929
#>     Attrib V10    0.04972770790068997
#>     Attrib V11    0.42087235686868885
#>     Attrib V12    0.4323278243187397
#>     Attrib V13    -0.12826538242838822
#>     Attrib V14    -0.3005094034377923
#>     Attrib V15    -0.05925125706979638
#>     Attrib V16    -0.05750049843640421
#>     Attrib V17    0.01458244332643667
#>     Attrib V18    -0.27956250128894766
#>     Attrib V19    -0.3120805239884693
#>     Attrib V2    -0.16971271708927524
#>     Attrib V20    -0.06170583500747514
#>     Attrib V21    -0.06672932210573539
#>     Attrib V22    -0.3922647084880739
#>     Attrib V23    -0.11770312590453084
#>     Attrib V24    0.1358169885949199
#>     Attrib V25    -0.23446162861475484
#>     Attrib V26    0.03658465078552621
#>     Attrib V27    -9.969539797382552E-4
#>     Attrib V28    0.26978807287044365
#>     Attrib V29    0.10656368546890085
#>     Attrib V3    -0.013872334847565468
#>     Attrib V30    0.27703853906554227
#>     Attrib V31    -0.5453587013589442
#>     Attrib V32    0.07021426647565274
#>     Attrib V33    0.2360177243004234
#>     Attrib V34    0.08643602807962711
#>     Attrib V35    -0.02951213660661075
#>     Attrib V36    -0.3818494059698393
#>     Attrib V37    -0.180576824554094
#>     Attrib V38    0.06699493283220283
#>     Attrib V39    0.042787899298893095
#>     Attrib V4    0.16513734471204694
#>     Attrib V40    -0.3161558342136466
#>     Attrib V41    0.0897471523931824
#>     Attrib V42    0.009492578941465848
#>     Attrib V43    -0.1625172251327195
#>     Attrib V44    -0.047601212678999826
#>     Attrib V45    0.2562478887150763
#>     Attrib V46    0.23584587674798038
#>     Attrib V47    -0.22332181158432204
#>     Attrib V48    0.18999992690425704
#>     Attrib V49    0.7138951053572954
#>     Attrib V5    0.11288211715602386
#>     Attrib V50    -0.20994944823248401
#>     Attrib V51    0.32766124438974614
#>     Attrib V52    0.1792724081085133
#>     Attrib V53    0.19112311523308054
#>     Attrib V54    -0.13593991467780034
#>     Attrib V55    -0.29737474134219694
#>     Attrib V56    -0.1624915522541933
#>     Attrib V57    -0.03242238579213578
#>     Attrib V58    0.28355161483806207
#>     Attrib V59    0.1837062596434819
#>     Attrib V6    -0.06618323056893624
#>     Attrib V60    0.13928062877134387
#>     Attrib V7    -0.2947242162427036
#>     Attrib V8    -0.1731062254377776
#>     Attrib V9    0.27425495456080456
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.343516440086313
#>     Attrib V1    -0.21562412212862517
#>     Attrib V10    0.2786712033153665
#>     Attrib V11    -0.8105342478850669
#>     Attrib V12    -0.7190340215308978
#>     Attrib V13    0.22374220719812676
#>     Attrib V14    0.2629287232784797
#>     Attrib V15    -0.24053636507077394
#>     Attrib V16    -0.13762765671245167
#>     Attrib V17    -0.03953671966824547
#>     Attrib V18    0.7254381517898045
#>     Attrib V19    0.15233568102267367
#>     Attrib V2    0.3432850942294834
#>     Attrib V20    -0.8990367484430954
#>     Attrib V21    -0.7726563272412009
#>     Attrib V22    -0.431190532266694
#>     Attrib V23    -0.7496947492704694
#>     Attrib V24    -1.1977116750436605
#>     Attrib V25    0.3008046460849725
#>     Attrib V26    0.5440544862273952
#>     Attrib V27    1.1109114862171021
#>     Attrib V28    0.6383821165899776
#>     Attrib V29    0.14789576974921062
#>     Attrib V3    0.23296433146440362
#>     Attrib V30    -0.7005270666887277
#>     Attrib V31    2.0462266036042944
#>     Attrib V32    0.47694770248873125
#>     Attrib V33    -0.6113978934665409
#>     Attrib V34    0.03374792479649367
#>     Attrib V35    0.5834365172916115
#>     Attrib V36    0.7641741284624989
#>     Attrib V37    0.8274382635946818
#>     Attrib V38    -0.34166734375645874
#>     Attrib V39    -0.17468494508747923
#>     Attrib V4    -0.4309239605036308
#>     Attrib V40    0.6135882646790481
#>     Attrib V41    -0.44755083361830433
#>     Attrib V42    -0.7026889831584947
#>     Attrib V43    0.23862452874767837
#>     Attrib V44    0.32664867380377305
#>     Attrib V45    -0.32853677317005714
#>     Attrib V46    -0.4577465332340791
#>     Attrib V47    0.6543771620400746
#>     Attrib V48    0.19123198746416575
#>     Attrib V49    -1.1285423300402644
#>     Attrib V5    0.2687217514165287
#>     Attrib V50    0.7603239686969099
#>     Attrib V51    -0.6395923831562433
#>     Attrib V52    -0.3638922933467939
#>     Attrib V53    -0.33749119084591306
#>     Attrib V54    0.1687105051983018
#>     Attrib V55    0.61325483803492
#>     Attrib V56    0.13052886308980727
#>     Attrib V57    -0.28608562198440074
#>     Attrib V58    -0.9020287437199705
#>     Attrib V59    -1.4646725414105113
#>     Attrib V6    0.7214095064399191
#>     Attrib V60    -0.6940794922745552
#>     Attrib V7    0.7503226929324853
#>     Attrib V8    0.042373531642407036
#>     Attrib V9    -0.4299675192749233
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.2276699731841791
#>     Attrib V1    0.1583221812761973
#>     Attrib V10    -0.19373976358613526
#>     Attrib V11    0.214295242418144
#>     Attrib V12    0.3000353660093528
#>     Attrib V13    -0.14352035548416517
#>     Attrib V14    -0.16101089730883308
#>     Attrib V15    0.07644709243918728
#>     Attrib V16    0.24759223146888978
#>     Attrib V17    0.18573426636819967
#>     Attrib V18    -0.08711656663396067
#>     Attrib V19    -0.047094726194037526
#>     Attrib V2    -0.05244270575560412
#>     Attrib V20    0.18919972387766576
#>     Attrib V21    0.09362796910713918
#>     Attrib V22    -0.14136568913305095
#>     Attrib V23    0.05540205782773205
#>     Attrib V24    0.3262725049922808
#>     Attrib V25    -0.09849114987764931
#>     Attrib V26    -0.13079873391787034
#>     Attrib V27    -0.19282112878004223
#>     Attrib V28    -0.03658765801152192
#>     Attrib V29    -0.25654084375953895
#>     Attrib V3    -0.014288076025307449
#>     Attrib V30    0.13139618718833362
#>     Attrib V31    -0.5954896824177736
#>     Attrib V32    0.1623760049691741
#>     Attrib V33    0.3706527113358646
#>     Attrib V34    -0.02198621763150286
#>     Attrib V35    -0.23655590844439647
#>     Attrib V36    -0.483394839536788
#>     Attrib V37    -0.39415820403666935
#>     Attrib V38    0.06534178746302138
#>     Attrib V39    0.07792441867810511
#>     Attrib V4    0.20965497063565025
#>     Attrib V40    -0.17973624931876128
#>     Attrib V41    0.26905504830368254
#>     Attrib V42    0.29904145117524333
#>     Attrib V43    -0.06889847537689923
#>     Attrib V44    -0.09063543452645126
#>     Attrib V45    0.045055009106127863
#>     Attrib V46    0.09245941571174902
#>     Attrib V47    -0.3669958992649697
#>     Attrib V48    -0.04914497180608057
#>     Attrib V49    0.5031278277339322
#>     Attrib V5    0.04706937768615944
#>     Attrib V50    -0.2669355181707784
#>     Attrib V51    0.16364741578552827
#>     Attrib V52    0.028997729751830695
#>     Attrib V53    0.17839549226601703
#>     Attrib V54    0.08930597867816564
#>     Attrib V55    -0.28683042022414795
#>     Attrib V56    0.025927680557372705
#>     Attrib V57    0.09141341157046226
#>     Attrib V58    0.3119193726278244
#>     Attrib V59    0.42883097467645814
#>     Attrib V6    -0.021294251467087508
#>     Attrib V60    0.29082620745874
#>     Attrib V7    -0.07545228263192594
#>     Attrib V8    -0.0478233800291531
#>     Attrib V9    0.12992542990233988
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.3592684274000995
#>     Attrib V1    0.06292499064499082
#>     Attrib V10    0.650813797197915
#>     Attrib V11    1.3469455235104646
#>     Attrib V12    1.2783331768847956
#>     Attrib V13    -0.02264761019202949
#>     Attrib V14    -0.8184715625446792
#>     Attrib V15    -0.5253311630108178
#>     Attrib V16    -0.47943682850282626
#>     Attrib V17    -0.2443625606942518
#>     Attrib V18    -0.3227198223187481
#>     Attrib V19    -0.3485332018811013
#>     Attrib V2    -0.17975963518451213
#>     Attrib V20    -0.041205574194750884
#>     Attrib V21    0.09614586271936323
#>     Attrib V22    -0.1228735562447196
#>     Attrib V23    0.6168309704985999
#>     Attrib V24    0.7081596518162314
#>     Attrib V25    -0.05757800239261248
#>     Attrib V26    0.8370682303722682
#>     Attrib V27    0.8090603795582452
#>     Attrib V28    0.8876747577863888
#>     Attrib V29    0.9846889529741641
#>     Attrib V3    0.16589600642366345
#>     Attrib V30    0.6956937869064405
#>     Attrib V31    -0.9451423703558087
#>     Attrib V32    -0.4634109922845298
#>     Attrib V33    -0.522440992791131
#>     Attrib V34    -0.03893578509081352
#>     Attrib V35    0.24115611840088547
#>     Attrib V36    -0.7074589202881957
#>     Attrib V37    -0.04744866349639266
#>     Attrib V38    0.04270715932112642
#>     Attrib V39    -0.008885395556096734
#>     Attrib V4    0.44092901220910286
#>     Attrib V40    -0.5837107928577268
#>     Attrib V41    0.5086356317612853
#>     Attrib V42    -0.13634957112458296
#>     Attrib V43    0.030169051836493283
#>     Attrib V44    0.24370468563214429
#>     Attrib V45    0.5720748105404991
#>     Attrib V46    0.9487975360048482
#>     Attrib V47    0.16931566523836175
#>     Attrib V48    0.16044269697647792
#>     Attrib V49    1.0703762887966484
#>     Attrib V5    0.6667539174688302
#>     Attrib V50    -0.19902728309102427
#>     Attrib V51    0.9327299118757282
#>     Attrib V52    0.8076330024408077
#>     Attrib V53    0.6151361510085187
#>     Attrib V54    -0.10732843863419395
#>     Attrib V55    -0.6701839877587741
#>     Attrib V56    -0.5776729454476389
#>     Attrib V57    -0.544611269407587
#>     Attrib V58    0.386211783280247
#>     Attrib V59    -0.10499400059388327
#>     Attrib V6    0.3786954574548083
#>     Attrib V60    0.0771568795834817
#>     Attrib V7    -0.6244432210356077
#>     Attrib V8    -0.24366671838060694
#>     Attrib V9    0.8412579583233102
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.1676792741632324
#>     Attrib V1    0.09232727238720011
#>     Attrib V10    0.18813717886916037
#>     Attrib V11    0.5253718727665391
#>     Attrib V12    0.5412836435292869
#>     Attrib V13    -0.09277102122810592
#>     Attrib V14    -0.39522319599162803
#>     Attrib V15    -0.209689232811865
#>     Attrib V16    -0.1902659049123429
#>     Attrib V17    -0.18900259746607734
#>     Attrib V18    -0.3891287413769166
#>     Attrib V19    -0.49930373245511067
#>     Attrib V2    -0.040914728786700716
#>     Attrib V20    -0.3464858032120042
#>     Attrib V21    -0.3154384103902282
#>     Attrib V22    -0.6324350274710081
#>     Attrib V23    -0.4236434839215209
#>     Attrib V24    -0.04814091278693079
#>     Attrib V25    -0.2116053186399581
#>     Attrib V26    0.1798302132051799
#>     Attrib V27    0.24659818413880608
#>     Attrib V28    0.34425451995931755
#>     Attrib V29    0.16237205654061235
#>     Attrib V3    0.07143153678939766
#>     Attrib V30    0.14204906803327463
#>     Attrib V31    -0.43306115272509915
#>     Attrib V32    0.041349493078553345
#>     Attrib V33    0.09302790974528292
#>     Attrib V34    0.09543844555628737
#>     Attrib V35    0.05993623506043515
#>     Attrib V36    -0.23932104901008727
#>     Attrib V37    0.01392876653706748
#>     Attrib V38    0.17541745042776738
#>     Attrib V39    0.024403079599037737
#>     Attrib V4    0.2683578635739265
#>     Attrib V40    -0.35820976897434986
#>     Attrib V41    -0.011889553711187984
#>     Attrib V42    -0.2801106365181376
#>     Attrib V43    -0.17854323400228722
#>     Attrib V44    -0.05635484367438809
#>     Attrib V45    0.20552216212419497
#>     Attrib V46    0.37338086099935963
#>     Attrib V47    0.01447354788046574
#>     Attrib V48    0.34837474124095147
#>     Attrib V49    0.6261665397252917
#>     Attrib V5    0.1635437119763266
#>     Attrib V50    -0.10378285679868195
#>     Attrib V51    0.3129484493367212
#>     Attrib V52    0.26197035839044863
#>     Attrib V53    0.28987371966817677
#>     Attrib V54    -0.05835402677885964
#>     Attrib V55    -0.18177369819645506
#>     Attrib V56    -0.22670374770890403
#>     Attrib V57    0.11555579444351591
#>     Attrib V58    0.25249185834002436
#>     Attrib V59    0.12201291268928552
#>     Attrib V6    0.030607861610750242
#>     Attrib V60    0.23570615483285545
#>     Attrib V7    -0.30406714618729863
#>     Attrib V8    -0.26588708831769986
#>     Attrib V9    0.25209628303736653
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.23614451250513827
#>     Attrib V1    0.1811596105161178
#>     Attrib V10    0.762313888043483
#>     Attrib V11    1.3636963326339333
#>     Attrib V12    1.5106909399880242
#>     Attrib V13    0.1155430774820399
#>     Attrib V14    -0.9349253666409157
#>     Attrib V15    -0.67469669113123
#>     Attrib V16    -0.685774964220331
#>     Attrib V17    -0.42807955018400146
#>     Attrib V18    -0.509683140153321
#>     Attrib V19    -0.6912246260689449
#>     Attrib V2    -0.03394286583752023
#>     Attrib V20    -0.3706864350028885
#>     Attrib V21    -0.12192865383067561
#>     Attrib V22    -0.35451983037138074
#>     Attrib V23    0.2587142997634188
#>     Attrib V24    0.5101835054256334
#>     Attrib V25    0.008918575243082668
#>     Attrib V26    0.9047238923035172
#>     Attrib V27    0.9598742314704457
#>     Attrib V28    0.8817608275932737
#>     Attrib V29    0.7108506975316443
#>     Attrib V3    0.24815677958604657
#>     Attrib V30    0.4453769808030403
#>     Attrib V31    -0.7130484275991612
#>     Attrib V32    -0.293011416583586
#>     Attrib V33    -0.47421376186921244
#>     Attrib V34    0.1022402370623894
#>     Attrib V35    0.37887602461645536
#>     Attrib V36    -0.5608423347685147
#>     Attrib V37    0.20510924072947165
#>     Attrib V38    0.16623297030292544
#>     Attrib V39    0.057511980594995016
#>     Attrib V4    0.39691085657507985
#>     Attrib V40    -0.5820171498702312
#>     Attrib V41    0.40211248100286395
#>     Attrib V42    -0.416580773207208
#>     Attrib V43    0.07021118390813356
#>     Attrib V44    0.11064490438865258
#>     Attrib V45    0.4275963941210793
#>     Attrib V46    0.8990843850285157
#>     Attrib V47    0.2431144175501842
#>     Attrib V48    0.21525664495783944
#>     Attrib V49    1.0350063320975502
#>     Attrib V5    0.6057157221436344
#>     Attrib V50    -0.1167332876325168
#>     Attrib V51    0.8843793697533595
#>     Attrib V52    0.7409105650304229
#>     Attrib V53    0.6808288470695527
#>     Attrib V54    -0.15578629351139595
#>     Attrib V55    -0.42167098007157644
#>     Attrib V56    -0.44320628689546243
#>     Attrib V57    -0.45382065896557816
#>     Attrib V58    0.37389420166925486
#>     Attrib V59    -0.119397542235306
#>     Attrib V6    0.41672202976922174
#>     Attrib V60    0.07228209654503541
#>     Attrib V7    -0.704230254910377
#>     Attrib V8    -0.4060423032034097
#>     Attrib V9    0.7389167466029393
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.26144625220032064
#>     Attrib V1    0.007164027148660509
#>     Attrib V10    0.06645342365951433
#>     Attrib V11    -0.3165327948617857
#>     Attrib V12    -0.31200872243550415
#>     Attrib V13    0.14454901389497662
#>     Attrib V14    0.3675433931857091
#>     Attrib V15    0.015622356641555733
#>     Attrib V16    -0.11864021994799451
#>     Attrib V17    -0.21306472851362568
#>     Attrib V18    0.17482469007363804
#>     Attrib V19    0.08439312498547041
#>     Attrib V2    0.08990664873953946
#>     Attrib V20    -0.1705627265370089
#>     Attrib V21    -0.11777504316460545
#>     Attrib V22    0.02146982392035154
#>     Attrib V23    -0.0702839904545769
#>     Attrib V24    -0.2655272521448489
#>     Attrib V25    0.15437318172736464
#>     Attrib V26    0.04028470987979332
#>     Attrib V27    0.044477772148599194
#>     Attrib V28    -0.18298229995205295
#>     Attrib V29    -0.007612890181532816
#>     Attrib V3    0.01720481927533939
#>     Attrib V30    -0.2510320667919947
#>     Attrib V31    0.5021575456478872
#>     Attrib V32    -0.16391931895161105
#>     Attrib V33    -0.22592818529625774
#>     Attrib V34    0.0076976902894236926
#>     Attrib V35    0.1439466614587946
#>     Attrib V36    0.36026862186861064
#>     Attrib V37    0.06905319638063583
#>     Attrib V38    -0.2722730681374822
#>     Attrib V39    -0.19205784892313166
#>     Attrib V4    -0.134172533595885
#>     Attrib V40    0.2152910750584519
#>     Attrib V41    -0.20705052956591677
#>     Attrib V42    -0.1844147651323733
#>     Attrib V43    0.04638509576670332
#>     Attrib V44    -0.030928254955308317
#>     Attrib V45    -0.20634103358441275
#>     Attrib V46    -0.25883456476614847
#>     Attrib V47    0.22279328689554118
#>     Attrib V48    -0.04792743382245041
#>     Attrib V49    -0.5621494433366604
#>     Attrib V5    -0.040581213939070195
#>     Attrib V50    0.39349609776046657
#>     Attrib V51    -0.19585366435106338
#>     Attrib V52    -0.08569793826083966
#>     Attrib V53    0.0029354132209653675
#>     Attrib V54    0.08977203295109949
#>     Attrib V55    0.3037540119806524
#>     Attrib V56    0.021996628768406225
#>     Attrib V57    0.06206649080410928
#>     Attrib V58    -0.21943188482597764
#>     Attrib V59    -0.20147422304063525
#>     Attrib V6    0.1339762664321789
#>     Attrib V60    -0.08840586962174488
#>     Attrib V7    0.24740725299770597
#>     Attrib V8    0.18050640507296084
#>     Attrib V9    -0.18887606376771707
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.2551724228002959
#>     Attrib V1    0.0520883783083348
#>     Attrib V10    0.14900011038158925
#>     Attrib V11    0.6330475207572025
#>     Attrib V12    0.6852116744770173
#>     Attrib V13    -0.19518495213493461
#>     Attrib V14    -0.4771416581705767
#>     Attrib V15    -0.21441856789439345
#>     Attrib V16    -0.1814368207041421
#>     Attrib V17    -0.06376112538903067
#>     Attrib V18    -0.33774428493287356
#>     Attrib V19    -0.4160515009789739
#>     Attrib V2    -0.18681223211773879
#>     Attrib V20    -0.08318812851998479
#>     Attrib V21    -0.16800246791487022
#>     Attrib V22    -0.4873322379175242
#>     Attrib V23    -0.16118286934356177
#>     Attrib V24    0.17303152383200418
#>     Attrib V25    -0.17955368371201985
#>     Attrib V26    0.14953882106457506
#>     Attrib V27    0.20218232630628474
#>     Attrib V28    0.38254660174622873
#>     Attrib V29    0.16595261196835315
#>     Attrib V3    -0.0452805488475764
#>     Attrib V30    0.3259853338978776
#>     Attrib V31    -0.7083482073585158
#>     Attrib V32    -0.04011737131730761
#>     Attrib V33    0.1257442359853472
#>     Attrib V34    0.15174044120035476
#>     Attrib V35    0.1097641800201588
#>     Attrib V36    -0.34739434993497653
#>     Attrib V37    -0.10519146723590594
#>     Attrib V38    0.20406317604848304
#>     Attrib V39    0.03568406200146403
#>     Attrib V4    0.21970102738093628
#>     Attrib V40    -0.4275912581848159
#>     Attrib V41    0.07203228929373276
#>     Attrib V42    -0.10592355854482581
#>     Attrib V43    -0.15594628918334885
#>     Attrib V44    -0.04132914544279905
#>     Attrib V45    0.3158707951070488
#>     Attrib V46    0.38237644270767646
#>     Attrib V47    -0.11566146371006263
#>     Attrib V48    0.2432071848260412
#>     Attrib V49    0.7735674842975173
#>     Attrib V5    0.18128019397879255
#>     Attrib V50    -0.19366414425682452
#>     Attrib V51    0.45065928861225674
#>     Attrib V52    0.2572684210374374
#>     Attrib V53    0.2416455912258581
#>     Attrib V54    -0.06209066144083785
#>     Attrib V55    -0.3095878127255498
#>     Attrib V56    -0.23533811899442378
#>     Attrib V57    -0.0378965474677188
#>     Attrib V58    0.36466135295581703
#>     Attrib V59    0.14899910101632022
#>     Attrib V6    -0.007053842056637515
#>     Attrib V60    0.191277400524017
#>     Attrib V7    -0.48376401337346037
#>     Attrib V8    -0.19635733739525765
#>     Attrib V9    0.34574839407805746
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.48932938198687326
#>     Attrib V1    0.07296964455754909
#>     Attrib V10    -0.16441081690710618
#>     Attrib V11    0.613388657033613
#>     Attrib V12    0.5229402415874302
#>     Attrib V13    -0.2488517157951493
#>     Attrib V14    -0.4569758502214606
#>     Attrib V15    -0.01142864398077949
#>     Attrib V16    0.27942231144882346
#>     Attrib V17    0.26832894127294166
#>     Attrib V18    -0.33169590268443644
#>     Attrib V19    -0.07585846226943599
#>     Attrib V2    -0.17142163481090303
#>     Attrib V20    0.28433781363685673
#>     Attrib V21    0.13847212721546492
#>     Attrib V22    -0.08998394898327261
#>     Attrib V23    0.27570006413019554
#>     Attrib V24    0.5460278936788207
#>     Attrib V25    -0.34469585890121757
#>     Attrib V26    -0.1977749743068391
#>     Attrib V27    -0.2145034045798196
#>     Attrib V28    0.22960771580070885
#>     Attrib V29    -0.06653470152405697
#>     Attrib V3    -0.16603168516685865
#>     Attrib V30    0.5293212503764221
#>     Attrib V31    -1.055857469326412
#>     Attrib V32    0.13066329903840132
#>     Attrib V33    0.5372740697336003
#>     Attrib V34    0.010957421287820282
#>     Attrib V35    -0.31834729471690837
#>     Attrib V36    -0.7521506005732634
#>     Attrib V37    -0.5253386341001737
#>     Attrib V38    0.23714316812642272
#>     Attrib V39    0.12967683535100616
#>     Attrib V4    0.25552689156283614
#>     Attrib V40    -0.30507918998697087
#>     Attrib V41    0.4520926450450576
#>     Attrib V42    0.37706029935507884
#>     Attrib V43    -0.1048526283520056
#>     Attrib V44    -0.11635074928557079
#>     Attrib V45    0.22300061573420304
#>     Attrib V46    0.3129107639226501
#>     Attrib V47    -0.5775680810429984
#>     Attrib V48    -0.012054507039609913
#>     Attrib V49    0.9832696065479686
#>     Attrib V5    0.04764973657649527
#>     Attrib V50    -0.6279648654763992
#>     Attrib V51    0.3894207810088441
#>     Attrib V52    0.15049216302684737
#>     Attrib V53    0.14478770354016704
#>     Attrib V54    0.017467297508173853
#>     Attrib V55    -0.6268957876372029
#>     Attrib V56    -0.11473794445267531
#>     Attrib V57    -0.04014456594933647
#>     Attrib V58    0.47433894269863874
#>     Attrib V59    0.5224372459077856
#>     Attrib V6    -0.17369350531066166
#>     Attrib V60    0.2629903100061758
#>     Attrib V7    -0.2976109043234803
#>     Attrib V8    -0.0799224435669627
#>     Attrib V9    0.3274302393033285
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.05056211652514744
#>     Attrib V1    0.0992928420107334
#>     Attrib V10    -0.07841886969987608
#>     Attrib V11    0.1308292495693803
#>     Attrib V12    0.15445308733418164
#>     Attrib V13    0.02645884931515052
#>     Attrib V14    -0.024569373806253694
#>     Attrib V15    0.034713199610918996
#>     Attrib V16    0.03458298042840444
#>     Attrib V17    0.09396714774753395
#>     Attrib V18    -0.06712417215779687
#>     Attrib V19    -0.09353022758489819
#>     Attrib V2    -0.005616660151318688
#>     Attrib V20    0.04844969681836881
#>     Attrib V21    -0.04107921523332022
#>     Attrib V22    -0.2156969660481922
#>     Attrib V23    -0.05786097313213107
#>     Attrib V24    0.08483123258852263
#>     Attrib V25    -0.036782724779694756
#>     Attrib V26    -0.060785918710433845
#>     Attrib V27    -0.015400075416774434
#>     Attrib V28    0.0024427342985259537
#>     Attrib V29    -0.0577033982446966
#>     Attrib V3    0.08508512980376241
#>     Attrib V30    0.019337626332657513
#>     Attrib V31    -0.38159824726983993
#>     Attrib V32    0.01959115393576929
#>     Attrib V33    0.13298059091793527
#>     Attrib V34    0.05747302940381062
#>     Attrib V35    -0.06311834003341305
#>     Attrib V36    -0.1499387576298139
#>     Attrib V37    -0.08410516082461066
#>     Attrib V38    0.09388185578046482
#>     Attrib V39    0.11520948541565408
#>     Attrib V4    0.16005911175563728
#>     Attrib V40    -0.0653369672864248
#>     Attrib V41    0.059752865624339964
#>     Attrib V42    0.0840590199810222
#>     Attrib V43    -0.05686915594840905
#>     Attrib V44    -0.01758640582609343
#>     Attrib V45    0.031954237760749495
#>     Attrib V46    0.11586754037681181
#>     Attrib V47    -0.08043968590752679
#>     Attrib V48    0.04806374504197175
#>     Attrib V49    0.30914126942530784
#>     Attrib V5    0.09446860851859144
#>     Attrib V50    -0.09908158901939311
#>     Attrib V51    0.09789969252088243
#>     Attrib V52    0.05636458776495319
#>     Attrib V53    0.13794883021221704
#>     Attrib V54    0.03858493501698298
#>     Attrib V55    -0.07363605226353835
#>     Attrib V56    0.016713542397685792
#>     Attrib V57    0.11272860829236814
#>     Attrib V58    0.16111576696492014
#>     Attrib V59    0.25716172748567323
#>     Attrib V6    0.0021934988248375675
#>     Attrib V60    0.2395594903634945
#>     Attrib V7    -0.022921287794539072
#>     Attrib V8    -0.12093599574919457
#>     Attrib V9    0.04699283860947614
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.4631017187940857
#>     Attrib V1    0.07934595346726792
#>     Attrib V10    0.23283221088813916
#>     Attrib V11    0.8728083062043069
#>     Attrib V12    0.7962870161333884
#>     Attrib V13    -0.264122153524944
#>     Attrib V14    -0.6451020662615926
#>     Attrib V15    -0.17101274974686
#>     Attrib V16    -0.1259196878787185
#>     Attrib V17    -0.08509947665762614
#>     Attrib V18    -0.4589477475087025
#>     Attrib V19    -0.4369621071951578
#>     Attrib V2    -0.2705577292284952
#>     Attrib V20    -0.1240701910797767
#>     Attrib V21    -0.11832479673351108
#>     Attrib V22    -0.45215370924906795
#>     Attrib V23    -0.019594658184940356
#>     Attrib V24    0.345255227354313
#>     Attrib V25    -0.26755887602971673
#>     Attrib V26    0.13869887620320331
#>     Attrib V27    -0.07025412879876601
#>     Attrib V28    0.05221216038413513
#>     Attrib V29    -0.1311615523579954
#>     Attrib V3    -0.2058599028976256
#>     Attrib V30    0.48082688868640006
#>     Attrib V31    -0.6482004922144979
#>     Attrib V32    0.22790055148619526
#>     Attrib V33    0.34937696550106384
#>     Attrib V34    0.13537443826120135
#>     Attrib V35    -0.043125175197138294
#>     Attrib V36    -0.7276643220321851
#>     Attrib V37    -0.4556862520949871
#>     Attrib V38    -0.09362141992887325
#>     Attrib V39    -0.04223062742637886
#>     Attrib V4    0.2078464979848692
#>     Attrib V40    -0.5028932636631639
#>     Attrib V41    0.2592806984731993
#>     Attrib V42    -0.0992870787252932
#>     Attrib V43    -0.2723100431070261
#>     Attrib V44    -0.1553757306189877
#>     Attrib V45    0.15841033446790045
#>     Attrib V46    0.3810718172125589
#>     Attrib V47    -0.30277550987889773
#>     Attrib V48    0.3136984725970113
#>     Attrib V49    1.138147515338765
#>     Attrib V5    0.09651327889108184
#>     Attrib V50    -0.34286957689934316
#>     Attrib V51    0.5302781041756861
#>     Attrib V52    0.3063892338644228
#>     Attrib V53    0.16258987651738208
#>     Attrib V54    -0.0856908214186628
#>     Attrib V55    -0.3695133986622151
#>     Attrib V56    -0.2979099140081493
#>     Attrib V57    -0.09339965454384225
#>     Attrib V58    0.5871363597070367
#>     Attrib V59    0.3448690313408759
#>     Attrib V6    -0.0352274154020545
#>     Attrib V60    0.2618461778521771
#>     Attrib V7    -0.4307025346324385
#>     Attrib V8    -0.07760114700627387
#>     Attrib V9    0.5020325636356952
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.29166240013589695
#>     Attrib V1    -0.3749196540279031
#>     Attrib V10    0.33817577049568964
#>     Attrib V11    -0.5179825455659544
#>     Attrib V12    -0.3548741860830293
#>     Attrib V13    0.16130340743134786
#>     Attrib V14    0.17182966669543218
#>     Attrib V15    -0.27787441822910997
#>     Attrib V16    -0.5755920119601502
#>     Attrib V17    -0.4817435179229137
#>     Attrib V18    0.3305844316090836
#>     Attrib V19    -0.10396149035338272
#>     Attrib V2    0.033900866921366825
#>     Attrib V20    -0.8348749668508203
#>     Attrib V21    -0.6650522055806019
#>     Attrib V22    -0.2700509786467275
#>     Attrib V23    -0.4814385138928946
#>     Attrib V24    -0.7121762908353664
#>     Attrib V25    0.44756000568904847
#>     Attrib V26    0.5804872580974516
#>     Attrib V27    0.7083506992551496
#>     Attrib V28    0.16072011764238922
#>     Attrib V29    0.41808502430795863
#>     Attrib V3    0.09255304637978677
#>     Attrib V30    -0.5511206262378021
#>     Attrib V31    1.502597933053349
#>     Attrib V32    -0.16236497490211496
#>     Attrib V33    -0.9411477541874262
#>     Attrib V34    0.05528368370273961
#>     Attrib V35    0.6179456338023768
#>     Attrib V36    0.8719553761830257
#>     Attrib V37    0.9503590075642554
#>     Attrib V38    -0.3356800494323735
#>     Attrib V39    -0.27354533718954765
#>     Attrib V4    -0.3750690600673182
#>     Attrib V40    0.20822792103806378
#>     Attrib V41    -0.6550504716596437
#>     Attrib V42    -0.9343736266700008
#>     Attrib V43    0.06812307657637237
#>     Attrib V44    0.08042904254441524
#>     Attrib V45    -0.1857984894610654
#>     Attrib V46    -0.2028840879475921
#>     Attrib V47    0.73600553546337
#>     Attrib V48    0.10417046686739866
#>     Attrib V49    -1.2378920666263502
#>     Attrib V5    0.14034150035251214
#>     Attrib V50    0.6724746907906776
#>     Attrib V51    -0.32107336171254114
#>     Attrib V52    -0.08630320516106378
#>     Attrib V53    0.01957944899675358
#>     Attrib V54    -0.08162638745456711
#>     Attrib V55    0.6253594425778006
#>     Attrib V56    -0.12092038194750977
#>     Attrib V57    -0.2626380638024461
#>     Attrib V58    -0.6695276560659182
#>     Attrib V59    -1.0396365514715729
#>     Attrib V6    0.4101523842479755
#>     Attrib V60    -0.6104673126226976
#>     Attrib V7    0.14268584136306067
#>     Attrib V8    0.010682767758250385
#>     Attrib V9    -0.26627929876849277
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.07481662744779026
#>     Attrib V1    0.09147657726544813
#>     Attrib V10    -0.028217857829708155
#>     Attrib V11    0.08311109508533208
#>     Attrib V12    0.10484866891922508
#>     Attrib V13    0.007562347798374906
#>     Attrib V14    -0.033809375506215864
#>     Attrib V15    0.026834838114929527
#>     Attrib V16    0.09731509952952423
#>     Attrib V17    0.09264665322237264
#>     Attrib V18    -0.019627720107897262
#>     Attrib V19    -0.06059762993460072
#>     Attrib V2    -0.010257023299613031
#>     Attrib V20    -0.04065383707560686
#>     Attrib V21    -0.11340717962962726
#>     Attrib V22    -0.21980631623802105
#>     Attrib V23    -0.16308739478928974
#>     Attrib V24    0.038575004743329776
#>     Attrib V25    -0.05695659689780215
#>     Attrib V26    -0.055390646025192544
#>     Attrib V27    -0.07543953069903672
#>     Attrib V28    0.007132835864777493
#>     Attrib V29    -0.08083072203743996
#>     Attrib V3    0.07019507103886317
#>     Attrib V30    -0.044936853392054936
#>     Attrib V31    -0.27747624588906095
#>     Attrib V32    0.045498048190934344
#>     Attrib V33    0.11171046267922383
#>     Attrib V34    0.0468076387654138
#>     Attrib V35    -0.051909305258221995
#>     Attrib V36    -0.10923420509754149
#>     Attrib V37    -0.044788391575944886
#>     Attrib V38    0.09075195180443223
#>     Attrib V39    0.07689568954328793
#>     Attrib V4    0.14813779286343598
#>     Attrib V40    -0.08126963273824606
#>     Attrib V41    0.037146608652032016
#>     Attrib V42    0.08933433566901545
#>     Attrib V43    -0.025335614180749998
#>     Attrib V44    -0.03791915526188136
#>     Attrib V45    0.06109659589356819
#>     Attrib V46    0.09560240249995215
#>     Attrib V47    -0.06718873507711946
#>     Attrib V48    0.0626745079260673
#>     Attrib V49    0.192229520523777
#>     Attrib V5    0.07053074900791959
#>     Attrib V50    0.011038507307422875
#>     Attrib V51    0.1574082595291411
#>     Attrib V52    0.11297475567756698
#>     Attrib V53    0.17287645743481037
#>     Attrib V54    0.045466198418425315
#>     Attrib V55    0.007392033622492891
#>     Attrib V56    0.053074589543100736
#>     Attrib V57    0.12896575431688262
#>     Attrib V58    0.2035703085072276
#>     Attrib V59    0.15370744302427267
#>     Attrib V6    0.00604141722655721
#>     Attrib V60    0.19773844926423495
#>     Attrib V7    -0.03563242241123491
#>     Attrib V8    -0.09667144078645298
#>     Attrib V9    0.0745312948682636
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.0265167811904533
#>     Attrib V1    0.1262504401173842
#>     Attrib V10    0.028461121399875448
#>     Attrib V11    0.17944322505004115
#>     Attrib V12    0.13547002154479057
#>     Attrib V13    -0.07250480287526692
#>     Attrib V14    -0.07907036537668552
#>     Attrib V15    0.06880060985739525
#>     Attrib V16    0.01936698294957438
#>     Attrib V17    0.027741890480089692
#>     Attrib V18    -0.115219028685753
#>     Attrib V19    -0.11009169062197721
#>     Attrib V2    0.06843614732057642
#>     Attrib V20    -0.03284400295598119
#>     Attrib V21    -0.09433181490740096
#>     Attrib V22    -0.17549309590413814
#>     Attrib V23    -0.16461166193676435
#>     Attrib V24    0.029423043576924237
#>     Attrib V25    -0.1287575773322255
#>     Attrib V26    -0.02776627501409721
#>     Attrib V27    -0.017749860384216536
#>     Attrib V28    0.03613433181359304
#>     Attrib V29    -0.05851658575125004
#>     Attrib V3    0.019164744511066076
#>     Attrib V30    0.06543979637799335
#>     Attrib V31    -0.25983114095128185
#>     Attrib V32    -3.39386047654058E-4
#>     Attrib V33    0.17671264723488345
#>     Attrib V34    -6.567323999474487E-4
#>     Attrib V35    -0.01318443299248943
#>     Attrib V36    -0.15750600010957028
#>     Attrib V37    -0.11132595368576514
#>     Attrib V38    0.12895982935820527
#>     Attrib V39    0.0838634480678946
#>     Attrib V4    0.15175960478829684
#>     Attrib V40    -0.15081786877039932
#>     Attrib V41    0.02396961759032727
#>     Attrib V42    0.007851151252333094
#>     Attrib V43    0.012844192514601782
#>     Attrib V44    0.028553531584571506
#>     Attrib V45    0.1292300905728402
#>     Attrib V46    0.08022627509350312
#>     Attrib V47    -0.13285798884219477
#>     Attrib V48    0.1450550428566484
#>     Attrib V49    0.26907919728742485
#>     Attrib V5    0.06889055438411296
#>     Attrib V50    -0.04135143695109931
#>     Attrib V51    0.13513714048901915
#>     Attrib V52    0.06868504124494375
#>     Attrib V53    0.08420461705708794
#>     Attrib V54    0.027988688376102192
#>     Attrib V55    -0.020401425619940305
#>     Attrib V56    0.015561391608499578
#>     Attrib V57    0.12864909281258993
#>     Attrib V58    0.12872409425877654
#>     Attrib V59    0.14361397073543059
#>     Attrib V6    -0.013902868228299628
#>     Attrib V60    0.18578638706576828
#>     Attrib V7    -0.1264245975828197
#>     Attrib V8    -0.05831322391283852
#>     Attrib V9    0.08807233669168063
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.20596164338525633
#>     Attrib V1    -0.03508963412789187
#>     Attrib V10    0.03553331516111401
#>     Attrib V11    -0.22272226807471568
#>     Attrib V12    -0.2719234129205377
#>     Attrib V13    0.027933665716208898
#>     Attrib V14    0.1826777643243818
#>     Attrib V15    0.006277714818780309
#>     Attrib V16    -0.06481488272377312
#>     Attrib V17    -0.12394610266264344
#>     Attrib V18    0.12837318883890378
#>     Attrib V19    -0.006226502006468254
#>     Attrib V2    0.05305824230059701
#>     Attrib V20    -0.09461640312682312
#>     Attrib V21    -0.052267469373333174
#>     Attrib V22    0.027136395126718036
#>     Attrib V23    -0.020533769197275082
#>     Attrib V24    -0.13154919693429637
#>     Attrib V25    0.1315097468953598
#>     Attrib V26    0.014536742193355197
#>     Attrib V27    0.0034881110502316846
#>     Attrib V28    -0.14962463386219288
#>     Attrib V29    -0.013086301034779667
#>     Attrib V3    0.06200810582027018
#>     Attrib V30    -0.20871339020249488
#>     Attrib V31    0.2350993750695871
#>     Attrib V32    -0.10794874918635589
#>     Attrib V33    -0.15500816003974843
#>     Attrib V34    0.02863911903240581
#>     Attrib V35    0.07868016437237876
#>     Attrib V36    0.2999787018531551
#>     Attrib V37    0.03567134732055745
#>     Attrib V38    -0.21807124273445086
#>     Attrib V39    -0.09667854234117987
#>     Attrib V4    -0.10744535013418191
#>     Attrib V40    0.10253562387345039
#>     Attrib V41    -0.1580888578333901
#>     Attrib V42    -0.07652575044884324
#>     Attrib V43    0.032216473076673295
#>     Attrib V44    0.006860085087735862
#>     Attrib V45    -0.1951502167073575
#>     Attrib V46    -0.16559080486679031
#>     Attrib V47    0.16449470998624172
#>     Attrib V48    -0.04917789774291824
#>     Attrib V49    -0.3488942304809144
#>     Attrib V5    -0.02636102619582064
#>     Attrib V50    0.14726516098119283
#>     Attrib V51    -0.05804107062182558
#>     Attrib V52    -0.048218175014371124
#>     Attrib V53    -0.01160417662171674
#>     Attrib V54    0.0033448418259113934
#>     Attrib V55    0.20349434048772652
#>     Attrib V56    0.04026242585756427
#>     Attrib V57    5.316858294248444E-4
#>     Attrib V58    -0.12834935372310233
#>     Attrib V59    -0.0893652905057459
#>     Attrib V6    0.023791795668979723
#>     Attrib V60    -0.008865804414922476
#>     Attrib V7    0.17162184438114825
#>     Attrib V8    0.14690106994171562
#>     Attrib V9    -0.08897687945574147
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.4714389472670292
#>     Attrib V1    -0.04090263091928037
#>     Attrib V10    0.4222549359505145
#>     Attrib V11    1.1210979555519462
#>     Attrib V12    1.2598175697806628
#>     Attrib V13    -0.041298328265303684
#>     Attrib V14    -0.6848809207953234
#>     Attrib V15    -0.35286690975254503
#>     Attrib V16    -0.4182901729045851
#>     Attrib V17    -0.21593157571342478
#>     Attrib V18    -0.4045271283204467
#>     Attrib V19    -0.37270286892209586
#>     Attrib V2    -0.2793031567368099
#>     Attrib V20    -0.20040338234107294
#>     Attrib V21    -0.13504347531891664
#>     Attrib V22    -0.279963143416036
#>     Attrib V23    0.2618831581542207
#>     Attrib V24    0.5798149846692082
#>     Attrib V25    -0.06769834556885754
#>     Attrib V26    0.5678194798578587
#>     Attrib V27    0.5822388705400005
#>     Attrib V28    0.627579646847868
#>     Attrib V29    0.41998667363542963
#>     Attrib V3    -0.03356698546058121
#>     Attrib V30    0.4669157264872063
#>     Attrib V31    -0.8825146182469278
#>     Attrib V32    -0.24113756315456922
#>     Attrib V33    -0.14802044001835085
#>     Attrib V34    0.12010716243843853
#>     Attrib V35    0.27946776723269834
#>     Attrib V36    -0.568831060007627
#>     Attrib V37    -0.17822756221288744
#>     Attrib V38    0.04667554181508937
#>     Attrib V39    -0.016172983938551128
#>     Attrib V4    0.39770347878692563
#>     Attrib V40    -0.5189100120336829
#>     Attrib V41    0.37210624247518714
#>     Attrib V42    -0.17696250375810965
#>     Attrib V43    -0.11895721336755677
#>     Attrib V44    -0.005753989508768967
#>     Attrib V45    0.4671983777288376
#>     Attrib V46    0.6910481164977014
#>     Attrib V47    -0.1154710522289183
#>     Attrib V48    0.19597852165971266
#>     Attrib V49    1.1752872212379595
#>     Attrib V5    0.45344810260667784
#>     Attrib V50    -0.33365921521547476
#>     Attrib V51    0.692236799848081
#>     Attrib V52    0.6127681417004156
#>     Attrib V53    0.5453257958115926
#>     Attrib V54    -0.13056311873998236
#>     Attrib V55    -0.48605994766054333
#>     Attrib V56    -0.5294576704161351
#>     Attrib V57    -0.3333141735114026
#>     Attrib V58    0.5871231090885253
#>     Attrib V59    0.17543096122995688
#>     Attrib V6    0.18160231077520722
#>     Attrib V60    0.2052943408388364
#>     Attrib V7    -0.6149805891322977
#>     Attrib V8    -0.21681707949356194
#>     Attrib V9    0.6024510292498511
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.39266355479800263
#>     Attrib V1    0.07014010281435316
#>     Attrib V10    0.035519923811529935
#>     Attrib V11    0.6482066690088608
#>     Attrib V12    0.7792275026568553
#>     Attrib V13    -0.14663499832525798
#>     Attrib V14    -0.47659245907811176
#>     Attrib V15    -0.17633448530289647
#>     Attrib V16    -0.07536087182270719
#>     Attrib V17    0.08103843107457763
#>     Attrib V18    -0.22471535506843482
#>     Attrib V19    -0.14537628139156397
#>     Attrib V2    -0.22494721063116754
#>     Attrib V20    0.14524957803314045
#>     Attrib V21    0.08236427805268956
#>     Attrib V22    -0.14835174844979568
#>     Attrib V23    0.2679305150080697
#>     Attrib V24    0.5354627178742815
#>     Attrib V25    -0.10619048892234649
#>     Attrib V26    0.21829470342494695
#>     Attrib V27    0.19847977017538068
#>     Attrib V28    0.4220991032846475
#>     Attrib V29    0.2487859021066148
#>     Attrib V3    -0.11152173425696754
#>     Attrib V30    0.506582673761853
#>     Attrib V31    -0.9017232427925794
#>     Attrib V32    -0.10541941720624974
#>     Attrib V33    0.19425828472789447
#>     Attrib V34    0.05671465472551463
#>     Attrib V35    0.029415656791323505
#>     Attrib V36    -0.41144396457576193
#>     Attrib V37    -0.15230850218908837
#>     Attrib V38    0.24422533097425733
#>     Attrib V39    0.0853271592435578
#>     Attrib V4    0.23343071229193318
#>     Attrib V40    -0.35498138652611644
#>     Attrib V41    0.4180563166662545
#>     Attrib V42    0.14655270644691487
#>     Attrib V43    -0.034989105622155674
#>     Attrib V44    0.04147667068455885
#>     Attrib V45    0.26387880953216886
#>     Attrib V46    0.3382322452589046
#>     Attrib V47    -0.37159465120548374
#>     Attrib V48    0.061913937566925405
#>     Attrib V49    0.8908574131540509
#>     Attrib V5    0.18466776129495027
#>     Attrib V50    -0.4122411861540866
#>     Attrib V51    0.48276567868037934
#>     Attrib V52    0.27144225057009025
#>     Attrib V53    0.26301739709184296
#>     Attrib V54    -0.00999513192310348
#>     Attrib V55    -0.5333194088057204
#>     Attrib V56    -0.24696904522172555
#>     Attrib V57    -0.21315816859108466
#>     Attrib V58    0.3298269310696483
#>     Attrib V59    0.3064349400658108
#>     Attrib V6    -0.08951696556109195
#>     Attrib V60    0.2547453569296289
#>     Attrib V7    -0.5031361130560287
#>     Attrib V8    -0.2963584896500195
#>     Attrib V9    0.34307223832568057
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.22432726652412338
#>     Attrib V1    0.02611624030552024
#>     Attrib V10    0.1693858563051697
#>     Attrib V11    -1.1276927286388276
#>     Attrib V12    -0.9178644398638857
#>     Attrib V13    0.01240952972250059
#>     Attrib V14    0.3589175182772408
#>     Attrib V15    0.041859280440067745
#>     Attrib V16    0.5791478479838534
#>     Attrib V17    0.6846680885678965
#>     Attrib V18    1.1726547497461879
#>     Attrib V19    0.23277246848506333
#>     Attrib V2    0.4141464924362229
#>     Attrib V20    -1.2258577369293238
#>     Attrib V21    -0.9900453465075418
#>     Attrib V22    -0.7676798530068252
#>     Attrib V23    -1.172967587322481
#>     Attrib V24    -1.176289269254312
#>     Attrib V25    0.49550404831448414
#>     Attrib V26    0.5370122172759427
#>     Attrib V27    1.0683058819027826
#>     Attrib V28    0.7038019979710618
#>     Attrib V29    -0.11458008446761639
#>     Attrib V3    0.2458007726185766
#>     Attrib V30    -0.44983868663909726
#>     Attrib V31    2.6403837607704794
#>     Attrib V32    0.898157289697956
#>     Attrib V33    -0.2843246223058648
#>     Attrib V34    0.08159669226147666
#>     Attrib V35    0.2092848949596747
#>     Attrib V36    0.5085141305515043
#>     Attrib V37    0.5839729562814456
#>     Attrib V38    -0.5086347934693867
#>     Attrib V39    -0.013078707571365648
#>     Attrib V4    -0.31028101328814456
#>     Attrib V40    1.0385464904417077
#>     Attrib V41    -0.11647410585256117
#>     Attrib V42    -0.4701263076295496
#>     Attrib V43    0.30699679963736254
#>     Attrib V44    0.38805749126102224
#>     Attrib V45    -0.5144585181584695
#>     Attrib V46    -0.7010485696380518
#>     Attrib V47    0.4028086358201022
#>     Attrib V48    0.2051361537728423
#>     Attrib V49    -1.1809287353814575
#>     Attrib V5    0.41929613731546744
#>     Attrib V50    0.5344804969977118
#>     Attrib V51    -0.820918104908347
#>     Attrib V52    -0.5835475056071942
#>     Attrib V53    -0.3735382213833427
#>     Attrib V54    0.38898795984578194
#>     Attrib V55    0.4943471705248272
#>     Attrib V56    0.25172175455362406
#>     Attrib V57    -0.0670645821453906
#>     Attrib V58    -1.1041897253883577
#>     Attrib V59    -1.5225145744504713
#>     Attrib V6    1.1212563762331864
#>     Attrib V60    -0.4868776292806408
#>     Attrib V7    1.4556790113576457
#>     Attrib V8    0.42162455822973915
#>     Attrib V9    -0.4008469120604005
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.20110392976015654
#>     Attrib V1    0.25571549355692713
#>     Attrib V10    -0.20850198833745284
#>     Attrib V11    0.1813629713235853
#>     Attrib V12    0.17861920466519807
#>     Attrib V13    -0.1891726519027924
#>     Attrib V14    -0.09871187619871405
#>     Attrib V15    0.1502172651963566
#>     Attrib V16    0.38684728805905827
#>     Attrib V17    0.31492964293506304
#>     Attrib V18    -0.12177076579890121
#>     Attrib V19    0.02220524565285496
#>     Attrib V2    -0.006600013503446469
#>     Attrib V20    0.33457795906043547
#>     Attrib V21    0.1511073471263351
#>     Attrib V22    -0.11572402871624807
#>     Attrib V23    0.0028930373009289413
#>     Attrib V24    0.323582389468197
#>     Attrib V25    -0.2721337527698382
#>     Attrib V26    -0.3355512332789972
#>     Attrib V27    -0.4436073821419588
#>     Attrib V28    -0.22230819826433645
#>     Attrib V29    -0.418913484829675
#>     Attrib V3    -0.058342156115057296
#>     Attrib V30    0.11968788451343639
#>     Attrib V31    -0.6520426723876906
#>     Attrib V32    0.14534371714784491
#>     Attrib V33    0.4340935414669164
#>     Attrib V34    -0.00425052325158267
#>     Attrib V35    -0.31455265883084266
#>     Attrib V36    -0.49448195067388023
#>     Attrib V37    -0.45649849983617735
#>     Attrib V38    0.13534083399338417
#>     Attrib V39    0.12357291000652926
#>     Attrib V4    0.21077171065726338
#>     Attrib V40    -0.10183454536671142
#>     Attrib V41    0.18434703646847617
#>     Attrib V42    0.28160161674688244
#>     Attrib V43    -0.05973310089894877
#>     Attrib V44    -0.09737185970822797
#>     Attrib V45    0.021742090371346556
#>     Attrib V46    0.06777793669030033
#>     Attrib V47    -0.4900727978716794
#>     Attrib V48    0.03294072895929452
#>     Attrib V49    0.6466894305535906
#>     Attrib V5    0.018355505994217196
#>     Attrib V50    -0.32124240252716796
#>     Attrib V51    0.1323905467215453
#>     Attrib V52    0.020002039786724712
#>     Attrib V53    0.061162409251268875
#>     Attrib V54    0.19836043212201493
#>     Attrib V55    -0.22366018093622062
#>     Attrib V56    0.14242316640447858
#>     Attrib V57    0.1751544614764257
#>     Attrib V58    0.38872144680196774
#>     Attrib V59    0.5320379507518592
#>     Attrib V6    -0.07096037315301876
#>     Attrib V60    0.38371121564087196
#>     Attrib V7    0.01757134299083308
#>     Attrib V8    -0.11394139725834357
#>     Attrib V9    0.09757286512270405
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.28047417034407696
#>     Attrib V1    0.3339666401100126
#>     Attrib V10    -0.3344350181040916
#>     Attrib V11    0.40265616429428935
#>     Attrib V12    0.37071686142958193
#>     Attrib V13    -0.16082397808264945
#>     Attrib V14    -0.14392524247469898
#>     Attrib V15    0.25321725071137663
#>     Attrib V16    0.47458347343271623
#>     Attrib V17    0.5159917628965066
#>     Attrib V18    -0.19200054948038595
#>     Attrib V19    0.17618831260548665
#>     Attrib V2    -0.0753496532077104
#>     Attrib V20    0.6403582738765933
#>     Attrib V21    0.37369084451948237
#>     Attrib V22    0.13076260862548297
#>     Attrib V23    0.3334992561085412
#>     Attrib V24    0.5223971671126038
#>     Attrib V25    -0.34546936670613354
#>     Attrib V26    -0.35887325490898137
#>     Attrib V27    -0.587277657346498
#>     Attrib V28    -0.1157307421738839
#>     Attrib V29    -0.43843835976495565
#>     Attrib V3    -0.06390573744662285
#>     Attrib V30    0.3692587552461696
#>     Attrib V31    -1.263424277220861
#>     Attrib V32    0.13487586214061006
#>     Attrib V33    0.7629465821534334
#>     Attrib V34    0.018702099357538762
#>     Attrib V35    -0.3518873059377904
#>     Attrib V36    -0.5753150390703391
#>     Attrib V37    -0.6243050774119403
#>     Attrib V38    0.33758053063972243
#>     Attrib V39    0.2725650416775872
#>     Attrib V4    0.3753106410469515
#>     Attrib V40    -0.2233630595818815
#>     Attrib V41    0.4268836743939533
#>     Attrib V42    0.6260749705788626
#>     Attrib V43    -0.05151441980750229
#>     Attrib V44    -0.08603389587100768
#>     Attrib V45    0.19925280717836225
#>     Attrib V46    0.09526136289556433
#>     Attrib V47    -0.6815384871823249
#>     Attrib V48    -0.155979007836861
#>     Attrib V49    0.9919325646985295
#>     Attrib V5    -0.04651547568913794
#>     Attrib V50    -0.5536704772912293
#>     Attrib V51    0.2217061281322026
#>     Attrib V52    0.058346064638563684
#>     Attrib V53    0.033055596948225865
#>     Attrib V54    0.12072087966044481
#>     Attrib V55    -0.4860510039335594
#>     Attrib V56    0.1398871184750694
#>     Attrib V57    0.13922069568599305
#>     Attrib V58    0.4849386317810199
#>     Attrib V59    0.8603653446004359
#>     Attrib V6    -0.28180791361383345
#>     Attrib V60    0.4872987698084393
#>     Attrib V7    -0.1130065652819437
#>     Attrib V8    -0.0894417686998664
#>     Attrib V9    0.20714312760437845
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.3609420921559903
#>     Attrib V1    -0.026968515003496375
#>     Attrib V10    0.08824047146711407
#>     Attrib V11    -0.4583309606322543
#>     Attrib V12    -0.4732105616278974
#>     Attrib V13    0.1879705763528524
#>     Attrib V14    0.5601216849168845
#>     Attrib V15    0.18886533200111133
#>     Attrib V16    -0.1555632227317742
#>     Attrib V17    -0.20049882124417331
#>     Attrib V18    0.20929022153640706
#>     Attrib V19    0.026446930496368096
#>     Attrib V2    0.14795614453617056
#>     Attrib V20    -0.34289098325358947
#>     Attrib V21    -0.27601754265115686
#>     Attrib V22    -0.0961627477725937
#>     Attrib V23    -0.26477883781886624
#>     Attrib V24    -0.468242632464327
#>     Attrib V25    0.3422329911141978
#>     Attrib V26    0.31260520223107247
#>     Attrib V27    0.2565927915888891
#>     Attrib V28    -0.14264214787441432
#>     Attrib V29    0.009183907752342488
#>     Attrib V3    0.06358899855832187
#>     Attrib V30    -0.5560076950372781
#>     Attrib V31    0.673872909738274
#>     Attrib V32    -0.18453149401822902
#>     Attrib V33    -0.5228888411935383
#>     Attrib V34    -0.10267931169226242
#>     Attrib V35    0.13421130337188714
#>     Attrib V36    0.4314057954527749
#>     Attrib V37    -0.043063626086921485
#>     Attrib V38    -0.6358045605146777
#>     Attrib V39    -0.43834129790545534
#>     Attrib V4    -0.1502117449174267
#>     Attrib V40    0.17880393765385252
#>     Attrib V41    -0.4448774666787269
#>     Attrib V42    -0.35949881571795705
#>     Attrib V43    0.10277312295714422
#>     Attrib V44    -0.16780343580934542
#>     Attrib V45    -0.3932523050385889
#>     Attrib V46    -0.292407276030235
#>     Attrib V47    0.5111959249783558
#>     Attrib V48    0.12238491172728373
#>     Attrib V49    -0.7988972647384949
#>     Attrib V5    -0.11286485860071735
#>     Attrib V50    0.6583972663718484
#>     Attrib V51    -0.17858631948102516
#>     Attrib V52    0.008303291424584941
#>     Attrib V53    -0.0439006392979896
#>     Attrib V54    0.18478262511506618
#>     Attrib V55    0.6271338392750603
#>     Attrib V56    0.13036632378482765
#>     Attrib V57    0.23785023029813568
#>     Attrib V58    -0.25801611444598266
#>     Attrib V59    -0.2519916397127457
#>     Attrib V6    0.05064417427214818
#>     Attrib V60    -0.11490153712466729
#>     Attrib V7    0.18837968451951426
#>     Attrib V8    0.20796760388318303
#>     Attrib V9    -0.2322130453963226
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.5271312180554315
#>     Attrib V1    -0.27689513048037373
#>     Attrib V10    0.8803325456904649
#>     Attrib V11    1.6077388446982896
#>     Attrib V12    1.5632646789682012
#>     Attrib V13    0.012857600958481916
#>     Attrib V14    -0.9298894941082902
#>     Attrib V15    -0.6574193193488229
#>     Attrib V16    -0.4333599250614638
#>     Attrib V17    -0.03301612252723758
#>     Attrib V18    -0.0026764948823777505
#>     Attrib V19    -0.15961308992924103
#>     Attrib V2    -0.3673085925574921
#>     Attrib V20    0.06366137516980006
#>     Attrib V21    0.3178518048249315
#>     Attrib V22    0.15582455121835787
#>     Attrib V23    1.2097476684849262
#>     Attrib V24    1.1496765246048348
#>     Attrib V25    0.045095489995312564
#>     Attrib V26    1.1364403819075606
#>     Attrib V27    1.0714318292884852
#>     Attrib V28    1.1170903220644712
#>     Attrib V29    1.2297771124350871
#>     Attrib V3    0.10352258022896052
#>     Attrib V30    0.8414957334232193
#>     Attrib V31    -1.1494340166618255
#>     Attrib V32    -0.6528849980826671
#>     Attrib V33    -0.8591055230356105
#>     Attrib V34    -0.04357671659002585
#>     Attrib V35    0.30103764781758413
#>     Attrib V36    -1.021901279922246
#>     Attrib V37    -0.307329049460818
#>     Attrib V38    -0.24745141161148296
#>     Attrib V39    0.07847689571796929
#>     Attrib V4    0.4917347405999094
#>     Attrib V40    -0.5564702315820265
#>     Attrib V41    0.9699664360556637
#>     Attrib V42    -0.05603758635209445
#>     Attrib V43    0.1517407319205354
#>     Attrib V44    0.5528888348217816
#>     Attrib V45    0.6796244545203461
#>     Attrib V46    1.1226201218909164
#>     Attrib V47    0.1796430100887784
#>     Attrib V48    0.11013316920181104
#>     Attrib V49    1.4636848357601242
#>     Attrib V5    0.9102956520704201
#>     Attrib V50    -0.2678184808680995
#>     Attrib V51    1.3383789510363064
#>     Attrib V52    1.1025794466091707
#>     Attrib V53    1.1305049556736182
#>     Attrib V54    -0.12780544867144253
#>     Attrib V55    -0.7658848397325257
#>     Attrib V56    -0.8205515692700442
#>     Attrib V57    -0.9950979086144951
#>     Attrib V58    0.48340105998881233
#>     Attrib V59    -0.36573537216021584
#>     Attrib V6    0.6947758248311662
#>     Attrib V60    -0.21313000608419527
#>     Attrib V7    -0.5676046902913686
#>     Attrib V8    -0.024135134081494942
#>     Attrib V9    1.0543383974121996
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.20469631344343472
#>     Attrib V1    -0.02347441377273369
#>     Attrib V10    0.021025723104583904
#>     Attrib V11    -0.2510861776622843
#>     Attrib V12    -0.22673168793324006
#>     Attrib V13    0.03297328886437934
#>     Attrib V14    0.24050593880535934
#>     Attrib V15    0.02382172208167026
#>     Attrib V16    -0.06871121331247082
#>     Attrib V17    -0.06826601414318505
#>     Attrib V18    0.050183041988519785
#>     Attrib V19    0.08238393731161253
#>     Attrib V2    0.06342720633484777
#>     Attrib V20    -0.11118436686446632
#>     Attrib V21    -0.07716891171521784
#>     Attrib V22    0.02277082415720075
#>     Attrib V23    -0.03713989707153963
#>     Attrib V24    -0.1349437257753316
#>     Attrib V25    0.13494967045710857
#>     Attrib V26    -0.026227924321527877
#>     Attrib V27    0.011572612525679158
#>     Attrib V28    -0.11035103856351883
#>     Attrib V29    0.02347423547065677
#>     Attrib V3    -0.019142834168389376
#>     Attrib V30    -0.17672722182032233
#>     Attrib V31    0.25647571973136635
#>     Attrib V32    -0.12071382763245629
#>     Attrib V33    -0.13766510557004372
#>     Attrib V34    -0.025529572862590406
#>     Attrib V35    0.1393113968558225
#>     Attrib V36    0.2861694971913548
#>     Attrib V37    0.08954137647309134
#>     Attrib V38    -0.24247458031997574
#>     Attrib V39    -0.1257688778285146
#>     Attrib V4    -0.05384314834811721
#>     Attrib V40    0.11313771285383369
#>     Attrib V41    -0.14362209233458773
#>     Attrib V42    -0.06569547518536964
#>     Attrib V43    0.039782509449466444
#>     Attrib V44    -0.03348007272357975
#>     Attrib V45    -0.1765524872040241
#>     Attrib V46    -0.18643914845189596
#>     Attrib V47    0.10780390775937432
#>     Attrib V48    -0.01781422594993583
#>     Attrib V49    -0.4137705160884749
#>     Attrib V5    -0.08042295825762576
#>     Attrib V50    0.21055665048835517
#>     Attrib V51    -0.14079180132796165
#>     Attrib V52    -0.06777967726438651
#>     Attrib V53    -0.03307077557316732
#>     Attrib V54    0.028622916948178784
#>     Attrib V55    0.19253127356610253
#>     Attrib V56    0.04186405260437615
#>     Attrib V57    0.08645267977530609
#>     Attrib V58    -0.12781580080925425
#>     Attrib V59    -0.10077916419981861
#>     Attrib V6    0.08394830077962863
#>     Attrib V60    0.0029459835994026986
#>     Attrib V7    0.1291239677901523
#>     Attrib V8    0.1489574440145651
#>     Attrib V9    -0.11220989825429042
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.4427801178772668
#>     Attrib V1    0.2588903912985403
#>     Attrib V10    0.5729029946835661
#>     Attrib V11    1.1961794410388233
#>     Attrib V12    1.2022509119741107
#>     Attrib V13    -0.08704626181438149
#>     Attrib V14    -0.8113566488356756
#>     Attrib V15    -0.4456145785819566
#>     Attrib V16    -0.5351087101051674
#>     Attrib V17    -0.3926310669981353
#>     Attrib V18    -0.5081645411166493
#>     Attrib V19    -0.5931667383052237
#>     Attrib V2    -0.14299132317665994
#>     Attrib V20    -0.25714250749790085
#>     Attrib V21    -0.07391650901925997
#>     Attrib V22    -0.40077555547009724
#>     Attrib V23    0.014188091111193723
#>     Attrib V24    0.4139719994257584
#>     Attrib V25    -0.17653680691925822
#>     Attrib V26    0.6239715308639211
#>     Attrib V27    0.553516216261727
#>     Attrib V28    0.5705445383458827
#>     Attrib V29    0.4822924665350914
#>     Attrib V3    0.0591445932633293
#>     Attrib V30    0.49748733270503537
#>     Attrib V31    -0.8966941604685659
#>     Attrib V32    -0.2689828097244902
#>     Attrib V33    -0.2230125389774572
#>     Attrib V34    0.14956085393677684
#>     Attrib V35    0.29881097592577965
#>     Attrib V36    -0.46062580227786365
#>     Attrib V37    0.05608566665109806
#>     Attrib V38    0.21618337442860533
#>     Attrib V39    0.10742824860889633
#>     Attrib V4    0.3487446540305635
#>     Attrib V40    -0.6278201886220162
#>     Attrib V41    0.25216240468636186
#>     Attrib V42    -0.32708962248806844
#>     Attrib V43    -0.1866029119418772
#>     Attrib V44    -0.001259815145293842
#>     Attrib V45    0.48657036013013083
#>     Attrib V46    0.6794382617080168
#>     Attrib V47    -0.03486207573347546
#>     Attrib V48    0.297579952671297
#>     Attrib V49    1.0380525260238107
#>     Attrib V5    0.4126041446849213
#>     Attrib V50    -0.16179811478596534
#>     Attrib V51    0.7262620298044304
#>     Attrib V52    0.5366039142611811
#>     Attrib V53    0.41035322373460215
#>     Attrib V54    -0.1456164690551297
#>     Attrib V55    -0.45314279482231334
#>     Attrib V56    -0.5064048792248741
#>     Attrib V57    -0.22139231764417036
#>     Attrib V58    0.4473103665228249
#>     Attrib V59    0.13709292077753588
#>     Attrib V6    0.20975255853128738
#>     Attrib V60    0.2216953343710753
#>     Attrib V7    -0.6985576541062758
#>     Attrib V8    -0.3168280655328704
#>     Attrib V9    0.6661173664053357
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.24364725915289923
#>     Attrib V1    -0.28435819224751746
#>     Attrib V10    0.18363431447647616
#>     Attrib V11    -0.5690059130143983
#>     Attrib V12    -0.5163374311694299
#>     Attrib V13    0.15399334088834715
#>     Attrib V14    0.2929291461218051
#>     Attrib V15    -0.14958370575716387
#>     Attrib V16    -0.4213222441381648
#>     Attrib V17    -0.48996386274044884
#>     Attrib V18    0.29818007866409285
#>     Attrib V19    -0.14775933664667473
#>     Attrib V2    0.013476244964668264
#>     Attrib V20    -0.7291352939873008
#>     Attrib V21    -0.5292042630058661
#>     Attrib V22    -0.28009429105689015
#>     Attrib V23    -0.47964789092740256
#>     Attrib V24    -0.5902623976210283
#>     Attrib V25    0.36042372391626926
#>     Attrib V26    0.3392746863592114
#>     Attrib V27    0.5471634220111223
#>     Attrib V28    0.003208348192762023
#>     Attrib V29    0.18800163018631214
#>     Attrib V3    0.06097765011527635
#>     Attrib V30    -0.5542863698401149
#>     Attrib V31    1.2521515165325332
#>     Attrib V32    -0.031160333650691745
#>     Attrib V33    -0.7199237742912006
#>     Attrib V34    -0.008415419537120165
#>     Attrib V35    0.4557272137416757
#>     Attrib V36    0.7698496089616329
#>     Attrib V37    0.5982599613161287
#>     Attrib V38    -0.3711977768731241
#>     Attrib V39    -0.263995022943384
#>     Attrib V4    -0.2916072256209186
#>     Attrib V40    0.2443536266855139
#>     Attrib V41    -0.49200907211554723
#>     Attrib V42    -0.6595162204290942
#>     Attrib V43    0.09465086505119366
#>     Attrib V44    0.014404238111693196
#>     Attrib V45    -0.25661444865332766
#>     Attrib V46    -0.313382225700906
#>     Attrib V47    0.5168632552301562
#>     Attrib V48    0.08779686372178215
#>     Attrib V49    -1.0921398990749682
#>     Attrib V5    -0.008974851480161944
#>     Attrib V50    0.6203720847840849
#>     Attrib V51    -0.3998411157564782
#>     Attrib V52    -0.02874255252565366
#>     Attrib V53    -0.012401720951861001
#>     Attrib V54    0.10715516202102479
#>     Attrib V55    0.5534466291721569
#>     Attrib V56    -0.0820023963012875
#>     Attrib V57    -0.0866242361371973
#>     Attrib V58    -0.4883243582298134
#>     Attrib V59    -0.6993694510560637
#>     Attrib V6    0.30936390007409925
#>     Attrib V60    -0.41286945672384034
#>     Attrib V7    0.28047301048407053
#>     Attrib V8    0.16082043959193296
#>     Attrib V9    -0.22831499354583926
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.25881296313148744
#>     Attrib V1    0.048467104213695704
#>     Attrib V10    0.02676193894774701
#>     Attrib V11    0.5547490310757001
#>     Attrib V12    0.5838564632319136
#>     Attrib V13    -0.12560899528952646
#>     Attrib V14    -0.34573261614001977
#>     Attrib V15    -0.1511256830526743
#>     Attrib V16    -0.12898606861924347
#>     Attrib V17    -0.04314102273603804
#>     Attrib V18    -0.29324167828035824
#>     Attrib V19    -0.3420991984296182
#>     Attrib V2    -0.14371682777301983
#>     Attrib V20    -0.02611909529336092
#>     Attrib V21    -0.07866859308863224
#>     Attrib V22    -0.31362375131653886
#>     Attrib V23    -0.0951267133828206
#>     Attrib V24    0.2987982340217364
#>     Attrib V25    -0.03463182087913292
#>     Attrib V26    0.1568176966808863
#>     Attrib V27    0.14270437726392124
#>     Attrib V28    0.28145297232503796
#>     Attrib V29    0.13223724867681264
#>     Attrib V3    0.0023019211159992494
#>     Attrib V30    0.21599048529029757
#>     Attrib V31    -0.5961793104054997
#>     Attrib V32    0.040609358965707575
#>     Attrib V33    0.1937486917477298
#>     Attrib V34    0.11968626735714538
#>     Attrib V35    0.06116977270988147
#>     Attrib V36    -0.32815151938297693
#>     Attrib V37    -0.07716767898267833
#>     Attrib V38    0.1752470441691377
#>     Attrib V39    0.10855020585534533
#>     Attrib V4    0.1594105223899122
#>     Attrib V40    -0.300879017406134
#>     Attrib V41    0.17810843685288028
#>     Attrib V42    -0.02116763587958149
#>     Attrib V43    -0.05127440892923538
#>     Attrib V44    -0.10164287814274532
#>     Attrib V45    0.24489090536488206
#>     Attrib V46    0.31326946663055516
#>     Attrib V47    -0.15956405371475055
#>     Attrib V48    0.13758408999642566
#>     Attrib V49    0.6689698218509498
#>     Attrib V5    0.09045287105662453
#>     Attrib V50    -0.2086561650879829
#>     Attrib V51    0.32809329570064294
#>     Attrib V52    0.2315686908517082
#>     Attrib V53    0.20169898728618188
#>     Attrib V54    -0.08434807749307868
#>     Attrib V55    -0.268477163441207
#>     Attrib V56    -0.16161388491227202
#>     Attrib V57    -0.041187454401959846
#>     Attrib V58    0.25447581670347663
#>     Attrib V59    0.17920647675000573
#>     Attrib V6    -0.02667399880322433
#>     Attrib V60    0.1914208535476135
#>     Attrib V7    -0.39238016223613675
#>     Attrib V8    -0.21658719808544355
#>     Attrib V9    0.23601232571545075
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.17975760561025808
#>     Attrib V1    0.07250938113745835
#>     Attrib V10    0.12026314632572452
#>     Attrib V11    -0.03405837321993194
#>     Attrib V12    -0.042725794797121706
#>     Attrib V13    0.08042125448210496
#>     Attrib V14    0.11011998810818337
#>     Attrib V15    0.08519380600125216
#>     Attrib V16    0.058519023198372176
#>     Attrib V17    0.07274801782236372
#>     Attrib V18    0.04525704616586743
#>     Attrib V19    -0.03509790104950761
#>     Attrib V2    0.11123895026583863
#>     Attrib V20    -0.1388801364602056
#>     Attrib V21    -0.08317446928760659
#>     Attrib V22    -0.03324748001367947
#>     Attrib V23    -0.04455883698871342
#>     Attrib V24    -0.11380830882498158
#>     Attrib V25    0.048584068226865146
#>     Attrib V26    -0.03403624496275744
#>     Attrib V27    -0.08640090466286515
#>     Attrib V28    -0.05749531825776514
#>     Attrib V29    -0.021431885415586247
#>     Attrib V3    0.059702700432613644
#>     Attrib V30    0.010241557296893584
#>     Attrib V31    0.22074674907610245
#>     Attrib V32    -0.04406394319823839
#>     Attrib V33    -0.07276974624502695
#>     Attrib V34    0.006812756263589539
#>     Attrib V35    0.1325516153540307
#>     Attrib V36    0.170612508602071
#>     Attrib V37    0.12756107982039164
#>     Attrib V38    -0.08178431971026377
#>     Attrib V39    0.060148044682236126
#>     Attrib V4    0.0506884044092443
#>     Attrib V40    0.16780865157039498
#>     Attrib V41    0.068941171439746
#>     Attrib V42    0.10732568605655607
#>     Attrib V43    0.05962264751053433
#>     Attrib V44    0.010290890472308826
#>     Attrib V45    -0.037243406703082314
#>     Attrib V46    -0.010743978874159014
#>     Attrib V47    0.09132508703525435
#>     Attrib V48    0.00662203540195131
#>     Attrib V49    -0.21183598314493995
#>     Attrib V5    0.012745201984534861
#>     Attrib V50    0.07149926004297526
#>     Attrib V51    -0.006211975260182871
#>     Attrib V52    0.010716415001057751
#>     Attrib V53    0.02664418781194848
#>     Attrib V54    0.0344116641732153
#>     Attrib V55    0.10960618387946965
#>     Attrib V56    0.11211248837403288
#>     Attrib V57    0.05184194271836719
#>     Attrib V58    0.019442618696178027
#>     Attrib V59    0.02031311470237722
#>     Attrib V6    0.11596446803668359
#>     Attrib V60    0.06012861135586442
#>     Attrib V7    0.10741492336712576
#>     Attrib V8    0.12784640244100312
#>     Attrib V9    0.01450961522148056
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.16176722725276554
#>     Attrib V1    0.23161307418362795
#>     Attrib V10    -0.2382941633290534
#>     Attrib V11    0.21531848227083503
#>     Attrib V12    0.16706043742665966
#>     Attrib V13    -0.08878620431076192
#>     Attrib V14    -0.050938166034379936
#>     Attrib V15    0.2014254295905054
#>     Attrib V16    0.345140110840919
#>     Attrib V17    0.3655060095394406
#>     Attrib V18    -0.04636311267592923
#>     Attrib V19    0.08868647593210023
#>     Attrib V2    0.041551875969268515
#>     Attrib V20    0.39795144246514924
#>     Attrib V21    0.14899315327408638
#>     Attrib V22    -0.020964550102815928
#>     Attrib V23    0.09337697985903742
#>     Attrib V24    0.3163191501095809
#>     Attrib V25    -0.24943170266935163
#>     Attrib V26    -0.24937627488955932
#>     Attrib V27    -0.4247659168732126
#>     Attrib V28    -0.17616823716108912
#>     Attrib V29    -0.4014217444011011
#>     Attrib V3    -0.07422551812351144
#>     Attrib V30    0.11042030327988842
#>     Attrib V31    -0.714578008533011
#>     Attrib V32    0.09437038321783218
#>     Attrib V33    0.49018145961563425
#>     Attrib V34    0.04441171071306856
#>     Attrib V35    -0.23080369899734976
#>     Attrib V36    -0.43000276358203693
#>     Attrib V37    -0.39627730312316334
#>     Attrib V38    0.2426648296492838
#>     Attrib V39    0.15371868456371465
#>     Attrib V4    0.23386870218500708
#>     Attrib V40    -0.11981845058415592
#>     Attrib V41    0.20312838755802867
#>     Attrib V42    0.33101000997045027
#>     Attrib V43    -0.030314679814981715
#>     Attrib V44    -0.01473822239567851
#>     Attrib V45    0.07825097069402924
#>     Attrib V46    0.039990167299178814
#>     Attrib V47    -0.4580474366294138
#>     Attrib V48    -0.020573910569029914
#>     Attrib V49    0.6108045101654332
#>     Attrib V5    -0.015427515217994877
#>     Attrib V50    -0.3295943224313589
#>     Attrib V51    0.11185526980470155
#>     Attrib V52    0.011509913085231041
#>     Attrib V53    0.1044033010659027
#>     Attrib V54    0.2171016598771424
#>     Attrib V55    -0.21436197291699588
#>     Attrib V56    0.07316016646911748
#>     Attrib V57    0.13629472220754318
#>     Attrib V58    0.2839869753878717
#>     Attrib V59    0.523379503551574
#>     Attrib V6    -0.12271280766366165
#>     Attrib V60    0.35597286778120707
#>     Attrib V7    -0.026385302798746794
#>     Attrib V8    -0.07215746287829998
#>     Attrib V9    0.11715788232111853
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.17497126187978573
#>     Attrib V1    0.1543158754534872
#>     Attrib V10    -0.18219530580693155
#>     Attrib V11    0.21328689958445296
#>     Attrib V12    0.20273141791549598
#>     Attrib V13    -0.1789336062401507
#>     Attrib V14    -0.11576100747646699
#>     Attrib V15    0.10606563539064708
#>     Attrib V16    0.2330310357334496
#>     Attrib V17    0.17592079370694236
#>     Attrib V18    -0.08138238969161192
#>     Attrib V19    -0.08432418289586247
#>     Attrib V2    -0.0833320097874241
#>     Attrib V20    0.20789698243865537
#>     Attrib V21    0.10005452466185331
#>     Attrib V22    -0.1554726534818077
#>     Attrib V23    0.014582176228971257
#>     Attrib V24    0.173285577463024
#>     Attrib V25    -0.29221531399972767
#>     Attrib V26    -0.20526098784428282
#>     Attrib V27    -0.22125676739179512
#>     Attrib V28    0.06600242169105329
#>     Attrib V29    -0.1454293828783139
#>     Attrib V3    -0.01190832828053918
#>     Attrib V30    0.21398253114587865
#>     Attrib V31    -0.6593319709855949
#>     Attrib V32    0.03876161718859307
#>     Attrib V33    0.3176163382824511
#>     Attrib V34    -0.013158752416706835
#>     Attrib V35    -0.20599281674413508
#>     Attrib V36    -0.3502207736376888
#>     Attrib V37    -0.3051809179332057
#>     Attrib V38    0.11988572528613191
#>     Attrib V39    0.13598820272067177
#>     Attrib V4    0.15112205628970882
#>     Attrib V40    -0.20294461088923968
#>     Attrib V41    0.10315098074211519
#>     Attrib V42    0.20525690335748073
#>     Attrib V43    -0.13260932869319111
#>     Attrib V44    -0.006969118502345101
#>     Attrib V45    0.18367560413279485
#>     Attrib V46    0.12695565822399588
#>     Attrib V47    -0.33944531584957066
#>     Attrib V48    -0.016490141364198876
#>     Attrib V49    0.5731729094432544
#>     Attrib V5    0.02748497277311777
#>     Attrib V50    -0.3076926527321378
#>     Attrib V51    0.16690153670007526
#>     Attrib V52    0.07776629576812588
#>     Attrib V53    0.09199745727334455
#>     Attrib V54    0.018040445713225873
#>     Attrib V55    -0.2763139688498072
#>     Attrib V56    -0.010116983950040239
#>     Attrib V57    0.0472717562958043
#>     Attrib V58    0.33201919887252523
#>     Attrib V59    0.3257601536798999
#>     Attrib V6    -0.05206290585105174
#>     Attrib V60    0.241691155113232
#>     Attrib V7    -0.08433731980784756
#>     Attrib V8    -0.06017078185939767
#>     Attrib V9    0.1357927503453164
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
#>  0.1594203 
```
