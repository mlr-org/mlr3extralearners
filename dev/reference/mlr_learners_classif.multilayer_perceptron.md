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
#>     Threshold    -0.21528675165866998
#>     Node 2    2.650128511287034
#>     Node 3    1.4672700613350074
#>     Node 4    1.0765937509679142
#>     Node 5    -2.973729984163139
#>     Node 6    1.25429908850629
#>     Node 7    2.9737101993976363
#>     Node 8    1.0248308049070811
#>     Node 9    2.607457073051757
#>     Node 10    -1.8454791577372716
#>     Node 11    1.3017905462908428
#>     Node 12    1.8668947254570736
#>     Node 13    1.9926088494813927
#>     Node 14    1.2673457678142201
#>     Node 15    -2.3939322519454156
#>     Node 16    -0.5793030856125962
#>     Node 17    0.6221612837630426
#>     Node 18    0.38411152721082437
#>     Node 19    1.8640138236437744
#>     Node 20    2.03262060985164
#>     Node 21    -1.7865678001783456
#>     Node 22    0.8809171111934635
#>     Node 23    0.8732887334874987
#>     Node 24    -1.1335286366637103
#>     Node 25    2.9950865304614767
#>     Node 26    0.34477263346429915
#>     Node 27    1.8400035502191103
#>     Node 28    -3.8420269674217926
#>     Node 29    1.595708203962038
#>     Node 30    0.34343756997449104
#>     Node 31    0.6386872669356688
#>     Node 32    0.7672891183749198
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.2456203927153701
#>     Node 2    -2.6896883851565376
#>     Node 3    -1.4451426752399457
#>     Node 4    -1.0341603838078826
#>     Node 5    2.997377232565183
#>     Node 6    -1.2311563570703332
#>     Node 7    -2.988860207652376
#>     Node 8    -1.058741994779183
#>     Node 9    -2.617764071890698
#>     Node 10    1.781927301250653
#>     Node 11    -1.2640652199622269
#>     Node 12    -1.9356918770944063
#>     Node 13    -1.93194134649474
#>     Node 14    -1.1994696192860024
#>     Node 15    2.383440493150932
#>     Node 16    0.5599478474811723
#>     Node 17    -0.5940757766091312
#>     Node 18    -0.35162498674111875
#>     Node 19    -1.8494193186633525
#>     Node 20    -2.0136138474106517
#>     Node 21    1.8355967376128814
#>     Node 22    -0.9360267551682868
#>     Node 23    -0.9218926886689309
#>     Node 24    1.1200136737686746
#>     Node 25    -2.9986019142581815
#>     Node 26    -0.43797611106947376
#>     Node 27    -1.875084739258279
#>     Node 28    3.8163877596614943
#>     Node 29    -1.6215567211556277
#>     Node 30    -0.2760519999749552
#>     Node 31    -0.5876002275968382
#>     Node 32    -0.7874287607381845
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.06456455439127327
#>     Attrib V1    0.9080519080567193
#>     Attrib V10    0.18647985231423395
#>     Attrib V11    -0.14151063022532653
#>     Attrib V12    -0.21067392566030302
#>     Attrib V13    -0.5897009518078765
#>     Attrib V14    -0.2718725593008951
#>     Attrib V15    0.11393567410085019
#>     Attrib V16    0.08930947938750564
#>     Attrib V17    0.250558973759264
#>     Attrib V18    -0.21651400514316513
#>     Attrib V19    0.308731982605018
#>     Attrib V2    0.5330466039571726
#>     Attrib V20    0.7232412673862478
#>     Attrib V21    0.8110682335757465
#>     Attrib V22    0.2944307541051581
#>     Attrib V23    0.1911110276332702
#>     Attrib V24    0.58570700826381
#>     Attrib V25    -0.28851257646673184
#>     Attrib V26    -0.75274144616419
#>     Attrib V27    -1.133226141119614
#>     Attrib V28    -0.2749235561700746
#>     Attrib V29    0.28029759251489794
#>     Attrib V3    0.0962877107665565
#>     Attrib V30    0.2812090690755315
#>     Attrib V31    -1.665817704935737
#>     Attrib V32    -0.14995566395584164
#>     Attrib V33    0.023836170786991975
#>     Attrib V34    -0.3595787444786072
#>     Attrib V35    -0.9205436684305555
#>     Attrib V36    -1.301848958877635
#>     Attrib V37    -0.942529401983821
#>     Attrib V38    0.7007366207877723
#>     Attrib V39    0.8981217428371586
#>     Attrib V4    0.3874891083890837
#>     Attrib V40    0.14649068704749402
#>     Attrib V41    0.14380602796004902
#>     Attrib V42    0.4570716438618007
#>     Attrib V43    0.5831809554695039
#>     Attrib V44    0.96294637520546
#>     Attrib V45    -0.0065556750756380466
#>     Attrib V46    0.42490687255728316
#>     Attrib V47    -0.33193532205332676
#>     Attrib V48    -0.20005598489862378
#>     Attrib V49    0.5479416528506771
#>     Attrib V5    0.2037271692242397
#>     Attrib V50    -0.9923690909269541
#>     Attrib V51    -0.007256969644859957
#>     Attrib V52    -0.37267868631376266
#>     Attrib V53    0.22834524724832847
#>     Attrib V54    0.09270629962148991
#>     Attrib V55    -0.41590642161856867
#>     Attrib V56    0.5703906195170457
#>     Attrib V57    0.1836656918901754
#>     Attrib V58    0.36745344243537925
#>     Attrib V59    0.9093536377626056
#>     Attrib V6    -0.515042128619036
#>     Attrib V60    0.2055326737357224
#>     Attrib V7    0.023564501015928996
#>     Attrib V8    -0.41404684430600075
#>     Attrib V9    0.46891869950630666
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.07745342910241347
#>     Attrib V1    0.54626622917399
#>     Attrib V10    0.08450915709920784
#>     Attrib V11    -0.12217122362314334
#>     Attrib V12    -0.05281521773732629
#>     Attrib V13    -0.24408427539015576
#>     Attrib V14    -0.11694966654652254
#>     Attrib V15    0.16151035181789036
#>     Attrib V16    0.0245450635002048
#>     Attrib V17    0.0938022293647593
#>     Attrib V18    -0.21276141300039556
#>     Attrib V19    0.20304303686535338
#>     Attrib V2    0.3381107389986931
#>     Attrib V20    0.43903394331769263
#>     Attrib V21    0.4385273481197139
#>     Attrib V22    0.20509330555322722
#>     Attrib V23    0.08929389008744648
#>     Attrib V24    0.33613617507715143
#>     Attrib V25    -0.1145427933480737
#>     Attrib V26    -0.4586684919008975
#>     Attrib V27    -0.7380073943531923
#>     Attrib V28    -0.29427239630763197
#>     Attrib V29    0.019311131126221296
#>     Attrib V3    0.07676875295629094
#>     Attrib V30    0.14712881651692675
#>     Attrib V31    -0.9040704007844005
#>     Attrib V32    -0.07100652922711634
#>     Attrib V33    0.08312275131346612
#>     Attrib V34    -0.1721491120286547
#>     Attrib V35    -0.45048165002846385
#>     Attrib V36    -0.7005958756667389
#>     Attrib V37    -0.4794056521965469
#>     Attrib V38    0.3295411776663413
#>     Attrib V39    0.4961309391236651
#>     Attrib V4    0.23238130623768852
#>     Attrib V40    0.06516494432055385
#>     Attrib V41    0.08090013579553662
#>     Attrib V42    0.1946522879608221
#>     Attrib V43    0.2473486346406222
#>     Attrib V44    0.5178920760631063
#>     Attrib V45    -0.03455442729534501
#>     Attrib V46    0.23111282207813122
#>     Attrib V47    -0.19433593859388182
#>     Attrib V48    -0.2150287987512907
#>     Attrib V49    0.21611008709785803
#>     Attrib V5    0.10824700947815821
#>     Attrib V50    -0.5467738403990084
#>     Attrib V51    -0.051594075561587883
#>     Attrib V52    -0.250073937588664
#>     Attrib V53    0.05612169190431875
#>     Attrib V54    0.1583515496263243
#>     Attrib V55    -0.1484010778038266
#>     Attrib V56    0.3518071321258883
#>     Attrib V57    0.18134159135509428
#>     Attrib V58    0.26841029787006915
#>     Attrib V59    0.5873917150075164
#>     Attrib V6    -0.29259889728645927
#>     Attrib V60    0.18038556264991554
#>     Attrib V7    -0.025666801945184937
#>     Attrib V8    -0.2666641374727421
#>     Attrib V9    0.2504632386405443
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.06625402517574701
#>     Attrib V1    0.3760526650848639
#>     Attrib V10    0.052681835082572015
#>     Attrib V11    -0.07492813464127993
#>     Attrib V12    -0.03731461340620702
#>     Attrib V13    -0.19624337604886238
#>     Attrib V14    -0.09072007421244603
#>     Attrib V15    0.1082680273822121
#>     Attrib V16    -0.0035535037746674547
#>     Attrib V17    0.05954248649675887
#>     Attrib V18    -0.17331018698696762
#>     Attrib V19    0.1109380504056279
#>     Attrib V2    0.2217277650909286
#>     Attrib V20    0.32349193047652125
#>     Attrib V21    0.3771437333306197
#>     Attrib V22    0.10282066054901612
#>     Attrib V23    0.04993872875535454
#>     Attrib V24    0.23032235952251248
#>     Attrib V25    -0.1514952987131842
#>     Attrib V26    -0.36438468521395356
#>     Attrib V27    -0.5723781648008348
#>     Attrib V28    -0.1795897717919261
#>     Attrib V29    0.0901276265067868
#>     Attrib V3    0.06872010824851636
#>     Attrib V30    0.08250703408323017
#>     Attrib V31    -0.6665442477967188
#>     Attrib V32    -0.08709156984835172
#>     Attrib V33    0.05957333657552549
#>     Attrib V34    -0.05326430075356458
#>     Attrib V35    -0.27886242438076003
#>     Attrib V36    -0.5169902289957776
#>     Attrib V37    -0.3255429396124613
#>     Attrib V38    0.23164261735237565
#>     Attrib V39    0.3570221485291413
#>     Attrib V4    0.1319224596655824
#>     Attrib V40    0.05617808725744768
#>     Attrib V41    0.03952262781083691
#>     Attrib V42    0.12210570362424875
#>     Attrib V43    0.13289374349573002
#>     Attrib V44    0.3793725836309164
#>     Attrib V45    0.043746629076095125
#>     Attrib V46    0.16904029897934794
#>     Attrib V47    -0.16609336807634065
#>     Attrib V48    -0.09104710952848682
#>     Attrib V49    0.2053180821218404
#>     Attrib V5    0.11408039888481356
#>     Attrib V50    -0.4050301269788992
#>     Attrib V51    0.010749008577949077
#>     Attrib V52    -0.20867334854549544
#>     Attrib V53    0.07909841026840674
#>     Attrib V54    0.02151895083156386
#>     Attrib V55    -0.15646384635195643
#>     Attrib V56    0.2557122722206471
#>     Attrib V57    0.14257484516968244
#>     Attrib V58    0.1328754767573629
#>     Attrib V59    0.4187639962796465
#>     Attrib V6    -0.23789603427164832
#>     Attrib V60    0.12266836029962698
#>     Attrib V7    -0.04922294362369303
#>     Attrib V8    -0.3097883151736212
#>     Attrib V9    0.23951916173979154
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.6224020178020627
#>     Attrib V1    -0.4373017167489753
#>     Attrib V10    -1.0670758794504887
#>     Attrib V11    -0.5116583842327721
#>     Attrib V12    -0.37269253971114563
#>     Attrib V13    0.23859574387022908
#>     Attrib V14    0.3188943253979272
#>     Attrib V15    0.14111269449545188
#>     Attrib V16    0.47898064546773533
#>     Attrib V17    0.1955012325704175
#>     Attrib V18    0.30979027241148
#>     Attrib V19    -0.21361638094676944
#>     Attrib V2    -0.26670418943694535
#>     Attrib V20    0.0014085762265508128
#>     Attrib V21    -0.06859841866220365
#>     Attrib V22    -0.3444033701100538
#>     Attrib V23    -0.7367604740031458
#>     Attrib V24    -0.9241021227450563
#>     Attrib V25    0.12917469733714426
#>     Attrib V26    -0.3485974715418103
#>     Attrib V27    -0.9163760236734994
#>     Attrib V28    -1.462274891749585
#>     Attrib V29    -1.4371726686556014
#>     Attrib V3    0.10146539522311161
#>     Attrib V30    -0.6739435214483006
#>     Attrib V31    0.8786948808693098
#>     Attrib V32    0.24785008923657373
#>     Attrib V33    0.37664316634587436
#>     Attrib V34    -0.008225692384536463
#>     Attrib V35    -0.03404492046872134
#>     Attrib V36    1.3980332355150638
#>     Attrib V37    0.8719201899234277
#>     Attrib V38    -0.08228090717145506
#>     Attrib V39    -0.4604330199475125
#>     Attrib V4    -0.3139991380430321
#>     Attrib V40    -0.5887972508913969
#>     Attrib V41    -0.7940015182827579
#>     Attrib V42    -0.05442904091571215
#>     Attrib V43    -0.3906958930789056
#>     Attrib V44    -0.6639487007714597
#>     Attrib V45    -0.21708026168372052
#>     Attrib V46    -1.0599669369686464
#>     Attrib V47    -0.6017113262356967
#>     Attrib V48    -0.3605998941859868
#>     Attrib V49    -0.9348848450282387
#>     Attrib V5    -0.7386790913727865
#>     Attrib V50    0.8037321896548139
#>     Attrib V51    -0.6368607096482493
#>     Attrib V52    -0.22801233046730537
#>     Attrib V53    -0.5066887507828215
#>     Attrib V54    -0.16545287236119657
#>     Attrib V55    0.4833793699340614
#>     Attrib V56    0.3762059783196798
#>     Attrib V57    0.6102834781341683
#>     Attrib V58    -0.4117770828319063
#>     Attrib V59    -0.5188253107168239
#>     Attrib V6    -0.2663730051659984
#>     Attrib V60    -0.176338160803566
#>     Attrib V7    0.49667574146406324
#>     Attrib V8    0.8225540080351188
#>     Attrib V9    -0.889104747298579
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.04062522992482888
#>     Attrib V1    0.5170384782150979
#>     Attrib V10    -0.011947584921672371
#>     Attrib V11    -0.11845111475480058
#>     Attrib V12    -0.015766417317975994
#>     Attrib V13    -0.2574590499138681
#>     Attrib V14    -0.10379662250461205
#>     Attrib V15    0.10699765388517696
#>     Attrib V16    0.10223031615055153
#>     Attrib V17    0.06136161560009359
#>     Attrib V18    -0.1160397124899661
#>     Attrib V19    0.13768387547215058
#>     Attrib V2    0.2617238499571598
#>     Attrib V20    0.3867380409637971
#>     Attrib V21    0.4147521655506954
#>     Attrib V22    0.10688027769343372
#>     Attrib V23    0.006790367192988858
#>     Attrib V24    0.284087851791491
#>     Attrib V25    -0.07985364209975973
#>     Attrib V26    -0.39103278910997946
#>     Attrib V27    -0.6287769505948403
#>     Attrib V28    -0.36939167548208246
#>     Attrib V29    -0.0422919823252296
#>     Attrib V3    0.063176312161077
#>     Attrib V30    0.016731840184654814
#>     Attrib V31    -0.8155771893640829
#>     Attrib V32    -0.07438061210002225
#>     Attrib V33    0.061223749515997426
#>     Attrib V34    -0.14192583652829757
#>     Attrib V35    -0.37003040104073637
#>     Attrib V36    -0.5950357381309481
#>     Attrib V37    -0.388749273367472
#>     Attrib V38    0.27969222770191676
#>     Attrib V39    0.3659830175764739
#>     Attrib V4    0.24295952513674135
#>     Attrib V40    -0.008167114960101628
#>     Attrib V41    0.10108370864209248
#>     Attrib V42    0.18564695713933907
#>     Attrib V43    0.17781794243877055
#>     Attrib V44    0.3861045197378347
#>     Attrib V45    -0.0109710316891183
#>     Attrib V46    0.19749781004654063
#>     Attrib V47    -0.2171101069751348
#>     Attrib V48    -0.18865839612920735
#>     Attrib V49    0.15463720426559163
#>     Attrib V5    0.1086412056169567
#>     Attrib V50    -0.39818927740359994
#>     Attrib V51    -0.032015700354929504
#>     Attrib V52    -0.28575465641507475
#>     Attrib V53    0.12699111516921124
#>     Attrib V54    0.10549424669191382
#>     Attrib V55    -0.16754548597681146
#>     Attrib V56    0.31874485439791894
#>     Attrib V57    0.20202422870786668
#>     Attrib V58    0.21222763686774013
#>     Attrib V59    0.557723995046821
#>     Attrib V6    -0.15896773652250623
#>     Attrib V60    0.2616094203025944
#>     Attrib V7    0.07204024343944665
#>     Attrib V8    -0.19770821011980694
#>     Attrib V9    0.2554221406972658
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.8091407546408468
#>     Attrib V1    0.6615338983357574
#>     Attrib V10    1.1204708750343733
#>     Attrib V11    0.8415665361643033
#>     Attrib V12    0.6606737923035326
#>     Attrib V13    0.0686534175816998
#>     Attrib V14    -0.3466965060829085
#>     Attrib V15    -0.26211659202563536
#>     Attrib V16    -0.80831983713764
#>     Attrib V17    -0.599107458634195
#>     Attrib V18    -0.7913352759677797
#>     Attrib V19    -0.28200896234220457
#>     Attrib V2    0.3912059572140827
#>     Attrib V20    -0.26483272178099176
#>     Attrib V21    -0.09282721487378087
#>     Attrib V22    0.04588515289068371
#>     Attrib V23    0.3768474457566023
#>     Attrib V24    0.6805032091344424
#>     Attrib V25    0.045020534878380564
#>     Attrib V26    0.6480164204145321
#>     Attrib V27    1.1085904357761658
#>     Attrib V28    1.315867941576953
#>     Attrib V29    1.1150366235849505
#>     Attrib V3    0.06498613598441645
#>     Attrib V30    0.38658253132554526
#>     Attrib V31    -0.7592660285610663
#>     Attrib V32    -0.32643795094849387
#>     Attrib V33    -0.3777359141721877
#>     Attrib V34    0.20582061562610152
#>     Attrib V35    0.40463172570414635
#>     Attrib V36    -1.1820592153044482
#>     Attrib V37    -0.6594944627783781
#>     Attrib V38    -0.10830451126935323
#>     Attrib V39    0.29679544897324917
#>     Attrib V4    0.15895532632331522
#>     Attrib V40    0.7222926197330048
#>     Attrib V41    0.9713614690768861
#>     Attrib V42    -0.12574031000362254
#>     Attrib V43    -0.06643112488917749
#>     Attrib V44    0.23142817254455778
#>     Attrib V45    0.2530990367060219
#>     Attrib V46    1.0115793883609312
#>     Attrib V47    0.6870624622046284
#>     Attrib V48    0.5290836989324489
#>     Attrib V49    0.6822423962190173
#>     Attrib V5    0.8830092868162628
#>     Attrib V50    -0.7178934706944097
#>     Attrib V51    0.727597495271706
#>     Attrib V52    0.05027903576377397
#>     Attrib V53    0.24228240859389208
#>     Attrib V54    0.3739250824790515
#>     Attrib V55    -0.2926798637820789
#>     Attrib V56    -0.4385411727629321
#>     Attrib V57    -0.45713636749872005
#>     Attrib V58    0.3095967374813418
#>     Attrib V59    0.6655898591984487
#>     Attrib V6    0.5386176349515597
#>     Attrib V60    0.38328952829802704
#>     Attrib V7    -0.32386606701354975
#>     Attrib V8    -0.8421363792034713
#>     Attrib V9    0.9092145672435737
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.05086269448964994
#>     Attrib V1    0.3782898566420148
#>     Attrib V10    0.1117414600187117
#>     Attrib V11    -0.016096232124578065
#>     Attrib V12    -0.006895684590823009
#>     Attrib V13    -0.20288749372397347
#>     Attrib V14    -0.22130466026484807
#>     Attrib V15    0.021192492933182445
#>     Attrib V16    0.008298135624220564
#>     Attrib V17    -0.001572470134998406
#>     Attrib V18    -0.23556326281560983
#>     Attrib V19    0.10219678133406866
#>     Attrib V2    0.23879559021611352
#>     Attrib V20    0.25321921980756645
#>     Attrib V21    0.30548806272208384
#>     Attrib V22    0.10037097085184607
#>     Attrib V23    0.03909780031008192
#>     Attrib V24    0.2748365726413231
#>     Attrib V25    -0.10561723249195692
#>     Attrib V26    -0.2926332235687347
#>     Attrib V27    -0.4572283807357945
#>     Attrib V28    -0.12012967087733588
#>     Attrib V29    0.12776271679866089
#>     Attrib V3    0.02134191927622026
#>     Attrib V30    0.12020529055884165
#>     Attrib V31    -0.6515165370810754
#>     Attrib V32    -0.06565603004388706
#>     Attrib V33    0.04568524518291887
#>     Attrib V34    -0.05922799200110725
#>     Attrib V35    -0.26226689980040463
#>     Attrib V36    -0.5015556794546645
#>     Attrib V37    -0.3220561999103038
#>     Attrib V38    0.2915757675294291
#>     Attrib V39    0.31682503019529157
#>     Attrib V4    0.17208054191284466
#>     Attrib V40    0.0303231616221648
#>     Attrib V41    0.06775600168082332
#>     Attrib V42    -0.008530260680342296
#>     Attrib V43    0.10691206820387553
#>     Attrib V44    0.37447852767640505
#>     Attrib V45    -0.003779729468285226
#>     Attrib V46    0.24680350656217828
#>     Attrib V47    -0.09759104641334855
#>     Attrib V48    -0.060652878230049646
#>     Attrib V49    0.1978987738391639
#>     Attrib V5    0.08011999495265475
#>     Attrib V50    -0.46493422312069677
#>     Attrib V51    -0.03288752019497311
#>     Attrib V52    -0.21998593389417562
#>     Attrib V53    0.07130993337276031
#>     Attrib V54    0.07611112234708371
#>     Attrib V55    -0.19503513189699595
#>     Attrib V56    0.15311007652712438
#>     Attrib V57    0.13222330553444156
#>     Attrib V58    0.1085713265978551
#>     Attrib V59    0.4261238474367386
#>     Attrib V6    -0.21595577141104083
#>     Attrib V60    0.1740923453566662
#>     Attrib V7    -0.06466540637987556
#>     Attrib V8    -0.35860000797530356
#>     Attrib V9    0.23463769945823915
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.6494215710978498
#>     Attrib V1    0.5413243129916171
#>     Attrib V10    1.0126670183567348
#>     Attrib V11    0.6990381247208669
#>     Attrib V12    0.676939454284804
#>     Attrib V13    0.17773300771307654
#>     Attrib V14    -0.30638375572397797
#>     Attrib V15    -0.21986585422247754
#>     Attrib V16    -0.7401560609207065
#>     Attrib V17    -0.5479610641804985
#>     Attrib V18    -0.7202299589713727
#>     Attrib V19    -0.31894527076957563
#>     Attrib V2    0.34157471366460473
#>     Attrib V20    -0.2882743223085837
#>     Attrib V21    -0.11526835452034671
#>     Attrib V22    0.011143152279341425
#>     Attrib V23    0.2759169568980286
#>     Attrib V24    0.6149979758929464
#>     Attrib V25    0.11034358449375996
#>     Attrib V26    0.612782035147039
#>     Attrib V27    1.0314739989309138
#>     Attrib V28    1.1643792064767124
#>     Attrib V29    0.9423340687557966
#>     Attrib V3    0.04412226176323389
#>     Attrib V30    0.353420314368955
#>     Attrib V31    -0.6410534278268708
#>     Attrib V32    -0.2659056226160794
#>     Attrib V33    -0.3303293953330232
#>     Attrib V34    0.19827497556460488
#>     Attrib V35    0.3200227452961519
#>     Attrib V36    -1.0320369477760063
#>     Attrib V37    -0.618657632414463
#>     Attrib V38    -0.08685939937074073
#>     Attrib V39    0.32258413597428054
#>     Attrib V4    0.17308777974509335
#>     Attrib V40    0.5794684231625519
#>     Attrib V41    0.8156250800901622
#>     Attrib V42    -0.14885781604441164
#>     Attrib V43    0.030315547408282725
#>     Attrib V44    0.21021487005568937
#>     Attrib V45    0.211640631980865
#>     Attrib V46    0.8921421861236529
#>     Attrib V47    0.6157274427034634
#>     Attrib V48    0.46133737580481304
#>     Attrib V49    0.6536733332608319
#>     Attrib V5    0.7728078054594768
#>     Attrib V50    -0.6331561145274326
#>     Attrib V51    0.6445285843194153
#>     Attrib V52    0.058913516123310264
#>     Attrib V53    0.29817778695644315
#>     Attrib V54    0.32354726848645093
#>     Attrib V55    -0.20914688096281633
#>     Attrib V56    -0.346728571801842
#>     Attrib V57    -0.46701704399702054
#>     Attrib V58    0.25594627091292743
#>     Attrib V59    0.613011240225045
#>     Attrib V6    0.4622487696790453
#>     Attrib V60    0.2959195050626657
#>     Attrib V7    -0.3033090090153925
#>     Attrib V8    -0.722024714015251
#>     Attrib V9    0.7412620073715123
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.5100972205496583
#>     Attrib V1    -0.39120856891741757
#>     Attrib V10    -0.50681345564519
#>     Attrib V11    -0.22390211115524347
#>     Attrib V12    -0.2530220475491711
#>     Attrib V13    0.18343068589529005
#>     Attrib V14    0.34336743382303164
#>     Attrib V15    0.04889539145503883
#>     Attrib V16    0.41313394124439234
#>     Attrib V17    0.17903001975306596
#>     Attrib V18    0.4011430489000359
#>     Attrib V19    -0.04701936160344762
#>     Attrib V2    -0.3172897226915539
#>     Attrib V20    -0.008677469894793535
#>     Attrib V21    -0.008976305540778518
#>     Attrib V22    -0.03631352280525142
#>     Attrib V23    -0.2136132564992347
#>     Attrib V24    -0.5700036542153932
#>     Attrib V25    0.029370109576964624
#>     Attrib V26    -0.06481105135963483
#>     Attrib V27    -0.4006209598803912
#>     Attrib V28    -0.9020292205212613
#>     Attrib V29    -0.9942528609075965
#>     Attrib V3    -0.0636889321128707
#>     Attrib V30    -0.43392849905767256
#>     Attrib V31    0.6371346117315884
#>     Attrib V32    0.12500393787939942
#>     Attrib V33    0.23000495551141578
#>     Attrib V34    -0.06617534704519207
#>     Attrib V35    -0.07199758764895732
#>     Attrib V36    0.9322320245170657
#>     Attrib V37    0.568334053431331
#>     Attrib V38    -0.06471843656131258
#>     Attrib V39    -0.315755374425612
#>     Attrib V4    -0.19968897930686877
#>     Attrib V40    -0.2602727480483707
#>     Attrib V41    -0.4422141272774139
#>     Attrib V42    -0.1209311159427042
#>     Attrib V43    -0.2910104679122699
#>     Attrib V44    -0.4330860539564591
#>     Attrib V45    -0.08179486582892263
#>     Attrib V46    -0.7036049431146899
#>     Attrib V47    -0.3746918607793719
#>     Attrib V48    -0.24173936128482487
#>     Attrib V49    -0.5654553053408552
#>     Attrib V5    -0.5005354708414534
#>     Attrib V50    0.6594099827051413
#>     Attrib V51    -0.2555646941218563
#>     Attrib V52    -0.07935788930674627
#>     Attrib V53    -0.2778624143456024
#>     Attrib V54    -0.16820821311266568
#>     Attrib V55    0.3020414736381557
#>     Attrib V56    0.06633009062130715
#>     Attrib V57    0.3307505724910361
#>     Attrib V58    -0.20678577897221803
#>     Attrib V59    -0.5294626294097509
#>     Attrib V6    -0.11285868453310213
#>     Attrib V60    -0.2171467243811126
#>     Attrib V7    0.38034095592853034
#>     Attrib V8    0.720814245334924
#>     Attrib V9    -0.4862042706752738
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.03718130345461199
#>     Attrib V1    0.4646439029179838
#>     Attrib V10    0.07473633478302859
#>     Attrib V11    -0.07920713884747693
#>     Attrib V12    -0.02643498011439782
#>     Attrib V13    -0.33774420855340936
#>     Attrib V14    -0.1989999899018664
#>     Attrib V15    0.04834201645008306
#>     Attrib V16    0.017396838678132538
#>     Attrib V17    0.1186549617702799
#>     Attrib V18    -0.1509462851101433
#>     Attrib V19    0.143078093441746
#>     Attrib V2    0.2509543119231697
#>     Attrib V20    0.42959724307797886
#>     Attrib V21    0.3976738527509246
#>     Attrib V22    0.1297868631697973
#>     Attrib V23    0.058711557464838554
#>     Attrib V24    0.2863865189219623
#>     Attrib V25    -0.121328058437086
#>     Attrib V26    -0.451782946219324
#>     Attrib V27    -0.6307696201513121
#>     Attrib V28    -0.20616902582113497
#>     Attrib V29    0.07729077204378468
#>     Attrib V3    -0.005597307924133329
#>     Attrib V30    0.11187420406124696
#>     Attrib V31    -0.8823293930418746
#>     Attrib V32    -0.1471314919949127
#>     Attrib V33    0.009269349161705858
#>     Attrib V34    -0.08126756947421532
#>     Attrib V35    -0.32728667839394193
#>     Attrib V36    -0.5908404884662614
#>     Attrib V37    -0.39953262848811155
#>     Attrib V38    0.4014563362505057
#>     Attrib V39    0.42830596170666296
#>     Attrib V4    0.17515298520178307
#>     Attrib V40    0.031083715608895484
#>     Attrib V41    0.019184872213372388
#>     Attrib V42    0.12996450071247997
#>     Attrib V43    0.20661225770160785
#>     Attrib V44    0.5011037925015694
#>     Attrib V45    0.06161061645251188
#>     Attrib V46    0.24820869316567343
#>     Attrib V47    -0.12841821034583825
#>     Attrib V48    -0.09773562822233134
#>     Attrib V49    0.21982378567178937
#>     Attrib V5    0.13357908021490122
#>     Attrib V50    -0.47829857732510894
#>     Attrib V51    0.03688025537478829
#>     Attrib V52    -0.2790266608235883
#>     Attrib V53    0.06518827570867462
#>     Attrib V54    0.12777805648863905
#>     Attrib V55    -0.18731147933700698
#>     Attrib V56    0.290780306530536
#>     Attrib V57    0.16393024753992877
#>     Attrib V58    0.1930026113952712
#>     Attrib V59    0.44879145811737947
#>     Attrib V6    -0.24302806571965083
#>     Attrib V60    0.14765332578600485
#>     Attrib V7    -0.08759815189958738
#>     Attrib V8    -0.29509948800915603
#>     Attrib V9    0.27782975238920377
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.045625933539229564
#>     Attrib V1    0.6431425634039594
#>     Attrib V10    0.10931261045062687
#>     Attrib V11    -0.05349686539941571
#>     Attrib V12    -0.14111415836894386
#>     Attrib V13    -0.44506605370388064
#>     Attrib V14    -0.24162580890423227
#>     Attrib V15    0.061175029070790324
#>     Attrib V16    0.05597784349608544
#>     Attrib V17    0.14998165198535876
#>     Attrib V18    -0.22320159389758285
#>     Attrib V19    0.26364174059844886
#>     Attrib V2    0.42898831417854566
#>     Attrib V20    0.48134624149478455
#>     Attrib V21    0.5473392069441946
#>     Attrib V22    0.2584128157172825
#>     Attrib V23    0.12422046391750449
#>     Attrib V24    0.3898112509522292
#>     Attrib V25    -0.2330022406770182
#>     Attrib V26    -0.5832937101193733
#>     Attrib V27    -0.8155701287123651
#>     Attrib V28    -0.25369321454997196
#>     Attrib V29    0.23597442187552664
#>     Attrib V3    -0.02409730778119191
#>     Attrib V30    0.19911619145815507
#>     Attrib V31    -1.2468401819290913
#>     Attrib V32    -0.17181313513775998
#>     Attrib V33    0.06782567348820151
#>     Attrib V34    -0.18714097986340134
#>     Attrib V35    -0.5965784845538387
#>     Attrib V36    -0.9332100906710293
#>     Attrib V37    -0.6359880033865384
#>     Attrib V38    0.5329835307074684
#>     Attrib V39    0.6246502993863946
#>     Attrib V4    0.31416375333201657
#>     Attrib V40    0.13334846673199494
#>     Attrib V41    0.11084781875660717
#>     Attrib V42    0.2290769918342265
#>     Attrib V43    0.39643178930010164
#>     Attrib V44    0.6483549061218624
#>     Attrib V45    0.030625315829544086
#>     Attrib V46    0.4124232632773693
#>     Attrib V47    -0.23088818829446806
#>     Attrib V48    -0.1299488195300811
#>     Attrib V49    0.3496428947306711
#>     Attrib V5    0.16322241970704235
#>     Attrib V50    -0.7882045655708749
#>     Attrib V51    0.0016200975909219412
#>     Attrib V52    -0.30332150549935744
#>     Attrib V53    0.160116641346982
#>     Attrib V54    0.09367283234463206
#>     Attrib V55    -0.3390602639508592
#>     Attrib V56    0.4104509213472505
#>     Attrib V57    0.20730459122785314
#>     Attrib V58    0.2839869923859772
#>     Attrib V59    0.7234368448852999
#>     Attrib V6    -0.3976130314195746
#>     Attrib V60    0.20305031819280836
#>     Attrib V7    -0.018163527102661135
#>     Attrib V8    -0.38741850886363133
#>     Attrib V9    0.3973230289885503
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.10611844959221978
#>     Attrib V1    0.6907584354156284
#>     Attrib V10    0.06117862887816833
#>     Attrib V11    -0.16605534571390027
#>     Attrib V12    -0.14296949155873287
#>     Attrib V13    -0.3616960864955927
#>     Attrib V14    -0.19497564092699965
#>     Attrib V15    0.12514719705352442
#>     Attrib V16    0.0649295208353671
#>     Attrib V17    0.17891156948008655
#>     Attrib V18    -0.20009928488624432
#>     Attrib V19    0.21815976979019633
#>     Attrib V2    0.35486539101190495
#>     Attrib V20    0.5542606078845491
#>     Attrib V21    0.59396786970303
#>     Attrib V22    0.18547564973011288
#>     Attrib V23    0.11029057108635178
#>     Attrib V24    0.4125248880747495
#>     Attrib V25    -0.1700592537302038
#>     Attrib V26    -0.624210808164911
#>     Attrib V27    -0.8824143794190011
#>     Attrib V28    -0.36210629547658996
#>     Attrib V29    0.13027712440309266
#>     Attrib V3    0.09329533017988197
#>     Attrib V30    0.13371383257818756
#>     Attrib V31    -1.2770679607108917
#>     Attrib V32    -0.15315669093871198
#>     Attrib V33    0.024595273826406108
#>     Attrib V34    -0.2044201277771499
#>     Attrib V35    -0.6536988451021855
#>     Attrib V36    -0.9184437776806009
#>     Attrib V37    -0.6088622491522724
#>     Attrib V38    0.5058201425758425
#>     Attrib V39    0.6977222794764623
#>     Attrib V4    0.3181762727542543
#>     Attrib V40    0.08772798837687246
#>     Attrib V41    0.0898219229685113
#>     Attrib V42    0.292573846003845
#>     Attrib V43    0.3224145813433817
#>     Attrib V44    0.6462738943564086
#>     Attrib V45    -0.054105760697527115
#>     Attrib V46    0.3434094994209352
#>     Attrib V47    -0.23822097185975902
#>     Attrib V48    -0.21841632635692687
#>     Attrib V49    0.3693398178795149
#>     Attrib V5    0.1631249167078867
#>     Attrib V50    -0.724169256504304
#>     Attrib V51    -0.06519516468363416
#>     Attrib V52    -0.41615985014609275
#>     Attrib V53    0.15372138436028984
#>     Attrib V54    0.09996736226110157
#>     Attrib V55    -0.3011105460687702
#>     Attrib V56    0.4388229033954705
#>     Attrib V57    0.24630839890847525
#>     Attrib V58    0.2799568423928499
#>     Attrib V59    0.7816541216265679
#>     Attrib V6    -0.31783334937706453
#>     Attrib V60    0.32784750551034636
#>     Attrib V7    0.1028192794339978
#>     Attrib V8    -0.3823583102033057
#>     Attrib V9    0.33751421957913214
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.05526188022225799
#>     Attrib V1    0.5246158454026173
#>     Attrib V10    0.06217775147576412
#>     Attrib V11    -0.03403470431766262
#>     Attrib V12    -0.0025952359512645276
#>     Attrib V13    -0.25616121659009533
#>     Attrib V14    -0.1678966699167143
#>     Attrib V15    0.11416779080425547
#>     Attrib V16    -0.006252694295134893
#>     Attrib V17    0.0723035506791318
#>     Attrib V18    -0.16697626583420389
#>     Attrib V19    0.11058800749512479
#>     Attrib V2    0.28334079664980094
#>     Attrib V20    0.35858130176782155
#>     Attrib V21    0.36614736949217
#>     Attrib V22    0.12164766245570979
#>     Attrib V23    0.0594030394008376
#>     Attrib V24    0.24316418161752376
#>     Attrib V25    -0.09537229829184124
#>     Attrib V26    -0.3481235010870299
#>     Attrib V27    -0.636940221983566
#>     Attrib V28    -0.32620736257167193
#>     Attrib V29    -0.02469643324469085
#>     Attrib V3    0.0022816288228166555
#>     Attrib V30    0.07054576358327669
#>     Attrib V31    -0.7726189347860669
#>     Attrib V32    -0.12481790531396919
#>     Attrib V33    0.05455822130154566
#>     Attrib V34    -0.12301913419029688
#>     Attrib V35    -0.3171597327545337
#>     Attrib V36    -0.5705801387059242
#>     Attrib V37    -0.32215000537863975
#>     Attrib V38    0.2928759038763818
#>     Attrib V39    0.41037641854592555
#>     Attrib V4    0.1853243384422334
#>     Attrib V40    0.027884007456296288
#>     Attrib V41    0.023884514397771058
#>     Attrib V42    0.07536911576039439
#>     Attrib V43    0.15214970232111785
#>     Attrib V44    0.4361824684028718
#>     Attrib V45    -0.06959455928359072
#>     Attrib V46    0.22672833292363187
#>     Attrib V47    -0.20058243276908758
#>     Attrib V48    -0.11918872854551758
#>     Attrib V49    0.21933676752284273
#>     Attrib V5    0.06384196142769624
#>     Attrib V50    -0.45097441175075564
#>     Attrib V51    -0.0643799414885799
#>     Attrib V52    -0.2660107735026602
#>     Attrib V53    0.04004649449115618
#>     Attrib V54    0.1569829155099434
#>     Attrib V55    -0.11953832636079627
#>     Attrib V56    0.30151846063018883
#>     Attrib V57    0.18429004956391629
#>     Attrib V58    0.20526016113987988
#>     Attrib V59    0.5021139669950652
#>     Attrib V6    -0.22765462460999286
#>     Attrib V60    0.24112833661478777
#>     Attrib V7    0.005712265141768485
#>     Attrib V8    -0.3140253354320759
#>     Attrib V9    0.23562113924278366
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.6456210693540141
#>     Attrib V1    -0.5028384751971849
#>     Attrib V10    -0.7026107044206322
#>     Attrib V11    -0.3292235577026538
#>     Attrib V12    -0.2647380864280964
#>     Attrib V13    0.2130331283692558
#>     Attrib V14    0.3075496118152922
#>     Attrib V15    0.10610889442938853
#>     Attrib V16    0.4864486440396484
#>     Attrib V17    0.19435730873954862
#>     Attrib V18    0.32489940281105467
#>     Attrib V19    -0.18062369082018032
#>     Attrib V2    -0.4039033384171648
#>     Attrib V20    -0.08817731273465386
#>     Attrib V21    -0.11372426708408583
#>     Attrib V22    -0.12301797515317753
#>     Attrib V23    -0.5285001198476506
#>     Attrib V24    -0.8222788287360393
#>     Attrib V25    0.02210720979231839
#>     Attrib V26    -0.1051492673642764
#>     Attrib V27    -0.5769015239564849
#>     Attrib V28    -1.146317581633487
#>     Attrib V29    -1.21609597294628
#>     Attrib V3    -0.036647252060688466
#>     Attrib V30    -0.5605121388830469
#>     Attrib V31    0.8833409278547482
#>     Attrib V32    0.3036032059656015
#>     Attrib V33    0.30617360850316316
#>     Attrib V34    -0.019086473129712123
#>     Attrib V35    -0.08163101784074472
#>     Attrib V36    1.267925293120355
#>     Attrib V37    0.8064297664778406
#>     Attrib V38    -0.11812495350526094
#>     Attrib V39    -0.40669825430390194
#>     Attrib V4    -0.19956788235801867
#>     Attrib V40    -0.4574872851221063
#>     Attrib V41    -0.6803459479463141
#>     Attrib V42    -0.2289634773890474
#>     Attrib V43    -0.43145653573375703
#>     Attrib V44    -0.658802823678932
#>     Attrib V45    -0.116234957408685
#>     Attrib V46    -0.8388208418185603
#>     Attrib V47    -0.4507810462347858
#>     Attrib V48    -0.21527249300020157
#>     Attrib V49    -0.7257444749994366
#>     Attrib V5    -0.6377341471046167
#>     Attrib V50    0.843640132359886
#>     Attrib V51    -0.32666773395416354
#>     Attrib V52    -0.1722893162056993
#>     Attrib V53    -0.4629166327882838
#>     Attrib V54    -0.23161771212915372
#>     Attrib V55    0.4289385903699324
#>     Attrib V56    0.18855798986810615
#>     Attrib V57    0.4775621767118522
#>     Attrib V58    -0.2967147616994302
#>     Attrib V59    -0.5835122273751976
#>     Attrib V6    -0.2406193293573538
#>     Attrib V60    -0.16480854713492143
#>     Attrib V7    0.46215693666382857
#>     Attrib V8    0.873503397497555
#>     Attrib V9    -0.6120558443853054
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.18971035734061295
#>     Attrib V1    -0.19114520639671678
#>     Attrib V10    -0.10973137358879868
#>     Attrib V11    -0.06587351216467865
#>     Attrib V12    -0.11012306736850905
#>     Attrib V13    0.08200292728732891
#>     Attrib V14    0.12466878258915287
#>     Attrib V15    0.03192732546285405
#>     Attrib V16    0.1764943660087594
#>     Attrib V17    0.1500370388383826
#>     Attrib V18    0.2499070511607651
#>     Attrib V19    0.04017622265554688
#>     Attrib V2    -0.19445922678250377
#>     Attrib V20    -0.09359217186469534
#>     Attrib V21    -0.10656378616918462
#>     Attrib V22    -0.0529923912320855
#>     Attrib V23    -0.09158011143816495
#>     Attrib V24    -0.1661216457450471
#>     Attrib V25    0.05877628763980458
#>     Attrib V26    0.07792165555906061
#>     Attrib V27    0.09726961565217322
#>     Attrib V28    -0.049366154031007754
#>     Attrib V29    -0.16955044171996825
#>     Attrib V3    0.009749670811640897
#>     Attrib V30    -0.13672472324179982
#>     Attrib V31    0.23825593803884612
#>     Attrib V32    -0.021409856570919813
#>     Attrib V33    -0.006243078390535708
#>     Attrib V34    0.07308322427154126
#>     Attrib V35    0.14314970794165094
#>     Attrib V36    0.38379941469491774
#>     Attrib V37    0.22043961124384448
#>     Attrib V38    -0.10511643593417004
#>     Attrib V39    -0.14860267053102982
#>     Attrib V4    -0.029917149062303056
#>     Attrib V40    -0.07635121159492918
#>     Attrib V41    -0.1275013621183472
#>     Attrib V42    -0.02558820168947034
#>     Attrib V43    -0.098697673666938
#>     Attrib V44    -0.19488016542565023
#>     Attrib V45    -0.02466652575060289
#>     Attrib V46    -0.19367865355507033
#>     Attrib V47    -0.02910130409121429
#>     Attrib V48    -0.03257065594525081
#>     Attrib V49    -0.185494451105991
#>     Attrib V5    -0.06992797559486642
#>     Attrib V50    0.2992751680047574
#>     Attrib V51    0.021479737858564087
#>     Attrib V52    0.07940755304503576
#>     Attrib V53    0.05858019999387433
#>     Attrib V54    -0.03983626597285943
#>     Attrib V55    0.13246711002553077
#>     Attrib V56    -1.786765262430904E-4
#>     Attrib V57    0.11896552890396732
#>     Attrib V58    0.004279712324067125
#>     Attrib V59    -0.1705293122804677
#>     Attrib V6    0.06557316387454296
#>     Attrib V60    0.022252329726461573
#>     Attrib V7    0.06191136926433491
#>     Attrib V8    0.17408750615683308
#>     Attrib V9    -0.1259417019895801
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.0141447489358964
#>     Attrib V1    0.28701213643291246
#>     Attrib V10    0.0646137848079212
#>     Attrib V11    -0.006678958447967103
#>     Attrib V12    -0.023679206539389975
#>     Attrib V13    -0.15425032439248376
#>     Attrib V14    -0.09277905085472757
#>     Attrib V15    0.08216093253667532
#>     Attrib V16    -0.025183636332770112
#>     Attrib V17    -0.004611663814988234
#>     Attrib V18    -0.12316368029867313
#>     Attrib V19    0.08250546704673092
#>     Attrib V2    0.18001648263205913
#>     Attrib V20    0.16741528754901752
#>     Attrib V21    0.16083322454530827
#>     Attrib V22    0.08903913620756344
#>     Attrib V23    -0.024850962641238428
#>     Attrib V24    0.15321239787140206
#>     Attrib V25    -0.0980370174422661
#>     Attrib V26    -0.2109557431794514
#>     Attrib V27    -0.2805249377649332
#>     Attrib V28    -0.14006413220946326
#>     Attrib V29    -0.016247701760335027
#>     Attrib V3    0.004447049571053991
#>     Attrib V30    0.03452683001093326
#>     Attrib V31    -0.37192136402101333
#>     Attrib V32    -0.11319127369707732
#>     Attrib V33    0.03447854128166652
#>     Attrib V34    -0.04658134810952347
#>     Attrib V35    -0.08290397216312734
#>     Attrib V36    -0.29690671539463137
#>     Attrib V37    -0.2023594556813639
#>     Attrib V38    0.18871585752334258
#>     Attrib V39    0.21155479917342626
#>     Attrib V4    0.0943447726437819
#>     Attrib V40    -0.025824823581750835
#>     Attrib V41    0.03659377687282347
#>     Attrib V42    -0.006657015592698451
#>     Attrib V43    0.11154524527758967
#>     Attrib V44    0.24478872321801995
#>     Attrib V45    0.024856280941276496
#>     Attrib V46    0.08493349344163993
#>     Attrib V47    -0.11948044598136308
#>     Attrib V48    -0.01677605300059908
#>     Attrib V49    0.06452935721495741
#>     Attrib V5    0.06359824239804275
#>     Attrib V50    -0.21663959603413496
#>     Attrib V51    -0.0045368717612802945
#>     Attrib V52    -0.15613064354748926
#>     Attrib V53    0.01993410015500157
#>     Attrib V54    0.039811881668278926
#>     Attrib V55    -0.026175898311569384
#>     Attrib V56    0.16027540797331954
#>     Attrib V57    0.13167440077174367
#>     Attrib V58    0.06735661019810446
#>     Attrib V59    0.2472244144202278
#>     Attrib V6    -0.10671824272747286
#>     Attrib V60    0.14345643710671957
#>     Attrib V7    -0.08875074776523884
#>     Attrib V8    -0.17291911318247177
#>     Attrib V9    0.1316864478080829
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.1563481453243677
#>     Attrib V1    0.21409962136680077
#>     Attrib V10    0.03237199584300955
#>     Attrib V11    -0.006363098849415409
#>     Attrib V12    0.007025599561161317
#>     Attrib V13    -0.04644555581150195
#>     Attrib V14    0.012323256857787694
#>     Attrib V15    0.015933053698058315
#>     Attrib V16    -0.007479044388764758
#>     Attrib V17    -0.023610628737614246
#>     Attrib V18    -0.01131695499069664
#>     Attrib V19    -0.004286734349994884
#>     Attrib V2    0.10555096627218673
#>     Attrib V20    0.11528484088327498
#>     Attrib V21    0.10487309292767712
#>     Attrib V22    -0.029783843894451253
#>     Attrib V23    -0.04549300101195971
#>     Attrib V24    0.0336041403079302
#>     Attrib V25    -0.028906679560058168
#>     Attrib V26    -0.07820638025323594
#>     Attrib V27    -0.1481884220814052
#>     Attrib V28    -0.1073640015694736
#>     Attrib V29    -0.024260974853899196
#>     Attrib V3    0.09949732309947505
#>     Attrib V30    -0.05597964212647289
#>     Attrib V31    -0.27808629838759114
#>     Attrib V32    -0.07951983552066194
#>     Attrib V33    4.6182612006204156E-4
#>     Attrib V34    0.055831686955598765
#>     Attrib V35    -0.029229980858635193
#>     Attrib V36    -0.05286597411389608
#>     Attrib V37    -0.09519321011140275
#>     Attrib V38    0.08885599745363901
#>     Attrib V39    0.1667024921209293
#>     Attrib V4    0.0722800948326108
#>     Attrib V40    0.013664787129776205
#>     Attrib V41    -0.0073695955809445985
#>     Attrib V42    0.016097399337366366
#>     Attrib V43    0.06080873482933491
#>     Attrib V44    0.19963120113058416
#>     Attrib V45    -0.01779553879443373
#>     Attrib V46    0.07490813514845
#>     Attrib V47    0.027027381674867783
#>     Attrib V48    0.002134984823796919
#>     Attrib V49    0.09961395735532272
#>     Attrib V5    0.09380102006413255
#>     Attrib V50    -0.12607936506909243
#>     Attrib V51    0.08157572618535616
#>     Attrib V52    -0.08515371081511401
#>     Attrib V53    0.0878398135448376
#>     Attrib V54    0.049907160872476486
#>     Attrib V55    0.04982142223932468
#>     Attrib V56    0.1651047141969138
#>     Attrib V57    0.06994348120819571
#>     Attrib V58    0.11160358622328001
#>     Attrib V59    0.2675514434702179
#>     Attrib V6    -0.06575601214316354
#>     Attrib V60    0.20070912177248454
#>     Attrib V7    0.008344161750825788
#>     Attrib V8    -0.0745166902325992
#>     Attrib V9    0.10102922834169004
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.08375576866129517
#>     Attrib V1    0.6603359482477897
#>     Attrib V10    0.21006303347340924
#>     Attrib V11    -0.03389403658441234
#>     Attrib V12    0.06780314616094674
#>     Attrib V13    -0.35144464995821345
#>     Attrib V14    -0.26911611974666744
#>     Attrib V15    0.11104798697235685
#>     Attrib V16    -0.09189503033082709
#>     Attrib V17    0.01765085360156228
#>     Attrib V18    -0.3663300383381835
#>     Attrib V19    0.1441030066537366
#>     Attrib V2    0.4410890197179116
#>     Attrib V20    0.408115525265699
#>     Attrib V21    0.4645264060058528
#>     Attrib V22    0.2291829505325715
#>     Attrib V23    0.12388928636183605
#>     Attrib V24    0.5118613895555796
#>     Attrib V25    -0.058283585258997093
#>     Attrib V26    -0.4387519308345097
#>     Attrib V27    -0.723702764060053
#>     Attrib V28    -0.1321546794925653
#>     Attrib V29    0.2868032443072599
#>     Attrib V3    0.012478800624037443
#>     Attrib V30    0.24932229059938585
#>     Attrib V31    -1.1350470336831981
#>     Attrib V32    -0.10931282778270109
#>     Attrib V33    0.07184287585106822
#>     Attrib V34    -0.18548416875592225
#>     Attrib V35    -0.5444923735171404
#>     Attrib V36    -1.0604097852020198
#>     Attrib V37    -0.71342689296824
#>     Attrib V38    0.4376246621199735
#>     Attrib V39    0.6118113695356462
#>     Attrib V4    0.2783207745487688
#>     Attrib V40    0.15941641432103745
#>     Attrib V41    0.174265827403458
#>     Attrib V42    0.2565389387500998
#>     Attrib V43    0.2603012827527429
#>     Attrib V44    0.5279979619777626
#>     Attrib V45    -0.008690821156148928
#>     Attrib V46    0.3858515104450283
#>     Attrib V47    -0.27054394274578625
#>     Attrib V48    -0.21180634719945382
#>     Attrib V49    0.4041421993245388
#>     Attrib V5    0.15555267949967336
#>     Attrib V50    -0.8621216216310725
#>     Attrib V51    -0.045748866659041994
#>     Attrib V52    -0.2986181859267931
#>     Attrib V53    0.13406067564767077
#>     Attrib V54    0.15998998708154005
#>     Attrib V55    -0.27421468930611415
#>     Attrib V56    0.28799966934613014
#>     Attrib V57    0.05037441603910817
#>     Attrib V58    0.30382456826895127
#>     Attrib V59    0.6394149263765004
#>     Attrib V6    -0.3397717887311318
#>     Attrib V60    0.1912825020240233
#>     Attrib V7    -0.021407389889066743
#>     Attrib V8    -0.5030982675948584
#>     Attrib V9    0.4059017161434678
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.09134116184562058
#>     Attrib V1    0.7338117862996376
#>     Attrib V10    0.2061840339767901
#>     Attrib V11    -0.06779724407691964
#>     Attrib V12    -0.027657445224817095
#>     Attrib V13    -0.45538487079133944
#>     Attrib V14    -0.28903754372602464
#>     Attrib V15    0.07274776274869243
#>     Attrib V16    -0.043151681041732025
#>     Attrib V17    0.09441994757764026
#>     Attrib V18    -0.284580748967596
#>     Attrib V19    0.20987933070815054
#>     Attrib V2    0.42284653709456943
#>     Attrib V20    0.5047884151015629
#>     Attrib V21    0.62250879802642
#>     Attrib V22    0.284478588359373
#>     Attrib V23    0.1755414959467925
#>     Attrib V24    0.5035081889576281
#>     Attrib V25    -0.1807448501897475
#>     Attrib V26    -0.5172635909801648
#>     Attrib V27    -0.7934436235593216
#>     Attrib V28    -0.19903514582899556
#>     Attrib V29    0.3348294168494009
#>     Attrib V3    -0.035248289844728775
#>     Attrib V30    0.28902497467935984
#>     Attrib V31    -1.2625705144363872
#>     Attrib V32    -0.18535921704054198
#>     Attrib V33    -0.009484249735504685
#>     Attrib V34    -0.25217991754513497
#>     Attrib V35    -0.6225585115338418
#>     Attrib V36    -1.0044903466026265
#>     Attrib V37    -0.6336796335227741
#>     Attrib V38    0.5879859439839231
#>     Attrib V39    0.7025019129889237
#>     Attrib V4    0.25150114196300616
#>     Attrib V40    0.1646078110203804
#>     Attrib V41    0.18876632018190398
#>     Attrib V42    0.21521326588438044
#>     Attrib V43    0.40576343409563326
#>     Attrib V44    0.7581949545161962
#>     Attrib V45    -0.002963222593379185
#>     Attrib V46    0.3868826654387636
#>     Attrib V47    -0.25758126100807144
#>     Attrib V48    -0.15390343069708093
#>     Attrib V49    0.43080694783497175
#>     Attrib V5    0.19494106177658943
#>     Attrib V50    -0.8828784982236856
#>     Attrib V51    0.05692831279143234
#>     Attrib V52    -0.33030943706221255
#>     Attrib V53    0.10324908739099785
#>     Attrib V54    0.15430971425953852
#>     Attrib V55    -0.2916931502108553
#>     Attrib V56    0.3923299695814592
#>     Attrib V57    0.09659787120554274
#>     Attrib V58    0.3184137223264335
#>     Attrib V59    0.762937481511701
#>     Attrib V6    -0.39083507540898627
#>     Attrib V60    0.18875956860899407
#>     Attrib V7    -0.046448723322298636
#>     Attrib V8    -0.543434536961053
#>     Attrib V9    0.4245602057989931
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.4342980784935694
#>     Attrib V1    -0.441631645412971
#>     Attrib V10    -0.4415297795617906
#>     Attrib V11    -0.22988733854175078
#>     Attrib V12    -0.2852923336690993
#>     Attrib V13    0.11894913362870947
#>     Attrib V14    0.2670841094546052
#>     Attrib V15    0.039206211346241165
#>     Attrib V16    0.3611262934641414
#>     Attrib V17    0.16765757066948464
#>     Attrib V18    0.3397465413484877
#>     Attrib V19    -0.177516583455702
#>     Attrib V2    -0.4304548252207594
#>     Attrib V20    -0.17617723638343263
#>     Attrib V21    -0.07790107227435339
#>     Attrib V22    -0.09827148792775792
#>     Attrib V23    -0.375490670355363
#>     Attrib V24    -0.7244571217925376
#>     Attrib V25    -0.027755018495982775
#>     Attrib V26    0.0014982687657804816
#>     Attrib V27    -0.2151473524955952
#>     Attrib V28    -0.7672647298860673
#>     Attrib V29    -0.8563719857803336
#>     Attrib V3    -0.13514356501754998
#>     Attrib V30    -0.3702905980205845
#>     Attrib V31    0.8492231382707092
#>     Attrib V32    0.21118980471829443
#>     Attrib V33    0.19670550458208017
#>     Attrib V34    -0.03817617161564115
#>     Attrib V35    0.0209589609494606
#>     Attrib V36    1.090754786450168
#>     Attrib V37    0.6973003993160528
#>     Attrib V38    -0.17713758146666753
#>     Attrib V39    -0.36873014173729524
#>     Attrib V4    -0.08525255937371702
#>     Attrib V40    -0.2870536922330439
#>     Attrib V41    -0.4833397001131871
#>     Attrib V42    -0.27487764956789945
#>     Attrib V43    -0.3394098004334436
#>     Attrib V44    -0.5285035520631406
#>     Attrib V45    -0.13147612663995004
#>     Attrib V46    -0.6776990534023414
#>     Attrib V47    -0.2633879963359621
#>     Attrib V48    -0.05494991503366694
#>     Attrib V49    -0.5638077602134619
#>     Attrib V5    -0.4064569985510753
#>     Attrib V50    0.7704258460779914
#>     Attrib V51    -0.14242096559526263
#>     Attrib V52    -0.053288660568559146
#>     Attrib V53    -0.39165399451993305
#>     Attrib V54    -0.17113541423154896
#>     Attrib V55    0.2907437170759286
#>     Attrib V56    -0.029207000821007613
#>     Attrib V57    0.44290137338705715
#>     Attrib V58    -0.2180098119369739
#>     Attrib V59    -0.43033711778361033
#>     Attrib V6    -0.07672711507172952
#>     Attrib V60    0.024446494408163773
#>     Attrib V7    0.4422541992463722
#>     Attrib V8    0.6966114582387095
#>     Attrib V9    -0.41961637102764543
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.057758157186603744
#>     Attrib V1    0.40751148965097345
#>     Attrib V10    0.02062732890138773
#>     Attrib V11    -0.06584261349287325
#>     Attrib V12    -0.008028668315043296
#>     Attrib V13    -0.18719773914729718
#>     Attrib V14    -0.08353073683208855
#>     Attrib V15    0.01843156067547655
#>     Attrib V16    0.06010563916857299
#>     Attrib V17    0.05081828511489614
#>     Attrib V18    -0.12914708252948226
#>     Attrib V19    0.07896067297897708
#>     Attrib V2    0.20954008978174252
#>     Attrib V20    0.285995425657283
#>     Attrib V21    0.26829063164095646
#>     Attrib V22    0.052130462485318926
#>     Attrib V23    -0.05259804070731574
#>     Attrib V24    0.21441608153472685
#>     Attrib V25    -0.10245186907028962
#>     Attrib V26    -0.3323805636951144
#>     Attrib V27    -0.5096758109352284
#>     Attrib V28    -0.31801234808460244
#>     Attrib V29    -0.01994518237153216
#>     Attrib V3    0.010752650823298406
#>     Attrib V30    -0.00850094646326471
#>     Attrib V31    -0.5343633401656658
#>     Attrib V32    -0.08508358609822135
#>     Attrib V33    -0.009932803840464485
#>     Attrib V34    -0.06995685497437705
#>     Attrib V35    -0.22693469235569638
#>     Attrib V36    -0.38066628752573844
#>     Attrib V37    -0.2343412920811409
#>     Attrib V38    0.2038575542657944
#>     Attrib V39    0.25620112749993057
#>     Attrib V4    0.1532829623565848
#>     Attrib V40    0.031033103876488232
#>     Attrib V41    -0.015628016450604302
#>     Attrib V42    0.04140393831345159
#>     Attrib V43    0.16822108550092682
#>     Attrib V44    0.28695344778014387
#>     Attrib V45    -0.07764015794605081
#>     Attrib V46    0.16128122834284592
#>     Attrib V47    -0.18078059909531924
#>     Attrib V48    -0.07111729023192047
#>     Attrib V49    0.12687926555718246
#>     Attrib V5    0.08722769540712631
#>     Attrib V50    -0.32590680760389235
#>     Attrib V51    -0.05191524303963745
#>     Attrib V52    -0.19715154181077
#>     Attrib V53    0.03468695626685231
#>     Attrib V54    0.10958923614741245
#>     Attrib V55    -0.0824575755419472
#>     Attrib V56    0.2597259172978038
#>     Attrib V57    0.15406219428792783
#>     Attrib V58    0.17555316316404648
#>     Attrib V59    0.3949167389395349
#>     Attrib V6    -0.13976410554132268
#>     Attrib V60    0.22101630080725146
#>     Attrib V7    0.009393690077328492
#>     Attrib V8    -0.2957901144505126
#>     Attrib V9    0.16906044759888442
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.03483946623179753
#>     Attrib V1    0.41246685762463325
#>     Attrib V10    -0.06018660970380772
#>     Attrib V11    -0.054134442172908165
#>     Attrib V12    0.04706761873400055
#>     Attrib V13    -0.13082216988265744
#>     Attrib V14    -0.05995848072282733
#>     Attrib V15    0.05199212118665678
#>     Attrib V16    -0.02300076569075192
#>     Attrib V17    0.08791736478735405
#>     Attrib V18    -0.10064672554406051
#>     Attrib V19    0.12591251648321986
#>     Attrib V2    0.15771238729439876
#>     Attrib V20    0.2778031949921428
#>     Attrib V21    0.26728774709272607
#>     Attrib V22    0.08065716707535754
#>     Attrib V23    0.0017969414343892041
#>     Attrib V24    0.16036666692479043
#>     Attrib V25    -0.06523906200704856
#>     Attrib V26    -0.25121084020110546
#>     Attrib V27    -0.5175140906194321
#>     Attrib V28    -0.33916370763439857
#>     Attrib V29    -0.09624283222712045
#>     Attrib V3    0.06468707489441557
#>     Attrib V30    -0.039987887961021734
#>     Attrib V31    -0.6184534442537735
#>     Attrib V32    -0.12977053898985372
#>     Attrib V33    -0.002614441889533744
#>     Attrib V34    -0.08636665868601279
#>     Attrib V35    -0.18490318655106344
#>     Attrib V36    -0.35845331690851584
#>     Attrib V37    -0.20259203121470512
#>     Attrib V38    0.2250987320172149
#>     Attrib V39    0.28831728626323144
#>     Attrib V4    0.20188270173351353
#>     Attrib V40    -0.01363894823698429
#>     Attrib V41    0.021954824902663223
#>     Attrib V42    0.053269031695784584
#>     Attrib V43    0.15949145773004436
#>     Attrib V44    0.29823990291159125
#>     Attrib V45    0.010530099312723121
#>     Attrib V46    0.12473884537979602
#>     Attrib V47    -0.1203872580882088
#>     Attrib V48    -0.14835804117900356
#>     Attrib V49    0.11031969301815656
#>     Attrib V5    0.08783707069949295
#>     Attrib V50    -0.34049510563552854
#>     Attrib V51    -0.06165712407398891
#>     Attrib V52    -0.17197729877300727
#>     Attrib V53    0.10709674100010902
#>     Attrib V54    0.12277035782848457
#>     Attrib V55    -0.06703850670845851
#>     Attrib V56    0.2885029314387066
#>     Attrib V57    0.1329020263760584
#>     Attrib V58    0.13534057424026552
#>     Attrib V59    0.47713725253773537
#>     Attrib V6    -0.13136260865800536
#>     Attrib V60    0.19364956294412267
#>     Attrib V7    0.02531404536141875
#>     Attrib V8    -0.2422524046899417
#>     Attrib V9    0.13810053475524273
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.2779502642354432
#>     Attrib V1    -0.35076678672517814
#>     Attrib V10    -0.2816766764314257
#>     Attrib V11    -0.1311503404563314
#>     Attrib V12    -0.18535484233468535
#>     Attrib V13    0.08717410880745588
#>     Attrib V14    0.24349573865284194
#>     Attrib V15    0.08394492102113849
#>     Attrib V16    0.21994061481947433
#>     Attrib V17    0.1846824193499067
#>     Attrib V18    0.296746034118782
#>     Attrib V19    -0.025287431816054036
#>     Attrib V2    -0.29595268924454543
#>     Attrib V20    -0.09068928105409807
#>     Attrib V21    -0.0911346497952032
#>     Attrib V22    -0.07191857520764722
#>     Attrib V23    -0.11798777763713111
#>     Attrib V24    -0.4386449324955574
#>     Attrib V25    0.013746615228451742
#>     Attrib V26    0.10900040465652037
#>     Attrib V27    -0.00604875343598017
#>     Attrib V28    -0.3250982986316671
#>     Attrib V29    -0.48863427387565583
#>     Attrib V3    -0.06630718897079119
#>     Attrib V30    -0.24531519655203254
#>     Attrib V31    0.5201260639868476
#>     Attrib V32    0.11770059229391373
#>     Attrib V33    0.05952336422884221
#>     Attrib V34    0.010904253598252804
#>     Attrib V35    0.10935036300359373
#>     Attrib V36    0.7379965668127962
#>     Attrib V37    0.356443365514376
#>     Attrib V38    -0.13878553186503864
#>     Attrib V39    -0.270228354303813
#>     Attrib V4    -0.05022879123965857
#>     Attrib V40    -0.12590471509253368
#>     Attrib V41    -0.2770550272588761
#>     Attrib V42    -0.1479043177235775
#>     Attrib V43    -0.14537992728641227
#>     Attrib V44    -0.34159533886433313
#>     Attrib V45    -0.09371135285479355
#>     Attrib V46    -0.4158428247093633
#>     Attrib V47    -0.09040355288512007
#>     Attrib V48    -0.04801828306806761
#>     Attrib V49    -0.34902126346112816
#>     Attrib V5    -0.2689485243480421
#>     Attrib V50    0.547761008642158
#>     Attrib V51    -0.05598325693424898
#>     Attrib V52    0.08954673952433254
#>     Attrib V53    -0.16526560377925267
#>     Attrib V54    -0.09014353517357021
#>     Attrib V55    0.23022562133881028
#>     Attrib V56    0.007953898501778146
#>     Attrib V57    0.23938108429052413
#>     Attrib V58    -0.10645971442738592
#>     Attrib V59    -0.3189663605200724
#>     Attrib V6    0.040985273297113045
#>     Attrib V60    -0.07811441301592165
#>     Attrib V7    0.19554858571652398
#>     Attrib V8    0.4789018545181715
#>     Attrib V9    -0.24665783807775446
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.7612955539578073
#>     Attrib V1    0.5403698901286377
#>     Attrib V10    1.0729096223667318
#>     Attrib V11    0.8229656192823781
#>     Attrib V12    0.7985006667683295
#>     Attrib V13    0.1692583478757384
#>     Attrib V14    -0.3075148886222551
#>     Attrib V15    -0.3056184790642588
#>     Attrib V16    -0.8571405817043091
#>     Attrib V17    -0.5966389661401346
#>     Attrib V18    -0.7862700131834941
#>     Attrib V19    -0.3709617990750514
#>     Attrib V2    0.37234182986616315
#>     Attrib V20    -0.384055875626883
#>     Attrib V21    -0.20983314838468
#>     Attrib V22    0.09612619651346928
#>     Attrib V23    0.3953086453765411
#>     Attrib V24    0.6203871492993907
#>     Attrib V25    0.03349025287991946
#>     Attrib V26    0.6607647500224516
#>     Attrib V27    1.2136086748552695
#>     Attrib V28    1.3443997151649256
#>     Attrib V29    1.0109947004466304
#>     Attrib V3    0.09527476610034306
#>     Attrib V30    0.3595927117502118
#>     Attrib V31    -0.6116734347339057
#>     Attrib V32    -0.19449926331425305
#>     Attrib V33    -0.35209427677898375
#>     Attrib V34    0.2304336532295757
#>     Attrib V35    0.4150598335149952
#>     Attrib V36    -1.1221999415120087
#>     Attrib V37    -0.6344689727323334
#>     Attrib V38    -0.1536466380126637
#>     Attrib V39    0.2979549308686882
#>     Attrib V4    0.21319458158052465
#>     Attrib V40    0.6521389724092228
#>     Attrib V41    0.9770720489460267
#>     Attrib V42    -0.13168060830070685
#>     Attrib V43    -0.08782528240720854
#>     Attrib V44    0.2516553595407273
#>     Attrib V45    0.2676850151384186
#>     Attrib V46    0.9422679196220166
#>     Attrib V47    0.6449857843932623
#>     Attrib V48    0.5286744254445911
#>     Attrib V49    0.7416982888302257
#>     Attrib V5    0.9430980549938168
#>     Attrib V50    -0.709617126715855
#>     Attrib V51    0.745165913697108
#>     Attrib V52    0.12642793956162865
#>     Attrib V53    0.19261973770137863
#>     Attrib V54    0.3795668197086026
#>     Attrib V55    -0.24302367018977467
#>     Attrib V56    -0.4463173044707842
#>     Attrib V57    -0.4525624384080975
#>     Attrib V58    0.3147682954167124
#>     Attrib V59    0.6694917502695388
#>     Attrib V6    0.5808623203928519
#>     Attrib V60    0.40605158246844664
#>     Attrib V7    -0.39156886652987616
#>     Attrib V8    -0.8795511545141709
#>     Attrib V9    0.8078073077717487
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.1543806971958852
#>     Attrib V1    0.2336375140581176
#>     Attrib V10    -0.0034216093843819286
#>     Attrib V11    -0.05027520260707062
#>     Attrib V12    0.03884923693994008
#>     Attrib V13    -0.07066905771215136
#>     Attrib V14    0.055581482271088875
#>     Attrib V15    0.023617895180286244
#>     Attrib V16    -0.020304157281213882
#>     Attrib V17    0.03477298942903147
#>     Attrib V18    -0.09631824947523025
#>     Attrib V19    0.08308411146820474
#>     Attrib V2    0.11486189556338713
#>     Attrib V20    0.10252763993497022
#>     Attrib V21    0.08299697458455929
#>     Attrib V22    -0.04500724817617795
#>     Attrib V23    -0.06431080689670501
#>     Attrib V24    0.03625873989428288
#>     Attrib V25    -0.05008900964851038
#>     Attrib V26    -0.1272713917907962
#>     Attrib V27    -0.13940041219726185
#>     Attrib V28    -0.06314070339745396
#>     Attrib V29    0.01422488638547575
#>     Attrib V3    0.024728181960000265
#>     Attrib V30    -0.029179485347131582
#>     Attrib V31    -0.300203162304482
#>     Attrib V32    -0.11001046448727464
#>     Attrib V33    0.02304552156174073
#>     Attrib V34    0.023101645388779533
#>     Attrib V35    0.057343959931237934
#>     Attrib V36    -0.05220367581690408
#>     Attrib V37    -0.02614566104187326
#>     Attrib V38    0.10539556006031638
#>     Attrib V39    0.16735168865578612
#>     Attrib V4    0.14189814078652904
#>     Attrib V40    0.030335625248661038
#>     Attrib V41    0.013770285549900079
#>     Attrib V42    0.03479986406625563
#>     Attrib V43    0.08896125219830402
#>     Attrib V44    0.19204266099363065
#>     Attrib V45    0.03242168864014948
#>     Attrib V46    0.08289791983692334
#>     Attrib V47    -0.024433427660540605
#>     Attrib V48    0.04891017210521809
#>     Attrib V49    0.07550237072362047
#>     Attrib V5    0.06284147151148506
#>     Attrib V50    -0.0692467597322026
#>     Attrib V51    0.011709157630736797
#>     Attrib V52    -0.08624882219185516
#>     Attrib V53    0.08677124502623484
#>     Attrib V54    0.08646941482400372
#>     Attrib V55    0.02834159703181168
#>     Attrib V56    0.17368051212054403
#>     Attrib V57    0.15099118833207867
#>     Attrib V58    0.1254188080453211
#>     Attrib V59    0.28961961487059357
#>     Attrib V6    -0.010688109749426824
#>     Attrib V60    0.23823258100095965
#>     Attrib V7    -0.07054277268405258
#>     Attrib V8    -0.10616008937373328
#>     Attrib V9    0.06907760513590398
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.03321447679946285
#>     Attrib V1    0.7412212434601765
#>     Attrib V10    0.13241110361375555
#>     Attrib V11    -0.10196455918088072
#>     Attrib V12    -0.08540675571109242
#>     Attrib V13    -0.380915425262124
#>     Attrib V14    -0.270664342060603
#>     Attrib V15    0.10040932576117556
#>     Attrib V16    0.037127475882943364
#>     Attrib V17    0.10967971102901165
#>     Attrib V18    -0.1667844225088268
#>     Attrib V19    0.21554785718800376
#>     Attrib V2    0.39053918674014376
#>     Attrib V20    0.4752975926751377
#>     Attrib V21    0.5855241253945092
#>     Attrib V22    0.22309385731048412
#>     Attrib V23    0.06287090301337146
#>     Attrib V24    0.4289282523693657
#>     Attrib V25    -0.1832875880897805
#>     Attrib V26    -0.4755183124279136
#>     Attrib V27    -0.8635846019237535
#>     Attrib V28    -0.34393134395436664
#>     Attrib V29    0.15113143492984132
#>     Attrib V3    0.01963340004443355
#>     Attrib V30    0.15235106640123838
#>     Attrib V31    -1.1934101914844184
#>     Attrib V32    -0.18419768240452214
#>     Attrib V33    -5.877972574480977E-4
#>     Attrib V34    -0.20323017350010247
#>     Attrib V35    -0.5855414080759496
#>     Attrib V36    -0.8902868603054597
#>     Attrib V37    -0.593913789281578
#>     Attrib V38    0.5138532015507509
#>     Attrib V39    0.6686196343647679
#>     Attrib V4    0.2848879956925453
#>     Attrib V40    0.02505220872333151
#>     Attrib V41    0.0855541914396883
#>     Attrib V42    0.2322840882877464
#>     Attrib V43    0.2952510068966947
#>     Attrib V44    0.6739923479119415
#>     Attrib V45    0.06365444313401171
#>     Attrib V46    0.3223220459176281
#>     Attrib V47    -0.2754584275029359
#>     Attrib V48    -0.16079583680889112
#>     Attrib V49    0.3097469679318952
#>     Attrib V5    0.13914338039156324
#>     Attrib V50    -0.6591425350487525
#>     Attrib V51    -0.0211474850737782
#>     Attrib V52    -0.3576053753156968
#>     Attrib V53    0.1476748519857115
#>     Attrib V54    0.15511508933121385
#>     Attrib V55    -0.23981297978661473
#>     Attrib V56    0.35432723803238714
#>     Attrib V57    0.1976367646628252
#>     Attrib V58    0.2784409868238294
#>     Attrib V59    0.7232629472290885
#>     Attrib V6    -0.3020066680519846
#>     Attrib V60    0.2403762217139268
#>     Attrib V7    -0.0022576387838213713
#>     Attrib V8    -0.37654983150808646
#>     Attrib V9    0.3757211818983528
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.5940723238435847
#>     Attrib V1    -0.41252310606304077
#>     Attrib V10    -1.3304828692017932
#>     Attrib V11    -0.9223048808213705
#>     Attrib V12    -0.7055644669219465
#>     Attrib V13    -0.1501308778723516
#>     Attrib V14    0.1926255250722207
#>     Attrib V15    0.19485062631482947
#>     Attrib V16    0.7564647143334716
#>     Attrib V17    0.358065277934433
#>     Attrib V18    0.48974435102671704
#>     Attrib V19    -0.15921324932953654
#>     Attrib V2    -0.3998674966754727
#>     Attrib V20    -0.004994464432061393
#>     Attrib V21    -0.08196467114032326
#>     Attrib V22    -0.5480572618720365
#>     Attrib V23    -1.2594489616305864
#>     Attrib V24    -1.1337560714092692
#>     Attrib V25    -0.032588696815665986
#>     Attrib V26    -0.783960729416481
#>     Attrib V27    -1.337222921574859
#>     Attrib V28    -1.6154889525461182
#>     Attrib V29    -1.4269417369818207
#>     Attrib V3    0.11547374429856273
#>     Attrib V30    -0.489218060932163
#>     Attrib V31    0.9410212913761088
#>     Attrib V32    0.39933198933336866
#>     Attrib V33    0.4833620266773127
#>     Attrib V34    -0.08309850465302605
#>     Attrib V35    -0.2688925274317908
#>     Attrib V36    1.6857725312654686
#>     Attrib V37    1.041865170658849
#>     Attrib V38    0.28522154330136856
#>     Attrib V39    -0.39360661518740075
#>     Attrib V4    -0.1246352975995193
#>     Attrib V40    -1.0265216576556402
#>     Attrib V41    -1.287110128991083
#>     Attrib V42    -0.06631675113993106
#>     Attrib V43    -0.19891178345279825
#>     Attrib V44    -0.5938420902733554
#>     Attrib V45    -0.4082041927751012
#>     Attrib V46    -1.27025944699128
#>     Attrib V47    -0.8322977566240807
#>     Attrib V48    -0.3692374285429367
#>     Attrib V49    -0.9764805153389344
#>     Attrib V5    -0.9736717542841882
#>     Attrib V50    0.7350355124929508
#>     Attrib V51    -1.0949771183394785
#>     Attrib V52    -0.3217288247541888
#>     Attrib V53    -0.5859083572460052
#>     Attrib V54    -0.17834888337230564
#>     Attrib V55    0.26759015490502414
#>     Attrib V56    0.6110102910385163
#>     Attrib V57    0.8795869767086726
#>     Attrib V58    -0.4776398133706135
#>     Attrib V59    -0.16037671497649708
#>     Attrib V6    -0.5672036295893785
#>     Attrib V60    0.049152330777185914
#>     Attrib V7    0.4024253777191517
#>     Attrib V8    0.6371356889129711
#>     Attrib V9    -1.0058028488007305
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.013771707318145605
#>     Attrib V1    0.5844966198516696
#>     Attrib V10    0.12489441865965598
#>     Attrib V11    0.009491202427671007
#>     Attrib V12    -0.005422440357533855
#>     Attrib V13    -0.3335176243376263
#>     Attrib V14    -0.1742955026596013
#>     Attrib V15    0.08796196231321127
#>     Attrib V16    -0.019501169993894132
#>     Attrib V17    0.06672842173714826
#>     Attrib V18    -0.2529438413645005
#>     Attrib V19    0.12188639047474889
#>     Attrib V2    0.36011962330630043
#>     Attrib V20    0.4868724279877862
#>     Attrib V21    0.5302668390091455
#>     Attrib V22    0.24113507762842554
#>     Attrib V23    0.0912652782007463
#>     Attrib V24    0.4763896095197892
#>     Attrib V25    -0.07106487705219418
#>     Attrib V26    -0.4670780695354526
#>     Attrib V27    -0.7159422927589288
#>     Attrib V28    -0.22076935333026323
#>     Attrib V29    0.24186794973954154
#>     Attrib V3    0.06635868141354466
#>     Attrib V30    0.1366249703241998
#>     Attrib V31    -1.0294577286005862
#>     Attrib V32    -0.11305187982090405
#>     Attrib V33    0.02218639116423781
#>     Attrib V34    -0.16880891543350027
#>     Attrib V35    -0.4780402538138488
#>     Attrib V36    -0.8583652800648466
#>     Attrib V37    -0.5183971577834798
#>     Attrib V38    0.43238765174581756
#>     Attrib V39    0.5750290078900787
#>     Attrib V4    0.18407640479683787
#>     Attrib V40    0.08718594789262019
#>     Attrib V41    0.11721439999562575
#>     Attrib V42    0.15172515240741255
#>     Attrib V43    0.3103528258621241
#>     Attrib V44    0.5137915952225974
#>     Attrib V45    0.046398602187865255
#>     Attrib V46    0.3477765648544288
#>     Attrib V47    -0.1636279254039609
#>     Attrib V48    -0.16579692812401273
#>     Attrib V49    0.3048355269209867
#>     Attrib V5    0.09524768514872017
#>     Attrib V50    -0.6468701325022823
#>     Attrib V51    0.021514426561494715
#>     Attrib V52    -0.2572749739074996
#>     Attrib V53    0.09025290967002572
#>     Attrib V54    0.09824939470854943
#>     Attrib V55    -0.1880211787762159
#>     Attrib V56    0.3484394941735938
#>     Attrib V57    0.13395280915525307
#>     Attrib V58    0.21575580835404543
#>     Attrib V59    0.5629973286280594
#>     Attrib V6    -0.30157471531479724
#>     Attrib V60    0.1620025103560534
#>     Attrib V7    -0.07868627855889453
#>     Attrib V8    -0.38042046067240154
#>     Attrib V9    0.3551240669483123
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.12235900420860468
#>     Attrib V1    0.226984045972517
#>     Attrib V10    0.06782357513693958
#>     Attrib V11    0.009847753078396871
#>     Attrib V12    0.06874035847939491
#>     Attrib V13    0.019529856276288476
#>     Attrib V14    0.027246716215540066
#>     Attrib V15    0.04329947564008587
#>     Attrib V16    -0.025141567632908104
#>     Attrib V17    0.0262765896996317
#>     Attrib V18    -0.07564884793404068
#>     Attrib V19    -0.0158236709536673
#>     Attrib V2    0.10712294669271384
#>     Attrib V20    0.036402081725942816
#>     Attrib V21    0.06282556531757226
#>     Attrib V22    -0.048538917513020155
#>     Attrib V23    -0.05602566714152876
#>     Attrib V24    0.016089978328742535
#>     Attrib V25    -0.00952093192283939
#>     Attrib V26    -0.02924775406231041
#>     Attrib V27    -0.12156936222876086
#>     Attrib V28    -0.05571321807690494
#>     Attrib V29    -0.03768123302578271
#>     Attrib V3    0.034340573507703046
#>     Attrib V30    0.0038481811268318996
#>     Attrib V31    -0.16236611662988934
#>     Attrib V32    -0.08211774202629621
#>     Attrib V33    -0.029752148695500254
#>     Attrib V34    0.02162253241520707
#>     Attrib V35    0.05237601618105396
#>     Attrib V36    -0.08286195299680306
#>     Attrib V37    -0.0204341047205666
#>     Attrib V38    0.06413102673488434
#>     Attrib V39    0.1718398578182861
#>     Attrib V4    0.12704563887417222
#>     Attrib V40    0.059056518452527115
#>     Attrib V41    0.04153152915279572
#>     Attrib V42    0.047969234561422144
#>     Attrib V43    0.044885370125049014
#>     Attrib V44    0.11143133062705161
#>     Attrib V45    0.024419162610476396
#>     Attrib V46    0.08231025676616034
#>     Attrib V47    -0.024294178442240206
#>     Attrib V48    0.031664665449460665
#>     Attrib V49    0.04983283634384675
#>     Attrib V5    0.04728367080315836
#>     Attrib V50    -0.07765931328321302
#>     Attrib V51    0.0227195294382948
#>     Attrib V52    -0.04684332518893973
#>     Attrib V53    0.09729599338135761
#>     Attrib V54    0.09470685874979369
#>     Attrib V55    0.017354589341931816
#>     Attrib V56    0.1744178827880038
#>     Attrib V57    0.08345699371011675
#>     Attrib V58    0.1445418409838142
#>     Attrib V59    0.2742409923310625
#>     Attrib V6    -0.020846655206027912
#>     Attrib V60    0.19087035118301807
#>     Attrib V7    -0.07421513103192623
#>     Attrib V8    -0.11608969793261997
#>     Attrib V9    0.06934933933980988
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.07088735668334385
#>     Attrib V1    0.29566728291450745
#>     Attrib V10    -0.0016418553283165027
#>     Attrib V11    3.604038189966983E-4
#>     Attrib V12    -0.01638123300522219
#>     Attrib V13    -0.0708075515105241
#>     Attrib V14    -0.010648795339465514
#>     Attrib V15    0.06021801779279331
#>     Attrib V16    -0.007664007967812881
#>     Attrib V17    0.0392999364066526
#>     Attrib V18    -0.07309770113523739
#>     Attrib V19    0.06807186030499972
#>     Attrib V2    0.17714049099281465
#>     Attrib V20    0.23411394868297244
#>     Attrib V21    0.14252315005504623
#>     Attrib V22    0.06598061945138042
#>     Attrib V23    0.01784988682458078
#>     Attrib V24    0.16733588318224796
#>     Attrib V25    -0.08179200833218894
#>     Attrib V26    -0.18122687149749606
#>     Attrib V27    -0.3515355803229725
#>     Attrib V28    -0.2339906222670154
#>     Attrib V29    -0.05710256693630605
#>     Attrib V3    -0.013886342374378484
#>     Attrib V30    -0.03847758736470336
#>     Attrib V31    -0.392453694021228
#>     Attrib V32    -0.10058391032917545
#>     Attrib V33    0.02269236130156446
#>     Attrib V34    -0.006748019884145345
#>     Attrib V35    -0.0947149213563944
#>     Attrib V36    -0.27213954913905974
#>     Attrib V37    -0.1517266765581651
#>     Attrib V38    0.19426551967334646
#>     Attrib V39    0.16419063776628806
#>     Attrib V4    0.12936701294611663
#>     Attrib V40    0.0040686558105020995
#>     Attrib V41    -0.009641312631921854
#>     Attrib V42    0.010930955190487748
#>     Attrib V43    0.10560389111634197
#>     Attrib V44    0.24632325560172064
#>     Attrib V45    -0.037436962612713724
#>     Attrib V46    0.09698413471600562
#>     Attrib V47    -0.08566018673621782
#>     Attrib V48    -0.05153452245451038
#>     Attrib V49    0.08799351104596066
#>     Attrib V5    0.04968059151994104
#>     Attrib V50    -0.22480984258382206
#>     Attrib V51    -0.03418684139861516
#>     Attrib V52    -0.12651926704775301
#>     Attrib V53    0.09143978647766175
#>     Attrib V54    0.13522189938196183
#>     Attrib V55    -0.010399107248139125
#>     Attrib V56    0.13777461950471936
#>     Attrib V57    0.11928220601369163
#>     Attrib V58    0.07316176624299342
#>     Attrib V59    0.31138156822180524
#>     Attrib V6    -0.11328594854522324
#>     Attrib V60    0.16231775971267362
#>     Attrib V7    -0.012520674520939527
#>     Attrib V8    -0.1753982027123581
#>     Attrib V9    0.14581263025400187
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.06430750555495518
#>     Attrib V1    0.3594489212031364
#>     Attrib V10    -0.03710753782606838
#>     Attrib V11    -0.05284686714855188
#>     Attrib V12    -0.013809242349444051
#>     Attrib V13    -0.18357478833531257
#>     Attrib V14    -0.029490598403819193
#>     Attrib V15    0.07289381248291912
#>     Attrib V16    0.039932156868125984
#>     Attrib V17    0.01136672950266741
#>     Attrib V18    -0.047363265961670585
#>     Attrib V19    0.06187145465166185
#>     Attrib V2    0.15350194410330276
#>     Attrib V20    0.26892789514860976
#>     Attrib V21    0.28356107356968036
#>     Attrib V22    0.07394600251408759
#>     Attrib V23    0.030417892505522643
#>     Attrib V24    0.1509552358687986
#>     Attrib V25    -0.1351472730771304
#>     Attrib V26    -0.2915200561605876
#>     Attrib V27    -0.43142727969484
#>     Attrib V28    -0.202561818235621
#>     Attrib V29    -0.0206408045990019
#>     Attrib V3    0.053053713156496485
#>     Attrib V30    0.03252082614511515
#>     Attrib V31    -0.5593047472980799
#>     Attrib V32    -0.10404851706084137
#>     Attrib V33    0.03713846084463045
#>     Attrib V34    -0.041202544298463074
#>     Attrib V35    -0.1891229370640759
#>     Attrib V36    -0.30052193517712555
#>     Attrib V37    -0.21834036777372887
#>     Attrib V38    0.1696599359739206
#>     Attrib V39    0.2636930126402698
#>     Attrib V4    0.10249468206801554
#>     Attrib V40    -0.009410612735110697
#>     Attrib V41    -0.010013281979150492
#>     Attrib V42    0.08330299980502846
#>     Attrib V43    0.07538571078442947
#>     Attrib V44    0.2955501884326501
#>     Attrib V45    0.030942012989243216
#>     Attrib V46    0.14103130899911578
#>     Attrib V47    -0.11707600137613974
#>     Attrib V48    -0.10986637264794402
#>     Attrib V49    0.15245123052719317
#>     Attrib V5    0.07154732308459848
#>     Attrib V50    -0.30076777834126633
#>     Attrib V51    -0.014096468124054701
#>     Attrib V52    -0.15141277699179412
#>     Attrib V53    0.056235922870825454
#>     Attrib V54    0.04233605652094979
#>     Attrib V55    -0.10220871759675407
#>     Attrib V56    0.19306960810741935
#>     Attrib V57    0.11304329432039388
#>     Attrib V58    0.17558311029539742
#>     Attrib V59    0.32431321565793714
#>     Attrib V6    -0.12746852424707394
#>     Attrib V60    0.14662974486573774
#>     Attrib V7    -0.014386751802998383
#>     Attrib V8    -0.17750737510570225
#>     Attrib V9    0.16912375899561466
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
#>  0.2028986 
```
