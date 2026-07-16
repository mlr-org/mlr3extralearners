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
#>     Threshold    -0.027735459949559074
#>     Node 2    2.594715393709059
#>     Node 3    1.050646071995058
#>     Node 4    0.5923451715661697
#>     Node 5    -1.880426704402825
#>     Node 6    1.4515797114980789
#>     Node 7    2.0656885953467286
#>     Node 8    0.8485543934024865
#>     Node 9    3.2648534324882617
#>     Node 10    -0.5435923839537232
#>     Node 11    1.0436801852657744
#>     Node 12    1.3980727652657614
#>     Node 13    0.7223590954940817
#>     Node 14    1.6421696764047529
#>     Node 15    -2.728482748757416
#>     Node 16    -0.012432461546001588
#>     Node 17    0.08598677562481624
#>     Node 18    -0.39197136973171726
#>     Node 19    2.1615456989476716
#>     Node 20    2.476018784934368
#>     Node 21    -2.5696553963473105
#>     Node 22    0.4446831209711121
#>     Node 23    1.9537316931878095
#>     Node 24    -2.44896751486734
#>     Node 25    3.257733243134308
#>     Node 26    0.1603211021234275
#>     Node 27    2.2745121295619186
#>     Node 28    -3.2929483828132864
#>     Node 29    1.3438516749880025
#>     Node 30    -0.7679008437240584
#>     Node 31    2.397782861302816
#>     Node 32    0.2837917130306469
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.04766997477860897
#>     Node 2    -2.6367318854808186
#>     Node 3    -1.034659375951187
#>     Node 4    -0.5524485008070983
#>     Node 5    1.875589566325719
#>     Node 6    -1.4268737675420045
#>     Node 7    -2.0466056887239787
#>     Node 8    -0.8807290999466797
#>     Node 9    -3.2849141868365743
#>     Node 10    0.47126612793487915
#>     Node 11    -1.0093169926191787
#>     Node 12    -1.4746149760284308
#>     Node 13    -0.6686171921493652
#>     Node 14    -1.5739581425813975
#>     Node 15    2.7119847868013407
#>     Node 16    -0.0035694375767784657
#>     Node 17    -0.053739898594985534
#>     Node 18    0.42847935104609114
#>     Node 19    -2.146198017457078
#>     Node 20    -2.455936173548971
#>     Node 21    2.6093094947463715
#>     Node 22    -0.49716659632183957
#>     Node 23    -1.9953658040908928
#>     Node 24    2.431410591701419
#>     Node 25    -3.2583948990972758
#>     Node 26    -0.24607859684143643
#>     Node 27    -2.3091982590339413
#>     Node 28    3.2642778343181926
#>     Node 29    -1.3731880404200778
#>     Node 30    0.8366282013850879
#>     Node 31    -2.3383331097318396
#>     Node 32    -0.3041433505225222
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.08764821773913305
#>     Attrib V1    0.6562227425559456
#>     Attrib V10    0.06864277021489015
#>     Attrib V11    0.2826182128767552
#>     Attrib V12    0.132111266067193
#>     Attrib V13    0.10107067773636917
#>     Attrib V14    -0.5505838721390728
#>     Attrib V15    -0.3855817963688673
#>     Attrib V16    0.03430778979839943
#>     Attrib V17    0.3749125740920334
#>     Attrib V18    0.3731109142128422
#>     Attrib V19    0.3644686782326028
#>     Attrib V2    0.06437060471585375
#>     Attrib V20    0.6495606481829602
#>     Attrib V21    0.6384218028811803
#>     Attrib V22    0.7286033054540221
#>     Attrib V23    0.9357363558500217
#>     Attrib V24    0.740704243652956
#>     Attrib V25    0.04517109959157205
#>     Attrib V26    -0.8929534530078319
#>     Attrib V27    -1.0390477019265776
#>     Attrib V28    -0.13619209891318704
#>     Attrib V29    -0.8119666886786766
#>     Attrib V3    0.17634900784382757
#>     Attrib V30    0.3884077608513467
#>     Attrib V31    -0.9175894683879081
#>     Attrib V32    0.22461917652295313
#>     Attrib V33    0.6807833025164252
#>     Attrib V34    -0.4075972244876383
#>     Attrib V35    -0.2035284233494794
#>     Attrib V36    -0.9169663150936994
#>     Attrib V37    -1.421990025555478
#>     Attrib V38    0.2153747154246311
#>     Attrib V39    0.2090835232383193
#>     Attrib V4    0.5209508011712118
#>     Attrib V40    -0.6168200110648905
#>     Attrib V41    -0.040710506795556545
#>     Attrib V42    0.7775107256147069
#>     Attrib V43    1.2908376323322384
#>     Attrib V44    0.7159335400403924
#>     Attrib V45    -0.04231434048676197
#>     Attrib V46    -0.10387872211429582
#>     Attrib V47    -0.3648541021696405
#>     Attrib V48    -0.22124178187791566
#>     Attrib V49    0.5535232213643745
#>     Attrib V5    0.11097076375516983
#>     Attrib V50    -0.5620937943705331
#>     Attrib V51    0.1364414472196013
#>     Attrib V52    -0.013576077910399125
#>     Attrib V53    0.44103820585221437
#>     Attrib V54    0.6662189603591633
#>     Attrib V55    -0.480181785051245
#>     Attrib V56    0.40658513629540055
#>     Attrib V57    -0.09234657072286766
#>     Attrib V58    0.48807340623425793
#>     Attrib V59    0.2256306126749257
#>     Attrib V6    -0.15591758643980747
#>     Attrib V60    0.19710720576625496
#>     Attrib V7    0.5171464599009747
#>     Attrib V8    0.16239884934834203
#>     Attrib V9    0.7435898816691017
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.043375539788708076
#>     Attrib V1    0.3655596870069281
#>     Attrib V10    0.10017924659495929
#>     Attrib V11    0.17152071519990478
#>     Attrib V12    0.11117052776255176
#>     Attrib V13    0.1876699028341377
#>     Attrib V14    0.03613901303783944
#>     Attrib V15    0.14527273959161333
#>     Attrib V16    0.14186123324686803
#>     Attrib V17    0.12551651073250927
#>     Attrib V18    0.10409867979783956
#>     Attrib V19    0.2607456870784158
#>     Attrib V2    0.21709004969008738
#>     Attrib V20    0.40519514302313214
#>     Attrib V21    0.35234656311802776
#>     Attrib V22    0.3014381131912988
#>     Attrib V23    0.20604192790028994
#>     Attrib V24    0.04780151151163559
#>     Attrib V25    -0.1449354884059553
#>     Attrib V26    -0.46149942024249485
#>     Attrib V27    -0.5572181575715079
#>     Attrib V28    -0.19344109015974442
#>     Attrib V29    -0.38980719260611996
#>     Attrib V3    0.10847568258594689
#>     Attrib V30    0.1411490089608472
#>     Attrib V31    -0.4239689145151118
#>     Attrib V32    -0.023204291707927302
#>     Attrib V33    0.22541218719667508
#>     Attrib V34    -0.16523236190746762
#>     Attrib V35    -0.03095902557408571
#>     Attrib V36    -0.3350753432369303
#>     Attrib V37    -0.42356458552222886
#>     Attrib V38    0.15762279736659107
#>     Attrib V39    0.19237977067268555
#>     Attrib V4    0.3046301336753858
#>     Attrib V40    -0.22077487033687118
#>     Attrib V41    -0.08010279038108378
#>     Attrib V42    0.12180641512683653
#>     Attrib V43    0.35985169759393043
#>     Attrib V44    0.25402076560944553
#>     Attrib V45    0.01600402780876817
#>     Attrib V46    -0.09815097016513373
#>     Attrib V47    -0.133155772455809
#>     Attrib V48    -0.08832365277002988
#>     Attrib V49    0.20592882864949735
#>     Attrib V5    0.09459114983352347
#>     Attrib V50    -0.19308998968580965
#>     Attrib V51    0.033399036346736494
#>     Attrib V52    0.16089591934944422
#>     Attrib V53    0.24026850926025992
#>     Attrib V54    0.3279745749383162
#>     Attrib V55    0.12473363853557713
#>     Attrib V56    0.2565940255451918
#>     Attrib V57    0.06731990729888217
#>     Attrib V58    0.30239018861123557
#>     Attrib V59    0.2072173098374995
#>     Attrib V6    -0.08179953100859513
#>     Attrib V60    0.11529890096360092
#>     Attrib V7    0.2025854527597152
#>     Attrib V8    0.1587560443500933
#>     Attrib V9    0.31103121654203797
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.06373674118210824
#>     Attrib V1    0.20274070175190576
#>     Attrib V10    0.1044733515539284
#>     Attrib V11    0.16738470407505432
#>     Attrib V12    0.16580528604327566
#>     Attrib V13    0.17140388575277574
#>     Attrib V14    0.05443973656153455
#>     Attrib V15    0.06660674059449803
#>     Attrib V16    0.04414193157864264
#>     Attrib V17    0.01469975865637653
#>     Attrib V18    0.016007784956590543
#>     Attrib V19    0.04117889631799554
#>     Attrib V2    0.16343842077840895
#>     Attrib V20    0.17571210854399086
#>     Attrib V21    0.19921954877479436
#>     Attrib V22    0.07586793876598119
#>     Attrib V23    0.0486331265849911
#>     Attrib V24    -0.06074859165566196
#>     Attrib V25    -0.12136989852873259
#>     Attrib V26    -0.25325002411689673
#>     Attrib V27    -0.29845263483589346
#>     Attrib V28    -0.0018229515666089975
#>     Attrib V29    -0.10590887237090754
#>     Attrib V3    0.11563968537224378
#>     Attrib V30    0.07935642075049425
#>     Attrib V31    -0.22917956899569836
#>     Attrib V32    -0.00508573203916912
#>     Attrib V33    0.14708950701201468
#>     Attrib V34    -0.02016206141942243
#>     Attrib V35    0.01290907084257581
#>     Attrib V36    -0.219880477148147
#>     Attrib V37    -0.20525400082712508
#>     Attrib V38    0.0937109070974044
#>     Attrib V39    0.13199440536941395
#>     Attrib V4    0.2005243962191528
#>     Attrib V40    -0.11469832638877671
#>     Attrib V41    -0.07429118131146713
#>     Attrib V42    -0.009320620679864005
#>     Attrib V43    0.11569527735180096
#>     Attrib V44    0.13660620877554527
#>     Attrib V45    0.10674534925162645
#>     Attrib V46    -0.042707354509198735
#>     Attrib V47    -0.06876670948224117
#>     Attrib V48    0.08145903440298813
#>     Attrib V49    0.22338914939283672
#>     Attrib V5    0.08801573871987603
#>     Attrib V50    -0.08945405890113681
#>     Attrib V51    0.11165351116798622
#>     Attrib V52    0.20006936060771272
#>     Attrib V53    0.23899427180686714
#>     Attrib V54    0.08197414129087839
#>     Attrib V55    0.04558215922145385
#>     Attrib V56    0.12620334838761718
#>     Attrib V57    0.07369685870514728
#>     Attrib V58    0.1033830920211152
#>     Attrib V59    0.06192736421886454
#>     Attrib V6    -0.04396239098337792
#>     Attrib V60    0.004656575360690803
#>     Attrib V7    0.10561311089339873
#>     Attrib V8    -0.0032238374945166774
#>     Attrib V9    0.26069203011483416
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.35441246804214394
#>     Attrib V1    -0.2075085036615176
#>     Attrib V10    -0.17313675112518925
#>     Attrib V11    -0.43754630828857893
#>     Attrib V12    -0.8670530526232644
#>     Attrib V13    -0.31431437320653444
#>     Attrib V14    0.7373627103675613
#>     Attrib V15    0.6849979863028588
#>     Attrib V16    0.18917773803804747
#>     Attrib V17    0.32933485276574437
#>     Attrib V18    0.2063823412390526
#>     Attrib V19    0.23617534909966897
#>     Attrib V2    -0.22391840045878128
#>     Attrib V20    -0.17077109271916938
#>     Attrib V21    -0.2636851834849691
#>     Attrib V22    -0.5682238228144465
#>     Attrib V23    -0.46900284068452575
#>     Attrib V24    -0.23160756483964345
#>     Attrib V25    -0.11731522182548709
#>     Attrib V26    0.5153820955766392
#>     Attrib V27    0.3757359807411913
#>     Attrib V28    -0.6518223647574631
#>     Attrib V29    -0.0751971887861547
#>     Attrib V3    0.08349294934173492
#>     Attrib V30    -0.6814980610933943
#>     Attrib V31    0.7356455052763008
#>     Attrib V32    -0.10177561913690972
#>     Attrib V33    -0.4322074632538712
#>     Attrib V34    0.08857775625362901
#>     Attrib V35    0.05623137160293266
#>     Attrib V36    0.753642568895147
#>     Attrib V37    0.4757164961951049
#>     Attrib V38    -0.49250127427102436
#>     Attrib V39    -0.49136977955875416
#>     Attrib V4    -0.3610399864815621
#>     Attrib V40    0.1294338431284011
#>     Attrib V41    -0.3367452589669106
#>     Attrib V42    -0.06732631382111931
#>     Attrib V43    -0.5499653860241437
#>     Attrib V44    -0.4564987604122187
#>     Attrib V45    -0.3633923034751396
#>     Attrib V46    -0.2251099253079405
#>     Attrib V47    0.10187744814780704
#>     Attrib V48    -0.5533865665920306
#>     Attrib V49    -0.8142203828940517
#>     Attrib V5    0.3539702488099916
#>     Attrib V50    1.1104019325554697
#>     Attrib V51    -0.13811912388955383
#>     Attrib V52    -0.5453112002002781
#>     Attrib V53    -0.4170090628420273
#>     Attrib V54    -0.05312306064048447
#>     Attrib V55    0.9146592938149247
#>     Attrib V56    0.050502202332023
#>     Attrib V57    0.25603864963105893
#>     Attrib V58    0.20053519950420015
#>     Attrib V59    0.4225963007679175
#>     Attrib V6    -0.02316356593020639
#>     Attrib V60    0.13444002721599588
#>     Attrib V7    0.055202045830781386
#>     Attrib V8    0.4759907658990417
#>     Attrib V9    -0.7280501986402137
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.1515161841675029
#>     Attrib V1    0.4759358225751452
#>     Attrib V10    -0.012439993146250631
#>     Attrib V11    0.16400371033128142
#>     Attrib V12    0.08464279996967497
#>     Attrib V13    0.07345952670966419
#>     Attrib V14    -0.1876446290135756
#>     Attrib V15    -0.028020629903446097
#>     Attrib V16    0.2089347453201962
#>     Attrib V17    0.1940947949397455
#>     Attrib V18    0.2399600881904872
#>     Attrib V19    0.30688078300879773
#>     Attrib V2    0.1537228200713186
#>     Attrib V20    0.5528587568938255
#>     Attrib V21    0.5104001413729355
#>     Attrib V22    0.39014371964549827
#>     Attrib V23    0.3992111542325253
#>     Attrib V24    0.2918110976533454
#>     Attrib V25    -0.08351044377492604
#>     Attrib V26    -0.6065493207749828
#>     Attrib V27    -0.6887151962539306
#>     Attrib V28    -0.2270067379123986
#>     Attrib V29    -0.48443244844336897
#>     Attrib V3    0.08745636623040415
#>     Attrib V30    0.19089805313296995
#>     Attrib V31    -0.5778286466676464
#>     Attrib V32    0.04092222132044085
#>     Attrib V33    0.3778529225882108
#>     Attrib V34    -0.19867622169285923
#>     Attrib V35    -0.021411683344861963
#>     Attrib V36    -0.4657212630981939
#>     Attrib V37    -0.6299596507808017
#>     Attrib V38    0.2348484761490379
#>     Attrib V39    0.1772061857692159
#>     Attrib V4    0.3749202435572912
#>     Attrib V40    -0.36736916818249177
#>     Attrib V41    -0.023834351926923746
#>     Attrib V42    0.3496821650596591
#>     Attrib V43    0.617638285332919
#>     Attrib V44    0.3393691975125909
#>     Attrib V45    0.030209327083419682
#>     Attrib V46    -0.07652475360103972
#>     Attrib V47    -0.2549237850462307
#>     Attrib V48    -0.19138097389593398
#>     Attrib V49    0.26606893155992734
#>     Attrib V5    0.0777390771911773
#>     Attrib V50    -0.26387207441624594
#>     Attrib V51    0.045662252783016485
#>     Attrib V52    0.0023314172726105102
#>     Attrib V53    0.36001814548960154
#>     Attrib V54    0.42011825453693685
#>     Attrib V55    -0.10912663783886026
#>     Attrib V56    0.3034922648117758
#>     Attrib V57    0.028533048070807233
#>     Attrib V58    0.3354536526255013
#>     Attrib V59    0.231946823848752
#>     Attrib V6    -0.019625817566842056
#>     Attrib V60    0.21098056125932024
#>     Attrib V7    0.3641147310613834
#>     Attrib V8    0.2103026151003107
#>     Attrib V9    0.477964797769787
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.20813271445573123
#>     Attrib V1    0.20455869637567053
#>     Attrib V10    0.23122508915512852
#>     Attrib V11    0.6248555439891179
#>     Attrib V12    1.0937059689781725
#>     Attrib V13    0.3518457687291834
#>     Attrib V14    -0.7333823103247488
#>     Attrib V15    -0.8221183565691167
#>     Attrib V16    -0.26337403946330534
#>     Attrib V17    -0.30056937205187684
#>     Attrib V18    -0.10057567904241152
#>     Attrib V19    -0.36365248761176233
#>     Attrib V2    0.31327720139701815
#>     Attrib V20    -0.019081563687415665
#>     Attrib V21    0.2132144677230107
#>     Attrib V22    0.5754278052373449
#>     Attrib V23    0.6871619336258599
#>     Attrib V24    0.310904786622503
#>     Attrib V25    0.41971905130640513
#>     Attrib V26    -0.20506699297068923
#>     Attrib V27    -0.03955068916316683
#>     Attrib V28    0.8280356128759822
#>     Attrib V29    0.17444565685398014
#>     Attrib V3    0.03639139937088457
#>     Attrib V30    0.525305893349909
#>     Attrib V31    -0.8197220708538132
#>     Attrib V32    0.0026015295273951224
#>     Attrib V33    0.32655875725635275
#>     Attrib V34    -0.1321267955594079
#>     Attrib V35    -0.061796811939502684
#>     Attrib V36    -0.7306786900650629
#>     Attrib V37    -0.3722900322093687
#>     Attrib V38    0.1922029961049528
#>     Attrib V39    0.191515110598584
#>     Attrib V4    0.3524621141853384
#>     Attrib V40    -0.09325478007791667
#>     Attrib V41    0.4394709286091486
#>     Attrib V42    0.09627562334557399
#>     Attrib V43    0.5022386691984385
#>     Attrib V44    0.41658464017948205
#>     Attrib V45    0.2542921127728889
#>     Attrib V46    0.2953994423540868
#>     Attrib V47    0.12103581575585798
#>     Attrib V48    0.7208526150399764
#>     Attrib V49    0.7579438095714849
#>     Attrib V5    -0.38438718827132895
#>     Attrib V50    -0.9222772213712506
#>     Attrib V51    0.2971761762881152
#>     Attrib V52    0.7621863408632821
#>     Attrib V53    0.6456558685328764
#>     Attrib V54    0.28191540319790337
#>     Attrib V55    -1.0009504116481556
#>     Attrib V56    -0.1001022542671344
#>     Attrib V57    -0.14502593803030847
#>     Attrib V58    -0.2744755683427629
#>     Attrib V59    -0.4810314879512433
#>     Attrib V6    0.03149562774996686
#>     Attrib V60    0.026016361408446115
#>     Attrib V7    -0.2646364548314971
#>     Attrib V8    -0.5772319632794023
#>     Attrib V9    0.6654968238587814
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.14407756565723348
#>     Attrib V1    0.11885411510326149
#>     Attrib V10    0.14479521351990868
#>     Attrib V11    0.2689141994029072
#>     Attrib V12    0.35523690134612634
#>     Attrib V13    0.20421830181769196
#>     Attrib V14    -0.2801121142873663
#>     Attrib V15    -0.254393471536158
#>     Attrib V16    -0.06300106398644785
#>     Attrib V17    -0.1748039624405487
#>     Attrib V18    -0.14991555631391917
#>     Attrib V19    -0.13955613127383193
#>     Attrib V2    0.17978503759320225
#>     Attrib V20    -0.009952853699115768
#>     Attrib V21    0.07713761528531463
#>     Attrib V22    0.11144886034689941
#>     Attrib V23    0.09553479501310654
#>     Attrib V24    0.05243960541914611
#>     Attrib V25    0.08871485681802348
#>     Attrib V26    -0.13896433428696722
#>     Attrib V27    -0.10104997836514788
#>     Attrib V28    0.29018635744199117
#>     Attrib V29    -0.014549008265702294
#>     Attrib V3    -0.011761236279656678
#>     Attrib V30    0.23614913775294055
#>     Attrib V31    -0.3465009171837254
#>     Attrib V32    0.057891725546218444
#>     Attrib V33    0.21682984541512518
#>     Attrib V34    -0.02597221820744378
#>     Attrib V35    0.018292744804465643
#>     Attrib V36    -0.2757668402267647
#>     Attrib V37    -0.22396373410545511
#>     Attrib V38    0.20976320841268417
#>     Attrib V39    0.13955560137976747
#>     Attrib V4    0.21060785130421278
#>     Attrib V40    -0.14348199553580715
#>     Attrib V41    -0.007009467265280052
#>     Attrib V42    -0.16734785151231021
#>     Attrib V43    0.12815279807320978
#>     Attrib V44    0.18197563061945976
#>     Attrib V45    0.10931371731638315
#>     Attrib V46    0.042120460083449184
#>     Attrib V47    -0.04115877009138334
#>     Attrib V48    0.2590013202799326
#>     Attrib V49    0.33363954814424956
#>     Attrib V5    -0.15280184882618034
#>     Attrib V50    -0.38840926959516636
#>     Attrib V51    0.04871367104597832
#>     Attrib V52    0.24480314259874386
#>     Attrib V53    0.2469227844407269
#>     Attrib V54    0.053536648760951384
#>     Attrib V55    -0.28214374173889206
#>     Attrib V56    -0.06995095918328609
#>     Attrib V57    -0.06005853249877667
#>     Attrib V58    -0.08861319366325136
#>     Attrib V59    -0.1351462616216619
#>     Attrib V6    -0.11904968586475785
#>     Attrib V60    -0.02967592024429645
#>     Attrib V7    -0.02426983589694552
#>     Attrib V8    -0.20183626698011284
#>     Attrib V9    0.320664665648423
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.053835609621681296
#>     Attrib V1    0.1402910453345532
#>     Attrib V10    0.6287715080056839
#>     Attrib V11    0.9534307168229752
#>     Attrib V12    1.8649152917303617
#>     Attrib V13    0.8707381012323431
#>     Attrib V14    -0.291667352705218
#>     Attrib V15    -0.6257659481896612
#>     Attrib V16    -0.38011954120334496
#>     Attrib V17    -0.7039364327528245
#>     Attrib V18    -0.4917558673427134
#>     Attrib V19    -0.9305469661895298
#>     Attrib V2    0.7087618949409265
#>     Attrib V20    -0.5962641656342249
#>     Attrib V21    0.10482434561027916
#>     Attrib V22    0.6363255163401578
#>     Attrib V23    0.4374808438916416
#>     Attrib V24    0.042843489915477255
#>     Attrib V25    0.5898756600708952
#>     Attrib V26    0.615580356667829
#>     Attrib V27    1.0108223285769509
#>     Attrib V28    1.561010118228587
#>     Attrib V29    0.9776715289140406
#>     Attrib V3    0.20957193390144918
#>     Attrib V30    0.6585376716566124
#>     Attrib V31    -0.6678899204778785
#>     Attrib V32    -0.3121625275372448
#>     Attrib V33    -0.4067380843975026
#>     Attrib V34    -0.27243144573981104
#>     Attrib V35    -0.2796968523202171
#>     Attrib V36    -0.7060079857664469
#>     Attrib V37    0.1257837565607992
#>     Attrib V38    0.10471889349068651
#>     Attrib V39    0.3335161258083076
#>     Attrib V4    0.38248932041136363
#>     Attrib V40    0.20882520619460349
#>     Attrib V41    0.6635987895988432
#>     Attrib V42    -0.47753797253779084
#>     Attrib V43    0.11748005957470359
#>     Attrib V44    0.2708730806698807
#>     Attrib V45    0.4149837583033528
#>     Attrib V46    0.45151848134731376
#>     Attrib V47    0.3733981078802657
#>     Attrib V48    1.265557385171538
#>     Attrib V49    1.064780720578481
#>     Attrib V5    -0.3339044336975368
#>     Attrib V50    -0.8863832728059097
#>     Attrib V51    0.6137066992749043
#>     Attrib V52    1.447303765099615
#>     Attrib V53    1.1379892486081837
#>     Attrib V54    -0.10362886092354867
#>     Attrib V55    -0.8277890631110114
#>     Attrib V56    -0.2677886246750622
#>     Attrib V57    0.07360274676005787
#>     Attrib V58    -0.34959662248555506
#>     Attrib V59    -0.3247017590774456
#>     Attrib V6    0.3693407815013161
#>     Attrib V60    0.19352330863022957
#>     Attrib V7    -0.5716818939638159
#>     Attrib V8    -0.7744897646803723
#>     Attrib V9    0.4772901282608579
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.20650802787930772
#>     Attrib V1    -0.04711701759669744
#>     Attrib V10    -0.0857564275643489
#>     Attrib V11    -0.2270148088716081
#>     Attrib V12    -0.2554422585457384
#>     Attrib V13    -0.14193893397006457
#>     Attrib V14    0.18879161816173934
#>     Attrib V15    0.08431544378155374
#>     Attrib V16    0.043231868643169614
#>     Attrib V17    0.02139485938217193
#>     Attrib V18    0.07269848143013954
#>     Attrib V19    -0.01624986647939616
#>     Attrib V2    -0.04654011189653095
#>     Attrib V20    -0.17124356375223376
#>     Attrib V21    -0.12003122717619853
#>     Attrib V22    -0.15149386045646923
#>     Attrib V23    -0.08882713434996764
#>     Attrib V24    -0.08716941781616104
#>     Attrib V25    -0.07199401475922122
#>     Attrib V26    0.0799877273273655
#>     Attrib V27    -0.009801409954681971
#>     Attrib V28    -0.2729853662539717
#>     Attrib V29    -0.15257369374130214
#>     Attrib V3    0.05864661092834771
#>     Attrib V30    -0.23794254233500925
#>     Attrib V31    0.19398066461190674
#>     Attrib V32    -0.007160231436761252
#>     Attrib V33    -0.00683281390247103
#>     Attrib V34    0.07005683834056119
#>     Attrib V35    0.02029159089775536
#>     Attrib V36    0.25054454211593596
#>     Attrib V37    0.24715530183114073
#>     Attrib V38    -0.07023904970209148
#>     Attrib V39    -0.1144789377322988
#>     Attrib V4    -0.07380387355219864
#>     Attrib V40    0.18642157466988346
#>     Attrib V41    0.16312869234818858
#>     Attrib V42    0.08977285869781064
#>     Attrib V43    -0.13547386126006916
#>     Attrib V44    -0.11884187837087802
#>     Attrib V45    -0.1252367962390243
#>     Attrib V46    -0.08200349298661436
#>     Attrib V47    0.03863194836415784
#>     Attrib V48    -0.13255261258481008
#>     Attrib V49    -0.24727988304186416
#>     Attrib V5    0.12092553585758846
#>     Attrib V50    0.2871813352818092
#>     Attrib V51    0.018796915303126965
#>     Attrib V52    -0.10158326317308942
#>     Attrib V53    0.03480326874392045
#>     Attrib V54    -0.0015256007845858726
#>     Attrib V55    0.10030560580232269
#>     Attrib V56    0.03660001500635323
#>     Attrib V57    0.09454663306293756
#>     Attrib V58    0.0682917362579541
#>     Attrib V59    0.07259318846262237
#>     Attrib V6    0.12359777779892966
#>     Attrib V60    0.03656114623588407
#>     Attrib V7    -0.017049746021084437
#>     Attrib V8    0.14283120590777645
#>     Attrib V9    -0.21076557560941964
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.12120833382993103
#>     Attrib V1    0.2864724694229664
#>     Attrib V10    0.10953378453658978
#>     Attrib V11    0.24673138236933415
#>     Attrib V12    0.23462357313842874
#>     Attrib V13    0.08782480145531489
#>     Attrib V14    -0.20587968585741778
#>     Attrib V15    -0.11825301392081344
#>     Attrib V16    0.08180454773577946
#>     Attrib V17    0.12686997121806556
#>     Attrib V18    0.12738563734959302
#>     Attrib V19    0.11185922112535397
#>     Attrib V2    0.12782303404059894
#>     Attrib V20    0.3622881115873023
#>     Attrib V21    0.3254213861412587
#>     Attrib V22    0.28470159545162327
#>     Attrib V23    0.2710637939640747
#>     Attrib V24    0.10451006098181621
#>     Attrib V25    -0.0317730080721255
#>     Attrib V26    -0.44038761832276063
#>     Attrib V27    -0.47487695295724536
#>     Attrib V28    -0.019878492178704098
#>     Attrib V29    -0.3311618479152462
#>     Attrib V3    -0.029773661595764753
#>     Attrib V30    0.2161239105822914
#>     Attrib V31    -0.4973580788360307
#>     Attrib V32    -3.612294750899963E-4
#>     Attrib V33    0.27523590591412256
#>     Attrib V34    -0.06440441865158325
#>     Attrib V35    0.04011506854089008
#>     Attrib V36    -0.35322112876976514
#>     Attrib V37    -0.43479161072724554
#>     Attrib V38    0.2885240576338983
#>     Attrib V39    0.17942438321698778
#>     Attrib V4    0.2647939434541605
#>     Attrib V40    -0.27981902282545706
#>     Attrib V41    -0.12394311379414935
#>     Attrib V42    0.05807573972468619
#>     Attrib V43    0.39152668921030015
#>     Attrib V44    0.3414205678625964
#>     Attrib V45    0.1725036849428421
#>     Attrib V46    -0.04664683187668678
#>     Attrib V47    -0.12325532207004664
#>     Attrib V48    0.07957524323610346
#>     Attrib V49    0.32410341585509406
#>     Attrib V5    0.025809298393008554
#>     Attrib V50    -0.3050596783751015
#>     Attrib V51    0.11395176548858588
#>     Attrib V52    0.15886720823601458
#>     Attrib V53    0.24202659875247856
#>     Attrib V54    0.2781439760485487
#>     Attrib V55    -0.09429892939403428
#>     Attrib V56    0.15819752747428392
#>     Attrib V57    -0.02709944558240106
#>     Attrib V58    0.14397062881870454
#>     Attrib V59    -0.02901073150944813
#>     Attrib V6    -0.07712339185307893
#>     Attrib V60    0.03001866988943439
#>     Attrib V7    0.10472465251872073
#>     Attrib V8    0.025427039030065768
#>     Attrib V9    0.415245883918564
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.18921890485797357
#>     Attrib V1    0.4417925854836195
#>     Attrib V10    0.03544148560781603
#>     Attrib V11    0.25889911640512137
#>     Attrib V12    0.016145469111514668
#>     Attrib V13    0.0930159923487013
#>     Attrib V14    -0.14993737795299442
#>     Attrib V15    -0.02173743773092522
#>     Attrib V16    0.21421967348088833
#>     Attrib V17    0.2048251584451249
#>     Attrib V18    0.1736714035299709
#>     Attrib V19    0.3398606419235888
#>     Attrib V2    0.20435171592607435
#>     Attrib V20    0.5151091553198971
#>     Attrib V21    0.5037642904698361
#>     Attrib V22    0.4634955249878859
#>     Attrib V23    0.4133947453418007
#>     Attrib V24    0.1653488834168567
#>     Attrib V25    -0.20747634877470555
#>     Attrib V26    -0.6424660378297598
#>     Attrib V27    -0.6820478104075945
#>     Attrib V28    -0.14488464191630737
#>     Attrib V29    -0.3733368626707867
#>     Attrib V3    0.025424340746329984
#>     Attrib V30    0.23784899231047454
#>     Attrib V31    -0.6498411689129007
#>     Attrib V32    -0.03217525075313364
#>     Attrib V33    0.3942434504537707
#>     Attrib V34    -0.18292988550114414
#>     Attrib V35    -0.06579561665548708
#>     Attrib V36    -0.48382113868215804
#>     Attrib V37    -0.6305384680573746
#>     Attrib V38    0.30613288875954475
#>     Attrib V39    0.2095991949930651
#>     Attrib V4    0.4066884374812795
#>     Attrib V40    -0.31931618680203555
#>     Attrib V41    -0.08242557226397844
#>     Attrib V42    0.24579839401174147
#>     Attrib V43    0.6403554337847862
#>     Attrib V44    0.342785019356826
#>     Attrib V45    0.0832556962964796
#>     Attrib V46    -0.032535004081912414
#>     Attrib V47    -0.24481357567803846
#>     Attrib V48    -0.08061146831297418
#>     Attrib V49    0.2998687671077342
#>     Attrib V5    0.09741990138144337
#>     Attrib V50    -0.3974376522518558
#>     Attrib V51    0.06846322302123284
#>     Attrib V52    0.13204104639899322
#>     Attrib V53    0.34336709884255434
#>     Attrib V54    0.40241826552596305
#>     Attrib V55    -0.10048159584921998
#>     Attrib V56    0.2893802117108371
#>     Attrib V57    0.028575959119377416
#>     Attrib V58    0.32883677417517937
#>     Attrib V59    0.2001865100822613
#>     Attrib V6    -0.12255872202372094
#>     Attrib V60    0.13555838079654892
#>     Attrib V7    0.3115199608968157
#>     Attrib V8    0.1735961886512093
#>     Attrib V9    0.5015822212827318
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.06669307846913065
#>     Attrib V1    0.2544646320829823
#>     Attrib V10    0.03510122970696833
#>     Attrib V11    0.15352686948820352
#>     Attrib V12    0.13830312425541105
#>     Attrib V13    0.1979679737879137
#>     Attrib V14    0.004890951299454278
#>     Attrib V15    0.00790735984624897
#>     Attrib V16    0.060614858025463965
#>     Attrib V17    0.11414401890973933
#>     Attrib V18    0.1326343252947438
#>     Attrib V19    0.12801174405146284
#>     Attrib V2    0.15172226781824558
#>     Attrib V20    0.27995442020584843
#>     Attrib V21    0.24877579902087218
#>     Attrib V22    0.16137325833723454
#>     Attrib V23    0.19574246450459457
#>     Attrib V24    0.09890632577618548
#>     Attrib V25    -0.0022955739551048333
#>     Attrib V26    -0.32560351350844685
#>     Attrib V27    -0.3175508059136411
#>     Attrib V28    -0.13695959289316853
#>     Attrib V29    -0.2200067683770751
#>     Attrib V3    0.14655125979375197
#>     Attrib V30    0.0602914332450698
#>     Attrib V31    -0.3517701232875303
#>     Attrib V32    -0.0027265041201235034
#>     Attrib V33    0.1422238665813175
#>     Attrib V34    -0.038319244425809716
#>     Attrib V35    -0.03024821089457385
#>     Attrib V36    -0.2631150635739049
#>     Attrib V37    -0.27985593415034327
#>     Attrib V38    0.12262482514401987
#>     Attrib V39    0.1617184248744405
#>     Attrib V4    0.2613229355910945
#>     Attrib V40    -0.13953763510932415
#>     Attrib V41    -0.03178674410556202
#>     Attrib V42    0.06285088222972651
#>     Attrib V43    0.20349094977414425
#>     Attrib V44    0.14992208756159653
#>     Attrib V45    -0.009291756521869218
#>     Attrib V46    -0.012825455321784906
#>     Attrib V47    -0.05123495673590937
#>     Attrib V48    -0.002779297437342287
#>     Attrib V49    0.22679655069250326
#>     Attrib V5    0.10590060151008004
#>     Attrib V50    -0.16996054724787688
#>     Attrib V51    0.05481166395594533
#>     Attrib V52    0.1231240690434661
#>     Attrib V53    0.2552659417171629
#>     Attrib V54    0.17381957374245663
#>     Attrib V55    0.02681450496743025
#>     Attrib V56    0.16864609491653418
#>     Attrib V57    0.0732537193705855
#>     Attrib V58    0.16776724459813205
#>     Attrib V59    0.17163215463795156
#>     Attrib V6    0.02994427141060113
#>     Attrib V60    0.11778537556384165
#>     Attrib V7    0.20505653266615168
#>     Attrib V8    0.021708682572101217
#>     Attrib V9    0.22737283849404122
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.1706526197971259
#>     Attrib V1    0.5346281647630206
#>     Attrib V10    0.08635312629830086
#>     Attrib V11    0.29421716592919295
#>     Attrib V12    0.11066038783031962
#>     Attrib V13    0.0711090605850538
#>     Attrib V14    -0.3022919880560273
#>     Attrib V15    -0.05312011316170929
#>     Attrib V16    0.13003397348675808
#>     Attrib V17    0.2139115995825756
#>     Attrib V18    0.1706670320840561
#>     Attrib V19    0.2785840007452582
#>     Attrib V2    0.159775624748017
#>     Attrib V20    0.5564096757883621
#>     Attrib V21    0.5136195080931157
#>     Attrib V22    0.460224504619571
#>     Attrib V23    0.5038294706015316
#>     Attrib V24    0.25915328156020384
#>     Attrib V25    -0.10952864631344744
#>     Attrib V26    -0.6113248792427944
#>     Attrib V27    -0.8095745441156144
#>     Attrib V28    -0.25224819355500083
#>     Attrib V29    -0.6232276750422149
#>     Attrib V3    -0.021829642064529187
#>     Attrib V30    0.2585308303791982
#>     Attrib V31    -0.6232433554905775
#>     Attrib V32    0.03563873080797456
#>     Attrib V33    0.4790819468517557
#>     Attrib V34    -0.17808439705520285
#>     Attrib V35    0.009882911716722528
#>     Attrib V36    -0.5209025477610544
#>     Attrib V37    -0.6769784160950028
#>     Attrib V38    0.2832837355638692
#>     Attrib V39    0.24611401077353293
#>     Attrib V4    0.35305855383857326
#>     Attrib V40    -0.38716451246416994
#>     Attrib V41    -0.13563397828370446
#>     Attrib V42    0.26760507707932496
#>     Attrib V43    0.6806349518313985
#>     Attrib V44    0.47301891830827947
#>     Attrib V45    0.025684777214376286
#>     Attrib V46    -0.07239308797699988
#>     Attrib V47    -0.2844605934061981
#>     Attrib V48    -0.09575657093681482
#>     Attrib V49    0.40691479163810035
#>     Attrib V5    0.004361996645564412
#>     Attrib V50    -0.38817279482980027
#>     Attrib V51    0.012185140938435396
#>     Attrib V52    0.0346203490353685
#>     Attrib V53    0.2813498981383505
#>     Attrib V54    0.5258777511192705
#>     Attrib V55    -0.07804075644111055
#>     Attrib V56    0.32500716498009086
#>     Attrib V57    -0.019640937065129642
#>     Attrib V58    0.34096161663588037
#>     Attrib V59    0.14361454182525357
#>     Attrib V6    -0.13849934936941136
#>     Attrib V60    0.21329938820655955
#>     Attrib V7    0.3510454545704863
#>     Attrib V8    0.12371047421441703
#>     Attrib V9    0.5508290653246755
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.24634316308121365
#>     Attrib V1    -0.2772653263494436
#>     Attrib V10    -0.5714506905603269
#>     Attrib V11    -0.8449850214535818
#>     Attrib V12    -1.1572112902627922
#>     Attrib V13    -0.3390298854955588
#>     Attrib V14    0.932310295845632
#>     Attrib V15    0.9590647101776212
#>     Attrib V16    0.299576084839266
#>     Attrib V17    0.5402271386047176
#>     Attrib V18    0.27429303356788004
#>     Attrib V19    0.46880447565691413
#>     Attrib V2    -0.3678235239142482
#>     Attrib V20    -0.12241450680324673
#>     Attrib V21    -0.5319924227351233
#>     Attrib V22    -0.9348188470382298
#>     Attrib V23    -0.9091745155502614
#>     Attrib V24    -0.32597387662510985
#>     Attrib V25    -0.4345594178628966
#>     Attrib V26    0.4247002865390557
#>     Attrib V27    0.12044464094878594
#>     Attrib V28    -1.008119742057574
#>     Attrib V29    -0.17713099742797428
#>     Attrib V3    0.14693632311149818
#>     Attrib V30    -0.9021200423382871
#>     Attrib V31    1.104264368573932
#>     Attrib V32    -0.02263499921450888
#>     Attrib V33    -0.4687713056523162
#>     Attrib V34    0.2776775393644272
#>     Attrib V35    0.2043932489835607
#>     Attrib V36    0.9720367230463037
#>     Attrib V37    0.5009887944119873
#>     Attrib V38    -0.4079704921477488
#>     Attrib V39    -0.37116777075416413
#>     Attrib V4    -0.46301319988515127
#>     Attrib V40    0.19541575318311388
#>     Attrib V41    -0.5235513732770336
#>     Attrib V42    -0.14066317780672105
#>     Attrib V43    -0.6054719006597242
#>     Attrib V44    -0.6152190660286116
#>     Attrib V45    -0.42773995100615014
#>     Attrib V46    -0.32987277702049483
#>     Attrib V47    -0.03636351171382918
#>     Attrib V48    -0.855287019439531
#>     Attrib V49    -1.0208338880086998
#>     Attrib V5    0.4948848834461173
#>     Attrib V50    1.3279819701509177
#>     Attrib V51    -0.40054779438152915
#>     Attrib V52    -1.0275993443578995
#>     Attrib V53    -0.6397868674116322
#>     Attrib V54    -0.2734172970290313
#>     Attrib V55    1.2127691489997068
#>     Attrib V56    0.2914107179894843
#>     Attrib V57    0.23275910242295753
#>     Attrib V58    0.2863966630949799
#>     Attrib V59    0.8822036847694229
#>     Attrib V6    -0.21593655886776877
#>     Attrib V60    0.14289421474490774
#>     Attrib V7    -0.016129240780457632
#>     Attrib V8    0.40825761075502087
#>     Attrib V9    -1.2179165269913856
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.18449628404150342
#>     Attrib V1    0.04553585661360341
#>     Attrib V10    0.036905448863857646
#>     Attrib V11    -0.010064565961798168
#>     Attrib V12    0.004038022642549996
#>     Attrib V13    0.04089991830944636
#>     Attrib V14    0.034592790236566216
#>     Attrib V15    0.0225459169626452
#>     Attrib V16    0.0795036879407482
#>     Attrib V17    0.08103167992583063
#>     Attrib V18    0.07811740124144069
#>     Attrib V19    0.009596114073752032
#>     Attrib V2    0.03533199559432337
#>     Attrib V20    -0.06887329107293881
#>     Attrib V21    -0.08525885126766786
#>     Attrib V22    -0.07912918125610974
#>     Attrib V23    -0.08156928930825111
#>     Attrib V24    -0.009954591234271955
#>     Attrib V25    -0.0038476157218323695
#>     Attrib V26    -0.07385016228931475
#>     Attrib V27    -0.07802137025918457
#>     Attrib V28    -0.060208101263725174
#>     Attrib V29    -0.09949580006520116
#>     Attrib V3    0.12232979604229595
#>     Attrib V30    -0.1120769575355801
#>     Attrib V31    -0.03666027093623985
#>     Attrib V32    0.05122738341722313
#>     Attrib V33    0.025213713190727807
#>     Attrib V34    0.0490732631958788
#>     Attrib V35    0.006355942729160749
#>     Attrib V36    0.018859632831322096
#>     Attrib V37    0.08068952744622934
#>     Attrib V38    0.043678742296052626
#>     Attrib V39    0.037403183465701054
#>     Attrib V4    0.10405722982316001
#>     Attrib V40    0.02847356491858005
#>     Attrib V41    0.08327341670359767
#>     Attrib V42    0.07443319011497199
#>     Attrib V43    -0.01090034100625929
#>     Attrib V44    -0.03793908625325867
#>     Attrib V45    -0.011510012262772365
#>     Attrib V46    0.032877808070924504
#>     Attrib V47    0.04796708336879454
#>     Attrib V48    0.014856323325890307
#>     Attrib V49    -0.012114604559148935
#>     Attrib V5    0.09345232922905633
#>     Attrib V50    0.10748886897972779
#>     Attrib V51    0.12196402571928272
#>     Attrib V52    0.09275303976866664
#>     Attrib V53    0.1364361791206483
#>     Attrib V54    0.025767263713016353
#>     Attrib V55    0.06986450993350288
#>     Attrib V56    0.10429367727489626
#>     Attrib V57    0.12579601461900108
#>     Attrib V58    0.12951610772040045
#>     Attrib V59    0.02573225357871773
#>     Attrib V6    0.09134225193583402
#>     Attrib V60    0.06089585503151889
#>     Attrib V7    0.045813299645307434
#>     Attrib V8    0.034191981566812066
#>     Attrib V9    0.06588404466308345
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.12041825076859618
#>     Attrib V1    0.0964608482028338
#>     Attrib V10    0.07870756359965778
#>     Attrib V11    0.04872601817958243
#>     Attrib V12    0.009998036955493719
#>     Attrib V13    -0.002411332266365772
#>     Attrib V14    0.04391778441032231
#>     Attrib V15    0.10262935774702998
#>     Attrib V16    0.03881353569387088
#>     Attrib V17    0.035349895026149644
#>     Attrib V18    0.030042654455398946
#>     Attrib V19    0.013082226250366912
#>     Attrib V2    0.15172668781341278
#>     Attrib V20    -0.035708995895811516
#>     Attrib V21    -0.0563639500541042
#>     Attrib V22    -0.005266647763095271
#>     Attrib V23    -0.06411611354711202
#>     Attrib V24    -0.013505062572109474
#>     Attrib V25    -0.05442777975392947
#>     Attrib V26    -0.0962350600161902
#>     Attrib V27    -0.07802514120429961
#>     Attrib V28    -0.08320109252390452
#>     Attrib V29    -0.1403191261378587
#>     Attrib V3    0.0981286440190665
#>     Attrib V30    -0.040968233742674325
#>     Attrib V31    0.015257416261764254
#>     Attrib V32    8.664626211897806E-4
#>     Attrib V33    0.09205006551720153
#>     Attrib V34    -0.003355362378539044
#>     Attrib V35    0.062277659810671744
#>     Attrib V36    -0.015490105073548515
#>     Attrib V37    0.0101683096885207
#>     Attrib V38    0.10192765457488806
#>     Attrib V39    0.06975927660863407
#>     Attrib V4    0.11107798729645296
#>     Attrib V40    0.0104971796442117
#>     Attrib V41    0.08741466837426744
#>     Attrib V42    0.013369216867509772
#>     Attrib V43    0.05137326172013799
#>     Attrib V44    0.03237086790354863
#>     Attrib V45    0.016568161935325884
#>     Attrib V46    -0.01744320128979427
#>     Attrib V47    -0.008405038948851036
#>     Attrib V48    0.0662912874188122
#>     Attrib V49    -0.00349537757984709
#>     Attrib V5    0.08543748618733715
#>     Attrib V50    0.05747728268443586
#>     Attrib V51    0.07876628058396594
#>     Attrib V52    0.04635791729097896
#>     Attrib V53    0.08491838527117808
#>     Attrib V54    0.03789268008098354
#>     Attrib V55    0.08379509950130018
#>     Attrib V56    0.11690707302152223
#>     Attrib V57    0.15353058598927835
#>     Attrib V58    0.051516628932300974
#>     Attrib V59    0.022898482581941788
#>     Attrib V6    0.08558466888614924
#>     Attrib V60    0.04488606826173544
#>     Attrib V7    0.03385625979163163
#>     Attrib V8    0.10489605925293603
#>     Attrib V9    0.070044162098274
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.22588428115027676
#>     Attrib V1    -0.05828540541249779
#>     Attrib V10    -0.041441823586083316
#>     Attrib V11    -0.18337117087821014
#>     Attrib V12    -0.2587434295418337
#>     Attrib V13    -0.16037877187330526
#>     Attrib V14    0.11212446703892112
#>     Attrib V15    0.06082480091350991
#>     Attrib V16    0.020466410126034205
#>     Attrib V17    0.0016698209187658536
#>     Attrib V18    0.046955790667042585
#>     Attrib V19    -0.1025837847957698
#>     Attrib V2    -0.006780464915479938
#>     Attrib V20    -0.16065917777301
#>     Attrib V21    -0.11339899875522258
#>     Attrib V22    -0.1504861002111716
#>     Attrib V23    -0.09405360232121213
#>     Attrib V24    -0.05743030251123278
#>     Attrib V25    -0.015683435644673793
#>     Attrib V26    0.07280234764547641
#>     Attrib V27    0.0012182986758029586
#>     Attrib V28    -0.2216619314950709
#>     Attrib V29    -0.13841183669594814
#>     Attrib V3    0.14561354983638358
#>     Attrib V30    -0.27530632065683286
#>     Attrib V31    0.11026132705668311
#>     Attrib V32    0.04591759144758709
#>     Attrib V33    -0.024230492657769782
#>     Attrib V34    0.05778294433564958
#>     Attrib V35    -0.014809794969047328
#>     Attrib V36    0.26975763193971014
#>     Attrib V37    0.2055081666198685
#>     Attrib V38    -0.07372740767805501
#>     Attrib V39    -0.019867013994844633
#>     Attrib V4    -0.04059819057697373
#>     Attrib V40    0.12139808545022972
#>     Attrib V41    0.09062039659143156
#>     Attrib V42    0.11346748576232925
#>     Attrib V43    -0.0777215642433694
#>     Attrib V44    -0.04586022973700923
#>     Attrib V45    -0.14406596138828065
#>     Attrib V46    -0.04362781678646612
#>     Attrib V47    0.08732509390000355
#>     Attrib V48    -0.08107851458045065
#>     Attrib V49    -0.15411870912364806
#>     Attrib V5    0.14174264433491357
#>     Attrib V50    0.14380962782933193
#>     Attrib V51    0.09053231667478658
#>     Attrib V52    -0.049305393665126596
#>     Attrib V53    0.035045981832285585
#>     Attrib V54    -0.03390284094565061
#>     Attrib V55    0.11129034838160481
#>     Attrib V56    0.10021474253312125
#>     Attrib V57    0.07396527808362106
#>     Attrib V58    0.1072057377426321
#>     Attrib V59    0.11569700052463189
#>     Attrib V6    0.05991781186161797
#>     Attrib V60    0.09347736065310665
#>     Attrib V7    0.010741882765537133
#>     Attrib V8    0.16139525900824322
#>     Attrib V9    -0.11152765469819086
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.2028092787432055
#>     Attrib V1    0.5427315407765199
#>     Attrib V10    0.027845645334454917
#>     Attrib V11    0.2720542224091331
#>     Attrib V12    0.28319973052711245
#>     Attrib V13    0.1471102756475638
#>     Attrib V14    -0.49202180120428046
#>     Attrib V15    -0.27905254032067534
#>     Attrib V16    0.04488470744311889
#>     Attrib V17    0.30639302202209423
#>     Attrib V18    0.2893661110059665
#>     Attrib V19    0.32391702149164303
#>     Attrib V2    0.14508601972004487
#>     Attrib V20    0.521384514575576
#>     Attrib V21    0.5402870228105906
#>     Attrib V22    0.7138715472488713
#>     Attrib V23    0.8239324485997471
#>     Attrib V24    0.6448523300405105
#>     Attrib V25    0.1140034066725883
#>     Attrib V26    -0.7534757080646243
#>     Attrib V27    -0.8919056778722337
#>     Attrib V28    -0.0880538364073939
#>     Attrib V29    -0.690036291189844
#>     Attrib V3    0.059723593113002654
#>     Attrib V30    0.3438266716983538
#>     Attrib V31    -0.7888116678536112
#>     Attrib V32    0.14312638184784607
#>     Attrib V33    0.6088575308196307
#>     Attrib V34    -0.3639287946670154
#>     Attrib V35    -0.12207990288367103
#>     Attrib V36    -0.789481744547079
#>     Attrib V37    -1.1744285415666855
#>     Attrib V38    0.18838529449841926
#>     Attrib V39    0.1762033004869164
#>     Attrib V4    0.5085585582077548
#>     Attrib V40    -0.524600060949057
#>     Attrib V41    -0.020515020615071565
#>     Attrib V42    0.6129637074971311
#>     Attrib V43    1.0615301714446048
#>     Attrib V44    0.5700234466896426
#>     Attrib V45    0.07578456112911926
#>     Attrib V46    -0.06273276820402797
#>     Attrib V47    -0.3619661215845935
#>     Attrib V48    -0.1312061852618186
#>     Attrib V49    0.6163792331365954
#>     Attrib V5    0.05249581383547583
#>     Attrib V50    -0.6112022984679708
#>     Attrib V51    0.0826151742840225
#>     Attrib V52    0.10443955755915975
#>     Attrib V53    0.47121552917121096
#>     Attrib V54    0.6203161420011422
#>     Attrib V55    -0.3754929478114658
#>     Attrib V56    0.30243050100006635
#>     Attrib V57    -0.11579294067374164
#>     Attrib V58    0.4433622948053568
#>     Attrib V59    0.13149274069878006
#>     Attrib V6    -0.09076445984089722
#>     Attrib V60    0.21017172947779728
#>     Attrib V7    0.4280630159139873
#>     Attrib V8    0.037512196108994464
#>     Attrib V9    0.6548188440705123
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.1332296905255505
#>     Attrib V1    0.5898105734733677
#>     Attrib V10    -0.005435964792320214
#>     Attrib V11    0.3023306473897632
#>     Attrib V12    0.4227263594631049
#>     Attrib V13    0.20374948213482094
#>     Attrib V14    -0.526164622921103
#>     Attrib V15    -0.4576433648042327
#>     Attrib V16    -0.05315144736715926
#>     Attrib V17    0.4021917061358832
#>     Attrib V18    0.4456642644955962
#>     Attrib V19    0.2820086211516078
#>     Attrib V2    0.12475510589346026
#>     Attrib V20    0.43392954748229146
#>     Attrib V21    0.5863429925516802
#>     Attrib V22    0.8244767374221506
#>     Attrib V23    1.0529640936473226
#>     Attrib V24    0.8199403781404171
#>     Attrib V25    0.18928171597387367
#>     Attrib V26    -0.7559748555970155
#>     Attrib V27    -0.8444530763912911
#>     Attrib V28    -0.09626040168762505
#>     Attrib V29    -0.6744616346333501
#>     Attrib V3    0.13651669563126873
#>     Attrib V30    0.39248572401243004
#>     Attrib V31    -0.86070770955081
#>     Attrib V32    0.1714314075941201
#>     Attrib V33    0.5664225290738683
#>     Attrib V34    -0.5533613911759728
#>     Attrib V35    -0.33758827745722764
#>     Attrib V36    -0.974872770016617
#>     Attrib V37    -1.3894604619513429
#>     Attrib V38    0.09406777689458576
#>     Attrib V39    0.13036956207447822
#>     Attrib V4    0.5554191223913606
#>     Attrib V40    -0.6012379294734609
#>     Attrib V41    0.07153178569276593
#>     Attrib V42    0.6668879046631098
#>     Attrib V43    1.3396836794153875
#>     Attrib V44    0.7762232782424888
#>     Attrib V45    -0.028442972421409328
#>     Attrib V46    -0.1305838485980961
#>     Attrib V47    -0.36406475911834746
#>     Attrib V48    -0.0428014530554822
#>     Attrib V49    0.696440258929538
#>     Attrib V5    0.11450434517360249
#>     Attrib V50    -0.6491908680774118
#>     Attrib V51    0.24937382267311717
#>     Attrib V52    0.16005103216017702
#>     Attrib V53    0.5129348379415138
#>     Attrib V54    0.5717797640191433
#>     Attrib V55    -0.5444929289248301
#>     Attrib V56    0.4295157153518926
#>     Attrib V57    -0.10070326752892043
#>     Attrib V58    0.4700784990909041
#>     Attrib V59    0.23309984857361313
#>     Attrib V6    -0.044034853701962
#>     Attrib V60    0.16372014671284263
#>     Attrib V7    0.33213624255356317
#>     Attrib V8    -0.1544972044614463
#>     Attrib V9    0.6237554352122636
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.389656685852056
#>     Attrib V1    -0.32328020600537455
#>     Attrib V10    -0.291782146322867
#>     Attrib V11    -0.6348649547226087
#>     Attrib V12    -1.1349615858583444
#>     Attrib V13    -0.36370856147665787
#>     Attrib V14    1.0153818691202858
#>     Attrib V15    0.9304531674491057
#>     Attrib V16    0.27374382545683296
#>     Attrib V17    0.4308467888101322
#>     Attrib V18    0.2679105211108559
#>     Attrib V19    0.3253648507009652
#>     Attrib V2    -0.38997643194585513
#>     Attrib V20    -0.24019245887305976
#>     Attrib V21    -0.4359826405551279
#>     Attrib V22    -0.8831699898324558
#>     Attrib V23    -0.7785624935799236
#>     Attrib V24    -0.25355604663272413
#>     Attrib V25    -0.17919439454779668
#>     Attrib V26    0.7350103377675762
#>     Attrib V27    0.46220894606571444
#>     Attrib V28    -0.8866551384662034
#>     Attrib V29    -0.09661902541856698
#>     Attrib V3    0.05186509120207978
#>     Attrib V30    -0.8830909207558261
#>     Attrib V31    1.084223044052011
#>     Attrib V32    -0.18049694618716464
#>     Attrib V33    -0.591751272165401
#>     Attrib V34    0.19519799630193047
#>     Attrib V35    0.11215508828000152
#>     Attrib V36    1.000417031922037
#>     Attrib V37    0.620078924493988
#>     Attrib V38    -0.5846417962161435
#>     Attrib V39    -0.5164070340863802
#>     Attrib V4    -0.4219288671395589
#>     Attrib V40    0.225882287925345
#>     Attrib V41    -0.4463470541951126
#>     Attrib V42    -0.1899437400291814
#>     Attrib V43    -0.6747102529274908
#>     Attrib V44    -0.5941512630001269
#>     Attrib V45    -0.43914463069387705
#>     Attrib V46    -0.24826002552365636
#>     Attrib V47    0.09362449278481573
#>     Attrib V48    -0.7814804281711913
#>     Attrib V49    -1.089279645693967
#>     Attrib V5    0.47805326809113424
#>     Attrib V50    1.43163042284622
#>     Attrib V51    -0.23563117111498036
#>     Attrib V52    -0.8143452515355645
#>     Attrib V53    -0.6315000493106631
#>     Attrib V54    -0.23313915751484676
#>     Attrib V55    1.294080434703305
#>     Attrib V56    0.02892450785329282
#>     Attrib V57    0.3546166289004395
#>     Attrib V58    0.34356580316501784
#>     Attrib V59    0.6923680682660962
#>     Attrib V6    -0.13698155605296924
#>     Attrib V60    0.1952885289122715
#>     Attrib V7    0.11836688809218862
#>     Attrib V8    0.5763414493605021
#>     Attrib V9    -0.960067894999826
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.09063878827697246
#>     Attrib V1    0.24924202049162314
#>     Attrib V10    0.11029847843091031
#>     Attrib V11    0.15777252603849803
#>     Attrib V12    0.13524013581935782
#>     Attrib V13    0.10716340352922754
#>     Attrib V14    0.06497636372136378
#>     Attrib V15    0.013743194247964084
#>     Attrib V16    0.11682375325606296
#>     Attrib V17    0.06050804586265993
#>     Attrib V18    0.06472413187135621
#>     Attrib V19    0.056129436287512165
#>     Attrib V2    0.1882919425347533
#>     Attrib V20    0.16373315468484984
#>     Attrib V21    0.10075939410690227
#>     Attrib V22    0.02245256359930928
#>     Attrib V23    -0.023012199232603076
#>     Attrib V24    0.005499785052740284
#>     Attrib V25    -0.07995637870215302
#>     Attrib V26    -0.22266731955366714
#>     Attrib V27    -0.25496719614617974
#>     Attrib V28    -0.15339672008120173
#>     Attrib V29    -0.15536961177318212
#>     Attrib V3    0.08377640499498566
#>     Attrib V30    -0.007407935975133788
#>     Attrib V31    -0.14452003123687499
#>     Attrib V32    -0.013132452268771296
#>     Attrib V33    0.06552928741218594
#>     Attrib V34    -0.022396131039554446
#>     Attrib V35    0.030820420819385384
#>     Attrib V36    -0.13484536872188416
#>     Attrib V37    -0.14466067618384726
#>     Attrib V38    0.06829303886774873
#>     Attrib V39    0.0503905727537101
#>     Attrib V4    0.216897624956609
#>     Attrib V40    -0.08650241742389651
#>     Attrib V41    -0.09609753945530512
#>     Attrib V42    -0.052020238228798664
#>     Attrib V43    0.15073836213297118
#>     Attrib V44    0.07780512518055921
#>     Attrib V45    -0.02999068586436949
#>     Attrib V46    0.014764955902973885
#>     Attrib V47    -0.060334317852568126
#>     Attrib V48    0.07523646653599221
#>     Attrib V49    0.1532644302813142
#>     Attrib V5    0.10725132836776759
#>     Attrib V50    -0.033836063273549155
#>     Attrib V51    0.07295269183146849
#>     Attrib V52    0.1674831839968469
#>     Attrib V53    0.1716101638773839
#>     Attrib V54    0.15647213637064836
#>     Attrib V55    0.11604783765738509
#>     Attrib V56    0.17032780265943134
#>     Attrib V57    0.0984866164389823
#>     Attrib V58    0.1866234599999901
#>     Attrib V59    0.10372136289705551
#>     Attrib V6    0.03785930415456829
#>     Attrib V60    0.09568720793458522
#>     Attrib V7    0.12942130510307248
#>     Attrib V8    -0.002212255556226958
#>     Attrib V9    0.20469629482804222
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.1725445265132727
#>     Attrib V1    0.6113487710076748
#>     Attrib V10    -0.0016935094595059532
#>     Attrib V11    0.24086424580731455
#>     Attrib V12    0.02894305970037711
#>     Attrib V13    0.07291943174192884
#>     Attrib V14    -0.35359196215990985
#>     Attrib V15    -0.1390295259462501
#>     Attrib V16    0.12211029895347685
#>     Attrib V17    0.32217126361667064
#>     Attrib V18    0.24382675774149232
#>     Attrib V19    0.3927385265045166
#>     Attrib V2    0.07842534635177713
#>     Attrib V20    0.6802967621259137
#>     Attrib V21    0.5540376474734909
#>     Attrib V22    0.5297334263784627
#>     Attrib V23    0.634581460295393
#>     Attrib V24    0.3993875835889283
#>     Attrib V25    -0.12518402865074763
#>     Attrib V26    -0.7345959939537396
#>     Attrib V27    -0.9432744783928413
#>     Attrib V28    -0.25965039903075837
#>     Attrib V29    -0.7166872410267873
#>     Attrib V3    0.08268403000916115
#>     Attrib V30    0.2507685740010295
#>     Attrib V31    -0.7244156944580546
#>     Attrib V32    0.07370296531306608
#>     Attrib V33    0.5716565586651593
#>     Attrib V34    -0.19300465545669676
#>     Attrib V35    0.06975447122084641
#>     Attrib V36    -0.5143489610454611
#>     Attrib V37    -0.8282753742495881
#>     Attrib V38    0.313565063389664
#>     Attrib V39    0.23973002276779234
#>     Attrib V4    0.4411734416051706
#>     Attrib V40    -0.49300523515083977
#>     Attrib V41    -0.14587857481733002
#>     Attrib V42    0.4520865903388456
#>     Attrib V43    0.9024961817115353
#>     Attrib V44    0.4814491256703434
#>     Attrib V45    0.06504787911617829
#>     Attrib V46    -0.08587746326171611
#>     Attrib V47    -0.29264249436676715
#>     Attrib V48    -0.29995957011961283
#>     Attrib V49    0.3582910404385005
#>     Attrib V5    0.04664376780105476
#>     Attrib V50    -0.4202275354523819
#>     Attrib V51    0.006005472122958055
#>     Attrib V52    -0.055154742147868654
#>     Attrib V53    0.3279952006892911
#>     Attrib V54    0.6067044887893195
#>     Attrib V55    -0.159277958835116
#>     Attrib V56    0.40336885511297005
#>     Attrib V57    -0.047919916684595776
#>     Attrib V58    0.41326739362681336
#>     Attrib V59    0.22040435030585975
#>     Attrib V6    -0.10056439552948068
#>     Attrib V60    0.18488516870965513
#>     Attrib V7    0.5349577971629574
#>     Attrib V8    0.23499260478741069
#>     Attrib V9    0.614910943753916
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.20984529948025135
#>     Attrib V1    -0.265230728866759
#>     Attrib V10    -0.49042480628448126
#>     Attrib V11    -0.7213031751143457
#>     Attrib V12    -1.1124309597294029
#>     Attrib V13    -0.34070455995347804
#>     Attrib V14    0.8678330712408874
#>     Attrib V15    0.869742042705542
#>     Attrib V16    0.24913347301305833
#>     Attrib V17    0.5015815935306953
#>     Attrib V18    0.23279173988773735
#>     Attrib V19    0.4065860734724671
#>     Attrib V2    -0.34517076963630106
#>     Attrib V20    -0.08820982885971507
#>     Attrib V21    -0.4087093039556034
#>     Attrib V22    -0.8459634218622327
#>     Attrib V23    -0.7876296216098095
#>     Attrib V24    -0.36169517325035083
#>     Attrib V25    -0.3974559961843623
#>     Attrib V26    0.3892701453180335
#>     Attrib V27    0.13034124882577713
#>     Attrib V28    -0.9119287176944363
#>     Attrib V29    -0.19585872541666613
#>     Attrib V3    0.06583704419419481
#>     Attrib V30    -0.8015504681865854
#>     Attrib V31    0.9546055697147654
#>     Attrib V32    -0.00297553713014795
#>     Attrib V33    -0.4706249627666524
#>     Attrib V34    0.1822791865347927
#>     Attrib V35    0.13600622079442753
#>     Attrib V36    0.8931319968418675
#>     Attrib V37    0.4095046417221488
#>     Attrib V38    -0.35903812125055923
#>     Attrib V39    -0.3425124610094196
#>     Attrib V4    -0.4083835316815188
#>     Attrib V40    0.21124618643214033
#>     Attrib V41    -0.4233839375765848
#>     Attrib V42    -0.11380152183266215
#>     Attrib V43    -0.5022292852195946
#>     Attrib V44    -0.5517786098848995
#>     Attrib V45    -0.4510325826317133
#>     Attrib V46    -0.3183058447090035
#>     Attrib V47    -8.036795676960385E-4
#>     Attrib V48    -0.7703719443456964
#>     Attrib V49    -0.9503945174913414
#>     Attrib V5    0.3943243164223609
#>     Attrib V50    1.234480482523999
#>     Attrib V51    -0.3430093482843558
#>     Attrib V52    -0.8449024765799339
#>     Attrib V53    -0.6777530607511382
#>     Attrib V54    -0.2466512691327094
#>     Attrib V55    1.12481479484837
#>     Attrib V56    0.23702302258802851
#>     Attrib V57    0.2845756133262576
#>     Attrib V58    0.3051906660734339
#>     Attrib V59    0.743509625014164
#>     Attrib V6    -0.14731056926842012
#>     Attrib V60    0.0873794961934195
#>     Attrib V7    0.029681044474302504
#>     Attrib V8    0.4133499917574529
#>     Attrib V9    -1.0042117866797209
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.06308802801093524
#>     Attrib V1    0.04217011367134518
#>     Attrib V10    0.4778669169434443
#>     Attrib V11    0.9332392301739789
#>     Attrib V12    1.9054833535383373
#>     Attrib V13    0.7257758898836554
#>     Attrib V14    -0.3779523964828969
#>     Attrib V15    -0.8491989006576929
#>     Attrib V16    -0.43555460209045166
#>     Attrib V17    -0.44615833731395044
#>     Attrib V18    -0.14262144383352532
#>     Attrib V19    -0.795770369856059
#>     Attrib V2    0.5763483084184945
#>     Attrib V20    -0.6317316739903732
#>     Attrib V21    -0.0682736593067817
#>     Attrib V22    0.669354605952065
#>     Attrib V23    0.6837660697431228
#>     Attrib V24    0.28768128332491466
#>     Attrib V25    0.7704411479470807
#>     Attrib V26    0.5262424375573088
#>     Attrib V27    0.9317852357268216
#>     Attrib V28    1.4448106696528467
#>     Attrib V29    0.7886781253843831
#>     Attrib V3    0.24198487036134117
#>     Attrib V30    0.616076218544674
#>     Attrib V31    -0.7197189118329071
#>     Attrib V32    -0.29348087863062605
#>     Attrib V33    -0.4183766693027438
#>     Attrib V34    -0.36110870648885585
#>     Attrib V35    -0.29502363858243824
#>     Attrib V36    -0.7608387754293496
#>     Attrib V37    -0.08953964825171433
#>     Attrib V38    -0.025498124452014936
#>     Attrib V39    0.31273230343417047
#>     Attrib V4    0.45342426792960144
#>     Attrib V40    0.12666346298940886
#>     Attrib V41    0.7360658670928453
#>     Attrib V42    -0.13820251143602436
#>     Attrib V43    0.2954649112953071
#>     Attrib V44    0.4430778860214351
#>     Attrib V45    0.3493794778847622
#>     Attrib V46    0.38935963555555286
#>     Attrib V47    0.3136305258053474
#>     Attrib V48    1.2721235825274688
#>     Attrib V49    1.1434487687948862
#>     Attrib V5    -0.2423612035529406
#>     Attrib V50    -0.904726287937973
#>     Attrib V51    0.6820871596530101
#>     Attrib V52    1.4835061717922104
#>     Attrib V53    1.1535167735994005
#>     Attrib V54    -0.008633755284767366
#>     Attrib V55    -0.9669697195309714
#>     Attrib V56    -0.257503767165834
#>     Attrib V57    0.13721504259070663
#>     Attrib V58    -0.3689283733317198
#>     Attrib V59    -0.3356390285419326
#>     Attrib V6    0.33884579557480665
#>     Attrib V60    0.07209171450911593
#>     Attrib V7    -0.6669238304931304
#>     Attrib V8    -0.9354064703303633
#>     Attrib V9    0.4085672048543207
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.17776306618132942
#>     Attrib V1    0.13730597679350273
#>     Attrib V10    0.047800494500823944
#>     Attrib V11    0.0455061645660996
#>     Attrib V12    0.11314037115017453
#>     Attrib V13    0.05678101505326253
#>     Attrib V14    0.09961551702359678
#>     Attrib V15    0.024219737769546102
#>     Attrib V16    0.03661753687521023
#>     Attrib V17    0.062335087405472944
#>     Attrib V18    0.010418532039746731
#>     Attrib V19    0.070030326535941
#>     Attrib V2    0.14472152797427512
#>     Attrib V20    0.06299086067516384
#>     Attrib V21    0.03564147045925895
#>     Attrib V22    -0.018428021780196768
#>     Attrib V23    -0.015148711625330573
#>     Attrib V24    -0.04546321518361202
#>     Attrib V25    -0.029716429677275297
#>     Attrib V26    -0.12498770815990276
#>     Attrib V27    -0.0855087324136343
#>     Attrib V28    -0.02494461526823185
#>     Attrib V29    -0.09039348140130014
#>     Attrib V3    0.07857463455059674
#>     Attrib V30    -0.039844493029231404
#>     Attrib V31    -0.12619074027891675
#>     Attrib V32    -0.014846689425013037
#>     Attrib V33    0.09063417347548805
#>     Attrib V34    -0.005549128533221007
#>     Attrib V35    0.06666622132413672
#>     Attrib V36    -0.009595284120408764
#>     Attrib V37    0.018390566238989926
#>     Attrib V38    0.05673178865870995
#>     Attrib V39    0.07203949886985944
#>     Attrib V4    0.18627671095865986
#>     Attrib V40    -0.02915874046120379
#>     Attrib V41    -2.5200938757732227E-4
#>     Attrib V42    0.013203229360777582
#>     Attrib V43    0.05360722464151272
#>     Attrib V44    0.05041370133416858
#>     Attrib V45    0.010578186289527445
#>     Attrib V46    -0.011171185433454358
#>     Attrib V47    -0.005567805177923037
#>     Attrib V48    0.08537958948655272
#>     Attrib V49    0.0696461621710526
#>     Attrib V5    0.045491179066158065
#>     Attrib V50    0.034016397902874286
#>     Attrib V51    0.059160746579842154
#>     Attrib V52    0.09908651955996539
#>     Attrib V53    0.13453289743877658
#>     Attrib V54    0.080460838956282
#>     Attrib V55    0.062013969965749
#>     Attrib V56    0.12752198753200464
#>     Attrib V57    0.1347813948810812
#>     Attrib V58    0.10669162298332467
#>     Attrib V59    0.09059749435718255
#>     Attrib V6    0.08775549173129363
#>     Attrib V60    0.09243127139015613
#>     Attrib V7    0.048753987425401275
#>     Attrib V8    0.07088681070188997
#>     Attrib V9    0.0912914837335732
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.3078723277941318
#>     Attrib V1    0.7090628354290663
#>     Attrib V10    0.1519556055226004
#>     Attrib V11    0.36509317987141404
#>     Attrib V12    0.15942320500316898
#>     Attrib V13    0.11791431496718571
#>     Attrib V14    -0.6110452509754926
#>     Attrib V15    -0.30054487811413627
#>     Attrib V16    0.09023712826099296
#>     Attrib V17    0.22056245384550535
#>     Attrib V18    0.2737168023969504
#>     Attrib V19    0.3299821214868378
#>     Attrib V2    0.11025618772088355
#>     Attrib V20    0.6477179258364086
#>     Attrib V21    0.693988620057317
#>     Attrib V22    0.693264657573173
#>     Attrib V23    0.7777243353052086
#>     Attrib V24    0.5960092189068023
#>     Attrib V25    -0.02106214229349146
#>     Attrib V26    -0.7893381667420376
#>     Attrib V27    -1.047549939294868
#>     Attrib V28    -0.18573391528373345
#>     Attrib V29    -0.7446698511311685
#>     Attrib V3    -0.006075076028073142
#>     Attrib V30    0.3947482486168771
#>     Attrib V31    -0.8570370631371278
#>     Attrib V32    0.13852076173359243
#>     Attrib V33    0.6805822665168002
#>     Attrib V34    -0.23341002298759325
#>     Attrib V35    -0.02791288812945317
#>     Attrib V36    -0.7218260167305193
#>     Attrib V37    -1.0929400530089732
#>     Attrib V38    0.3433447352212433
#>     Attrib V39    0.27944658431835484
#>     Attrib V4    0.4685735351850372
#>     Attrib V40    -0.6334801788005846
#>     Attrib V41    -0.11874883855790243
#>     Attrib V42    0.5434477560737253
#>     Attrib V43    1.0457571152801213
#>     Attrib V44    0.6618762555356066
#>     Attrib V45    0.13152902996571925
#>     Attrib V46    -0.10176605983156638
#>     Attrib V47    -0.4023029401464309
#>     Attrib V48    -0.18436043664313012
#>     Attrib V49    0.4872802588789394
#>     Attrib V5    -0.0072609756574607215
#>     Attrib V50    -0.5446880760508612
#>     Attrib V51    0.06463976944762471
#>     Attrib V52    0.02133302131796866
#>     Attrib V53    0.42194697254651353
#>     Attrib V54    0.7148542943613274
#>     Attrib V55    -0.318625763208294
#>     Attrib V56    0.24976106357378014
#>     Attrib V57    -0.1151802651736378
#>     Attrib V58    0.40113653513582115
#>     Attrib V59    0.11808928405930492
#>     Attrib V6    -0.1117575143471466
#>     Attrib V60    0.21912905882897102
#>     Attrib V7    0.5247002934339408
#>     Attrib V8    0.22244734658631551
#>     Attrib V9    0.8349190263751821
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.30903177468912935
#>     Attrib V1    -0.3664398941650975
#>     Attrib V10    -0.9120558191406788
#>     Attrib V11    -1.2021983344575398
#>     Attrib V12    -1.7724970958663084
#>     Attrib V13    -0.7184251945224394
#>     Attrib V14    0.41258818596430236
#>     Attrib V15    0.5500888657083274
#>     Attrib V16    0.3494031410033871
#>     Attrib V17    1.0785581686911474
#>     Attrib V18    0.9681430571613309
#>     Attrib V19    0.910480405014678
#>     Attrib V2    -0.8705410749695432
#>     Attrib V20    0.28244074471287245
#>     Attrib V21    -0.35258497116002696
#>     Attrib V22    -0.684318146265608
#>     Attrib V23    -0.33370763687009775
#>     Attrib V24    0.33708534777604165
#>     Attrib V25    -0.20868758040536095
#>     Attrib V26    -0.2162865493912858
#>     Attrib V27    -0.5951038543220168
#>     Attrib V28    -1.6692838007864297
#>     Attrib V29    -1.0329526029126124
#>     Attrib V3    -0.03882303205797551
#>     Attrib V30    -0.8968528485383789
#>     Attrib V31    0.8563296818500719
#>     Attrib V32    0.2576632511621938
#>     Attrib V33    -0.00894036052215368
#>     Attrib V34    -0.005827979083630828
#>     Attrib V35    0.03673111681416438
#>     Attrib V36    0.7316188740758048
#>     Attrib V37    -0.2277351531024716
#>     Attrib V38    -0.3896792336440342
#>     Attrib V39    -0.5229879823483812
#>     Attrib V4    -0.41224486217119755
#>     Attrib V40    -0.1757922433127053
#>     Attrib V41    -0.4943766793029339
#>     Attrib V42    0.48119275356559577
#>     Attrib V43    -0.023285518773631723
#>     Attrib V44    -0.33673295171805534
#>     Attrib V45    -0.5986209940286842
#>     Attrib V46    -0.48165667033911047
#>     Attrib V47    -0.2685629043616618
#>     Attrib V48    -1.1803782549185897
#>     Attrib V49    -1.0766489555948493
#>     Attrib V5    0.3745482631806155
#>     Attrib V50    1.267959126080282
#>     Attrib V51    -0.4787993829564341
#>     Attrib V52    -1.5269752431610621
#>     Attrib V53    -0.9290424880148451
#>     Attrib V54    0.04120138152751429
#>     Attrib V55    0.7128038511286432
#>     Attrib V56    0.44389083309335653
#>     Attrib V57    0.1040690274452626
#>     Attrib V58    0.41250521180470145
#>     Attrib V59    0.6596692281388071
#>     Attrib V6    -0.2809825018593993
#>     Attrib V60    -0.09311978642566755
#>     Attrib V7    0.3154234888044887
#>     Attrib V8    0.6063710226210807
#>     Attrib V9    -0.8663737785477856
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.20053177456419916
#>     Attrib V1    0.3679603937801338
#>     Attrib V10    0.05816606824262386
#>     Attrib V11    0.32826842845069726
#>     Attrib V12    0.28085853504065206
#>     Attrib V13    0.14897161038243498
#>     Attrib V14    -0.2670715313811236
#>     Attrib V15    -0.17418012102230052
#>     Attrib V16    0.08718953526512636
#>     Attrib V17    0.15770095149350122
#>     Attrib V18    0.17696797353579272
#>     Attrib V19    0.16419722965827352
#>     Attrib V2    0.13659463510393263
#>     Attrib V20    0.4580260240082173
#>     Attrib V21    0.4855642998449666
#>     Attrib V22    0.5281795595350627
#>     Attrib V23    0.47498897884208396
#>     Attrib V24    0.36411194815458897
#>     Attrib V25    0.07951403690317206
#>     Attrib V26    -0.5525386657802396
#>     Attrib V27    -0.6350862466495178
#>     Attrib V28    -0.05668762359488121
#>     Attrib V29    -0.397643092402426
#>     Attrib V3    0.03683754552378456
#>     Attrib V30    0.21879506312343017
#>     Attrib V31    -0.5975897372787156
#>     Attrib V32    0.08986579588526031
#>     Attrib V33    0.3996613946629325
#>     Attrib V34    -0.1809101626119512
#>     Attrib V35    -0.024687728704300336
#>     Attrib V36    -0.5192777158179889
#>     Attrib V37    -0.627490004647989
#>     Attrib V38    0.2480913249123739
#>     Attrib V39    0.21736413959808212
#>     Attrib V4    0.30374930184669235
#>     Attrib V40    -0.3452271819106519
#>     Attrib V41    -0.012296764861244917
#>     Attrib V42    0.22691894222097617
#>     Attrib V43    0.6977887678888679
#>     Attrib V44    0.3733426376936585
#>     Attrib V45    0.13414430356688364
#>     Attrib V46    -0.05170273167540518
#>     Attrib V47    -0.19965493734354606
#>     Attrib V48    -0.02076010170609007
#>     Attrib V49    0.3940188241439705
#>     Attrib V5    -0.0346722026646739
#>     Attrib V50    -0.43271717583444097
#>     Attrib V51    0.0769220432503986
#>     Attrib V52    0.1810568853506056
#>     Attrib V53    0.3434545654341921
#>     Attrib V54    0.3459502247634745
#>     Attrib V55    -0.16864604858951474
#>     Attrib V56    0.23870139619173333
#>     Attrib V57    -0.05039591424614047
#>     Attrib V58    0.19119468958475927
#>     Attrib V59    0.03495672562575585
#>     Attrib V6    -0.048845904544209694
#>     Attrib V60    0.1370024069333381
#>     Attrib V7    0.2513100480253908
#>     Attrib V8    0.03904621333002658
#>     Attrib V9    0.4982035309905665
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.2212756758116749
#>     Attrib V1    -0.08637794166062948
#>     Attrib V10    -0.06759080952893318
#>     Attrib V11    -0.2999892335082196
#>     Attrib V12    -0.40531603641345537
#>     Attrib V13    -0.22941190550500948
#>     Attrib V14    0.2271197406399695
#>     Attrib V15    0.23255771067864953
#>     Attrib V16    0.08914003775664558
#>     Attrib V17    0.18676178519074324
#>     Attrib V18    0.0799193871650822
#>     Attrib V19    -0.020965992343540494
#>     Attrib V2    -0.09376574082721846
#>     Attrib V20    -0.19407310488925494
#>     Attrib V21    -0.13405922019926772
#>     Attrib V22    -0.22714346701964222
#>     Attrib V23    -0.18349658565465726
#>     Attrib V24    -0.10514503871186845
#>     Attrib V25    -0.0172378172154837
#>     Attrib V26    0.20820833302220712
#>     Attrib V27    0.05370668396476443
#>     Attrib V28    -0.3571042136085002
#>     Attrib V29    -0.17132340070293015
#>     Attrib V3    0.043092365861160886
#>     Attrib V30    -0.3524190467289305
#>     Attrib V31    0.34028953859006705
#>     Attrib V32    -0.02203057874434976
#>     Attrib V33    -0.17233086698907452
#>     Attrib V34    0.01082234782316859
#>     Attrib V35    0.011886133878171464
#>     Attrib V36    0.3673011764417278
#>     Attrib V37    0.3807923341653309
#>     Attrib V38    -0.2347301730858277
#>     Attrib V39    -0.1762378982875403
#>     Attrib V4    -0.10003213206567703
#>     Attrib V40    0.1266529680567848
#>     Attrib V41    0.018540013527549096
#>     Attrib V42    0.10210057570787287
#>     Attrib V43    -0.26454831646070875
#>     Attrib V44    -0.2630611628275448
#>     Attrib V45    -0.17734232545681067
#>     Attrib V46    -0.08274443370979834
#>     Attrib V47    0.03299329513580594
#>     Attrib V48    -0.2230298707665979
#>     Attrib V49    -0.4439546966549
#>     Attrib V5    0.12041030016425867
#>     Attrib V50    0.3806806297648655
#>     Attrib V51    -0.04920245200422884
#>     Attrib V52    -0.17083969656265474
#>     Attrib V53    -0.10288784400659205
#>     Attrib V54    -0.03523297005519599
#>     Attrib V55    0.19058102356948164
#>     Attrib V56    0.07320767458715455
#>     Attrib V57    0.14708938341921676
#>     Attrib V58    0.10424774595812712
#>     Attrib V59    0.15516766191136233
#>     Attrib V6    0.05066914566510145
#>     Attrib V60    0.07105839738295516
#>     Attrib V7    -0.10632864297347708
#>     Attrib V8    0.20513765741808437
#>     Attrib V9    -0.29253101904014583
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.14257265330526706
#>     Attrib V1    0.6673557687600142
#>     Attrib V10    0.06691636199502089
#>     Attrib V11    0.2726599539083238
#>     Attrib V12    -0.08878515037862193
#>     Attrib V13    0.04430071725482313
#>     Attrib V14    -0.47587633798791246
#>     Attrib V15    -0.19270875590101624
#>     Attrib V16    0.15068990204586138
#>     Attrib V17    0.3004607863798797
#>     Attrib V18    0.2364663975081478
#>     Attrib V19    0.42305852992463305
#>     Attrib V2    0.13550089421171388
#>     Attrib V20    0.8231128500378427
#>     Attrib V21    0.5855550264623954
#>     Attrib V22    0.6053311664661163
#>     Attrib V23    0.7478137317918124
#>     Attrib V24    0.5380354182096225
#>     Attrib V25    -0.1804255046931614
#>     Attrib V26    -0.8935724394059119
#>     Attrib V27    -1.1088173311001457
#>     Attrib V28    -0.2955209732810073
#>     Attrib V29    -0.8633597741617682
#>     Attrib V3    0.0017161034720054337
#>     Attrib V30    0.27815098241451414
#>     Attrib V31    -0.7748200327625344
#>     Attrib V32    0.13895698485959035
#>     Attrib V33    0.7665956955515584
#>     Attrib V34    -0.11705439438379776
#>     Attrib V35    0.09964620344576726
#>     Attrib V36    -0.6386311291835359
#>     Attrib V37    -1.043770432675854
#>     Attrib V38    0.4129808305285226
#>     Attrib V39    0.2429435547915718
#>     Attrib V4    0.45955080239826795
#>     Attrib V40    -0.5429622362884396
#>     Attrib V41    -0.20640191281893774
#>     Attrib V42    0.5268813095266556
#>     Attrib V43    1.0279076058192795
#>     Attrib V44    0.6112598921046996
#>     Attrib V45    0.05117441099021951
#>     Attrib V46    -0.05840805597822263
#>     Attrib V47    -0.3580264319227979
#>     Attrib V48    -0.3021808066147735
#>     Attrib V49    0.4096137368131419
#>     Attrib V5    0.008162811156776244
#>     Attrib V50    -0.4874130775882529
#>     Attrib V51    -5.051444363069763E-4
#>     Attrib V52    -0.13352258505346684
#>     Attrib V53    0.31074104266570607
#>     Attrib V54    0.7267076351755205
#>     Attrib V55    -0.1999015116883645
#>     Attrib V56    0.3693763936494081
#>     Attrib V57    -0.07115685264908798
#>     Attrib V58    0.4214055633451758
#>     Attrib V59    0.13995175062672882
#>     Attrib V6    -0.15952817944381026
#>     Attrib V60    0.20969188754068535
#>     Attrib V7    0.6477676381032036
#>     Attrib V8    0.31331112116197596
#>     Attrib V9    0.7934402421549921
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.12661632462084643
#>     Attrib V1    0.18166935602761328
#>     Attrib V10    0.023001537618438702
#>     Attrib V11    0.10395977308788408
#>     Attrib V12    0.09583777893270576
#>     Attrib V13    0.052645336829012665
#>     Attrib V14    0.10311975122344565
#>     Attrib V15    0.0641273022731486
#>     Attrib V16    0.07699697363848773
#>     Attrib V17    0.00552586870389553
#>     Attrib V18    0.09996119008633604
#>     Attrib V19    -0.0032265871013157327
#>     Attrib V2    0.12172845171877293
#>     Attrib V20    0.09276266773195276
#>     Attrib V21    0.06360122820910012
#>     Attrib V22    -0.008425501069889756
#>     Attrib V23    0.020768823050579012
#>     Attrib V24    -0.034633980548048185
#>     Attrib V25    -0.09232632116875575
#>     Attrib V26    -0.15876404569708683
#>     Attrib V27    -0.1563552381228257
#>     Attrib V28    -0.04282783842271262
#>     Attrib V29    -0.1236961820958183
#>     Attrib V3    0.13670997604803478
#>     Attrib V30    0.015562797194716513
#>     Attrib V31    -0.1493074680600385
#>     Attrib V32    -0.013763002947405952
#>     Attrib V33    0.09147087729127205
#>     Attrib V34    0.014181591845921628
#>     Attrib V35    0.03812338007244911
#>     Attrib V36    -0.02357444419004515
#>     Attrib V37    -0.0579241075368019
#>     Attrib V38    0.05001372046142283
#>     Attrib V39    0.07787595145908721
#>     Attrib V4    0.14762300301358353
#>     Attrib V40    -0.06266766623462994
#>     Attrib V41    -0.0391670344223831
#>     Attrib V42    0.008631004757178
#>     Attrib V43    0.015242182801466678
#>     Attrib V44    0.06924825398595903
#>     Attrib V45    0.04412475846832999
#>     Attrib V46    0.01086720076878557
#>     Attrib V47    -0.002978973839155462
#>     Attrib V48    0.009902859985074468
#>     Attrib V49    0.1334890488200232
#>     Attrib V5    0.09295728159607104
#>     Attrib V50    -0.021835893704173243
#>     Attrib V51    0.09845934979851191
#>     Attrib V52    0.15707377155475244
#>     Attrib V53    0.15863282212700336
#>     Attrib V54    0.05947129452467829
#>     Attrib V55    0.04974102747185423
#>     Attrib V56    0.1086015798475722
#>     Attrib V57    0.08730437724599883
#>     Attrib V58    0.1669999312281493
#>     Attrib V59    0.057575024561672884
#>     Attrib V6    0.08513430512105315
#>     Attrib V60    0.031994692048500785
#>     Attrib V7    0.1204090485145892
#>     Attrib V8    0.10160622383151821
#>     Attrib V9    0.16299042579140527
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
