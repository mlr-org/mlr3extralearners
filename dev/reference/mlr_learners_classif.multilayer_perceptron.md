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
#>     Threshold    -0.01864819748375245
#>     Node 2    1.875495255663291
#>     Node 3    1.4312715671723997
#>     Node 4    0.9854557222608055
#>     Node 5    -0.8052792582309537
#>     Node 6    1.6967931975797514
#>     Node 7    2.201033140392765
#>     Node 8    1.3372794689031708
#>     Node 9    3.613282737609896
#>     Node 10    -3.1740587246334413
#>     Node 11    1.4443626217017704
#>     Node 12    1.4984211274121244
#>     Node 13    0.39332899101854485
#>     Node 14    1.4769044712398924
#>     Node 15    -1.7201257555001943
#>     Node 16    1.3898996918621653
#>     Node 17    0.7155274926500697
#>     Node 18    -0.8205950438344836
#>     Node 19    1.7760078648468314
#>     Node 20    1.7414764577834694
#>     Node 21    -3.391562638279792
#>     Node 22    1.3802335482491301
#>     Node 23    1.6912504657226162
#>     Node 24    -1.6389049230127861
#>     Node 25    2.740720658077877
#>     Node 26    -0.49802864850175577
#>     Node 27    1.7097115737119593
#>     Node 28    -2.3018868230130805
#>     Node 29    1.3750449463330439
#>     Node 30    -0.5309590066316625
#>     Node 31    1.9786746793366765
#>     Node 32    1.2671828416497668
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.03730893873743694
#>     Node 2    -1.919361310645541
#>     Node 3    -1.4095554468309688
#>     Node 4    -0.9491766994655036
#>     Node 5    0.8061577054014477
#>     Node 6    -1.664283345055023
#>     Node 7    -2.207597762375762
#>     Node 8    -1.372882065036808
#>     Node 9    -3.619724845117208
#>     Node 10    3.134627080398195
#>     Node 11    -1.403883573039067
#>     Node 12    -1.5633564828574404
#>     Node 13    -0.34838405615094203
#>     Node 14    -1.4101014856385314
#>     Node 15    1.7020473994530076
#>     Node 16    -1.4081519634144923
#>     Node 17    -0.6911418205646438
#>     Node 18    0.8559496698808213
#>     Node 19    -1.7514484378620778
#>     Node 20    -1.7118682040845365
#>     Node 21    3.4585355929144956
#>     Node 22    -1.4351813020333088
#>     Node 23    -1.736151613498677
#>     Node 24    1.621228733109439
#>     Node 25    -2.7343280189098675
#>     Node 26    0.4065439166771914
#>     Node 27    -1.7379852476292295
#>     Node 28    2.2641005060814527
#>     Node 29    -1.3959978673681863
#>     Node 30    0.5999201398444007
#>     Node 31    -1.9155455352667594
#>     Node 32    -1.28593693315376
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.23802995223673873
#>     Attrib V1    0.5257682088903961
#>     Attrib V10    0.06598132404427134
#>     Attrib V11    -0.3291138682346345
#>     Attrib V12    -0.17129413183815465
#>     Attrib V13    0.2735797777554453
#>     Attrib V14    0.010349101605315299
#>     Attrib V15    0.07113356530019867
#>     Attrib V16    -0.07028482432283706
#>     Attrib V17    0.17144105335654808
#>     Attrib V18    0.37571110984955614
#>     Attrib V19    0.4206667304479884
#>     Attrib V2    0.042761045320885684
#>     Attrib V20    0.5737250561723425
#>     Attrib V21    0.6356113153550963
#>     Attrib V22    0.3877774423201908
#>     Attrib V23    0.18000756012646774
#>     Attrib V24    0.32645431528162855
#>     Attrib V25    -0.3429262166945795
#>     Attrib V26    -0.8491739898166571
#>     Attrib V27    -0.8264097372115647
#>     Attrib V28    -0.09546031226608999
#>     Attrib V29    -0.19570902374651325
#>     Attrib V3    0.04219826030565666
#>     Attrib V30    -0.24353092868592763
#>     Attrib V31    -0.8938980783123127
#>     Attrib V32    -0.1853381154615241
#>     Attrib V33    0.7215345742493442
#>     Attrib V34    0.18569620486840235
#>     Attrib V35    -0.17786560750975908
#>     Attrib V36    -0.3553686665134312
#>     Attrib V37    -0.32925336771184543
#>     Attrib V38    0.7851120507224418
#>     Attrib V39    0.31299113135040324
#>     Attrib V4    0.23306705630437316
#>     Attrib V40    -0.3120861024448433
#>     Attrib V41    -0.05000849310999017
#>     Attrib V42    0.23599744321077032
#>     Attrib V43    0.09281743996481838
#>     Attrib V44    -0.03798205412915805
#>     Attrib V45    0.2146450228783493
#>     Attrib V46    0.15562019293180324
#>     Attrib V47    -0.349249123025752
#>     Attrib V48    -0.16669689281918465
#>     Attrib V49    0.09711616327516567
#>     Attrib V5    0.32037942450285484
#>     Attrib V50    -0.09339251566273137
#>     Attrib V51    0.26357146793109887
#>     Attrib V52    0.0017526835302267166
#>     Attrib V53    0.060084027900967965
#>     Attrib V54    0.342686497793813
#>     Attrib V55    -0.23769067353149356
#>     Attrib V56    0.30102477811813144
#>     Attrib V57    -0.18249419310715628
#>     Attrib V58    0.4265685388383959
#>     Attrib V59    0.9667135755164972
#>     Attrib V6    -0.18671048721302147
#>     Attrib V60    0.7636901249829184
#>     Attrib V7    0.2432258576975655
#>     Attrib V8    -0.18457545900358524
#>     Attrib V9    0.19945337158251758
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.2006430861280893
#>     Attrib V1    0.3679916157960301
#>     Attrib V10    0.05326005852460769
#>     Attrib V11    -0.2430962895677678
#>     Attrib V12    -0.06333772747673405
#>     Attrib V13    0.24146598178742093
#>     Attrib V14    -0.0030253018089745486
#>     Attrib V15    0.10605574752195726
#>     Attrib V16    -0.08453563008188918
#>     Attrib V17    0.1256528857482984
#>     Attrib V18    0.25388834272468425
#>     Attrib V19    0.34613632135651173
#>     Attrib V2    0.0707462895913027
#>     Attrib V20    0.3779158340436741
#>     Attrib V21    0.3708109489435412
#>     Attrib V22    0.255246289183787
#>     Attrib V23    0.0701189823581169
#>     Attrib V24    0.20891971011135715
#>     Attrib V25    -0.24848743451094057
#>     Attrib V26    -0.6570198028335011
#>     Attrib V27    -0.6856395308557787
#>     Attrib V28    -0.18282513129882
#>     Attrib V29    -0.30525799711852153
#>     Attrib V3    0.028671678026535932
#>     Attrib V30    -0.22451607379252358
#>     Attrib V31    -0.6645961973642875
#>     Attrib V32    -0.1323355160567465
#>     Attrib V33    0.5771256895621631
#>     Attrib V34    0.11278556799781111
#>     Attrib V35    -0.0910384193992733
#>     Attrib V36    -0.2389074738913672
#>     Attrib V37    -0.23335707802009195
#>     Attrib V38    0.548571458746972
#>     Attrib V39    0.25993563864586683
#>     Attrib V4    0.19010692003481328
#>     Attrib V40    -0.23757086780130787
#>     Attrib V41    -0.07381720165282943
#>     Attrib V42    0.13005592555325043
#>     Attrib V43    0.047290680937224695
#>     Attrib V44    -0.03789317918685156
#>     Attrib V45    0.15082836585532447
#>     Attrib V46    0.11729251878880272
#>     Attrib V47    -0.2321321583490125
#>     Attrib V48    -0.1402186963133487
#>     Attrib V49    0.08150821131657254
#>     Attrib V5    0.22462768118239534
#>     Attrib V50    -0.053285471732766036
#>     Attrib V51    0.18574780340228375
#>     Attrib V52    0.015851485710968616
#>     Attrib V53    0.01440163462163245
#>     Attrib V54    0.39477927322960304
#>     Attrib V55    -0.04036797742822595
#>     Attrib V56    0.25740546393337066
#>     Attrib V57    -0.0938776753008207
#>     Attrib V58    0.3722287024020829
#>     Attrib V59    0.7243646879591139
#>     Attrib V6    -0.14087526725401356
#>     Attrib V60    0.5634434527774326
#>     Attrib V7    0.1456363043412565
#>     Attrib V8    -0.1706773217087714
#>     Attrib V9    0.11138948068521855
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.058404718907037065
#>     Attrib V1    0.22282532681108652
#>     Attrib V10    0.04250949452905775
#>     Attrib V11    -0.10673244086610581
#>     Attrib V12    0.0028617756444528786
#>     Attrib V13    0.16038997572369876
#>     Attrib V14    0.059700898372386915
#>     Attrib V15    0.11068806907283649
#>     Attrib V16    -0.055809899652970764
#>     Attrib V17    0.08061196677158972
#>     Attrib V18    0.13581771098611822
#>     Attrib V19    0.12823776664422212
#>     Attrib V2    0.03478721916197433
#>     Attrib V20    0.14048558636444636
#>     Attrib V21    0.14969294643965364
#>     Attrib V22    -0.07108109663635416
#>     Attrib V23    -0.15608205293741018
#>     Attrib V24    -0.044866031165251806
#>     Attrib V25    -0.3219139890622686
#>     Attrib V26    -0.46961880350813173
#>     Attrib V27    -0.48503391162329584
#>     Attrib V28    -0.1433301268955041
#>     Attrib V29    -0.15961345842860897
#>     Attrib V3    0.07852587899247744
#>     Attrib V30    -0.2130038243531899
#>     Attrib V31    -0.411214986886184
#>     Attrib V32    -0.06562998238670593
#>     Attrib V33    0.37519420071751775
#>     Attrib V34    0.14964683923748393
#>     Attrib V35    0.02554627379584355
#>     Attrib V36    -0.06489770369799551
#>     Attrib V37    -0.0446136287205869
#>     Attrib V38    0.3762176970064572
#>     Attrib V39    0.20342200329687155
#>     Attrib V4    0.14130276717405127
#>     Attrib V40    -0.1352622506221192
#>     Attrib V41    -0.09796655744488324
#>     Attrib V42    0.03910611286715634
#>     Attrib V43    -0.02320163474228948
#>     Attrib V44    -0.04855723953696024
#>     Attrib V45    0.1342925560537608
#>     Attrib V46    0.06200466581292462
#>     Attrib V47    -0.16502355418589748
#>     Attrib V48    0.006905163034492664
#>     Attrib V49    0.13040109013316112
#>     Attrib V5    0.20491643825287081
#>     Attrib V50    0.03425810557967882
#>     Attrib V51    0.2057997822071414
#>     Attrib V52    0.025425603316838016
#>     Attrib V53    0.07731469293674723
#>     Attrib V54    0.20173995677544004
#>     Attrib V55    0.0439281599702567
#>     Attrib V56    0.17453225234854133
#>     Attrib V57    2.339345023046359E-4
#>     Attrib V58    0.21103535236329315
#>     Attrib V59    0.44268406332842325
#>     Attrib V6    -0.06443935669511312
#>     Attrib V60    0.3881026648967483
#>     Attrib V7    0.13388562074872165
#>     Attrib V8    -0.18213624175221635
#>     Attrib V9    0.0980488652278781
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.29262701631419585
#>     Attrib V1    0.011403600590152144
#>     Attrib V10    -0.2299848429160411
#>     Attrib V11    -0.1371499274755729
#>     Attrib V12    -0.3477462432785367
#>     Attrib V13    -0.3285441831545979
#>     Attrib V14    0.15769977179579586
#>     Attrib V15    0.18535648666699592
#>     Attrib V16    0.2180590727856062
#>     Attrib V17    0.20141081372092812
#>     Attrib V18    0.03359637535724966
#>     Attrib V19    0.03377580633975042
#>     Attrib V2    0.12106570556601627
#>     Attrib V20    0.03676824080295787
#>     Attrib V21    0.006031447168993071
#>     Attrib V22    0.04143669362574877
#>     Attrib V23    0.0403543680267076
#>     Attrib V24    -0.3176236785554144
#>     Attrib V25    -0.02800753522890159
#>     Attrib V26    0.08831297203432047
#>     Attrib V27    0.022296954379330842
#>     Attrib V28    -0.33973519713113076
#>     Attrib V29    -0.12209065047439963
#>     Attrib V3    0.15443760171428073
#>     Attrib V30    -0.01846706151527888
#>     Attrib V31    0.3386559936873983
#>     Attrib V32    0.03517657282029814
#>     Attrib V33    -0.34449430789022395
#>     Attrib V34    0.023995050225763134
#>     Attrib V35    0.21640418679465034
#>     Attrib V36    0.32106640470973696
#>     Attrib V37    0.1666529886000845
#>     Attrib V38    -0.28301654827293093
#>     Attrib V39    -0.06776729704550956
#>     Attrib V4    -0.08696261685992364
#>     Attrib V40    0.3014430430825668
#>     Attrib V41    -0.019199389856342213
#>     Attrib V42    -0.14960660113816285
#>     Attrib V43    -0.1746051475896729
#>     Attrib V44    0.03645170217010418
#>     Attrib V45    -0.08506332964549179
#>     Attrib V46    -0.22220648851723251
#>     Attrib V47    0.013466021460792853
#>     Attrib V48    -0.007652715022094701
#>     Attrib V49    -0.20980362103319727
#>     Attrib V5    -0.19616838698355935
#>     Attrib V50    0.24722309272017245
#>     Attrib V51    -0.2991688621308973
#>     Attrib V52    0.017652693204391407
#>     Attrib V53    0.008231514677776152
#>     Attrib V54    -0.32513379454909674
#>     Attrib V55    0.18938528208226837
#>     Attrib V56    0.06583634732204059
#>     Attrib V57    0.21634361060185095
#>     Attrib V58    -0.19345405005914956
#>     Attrib V59    -0.2024229348639001
#>     Attrib V6    -0.07852816323786022
#>     Attrib V60    -0.11651494949779813
#>     Attrib V7    -0.10408259533021293
#>     Attrib V8    0.08510361814584157
#>     Attrib V9    -0.31839610252726586
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.257427777628476
#>     Attrib V1    0.4626950901002005
#>     Attrib V10    0.025745551239381707
#>     Attrib V11    -0.30353986737392
#>     Attrib V12    -0.12659982249943785
#>     Attrib V13    0.1889241864280161
#>     Attrib V14    -0.05291455764943854
#>     Attrib V15    0.048563539201919595
#>     Attrib V16    -0.015330865758350265
#>     Attrib V17    0.12525941096293614
#>     Attrib V18    0.35055562936758083
#>     Attrib V19    0.37747739314222856
#>     Attrib V2    0.05344670483703263
#>     Attrib V20    0.493766148205697
#>     Attrib V21    0.5634117910480708
#>     Attrib V22    0.3524017052389915
#>     Attrib V23    0.17631042054041157
#>     Attrib V24    0.3367094244322116
#>     Attrib V25    -0.2537280469308232
#>     Attrib V26    -0.753258280937252
#>     Attrib V27    -0.725054457518881
#>     Attrib V28    -0.1762197454397452
#>     Attrib V29    -0.25920632885744305
#>     Attrib V3    0.021628668847392122
#>     Attrib V30    -0.24410745933528252
#>     Attrib V31    -0.7474704170883294
#>     Attrib V32    -0.14334973553830008
#>     Attrib V33    0.6849704731565579
#>     Attrib V34    0.1547544055766827
#>     Attrib V35    -0.12182191930064368
#>     Attrib V36    -0.34891116914316217
#>     Attrib V37    -0.31155226449639234
#>     Attrib V38    0.6413719822883649
#>     Attrib V39    0.24803813928066706
#>     Attrib V4    0.2560429355394738
#>     Attrib V40    -0.3297903425935828
#>     Attrib V41    -0.05384676915642252
#>     Attrib V42    0.17512381928134513
#>     Attrib V43    0.055790923887904735
#>     Attrib V44    -0.04985545936114894
#>     Attrib V45    0.21114888784558103
#>     Attrib V46    0.17404413740656027
#>     Attrib V47    -0.31117083579167887
#>     Attrib V48    -0.1852791054111865
#>     Attrib V49    0.09824949584360473
#>     Attrib V5    0.27293118913969217
#>     Attrib V50    -0.03478098546222001
#>     Attrib V51    0.23508640690747526
#>     Attrib V52    -0.04896798516767116
#>     Attrib V53    0.09817144237007101
#>     Attrib V54    0.3116837989993609
#>     Attrib V55    -0.2153484325125562
#>     Attrib V56    0.29546467719200414
#>     Attrib V57    -0.11861479378223118
#>     Attrib V58    0.4273067139635829
#>     Attrib V59    0.8614255207799536
#>     Attrib V6    -0.093619871059934
#>     Attrib V60    0.7237342286647753
#>     Attrib V7    0.24372600415447918
#>     Attrib V8    -0.1575517200608283
#>     Attrib V9    0.24689026284736826
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.3490009385680006
#>     Attrib V1    0.03911171376639057
#>     Attrib V10    1.0632439297690908
#>     Attrib V11    0.8011592125940469
#>     Attrib V12    0.4490188327342652
#>     Attrib V13    0.29580640866460994
#>     Attrib V14    -0.5951653409103929
#>     Attrib V15    -0.5184437641814246
#>     Attrib V16    -0.5227543970998191
#>     Attrib V17    -0.3815546027346782
#>     Attrib V18    -0.2252517425134274
#>     Attrib V19    -0.27266084066954194
#>     Attrib V2    0.11801704971987413
#>     Attrib V20    -0.1617181521051946
#>     Attrib V21    0.19956771198324488
#>     Attrib V22    0.11910173938715699
#>     Attrib V23    0.11343531053614107
#>     Attrib V24    0.5054125709257957
#>     Attrib V25    0.18602803229390602
#>     Attrib V26    0.12661955475982412
#>     Attrib V27    0.19110901342451875
#>     Attrib V28    0.8319568030570073
#>     Attrib V29    0.5278473841071493
#>     Attrib V3    -0.05468394538939691
#>     Attrib V30    0.30510304707228125
#>     Attrib V31    -0.5763469774506853
#>     Attrib V32    0.04796459596274231
#>     Attrib V33    0.5717468875105658
#>     Attrib V34    -0.1792822248605228
#>     Attrib V35    -0.14085502377597514
#>     Attrib V36    -0.36788435367431865
#>     Attrib V37    -0.0805202983146528
#>     Attrib V38    0.23479174317639698
#>     Attrib V39    -0.15186803996438666
#>     Attrib V4    0.16102404120293862
#>     Attrib V40    -0.5609015744056473
#>     Attrib V41    -0.04764802699445919
#>     Attrib V42    0.1380084392138375
#>     Attrib V43    0.27057676541601106
#>     Attrib V44    0.09018619072530257
#>     Attrib V45    0.37161592246205866
#>     Attrib V46    0.7950267981057911
#>     Attrib V47    0.5019061380091656
#>     Attrib V48    0.39014586626214875
#>     Attrib V49    0.7742061608309844
#>     Attrib V5    0.6367757891808927
#>     Attrib V50    -0.1934399442928286
#>     Attrib V51    0.9013112891552366
#>     Attrib V52    0.24551807602713172
#>     Attrib V53    -0.11903450590308338
#>     Attrib V54    0.3919458947008336
#>     Attrib V55    -0.5233988831362132
#>     Attrib V56    -0.6337071721445295
#>     Attrib V57    -0.7962675296351979
#>     Attrib V58    0.30196067241615737
#>     Attrib V59    -0.2926258809014234
#>     Attrib V6    0.5163960508786068
#>     Attrib V60    -0.2879322454640486
#>     Attrib V7    0.2182362376236762
#>     Attrib V8    0.08492355766431574
#>     Attrib V9    1.1017552082264446
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.4848053947628395
#>     Attrib V1    -0.0040944740133354845
#>     Attrib V10    0.42693686369539646
#>     Attrib V11    0.1556506171154878
#>     Attrib V12    0.2363166669099759
#>     Attrib V13    0.2941789119006071
#>     Attrib V14    -0.39265273959753494
#>     Attrib V15    -0.2643368716270805
#>     Attrib V16    -0.3020925112773498
#>     Attrib V17    -0.1478023150674587
#>     Attrib V18    0.004693926751410887
#>     Attrib V19    0.024611492595883525
#>     Attrib V2    -0.09735102110770838
#>     Attrib V20    -0.06401500313336622
#>     Attrib V21    0.10378858867684647
#>     Attrib V22    -0.029007862324216385
#>     Attrib V23    -0.07794592989638088
#>     Attrib V24    0.32758983798004354
#>     Attrib V25    -0.021521828953293104
#>     Attrib V26    -0.263253938480977
#>     Attrib V27    -0.16318816536894
#>     Attrib V28    0.4272252343576084
#>     Attrib V29    0.14136305982517586
#>     Attrib V3    -0.17819284121915774
#>     Attrib V30    0.09785103695726131
#>     Attrib V31    -0.4762859875408813
#>     Attrib V32    0.07130929435387917
#>     Attrib V33    0.6340199504403432
#>     Attrib V34    0.0253230485936392
#>     Attrib V35    -0.13782720651634328
#>     Attrib V36    -0.2632615112301945
#>     Attrib V37    -0.14189798943067328
#>     Attrib V38    0.496931087775137
#>     Attrib V39    0.07175819942777734
#>     Attrib V4    0.10489317959407936
#>     Attrib V40    -0.4509294817418339
#>     Attrib V41    -0.10505700128873673
#>     Attrib V42    0.06807697666481068
#>     Attrib V43    0.12247046347553839
#>     Attrib V44    0.013391975430990301
#>     Attrib V45    0.19640359422319764
#>     Attrib V46    0.33364301917675976
#>     Attrib V47    0.01835512246077511
#>     Attrib V48    0.1136318955478925
#>     Attrib V49    0.3209735088223577
#>     Attrib V5    0.34639524594643184
#>     Attrib V50    -0.27271809117290896
#>     Attrib V51    0.37843887266264575
#>     Attrib V52    0.02953796007006314
#>     Attrib V53    -0.019316837108923568
#>     Attrib V54    0.3193957744871061
#>     Attrib V55    -0.4481440309867059
#>     Attrib V56    -0.15246121079695782
#>     Attrib V57    -0.4201567823510409
#>     Attrib V58    0.15523599976669708
#>     Attrib V59    0.20370439350808525
#>     Attrib V6    0.1313906408865457
#>     Attrib V60    0.19473514092687547
#>     Attrib V7    0.19147107776108482
#>     Attrib V8    -0.21250270602124596
#>     Attrib V9    0.45412049004676797
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.015330893592217076
#>     Attrib V1    -0.5699283278542466
#>     Attrib V10    1.4794150007756346
#>     Attrib V11    1.0013423701831863
#>     Attrib V12    0.7659544704118577
#>     Attrib V13    0.6295255481074964
#>     Attrib V14    -1.0235955429764831
#>     Attrib V15    -0.9831869493762079
#>     Attrib V16    -0.6869618073454271
#>     Attrib V17    -0.2799622364949989
#>     Attrib V18    0.08591853227545587
#>     Attrib V19    0.15240852959845508
#>     Attrib V2    0.12157015238435846
#>     Attrib V20    -0.015996034770863508
#>     Attrib V21    0.3525854393685405
#>     Attrib V22    0.7844612116164315
#>     Attrib V23    1.0928966601484575
#>     Attrib V24    1.3999887465874998
#>     Attrib V25    0.8487755607741281
#>     Attrib V26    0.35682301677396705
#>     Attrib V27    0.5426470320837217
#>     Attrib V28    1.4114203055593844
#>     Attrib V29    0.4673809110387425
#>     Attrib V3    -0.0543650517360047
#>     Attrib V30    0.386701774567605
#>     Attrib V31    -0.8114727762136159
#>     Attrib V32    -0.10099643432218017
#>     Attrib V33    0.6162182182527661
#>     Attrib V34    -0.4692274304019006
#>     Attrib V35    -0.3038113867166174
#>     Attrib V36    -0.7341189827007052
#>     Attrib V37    -0.5346029597969425
#>     Attrib V38    -0.15499882171641077
#>     Attrib V39    -0.44404106082486566
#>     Attrib V4    0.45590864590480606
#>     Attrib V40    -0.782732854755322
#>     Attrib V41    0.3505033091200625
#>     Attrib V42    0.5988887351787316
#>     Attrib V43    0.9259914174153122
#>     Attrib V44    0.5520152731402483
#>     Attrib V45    0.46334741431663945
#>     Attrib V46    0.9414611176502462
#>     Attrib V47    0.7105846657820281
#>     Attrib V48    0.208294081243531
#>     Attrib V49    1.0370614446413366
#>     Attrib V5    1.393903166979933
#>     Attrib V50    -0.3598755054383443
#>     Attrib V51    1.430023845968045
#>     Attrib V52    0.44153559035581685
#>     Attrib V53    0.21200671219721384
#>     Attrib V54    0.5707234879858155
#>     Attrib V55    -1.022495616140211
#>     Attrib V56    -0.7683076352953602
#>     Attrib V57    -1.4505882423351772
#>     Attrib V58    0.5395838317019789
#>     Attrib V59    -0.41371503525452386
#>     Attrib V6    0.8650166593792471
#>     Attrib V60    -0.4244677980193664
#>     Attrib V7    0.1424953772789801
#>     Attrib V8    0.29689105480671685
#>     Attrib V9    1.5710472936586781
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.09198345081247998
#>     Attrib V1    0.5627548331514033
#>     Attrib V10    -1.3287820804600725
#>     Attrib V11    -1.1439047532384379
#>     Attrib V12    -1.0289673754315263
#>     Attrib V13    -0.6676304132442998
#>     Attrib V14    0.8280561998344306
#>     Attrib V15    0.8309633110832034
#>     Attrib V16    0.6807486806471971
#>     Attrib V17    0.3401245881177829
#>     Attrib V18    0.13120419100757216
#>     Attrib V19    0.1202549785810624
#>     Attrib V2    -0.014443125714260737
#>     Attrib V20    0.27040031600910003
#>     Attrib V21    -0.0667372760687387
#>     Attrib V22    -0.5155848339243001
#>     Attrib V23    -0.7372024501526753
#>     Attrib V24    -1.1498047839297478
#>     Attrib V25    -0.8883199913140377
#>     Attrib V26    -0.7127261667450263
#>     Attrib V27    -0.6912300607875791
#>     Attrib V28    -1.0939719282972584
#>     Attrib V29    -0.24562278700091944
#>     Attrib V3    0.0854610561911152
#>     Attrib V30    -0.12286214330028808
#>     Attrib V31    0.6485620364313911
#>     Attrib V32    -0.11587299149504221
#>     Attrib V33    -0.43247073719344176
#>     Attrib V34    0.38369617586260624
#>     Attrib V35    0.21762723324772756
#>     Attrib V36    0.49768971925597294
#>     Attrib V37    0.3495622313852473
#>     Attrib V38    0.21963415254969829
#>     Attrib V39    0.40966301018220896
#>     Attrib V4    -0.4585913912697027
#>     Attrib V40    0.6751121666681131
#>     Attrib V41    -0.22083697551969533
#>     Attrib V42    -0.4093028105965659
#>     Attrib V43    -0.7699951616218873
#>     Attrib V44    -0.3921721752472426
#>     Attrib V45    -0.27193405439479285
#>     Attrib V46    -0.81432062481745
#>     Attrib V47    -0.6658897432032777
#>     Attrib V48    -0.37430448036745273
#>     Attrib V49    -0.9295406579224598
#>     Attrib V5    -1.140835526548513
#>     Attrib V50    0.41240703022309666
#>     Attrib V51    -1.327200892351598
#>     Attrib V52    -0.34686292649997785
#>     Attrib V53    -0.06974546908704221
#>     Attrib V54    -0.6919783937104408
#>     Attrib V55    0.627049698310262
#>     Attrib V56    0.7351990562709858
#>     Attrib V57    1.0536506634893128
#>     Attrib V58    -0.4473620857043214
#>     Attrib V59    0.33479972527619717
#>     Attrib V6    -0.7060881747873755
#>     Attrib V60    0.26693612849998466
#>     Attrib V7    -0.10184456777422342
#>     Attrib V8    -0.18605164629869295
#>     Attrib V9    -1.3938941622713703
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.2938249322226472
#>     Attrib V1    0.16375061588491188
#>     Attrib V10    0.2574989068233929
#>     Attrib V11    -0.032422042842057554
#>     Attrib V12    0.11507841599991357
#>     Attrib V13    0.24532561730969057
#>     Attrib V14    -0.2588284473163041
#>     Attrib V15    -0.1816489784408796
#>     Attrib V16    -0.2434395547922848
#>     Attrib V17    0.08909774669698987
#>     Attrib V18    0.2868427439624944
#>     Attrib V19    0.3100255242892603
#>     Attrib V2    -0.09917667445152115
#>     Attrib V20    0.34226803352546137
#>     Attrib V21    0.3675695401555438
#>     Attrib V22    0.280879162762013
#>     Attrib V23    0.16112280910287755
#>     Attrib V24    0.4138721543764963
#>     Attrib V25    -0.012029491606149106
#>     Attrib V26    -0.5145991760316678
#>     Attrib V27    -0.5135003813067476
#>     Attrib V28    0.07911897809065697
#>     Attrib V29    -0.21068142794796882
#>     Attrib V3    -0.14436516667396737
#>     Attrib V30    -0.13075949108533938
#>     Attrib V31    -0.722260879932038
#>     Attrib V32    -0.04950507390873021
#>     Attrib V33    0.7188282474520415
#>     Attrib V34    0.19505261501063764
#>     Attrib V35    -0.030663342667954587
#>     Attrib V36    -0.22602716925702793
#>     Attrib V37    -0.25541700822421726
#>     Attrib V38    0.6763558052964789
#>     Attrib V39    0.15747880800781205
#>     Attrib V4    0.1404792411529945
#>     Attrib V40    -0.4460337155821581
#>     Attrib V41    -0.23606739307292987
#>     Attrib V42    0.09464946861673629
#>     Attrib V43    0.1339243819585706
#>     Attrib V44    0.058603255843375675
#>     Attrib V45    0.29992272155304484
#>     Attrib V46    0.19873744464447685
#>     Attrib V47    -0.18363573617721993
#>     Attrib V48    -0.054165213851327845
#>     Attrib V49    0.2090883474612223
#>     Attrib V5    0.3490751898222596
#>     Attrib V50    -0.18470159292452054
#>     Attrib V51    0.3670657908521281
#>     Attrib V52    -0.03119931107440855
#>     Attrib V53    -0.03916942843437815
#>     Attrib V54    0.39814666086837536
#>     Attrib V55    -0.2947847677626757
#>     Attrib V56    0.10926645958947974
#>     Attrib V57    -0.3531248590850681
#>     Attrib V58    0.3291249160483774
#>     Attrib V59    0.4829726330427158
#>     Attrib V6    -0.06704146265162182
#>     Attrib V60    0.4154246619477459
#>     Attrib V7    0.13439698698216113
#>     Attrib V8    -0.16162982957354413
#>     Attrib V9    0.38835215447405913
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.3809916494398982
#>     Attrib V1    0.18742486724220778
#>     Attrib V10    0.28259953763411355
#>     Attrib V11    0.0329968682383808
#>     Attrib V12    0.042395579151164584
#>     Attrib V13    0.3128514372524064
#>     Attrib V14    -0.23772244293888992
#>     Attrib V15    -0.18990212629619843
#>     Attrib V16    -0.23704948433292045
#>     Attrib V17    0.044508153169817585
#>     Attrib V18    0.257393334294478
#>     Attrib V19    0.37404320684134745
#>     Attrib V2    -0.01298766498260903
#>     Attrib V20    0.31842094759472633
#>     Attrib V21    0.45897738328006116
#>     Attrib V22    0.42702440309897965
#>     Attrib V23    0.2246839124440807
#>     Attrib V24    0.4577824251865356
#>     Attrib V25    -0.03454365974094703
#>     Attrib V26    -0.4878209291003943
#>     Attrib V27    -0.46239661418262806
#>     Attrib V28    0.13624691131622044
#>     Attrib V29    -0.08785562387249035
#>     Attrib V3    -0.15053285736673472
#>     Attrib V30    -0.11506348477944092
#>     Attrib V31    -0.7994649884194874
#>     Attrib V32    -0.08515086987013316
#>     Attrib V33    0.7994885008242772
#>     Attrib V34    0.14969434581599486
#>     Attrib V35    -0.10422113402123395
#>     Attrib V36    -0.28001967391888033
#>     Attrib V37    -0.2617013141578695
#>     Attrib V38    0.6969042550730694
#>     Attrib V39    0.13199177013596056
#>     Attrib V4    0.22168495440974792
#>     Attrib V40    -0.44808720124137996
#>     Attrib V41    -0.17735415633002866
#>     Attrib V42    0.12471546947625273
#>     Attrib V43    0.21210757897006463
#>     Attrib V44    0.003974092116502549
#>     Attrib V45    0.30568472478147934
#>     Attrib V46    0.28324390081276607
#>     Attrib V47    -0.23102868542417546
#>     Attrib V48    -0.07859551570980075
#>     Attrib V49    0.19753774638019475
#>     Attrib V5    0.3744309519798916
#>     Attrib V50    -0.2969218462899264
#>     Attrib V51    0.36830682949360843
#>     Attrib V52    0.020738173048761938
#>     Attrib V53    -1.2696533483111454E-4
#>     Attrib V54    0.37857949832690885
#>     Attrib V55    -0.35706862308110643
#>     Attrib V56    0.11309234949210821
#>     Attrib V57    -0.36429694091711406
#>     Attrib V58    0.37991701533913624
#>     Attrib V59    0.6419778299399791
#>     Attrib V6    -0.11333161111700643
#>     Attrib V60    0.44860599045174127
#>     Attrib V7    0.1719812682021148
#>     Attrib V8    -0.15849349175185037
#>     Attrib V9    0.44218542482702033
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.16136901451713084
#>     Attrib V1    0.09583164431156414
#>     Attrib V10    0.012379972855097458
#>     Attrib V11    -0.03437817183829558
#>     Attrib V12    -0.028479600910137334
#>     Attrib V13    0.057719506756411826
#>     Attrib V14    0.031028970482667093
#>     Attrib V15    0.02384116297740071
#>     Attrib V16    -0.030303000916018646
#>     Attrib V17    0.04593429893955001
#>     Attrib V18    0.014204338777099281
#>     Attrib V19    -0.02534993471436401
#>     Attrib V2    0.06469710886239552
#>     Attrib V20    -0.00656030140161823
#>     Attrib V21    -0.04363975023525954
#>     Attrib V22    -0.12002332968429731
#>     Attrib V23    -0.09073965325527153
#>     Attrib V24    -0.08105261894146842
#>     Attrib V25    -0.0999983063580733
#>     Attrib V26    -0.20761002594037517
#>     Attrib V27    -0.08931258444009813
#>     Attrib V28    -0.07426680322619549
#>     Attrib V29    -0.053640218534889504
#>     Attrib V3    0.14170755357013706
#>     Attrib V30    -0.019711039455585538
#>     Attrib V31    -0.07711784576026239
#>     Attrib V32    0.02722055066414741
#>     Attrib V33    0.09794223119991985
#>     Attrib V34    0.09643927388497153
#>     Attrib V35    0.06734424807871256
#>     Attrib V36    0.06735853838745766
#>     Attrib V37    0.1372656140692208
#>     Attrib V38    0.18250756680718383
#>     Attrib V39    0.16778042814577715
#>     Attrib V4    0.12297801617868505
#>     Attrib V40    0.04810154308938695
#>     Attrib V41    0.03026644463080011
#>     Attrib V42    0.022170975006763294
#>     Attrib V43    -0.020527462890003536
#>     Attrib V44    0.03666971119532074
#>     Attrib V45    0.02700549024377201
#>     Attrib V46    0.10000653399641836
#>     Attrib V47    0.05043465169685781
#>     Attrib V48    0.010088608242834618
#>     Attrib V49    0.07395236179741771
#>     Attrib V5    0.1503004676893981
#>     Attrib V50    0.03971830185196279
#>     Attrib V51    0.06953043493636653
#>     Attrib V52    0.01446549947324584
#>     Attrib V53    0.06371538790016061
#>     Attrib V54    0.03784463301297487
#>     Attrib V55    0.0383084052148368
#>     Attrib V56    0.07490691217760635
#>     Attrib V57    0.09178507190691738
#>     Attrib V58    0.08615269094475178
#>     Attrib V59    0.15658888146708413
#>     Attrib V6    0.046414898329562415
#>     Attrib V60    0.2295389383617758
#>     Attrib V7    0.09034899929594054
#>     Attrib V8    -0.06564006365426182
#>     Attrib V9    0.04654256730016993
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.2776943890501023
#>     Attrib V1    0.34039885817941257
#>     Attrib V10    0.14493302587050946
#>     Attrib V11    -0.07481044474827012
#>     Attrib V12    0.07069621718945023
#>     Attrib V13    0.21845448391910235
#>     Attrib V14    -0.15624075148877023
#>     Attrib V15    -0.01935259654626896
#>     Attrib V16    -0.18463158055834902
#>     Attrib V17    0.09696125531910393
#>     Attrib V18    0.28296730465249836
#>     Attrib V19    0.2709004367598939
#>     Attrib V2    0.011295773583025312
#>     Attrib V20    0.281617739263067
#>     Attrib V21    0.30376849675010004
#>     Attrib V22    0.1725867923648487
#>     Attrib V23    0.06889777609609972
#>     Attrib V24    0.24917627592513183
#>     Attrib V25    -0.16649360177441114
#>     Attrib V26    -0.5650513981407302
#>     Attrib V27    -0.6736108154899821
#>     Attrib V28    -0.22940083732564215
#>     Attrib V29    -0.36976508585601464
#>     Attrib V3    -0.08893882839420358
#>     Attrib V30    -0.24576052819966077
#>     Attrib V31    -0.6198258234728637
#>     Attrib V32    -0.0763539044548393
#>     Attrib V33    0.6659170765846437
#>     Attrib V34    0.19172255869644741
#>     Attrib V35    -0.02452983052783105
#>     Attrib V36    -0.26305412655708477
#>     Attrib V37    -0.23431119917326887
#>     Attrib V38    0.561150670657435
#>     Attrib V39    0.21265870371871612
#>     Attrib V4    0.14734286051466314
#>     Attrib V40    -0.32158390686243604
#>     Attrib V41    -0.18468213435948772
#>     Attrib V42    0.015926000213897916
#>     Attrib V43    0.03266745237353647
#>     Attrib V44    -0.030331651645429312
#>     Attrib V45    0.12106269153539727
#>     Attrib V46    0.16142468938095503
#>     Attrib V47    -0.25476678981702505
#>     Attrib V48    -0.009581464198417237
#>     Attrib V49    0.20115042717314616
#>     Attrib V5    0.19089395111173085
#>     Attrib V50    -0.10441080245714608
#>     Attrib V51    0.20513863159306983
#>     Attrib V52    -0.01407430467324739
#>     Attrib V53    -0.018725742261846756
#>     Attrib V54    0.44146263989439005
#>     Attrib V55    -0.06816779476778938
#>     Attrib V56    0.22592864153996042
#>     Attrib V57    -0.1859345227518964
#>     Attrib V58    0.3208274231578513
#>     Attrib V59    0.6250680583607265
#>     Attrib V6    -0.07934319512054842
#>     Attrib V60    0.5688646027817494
#>     Attrib V7    0.2004377226224708
#>     Attrib V8    -0.2440608541691741
#>     Attrib V9    0.2297749361196836
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.32845518398679147
#>     Attrib V1    0.21056192284510927
#>     Attrib V10    -0.6205837426342907
#>     Attrib V11    -0.488365516628979
#>     Attrib V12    -0.5884394000662754
#>     Attrib V13    -0.6156482991938735
#>     Attrib V14    0.3495886605918612
#>     Attrib V15    0.4537792224435416
#>     Attrib V16    0.4404298629656553
#>     Attrib V17    0.1980996899265599
#>     Attrib V18    -0.12855666534889137
#>     Attrib V19    -0.03250013129003204
#>     Attrib V2    0.0975840789219411
#>     Attrib V20    0.11618471738422886
#>     Attrib V21    -0.08203214963749311
#>     Attrib V22    -0.18164883978247526
#>     Attrib V23    -0.35139208112657794
#>     Attrib V24    -0.7103121138646281
#>     Attrib V25    -0.36787664218963223
#>     Attrib V26    -0.043609023774747645
#>     Attrib V27    -0.20273949563488625
#>     Attrib V28    -0.72864399975355
#>     Attrib V29    -0.2813608800394352
#>     Attrib V3    0.20580163306101393
#>     Attrib V30    -0.11542961709830708
#>     Attrib V31    0.5144693666549376
#>     Attrib V32    -0.06243131355908366
#>     Attrib V33    -0.6638130514703583
#>     Attrib V34    0.18725941758027567
#>     Attrib V35    0.3524767266283154
#>     Attrib V36    0.6026029887586666
#>     Attrib V37    0.4034047723291344
#>     Attrib V38    -0.2080162851726967
#>     Attrib V39    0.1542256051638293
#>     Attrib V4    -0.216426922183602
#>     Attrib V40    0.5794587576199153
#>     Attrib V41    -0.06718579957657618
#>     Attrib V42    -0.4605451991357415
#>     Attrib V43    -0.5280009057496414
#>     Attrib V44    -0.2029750037544723
#>     Attrib V45    -0.07461387975066479
#>     Attrib V46    -0.35797573063656846
#>     Attrib V47    -0.11527009786709251
#>     Attrib V48    -0.028397330724385373
#>     Attrib V49    -0.4714339028545742
#>     Attrib V5    -0.6357337513537875
#>     Attrib V50    0.43437287857017265
#>     Attrib V51    -0.7191391058735929
#>     Attrib V52    -0.15733267378171348
#>     Attrib V53    -0.07380033503111129
#>     Attrib V54    -0.5895164506033409
#>     Attrib V55    0.5197357878745815
#>     Attrib V56    0.24714443313130152
#>     Attrib V57    0.7362205411895163
#>     Attrib V58    -0.403741938614289
#>     Attrib V59    -0.2098016937332392
#>     Attrib V6    -0.28705089589903554
#>     Attrib V60    -0.0870124616275171
#>     Attrib V7    -0.14716368951331443
#>     Attrib V8    0.07241676351911798
#>     Attrib V9    -0.7070713466365144
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    0.13260595746436415
#>     Attrib V1    0.3811531626940309
#>     Attrib V10    -0.036470988905485446
#>     Attrib V11    -0.24189350046325106
#>     Attrib V12    -0.04463190266117358
#>     Attrib V13    0.23101745615327784
#>     Attrib V14    0.019571136124003304
#>     Attrib V15    0.10364954736603547
#>     Attrib V16    0.01962059755921796
#>     Attrib V17    0.16106657705946306
#>     Attrib V18    0.2920641226246491
#>     Attrib V19    0.27781213131014465
#>     Attrib V2    0.03337349631668857
#>     Attrib V20    0.2725810758548364
#>     Attrib V21    0.25334790515465033
#>     Attrib V22    0.062362607569353176
#>     Attrib V23    -0.11283395552038657
#>     Attrib V24    0.09802656799559725
#>     Attrib V25    -0.3443706844914144
#>     Attrib V26    -0.6850769338392028
#>     Attrib V27    -0.6733117522064037
#>     Attrib V28    -0.28498537987316397
#>     Attrib V29    -0.31422584251735053
#>     Attrib V3    0.06349736534471137
#>     Attrib V30    -0.35670823963616943
#>     Attrib V31    -0.6260682948751812
#>     Attrib V32    -0.14565956029642502
#>     Attrib V33    0.4640607803389079
#>     Attrib V34    0.21345552633983647
#>     Attrib V35    -0.05956029355797389
#>     Attrib V36    -0.17276895964936462
#>     Attrib V37    -0.09395959426756062
#>     Attrib V38    0.5921636910147436
#>     Attrib V39    0.2968694362010174
#>     Attrib V4    0.1795184391271087
#>     Attrib V40    -0.19287741596564117
#>     Attrib V41    -0.07479062917706418
#>     Attrib V42    0.09634387013703011
#>     Attrib V43    -0.010748151693002505
#>     Attrib V44    -0.13961609172009434
#>     Attrib V45    0.09546292792588368
#>     Attrib V46    0.10516375002624835
#>     Attrib V47    -0.2621595627559521
#>     Attrib V48    -0.10764066498893782
#>     Attrib V49    0.027075051984377707
#>     Attrib V5    0.17625065572946075
#>     Attrib V50    0.04944379665939738
#>     Attrib V51    0.20629858051830846
#>     Attrib V52    0.006151461462430985
#>     Attrib V53    0.11052366469424842
#>     Attrib V54    0.3436679226996942
#>     Attrib V55    0.08620323435132696
#>     Attrib V56    0.29698201670124263
#>     Attrib V57    0.031130630325206448
#>     Attrib V58    0.30647254912183897
#>     Attrib V59    0.620586201531267
#>     Attrib V6    -0.06435975957678995
#>     Attrib V60    0.6116280085948119
#>     Attrib V7    0.1760878964774742
#>     Attrib V8    -0.26593711580582857
#>     Attrib V9    0.0648937179723897
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.03392142901909677
#>     Attrib V1    0.21377492376371082
#>     Attrib V10    0.10659347572728294
#>     Attrib V11    -0.016628984746073903
#>     Attrib V12    -0.010112477933814696
#>     Attrib V13    0.04251508289924169
#>     Attrib V14    -0.010623308905734643
#>     Attrib V15    0.09033460287710174
#>     Attrib V16    -0.04661657923046989
#>     Attrib V17    0.027521046202931033
#>     Attrib V18    0.05804332296633637
#>     Attrib V19    0.060700072650504304
#>     Attrib V2    0.12582003881693724
#>     Attrib V20    0.009478298891513253
#>     Attrib V21    -0.01910332478806741
#>     Attrib V22    -0.05006577573858084
#>     Attrib V23    -0.17603563755925625
#>     Attrib V24    -0.030596964999738803
#>     Attrib V25    -0.23952260317609952
#>     Attrib V26    -0.3314831849532665
#>     Attrib V27    -0.271982992239501
#>     Attrib V28    -0.12271666451154317
#>     Attrib V29    -0.1808772340194255
#>     Attrib V3    0.05415167188959337
#>     Attrib V30    -0.11835099496372455
#>     Attrib V31    -0.20183462977129055
#>     Attrib V32    -0.03986983311188984
#>     Attrib V33    0.2930100738173572
#>     Attrib V34    0.08682028027440493
#>     Attrib V35    0.10019004118126672
#>     Attrib V36    0.007441659550368501
#>     Attrib V37    0.025842823301156618
#>     Attrib V38    0.36729924725726115
#>     Attrib V39    0.188859094026006
#>     Attrib V4    0.14769216102929933
#>     Attrib V40    -0.11773772040977115
#>     Attrib V41    -0.038741049834036985
#>     Attrib V42    -0.03194960875840211
#>     Attrib V43    0.04293006954019622
#>     Attrib V44    0.022070711895411554
#>     Attrib V45    0.11453049857963556
#>     Attrib V46    0.0662480917413436
#>     Attrib V47    -0.10832247191412799
#>     Attrib V48    0.06300673298859522
#>     Attrib V49    0.0717212829373467
#>     Attrib V5    0.15575135544962432
#>     Attrib V50    0.04533464812804511
#>     Attrib V51    0.16062304127730417
#>     Attrib V52    0.0152838466187878
#>     Attrib V53    0.028660048025854472
#>     Attrib V54    0.17189735498877065
#>     Attrib V55    0.08367830951581812
#>     Attrib V56    0.10306438518900493
#>     Attrib V57    0.05561942305667366
#>     Attrib V58    0.12656821739258223
#>     Attrib V59    0.253419230990388
#>     Attrib V6    -0.0028843035835778414
#>     Attrib V60    0.32752911362524945
#>     Attrib V7    0.0652588564286043
#>     Attrib V8    -0.0784522493095574
#>     Attrib V9    0.08903589844577288
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.3595542509946198
#>     Attrib V1    -0.0022676848144693985
#>     Attrib V10    -0.2663531458713873
#>     Attrib V11    -0.21285915690856588
#>     Attrib V12    -0.3831006273046844
#>     Attrib V13    -0.34767741069363595
#>     Attrib V14    0.17110531233622248
#>     Attrib V15    0.1405696098081686
#>     Attrib V16    0.24714341613374657
#>     Attrib V17    0.12883220034319506
#>     Attrib V18    0.05720939438125747
#>     Attrib V19    6.799885443629054E-4
#>     Attrib V2    0.0861249253780192
#>     Attrib V20    0.10369541566283548
#>     Attrib V21    0.024893540561825432
#>     Attrib V22    0.031678439665774445
#>     Attrib V23    -0.00896315831637144
#>     Attrib V24    -0.32612987259431603
#>     Attrib V25    -0.036614695159546434
#>     Attrib V26    0.12139528284105688
#>     Attrib V27    0.04672305501010701
#>     Attrib V28    -0.33886468039699086
#>     Attrib V29    -0.16836613138137901
#>     Attrib V3    0.18551603833073993
#>     Attrib V30    -0.09368852393258567
#>     Attrib V31    0.30450955451833944
#>     Attrib V32    -0.007581782977724841
#>     Attrib V33    -0.36995574142510296
#>     Attrib V34    0.05700319914413982
#>     Attrib V35    0.15570298451890527
#>     Attrib V36    0.36107517414842444
#>     Attrib V37    0.16928227823226688
#>     Attrib V38    -0.2751610377248019
#>     Attrib V39    -0.0025030206445970566
#>     Attrib V4    -0.07749071694192884
#>     Attrib V40    0.29026060793124675
#>     Attrib V41    -0.02720664863238983
#>     Attrib V42    -0.18313669304280913
#>     Attrib V43    -0.2090854005614189
#>     Attrib V44    0.030627877899355678
#>     Attrib V45    -0.10274534082594525
#>     Attrib V46    -0.20653816491122734
#>     Attrib V47    0.042121535090491755
#>     Attrib V48    -0.023544258367660387
#>     Attrib V49    -0.19468479785913245
#>     Attrib V5    -0.21719968405021425
#>     Attrib V50    0.1778657997635313
#>     Attrib V51    -0.28228645547926945
#>     Attrib V52    0.026557680052327778
#>     Attrib V53    0.04344171099987991
#>     Attrib V54    -0.3837487515962435
#>     Attrib V55    0.1815197349345596
#>     Attrib V56    0.06967631711659968
#>     Attrib V57    0.2433798855173392
#>     Attrib V58    -0.1743801385784471
#>     Attrib V59    -0.195895451462032
#>     Attrib V6    -0.14275872467775844
#>     Attrib V60    -0.08857758951107557
#>     Attrib V7    -0.11490180850224095
#>     Attrib V8    0.0960599952275531
#>     Attrib V9    -0.296054199491807
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.352523581717683
#>     Attrib V1    -0.07397009691490533
#>     Attrib V10    0.4901124440776635
#>     Attrib V11    0.2869573030304557
#>     Attrib V12    0.5416692015608485
#>     Attrib V13    0.6059765729361635
#>     Attrib V14    -0.3499905130952047
#>     Attrib V15    -0.281670482496883
#>     Attrib V16    -0.46365751765644536
#>     Attrib V17    -0.1199855211111526
#>     Attrib V18    0.1909262809993361
#>     Attrib V19    0.20116380157336744
#>     Attrib V2    -0.05800167057385062
#>     Attrib V20    0.045997960294424205
#>     Attrib V21    0.2512002922815338
#>     Attrib V22    0.40719060947179947
#>     Attrib V23    0.38779244699956306
#>     Attrib V24    0.7810819985652276
#>     Attrib V25    0.3118395751400097
#>     Attrib V26    -0.20093844445117692
#>     Attrib V27    -0.1265168985940233
#>     Attrib V28    0.6289358376471409
#>     Attrib V29    0.19084291543874335
#>     Attrib V3    -0.16794813672354103
#>     Attrib V30    0.0912058316905901
#>     Attrib V31    -0.5491167285316072
#>     Attrib V32    0.0598841259497446
#>     Attrib V33    0.7765151077429989
#>     Attrib V34    -0.1605320603956484
#>     Attrib V35    -0.3350281691160576
#>     Attrib V36    -0.6282027771961866
#>     Attrib V37    -0.4024842171006879
#>     Attrib V38    0.466224710966611
#>     Attrib V39    -0.035580189526295804
#>     Attrib V4    0.23892717736372635
#>     Attrib V40    -0.6345742813000098
#>     Attrib V41    -0.130768115863692
#>     Attrib V42    0.38285455700382287
#>     Attrib V43    0.41604047125154947
#>     Attrib V44    0.07460068332725822
#>     Attrib V45    0.19911412837997908
#>     Attrib V46    0.36010603740878583
#>     Attrib V47    -0.07716595318714096
#>     Attrib V48    -0.12705452468803133
#>     Attrib V49    0.3717748636005722
#>     Attrib V5    0.6262943104404971
#>     Attrib V50    -0.5007103995900333
#>     Attrib V51    0.6222988671929406
#>     Attrib V52    0.21452187790233282
#>     Attrib V53    0.09631955738410321
#>     Attrib V54    0.5473743654656148
#>     Attrib V55    -0.4068191800754823
#>     Attrib V56    -0.03461480822813981
#>     Attrib V57    -0.8178031219006319
#>     Attrib V58    0.4855813392034221
#>     Attrib V59    0.30341234814390045
#>     Attrib V6    0.07592571418382586
#>     Attrib V60    0.137716101570959
#>     Attrib V7    0.011018916578949066
#>     Attrib V8    -0.21435445496123118
#>     Attrib V9    0.6248640197378623
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.25428387775561506
#>     Attrib V1    0.32885727133860126
#>     Attrib V10    0.36781918997460367
#>     Attrib V11    -0.0175191628758037
#>     Attrib V12    0.10729114382382117
#>     Attrib V13    0.36489063244787423
#>     Attrib V14    -0.24093239394911034
#>     Attrib V15    -0.19203650482095916
#>     Attrib V16    -0.3190852556066459
#>     Attrib V17    0.026452722751346084
#>     Attrib V18    0.2991201932415653
#>     Attrib V19    0.39348608040141825
#>     Attrib V2    -0.01833223639008607
#>     Attrib V20    0.42120421378629175
#>     Attrib V21    0.6567153059247789
#>     Attrib V22    0.6800006336044859
#>     Attrib V23    0.5047197750395915
#>     Attrib V24    0.7250439532268302
#>     Attrib V25    0.15071226961421993
#>     Attrib V26    -0.3927401417932885
#>     Attrib V27    -0.4964405872032924
#>     Attrib V28    0.07803561909524236
#>     Attrib V29    -0.15936812610482617
#>     Attrib V3    -0.1252661869157064
#>     Attrib V30    -0.07997475818992439
#>     Attrib V31    -0.7340598435271141
#>     Attrib V32    -0.07697104589124572
#>     Attrib V33    0.7879435248744877
#>     Attrib V34    0.08422983453500008
#>     Attrib V35    -0.11459499665890435
#>     Attrib V36    -0.2169663726109182
#>     Attrib V37    -0.2186492228475084
#>     Attrib V38    0.8261685712699687
#>     Attrib V39    0.19932163798871277
#>     Attrib V4    0.2132779172881224
#>     Attrib V40    -0.4798356098460724
#>     Attrib V41    -0.21113664638143165
#>     Attrib V42    0.061208449833985615
#>     Attrib V43    0.24416683014662002
#>     Attrib V44    0.1648589182304581
#>     Attrib V45    0.322891782425786
#>     Attrib V46    0.24203706869368008
#>     Attrib V47    -0.294329296743112
#>     Attrib V48    -0.19695280730645245
#>     Attrib V49    0.20282775017206994
#>     Attrib V5    0.39139529971392256
#>     Attrib V50    -0.2864330239117656
#>     Attrib V51    0.45860658603591825
#>     Attrib V52    -0.00812638552522567
#>     Attrib V53    -0.049519532283592085
#>     Attrib V54    0.4489746150835663
#>     Attrib V55    -0.3069542195984135
#>     Attrib V56    0.1168811088628472
#>     Attrib V57    -0.47117839921184995
#>     Attrib V58    0.4462298256644932
#>     Attrib V59    0.7157553311871339
#>     Attrib V6    -0.15898606719888173
#>     Attrib V60    0.5419358351183791
#>     Attrib V7    0.19257956803009274
#>     Attrib V8    -0.21942744894556487
#>     Attrib V9    0.5018761848180386
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.03817249335803525
#>     Attrib V1    0.6226171301730843
#>     Attrib V10    -1.3878231903909712
#>     Attrib V11    -1.0224226337117976
#>     Attrib V12    -0.792325361648148
#>     Attrib V13    -0.6315425979558207
#>     Attrib V14    0.9113782631215782
#>     Attrib V15    0.9592574410404634
#>     Attrib V16    0.661028084662544
#>     Attrib V17    0.31005809264261014
#>     Attrib V18    -0.060174105369488154
#>     Attrib V19    -0.20579509221290407
#>     Attrib V2    -0.09305427310938183
#>     Attrib V20    0.023938112445125767
#>     Attrib V21    -0.22897817522857955
#>     Attrib V22    -0.7780751197236708
#>     Attrib V23    -1.089554881155986
#>     Attrib V24    -1.3476767138658956
#>     Attrib V25    -0.8318714710153704
#>     Attrib V26    -0.3951130445962053
#>     Attrib V27    -0.5750357404776356
#>     Attrib V28    -1.3815827017881923
#>     Attrib V29    -0.445783884414084
#>     Attrib V3    0.04362535370497905
#>     Attrib V30    -0.3602515265507993
#>     Attrib V31    0.8028540672756075
#>     Attrib V32    0.06136106428481676
#>     Attrib V33    -0.6042119239470377
#>     Attrib V34    0.4615611854134976
#>     Attrib V35    0.28972630278790673
#>     Attrib V36    0.6927023783710434
#>     Attrib V37    0.5674505041380845
#>     Attrib V38    0.15163024833765107
#>     Attrib V39    0.4830011255221224
#>     Attrib V4    -0.44160129202964743
#>     Attrib V40    0.8027184630740055
#>     Attrib V41    -0.3171122905242689
#>     Attrib V42    -0.6727782605405287
#>     Attrib V43    -0.8642054036824545
#>     Attrib V44    -0.5609576608242506
#>     Attrib V45    -0.45278790775860356
#>     Attrib V46    -0.8857668515601531
#>     Attrib V47    -0.680070375792062
#>     Attrib V48    -0.1954564178620707
#>     Attrib V49    -1.0019006665413313
#>     Attrib V5    -1.3476117230443496
#>     Attrib V50    0.38658447057399214
#>     Attrib V51    -1.3795454415959043
#>     Attrib V52    -0.3469961683145017
#>     Attrib V53    -0.1624594530321661
#>     Attrib V54    -0.6216698420977336
#>     Attrib V55    0.9644302125001653
#>     Attrib V56    0.7287184876874891
#>     Attrib V57    1.3742237581326733
#>     Attrib V58    -0.5696118467072765
#>     Attrib V59    0.36853356709803753
#>     Attrib V6    -0.8191599010178268
#>     Attrib V60    0.37107004454032827
#>     Attrib V7    -0.11068862949561756
#>     Attrib V8    -0.3301816530087073
#>     Attrib V9    -1.4938085876248437
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.1590986021999796
#>     Attrib V1    0.43789558268560574
#>     Attrib V10    -0.016919424878058333
#>     Attrib V11    -0.18159659361947508
#>     Attrib V12    0.007251757015515012
#>     Attrib V13    0.1905594238348593
#>     Attrib V14    0.07928107645780234
#>     Attrib V15    0.09479076529807365
#>     Attrib V16    0.02151479389861734
#>     Attrib V17    0.1291065407962429
#>     Attrib V18    0.2402582072211256
#>     Attrib V19    0.20459127359777063
#>     Attrib V2    0.09999514273117863
#>     Attrib V20    0.27406675162023963
#>     Attrib V21    0.22526805260196064
#>     Attrib V22    -0.0065062313277412884
#>     Attrib V23    -0.1709085171398833
#>     Attrib V24    0.06870397541034619
#>     Attrib V25    -0.38938491569649236
#>     Attrib V26    -0.6828718978390029
#>     Attrib V27    -0.6932726838055152
#>     Attrib V28    -0.40077653789346296
#>     Attrib V29    -0.32326573153806276
#>     Attrib V3    0.030313889722480277
#>     Attrib V30    -0.3743409513630379
#>     Attrib V31    -0.5419242723058901
#>     Attrib V32    -0.14815438511570578
#>     Attrib V33    0.4202768906078986
#>     Attrib V34    0.17822766385309505
#>     Attrib V35    -0.02222192072343201
#>     Attrib V36    -0.1308440925081432
#>     Attrib V37    -0.09630777169172965
#>     Attrib V38    0.5363537495535212
#>     Attrib V39    0.25566920909362173
#>     Attrib V4    0.18415494852359016
#>     Attrib V40    -0.1481458454212994
#>     Attrib V41    -0.14509326930386646
#>     Attrib V42    0.009349530319734305
#>     Attrib V43    0.04683295565333098
#>     Attrib V44    -0.11677395426115636
#>     Attrib V45    0.01597792226583846
#>     Attrib V46    0.10124181489931279
#>     Attrib V47    -0.2963167087755876
#>     Attrib V48    -0.03766303240660281
#>     Attrib V49    0.06627860929882268
#>     Attrib V5    0.18455700352839208
#>     Attrib V50    0.009094082180699547
#>     Attrib V51    0.1400561527394276
#>     Attrib V52    -0.011972097405349973
#>     Attrib V53    0.04378919676922281
#>     Attrib V54    0.39875744936982155
#>     Attrib V55    0.14800783000277756
#>     Attrib V56    0.33986032704068503
#>     Attrib V57    0.04861534711581617
#>     Attrib V58    0.31860403153087474
#>     Attrib V59    0.6590816946589855
#>     Attrib V6    -0.04615938343221154
#>     Attrib V60    0.6250297268522069
#>     Attrib V7    0.18709724225308122
#>     Attrib V8    -0.28747864433007103
#>     Attrib V9    0.04703047062623876
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.2514991311963424
#>     Attrib V1    0.5193036798654987
#>     Attrib V10    -0.07779044009340133
#>     Attrib V11    -0.244520538491963
#>     Attrib V12    0.0027521608042117853
#>     Attrib V13    0.29962620925087907
#>     Attrib V14    0.07030036216955739
#>     Attrib V15    0.12189622473103442
#>     Attrib V16    -0.08273715876958643
#>     Attrib V17    0.18286703063430898
#>     Attrib V18    0.31508908227162885
#>     Attrib V19    0.33391328338105836
#>     Attrib V2    0.06062446272747898
#>     Attrib V20    0.3895253970717794
#>     Attrib V21    0.3883069858085802
#>     Attrib V22    0.20511404404699937
#>     Attrib V23    0.04319057407229076
#>     Attrib V24    0.14808701614301345
#>     Attrib V25    -0.3804690799278464
#>     Attrib V26    -0.7414116757480758
#>     Attrib V27    -0.8076548366799896
#>     Attrib V28    -0.3596568899469095
#>     Attrib V29    -0.3760530969515171
#>     Attrib V3    0.065099381098177
#>     Attrib V30    -0.384400168788965
#>     Attrib V31    -0.7441853112637433
#>     Attrib V32    -0.22994403054972845
#>     Attrib V33    0.5713138117447053
#>     Attrib V34    0.19198620592773305
#>     Attrib V35    -0.04220977073440005
#>     Attrib V36    -0.21345522369808922
#>     Attrib V37    -0.12333454046031245
#>     Attrib V38    0.703466323226598
#>     Attrib V39    0.3413447826742955
#>     Attrib V4    0.23884206750685313
#>     Attrib V40    -0.24218000260055317
#>     Attrib V41    -0.10443220156665074
#>     Attrib V42    0.08297049431556511
#>     Attrib V43    0.06988820705625258
#>     Attrib V44    -0.10843718567503763
#>     Attrib V45    0.15895393177450184
#>     Attrib V46    0.10980087951457884
#>     Attrib V47    -0.29212955561488296
#>     Attrib V48    -0.1730147843526465
#>     Attrib V49    0.05328242838348895
#>     Attrib V5    0.20320908359886972
#>     Attrib V50    -0.033079826782664544
#>     Attrib V51    0.169101282684849
#>     Attrib V52    0.019149707471269328
#>     Attrib V53    0.10052913421872557
#>     Attrib V54    0.4366043812293904
#>     Attrib V55    0.024254567618238073
#>     Attrib V56    0.3767598374338767
#>     Attrib V57    -0.037560927529521726
#>     Attrib V58    0.3297034530500409
#>     Attrib V59    0.870042016019694
#>     Attrib V6    -0.10868028806164501
#>     Attrib V60    0.7067589305841302
#>     Attrib V7    0.22249046813823556
#>     Attrib V8    -0.28072503205457316
#>     Attrib V9    0.0709520765326954
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.34038148159551473
#>     Attrib V1    0.19738150086160827
#>     Attrib V10    -0.592294268395009
#>     Attrib V11    -0.4151657601826085
#>     Attrib V12    -0.6226840702842351
#>     Attrib V13    -0.6252561325547268
#>     Attrib V14    0.3374580964884372
#>     Attrib V15    0.4095112772090423
#>     Attrib V16    0.3919717317962285
#>     Attrib V17    0.24172746525179006
#>     Attrib V18    -0.10609484628779219
#>     Attrib V19    -0.0415995383891802
#>     Attrib V2    0.13246816569250683
#>     Attrib V20    0.14752409653552906
#>     Attrib V21    -0.014040987718417346
#>     Attrib V22    -0.18745789108437805
#>     Attrib V23    -0.2598156892361606
#>     Attrib V24    -0.6929227409621328
#>     Attrib V25    -0.32324202446117817
#>     Attrib V26    -0.02023783556335917
#>     Attrib V27    -0.17322179422482578
#>     Attrib V28    -0.6842460717396692
#>     Attrib V29    -0.27708225218588844
#>     Attrib V3    0.18440155978088082
#>     Attrib V30    -0.07557058074613614
#>     Attrib V31    0.4902847772655269
#>     Attrib V32    -0.005492439960650791
#>     Attrib V33    -0.6609333386537619
#>     Attrib V34    0.12170025273986423
#>     Attrib V35    0.3207734919754496
#>     Attrib V36    0.5682182770461089
#>     Attrib V37    0.27654224023191504
#>     Attrib V38    -0.24775524778303762
#>     Attrib V39    0.10032659678986035
#>     Attrib V4    -0.159466005723605
#>     Attrib V40    0.5824903052375583
#>     Attrib V41    -0.04159625878756359
#>     Attrib V42    -0.43431948137445237
#>     Attrib V43    -0.4085974539608623
#>     Attrib V44    -0.13733899157658017
#>     Attrib V45    -0.11170100630828986
#>     Attrib V46    -0.33577393915656684
#>     Attrib V47    -0.05895343697630154
#>     Attrib V48    -0.03583929621802095
#>     Attrib V49    -0.4503314744616294
#>     Attrib V5    -0.6288623935897711
#>     Attrib V50    0.43140036945754756
#>     Attrib V51    -0.6776652984796057
#>     Attrib V52    -0.03465590010232041
#>     Attrib V53    -0.11184777591862492
#>     Attrib V54    -0.5823968847587878
#>     Attrib V55    0.5104727473895168
#>     Attrib V56    0.21562514552719825
#>     Attrib V57    0.7235298275848594
#>     Attrib V58    -0.33881054938995386
#>     Attrib V59    -0.25254464888568673
#>     Attrib V6    -0.2684866041488535
#>     Attrib V60    -0.17192641352042293
#>     Attrib V7    -0.17818635192005955
#>     Attrib V8    0.10533733023224895
#>     Attrib V9    -0.5871478861999824
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.1484636062036562
#>     Attrib V1    -0.4048860851313875
#>     Attrib V10    1.0938991908485995
#>     Attrib V11    0.8473801709812205
#>     Attrib V12    0.705426966752652
#>     Attrib V13    0.5229987683332321
#>     Attrib V14    -0.6688322898454848
#>     Attrib V15    -0.7125804304776054
#>     Attrib V16    -0.529252041148425
#>     Attrib V17    -0.21426126091174758
#>     Attrib V18    0.03806063556909984
#>     Attrib V19    -0.007335867029124938
#>     Attrib V2    0.05955888532982558
#>     Attrib V20    -0.12343426915533168
#>     Attrib V21    0.1752040647877232
#>     Attrib V22    0.5461181423200714
#>     Attrib V23    0.7530443604325335
#>     Attrib V24    0.9931409959564397
#>     Attrib V25    0.6188729126582865
#>     Attrib V26    0.36963191429301995
#>     Attrib V27    0.4924353578824492
#>     Attrib V28    1.1324350649581105
#>     Attrib V29    0.4178468786436404
#>     Attrib V3    -0.03406218034778335
#>     Attrib V30    0.24334263623689353
#>     Attrib V31    -0.6383439510500202
#>     Attrib V32    0.058143058033330704
#>     Attrib V33    0.5173969342716092
#>     Attrib V34    -0.36263072916490957
#>     Attrib V35    -0.2646959322437278
#>     Attrib V36    -0.5996402966099887
#>     Attrib V37    -0.3990448757112002
#>     Attrib V38    -0.10386401346118869
#>     Attrib V39    -0.36104605352024743
#>     Attrib V4    0.40478682047888015
#>     Attrib V40    -0.7281729788045411
#>     Attrib V41    0.19024941790016683
#>     Attrib V42    0.4781182629161003
#>     Attrib V43    0.6586456659147977
#>     Attrib V44    0.4459451033796459
#>     Attrib V45    0.3903886465884171
#>     Attrib V46    0.7219240113007753
#>     Attrib V47    0.4805356605487602
#>     Attrib V48    0.2160529411669212
#>     Attrib V49    0.8819586709407887
#>     Attrib V5    1.1147734840727508
#>     Attrib V50    -0.35768637812608967
#>     Attrib V51    1.0778171824997969
#>     Attrib V52    0.3902781239322653
#>     Attrib V53    0.08190977897057602
#>     Attrib V54    0.49303498196375006
#>     Attrib V55    -0.6839787649703185
#>     Attrib V56    -0.6035239618751711
#>     Attrib V57    -1.0610915356774495
#>     Attrib V58    0.4742725572345208
#>     Attrib V59    -0.24584516404029103
#>     Attrib V6    0.5774386964545226
#>     Attrib V60    -0.31292941746706293
#>     Attrib V7    -0.0011905771089149911
#>     Attrib V8    0.1064808833343672
#>     Attrib V9    1.1955737075507422
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.2380430316646588
#>     Attrib V1    -0.020969022984957352
#>     Attrib V10    -0.17661678397613184
#>     Attrib V11    -0.15706161029887333
#>     Attrib V12    -0.19008079109004655
#>     Attrib V13    -0.22551604040461232
#>     Attrib V14    0.1282924619895982
#>     Attrib V15    0.07718754796594486
#>     Attrib V16    0.14389593558956104
#>     Attrib V17    0.14160721276147017
#>     Attrib V18    -0.0055691141095636065
#>     Attrib V19    0.08846369881392793
#>     Attrib V2    0.046420406848241426
#>     Attrib V20    0.0552155258869098
#>     Attrib V21    0.013301470173686977
#>     Attrib V22    0.03868710109088879
#>     Attrib V23    0.007606677782278116
#>     Attrib V24    -0.1825047832572917
#>     Attrib V25    -0.0011242240109338062
#>     Attrib V26    0.038389068592199815
#>     Attrib V27    0.05264963101422541
#>     Attrib V28    -0.14563435018370333
#>     Attrib V29    -0.07267936660435904
#>     Attrib V3    0.04230953243482719
#>     Attrib V30    -0.03822910608773673
#>     Attrib V31    0.18172101297235596
#>     Attrib V32    -0.00464213443938621
#>     Attrib V33    -0.1844592065214014
#>     Attrib V34    -0.004295108799099225
#>     Attrib V35    0.15832772453738767
#>     Attrib V36    0.22377555181738515
#>     Attrib V37    0.17752737083929504
#>     Attrib V38    -0.18404889443274333
#>     Attrib V39    -0.017733274521439333
#>     Attrib V4    0.0032534924259832692
#>     Attrib V40    0.18010880495432213
#>     Attrib V41    0.0099185954023166
#>     Attrib V42    -0.07409915400174935
#>     Attrib V43    -0.10089172307191625
#>     Attrib V44    0.014874075931800766
#>     Attrib V45    -0.05273168601517057
#>     Attrib V46    -0.14261353657435621
#>     Attrib V47    -0.016502385456647825
#>     Attrib V48    0.008778415720432739
#>     Attrib V49    -0.1581394162203336
#>     Attrib V5    -0.14909847718648345
#>     Attrib V50    0.1228454783285978
#>     Attrib V51    -0.21849583568241968
#>     Attrib V52    0.004928555159547185
#>     Attrib V53    0.024722883805142204
#>     Attrib V54    -0.23093733643417028
#>     Attrib V55    0.07130876476398873
#>     Attrib V56    0.04102101823944944
#>     Attrib V57    0.18921166201988657
#>     Attrib V58    -0.08513827417193208
#>     Attrib V59    -0.12383878100839497
#>     Attrib V6    -0.029827454138237477
#>     Attrib V60    -0.03267146744269925
#>     Attrib V7    -0.1392150722641425
#>     Attrib V8    0.04282842276185813
#>     Attrib V9    -0.1933821439998202
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.3354696544055513
#>     Attrib V1    0.36957809012336507
#>     Attrib V10    0.29210125799761183
#>     Attrib V11    -0.09816732074519664
#>     Attrib V12    0.014035473098487211
#>     Attrib V13    0.33256919605244495
#>     Attrib V14    -0.27958288966823985
#>     Attrib V15    -0.16364396970618894
#>     Attrib V16    -0.25152494389469915
#>     Attrib V17    0.06553534968523665
#>     Attrib V18    0.38755659572350365
#>     Attrib V19    0.4087503049330065
#>     Attrib V2    -0.03851800614167577
#>     Attrib V20    0.3860970705187933
#>     Attrib V21    0.5790881725226045
#>     Attrib V22    0.525246465152439
#>     Attrib V23    0.315563201658946
#>     Attrib V24    0.5934335256976103
#>     Attrib V25    -0.0010816167649471313
#>     Attrib V26    -0.5175128142077847
#>     Attrib V27    -0.698818180813025
#>     Attrib V28    -0.11039983619037612
#>     Attrib V29    -0.3299524381271302
#>     Attrib V3    -0.11140917840794573
#>     Attrib V30    -0.20974314280637915
#>     Attrib V31    -0.7575881694173762
#>     Attrib V32    -0.07370828769063668
#>     Attrib V33    0.8021902705292533
#>     Attrib V34    0.22604752720524057
#>     Attrib V35    -0.05815363634522922
#>     Attrib V36    -0.26368072777225565
#>     Attrib V37    -0.30356299227126093
#>     Attrib V38    0.7614481131837353
#>     Attrib V39    0.24670808414839404
#>     Attrib V4    0.20728730652982405
#>     Attrib V40    -0.4983179035177759
#>     Attrib V41    -0.23096009892733974
#>     Attrib V42    0.061887888645219
#>     Attrib V43    0.09435727281984124
#>     Attrib V44    0.07429433143108784
#>     Attrib V45    0.3375182485559029
#>     Attrib V46    0.1945113740449931
#>     Attrib V47    -0.3177771903632509
#>     Attrib V48    -0.12200403129282837
#>     Attrib V49    0.16251391827663259
#>     Attrib V5    0.3000863415570079
#>     Attrib V50    -0.16525040237830477
#>     Attrib V51    0.3432076635066455
#>     Attrib V52    -0.022198709826480707
#>     Attrib V53    0.004787855240810091
#>     Attrib V54    0.4223343430878184
#>     Attrib V55    -0.2889241302708699
#>     Attrib V56    0.13111114924732004
#>     Attrib V57    -0.3630380621975074
#>     Attrib V58    0.423321392358374
#>     Attrib V59    0.7455784613769247
#>     Attrib V6    -0.12462257762253107
#>     Attrib V60    0.6168483643235826
#>     Attrib V7    0.20679037156385494
#>     Attrib V8    -0.19653277904033237
#>     Attrib V9    0.4388093952598878
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.10913870361921697
#>     Attrib V1    0.34182287147080753
#>     Attrib V10    -1.031116978639621
#>     Attrib V11    -0.8226409334939887
#>     Attrib V12    -0.8164208971102992
#>     Attrib V13    -0.5512088037781634
#>     Attrib V14    0.5451513570680586
#>     Attrib V15    0.6576018726435258
#>     Attrib V16    0.559005838179182
#>     Attrib V17    0.2773600921274535
#>     Attrib V18    0.10769375635351679
#>     Attrib V19    0.06598340450945427
#>     Attrib V2    -0.03016343760131181
#>     Attrib V20    0.23273473964689523
#>     Attrib V21    0.01274554408157985
#>     Attrib V22    -0.29547475171406995
#>     Attrib V23    -0.5367757094714414
#>     Attrib V24    -0.8403686378167234
#>     Attrib V25    -0.6223474854740205
#>     Attrib V26    -0.4468344722613079
#>     Attrib V27    -0.4463772225504327
#>     Attrib V28    -0.9068347015648444
#>     Attrib V29    -0.2668235402327708
#>     Attrib V3    0.11257993120206516
#>     Attrib V30    -0.1504198825759555
#>     Attrib V31    0.45109450742383056
#>     Attrib V32    -0.07914277377585824
#>     Attrib V33    -0.5483513479673636
#>     Attrib V34    0.24145941342536872
#>     Attrib V35    0.2440557516085559
#>     Attrib V36    0.4951317206132984
#>     Attrib V37    0.29676217553287765
#>     Attrib V38    0.04697001344381125
#>     Attrib V39    0.31066905536048217
#>     Attrib V4    -0.29352725226701043
#>     Attrib V40    0.5717354458130907
#>     Attrib V41    -0.10476457421096418
#>     Attrib V42    -0.333918055042749
#>     Attrib V43    -0.5498380498763787
#>     Attrib V44    -0.27718169149350846
#>     Attrib V45    -0.17329370717878612
#>     Attrib V46    -0.6003393411510786
#>     Attrib V47    -0.4712741756303904
#>     Attrib V48    -0.27055126916655703
#>     Attrib V49    -0.7701469903558226
#>     Attrib V5    -0.8859975342861318
#>     Attrib V50    0.3493869467126893
#>     Attrib V51    -1.0508814726276983
#>     Attrib V52    -0.21611822748963352
#>     Attrib V53    -0.11663272965705081
#>     Attrib V54    -0.5370786939103315
#>     Attrib V55    0.5371567811929827
#>     Attrib V56    0.5475219893338079
#>     Attrib V57    0.864444386225957
#>     Attrib V58    -0.3447646298453573
#>     Attrib V59    0.16599717808570505
#>     Attrib V6    -0.5103779345751477
#>     Attrib V60    0.13941577679645645
#>     Attrib V7    -0.10247871447327975
#>     Attrib V8    -0.08255928461064803
#>     Attrib V9    -0.984097097176855
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.28105682261627074
#>     Attrib V1    0.1691239945589564
#>     Attrib V10    0.28678695415772143
#>     Attrib V11    0.06229550058831035
#>     Attrib V12    0.1254844081290271
#>     Attrib V13    0.2959727311930041
#>     Attrib V14    -0.2164679584927149
#>     Attrib V15    -0.18520432642777956
#>     Attrib V16    -0.2780360963421722
#>     Attrib V17    0.02892023292013561
#>     Attrib V18    0.2667311071882519
#>     Attrib V19    0.28374857086361965
#>     Attrib V2    -0.055516959642330735
#>     Attrib V20    0.3469629786231553
#>     Attrib V21    0.47007793205547943
#>     Attrib V22    0.4448215826983657
#>     Attrib V23    0.23196018278353103
#>     Attrib V24    0.5517844680459958
#>     Attrib V25    0.09512969612714761
#>     Attrib V26    -0.4364139653671687
#>     Attrib V27    -0.4826050487230003
#>     Attrib V28    0.07725166272493801
#>     Attrib V29    -0.11659013584526384
#>     Attrib V3    -0.07581778983946176
#>     Attrib V30    -0.15191475277254196
#>     Attrib V31    -0.6686061909457933
#>     Attrib V32    -0.017809751099736818
#>     Attrib V33    0.6907230428289547
#>     Attrib V34    0.0970759905020223
#>     Attrib V35    -0.06398602874820698
#>     Attrib V36    -0.2512639676896942
#>     Attrib V37    -0.20613768735197854
#>     Attrib V38    0.6465690939767811
#>     Attrib V39    0.18936684011169858
#>     Attrib V4    0.13829025557813932
#>     Attrib V40    -0.43659147624360234
#>     Attrib V41    -0.1875312411081071
#>     Attrib V42    0.051003133504101926
#>     Attrib V43    0.2152780974785524
#>     Attrib V44    0.018095551148188668
#>     Attrib V45    0.3080676716069202
#>     Attrib V46    0.24180472707022413
#>     Attrib V47    -0.16365894380177756
#>     Attrib V48    -0.11073800165462198
#>     Attrib V49    0.219513715876458
#>     Attrib V5    0.3028839777457613
#>     Attrib V50    -0.20369192368239944
#>     Attrib V51    0.38840864225285565
#>     Attrib V52    0.04244819772426371
#>     Attrib V53    -0.030719497494819413
#>     Attrib V54    0.354206017727732
#>     Attrib V55    -0.24607037944729201
#>     Attrib V56    0.09134480299992641
#>     Attrib V57    -0.42074775498674166
#>     Attrib V58    0.3247796221775634
#>     Attrib V59    0.4873805786630493
#>     Attrib V6    -0.06935789049793607
#>     Attrib V60    0.4124302978268439
#>     Attrib V7    0.14261308413708584
#>     Attrib V8    -0.15505085356660905
#>     Attrib V9    0.41680676817379003
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.23812130742683377
#>     Attrib V1    0.0042186689327330254
#>     Attrib V10    -0.1461239067270185
#>     Attrib V11    -0.13571483351630972
#>     Attrib V12    -0.2174845826577284
#>     Attrib V13    -0.2004839260789198
#>     Attrib V14    0.11939827540395255
#>     Attrib V15    0.13517142407183516
#>     Attrib V16    0.19726360436642779
#>     Attrib V17    0.19383200842117956
#>     Attrib V18    0.04385167763711095
#>     Attrib V19    0.023266307626082627
#>     Attrib V2    0.06850733237182619
#>     Attrib V20    0.032031327952945
#>     Attrib V21    0.025888092105437
#>     Attrib V22    0.05707300863852212
#>     Attrib V23    0.013347781348342181
#>     Attrib V24    -0.2348536310248469
#>     Attrib V25    0.017756857929810146
#>     Attrib V26    0.11181640795951332
#>     Attrib V27    0.020154132569516033
#>     Attrib V28    -0.2074624957853995
#>     Attrib V29    -0.14896624115641674
#>     Attrib V3    0.07304579042737509
#>     Attrib V30    -0.01763167714021485
#>     Attrib V31    0.30185358086740255
#>     Attrib V32    4.987875128720815E-4
#>     Attrib V33    -0.2849653539360954
#>     Attrib V34    -0.010333491343952611
#>     Attrib V35    0.15251109989139908
#>     Attrib V36    0.20775667618569973
#>     Attrib V37    0.1852764615949715
#>     Attrib V38    -0.22828424705916317
#>     Attrib V39    0.01217699881951147
#>     Attrib V4    -0.0015047269090494738
#>     Attrib V40    0.24301019858145678
#>     Attrib V41    0.033918899008706024
#>     Attrib V42    -0.07380732253704292
#>     Attrib V43    -0.15258175201371307
#>     Attrib V44    -0.0358285005493679
#>     Attrib V45    -0.05181605592080997
#>     Attrib V46    -0.14487126970986455
#>     Attrib V47    -0.015645223256897975
#>     Attrib V48    -0.001766484261061676
#>     Attrib V49    -0.18564423441129277
#>     Attrib V5    -0.1756795971713076
#>     Attrib V50    0.11704633178984375
#>     Attrib V51    -0.25374220310068674
#>     Attrib V52    0.027166522128322032
#>     Attrib V53    0.03886432838915732
#>     Attrib V54    -0.2645931714285029
#>     Attrib V55    0.07062572230671445
#>     Attrib V56    0.06119624300428744
#>     Attrib V57    0.16203865486962585
#>     Attrib V58    -0.09006767474339643
#>     Attrib V59    -0.12778249492785884
#>     Attrib V6    -0.07160860304739244
#>     Attrib V60    -0.07693994791029213
#>     Attrib V7    -0.16964333653358996
#>     Attrib V8    0.02069833099736517
#>     Attrib V9    -0.22543482216888794
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.2875455625565546
#>     Attrib V1    0.47599083209036963
#>     Attrib V10    0.08539278805995655
#>     Attrib V11    -0.2694167827571564
#>     Attrib V12    -0.15316558093239047
#>     Attrib V13    0.3149815053281196
#>     Attrib V14    -0.07581548957433365
#>     Attrib V15    0.016198980990666387
#>     Attrib V16    -0.12624861229827686
#>     Attrib V17    0.1544779614289934
#>     Attrib V18    0.36792796871518696
#>     Attrib V19    0.4276717358850608
#>     Attrib V2    0.05713594985890833
#>     Attrib V20    0.5314496844998472
#>     Attrib V21    0.5089235388866381
#>     Attrib V22    0.43718972305792675
#>     Attrib V23    0.2779187781731734
#>     Attrib V24    0.4600894057292814
#>     Attrib V25    -0.27497467867036274
#>     Attrib V26    -0.8173928045300302
#>     Attrib V27    -0.9113039519170077
#>     Attrib V28    -0.288927938179588
#>     Attrib V29    -0.4334535912832052
#>     Attrib V3    -0.06347974496260847
#>     Attrib V30    -0.3276428078607535
#>     Attrib V31    -0.7544147300468566
#>     Attrib V32    -0.16295816579606232
#>     Attrib V33    0.8362006557927552
#>     Attrib V34    0.29272015025304954
#>     Attrib V35    -0.06919488231649687
#>     Attrib V36    -0.36902955523601355
#>     Attrib V37    -0.35725537559371506
#>     Attrib V38    0.8117249563294971
#>     Attrib V39    0.25927387312632144
#>     Attrib V4    0.22469284084441804
#>     Attrib V40    -0.35972680940931767
#>     Attrib V41    -0.17187782859192333
#>     Attrib V42    0.11705549367231867
#>     Attrib V43    0.09522031878160242
#>     Attrib V44    -0.026585170134044933
#>     Attrib V45    0.20724652880848998
#>     Attrib V46    0.17085363534143322
#>     Attrib V47    -0.34127676735429674
#>     Attrib V48    -0.14958798284956648
#>     Attrib V49    0.12704796234399993
#>     Attrib V5    0.2257822577604942
#>     Attrib V50    -0.09818452057068928
#>     Attrib V51    0.23176326453844026
#>     Attrib V52    -0.025335978879479748
#>     Attrib V53    0.07966771299645742
#>     Attrib V54    0.43776363594384216
#>     Attrib V55    -0.22273382097603725
#>     Attrib V56    0.28621723756398776
#>     Attrib V57    -0.20543732814774743
#>     Attrib V58    0.3998681691865648
#>     Attrib V59    0.8899532661178154
#>     Attrib V6    -0.15556947056802425
#>     Attrib V60    0.7749945455949296
#>     Attrib V7    0.32129715052195995
#>     Attrib V8    -0.21086312310953906
#>     Attrib V9    0.29946976482733606
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.11101110672024478
#>     Attrib V1    0.3923800613482074
#>     Attrib V10    -0.08045661740343227
#>     Attrib V11    -0.2143637721636361
#>     Attrib V12    -0.06010931771536715
#>     Attrib V13    0.15565362240223343
#>     Attrib V14    0.09686909612102339
#>     Attrib V15    0.13763974142120755
#>     Attrib V16    0.016027511943334318
#>     Attrib V17    0.10803090112343137
#>     Attrib V18    0.3066525246950494
#>     Attrib V19    0.229668062043468
#>     Attrib V2    0.06090949283423829
#>     Attrib V20    0.3195328423641726
#>     Attrib V21    0.31618307755646
#>     Attrib V22    0.11253266426253025
#>     Attrib V23    -0.005754325789301604
#>     Attrib V24    0.07125349056711239
#>     Attrib V25    -0.3761826696336153
#>     Attrib V26    -0.638967159021916
#>     Attrib V27    -0.6116973634674815
#>     Attrib V28    -0.22595658775288255
#>     Attrib V29    -0.2587940881595569
#>     Attrib V3    0.08852389272273217
#>     Attrib V30    -0.2565006846210173
#>     Attrib V31    -0.5989146598045783
#>     Attrib V32    -0.18189132459948662
#>     Attrib V33    0.46031130714257207
#>     Attrib V34    0.1637995901241752
#>     Attrib V35    -0.037808699801580824
#>     Attrib V36    -0.10142112826971221
#>     Attrib V37    -0.10222352748341233
#>     Attrib V38    0.5046269280833561
#>     Attrib V39    0.26230755643506315
#>     Attrib V4    0.17094904072191294
#>     Attrib V40    -0.20180496843871285
#>     Attrib V41    -0.10712300648300584
#>     Attrib V42    0.09867866676636361
#>     Attrib V43    -0.01913398368068698
#>     Attrib V44    -0.0425251085645639
#>     Attrib V45    0.12899634496944637
#>     Attrib V46    0.09311851876115382
#>     Attrib V47    -0.25121023692941924
#>     Attrib V48    -0.14165153024154004
#>     Attrib V49    0.0805329141851664
#>     Attrib V5    0.20755476785008725
#>     Attrib V50    -0.02193293712455561
#>     Attrib V51    0.1607829000657719
#>     Attrib V52    -0.007288158908110792
#>     Attrib V53    0.07320292805748851
#>     Attrib V54    0.27355853273552605
#>     Attrib V55    0.005672069535846828
#>     Attrib V56    0.2634165994877361
#>     Attrib V57    0.001014583719612618
#>     Attrib V58    0.32607049648443526
#>     Attrib V59    0.611325910057071
#>     Attrib V6    -0.051386553620107404
#>     Attrib V60    0.5687373596942362
#>     Attrib V7    0.1693868917001067
#>     Attrib V8    -0.18165142320169447
#>     Attrib V9    0.07066938226718118
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
#>  0.2463768 
```
