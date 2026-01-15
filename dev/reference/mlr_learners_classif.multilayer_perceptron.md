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
#>     Threshold    -0.2688209695342925
#>     Node 2    2.294160993280793
#>     Node 3    1.2421212459926765
#>     Node 4    1.0799006062139243
#>     Node 5    -2.8649509618606976
#>     Node 6    1.0541942765589494
#>     Node 7    4.021001507692409
#>     Node 8    0.2337019450198295
#>     Node 9    3.898654577828978
#>     Node 10    -1.0815343136482922
#>     Node 11    1.1454855309125827
#>     Node 12    1.3503878782210763
#>     Node 13    0.9452579288754487
#>     Node 14    0.7681358402880422
#>     Node 15    -2.5369013401091483
#>     Node 16    -0.5444593428684067
#>     Node 17    -0.7752874030228705
#>     Node 18    -0.24599439149974905
#>     Node 19    1.237566195583493
#>     Node 20    1.3065303196973637
#>     Node 21    -2.670446358389257
#>     Node 22    -0.6429445324958725
#>     Node 23    1.2817342935687979
#>     Node 24    -1.7842326604761816
#>     Node 25    3.415279183619903
#>     Node 26    -1.0371209106679875
#>     Node 27    1.1437223444330462
#>     Node 28    -3.984777260386115
#>     Node 29    1.175005408206308
#>     Node 30    -0.08384961337953546
#>     Node 31    1.3611696227073737
#>     Node 32    0.1586826155367325
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.3064782617916762
#>     Node 2    -2.34250046953267
#>     Node 3    -1.2373709077498414
#>     Node 4    -1.0485715800471065
#>     Node 5    2.866026679683999
#>     Node 6    -1.0410236803237827
#>     Node 7    -4.0146552689722155
#>     Node 8    -0.27215419119049733
#>     Node 9    -3.8909121043663215
#>     Node 10    1.0277011427292364
#>     Node 11    -1.119693956988342
#>     Node 12    -1.4129849475060348
#>     Node 13    -0.8953770907117635
#>     Node 14    -0.7094936548234672
#>     Node 15    2.53013124788003
#>     Node 16    0.5237859347347621
#>     Node 17    0.8070691392315823
#>     Node 18    0.28230876964282003
#>     Node 19    -1.2163121376302248
#>     Node 20    -1.2839282532841876
#>     Node 21    2.7266462106418343
#>     Node 22    0.5894020498043935
#>     Node 23    -1.3404937264692833
#>     Node 24    1.7777686122054026
#>     Node 25    -3.4009548435135315
#>     Node 26    0.9731005896426391
#>     Node 27    -1.1921897677396947
#>     Node 28    3.9783578419796677
#>     Node 29    -1.2124135323711998
#>     Node 30    0.15345713827885188
#>     Node 31    -1.3245124927314897
#>     Node 32    -0.18644708677839922
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.028699953222101764
#>     Attrib V1    0.16724842729445455
#>     Attrib V10    0.722768649432326
#>     Attrib V11    0.593362415701452
#>     Attrib V12    0.41717263148318856
#>     Attrib V13    0.4712613145163265
#>     Attrib V14    0.1081251963869972
#>     Attrib V15    -0.36691832762040816
#>     Attrib V16    -0.40026795919059516
#>     Attrib V17    -0.3631995181234822
#>     Attrib V18    -0.09840560308753453
#>     Attrib V19    0.1742117907869056
#>     Attrib V2    0.1212741738431923
#>     Attrib V20    0.4531263350795956
#>     Attrib V21    0.16253028770450065
#>     Attrib V22    -4.4150261929470544E-4
#>     Attrib V23    0.34776527058969636
#>     Attrib V24    0.4111605507269362
#>     Attrib V25    0.30099647125788187
#>     Attrib V26    0.6992943619565223
#>     Attrib V27    1.1929827190689
#>     Attrib V28    1.1323319158539193
#>     Attrib V29    0.5130145886339696
#>     Attrib V3    0.10539150776248965
#>     Attrib V30    0.48450844856620834
#>     Attrib V31    -0.8257121870284652
#>     Attrib V32    -0.07459973431877333
#>     Attrib V33    -0.1525057634465739
#>     Attrib V34    -0.13259179973636362
#>     Attrib V35    0.32464851157246727
#>     Attrib V36    -0.48007798354929127
#>     Attrib V37    -0.7676789717595055
#>     Attrib V38    0.2597369634910257
#>     Attrib V39    0.23567448793295595
#>     Attrib V4    0.23410696835317968
#>     Attrib V40    0.08185753659340841
#>     Attrib V41    0.2008946935275682
#>     Attrib V42    0.28694429696412366
#>     Attrib V43    0.21123654717760207
#>     Attrib V44    0.3379214263322498
#>     Attrib V45    0.40385005985737094
#>     Attrib V46    0.2579026608780481
#>     Attrib V47    0.22043396748923702
#>     Attrib V48    0.666160584709009
#>     Attrib V49    0.988275178299053
#>     Attrib V5    -0.03101332910869812
#>     Attrib V50    -0.07420259699307961
#>     Attrib V51    0.6807656352567153
#>     Attrib V52    0.7314455138935769
#>     Attrib V53    0.554102154015106
#>     Attrib V54    0.028539542770455343
#>     Attrib V55    -0.549722993142087
#>     Attrib V56    0.00885226517929821
#>     Attrib V57    -1.00999778510548
#>     Attrib V58    0.024535864511512608
#>     Attrib V59    -0.4991309793851118
#>     Attrib V6    -0.49547882697387
#>     Attrib V60    0.054513208714395744
#>     Attrib V7    -0.21996379399844757
#>     Attrib V8    -0.3071320675392966
#>     Attrib V9    0.8546810209964831
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.29003618744599124
#>     Attrib V1    0.5250105372555335
#>     Attrib V10    0.005747618975803734
#>     Attrib V11    -0.0496354472329201
#>     Attrib V12    -0.14616289984135045
#>     Attrib V13    0.061881118893338555
#>     Attrib V14    0.02845816068585372
#>     Attrib V15    0.23549474571420456
#>     Attrib V16    0.20310787423906476
#>     Attrib V17    0.13357783234757464
#>     Attrib V18    -0.03966849726008115
#>     Attrib V19    0.2685016435102998
#>     Attrib V2    0.38949695253633654
#>     Attrib V20    0.4522122499916026
#>     Attrib V21    0.18766704672538176
#>     Attrib V22    0.25684156382705486
#>     Attrib V23    0.32434383635858005
#>     Attrib V24    0.21667127627843263
#>     Attrib V25    -0.13884824218487846
#>     Attrib V26    -0.6439536486475321
#>     Attrib V27    -0.6787727072754417
#>     Attrib V28    -0.2286770789815873
#>     Attrib V29    -0.3712294501213234
#>     Attrib V3    0.30436634786663136
#>     Attrib V30    0.08313365693500466
#>     Attrib V31    -0.6102560502176797
#>     Attrib V32    0.263642887775431
#>     Attrib V33    0.321429485363317
#>     Attrib V34    -0.07532198141556427
#>     Attrib V35    0.09111876908200851
#>     Attrib V36    -0.363486735260353
#>     Attrib V37    -0.6506410754283662
#>     Attrib V38    0.1259904395524009
#>     Attrib V39    0.09016811114889853
#>     Attrib V4    -0.13000273939042847
#>     Attrib V40    -0.2918226426172609
#>     Attrib V41    -0.12199931220564389
#>     Attrib V42    0.34189686428496496
#>     Attrib V43    0.10688155451164341
#>     Attrib V44    0.1894454807840868
#>     Attrib V45    0.20744669236025196
#>     Attrib V46    0.12056005381581208
#>     Attrib V47    -0.05262997804106002
#>     Attrib V48    -0.04992202473301819
#>     Attrib V49    0.24577342876047514
#>     Attrib V5    -0.38677998978962647
#>     Attrib V50    -0.30532509425436055
#>     Attrib V51    0.203826567645139
#>     Attrib V52    -0.016722407385197122
#>     Attrib V53    0.11433597474894848
#>     Attrib V54    0.2237887530375141
#>     Attrib V55    -0.32741555116505633
#>     Attrib V56    0.3439792951988527
#>     Attrib V57    -0.14017931155061877
#>     Attrib V58    0.5671285016103673
#>     Attrib V59    0.1158785672757894
#>     Attrib V6    -0.4780976947808087
#>     Attrib V60    0.19158831402795717
#>     Attrib V7    0.0663868474928543
#>     Attrib V8    -0.2903923512537504
#>     Attrib V9    0.1519293904707885
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.2558304832680666
#>     Attrib V1    0.4192025229522939
#>     Attrib V10    0.012373195376670308
#>     Attrib V11    -0.0228998856087596
#>     Attrib V12    -0.14188046368633775
#>     Attrib V13    0.06888273006888401
#>     Attrib V14    0.040280342142597035
#>     Attrib V15    0.19447070263544342
#>     Attrib V16    0.1829261546559822
#>     Attrib V17    0.12656532029112114
#>     Attrib V18    -0.016371759945154725
#>     Attrib V19    0.2161224075027003
#>     Attrib V2    0.2937668307710328
#>     Attrib V20    0.40990384710565353
#>     Attrib V21    0.2346217428132024
#>     Attrib V22    0.17493673889667022
#>     Attrib V23    0.2739732772146806
#>     Attrib V24    0.15873468345582198
#>     Attrib V25    -0.20314375954254626
#>     Attrib V26    -0.5707658176282672
#>     Attrib V27    -0.5829848570129115
#>     Attrib V28    -0.10153405792530501
#>     Attrib V29    -0.18449974289907708
#>     Attrib V3    0.2829515570025167
#>     Attrib V30    0.07107519432722754
#>     Attrib V31    -0.5748876508891902
#>     Attrib V32    0.19716729032511515
#>     Attrib V33    0.26946389124520226
#>     Attrib V34    -0.04109611884352549
#>     Attrib V35    0.10086820206936213
#>     Attrib V36    -0.3272542111652197
#>     Attrib V37    -0.5695616045172657
#>     Attrib V38    0.12366113691324618
#>     Attrib V39    0.0763075878011881
#>     Attrib V4    -0.11157554400566198
#>     Attrib V40    -0.27667794370413284
#>     Attrib V41    -0.13527179558604202
#>     Attrib V42    0.32482771673043576
#>     Attrib V43    0.08660853755978407
#>     Attrib V44    0.19460258808655603
#>     Attrib V45    0.279568387669346
#>     Attrib V46    0.08332469552574491
#>     Attrib V47    -0.09576852020295779
#>     Attrib V48    0.02804898598835354
#>     Attrib V49    0.2988306752211843
#>     Attrib V5    -0.3067277417693969
#>     Attrib V50    -0.27793170049433163
#>     Attrib V51    0.2449262679831261
#>     Attrib V52    -0.02259646960783073
#>     Attrib V53    0.16117748456148717
#>     Attrib V54    0.09783071078838536
#>     Attrib V55    -0.37892423916225115
#>     Attrib V56    0.29954368080862387
#>     Attrib V57    -0.13166041407590964
#>     Attrib V58    0.45148567527088035
#>     Attrib V59    0.0500179245789357
#>     Attrib V6    -0.43026551840865196
#>     Attrib V60    0.12686722891972219
#>     Attrib V7    0.0639545729152103
#>     Attrib V8    -0.32100325811181873
#>     Attrib V9    0.2146459408608071
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.3154550776263926
#>     Attrib V1    0.03372413976305867
#>     Attrib V10    -0.7093552282212237
#>     Attrib V11    -1.0917577128725353
#>     Attrib V12    -1.1425194568587635
#>     Attrib V13    -0.9339161789371876
#>     Attrib V14    -0.15556009239906202
#>     Attrib V15    -0.2733188411155502
#>     Attrib V16    -0.3553932652536807
#>     Attrib V17    -0.3090664643184641
#>     Attrib V18    -0.3464190770587766
#>     Attrib V19    -0.8581589995846399
#>     Attrib V2    0.037330559120785575
#>     Attrib V20    -1.2828062906282625
#>     Attrib V21    -1.0444249648486763
#>     Attrib V22    -0.664804998615602
#>     Attrib V23    0.18087735613813705
#>     Attrib V24    -0.01264420427400366
#>     Attrib V25    -0.14889975227531965
#>     Attrib V26    -0.18700459430844504
#>     Attrib V27    0.15244472759651806
#>     Attrib V28    0.2827330323426022
#>     Attrib V29    0.30697041600326574
#>     Attrib V3    0.12966079888571774
#>     Attrib V30    -0.6717523183620929
#>     Attrib V31    0.5162763550231728
#>     Attrib V32    0.2821304166798275
#>     Attrib V33    0.3010788566505826
#>     Attrib V34    0.19574325802679146
#>     Attrib V35    0.1353875459485585
#>     Attrib V36    1.4687094589771221
#>     Attrib V37    1.6898682180436582
#>     Attrib V38    -0.14122946817822832
#>     Attrib V39    -0.130535628251135
#>     Attrib V4    0.1757552616081316
#>     Attrib V40    0.26029969723467
#>     Attrib V41    0.37256755046877615
#>     Attrib V42    0.2747767206780833
#>     Attrib V43    0.17813336380487996
#>     Attrib V44    0.22785338458651086
#>     Attrib V45    -0.4215876501946709
#>     Attrib V46    -0.3434232707052878
#>     Attrib V47    -0.561790506776059
#>     Attrib V48    -0.8574235088726648
#>     Attrib V49    -0.8363947171443579
#>     Attrib V5    0.4588756046623615
#>     Attrib V50    0.612318796262122
#>     Attrib V51    -0.3599590118763124
#>     Attrib V52    -0.17163591583644494
#>     Attrib V53    -0.07575619853774046
#>     Attrib V54    0.36846233838021647
#>     Attrib V55    0.5366169088602681
#>     Attrib V56    -0.2502069695070796
#>     Attrib V57    0.36538219976029945
#>     Attrib V58    0.10291785414722998
#>     Attrib V59    0.048964371400274743
#>     Attrib V6    1.2024995646706478
#>     Attrib V60    0.2571335264521776
#>     Attrib V7    0.2389539182845867
#>     Attrib V8    0.7192758752495138
#>     Attrib V9    -0.7202805549045942
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.2170194090656527
#>     Attrib V1    0.48967839439788347
#>     Attrib V10    -0.03674972959750897
#>     Attrib V11    -0.02732484196203992
#>     Attrib V12    -0.09667993008641813
#>     Attrib V13    -0.02058722420518571
#>     Attrib V14    -0.014749850703443588
#>     Attrib V15    0.14597995940706404
#>     Attrib V16    0.24699962443689152
#>     Attrib V17    0.11899581185059409
#>     Attrib V18    0.0466878412025175
#>     Attrib V19    0.198574537327341
#>     Attrib V2    0.3144397500235535
#>     Attrib V20    0.38538134414448055
#>     Attrib V21    0.19920860062650805
#>     Attrib V22    0.17282836951843752
#>     Attrib V23    0.2718361880747097
#>     Attrib V24    0.23832452747874744
#>     Attrib V25    -0.08576578344575589
#>     Attrib V26    -0.5629642865806036
#>     Attrib V27    -0.5781180317005822
#>     Attrib V28    -0.2628585883770878
#>     Attrib V29    -0.31365808725562355
#>     Attrib V3    0.23527674855076555
#>     Attrib V30    0.022679971987892743
#>     Attrib V31    -0.5490301449823775
#>     Attrib V32    0.23890510952498248
#>     Attrib V33    0.2797047777253692
#>     Attrib V34    -0.04217817817977615
#>     Attrib V35    0.11354350599537716
#>     Attrib V36    -0.32007404745406703
#>     Attrib V37    -0.5475380721061419
#>     Attrib V38    0.10123677401416245
#>     Attrib V39    0.02746267984606334
#>     Attrib V4    -0.12244051604707502
#>     Attrib V40    -0.3093801887745174
#>     Attrib V41    -0.08553022379744565
#>     Attrib V42    0.31387862630814556
#>     Attrib V43    0.1028481891885471
#>     Attrib V44    0.14845826895126482
#>     Attrib V45    0.2094799151270226
#>     Attrib V46    0.12943786546380953
#>     Attrib V47    -0.06907020630382621
#>     Attrib V48    -0.022763508788202467
#>     Attrib V49    0.22238996000922534
#>     Attrib V5    -0.34357419887415885
#>     Attrib V50    -0.23858691988403424
#>     Attrib V51    0.21653210230166262
#>     Attrib V52    -0.046738980382172536
#>     Attrib V53    0.17089644223059536
#>     Attrib V54    0.14153440416993693
#>     Attrib V55    -0.3239364692410299
#>     Attrib V56    0.3018960049631771
#>     Attrib V57    -0.09558524737749963
#>     Attrib V58    0.48457517567260455
#>     Attrib V59    0.13256224844356565
#>     Attrib V6    -0.3318289591115731
#>     Attrib V60    0.21769986183574688
#>     Attrib V7    0.09059490631272414
#>     Attrib V8    -0.2369426779775158
#>     Attrib V9    0.20505004668631308
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.12291072532801
#>     Attrib V1    0.3055052872858045
#>     Attrib V10    0.6523545720369739
#>     Attrib V11    0.7963369840900916
#>     Attrib V12    0.5757756408792004
#>     Attrib V13    0.5775130139670065
#>     Attrib V14    0.42790053041252674
#>     Attrib V15    -0.30899961713921753
#>     Attrib V16    -0.5546754425696209
#>     Attrib V17    -0.6576175404415918
#>     Attrib V18    -0.29213214439909563
#>     Attrib V19    -0.03661930368851544
#>     Attrib V2    0.3460926121325455
#>     Attrib V20    0.4201907031989244
#>     Attrib V21    0.3104542471966676
#>     Attrib V22    0.010584708792306958
#>     Attrib V23    0.38432144395285006
#>     Attrib V24    0.4116934336520154
#>     Attrib V25    0.4099844290950304
#>     Attrib V26    1.6180810228008613
#>     Attrib V27    2.3144160992254985
#>     Attrib V28    1.7925531526720024
#>     Attrib V29    1.4078353939698953
#>     Attrib V3    0.018126934946810887
#>     Attrib V30    0.6872314936311029
#>     Attrib V31    -0.9271722415152251
#>     Attrib V32    -0.4426829122906955
#>     Attrib V33    -0.6422080166651623
#>     Attrib V34    -0.4158610561130831
#>     Attrib V35    0.05867946353958101
#>     Attrib V36    -0.7352173599498312
#>     Attrib V37    -0.5669398566450943
#>     Attrib V38    0.4660942855136321
#>     Attrib V39    0.6191358015699079
#>     Attrib V4    0.8166690437574107
#>     Attrib V40    0.5813707760271132
#>     Attrib V41    0.5480549839042727
#>     Attrib V42    0.145652475642154
#>     Attrib V43    0.18542736101805726
#>     Attrib V44    0.3630619114421668
#>     Attrib V45    0.40114294409926193
#>     Attrib V46    0.296880811459266
#>     Attrib V47    0.3117563611626019
#>     Attrib V48    0.8972689816459729
#>     Attrib V49    1.405486775304727
#>     Attrib V5    0.32821988153157383
#>     Attrib V50    0.26159111331342616
#>     Attrib V51    1.0979702584155964
#>     Attrib V52    1.1013890986266417
#>     Attrib V53    0.7563669073421124
#>     Attrib V54    0.22180703394224482
#>     Attrib V55    -0.15102889190233856
#>     Attrib V56    0.04041175700991967
#>     Attrib V57    -1.0448313537325589
#>     Attrib V58    -0.06530338747345053
#>     Attrib V59    -0.5483526077970395
#>     Attrib V6    -0.3147261053278343
#>     Attrib V60    0.09790256748008436
#>     Attrib V7    -0.16843687936881085
#>     Attrib V8    -0.4686706980920635
#>     Attrib V9    0.8839236282327274
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.10071759271662323
#>     Attrib V1    0.14587404410126661
#>     Attrib V10    0.039023071418393535
#>     Attrib V11    0.03456227227123462
#>     Attrib V12    -0.028320163691440397
#>     Attrib V13    0.04066945529688213
#>     Attrib V14    0.00488234110954216
#>     Attrib V15    0.04056678605424085
#>     Attrib V16    0.09099854515852766
#>     Attrib V17    0.03702815684079092
#>     Attrib V18    -0.006124957036765482
#>     Attrib V19    0.06443014723916736
#>     Attrib V2    0.12827608574527818
#>     Attrib V20    0.0509887175008219
#>     Attrib V21    0.008670688918471704
#>     Attrib V22    -0.034979740625729665
#>     Attrib V23    0.01910702607018166
#>     Attrib V24    0.06212974450965427
#>     Attrib V25    -0.024037219772500985
#>     Attrib V26    -0.11327295572747342
#>     Attrib V27    -0.13516357972432488
#>     Attrib V28    -0.04061370760070764
#>     Attrib V29    -0.06398932671988145
#>     Attrib V3    0.08999856656707057
#>     Attrib V30    0.045680311447443944
#>     Attrib V31    -0.14078312393273362
#>     Attrib V32    0.07723328553525195
#>     Attrib V33    0.11863352549120745
#>     Attrib V34    0.01643297980303033
#>     Attrib V35    0.08236895281359628
#>     Attrib V36    -0.006767045179364084
#>     Attrib V37    -0.11263236275896636
#>     Attrib V38    0.13080251265243767
#>     Attrib V39    0.040347439205134346
#>     Attrib V4    0.02419398892583297
#>     Attrib V40    -0.07585591181797972
#>     Attrib V41    -0.026257634064062205
#>     Attrib V42    0.023145567280056917
#>     Attrib V43    0.058463123235944596
#>     Attrib V44    0.14435057144818117
#>     Attrib V45    0.13085237537250674
#>     Attrib V46    0.06610591928240751
#>     Attrib V47    0.03187300834092415
#>     Attrib V48    0.12131370647307214
#>     Attrib V49    0.14705701373849944
#>     Attrib V5    -0.11909616280350319
#>     Attrib V50    -0.0557987589855567
#>     Attrib V51    0.11616452554892459
#>     Attrib V52    0.04328307495756536
#>     Attrib V53    0.17230013617583595
#>     Attrib V54    0.09718171682923198
#>     Attrib V55    -0.07157589446206544
#>     Attrib V56    0.078313760297471
#>     Attrib V57    0.07230734174070297
#>     Attrib V58    0.11885309199369774
#>     Attrib V59    0.08618645015335877
#>     Attrib V6    -0.15580600323744756
#>     Attrib V60    0.09164286771091498
#>     Attrib V7    0.004680367327843657
#>     Attrib V8    -0.11175422744140247
#>     Attrib V9    0.07699103926392939
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.07085224562446987
#>     Attrib V1    0.09487435228225055
#>     Attrib V10    0.8872972681019169
#>     Attrib V11    1.109414676343187
#>     Attrib V12    1.0473292858511905
#>     Attrib V13    0.6363598012403405
#>     Attrib V14    0.04358289364608434
#>     Attrib V15    -0.6891539940342708
#>     Attrib V16    -0.7363346492466342
#>     Attrib V17    -0.6305219007471512
#>     Attrib V18    -0.21715218157765492
#>     Attrib V19    -0.0013891896951682423
#>     Attrib V2    0.19985014784380747
#>     Attrib V20    0.2697745657887573
#>     Attrib V21    0.18818176228381267
#>     Attrib V22    0.010569662723680835
#>     Attrib V23    0.5024572851757253
#>     Attrib V24    0.8469377705057707
#>     Attrib V25    0.9788525399791288
#>     Attrib V26    1.745619253226725
#>     Attrib V27    2.0168442878626287
#>     Attrib V28    1.084773181371911
#>     Attrib V29    0.27767334060650684
#>     Attrib V3    -0.15773637116118647
#>     Attrib V30    0.3255417675940941
#>     Attrib V31    -0.6956907774499433
#>     Attrib V32    -0.1424120880236332
#>     Attrib V33    -0.39244808087563837
#>     Attrib V34    -0.030893930744287233
#>     Attrib V35    0.3358094937778822
#>     Attrib V36    -0.6102945460927053
#>     Attrib V37    -0.7508116141489289
#>     Attrib V38    0.4137017921921159
#>     Attrib V39    0.7292042391296434
#>     Attrib V4    0.3670515434600872
#>     Attrib V40    0.6333628424692276
#>     Attrib V41    0.43663606460652177
#>     Attrib V42    -0.05301128655908703
#>     Attrib V43    0.26603349055834835
#>     Attrib V44    0.25390918377058647
#>     Attrib V45    0.18485465234757026
#>     Attrib V46    0.17351895299121292
#>     Attrib V47    0.35295855499439444
#>     Attrib V48    1.0962937012289495
#>     Attrib V49    1.4918938004115787
#>     Attrib V5    0.05150932255934694
#>     Attrib V50    0.20060762530364168
#>     Attrib V51    1.1832831468570317
#>     Attrib V52    1.0820234487031608
#>     Attrib V53    0.7419643598167618
#>     Attrib V54    0.1692383445516264
#>     Attrib V55    -0.013783252192496497
#>     Attrib V56    0.16331987462192168
#>     Attrib V57    -1.2021998435095098
#>     Attrib V58    -0.15495801620253685
#>     Attrib V59    -0.7452235285711168
#>     Attrib V6    -0.2705158297028105
#>     Attrib V60    -0.06845355296587692
#>     Attrib V7    -0.1907463214652729
#>     Attrib V8    -0.4389191111053908
#>     Attrib V9    1.045846894313657
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.1230302689946457
#>     Attrib V1    -0.14520802240117062
#>     Attrib V10    -0.16940954992951787
#>     Attrib V11    -0.2687872867419436
#>     Attrib V12    -0.13389929686129592
#>     Attrib V13    -0.17405185399545467
#>     Attrib V14    0.15000830218467454
#>     Attrib V15    -0.005289297834332469
#>     Attrib V16    -0.021393541078096864
#>     Attrib V17    -0.01457400318916063
#>     Attrib V18    0.13329839265430574
#>     Attrib V19    -0.054574578159120875
#>     Attrib V2    -0.19086510562857953
#>     Attrib V20    -0.18638157958025373
#>     Attrib V21    0.06672704304365425
#>     Attrib V22    0.03327583125700231
#>     Attrib V23    0.021010636484346826
#>     Attrib V24    -0.12188348955260284
#>     Attrib V25    0.027140679674506143
#>     Attrib V26    0.16296247326131125
#>     Attrib V27    0.0887220786409121
#>     Attrib V28    -0.11635239434990616
#>     Attrib V29    -0.007310405508133854
#>     Attrib V3    -0.028264146777021635
#>     Attrib V30    -0.28734153712296523
#>     Attrib V31    0.3734702534625374
#>     Attrib V32    -0.30197649254145764
#>     Attrib V33    -0.07068778176663428
#>     Attrib V34    0.14010543576401194
#>     Attrib V35    -0.05511084003880408
#>     Attrib V36    0.3528990732286087
#>     Attrib V37    0.5145964862660796
#>     Attrib V38    -0.2544408444130451
#>     Attrib V39    -0.1756143487358297
#>     Attrib V4    0.11870855547307685
#>     Attrib V40    0.245788677358077
#>     Attrib V41    0.22849169829709456
#>     Attrib V42    -0.11338306327869953
#>     Attrib V43    -0.07503965321197689
#>     Attrib V44    -0.18722481906978178
#>     Attrib V45    -0.29954768692012135
#>     Attrib V46    -0.18750276971125393
#>     Attrib V47    -0.015561099235051314
#>     Attrib V48    -0.25553376123482036
#>     Attrib V49    -0.4691451693126737
#>     Attrib V5    0.3233568594722453
#>     Attrib V50    0.3759593205563687
#>     Attrib V51    -0.23556157383623658
#>     Attrib V52    -0.15641073045328344
#>     Attrib V53    -0.08204550329276318
#>     Attrib V54    -0.020946939236012055
#>     Attrib V55    0.5075738274964042
#>     Attrib V56    -0.1293677820662454
#>     Attrib V57    0.40669689202894616
#>     Attrib V58    -0.20464636924099763
#>     Attrib V59    0.23021265936788954
#>     Attrib V6    0.556639053119033
#>     Attrib V60    0.10019674642307316
#>     Attrib V7    0.03359975389513702
#>     Attrib V8    0.3858075276362433
#>     Attrib V9    -0.31126934733306394
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.21745897417845955
#>     Attrib V1    0.42671111783746457
#>     Attrib V10    0.06616389962647222
#>     Attrib V11    0.05969954744325683
#>     Attrib V12    -0.03924773083524576
#>     Attrib V13    0.016997738412297795
#>     Attrib V14    -0.06862988315933612
#>     Attrib V15    0.0930255955610528
#>     Attrib V16    0.18521939705691504
#>     Attrib V17    0.16367312790756508
#>     Attrib V18    0.018986626593647308
#>     Attrib V19    0.2251739204284515
#>     Attrib V2    0.262674589507749
#>     Attrib V20    0.4517314010477096
#>     Attrib V21    0.15418196298669765
#>     Attrib V22    0.16131433019803998
#>     Attrib V23    0.2904150801868115
#>     Attrib V24    0.23115209648540017
#>     Attrib V25    -0.08247350856848039
#>     Attrib V26    -0.5798350669957202
#>     Attrib V27    -0.559266101150232
#>     Attrib V28    -0.14688475906215212
#>     Attrib V29    -0.34419619492989073
#>     Attrib V3    0.19479929327490417
#>     Attrib V30    0.07178135466621222
#>     Attrib V31    -0.6261552449217336
#>     Attrib V32    0.23356834491778714
#>     Attrib V33    0.2789824749282782
#>     Attrib V34    0.01668093159841536
#>     Attrib V35    0.17931748815941
#>     Attrib V36    -0.32132531253748636
#>     Attrib V37    -0.6537851482854388
#>     Attrib V38    0.20183458409502084
#>     Attrib V39    0.04172799608340028
#>     Attrib V4    -0.15998468636403046
#>     Attrib V40    -0.3245025791498952
#>     Attrib V41    -0.17975887800648774
#>     Attrib V42    0.30338251776711644
#>     Attrib V43    0.12137105825569851
#>     Attrib V44    0.23598091741514043
#>     Attrib V45    0.304909832506354
#>     Attrib V46    0.11384579987622964
#>     Attrib V47    -0.032717154084885416
#>     Attrib V48    0.08037394017430985
#>     Attrib V49    0.2938773644187
#>     Attrib V5    -0.34531391013611396
#>     Attrib V50    -0.314013235275966
#>     Attrib V51    0.2944349211868474
#>     Attrib V52    -0.030626393099574982
#>     Attrib V53    0.13081839914066568
#>     Attrib V54    0.2003391325170853
#>     Attrib V55    -0.4155332686779551
#>     Attrib V56    0.3147141165280058
#>     Attrib V57    -0.17583818272198184
#>     Attrib V58    0.4874189479273029
#>     Attrib V59    -0.03861682238631586
#>     Attrib V6    -0.4183053404009318
#>     Attrib V60    0.12732280420898812
#>     Attrib V7    0.033103503570892555
#>     Attrib V8    -0.28935508406674937
#>     Attrib V9    0.26076423949129546
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.20464361812251933
#>     Attrib V1    0.21977186992334363
#>     Attrib V10    0.31330424328824613
#>     Attrib V11    0.3607446102623678
#>     Attrib V12    0.046787277167953355
#>     Attrib V13    0.19789464552553393
#>     Attrib V14    -0.14295359500315016
#>     Attrib V15    -0.214370177645427
#>     Attrib V16    -0.12310995070874259
#>     Attrib V17    -0.19866448642730372
#>     Attrib V18    -0.2031049134417536
#>     Attrib V19    0.14160686777031958
#>     Attrib V2    0.1748490774449317
#>     Attrib V20    0.2825738038661814
#>     Attrib V21    -0.01847954531956409
#>     Attrib V22    0.016997173282157003
#>     Attrib V23    0.2217320513640041
#>     Attrib V24    0.2580948894214536
#>     Attrib V25    0.05052340699353979
#>     Attrib V26    -0.033000415098113314
#>     Attrib V27    0.24266014955080983
#>     Attrib V28    0.5025201066447359
#>     Attrib V29    0.18174411057260076
#>     Attrib V3    0.1006270162013683
#>     Attrib V30    0.4390876350343878
#>     Attrib V31    -0.6288432771453573
#>     Attrib V32    0.18815081464570382
#>     Attrib V33    0.2625041248150208
#>     Attrib V34    0.05056656992362312
#>     Attrib V35    0.3555181256382878
#>     Attrib V36    -0.3402576007341789
#>     Attrib V37    -0.7123981556629945
#>     Attrib V38    0.2756639810791049
#>     Attrib V39    0.06234487005308958
#>     Attrib V4    -0.04994659502158029
#>     Attrib V40    -0.19062613313619078
#>     Attrib V41    -0.034182258227001036
#>     Attrib V42    0.3484078638200003
#>     Attrib V43    0.27101347491149824
#>     Attrib V44    0.30686686187444756
#>     Attrib V45    0.48928262124887156
#>     Attrib V46    0.22213703206825622
#>     Attrib V47    -0.038449488504754735
#>     Attrib V48    0.28081150329954213
#>     Attrib V49    0.5090453060724681
#>     Attrib V5    -0.38086452567468065
#>     Attrib V50    -0.49248864625732436
#>     Attrib V51    0.25049100984417083
#>     Attrib V52    0.19159297347098583
#>     Attrib V53    0.23125632393920129
#>     Attrib V54    -0.01631586933197756
#>     Attrib V55    -0.8019549336189932
#>     Attrib V56    0.11047109900412252
#>     Attrib V57    -0.5198039310187312
#>     Attrib V58    0.30868567986114037
#>     Attrib V59    -0.18660653039902367
#>     Attrib V6    -0.669011610501705
#>     Attrib V60    0.026714315003030245
#>     Attrib V7    -0.07080409397576796
#>     Attrib V8    -0.4097685733794391
#>     Attrib V9    0.484421914287484
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.25105275717126185
#>     Attrib V1    0.40826818297261575
#>     Attrib V10    -0.017324070216853442
#>     Attrib V11    0.009930901892709018
#>     Attrib V12    -0.08527388731896053
#>     Attrib V13    0.10324767073354991
#>     Attrib V14    0.01570567713614511
#>     Attrib V15    0.12115198585643717
#>     Attrib V16    0.13092654527214717
#>     Attrib V17    0.12217135753757785
#>     Attrib V18    0.011275114148900811
#>     Attrib V19    0.1877975406706457
#>     Attrib V2    0.2683159354922386
#>     Attrib V20    0.3911960400303738
#>     Attrib V21    0.19287113786870905
#>     Attrib V22    0.1419691584180374
#>     Attrib V23    0.28024877645334906
#>     Attrib V24    0.2209894850370108
#>     Attrib V25    -0.04041646962131126
#>     Attrib V26    -0.4782979715358918
#>     Attrib V27    -0.42866160912202883
#>     Attrib V28    -0.1875574803191684
#>     Attrib V29    -0.23215493438164697
#>     Attrib V3    0.27346701006187046
#>     Attrib V30    0.03473929558190385
#>     Attrib V31    -0.5601473818382697
#>     Attrib V32    0.16221487956179448
#>     Attrib V33    0.20218701264659028
#>     Attrib V34    0.011841178964429244
#>     Attrib V35    0.08512550690677488
#>     Attrib V36    -0.2952752569561857
#>     Attrib V37    -0.48792831665175257
#>     Attrib V38    0.12811639814564665
#>     Attrib V39    0.10518947437443513
#>     Attrib V4    -0.1034611469855265
#>     Attrib V40    -0.23036962126487318
#>     Attrib V41    -0.11337117155573434
#>     Attrib V42    0.26313202351737397
#>     Attrib V43    0.062387901288850335
#>     Attrib V44    0.14170370938920693
#>     Attrib V45    0.15927167568149495
#>     Attrib V46    0.12370589734660231
#>     Attrib V47    -0.012521257214889944
#>     Attrib V48    0.005710626438426711
#>     Attrib V49    0.25906403754191276
#>     Attrib V5    -0.28935232260547544
#>     Attrib V50    -0.2723673595733487
#>     Attrib V51    0.1777888442786284
#>     Attrib V52    -0.032560355599890935
#>     Attrib V53    0.16291865985407902
#>     Attrib V54    0.13212591727256212
#>     Attrib V55    -0.30316424929253466
#>     Attrib V56    0.265776706932494
#>     Attrib V57    -0.09570312047010095
#>     Attrib V58    0.4011810164685669
#>     Attrib V59    0.1269439026147011
#>     Attrib V6    -0.3392749388655787
#>     Attrib V60    0.2055189630939587
#>     Attrib V7    0.08954304055855909
#>     Attrib V8    -0.31133242459202726
#>     Attrib V9    0.1450867717548196
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.17666874148282732
#>     Attrib V1    0.38775839683856744
#>     Attrib V10    0.0044709899272132704
#>     Attrib V11    0.08340773686080469
#>     Attrib V12    -0.008665216741962214
#>     Attrib V13    0.012944663346575963
#>     Attrib V14    -0.021624709232764626
#>     Attrib V15    0.13548782123093775
#>     Attrib V16    0.08300639896650915
#>     Attrib V17    0.10279543454569377
#>     Attrib V18    0.024740803455073904
#>     Attrib V19    0.11269213917748933
#>     Attrib V2    0.2668335972157434
#>     Attrib V20    0.2467850776941499
#>     Attrib V21    0.08080687096664782
#>     Attrib V22    0.07677651590075758
#>     Attrib V23    0.19819338524015906
#>     Attrib V24    0.1428142006414616
#>     Attrib V25    -0.02521572623947184
#>     Attrib V26    -0.3070198162411292
#>     Attrib V27    -0.4163776316747571
#>     Attrib V28    -0.2671656876935835
#>     Attrib V29    -0.3475183983711066
#>     Attrib V3    0.14681647055764635
#>     Attrib V30    0.0011396760116620407
#>     Attrib V31    -0.3657272318342092
#>     Attrib V32    0.11698328214226313
#>     Attrib V33    0.19441571209312128
#>     Attrib V34    -0.002292936455192927
#>     Attrib V35    0.1518923696342321
#>     Attrib V36    -0.20777386640299556
#>     Attrib V37    -0.34824336320666877
#>     Attrib V38    0.09817246761122744
#>     Attrib V39    0.06265238884170381
#>     Attrib V4    -0.08710498835595194
#>     Attrib V40    -0.20377507405793152
#>     Attrib V41    -0.14777262801050997
#>     Attrib V42    0.11083191487208108
#>     Attrib V43    0.058410197126599284
#>     Attrib V44    0.16152907076246248
#>     Attrib V45    0.09372084397027561
#>     Attrib V46    0.06847270211128838
#>     Attrib V47    -0.06804797174676214
#>     Attrib V48    0.05482524842763091
#>     Attrib V49    0.2138429403071892
#>     Attrib V5    -0.2886975432260838
#>     Attrib V50    -0.17200053105175442
#>     Attrib V51    0.15809569147204752
#>     Attrib V52    0.0031230240038971524
#>     Attrib V53    0.13038725188890748
#>     Attrib V54    0.22570970883944794
#>     Attrib V55    -0.14702081259721397
#>     Attrib V56    0.25505864075515966
#>     Attrib V57    -0.028204557823672347
#>     Attrib V58    0.36462691173032136
#>     Attrib V59    0.07242478809715565
#>     Attrib V6    -0.3107621649757987
#>     Attrib V60    0.171812845297212
#>     Attrib V7    0.02636707826064936
#>     Attrib V8    -0.2868271901727457
#>     Attrib V9    0.10171805438147913
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    0.336668768319498
#>     Attrib V1    -0.6270583555180701
#>     Attrib V10    -0.6842271520060206
#>     Attrib V11    -0.5729475542159722
#>     Attrib V12    -0.0783812544416131
#>     Attrib V13    -0.39920647398576886
#>     Attrib V14    0.13481619738354922
#>     Attrib V15    0.1539386875277007
#>     Attrib V16    -0.03865167665242658
#>     Attrib V17    0.09462532823727844
#>     Attrib V18    0.17774880415435243
#>     Attrib V19    -0.47535763194909203
#>     Attrib V2    -0.20279295090942254
#>     Attrib V20    -0.911125579389001
#>     Attrib V21    -0.46921009065376873
#>     Attrib V22    -0.539371593604881
#>     Attrib V23    -0.7776415593725674
#>     Attrib V24    -0.5534038684601029
#>     Attrib V25    0.10010287681566277
#>     Attrib V26    0.8217611549805002
#>     Attrib V27    0.8671213446965833
#>     Attrib V28    0.21994479735251676
#>     Attrib V29    0.850456033584845
#>     Attrib V3    -0.3217262040348594
#>     Attrib V30    0.12081737249296662
#>     Attrib V31    1.449927565094832
#>     Attrib V32    -0.2861011497325815
#>     Attrib V33    -0.6243040869045988
#>     Attrib V34    0.1504016448101696
#>     Attrib V35    -0.1643875203176385
#>     Attrib V36    0.8413599999684236
#>     Attrib V37    1.772267711971823
#>     Attrib V38    -0.16844771990517224
#>     Attrib V39    -0.14775588171536294
#>     Attrib V4    -5.21120315052343E-4
#>     Attrib V40    0.456693581386153
#>     Attrib V41    0.08873683776930882
#>     Attrib V42    -0.7610764989906351
#>     Attrib V43    -0.3821080830058067
#>     Attrib V44    -0.4514811103489871
#>     Attrib V45    -0.5755605797008703
#>     Attrib V46    -0.4460115149538853
#>     Attrib V47    -0.006334512584703013
#>     Attrib V48    -0.08286131320530146
#>     Attrib V49    -0.7104577102980854
#>     Attrib V5    0.17988642319165765
#>     Attrib V50    0.7805510644188002
#>     Attrib V51    -0.3954010731841092
#>     Attrib V52    0.17003424716121568
#>     Attrib V53    -0.10147354199535372
#>     Attrib V54    -0.07709404614155638
#>     Attrib V55    1.0969776139065655
#>     Attrib V56    -0.19590369917447464
#>     Attrib V57    0.5949761050039873
#>     Attrib V58    -0.8701447178823482
#>     Attrib V59    -0.040271925353700395
#>     Attrib V6    0.6779985029464775
#>     Attrib V60    -0.3112135433695427
#>     Attrib V7    -0.5229095026509054
#>     Attrib V8    0.2095138040680341
#>     Attrib V9    -0.8929227980321086
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1568335205035777
#>     Attrib V1    -0.0400310359513159
#>     Attrib V10    0.1720371388326962
#>     Attrib V11    0.07568795323223272
#>     Attrib V12    0.10039508340545607
#>     Attrib V13    0.07062770466884988
#>     Attrib V14    0.040249085272569415
#>     Attrib V15    0.02245254587369623
#>     Attrib V16    0.12106395046559555
#>     Attrib V17    0.15407419525940902
#>     Attrib V18    0.1369991768535584
#>     Attrib V19    0.06712319130339883
#>     Attrib V2    -0.062012885468413326
#>     Attrib V20    -0.048016872792224295
#>     Attrib V21    0.02762473578434261
#>     Attrib V22    0.030827389863016415
#>     Attrib V23    -0.05209377267653473
#>     Attrib V24    -0.0718542840413531
#>     Attrib V25    -0.056195242803542995
#>     Attrib V26    -0.09733576163143971
#>     Attrib V27    -0.08326536248868026
#>     Attrib V28    -0.06234614066375668
#>     Attrib V29    -0.10335390598616445
#>     Attrib V3    0.10748165707964952
#>     Attrib V30    -0.14298929710983682
#>     Attrib V31    0.10812428369996892
#>     Attrib V32    0.011341241460060967
#>     Attrib V33    0.0260320334953195
#>     Attrib V34    0.10081173401566065
#>     Attrib V35    -0.01264658416791634
#>     Attrib V36    0.12806948754281178
#>     Attrib V37    0.2578726205573277
#>     Attrib V38    0.038660457650293654
#>     Attrib V39    0.09560232096901253
#>     Attrib V4    0.21267572984973399
#>     Attrib V40    0.19505255595610604
#>     Attrib V41    0.20477576007761858
#>     Attrib V42    0.07838693729373289
#>     Attrib V43    0.013719052950010384
#>     Attrib V44    -0.03568405047457779
#>     Attrib V45    -0.041994175095475525
#>     Attrib V46    0.019998605414695312
#>     Attrib V47    0.057770100229151654
#>     Attrib V48    -0.03274320789101694
#>     Attrib V49    -0.09731710245297857
#>     Attrib V5    0.2974498757263263
#>     Attrib V50    0.1272020401718223
#>     Attrib V51    0.019396842415087656
#>     Attrib V52    0.02942399545319134
#>     Attrib V53    -0.005526115243673549
#>     Attrib V54    -0.042557200633658206
#>     Attrib V55    0.19849603210562794
#>     Attrib V56    0.054996779561113186
#>     Attrib V57    0.2614157308248205
#>     Attrib V58    0.05658260125488339
#>     Attrib V59    0.09827315275308567
#>     Attrib V6    0.3489467174432067
#>     Attrib V60    0.1038180415193315
#>     Attrib V7    0.18264581987897063
#>     Attrib V8    0.28999511199920186
#>     Attrib V9    0.157365884153963
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.09261901540491799
#>     Attrib V1    -0.028166831629377047
#>     Attrib V10    0.260923326970321
#>     Attrib V11    0.14078872028234526
#>     Attrib V12    0.11738120553421473
#>     Attrib V13    0.022064444061293535
#>     Attrib V14    0.038607039208425876
#>     Attrib V15    0.08294662869174811
#>     Attrib V16    0.07480389887154654
#>     Attrib V17    0.11081923976030555
#>     Attrib V18    0.08358192042768639
#>     Attrib V19    0.06334311250572662
#>     Attrib V2    0.02302392320140736
#>     Attrib V20    -0.05238090577859808
#>     Attrib V21    0.07294268377220563
#>     Attrib V22    0.1362196215828026
#>     Attrib V23    -0.011980223414574167
#>     Attrib V24    -0.08292163346219732
#>     Attrib V25    -0.13418190615578138
#>     Attrib V26    -0.13575878103850905
#>     Attrib V27    -0.08256148487581462
#>     Attrib V28    -0.09193014526079422
#>     Attrib V29    -0.1671605376581978
#>     Attrib V3    0.11806371378078308
#>     Attrib V30    -0.12546056491542096
#>     Attrib V31    0.23913564925028713
#>     Attrib V32    -5.664212106572707E-4
#>     Attrib V33    0.13256930648006637
#>     Attrib V34    0.10549931263573925
#>     Attrib V35    0.0602873546613756
#>     Attrib V36    0.1750751015139691
#>     Attrib V37    0.282797018626846
#>     Attrib V38    0.09730695990894372
#>     Attrib V39    0.16687806740356215
#>     Attrib V4    0.27506459448700105
#>     Attrib V40    0.3098936939440587
#>     Attrib V41    0.3329899703654282
#>     Attrib V42    0.08761872667334374
#>     Attrib V43    0.1091371767183231
#>     Attrib V44    0.04918998189229762
#>     Attrib V45    -0.03166404456339517
#>     Attrib V46    -0.02707027305312251
#>     Attrib V47    0.004226544127311595
#>     Attrib V48    -0.03470681639445315
#>     Attrib V49    -0.15421396256797104
#>     Attrib V5    0.40918937843369224
#>     Attrib V50    0.0872407653827784
#>     Attrib V51    -0.07338539102082932
#>     Attrib V52    -0.07421672261789444
#>     Attrib V53    -0.11982463659160342
#>     Attrib V54    -0.04931297286267329
#>     Attrib V55    0.2353267732601628
#>     Attrib V56    0.0710714032337378
#>     Attrib V57    0.3412534284275466
#>     Attrib V58    -0.025389956416859292
#>     Attrib V59    0.1294294055589068
#>     Attrib V6    0.4889183686326453
#>     Attrib V60    0.1344707798040279
#>     Attrib V7    0.24787608493433083
#>     Attrib V8    0.47573571308062124
#>     Attrib V9    0.16777738840929193
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.19692648747900748
#>     Attrib V1    0.029930021327439923
#>     Attrib V10    0.1050209879582672
#>     Attrib V11    0.04067307445090989
#>     Attrib V12    0.038012800669926995
#>     Attrib V13    0.018646505292648736
#>     Attrib V14    0.06864786104120539
#>     Attrib V15    0.011007079811685362
#>     Attrib V16    0.04619860625294724
#>     Attrib V17    0.029573383870661274
#>     Attrib V18    0.09999191469535289
#>     Attrib V19    -0.015793176237320537
#>     Attrib V2    0.03399896446017889
#>     Attrib V20    0.009605856293267132
#>     Attrib V21    0.0563288815197133
#>     Attrib V22    0.002282907367331207
#>     Attrib V23    -0.019215265620079188
#>     Attrib V24    -0.0877398982954903
#>     Attrib V25    -0.03869548429263151
#>     Attrib V26    -0.049698021183870754
#>     Attrib V27    -0.04814550450759537
#>     Attrib V28    -0.07073801544766986
#>     Attrib V29    -0.07976217281327552
#>     Attrib V3    0.12521375588929085
#>     Attrib V30    -0.10192644135178279
#>     Attrib V31    0.03879104944937632
#>     Attrib V32    -0.004623856201821471
#>     Attrib V33    0.044331432608341735
#>     Attrib V34    0.0836162912596664
#>     Attrib V35    0.009339582824109856
#>     Attrib V36    0.15241152366164426
#>     Attrib V37    0.12765732804214486
#>     Attrib V38    0.024998102815865994
#>     Attrib V39    0.10418305116368619
#>     Attrib V4    0.08086397633509936
#>     Attrib V40    0.10928312654587621
#>     Attrib V41    0.07920143481390227
#>     Attrib V42    0.04926350526803617
#>     Attrib V43    0.04727353513717141
#>     Attrib V44    0.08066579167054602
#>     Attrib V45    -0.03197730466166604
#>     Attrib V46    0.003500000113961953
#>     Attrib V47    0.09529370878576827
#>     Attrib V48    0.0333102717315693
#>     Attrib V49    0.019815115963117257
#>     Attrib V5    0.15088012962802505
#>     Attrib V50    0.037711657807326375
#>     Attrib V51    0.0756713702023192
#>     Attrib V52    0.01090051720845748
#>     Attrib V53    0.03300083211646996
#>     Attrib V54    -0.008649766150075207
#>     Attrib V55    0.15859497552402493
#>     Attrib V56    0.09075386983843967
#>     Attrib V57    0.13333691110160176
#>     Attrib V58    0.05067969462182401
#>     Attrib V59    0.14747362017732477
#>     Attrib V6    0.14764813149104017
#>     Attrib V60    0.12356056468981927
#>     Attrib V7    0.13416765450234902
#>     Attrib V8    0.21595913993243354
#>     Attrib V9    0.09381575748066645
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.18062157085134792
#>     Attrib V1    0.24687403038929062
#>     Attrib V10    0.2513027239929778
#>     Attrib V11    0.3245283795783017
#>     Attrib V12    0.24431552610715876
#>     Attrib V13    0.277231566697941
#>     Attrib V14    -0.04936230182941957
#>     Attrib V15    -0.011277144515522322
#>     Attrib V16    -0.041750333405020955
#>     Attrib V17    -0.04939363907008711
#>     Attrib V18    -0.08437498823324432
#>     Attrib V19    0.19969138926131702
#>     Attrib V2    0.23071395535867179
#>     Attrib V20    0.33341164401615503
#>     Attrib V21    -0.0015572602604497171
#>     Attrib V22    -0.0014735865014091065
#>     Attrib V23    0.17511172610975442
#>     Attrib V24    0.3138879998939446
#>     Attrib V25    0.13895261157787459
#>     Attrib V26    -0.05547993820589758
#>     Attrib V27    0.11758729995418814
#>     Attrib V28    0.3570894031951067
#>     Attrib V29    -0.02970332963608769
#>     Attrib V3    0.18604372691904034
#>     Attrib V30    0.2878081595918865
#>     Attrib V31    -0.5711579334878425
#>     Attrib V32    0.11845761079295128
#>     Attrib V33    0.16576632993266674
#>     Attrib V34    0.0010055738644341927
#>     Attrib V35    0.3749767860214073
#>     Attrib V36    -0.30775166732632697
#>     Attrib V37    -0.646343565187947
#>     Attrib V38    0.2731163255596858
#>     Attrib V39    0.12560144303120324
#>     Attrib V4    -0.02927751886194492
#>     Attrib V40    -0.206954763841854
#>     Attrib V41    -0.15621484432226831
#>     Attrib V42    0.27484137787785085
#>     Attrib V43    0.1557924945027318
#>     Attrib V44    0.23691937737576374
#>     Attrib V45    0.4135861970329549
#>     Attrib V46    0.1437869050122638
#>     Attrib V47    -0.09183351106689829
#>     Attrib V48    0.20385997404561512
#>     Attrib V49    0.5326808690378951
#>     Attrib V5    -0.33635976823450164
#>     Attrib V50    -0.4655652706172849
#>     Attrib V51    0.1821000819245292
#>     Attrib V52    0.1890929095943419
#>     Attrib V53    0.2952451619540146
#>     Attrib V54    0.104453611710452
#>     Attrib V55    -0.5846891032789808
#>     Attrib V56    0.15269123268537677
#>     Attrib V57    -0.4663398778848747
#>     Attrib V58    0.36543235334667473
#>     Attrib V59    -0.20772336776607997
#>     Attrib V6    -0.5815684878257098
#>     Attrib V60    0.07749911778921743
#>     Attrib V7    -0.02712687520706413
#>     Attrib V8    -0.4880567925625678
#>     Attrib V9    0.3632617354356867
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.10184495754670427
#>     Attrib V1    0.20007409015115807
#>     Attrib V10    0.41056261923207765
#>     Attrib V11    0.371501496834535
#>     Attrib V12    0.2326754616309397
#>     Attrib V13    0.26278893824230115
#>     Attrib V14    0.019464504764862854
#>     Attrib V15    -0.14905220172551642
#>     Attrib V16    -0.18599536296289274
#>     Attrib V17    -0.1763129891007369
#>     Attrib V18    -0.09552542325329465
#>     Attrib V19    0.1437846546310143
#>     Attrib V2    0.08929187168821064
#>     Attrib V20    0.2832559953072002
#>     Attrib V21    0.018122358013110556
#>     Attrib V22    -0.02899212250263814
#>     Attrib V23    0.22255389742007195
#>     Attrib V24    0.3088931643858929
#>     Attrib V25    0.1925848140943514
#>     Attrib V26    0.30515432282803356
#>     Attrib V27    0.5626978853470044
#>     Attrib V28    0.602998905377218
#>     Attrib V29    0.2594480042522481
#>     Attrib V3    0.046018111784892346
#>     Attrib V30    0.4246371982466119
#>     Attrib V31    -0.4745172334272572
#>     Attrib V32    0.003919389664751099
#>     Attrib V33    0.03127754452631229
#>     Attrib V34    -0.03765584081148171
#>     Attrib V35    0.32244959578554383
#>     Attrib V36    -0.23332498049064793
#>     Attrib V37    -0.5436303394352603
#>     Attrib V38    0.22685155912369373
#>     Attrib V39    0.08998002121326677
#>     Attrib V4    0.0209445612595048
#>     Attrib V40    -0.1174690311013191
#>     Attrib V41    -0.02021574803537066
#>     Attrib V42    0.18225590912290118
#>     Attrib V43    0.2143682698059786
#>     Attrib V44    0.34167751743875346
#>     Attrib V45    0.4200800789344098
#>     Attrib V46    0.16697803014912557
#>     Attrib V47    0.03250086502907015
#>     Attrib V48    0.39699054063843736
#>     Attrib V49    0.6210879198822047
#>     Attrib V5    -0.17955810016133825
#>     Attrib V50    -0.25135917111794837
#>     Attrib V51    0.37928087044573644
#>     Attrib V52    0.3576439010678346
#>     Attrib V53    0.2984081549978985
#>     Attrib V54    0.08395127130507951
#>     Attrib V55    -0.47983272053757436
#>     Attrib V56    0.06953698802151667
#>     Attrib V57    -0.5609174937795486
#>     Attrib V58    0.24973938573033957
#>     Attrib V59    -0.20494936634872993
#>     Attrib V6    -0.4661847980702959
#>     Attrib V60    0.03616412663070517
#>     Attrib V7    -0.03997455707698883
#>     Attrib V8    -0.3526522329557649
#>     Attrib V9    0.5206607371135864
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.5196539791779682
#>     Attrib V1    -0.6795233987670498
#>     Attrib V10    -0.5777502844017067
#>     Attrib V11    -0.45178693802071285
#>     Attrib V12    -0.09092773841403813
#>     Attrib V13    -0.36706262884428886
#>     Attrib V14    0.13990048790956683
#>     Attrib V15    0.08495763248724028
#>     Attrib V16    0.006241235432107731
#>     Attrib V17    0.17671774294963433
#>     Attrib V18    0.18701910689907142
#>     Attrib V19    -0.6304218809764225
#>     Attrib V2    -0.2753628923046212
#>     Attrib V20    -1.0165928881417972
#>     Attrib V21    -0.4572436287088833
#>     Attrib V22    -0.6501266658793258
#>     Attrib V23    -0.7556416411624716
#>     Attrib V24    -0.5674541849763746
#>     Attrib V25    0.008834439252330148
#>     Attrib V26    0.8561143142220424
#>     Attrib V27    1.0087461132399635
#>     Attrib V28    0.2548359243778678
#>     Attrib V29    0.6874433816221082
#>     Attrib V3    -0.35060146648557666
#>     Attrib V30    0.045477498413664996
#>     Attrib V31    1.480382778757724
#>     Attrib V32    -0.3463772414674232
#>     Attrib V33    -0.5476930526080701
#>     Attrib V34    0.13537854992947715
#>     Attrib V35    -0.29910853388900716
#>     Attrib V36    0.8098659510832745
#>     Attrib V37    1.739782897525503
#>     Attrib V38    -0.1816675700193014
#>     Attrib V39    -0.12078322622769318
#>     Attrib V4    0.3010014031051344
#>     Attrib V40    0.5792939511249628
#>     Attrib V41    0.20013061357996306
#>     Attrib V42    -0.8355524625269615
#>     Attrib V43    -0.35362130966183075
#>     Attrib V44    -0.3887145919728711
#>     Attrib V45    -0.6649548351421326
#>     Attrib V46    -0.5852700238424476
#>     Attrib V47    -0.2856799002217401
#>     Attrib V48    -0.22019233058239945
#>     Attrib V49    -0.7531528106766348
#>     Attrib V5    0.4880687806855526
#>     Attrib V50    0.7144900030772148
#>     Attrib V51    -0.4882918976956762
#>     Attrib V52    0.1183904485383796
#>     Attrib V53    -0.26534811847384193
#>     Attrib V54    -0.040887494537595784
#>     Attrib V55    1.0470351600797425
#>     Attrib V56    -0.42384715650651766
#>     Attrib V57    0.6592119811261372
#>     Attrib V58    -0.9134859905202497
#>     Attrib V59    -0.01987792436542798
#>     Attrib V6    0.8641953497495927
#>     Attrib V60    -0.3169272291577698
#>     Attrib V7    -0.23926174435709666
#>     Attrib V8    0.42701615138468496
#>     Attrib V9    -0.7899805688317183
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.13404124751249122
#>     Attrib V1    -0.015170782280708913
#>     Attrib V10    0.2045732575523801
#>     Attrib V11    0.12224143780969826
#>     Attrib V12    0.13263257756858854
#>     Attrib V13    0.0327528212741135
#>     Attrib V14    0.0873343771306421
#>     Attrib V15    -6.91376708317904E-4
#>     Attrib V16    0.1279078762567746
#>     Attrib V17    0.14932510732560877
#>     Attrib V18    0.11518238301678142
#>     Attrib V19    0.04121043007168999
#>     Attrib V2    -0.014144879211350908
#>     Attrib V20    -0.006446829482600518
#>     Attrib V21    0.05294296533955074
#>     Attrib V22    0.03739059038081507
#>     Attrib V23    -0.05237598674091832
#>     Attrib V24    -0.07463021599966353
#>     Attrib V25    -0.08447543747075714
#>     Attrib V26    -0.0863519508596671
#>     Attrib V27    -0.08310966098516653
#>     Attrib V28    -0.1292690870004204
#>     Attrib V29    -0.0667803913465964
#>     Attrib V3    0.07021992881548683
#>     Attrib V30    -0.12233585659126593
#>     Attrib V31    0.213883427457582
#>     Attrib V32    -0.028928455163809395
#>     Attrib V33    -0.012696863951522768
#>     Attrib V34    0.06342138737158204
#>     Attrib V35    4.6988604930252157E-4
#>     Attrib V36    0.17041970386185884
#>     Attrib V37    0.2639639117657011
#>     Attrib V38    -0.02586979454687873
#>     Attrib V39    0.0527510172610442
#>     Attrib V4    0.23309086887467131
#>     Attrib V40    0.2671148636101035
#>     Attrib V41    0.16819586703813028
#>     Attrib V42    0.012827628671075243
#>     Attrib V43    0.07448437812326093
#>     Attrib V44    -0.006311533063992383
#>     Attrib V45    -0.11227022452744218
#>     Attrib V46    0.035178297159588465
#>     Attrib V47    0.03507263271164373
#>     Attrib V48    0.006071991712338702
#>     Attrib V49    -0.07873336433916366
#>     Attrib V5    0.36399121769758525
#>     Attrib V50    0.0973572429429588
#>     Attrib V51    -0.06633757805818498
#>     Attrib V52    -0.0022118535322410153
#>     Attrib V53    -0.07948246005996143
#>     Attrib V54    -0.019100477756712416
#>     Attrib V55    0.21918310941614688
#>     Attrib V56    0.07350325927382255
#>     Attrib V57    0.2598779144885463
#>     Attrib V58    0.03859635556898686
#>     Attrib V59    0.1419908830442418
#>     Attrib V6    0.4008798366669367
#>     Attrib V60    0.13039129443765896
#>     Attrib V7    0.21590165794432647
#>     Attrib V8    0.3143286946123046
#>     Attrib V9    0.1571882969337108
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.24267743595415045
#>     Attrib V1    0.58429813362214
#>     Attrib V10    -0.038371667510319805
#>     Attrib V11    0.05770581319202908
#>     Attrib V12    -0.05676532738591211
#>     Attrib V13    0.04211643375339353
#>     Attrib V14    -0.029992886637259485
#>     Attrib V15    0.1495577022586965
#>     Attrib V16    0.18548863831203705
#>     Attrib V17    0.19123187331942246
#>     Attrib V18    -0.0021105849679397726
#>     Attrib V19    0.2506512037390763
#>     Attrib V2    0.3323537250800473
#>     Attrib V20    0.4308531600326468
#>     Attrib V21    0.16989620668653255
#>     Attrib V22    0.24042121626928156
#>     Attrib V23    0.37756845150573687
#>     Attrib V24    0.2800437757895137
#>     Attrib V25    -0.07981959971196567
#>     Attrib V26    -0.5815246714599044
#>     Attrib V27    -0.7134174101050156
#>     Attrib V28    -0.3195771748044008
#>     Attrib V29    -0.4560335344284311
#>     Attrib V3    0.2951901022883195
#>     Attrib V30    0.012454222812308149
#>     Attrib V31    -0.6395501146811313
#>     Attrib V32    0.2534190776147194
#>     Attrib V33    0.3129443235848645
#>     Attrib V34    -0.03110382275059427
#>     Attrib V35    0.16759544109041138
#>     Attrib V36    -0.36248643698966154
#>     Attrib V37    -0.6430402983676419
#>     Attrib V38    0.16198070597279415
#>     Attrib V39    0.06745269021415194
#>     Attrib V4    -0.14648394177033092
#>     Attrib V40    -0.35713069693047156
#>     Attrib V41    -0.16780473989465902
#>     Attrib V42    0.3060877188787969
#>     Attrib V43    0.16003783152692205
#>     Attrib V44    0.17641681221165206
#>     Attrib V45    0.27717681760293134
#>     Attrib V46    0.14693213654914397
#>     Attrib V47    -0.04000353607143447
#>     Attrib V48    -0.022401098269457773
#>     Attrib V49    0.29754417381972287
#>     Attrib V5    -0.4100449425311597
#>     Attrib V50    -0.3503290423615866
#>     Attrib V51    0.2157119591729966
#>     Attrib V52    -0.003970994028893979
#>     Attrib V53    0.20016115662341355
#>     Attrib V54    0.22708344864787106
#>     Attrib V55    -0.3691432648351178
#>     Attrib V56    0.3962418801837052
#>     Attrib V57    -0.18344891511489936
#>     Attrib V58    0.5477118447392407
#>     Attrib V59    0.14314931210192605
#>     Attrib V6    -0.4598893144309099
#>     Attrib V60    0.20950004394811828
#>     Attrib V7    0.11965188855978279
#>     Attrib V8    -0.3755430658328834
#>     Attrib V9    0.1916265635987531
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    0.07033392476084625
#>     Attrib V1    -0.35427056222133263
#>     Attrib V10    -0.6337660666045717
#>     Attrib V11    -0.7096244388483086
#>     Attrib V12    -0.4426845712131274
#>     Attrib V13    -0.5142542455273227
#>     Attrib V14    0.14726042263302005
#>     Attrib V15    0.15358527833105454
#>     Attrib V16    -0.02725696671077742
#>     Attrib V17    0.07907842520271537
#>     Attrib V18    0.11795604118774813
#>     Attrib V19    -0.37158196613547334
#>     Attrib V2    -0.13512642982512435
#>     Attrib V20    -0.6881730244104629
#>     Attrib V21    -0.3585732427947115
#>     Attrib V22    -0.45187944503458743
#>     Attrib V23    -0.40014661210418645
#>     Attrib V24    -0.34643922674865696
#>     Attrib V25    0.06718934675585014
#>     Attrib V26    0.44320597537553336
#>     Attrib V27    0.4802357003079414
#>     Attrib V28    0.17410676464501124
#>     Attrib V29    0.5252674533223651
#>     Attrib V3    -0.1593387550130783
#>     Attrib V30    -0.1413300017696713
#>     Attrib V31    0.9056575068752718
#>     Attrib V32    -0.15013922890744333
#>     Attrib V33    -0.3740822432587827
#>     Attrib V34    0.11933119238387363
#>     Attrib V35    -0.03288700860150993
#>     Attrib V36    0.7390364666665992
#>     Attrib V37    1.2129857697459654
#>     Attrib V38    -0.2556976692681191
#>     Attrib V39    -0.2544895084180619
#>     Attrib V4    -0.04233354784599418
#>     Attrib V40    0.2790684224742289
#>     Attrib V41    0.13062735467440464
#>     Attrib V42    -0.41263345077675695
#>     Attrib V43    -0.15263969369649105
#>     Attrib V44    -0.25311000596704414
#>     Attrib V45    -0.4612718123938328
#>     Attrib V46    -0.2976613675742511
#>     Attrib V47    0.005237002734746024
#>     Attrib V48    -0.19280690240745837
#>     Attrib V49    -0.6380227167148912
#>     Attrib V5    0.025462198746805505
#>     Attrib V50    0.6407785857018439
#>     Attrib V51    -0.30106913670524954
#>     Attrib V52    0.14553133569191762
#>     Attrib V53    -0.03933874187430235
#>     Attrib V54    -0.042323772467797935
#>     Attrib V55    0.8498737217929163
#>     Attrib V56    -0.08439244319072413
#>     Attrib V57    0.5175976940073963
#>     Attrib V58    -0.48332427250922305
#>     Attrib V59    0.05889069989003817
#>     Attrib V6    0.5930582115959828
#>     Attrib V60    -0.11573661594733806
#>     Attrib V7    -0.3593147114627546
#>     Attrib V8    0.27134874189187547
#>     Attrib V9    -0.6580650860934336
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.040447149546022645
#>     Attrib V1    0.2836317828849565
#>     Attrib V10    0.6233982445268562
#>     Attrib V11    0.8013079473507972
#>     Attrib V12    0.6966699750393444
#>     Attrib V13    0.5290419943470105
#>     Attrib V14    0.37145292846695616
#>     Attrib V15    -0.27092778175531745
#>     Attrib V16    -0.5083458258505473
#>     Attrib V17    -0.5336442165168922
#>     Attrib V18    -0.3275989278268114
#>     Attrib V19    -0.2809576217924827
#>     Attrib V2    0.43424813239756316
#>     Attrib V20    0.12949035290538052
#>     Attrib V21    0.09045334913581936
#>     Attrib V22    -0.09650369471728898
#>     Attrib V23    0.1732374173019736
#>     Attrib V24    0.30567555823880443
#>     Attrib V25    0.4147501642739981
#>     Attrib V26    1.449347278483611
#>     Attrib V27    1.9937500669044852
#>     Attrib V28    1.483378798595404
#>     Attrib V29    1.0553394918398453
#>     Attrib V3    0.09636739993767912
#>     Attrib V30    0.6340851029735058
#>     Attrib V31    -0.7218604370115521
#>     Attrib V32    -0.2824264446156206
#>     Attrib V33    -0.493128238032998
#>     Attrib V34    -0.3572141393806131
#>     Attrib V35    -0.03542809392113199
#>     Attrib V36    -0.6358335459424369
#>     Attrib V37    -0.4975030201870762
#>     Attrib V38    0.45106129109333887
#>     Attrib V39    0.6057915526086556
#>     Attrib V4    0.5751848076227395
#>     Attrib V40    0.2998676051338925
#>     Attrib V41    0.262424457184767
#>     Attrib V42    -0.003500703894778988
#>     Attrib V43    0.08371726054819612
#>     Attrib V44    0.34652380613825373
#>     Attrib V45    0.3668305187936218
#>     Attrib V46    0.22447604126393259
#>     Attrib V47    0.1994210303922426
#>     Attrib V48    0.8225818528135042
#>     Attrib V49    1.325119511560405
#>     Attrib V5    0.16369724642123262
#>     Attrib V50    0.19154976384937736
#>     Attrib V51    0.9950105991512802
#>     Attrib V52    1.0017455757602747
#>     Attrib V53    0.6305616270710325
#>     Attrib V54    0.27216212279728524
#>     Attrib V55    -0.042403523445110336
#>     Attrib V56    0.0804754835696423
#>     Attrib V57    -0.8107389956534184
#>     Attrib V58    -0.13134829075341503
#>     Attrib V59    -0.4410648931873641
#>     Attrib V6    -0.2580159020276254
#>     Attrib V60    0.0013605169531350147
#>     Attrib V7    -0.20157178049389254
#>     Attrib V8    -0.4232508498604275
#>     Attrib V9    0.7854393263998859
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.14293911929208242
#>     Attrib V1    -0.17468150536375465
#>     Attrib V10    -0.1850050922645455
#>     Attrib V11    -0.2960853472597869
#>     Attrib V12    -0.14172770548172137
#>     Attrib V13    -0.22686218964390045
#>     Attrib V14    0.13334678979990955
#>     Attrib V15    -0.012456288403462874
#>     Attrib V16    -0.06665894257872057
#>     Attrib V17    0.013021445790409363
#>     Attrib V18    0.034674368586055625
#>     Attrib V19    -0.03575863058564968
#>     Attrib V2    -0.16589995872476804
#>     Attrib V20    -0.18436943113279589
#>     Attrib V21    0.05024646446847241
#>     Attrib V22    0.02477243015175382
#>     Attrib V23    0.0034733341755769994
#>     Attrib V24    -0.0784829745029874
#>     Attrib V25    0.07427776797248543
#>     Attrib V26    0.1186401019007798
#>     Attrib V27    0.09899148623797027
#>     Attrib V28    -0.07736766462562365
#>     Attrib V29    0.0237591997487736
#>     Attrib V3    -0.044219440022712574
#>     Attrib V30    -0.34764663023196596
#>     Attrib V31    0.2727109583838851
#>     Attrib V32    -0.27925051480203006
#>     Attrib V33    -0.09340986726818534
#>     Attrib V34    0.0684121195032817
#>     Attrib V35    -0.03976837950531106
#>     Attrib V36    0.3633841385018179
#>     Attrib V37    0.5291180464401117
#>     Attrib V38    -0.2941889047817317
#>     Attrib V39    -0.145475539225346
#>     Attrib V4    0.13713464526167118
#>     Attrib V40    0.1783798904435068
#>     Attrib V41    0.1608328970215195
#>     Attrib V42    -0.0832541822537432
#>     Attrib V43    -0.056147769333327394
#>     Attrib V44    -0.1900842859977024
#>     Attrib V45    -0.31316453901206454
#>     Attrib V46    -0.17404138579843317
#>     Attrib V47    -0.030959513832597096
#>     Attrib V48    -0.19393170103628996
#>     Attrib V49    -0.4518458563320878
#>     Attrib V5    0.24670475743183198
#>     Attrib V50    0.3367092918019361
#>     Attrib V51    -0.24061072965755237
#>     Attrib V52    -0.12737365488751914
#>     Attrib V53    -0.11328165291015531
#>     Attrib V54    -0.033705730410394596
#>     Attrib V55    0.5073120584350904
#>     Attrib V56    -0.08439805145031734
#>     Attrib V57    0.43495906345902374
#>     Attrib V58    -0.15016189642855277
#>     Attrib V59    0.26400016190128694
#>     Attrib V6    0.5031262465134845
#>     Attrib V60    0.1594582945281392
#>     Attrib V7    -0.022553377972290848
#>     Attrib V8    0.3865899832611877
#>     Attrib V9    -0.2885536557073633
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    -0.15445636652121475
#>     Attrib V1    0.5649169344425033
#>     Attrib V10    0.03277754405708992
#>     Attrib V11    0.060812628288563805
#>     Attrib V12    -0.06818501158910832
#>     Attrib V13    0.07171890400685184
#>     Attrib V14    -0.058097479250118135
#>     Attrib V15    0.14624692946418819
#>     Attrib V16    0.16944876775732878
#>     Attrib V17    0.08668258322092194
#>     Attrib V18    0.04404559281199895
#>     Attrib V19    0.2337589304060034
#>     Attrib V2    0.358852763228534
#>     Attrib V20    0.39669747659051197
#>     Attrib V21    0.22068124705109757
#>     Attrib V22    0.2222356329678101
#>     Attrib V23    0.29279623648605413
#>     Attrib V24    0.2875871483018967
#>     Attrib V25    -0.10124606382405013
#>     Attrib V26    -0.48416177725351706
#>     Attrib V27    -0.5793880017843326
#>     Attrib V28    -0.2494196697499393
#>     Attrib V29    -0.33226970282267354
#>     Attrib V3    0.2578433046925819
#>     Attrib V30    0.04570122572458302
#>     Attrib V31    -0.6037031507335472
#>     Attrib V32    0.20134023617225055
#>     Attrib V33    0.24594228260836737
#>     Attrib V34    0.0027005513420434377
#>     Attrib V35    0.12610763412276377
#>     Attrib V36    -0.3640812450183889
#>     Attrib V37    -0.64207095405306
#>     Attrib V38    0.1901140886280407
#>     Attrib V39    0.1043598679524436
#>     Attrib V4    -0.12532700643654837
#>     Attrib V40    -0.3526782178830385
#>     Attrib V41    -0.14672444475449853
#>     Attrib V42    0.2868072570699318
#>     Attrib V43    0.0862099053928814
#>     Attrib V44    0.21121638112351293
#>     Attrib V45    0.29248545425976996
#>     Attrib V46    0.09762480038009781
#>     Attrib V47    -0.11117490395391787
#>     Attrib V48    0.044766849923873184
#>     Attrib V49    0.2556582533592173
#>     Attrib V5    -0.39066227983075746
#>     Attrib V50    -0.2658819646801489
#>     Attrib V51    0.24549068508773594
#>     Attrib V52    0.0013805132220798251
#>     Attrib V53    0.2115574098761092
#>     Attrib V54    0.24765188189472
#>     Attrib V55    -0.33403955982591677
#>     Attrib V56    0.2869249086399557
#>     Attrib V57    -0.15140916774114843
#>     Attrib V58    0.5165276253927066
#>     Attrib V59    0.09766811621824806
#>     Attrib V6    -0.4341467916718311
#>     Attrib V60    0.21432970019419112
#>     Attrib V7    0.04285915943328375
#>     Attrib V8    -0.3662231921611813
#>     Attrib V9    0.2014066383221283
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -1.021107277579261
#>     Attrib V1    -0.5508375647818226
#>     Attrib V10    -0.46497544911557426
#>     Attrib V11    -0.39102051419168904
#>     Attrib V12    -0.2180062627900111
#>     Attrib V13    -0.4211834330817272
#>     Attrib V14    0.8007890637968924
#>     Attrib V15    0.6282635367229125
#>     Attrib V16    0.5617353350296644
#>     Attrib V17    0.7665948181914153
#>     Attrib V18    0.6988431767899649
#>     Attrib V19    0.0028379580272788613
#>     Attrib V2    -0.47206458069261115
#>     Attrib V20    -0.630176637908017
#>     Attrib V21    -0.29602314431782883
#>     Attrib V22    -0.3350336805241632
#>     Attrib V23    -0.683960611083419
#>     Attrib V24    -0.4166334233350099
#>     Attrib V25    0.7351210648911588
#>     Attrib V26    1.3947242863087932
#>     Attrib V27    0.5232228357975474
#>     Attrib V28    -0.4995244770213398
#>     Attrib V29    0.0803069798757931
#>     Attrib V3    -0.7130496474870921
#>     Attrib V30    -0.6781231851923759
#>     Attrib V31    0.9849165589878816
#>     Attrib V32    -1.0139490824479254
#>     Attrib V33    -1.0803511658153453
#>     Attrib V34    -0.36816210951657
#>     Attrib V35    -0.6931951302162209
#>     Attrib V36    0.8933613145467086
#>     Attrib V37    1.2044702906506712
#>     Attrib V38    -1.195197158158334
#>     Attrib V39    -0.4792911451850121
#>     Attrib V4    -0.2140677316381451
#>     Attrib V40    0.15640872070749637
#>     Attrib V41    -0.4442957585753622
#>     Attrib V42    -1.43570358810131
#>     Attrib V43    -1.0108532616897234
#>     Attrib V44    -0.9197216000677252
#>     Attrib V45    -1.0166075840118494
#>     Attrib V46    -0.338725480103915
#>     Attrib V47    0.2979978710815739
#>     Attrib V48    0.25969641640600705
#>     Attrib V49    -0.5046923603796734
#>     Attrib V5    0.6767386694240293
#>     Attrib V50    1.5633906068272914
#>     Attrib V51    0.09000123712555963
#>     Attrib V52    0.16949608453532475
#>     Attrib V53    0.0776484441890579
#>     Attrib V54    0.3732203496018018
#>     Attrib V55    2.571225554955457
#>     Attrib V56    -0.2653145970385299
#>     Attrib V57    1.039607575914282
#>     Attrib V58    -0.672793341866215
#>     Attrib V59    0.3862228895595417
#>     Attrib V6    1.148014662685477
#>     Attrib V60    0.015150752420996148
#>     Attrib V7    -0.2233332366674622
#>     Attrib V8    1.0112546352846177
#>     Attrib V9    -0.49882508711567963
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.2128775805443682
#>     Attrib V1    0.46670409720231276
#>     Attrib V10    0.03604959340101158
#>     Attrib V11    0.12483931116768679
#>     Attrib V12    -0.021471164569763678
#>     Attrib V13    0.06807599825005613
#>     Attrib V14    0.005931884878715705
#>     Attrib V15    0.12738522876279867
#>     Attrib V16    0.15674794875099995
#>     Attrib V17    0.08812274087986219
#>     Attrib V18    -0.021753173250751403
#>     Attrib V19    0.21992467903801147
#>     Attrib V2    0.323499995745728
#>     Attrib V20    0.49246338992350347
#>     Attrib V21    0.23376603056048634
#>     Attrib V22    0.26226765163586097
#>     Attrib V23    0.31139015185564445
#>     Attrib V24    0.3278741744494374
#>     Attrib V25    -0.02915938795477733
#>     Attrib V26    -0.5755642062948695
#>     Attrib V27    -0.5842755261814084
#>     Attrib V28    -0.20568131125028866
#>     Attrib V29    -0.3232085012970875
#>     Attrib V3    0.2972541683485679
#>     Attrib V30    -0.00866732366463553
#>     Attrib V31    -0.6418998063895223
#>     Attrib V32    0.24827703588326408
#>     Attrib V33    0.2983418112154605
#>     Attrib V34    -0.0015257538357588574
#>     Attrib V35    0.15859319255846124
#>     Attrib V36    -0.4017525627178279
#>     Attrib V37    -0.6838337148868128
#>     Attrib V38    0.16707657809667784
#>     Attrib V39    0.08809050561658101
#>     Attrib V4    -0.17786716847714984
#>     Attrib V40    -0.31527737577046255
#>     Attrib V41    -0.13155027665083444
#>     Attrib V42    0.29345492301095033
#>     Attrib V43    0.18213869567851923
#>     Attrib V44    0.1455711834427546
#>     Attrib V45    0.2886305861002122
#>     Attrib V46    0.1534779335783332
#>     Attrib V47    -0.026158100049556696
#>     Attrib V48    0.03701187072100687
#>     Attrib V49    0.30168924496867633
#>     Attrib V5    -0.4166542437125612
#>     Attrib V50    -0.31331633567522993
#>     Attrib V51    0.2716651805476332
#>     Attrib V52    0.021512937778900183
#>     Attrib V53    0.1612865198159207
#>     Attrib V54    0.17363773881725733
#>     Attrib V55    -0.3641307683559559
#>     Attrib V56    0.34899476071009805
#>     Attrib V57    -0.1998666622354899
#>     Attrib V58    0.48676482364793827
#>     Attrib V59    0.008261306529526771
#>     Attrib V6    -0.4537490722792999
#>     Attrib V60    0.20244741435840602
#>     Attrib V7    0.06751253107857262
#>     Attrib V8    -0.3407560339794875
#>     Attrib V9    0.23985925687511508
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.1621577171831008
#>     Attrib V1    0.11233112419446042
#>     Attrib V10    0.11731123612705097
#>     Attrib V11    0.045645232876463236
#>     Attrib V12    0.0793424070343117
#>     Attrib V13    0.07348060059701943
#>     Attrib V14    0.08064793728563469
#>     Attrib V15    0.0661564822910668
#>     Attrib V16    0.05165078282774637
#>     Attrib V17    0.09681520213419338
#>     Attrib V18    0.043404550260623745
#>     Attrib V19    -0.0016172386861561005
#>     Attrib V2    0.0807198708730785
#>     Attrib V20    -0.011632939296785712
#>     Attrib V21    0.0370336771117016
#>     Attrib V22    -0.00826001434504327
#>     Attrib V23    -0.01567889295496971
#>     Attrib V24    -0.0699395548450994
#>     Attrib V25    -0.008610552949168307
#>     Attrib V26    -0.035951944308912215
#>     Attrib V27    -0.07447918879446218
#>     Attrib V28    -0.0386684529504283
#>     Attrib V29    -0.09942973321839887
#>     Attrib V3    0.05482647786484617
#>     Attrib V30    -0.010189515661276335
#>     Attrib V31    0.051197414054323716
#>     Attrib V32    -0.005562860772584398
#>     Attrib V33    0.02422521187365968
#>     Attrib V34    0.022013547577885748
#>     Attrib V35    0.07863362317856877
#>     Attrib V36    0.043008929135742786
#>     Attrib V37    0.1070294315669639
#>     Attrib V38    0.029720651405105818
#>     Attrib V39    0.1195532695590911
#>     Attrib V4    0.08791185256852219
#>     Attrib V40    0.08602178978206033
#>     Attrib V41    0.08342879108727617
#>     Attrib V42    0.10328424530547256
#>     Attrib V43    0.04886124628904212
#>     Attrib V44    0.029996094646204695
#>     Attrib V45    0.05682752423607107
#>     Attrib V46    0.032217192644148684
#>     Attrib V47    0.03319193727960061
#>     Attrib V48    0.08810299557867955
#>     Attrib V49    0.021516692570994502
#>     Attrib V5    0.009848741782765898
#>     Attrib V50    0.042202123288903506
#>     Attrib V51    0.045089457689708096
#>     Attrib V52    0.03447267563283914
#>     Attrib V53    0.07768841367023956
#>     Attrib V54    0.05295255407262759
#>     Attrib V55    0.07021095106236508
#>     Attrib V56    0.1301817314503269
#>     Attrib V57    0.10900994817178006
#>     Attrib V58    0.10908678518788174
#>     Attrib V59    0.1521275802987361
#>     Attrib V6    0.07636600277670544
#>     Attrib V60    0.10363354302481037
#>     Attrib V7    0.013223865280514743
#>     Attrib V8    0.07342101384165635
#>     Attrib V9    0.06468791830896649
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.31926932032312383
#>     Attrib V1    0.5685147794015261
#>     Attrib V10    -0.0011650658575270828
#>     Attrib V11    0.04048662304466862
#>     Attrib V12    -0.16768447974746797
#>     Attrib V13    0.03020819780023722
#>     Attrib V14    -0.019778995974320736
#>     Attrib V15    0.17506740955256156
#>     Attrib V16    0.2419638532812512
#>     Attrib V17    0.18793655677675972
#>     Attrib V18    0.01666123246469692
#>     Attrib V19    0.24078562446338256
#>     Attrib V2    0.3986416553122561
#>     Attrib V20    0.45479752520528666
#>     Attrib V21    0.11964171851125066
#>     Attrib V22    0.2466375935870302
#>     Attrib V23    0.35799336262290904
#>     Attrib V24    0.3064186551219277
#>     Attrib V25    -0.13561812073076843
#>     Attrib V26    -0.6482271095043497
#>     Attrib V27    -0.7896722896659879
#>     Attrib V28    -0.3769412189145155
#>     Attrib V29    -0.4911276824389983
#>     Attrib V3    0.2144865963861173
#>     Attrib V30    -0.02294554839043095
#>     Attrib V31    -0.5709691388936626
#>     Attrib V32    0.282703835820387
#>     Attrib V33    0.37386907026544947
#>     Attrib V34    0.025271157037830318
#>     Attrib V35    0.17202948939109816
#>     Attrib V36    -0.36058913508030227
#>     Attrib V37    -0.6617992661351412
#>     Attrib V38    0.18129028627998056
#>     Attrib V39    0.022103315248161774
#>     Attrib V4    -0.2067342694059817
#>     Attrib V40    -0.3354636322118806
#>     Attrib V41    -0.18663314196146685
#>     Attrib V42    0.3155469692370829
#>     Attrib V43    0.15369449266921825
#>     Attrib V44    0.21230926662013674
#>     Attrib V45    0.20517256800419084
#>     Attrib V46    0.1379788076243649
#>     Attrib V47    -0.07242480785810833
#>     Attrib V48    0.025764393236973188
#>     Attrib V49    0.2865370895866301
#>     Attrib V5    -0.445068757459233
#>     Attrib V50    -0.34122274644516176
#>     Attrib V51    0.2170808258269865
#>     Attrib V52    -0.06556670836466874
#>     Attrib V53    0.16645270772594656
#>     Attrib V54    0.2555253075759414
#>     Attrib V55    -0.3389405600627404
#>     Attrib V56    0.32890558879621046
#>     Attrib V57    -0.1297892469073944
#>     Attrib V58    0.527303965089981
#>     Attrib V59    0.08808450912636236
#>     Attrib V6    -0.4382318035741119
#>     Attrib V60    0.22261273672728626
#>     Attrib V7    0.14299452756898648
#>     Attrib V8    -0.31055579553758056
#>     Attrib V9    0.24266227179890493
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.15055111946993777
#>     Attrib V1    0.18767639366000338
#>     Attrib V10    -0.03373405315248544
#>     Attrib V11    0.010301854560041235
#>     Attrib V12    -0.015026901090011629
#>     Attrib V13    -0.022873180129383476
#>     Attrib V14    0.09925531766996054
#>     Attrib V15    0.07319191260514249
#>     Attrib V16    0.07641074109148209
#>     Attrib V17    0.02083946047056453
#>     Attrib V18    0.07787003881530082
#>     Attrib V19    -0.008260379768894158
#>     Attrib V2    0.09066863034060114
#>     Attrib V20    0.06825905900228886
#>     Attrib V21    0.022791098701493227
#>     Attrib V22    -0.030682748087183267
#>     Attrib V23    0.03937503832987045
#>     Attrib V24    0.00836996103699293
#>     Attrib V25    -0.07570298897610579
#>     Attrib V26    -0.14114880113584896
#>     Attrib V27    -0.1259616766111269
#>     Attrib V28    -0.032370957318592374
#>     Attrib V29    -0.062236803439779234
#>     Attrib V3    0.1050907608063833
#>     Attrib V30    0.03832347700420414
#>     Attrib V31    -0.14233923377037686
#>     Attrib V32    0.022774452075237463
#>     Attrib V33    0.09054336269096003
#>     Attrib V34    0.03465935375662172
#>     Attrib V35    0.09669051002305404
#>     Attrib V36    0.045915018048881505
#>     Attrib V37    -0.04952945480769092
#>     Attrib V38    0.03464469036999802
#>     Attrib V39    0.056225576739164666
#>     Attrib V4    -0.029605774165850734
#>     Attrib V40    -0.06432401860870694
#>     Attrib V41    -0.04920004458121015
#>     Attrib V42    0.09393428924449188
#>     Attrib V43    0.02788634219657133
#>     Attrib V44    0.1162367281679402
#>     Attrib V45    0.12932263468190547
#>     Attrib V46    0.04542063232639955
#>     Attrib V47    0.014443964272113455
#>     Attrib V48    0.03938920842439525
#>     Attrib V49    0.13681278814608838
#>     Attrib V5    -0.0595873877598438
#>     Attrib V50    -0.02778174072963035
#>     Attrib V51    0.11862777559331676
#>     Attrib V52    0.06999480830875925
#>     Attrib V53    0.1197280502112363
#>     Attrib V54    0.04980777537651432
#>     Attrib V55    -0.016061902634885068
#>     Attrib V56    0.10253551274602542
#>     Attrib V57    0.04130226423725772
#>     Attrib V58    0.18630892314740316
#>     Attrib V59    0.06880503687329306
#>     Attrib V6    -0.03889415957739963
#>     Attrib V60    0.06450607606367989
#>     Attrib V7    0.020470517440265117
#>     Attrib V8    -0.01429520564764671
#>     Attrib V9    0.08445339730757664
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
#>  0.1304348 
```
