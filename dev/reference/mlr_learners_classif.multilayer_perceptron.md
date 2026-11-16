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
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
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
#> • Packages: mlr3, mlr3extralearners, and RWeka
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
#>     Threshold    -0.4157839963607153
#>     Node 2    1.8959003362553162
#>     Node 3    1.115013705337629
#>     Node 4    0.10321585030858366
#>     Node 5    -1.747974944269165
#>     Node 6    0.769171826247343
#>     Node 7    3.4067268819366583
#>     Node 8    1.0352837534294055
#>     Node 9    3.5550758384328467
#>     Node 10    -2.9191831619573962
#>     Node 11    1.43927788541453
#>     Node 12    1.5633653971989587
#>     Node 13    0.10788060585418625
#>     Node 14    1.7768411237455162
#>     Node 15    -2.7338652122730527
#>     Node 16    -0.7837426958096115
#>     Node 17    0.4114968780388332
#>     Node 18    -0.023579183206946977
#>     Node 19    2.85924806104183
#>     Node 20    1.2375502465592179
#>     Node 21    -2.553473617894911
#>     Node 22    1.5077070777557864
#>     Node 23    1.7104696565873763
#>     Node 24    -0.6581563288014058
#>     Node 25    4.5700660846954815
#>     Node 26    -0.6309167257101866
#>     Node 27    2.3580472496416984
#>     Node 28    -3.7578272441473795
#>     Node 29    0.9244965332783106
#>     Node 30    0.4188261474564925
#>     Node 31    1.825167301149662
#>     Node 32    0.5416473073277835
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.44493572495022776
#>     Node 2    -1.92012136380048
#>     Node 3    -1.1049828269736273
#>     Node 4    -0.07035183208230301
#>     Node 5    1.778209377450256
#>     Node 6    -0.7579345098296782
#>     Node 7    -3.4166044897097056
#>     Node 8    -1.081221460311724
#>     Node 9    -3.557556013120558
#>     Node 10    2.9091441821390482
#>     Node 11    -1.402709208626251
#>     Node 12    -1.6129284278978901
#>     Node 13    -0.06336416078430476
#>     Node 14    -1.7260398750429518
#>     Node 15    2.7159342834677425
#>     Node 16    0.7749475854480162
#>     Node 17    -0.3924706478492405
#>     Node 18    0.05245723223156044
#>     Node 19    -2.86735262546114
#>     Node 20    -1.213973679713596
#>     Node 21    2.5686515708052258
#>     Node 22    -1.5636531168925478
#>     Node 23    -1.7239163439415688
#>     Node 24    0.6475344447970719
#>     Node 25    -4.558767208283073
#>     Node 26    0.5499093825432244
#>     Node 27    -2.4214484368777853
#>     Node 28    3.736394929801253
#>     Node 29    -0.9679248485795046
#>     Node 30    -0.3563642771645613
#>     Node 31    -1.7780540606508115
#>     Node 32    -0.5722329804696945
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.10868048639355996
#>     Attrib V1    0.3380304333739838
#>     Attrib V10    -0.16100414662849682
#>     Attrib V11    -0.27173653163509637
#>     Attrib V12    -4.921000051410548E-4
#>     Attrib V13    -0.1718585343404579
#>     Attrib V14    -0.16001359898811113
#>     Attrib V15    0.06801087647556692
#>     Attrib V16    0.22290205146781872
#>     Attrib V17    0.26808962390971
#>     Attrib V18    0.39120999377586463
#>     Attrib V19    0.7066822656615709
#>     Attrib V2    0.03320778594098521
#>     Attrib V20    0.27499315320948337
#>     Attrib V21    -0.035485898958418895
#>     Attrib V22    0.14860499193483376
#>     Attrib V23    0.36165613985790435
#>     Attrib V24    0.5983342682092292
#>     Attrib V25    -0.0054160474674433655
#>     Attrib V26    -1.1480906831569717
#>     Attrib V27    -0.9751440037773302
#>     Attrib V28    -0.19097879945435065
#>     Attrib V29    -0.1387425144039776
#>     Attrib V3    -0.20677792117548674
#>     Attrib V30    -0.11703834416967081
#>     Attrib V31    -0.8840359364949788
#>     Attrib V32    0.5385497404707403
#>     Attrib V33    0.49651575102410206
#>     Attrib V34    -0.17731913473757063
#>     Attrib V35    0.17462697182910505
#>     Attrib V36    -0.6007953852683293
#>     Attrib V37    -1.5132071773319689
#>     Attrib V38    -0.3092641703293632
#>     Attrib V39    -0.15125536845810067
#>     Attrib V4    -0.4364512405132539
#>     Attrib V40    -0.10115712992746959
#>     Attrib V41    0.12358563285907313
#>     Attrib V42    0.468977572803377
#>     Attrib V43    0.34410325174007417
#>     Attrib V44    0.16681242600670462
#>     Attrib V45    0.22159806178579958
#>     Attrib V46    0.30947473456687713
#>     Attrib V47    0.18236954024966132
#>     Attrib V48    0.4045891944299634
#>     Attrib V49    0.6068311082021819
#>     Attrib V5    -0.5752993416472459
#>     Attrib V50    -0.4835149738459141
#>     Attrib V51    -0.2520392081385718
#>     Attrib V52    0.2883796821680859
#>     Attrib V53    0.3327115088044982
#>     Attrib V54    0.28542350479641926
#>     Attrib V55    -0.07018627747319899
#>     Attrib V56    0.007084332202149845
#>     Attrib V57    0.13054633924353146
#>     Attrib V58    0.3247596015828439
#>     Attrib V59    0.5125263979327002
#>     Attrib V6    -0.30262004285607275
#>     Attrib V60    0.6393178500990319
#>     Attrib V7    0.08774089391800417
#>     Attrib V8    -0.09400881892560685
#>     Attrib V9    0.311672671969577
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.0010836395992353787
#>     Attrib V1    0.3394360827039179
#>     Attrib V10    -0.1223975231230889
#>     Attrib V11    -0.1458120842311511
#>     Attrib V12    0.03157822781111173
#>     Attrib V13    -0.12739931883814457
#>     Attrib V14    -0.0877538533644311
#>     Attrib V15    0.14734748782713722
#>     Attrib V16    0.1346360854306829
#>     Attrib V17    0.059420047859354244
#>     Attrib V18    0.01841894660294179
#>     Attrib V19    0.25254428171122634
#>     Attrib V2    0.16569688492344314
#>     Attrib V20    0.11015465464845924
#>     Attrib V21    -0.06177777267865653
#>     Attrib V22    -0.040049187498873415
#>     Attrib V23    0.011219629866477046
#>     Attrib V24    0.2639042961765604
#>     Attrib V25    -0.0024959206051146663
#>     Attrib V26    -0.6316456382605056
#>     Attrib V27    -0.609281129660736
#>     Attrib V28    -0.2777109689577655
#>     Attrib V29    -0.3028739604833585
#>     Attrib V3    -0.07484202862769293
#>     Attrib V30    -0.1187768255005222
#>     Attrib V31    -0.5085644505479046
#>     Attrib V32    0.2899576552909671
#>     Attrib V33    0.34561337282060645
#>     Attrib V34    -0.04630899746085563
#>     Attrib V35    0.1703345217155355
#>     Attrib V36    -0.29583279039582744
#>     Attrib V37    -0.7537677610573845
#>     Attrib V38    -0.16156346150306852
#>     Attrib V39    -0.020583346863956613
#>     Attrib V4    -0.1839797493737134
#>     Attrib V40    -0.06440551123822467
#>     Attrib V41    -0.036528298885181235
#>     Attrib V42    0.1163984245721383
#>     Attrib V43    0.12613300366239127
#>     Attrib V44    0.08234588174681072
#>     Attrib V45    0.16351693255864544
#>     Attrib V46    0.16778404229641014
#>     Attrib V47    0.04902447936527678
#>     Attrib V48    0.1784313149668562
#>     Attrib V49    0.3175399046630645
#>     Attrib V5    -0.35559963522185284
#>     Attrib V50    -0.2498966948444872
#>     Attrib V51    -0.19137030968277666
#>     Attrib V52    0.14352685925765443
#>     Attrib V53    0.2029497587527886
#>     Attrib V54    0.4269338291979491
#>     Attrib V55    0.10685424083584413
#>     Attrib V56    0.045752906075972856
#>     Attrib V57    0.23219183221615466
#>     Attrib V58    0.2708683788006439
#>     Attrib V59    0.4162150380691598
#>     Attrib V6    -0.25593108672357007
#>     Attrib V60    0.34325966643140515
#>     Attrib V7    -0.0777203899590467
#>     Attrib V8    -0.09473802536855964
#>     Attrib V9    0.13194914183580297
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.21366179310508904
#>     Attrib V1    0.08834254174816436
#>     Attrib V10    0.023749174436506638
#>     Attrib V11    0.031446886715257416
#>     Attrib V12    0.04632852484298945
#>     Attrib V13    0.06316161632751327
#>     Attrib V14    0.0969421645970767
#>     Attrib V15    0.09025606188876528
#>     Attrib V16    0.007017936902040569
#>     Attrib V17    0.003907254748576238
#>     Attrib V18    -0.04433807399444381
#>     Attrib V19    -0.025879554427029737
#>     Attrib V2    0.05436609172439922
#>     Attrib V20    -0.01924332425759907
#>     Attrib V21    -0.011065206820575263
#>     Attrib V22    -0.07345297022779444
#>     Attrib V23    -0.031617488371092656
#>     Attrib V24    -0.030633113675233137
#>     Attrib V25    -0.016910467073190782
#>     Attrib V26    -0.0329162821823095
#>     Attrib V27    -0.09577748823421028
#>     Attrib V28    -0.012822639115981088
#>     Attrib V29    -0.016616873111450964
#>     Attrib V3    0.09410012277861084
#>     Attrib V30    -0.041012251446101544
#>     Attrib V31    -0.06944207943872058
#>     Attrib V32    0.009445450346145388
#>     Attrib V33    0.06460654677787168
#>     Attrib V34    0.040354852323442075
#>     Attrib V35    0.06470195658771015
#>     Attrib V36    -0.0017633299492987662
#>     Attrib V37    -0.040554383298299655
#>     Attrib V38    -0.03526275604453425
#>     Attrib V39    0.03834572961260374
#>     Attrib V4    -0.008807761870642843
#>     Attrib V40    0.05198385945721946
#>     Attrib V41    0.030121297072899005
#>     Attrib V42    0.09481868167023744
#>     Attrib V43    0.039277029462678206
#>     Attrib V44    0.07726741514856414
#>     Attrib V45    0.12297164641881853
#>     Attrib V46    0.04133382848494773
#>     Attrib V47    0.035212374912366264
#>     Attrib V48    0.07568571804683437
#>     Attrib V49    0.10301199750718483
#>     Attrib V5    0.040960307398860904
#>     Attrib V50    0.07755175645158863
#>     Attrib V51    0.0180387978176778
#>     Attrib V52    0.018499069612624628
#>     Attrib V53    0.1227401544191588
#>     Attrib V54    0.07092712335751813
#>     Attrib V55    0.09313479155061444
#>     Attrib V56    0.13382613499498422
#>     Attrib V57    0.15676733252551311
#>     Attrib V58    0.1021131855962435
#>     Attrib V59    0.12441595371917802
#>     Attrib V6    -0.004853427529236745
#>     Attrib V60    0.11440122998137496
#>     Attrib V7    0.028197003421013566
#>     Attrib V8    0.016928451501574217
#>     Attrib V9    0.0931937268483204
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.5879185777558968
#>     Attrib V1    -0.33566239267751363
#>     Attrib V10    -0.29200574432251464
#>     Attrib V11    -0.25476733860141326
#>     Attrib V12    -0.485196342706432
#>     Attrib V13    -0.20724437261078163
#>     Attrib V14    0.36304284080287275
#>     Attrib V15    0.41602852538763346
#>     Attrib V16    0.46295379798736314
#>     Attrib V17    0.6701823675260146
#>     Attrib V18    0.4827845282993818
#>     Attrib V19    -0.5056112535704819
#>     Attrib V2    -0.04560675452019882
#>     Attrib V20    -0.4268762270979815
#>     Attrib V21    -0.007152081752359054
#>     Attrib V22    -0.12498644827814234
#>     Attrib V23    -0.502239587665013
#>     Attrib V24    -0.7630087353157443
#>     Attrib V25    0.40602830073478735
#>     Attrib V26    0.8480895966503479
#>     Attrib V27    0.310457655155806
#>     Attrib V28    -0.4579084968288417
#>     Attrib V29    -0.0906301926574398
#>     Attrib V3    0.2348691230869045
#>     Attrib V30    0.3105280344975127
#>     Attrib V31    1.3385600314238713
#>     Attrib V32    -0.1421855795299042
#>     Attrib V33    -0.0433240093551828
#>     Attrib V34    0.3547848350801214
#>     Attrib V35    -0.3029028571376918
#>     Attrib V36    0.6411483744932504
#>     Attrib V37    1.4312216936459925
#>     Attrib V38    0.14579800552429203
#>     Attrib V39    -0.16554758026729952
#>     Attrib V4    0.09134675759429849
#>     Attrib V40    0.023933128159392674
#>     Attrib V41    -0.04740544067044081
#>     Attrib V42    0.2909759706826928
#>     Attrib V43    -0.20976832793684544
#>     Attrib V44    0.04360810266496279
#>     Attrib V45    -0.18232764129947635
#>     Attrib V46    -0.29164004073301564
#>     Attrib V47    0.10497748444624633
#>     Attrib V48    -0.2439175179658901
#>     Attrib V49    -0.8370944616519076
#>     Attrib V5    0.2964072963807616
#>     Attrib V50    0.7658414805512673
#>     Attrib V51    -0.11040676911789675
#>     Attrib V52    -0.8025011266109018
#>     Attrib V53    -0.4917894115858583
#>     Attrib V54    -0.16328526593420895
#>     Attrib V55    0.26598246442002776
#>     Attrib V56    0.6334153984366041
#>     Attrib V57    -0.05269719732159597
#>     Attrib V58    -0.29487835222498143
#>     Attrib V59    -0.5156258457980054
#>     Attrib V6    0.31102677140660767
#>     Attrib V60    -0.33305190611069874
#>     Attrib V7    0.12057557709865575
#>     Attrib V8    0.29523773370631934
#>     Attrib V9    -0.6136383461387397
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.009580339494605733
#>     Attrib V1    0.3033854601569648
#>     Attrib V10    -0.13182762404431628
#>     Attrib V11    -0.053766884637907277
#>     Attrib V12    0.08582643981551137
#>     Attrib V13    -0.11861619102138506
#>     Attrib V14    -0.04538312310356321
#>     Attrib V15    0.07643506820536496
#>     Attrib V16    0.14038521739856802
#>     Attrib V17    -0.00846115127939459
#>     Attrib V18    0.004980046724251927
#>     Attrib V19    0.05480173168182723
#>     Attrib V2    0.13403141569576008
#>     Attrib V20    0.0027051754853264103
#>     Attrib V21    -0.09148499699904293
#>     Attrib V22    -0.17713482954624332
#>     Attrib V23    -0.09803773492060705
#>     Attrib V24    0.19312616135836258
#>     Attrib V25    0.06455605506672216
#>     Attrib V26    -0.3037194690436741
#>     Attrib V27    -0.28188793554257585
#>     Attrib V28    -0.19655710888448158
#>     Attrib V29    -0.19921419442369034
#>     Attrib V3    -0.01857313147381165
#>     Attrib V30    -0.13251650731203404
#>     Attrib V31    -0.37791653354357546
#>     Attrib V32    0.18062624744064054
#>     Attrib V33    0.21699345950755888
#>     Attrib V34    -0.012584157415978937
#>     Attrib V35    0.1406427154270726
#>     Attrib V36    -0.2126458432125518
#>     Attrib V37    -0.4793384095818425
#>     Attrib V38    -0.10698731785541976
#>     Attrib V39    -0.0372187810004886
#>     Attrib V4    -0.09764917826126093
#>     Attrib V40    -0.07858556688393747
#>     Attrib V41    0.007355640690824783
#>     Attrib V42    0.09227695191020777
#>     Attrib V43    0.08635697232096178
#>     Attrib V44    0.04083315164201383
#>     Attrib V45    0.15386717146289966
#>     Attrib V46    0.14545847564104236
#>     Attrib V47    0.004502691132967643
#>     Attrib V48    0.13821638005794387
#>     Attrib V49    0.24014816955016177
#>     Attrib V5    -0.21811460353368503
#>     Attrib V50    -0.11202740520779539
#>     Attrib V51    -0.10301081728921176
#>     Attrib V52    0.059460182537951975
#>     Attrib V53    0.288247422714136
#>     Attrib V54    0.3208414942234688
#>     Attrib V55    0.10410220471204651
#>     Attrib V56    0.09787534513412618
#>     Attrib V57    0.2578619871890318
#>     Attrib V58    0.23465510917405621
#>     Attrib V59    0.3804009296013299
#>     Attrib V6    -0.10891899597336469
#>     Attrib V60    0.3320779820411622
#>     Attrib V7    -0.03923847924470753
#>     Attrib V8    -0.04262177399580738
#>     Attrib V9    0.15779496411076113
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.6404716846074112
#>     Attrib V1    1.2760573967534854
#>     Attrib V10    1.386331492684736
#>     Attrib V11    1.3004885739301617
#>     Attrib V12    1.1019197535575374
#>     Attrib V13    0.38378211634863896
#>     Attrib V14    -0.46223520537636614
#>     Attrib V15    -0.22025031781478607
#>     Attrib V16    -0.3124372834427308
#>     Attrib V17    -0.7957431397144981
#>     Attrib V18    -1.1835511540017611
#>     Attrib V19    -0.6881009792666765
#>     Attrib V2    0.8811082422284469
#>     Attrib V20    -0.37815137250792424
#>     Attrib V21    0.080670413412181
#>     Attrib V22    -0.03629172323541391
#>     Attrib V23    -0.13178960431079328
#>     Attrib V24    0.3571058985606179
#>     Attrib V25    0.15104681864194072
#>     Attrib V26    0.9554177977019666
#>     Attrib V27    1.5071564067451064
#>     Attrib V28    1.658901821894635
#>     Attrib V29    1.0773362681861247
#>     Attrib V3    0.05466241330023731
#>     Attrib V30    0.3651326925968303
#>     Attrib V31    -0.8884447010996978
#>     Attrib V32    0.2532875223558993
#>     Attrib V33    -0.3540521453467982
#>     Attrib V34    -0.381753634597671
#>     Attrib V35    0.5734879978937246
#>     Attrib V36    -0.3817472304098284
#>     Attrib V37    0.17688631025185536
#>     Attrib V38    0.05810329089778309
#>     Attrib V39    0.41365255739483686
#>     Attrib V4    0.38098286760420325
#>     Attrib V40    0.380895953278897
#>     Attrib V41    0.4696552307938603
#>     Attrib V42    -0.7718090686048941
#>     Attrib V43    -0.1679909490933278
#>     Attrib V44    -0.04275520757907554
#>     Attrib V45    0.6571066675951548
#>     Attrib V46    0.8463933663616736
#>     Attrib V47    0.21465651120657545
#>     Attrib V48    0.4263624054408404
#>     Attrib V49    0.7443600996219407
#>     Attrib V5    0.7889654511507158
#>     Attrib V50    -0.7341702834878209
#>     Attrib V51    0.8713699497031541
#>     Attrib V52    0.195704061860525
#>     Attrib V53    0.3196804440217604
#>     Attrib V54    0.33270584089457833
#>     Attrib V55    -0.2658003766313597
#>     Attrib V56    -0.5335420240433727
#>     Attrib V57    -0.20758490205382946
#>     Attrib V58    -0.419844670551253
#>     Attrib V59    0.30829917695449344
#>     Attrib V6    -0.036203050582158836
#>     Attrib V60    0.7630995583666286
#>     Attrib V7    -0.882142632298815
#>     Attrib V8    -0.8641846470088625
#>     Attrib V9    1.4517098385035532
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.12703445414968215
#>     Attrib V1    0.3881037219326148
#>     Attrib V10    0.027382494295057326
#>     Attrib V11    0.10102514069884377
#>     Attrib V12    0.10273686448994883
#>     Attrib V13    -0.13206291671118586
#>     Attrib V14    -0.11166877303288761
#>     Attrib V15    0.05860483263446247
#>     Attrib V16    0.16560604072384136
#>     Attrib V17    -0.05904504706070406
#>     Attrib V18    -0.19907066295699657
#>     Attrib V19    -0.08349163520310936
#>     Attrib V2    0.15297532512293707
#>     Attrib V20    -0.1720711295847929
#>     Attrib V21    -0.20903296829208914
#>     Attrib V22    -0.40355910883687524
#>     Attrib V23    -0.34314454730193567
#>     Attrib V24    0.05666503820084112
#>     Attrib V25    -0.14782005958690514
#>     Attrib V26    -0.3397522018492722
#>     Attrib V27    -0.15155575484689537
#>     Attrib V28    0.101344540746395
#>     Attrib V29    0.024154011736064043
#>     Attrib V3    -0.1280221451264957
#>     Attrib V30    0.047991357348669265
#>     Attrib V31    -0.3853825385097037
#>     Attrib V32    0.2480940455763638
#>     Attrib V33    0.28244652868185616
#>     Attrib V34    -0.00321521939968935
#>     Attrib V35    0.1576126919332967
#>     Attrib V36    -0.19503317263908204
#>     Attrib V37    -0.5404240511815585
#>     Attrib V38    -0.019975002139720123
#>     Attrib V39    0.03166793213968874
#>     Attrib V4    0.11181657836958805
#>     Attrib V40    -0.07996608131515236
#>     Attrib V41    -0.11318810432455473
#>     Attrib V42    -0.15704634832239037
#>     Attrib V43    0.07564534758554725
#>     Attrib V44    0.1522705048522074
#>     Attrib V45    0.29940893924205864
#>     Attrib V46    0.23620328355548392
#>     Attrib V47    0.02597516097217825
#>     Attrib V48    0.40165829716206986
#>     Attrib V49    0.4486743045402382
#>     Attrib V5    -0.20084964246901155
#>     Attrib V50    -0.1992969408121928
#>     Attrib V51    -0.05761106280291939
#>     Attrib V52    0.12624991587522338
#>     Attrib V53    0.25224681328207665
#>     Attrib V54    0.4366559451541038
#>     Attrib V55    0.1123362106620741
#>     Attrib V56    -0.09893789698523073
#>     Attrib V57    0.38608681998102695
#>     Attrib V58    0.14254988223787443
#>     Attrib V59    0.4483886819888582
#>     Attrib V6    -0.2604782986178426
#>     Attrib V60    0.365608344143869
#>     Attrib V7    -0.14585393448906023
#>     Attrib V8    -0.11026453657319031
#>     Attrib V9    0.24418237652217903
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.300513196057442
#>     Attrib V1    0.7039387493405912
#>     Attrib V10    1.2065329500490218
#>     Attrib V11    1.1909315683142105
#>     Attrib V12    1.3920542339944093
#>     Attrib V13    0.6487044322594389
#>     Attrib V14    -0.4249500231232476
#>     Attrib V15    -0.3852034821887265
#>     Attrib V16    -0.4161103000156355
#>     Attrib V17    -0.3366463418308741
#>     Attrib V18    -0.5134241640711213
#>     Attrib V19    -0.0081782054397334
#>     Attrib V2    0.5012515951451598
#>     Attrib V20    -0.444117989548314
#>     Attrib V21    -0.18866165007437574
#>     Attrib V22    0.2339065896558703
#>     Attrib V23    0.4913347321623582
#>     Attrib V24    0.9246966028000342
#>     Attrib V25    0.7809003129111309
#>     Attrib V26    1.4048254388750578
#>     Attrib V27    1.869916178778584
#>     Attrib V28    1.751693090004047
#>     Attrib V29    0.9236005849921076
#>     Attrib V3    -0.03435537542103854
#>     Attrib V30    0.2286892676415172
#>     Attrib V31    -0.7865550134507903
#>     Attrib V32    0.3117415052374915
#>     Attrib V33    -0.37070852285944333
#>     Attrib V34    -0.4235989173289494
#>     Attrib V35    0.4515339630645037
#>     Attrib V36    -0.47765738025021875
#>     Attrib V37    -0.09901541936330918
#>     Attrib V38    -0.1285631647793499
#>     Attrib V39    0.5270300724545806
#>     Attrib V4    0.29266434876832115
#>     Attrib V40    0.6090194169327315
#>     Attrib V41    0.8465649197790209
#>     Attrib V42    -0.4258814459794374
#>     Attrib V43    0.16019978466650708
#>     Attrib V44    0.1133288655122499
#>     Attrib V45    0.4687309306782028
#>     Attrib V46    0.6704268035368919
#>     Attrib V47    0.387572439479926
#>     Attrib V48    0.6899897520805067
#>     Attrib V49    1.0129188539328668
#>     Attrib V5    1.0472733149156876
#>     Attrib V50    -0.6907215233307747
#>     Attrib V51    1.1257116456882375
#>     Attrib V52    0.7128238013405731
#>     Attrib V53    0.8134682408993326
#>     Attrib V54    -0.0216113462590914
#>     Attrib V55    -0.408603532024108
#>     Attrib V56    -0.5169258395653699
#>     Attrib V57    -0.2480475210862589
#>     Attrib V58    -0.46195403425149956
#>     Attrib V59    0.19232160999093764
#>     Attrib V6    0.16619418506818404
#>     Attrib V60    0.8578450278766331
#>     Attrib V7    -0.7415626612389339
#>     Attrib V8    -1.1780661932924168
#>     Attrib V9    1.124166849922606
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.5682893698320851
#>     Attrib V1    -0.5840249500547129
#>     Attrib V10    0.02230080779144697
#>     Attrib V11    -0.017375557115347783
#>     Attrib V12    -0.18995363688824085
#>     Attrib V13    0.006054199218127976
#>     Attrib V14    0.6642780481694761
#>     Attrib V15    0.5482057305261593
#>     Attrib V16    0.9017376708119865
#>     Attrib V17    1.01325048030682
#>     Attrib V18    0.8125499930143244
#>     Attrib V19    -0.49934784805143684
#>     Attrib V2    -0.24314164692635284
#>     Attrib V20    -0.46770795407109594
#>     Attrib V21    0.1887642481870661
#>     Attrib V22    -0.15673246305529207
#>     Attrib V23    -1.1067437015624249
#>     Attrib V24    -1.1750622847067882
#>     Attrib V25    0.5596087869143128
#>     Attrib V26    1.3344720232668001
#>     Attrib V27    0.4960731131915509
#>     Attrib V28    -0.7136380630751847
#>     Attrib V29    -0.4029756747128451
#>     Attrib V3    -0.006615073533406279
#>     Attrib V30    0.7281595689870447
#>     Attrib V31    2.150742590458912
#>     Attrib V32    -0.054748264333588835
#>     Attrib V33    0.22844848219334382
#>     Attrib V34    0.48799646689345455
#>     Attrib V35    -0.6051301125333892
#>     Attrib V36    0.6962500565130227
#>     Attrib V37    1.5720145285249134
#>     Attrib V38    0.26677633593254974
#>     Attrib V39    0.06672305008971421
#>     Attrib V4    0.5444309659688348
#>     Attrib V40    0.3528686896180982
#>     Attrib V41    0.029270110036576518
#>     Attrib V42    0.2847129961738779
#>     Attrib V43    -0.25074526767375394
#>     Attrib V44    0.06190923957887439
#>     Attrib V45    -0.25049271549318314
#>     Attrib V46    -0.5080839855296145
#>     Attrib V47    0.021576779159968293
#>     Attrib V48    -0.1405510184806943
#>     Attrib V49    -0.9238837710760932
#>     Attrib V5    0.559965610616147
#>     Attrib V50    0.6930154895748522
#>     Attrib V51    -0.05058344770029697
#>     Attrib V52    -1.1684238087165182
#>     Attrib V53    -0.8019326980787794
#>     Attrib V54    -0.4819175249395084
#>     Attrib V55    0.2822061086540338
#>     Attrib V56    0.586546171329156
#>     Attrib V57    0.16473965432968482
#>     Attrib V58    -0.7274372733388997
#>     Attrib V59    -0.6913607896225182
#>     Attrib V6    0.350920010272615
#>     Attrib V60    -0.5672588174081266
#>     Attrib V7    0.35262577133503187
#>     Attrib V8    0.5956349022425679
#>     Attrib V9    -0.5207087929115739
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.01705787642514987
#>     Attrib V1    0.3117833559044546
#>     Attrib V10    -0.15281591758353374
#>     Attrib V11    -0.2183151334530181
#>     Attrib V12    -0.035270949465897476
#>     Attrib V13    -0.226770289765397
#>     Attrib V14    -0.1747455567758732
#>     Attrib V15    0.09086908679967151
#>     Attrib V16    0.21580255332156886
#>     Attrib V17    0.1916128227738386
#>     Attrib V18    0.2155770788508104
#>     Attrib V19    0.4475512019221883
#>     Attrib V2    0.031734223939775145
#>     Attrib V20    0.2792805613437651
#>     Attrib V21    0.028800039131065023
#>     Attrib V22    0.033967351618084826
#>     Attrib V23    0.1676947377878419
#>     Attrib V24    0.3943550167151846
#>     Attrib V25    -0.029309286851608225
#>     Attrib V26    -0.9246160132128685
#>     Attrib V27    -0.800682279374184
#>     Attrib V28    -0.22426855938364137
#>     Attrib V29    -0.20324999577805714
#>     Attrib V3    -0.24667908711922298
#>     Attrib V30    -0.11491063521152427
#>     Attrib V31    -0.7586719420103467
#>     Attrib V32    0.306396640700497
#>     Attrib V33    0.4115506071445312
#>     Attrib V34    -0.024195104096077398
#>     Attrib V35    0.27863682735305156
#>     Attrib V36    -0.34831342746682453
#>     Attrib V37    -1.0634909763737368
#>     Attrib V38    -0.12720191234005992
#>     Attrib V39    -0.10384333613449613
#>     Attrib V4    -0.33539197030375745
#>     Attrib V40    -0.1688818249083457
#>     Attrib V41    -0.09625031691403982
#>     Attrib V42    0.2310512706481582
#>     Attrib V43    0.2270408565439212
#>     Attrib V44    0.19590874062545607
#>     Attrib V45    0.3332300715284466
#>     Attrib V46    0.26391033876988956
#>     Attrib V47    0.12510682630935
#>     Attrib V48    0.29737461957819866
#>     Attrib V49    0.43450862232901266
#>     Attrib V5    -0.4838397861173264
#>     Attrib V50    -0.31234384517053293
#>     Attrib V51    -0.1853961996949679
#>     Attrib V52    0.08690258824031034
#>     Attrib V53    0.2137742350309935
#>     Attrib V54    0.39838774801588245
#>     Attrib V55    -0.007983992983154886
#>     Attrib V56    0.029407002884425475
#>     Attrib V57    0.18241228657494885
#>     Attrib V58    0.28089413321802925
#>     Attrib V59    0.3548412722761798
#>     Attrib V6    -0.2347615917326261
#>     Attrib V60    0.4343886010254937
#>     Attrib V7    0.02196776788760529
#>     Attrib V8    -0.02077300536063901
#>     Attrib V9    0.29924745027748434
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.1821790648959963
#>     Attrib V1    0.2993061212418743
#>     Attrib V10    -0.03942099714400031
#>     Attrib V11    0.016049435821122417
#>     Attrib V12    0.2142535848965534
#>     Attrib V13    -0.0428586558153648
#>     Attrib V14    -0.19644693624694903
#>     Attrib V15    0.004169580764764256
#>     Attrib V16    0.19075524923691084
#>     Attrib V17    0.20043962324021852
#>     Attrib V18    0.26400577823636745
#>     Attrib V19    0.6642967281866404
#>     Attrib V2    0.14876405664723086
#>     Attrib V20    0.07765460384362467
#>     Attrib V21    -0.17019631904579163
#>     Attrib V22    0.10452657856692642
#>     Attrib V23    0.3077667960763268
#>     Attrib V24    0.5689885276769545
#>     Attrib V25    0.03876688125360852
#>     Attrib V26    -0.7961655106693276
#>     Attrib V27    -0.46332075333207695
#>     Attrib V28    0.15669952076994917
#>     Attrib V29    0.17564276083480787
#>     Attrib V3    -0.32481612114248803
#>     Attrib V30    0.07148824953116567
#>     Attrib V31    -0.7434108536060096
#>     Attrib V32    0.5087413633244638
#>     Attrib V33    0.45522215069278166
#>     Attrib V34    -0.17671305931796344
#>     Attrib V35    0.23370865582151384
#>     Attrib V36    -0.6204343887907358
#>     Attrib V37    -1.3480536826276168
#>     Attrib V38    -0.3429067416239204
#>     Attrib V39    -0.13866531946956914
#>     Attrib V4    -0.25246610323824753
#>     Attrib V40    -0.02167387319804821
#>     Attrib V41    0.15291406715461384
#>     Attrib V42    0.29658276628514213
#>     Attrib V43    0.33511268254974913
#>     Attrib V44    0.07690696091466888
#>     Attrib V45    0.2883787954663684
#>     Attrib V46    0.3926435015886998
#>     Attrib V47    0.15896953858936866
#>     Attrib V48    0.47318196962424297
#>     Attrib V49    0.6296833184382749
#>     Attrib V5    -0.38367690135242133
#>     Attrib V50    -0.6397276942038589
#>     Attrib V51    -0.1235062389654105
#>     Attrib V52    0.33943846130760474
#>     Attrib V53    0.3431031351416544
#>     Attrib V54    0.17173868034716858
#>     Attrib V55    -0.19333576447413503
#>     Attrib V56    -0.15068194660497322
#>     Attrib V57    0.12460358541282085
#>     Attrib V58    0.19963093473686902
#>     Attrib V59    0.41863419766011006
#>     Attrib V6    -0.27892921343640736
#>     Attrib V60    0.551961724251543
#>     Attrib V7    -0.06850446221634356
#>     Attrib V8    -0.26487036171271927
#>     Attrib V9    0.4228186529816856
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.22937361340940582
#>     Attrib V1    0.10673987546408467
#>     Attrib V10    0.005580203240008985
#>     Attrib V11    0.03604038395534302
#>     Attrib V12    0.03550536812585837
#>     Attrib V13    0.09152304790644528
#>     Attrib V14    0.06114882448223649
#>     Attrib V15    0.02547419752855781
#>     Attrib V16    -0.011980273000527524
#>     Attrib V17    0.018881303330544122
#>     Attrib V18    -0.027505644883014758
#>     Attrib V19    -0.04848355679796637
#>     Attrib V2    0.05425117654513357
#>     Attrib V20    -0.012547938446176313
#>     Attrib V21    -0.050435157914138454
#>     Attrib V22    -0.09427503917694191
#>     Attrib V23    -0.007617038618736565
#>     Attrib V24    0.01063370085937158
#>     Attrib V25    0.0621404934649881
#>     Attrib V26    -0.05044585653957205
#>     Attrib V27    -0.00612333571179091
#>     Attrib V28    -0.06758104656200876
#>     Attrib V29    -0.03809965837263991
#>     Attrib V3    0.11287354810229219
#>     Attrib V30    -0.03927374687309946
#>     Attrib V31    -0.12335500231496649
#>     Attrib V32    0.01631983704869242
#>     Attrib V33    0.0383065878230747
#>     Attrib V34    0.06606059592721199
#>     Attrib V35    0.040489034392169006
#>     Attrib V36    -0.007255788680922808
#>     Attrib V37    -0.017447054942318112
#>     Attrib V38    -0.004716358600274239
#>     Attrib V39    0.06354434182333268
#>     Attrib V4    0.00939434799549397
#>     Attrib V40    0.05107929091056525
#>     Attrib V41    0.04768951972998625
#>     Attrib V42    0.07450402245559153
#>     Attrib V43    0.014979021169814755
#>     Attrib V44    0.052339278428096124
#>     Attrib V45    0.03750533827885483
#>     Attrib V46    0.08736615240161548
#>     Attrib V47    0.08189294944678856
#>     Attrib V48    0.042960294730195074
#>     Attrib V49    0.09767747695953938
#>     Attrib V5    0.02870005156641404
#>     Attrib V50    0.016168881655394443
#>     Attrib V51    -0.03867666247870298
#>     Attrib V52    -0.016822990160007725
#>     Attrib V53    0.08861862175371236
#>     Attrib V54    0.08231339954546903
#>     Attrib V55    0.09191146007367466
#>     Attrib V56    0.1124537638790396
#>     Attrib V57    0.1437503934511379
#>     Attrib V58    0.10434901965292469
#>     Attrib V59    0.15898743623747844
#>     Attrib V6    0.06209017613928498
#>     Attrib V60    0.18039884329865755
#>     Attrib V7    0.08427888849752227
#>     Attrib V8    0.017205943847690787
#>     Attrib V9    0.06563411636322154
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.3637412024261821
#>     Attrib V1    0.5544085307620195
#>     Attrib V10    0.3374387908759663
#>     Attrib V11    0.495231709556896
#>     Attrib V12    0.45370090991555734
#>     Attrib V13    -0.13845703976267107
#>     Attrib V14    -0.19429848704714445
#>     Attrib V15    -0.025739710227731707
#>     Attrib V16    0.012587783168703782
#>     Attrib V17    -0.24980651771985105
#>     Attrib V18    -0.49508217254253367
#>     Attrib V19    -0.46205600730143415
#>     Attrib V2    0.29411963275258396
#>     Attrib V20    -0.4776048232914395
#>     Attrib V21    -0.4417709079259908
#>     Attrib V22    -0.7292919511035801
#>     Attrib V23    -0.697965095987598
#>     Attrib V24    -0.1666881953017392
#>     Attrib V25    -0.2733256711065365
#>     Attrib V26    -0.11091491437866438
#>     Attrib V27    0.38303464893378814
#>     Attrib V28    0.5690386553402775
#>     Attrib V29    0.2005329854170596
#>     Attrib V3    -0.23439624296836672
#>     Attrib V30    0.19360666937239498
#>     Attrib V31    -0.2832522990976829
#>     Attrib V32    0.3958890978805509
#>     Attrib V33    0.23922461564707664
#>     Attrib V34    -0.05007879121122097
#>     Attrib V35    0.2711180641721284
#>     Attrib V36    -0.3134751473180897
#>     Attrib V37    -0.45417116098042365
#>     Attrib V38    -0.10899590916982017
#>     Attrib V39    0.11741154294732584
#>     Attrib V4    0.3598592884136765
#>     Attrib V40    -0.04675300615990396
#>     Attrib V41    -0.192038452818203
#>     Attrib V42    -0.46333352981488146
#>     Attrib V43    -0.03690855077412859
#>     Attrib V44    0.1165707180376257
#>     Attrib V45    0.36012086543520894
#>     Attrib V46    0.3228108716447388
#>     Attrib V47    -0.013285022322045911
#>     Attrib V48    0.67301368864092
#>     Attrib V49    0.6984167706177526
#>     Attrib V5    -0.04230339529358226
#>     Attrib V50    -0.3355286280747279
#>     Attrib V51    0.09839941108016702
#>     Attrib V52    0.18060845843096426
#>     Attrib V53    0.1263860238492392
#>     Attrib V54    0.4970273906743791
#>     Attrib V55    0.18151189053661657
#>     Attrib V56    -0.31124680723079134
#>     Attrib V57    0.41947233578761206
#>     Attrib V58    0.08204785158414858
#>     Attrib V59    0.420024918610092
#>     Attrib V6    -0.3022890686112856
#>     Attrib V60    0.3751120531380143
#>     Attrib V7    -0.43360228735740125
#>     Attrib V8    -0.1700504506995568
#>     Attrib V9    0.5274528946763035
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.17245679095421831
#>     Attrib V1    -0.6810630475690979
#>     Attrib V10    -0.9181597987398833
#>     Attrib V11    -0.46237423623983304
#>     Attrib V12    -0.35850624329495173
#>     Attrib V13    -0.10809361621759705
#>     Attrib V14    0.5037148372641643
#>     Attrib V15    0.49389529978687274
#>     Attrib V16    0.331731044204552
#>     Attrib V17    0.015902393731908788
#>     Attrib V18    -0.37053069115838605
#>     Attrib V19    -0.9405250254942551
#>     Attrib V2    0.11600406271747285
#>     Attrib V20    -0.8304425508740729
#>     Attrib V21    -0.5645167198898805
#>     Attrib V22    -0.6600166384354414
#>     Attrib V23    -1.1257622510766006
#>     Attrib V24    -1.142058608988904
#>     Attrib V25    -0.15179697552362606
#>     Attrib V26    1.289933036173348
#>     Attrib V27    1.1749651201208697
#>     Attrib V28    0.12602070957973616
#>     Attrib V29    0.3121039542693064
#>     Attrib V3    0.4478220161037842
#>     Attrib V30    0.11679396614606767
#>     Attrib V31    1.609579964571219
#>     Attrib V32    -0.17362527015015175
#>     Attrib V33    -0.5787535926764711
#>     Attrib V34    0.40950227617323537
#>     Attrib V35    -0.26072299024293705
#>     Attrib V36    0.5345165459048689
#>     Attrib V37    1.795222478217487
#>     Attrib V38    -0.30553087687283176
#>     Attrib V39    -0.3539119589987473
#>     Attrib V4    -0.1577831169242641
#>     Attrib V40    0.15100064938536603
#>     Attrib V41    0.025541518621354613
#>     Attrib V42    -0.17263116117033808
#>     Attrib V43    -0.6041982821453915
#>     Attrib V44    -0.616372348157588
#>     Attrib V45    -0.4623269371055135
#>     Attrib V46    -0.414370356637221
#>     Attrib V47    -0.004101177005168619
#>     Attrib V48    -0.1259516441737765
#>     Attrib V49    -0.8770989855470215
#>     Attrib V5    0.04670303253881163
#>     Attrib V50    0.4536504938284985
#>     Attrib V51    0.1991132800701161
#>     Attrib V52    -0.12945544861978603
#>     Attrib V53    -0.09385117457587966
#>     Attrib V54    -0.5193774282655119
#>     Attrib V55    0.7311779810944795
#>     Attrib V56    0.5400437629792366
#>     Attrib V57    0.36002590750914193
#>     Attrib V58    0.043724417811148844
#>     Attrib V59    -0.2308863470368196
#>     Attrib V6    -0.20379877287443085
#>     Attrib V60    -0.4681965483115415
#>     Attrib V7    -1.2156934798588066
#>     Attrib V8    -0.4568969636992404
#>     Attrib V9    -1.326732780068707
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.17509931683063465
#>     Attrib V1    -0.06644680782057899
#>     Attrib V10    0.2663724955179485
#>     Attrib V11    0.2279397728977321
#>     Attrib V12    0.18653196257041288
#>     Attrib V13    0.22339424140615832
#>     Attrib V14    0.15088351562265198
#>     Attrib V15    0.13785077000626283
#>     Attrib V16    0.26879433070886855
#>     Attrib V17    0.3452355050096033
#>     Attrib V18    0.27743433648761695
#>     Attrib V19    0.07725777356908065
#>     Attrib V2    -0.04435575080663609
#>     Attrib V20    0.02535361798591896
#>     Attrib V21    0.09851406276359041
#>     Attrib V22    0.12116716664301969
#>     Attrib V23    -0.03666734634020232
#>     Attrib V24    -0.16531237809957597
#>     Attrib V25    -0.03576236844191515
#>     Attrib V26    0.012229402240362704
#>     Attrib V27    -0.06757513541332973
#>     Attrib V28    -0.16513310524485939
#>     Attrib V29    -0.1786586233082245
#>     Attrib V3    0.17848886161080926
#>     Attrib V30    -0.07165825473957246
#>     Attrib V31    0.1787091409690921
#>     Attrib V32    -0.04109963830538232
#>     Attrib V33    0.025739042239658037
#>     Attrib V34    0.19025662130506832
#>     Attrib V35    0.021131866122091714
#>     Attrib V36    0.17861812195701407
#>     Attrib V37    0.3399541091892286
#>     Attrib V38    0.05879687038633401
#>     Attrib V39    0.08112236680681026
#>     Attrib V4    0.29087506308615696
#>     Attrib V40    0.1922360583742507
#>     Attrib V41    0.23765870617072957
#>     Attrib V42    0.15245608969790775
#>     Attrib V43    0.0067061294945071894
#>     Attrib V44    -0.044627872835268693
#>     Attrib V45    -0.05141683262891717
#>     Attrib V46    0.013712344037360233
#>     Attrib V47    0.06741774345195735
#>     Attrib V48    -0.0789413544818572
#>     Attrib V49    -0.16099493300937512
#>     Attrib V5    0.40040222051145585
#>     Attrib V50    0.16522188736247148
#>     Attrib V51    0.14269220825104487
#>     Attrib V52    -0.0132198402589793
#>     Attrib V53    -0.07473370589401064
#>     Attrib V54    -0.1706791607943441
#>     Attrib V55    0.1208354072819995
#>     Attrib V56    0.09251737537374292
#>     Attrib V57    0.1489736263552199
#>     Attrib V58    0.05094350180378374
#>     Attrib V59    -0.09656853864068586
#>     Attrib V6    0.3622569569676254
#>     Attrib V60    -0.04618025657879743
#>     Attrib V7    0.2520284043192476
#>     Attrib V8    0.2693144429089004
#>     Attrib V9    0.1523119731834012
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.10571255464850161
#>     Attrib V1    0.22206112673351358
#>     Attrib V10    0.012589047474355875
#>     Attrib V11    0.029268907259040137
#>     Attrib V12    0.007739358005000785
#>     Attrib V13    -0.07023998814748479
#>     Attrib V14    -0.013414001042495498
#>     Attrib V15    0.11791888034840345
#>     Attrib V16    0.047587669289667456
#>     Attrib V17    -0.024143262167481357
#>     Attrib V18    -0.07754521382299251
#>     Attrib V19    -0.009345946455937405
#>     Attrib V2    0.16468849901107502
#>     Attrib V20    -0.06856460270694865
#>     Attrib V21    -0.13282420950607407
#>     Attrib V22    -0.10072622400041084
#>     Attrib V23    -0.12441288733663118
#>     Attrib V24    0.06097215146241008
#>     Attrib V25    -0.021919907967106918
#>     Attrib V26    -0.15673745094083838
#>     Attrib V27    -0.1325104481048401
#>     Attrib V28    -0.0787404773761266
#>     Attrib V29    -0.1138804501733895
#>     Attrib V3    0.006751420295752679
#>     Attrib V30    -0.04803520017951405
#>     Attrib V31    -0.16537068731716895
#>     Attrib V32    0.031094552112845612
#>     Attrib V33    0.13391326219046393
#>     Attrib V34    -0.013113647118788933
#>     Attrib V35    0.13160818264278273
#>     Attrib V36    -0.08710514830434912
#>     Attrib V37    -0.23057819486365036
#>     Attrib V38    0.018502864054860596
#>     Attrib V39    0.03420116482794267
#>     Attrib V4    -0.06505601426475373
#>     Attrib V40    -0.05483680468175513
#>     Attrib V41    0.0022905276070388273
#>     Attrib V42    0.01683531341896147
#>     Attrib V43    0.09816774918493978
#>     Attrib V44    0.09513965441640133
#>     Attrib V45    0.1591976329020286
#>     Attrib V46    0.07298262313852868
#>     Attrib V47    -0.014252104534463291
#>     Attrib V48    0.14761032097073218
#>     Attrib V49    0.12525126043548923
#>     Attrib V5    -0.11415037425630864
#>     Attrib V50    -0.024717757119954446
#>     Attrib V51    -0.05343877625275726
#>     Attrib V52    0.02145412077410338
#>     Attrib V53    0.14127435088830081
#>     Attrib V54    0.20149112978810102
#>     Attrib V55    0.16752902141210746
#>     Attrib V56    0.11720957308417751
#>     Attrib V57    0.2268767091552566
#>     Attrib V58    0.12947537082432606
#>     Attrib V59    0.18099655344404678
#>     Attrib V6    -0.05476135076565372
#>     Attrib V60    0.22556487426534064
#>     Attrib V7    -0.06693102835202672
#>     Attrib V8    0.017800683963010117
#>     Attrib V9    0.10277028461759796
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.23102064298861885
#>     Attrib V1    0.08124627983404072
#>     Attrib V10    0.07143473961112415
#>     Attrib V11    0.05766583152675723
#>     Attrib V12    0.03068727571198774
#>     Attrib V13    0.049515376907011535
#>     Attrib V14    0.06932590825289305
#>     Attrib V15    0.01865311730272623
#>     Attrib V16    0.03089110129053338
#>     Attrib V17    -0.0015707997562800877
#>     Attrib V18    0.045415340756499965
#>     Attrib V19    -0.07076159271726248
#>     Attrib V2    0.06409022461077443
#>     Attrib V20    -0.013194921882896702
#>     Attrib V21    -0.003727718795593159
#>     Attrib V22    -0.03327666535660004
#>     Attrib V23    -0.017601123156437175
#>     Attrib V24    -0.049737032788089705
#>     Attrib V25    0.03200251780316436
#>     Attrib V26    0.020452543320834998
#>     Attrib V27    -0.023511539203486982
#>     Attrib V28    -0.06907939615747576
#>     Attrib V29    -0.08317697733751472
#>     Attrib V3    0.1296097483849451
#>     Attrib V30    -0.09037013660463858
#>     Attrib V31    -0.05096706829058616
#>     Attrib V32    -0.01745003972519859
#>     Attrib V33    0.029913514477456854
#>     Attrib V34    0.0666506161574957
#>     Attrib V35    0.022486687069811204
#>     Attrib V36    0.10576472143058922
#>     Attrib V37    0.02734145468751319
#>     Attrib V38    -0.0026034230468913607
#>     Attrib V39    0.05751869100220869
#>     Attrib V4    0.010518620046441605
#>     Attrib V40    0.032857713088896144
#>     Attrib V41    0.02721984994363919
#>     Attrib V42    0.06801680467573909
#>     Attrib V43    0.04427341127695056
#>     Attrib V44    0.08889144745650966
#>     Attrib V45    0.0020395271969950255
#>     Attrib V46    0.024687656600259292
#>     Attrib V47    0.08637149457780567
#>     Attrib V48    0.0397560483803505
#>     Attrib V49    0.05961923366205515
#>     Attrib V5    0.06804201877898396
#>     Attrib V50    0.026657954563694863
#>     Attrib V51    0.04716365181848966
#>     Attrib V52    -0.013443945653168322
#>     Attrib V53    0.06367178839630327
#>     Attrib V54    0.024107162728836364
#>     Attrib V55    0.11579679775938416
#>     Attrib V56    0.1372864018266426
#>     Attrib V57    0.08033869385326038
#>     Attrib V58    0.09890325847107961
#>     Attrib V59    0.10901591345732554
#>     Attrib V6    0.059744105602486226
#>     Attrib V60    0.14098248921620227
#>     Attrib V7    0.10917864303702313
#>     Attrib V8    0.1206555233027578
#>     Attrib V9    0.07973959454847535
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.5223008668971756
#>     Attrib V1    0.9282897566240325
#>     Attrib V10    1.0774445873060152
#>     Attrib V11    1.0451256367647066
#>     Attrib V12    1.1153067086882469
#>     Attrib V13    0.35757426300172507
#>     Attrib V14    -0.37065607972676146
#>     Attrib V15    -0.14370447005739934
#>     Attrib V16    -0.299541770130264
#>     Attrib V17    -0.582346109774908
#>     Attrib V18    -0.9323375742209311
#>     Attrib V19    -0.48175335469792036
#>     Attrib V2    0.6953060330825738
#>     Attrib V20    -0.48560738197795583
#>     Attrib V21    -0.16033376789477524
#>     Attrib V22    -0.054849427052533165
#>     Attrib V23    -0.18820063062098796
#>     Attrib V24    0.31730500667666617
#>     Attrib V25    0.16791911226556744
#>     Attrib V26    0.7980279399672582
#>     Attrib V27    1.4587126884433474
#>     Attrib V28    1.5517463202488073
#>     Attrib V29    0.8494219664376812
#>     Attrib V3    -0.018941465849526315
#>     Attrib V30    0.3334643103916535
#>     Attrib V31    -0.6950906891967269
#>     Attrib V32    0.26225678862684
#>     Attrib V33    -0.2546003712784603
#>     Attrib V34    -0.35424753262906433
#>     Attrib V35    0.5476082905470963
#>     Attrib V36    -0.31938834981037334
#>     Attrib V37    0.018481873573915158
#>     Attrib V38    0.017150780830393293
#>     Attrib V39    0.33029240936929277
#>     Attrib V4    0.4961082869540876
#>     Attrib V40    0.3077350111621245
#>     Attrib V41    0.34119164520081674
#>     Attrib V42    -0.6235964903229634
#>     Attrib V43    -0.08385366059823755
#>     Attrib V44    -0.01366281341981445
#>     Attrib V45    0.6255661344831548
#>     Attrib V46    0.6968701190590736
#>     Attrib V47    0.12874518769376958
#>     Attrib V48    0.4646800805257469
#>     Attrib V49    0.7804187277467007
#>     Attrib V5    0.6814783367959691
#>     Attrib V50    -0.7872655012312919
#>     Attrib V51    0.6534380628270312
#>     Attrib V52    0.29100380261084646
#>     Attrib V53    0.4021548860947457
#>     Attrib V54    0.2814017909395254
#>     Attrib V55    -0.13315516649480505
#>     Attrib V56    -0.5589447291766436
#>     Attrib V57    -0.03555069064691404
#>     Attrib V58    -0.2649653309511296
#>     Attrib V59    0.3248851759065749
#>     Attrib V6    -0.10280473817144466
#>     Attrib V60    0.7156970229300789
#>     Attrib V7    -0.7987245988641409
#>     Attrib V8    -0.8210078874212469
#>     Attrib V9    1.0929822918763208
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.21715601201331777
#>     Attrib V1    0.25982674485039564
#>     Attrib V10    0.11457473130550422
#>     Attrib V11    0.10567266102471973
#>     Attrib V12    0.3724773227224755
#>     Attrib V13    0.00858815721476917
#>     Attrib V14    -0.20708523043551852
#>     Attrib V15    -0.0893857773270967
#>     Attrib V16    0.01105886302811219
#>     Attrib V17    0.08374712895953099
#>     Attrib V18    0.16732656175517927
#>     Attrib V19    0.4473176038377934
#>     Attrib V2    0.036280948296057665
#>     Attrib V20    -0.052527438377229695
#>     Attrib V21    -0.19391471797793566
#>     Attrib V22    0.011241968736187661
#>     Attrib V23    0.2684278545126424
#>     Attrib V24    0.5363260530991747
#>     Attrib V25    0.11637598605623965
#>     Attrib V26    -0.3605957385644643
#>     Attrib V27    0.01365110330411041
#>     Attrib V28    0.43592740253761564
#>     Attrib V29    0.3515172770860654
#>     Attrib V3    -0.3204933747556837
#>     Attrib V30    0.21655746189142625
#>     Attrib V31    -0.5474553043424737
#>     Attrib V32    0.3624850925172219
#>     Attrib V33    0.25677704154161857
#>     Attrib V34    -0.19752080628334923
#>     Attrib V35    0.3045944695358276
#>     Attrib V36    -0.3874527779891916
#>     Attrib V37    -0.9399455849851184
#>     Attrib V38    -0.2655429594283066
#>     Attrib V39    -0.07740146789048867
#>     Attrib V4    -0.11589665796341744
#>     Attrib V40    0.007908340148361396
#>     Attrib V41    0.20365736994364073
#>     Attrib V42    0.15264572350840666
#>     Attrib V43    0.329324139984776
#>     Attrib V44    0.24313197824181226
#>     Attrib V45    0.3005539384245729
#>     Attrib V46    0.3060163550200138
#>     Attrib V47    0.06237860075693898
#>     Attrib V48    0.359403274154786
#>     Attrib V49    0.584380327827807
#>     Attrib V5    -0.14620709081292924
#>     Attrib V50    -0.5534046495631533
#>     Attrib V51    0.0037129140383662007
#>     Attrib V52    0.3198761005891168
#>     Attrib V53    0.31188118010276294
#>     Attrib V54    0.1407503801680252
#>     Attrib V55    -0.17872348934517393
#>     Attrib V56    -0.2737113664559946
#>     Attrib V57    -9.545543324027187E-4
#>     Attrib V58    0.08704084399102989
#>     Attrib V59    0.3145044155747049
#>     Attrib V6    -0.2045775343180329
#>     Attrib V60    0.4756635339701306
#>     Attrib V7    -0.11992751102223088
#>     Attrib V8    -0.366575663000174
#>     Attrib V9    0.40894251114397984
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.1324449480846781
#>     Attrib V1    -0.3380654798825619
#>     Attrib V10    0.08594684637211984
#>     Attrib V11    0.07505200371706662
#>     Attrib V12    -0.18971219715295945
#>     Attrib V13    0.07852920996236197
#>     Attrib V14    0.24631606504139397
#>     Attrib V15    -0.01932390773271806
#>     Attrib V16    -0.16216608888687112
#>     Attrib V17    -0.27623491968420005
#>     Attrib V18    -0.49573033654321563
#>     Attrib V19    -1.0697427272670408
#>     Attrib V2    -0.06142767599706369
#>     Attrib V20    -0.38175353545082474
#>     Attrib V21    0.10983143312425125
#>     Attrib V22    -0.29095757571781194
#>     Attrib V23    -0.6905808873321567
#>     Attrib V24    -1.0012979625233367
#>     Attrib V25    -0.1554683418934557
#>     Attrib V26    1.2912031412517564
#>     Attrib V27    1.1185088920240451
#>     Attrib V28    0.14578131298964744
#>     Attrib V29    0.07096232431532505
#>     Attrib V3    0.39367159898344156
#>     Attrib V30    0.12461871503697837
#>     Attrib V31    1.11624546085823
#>     Attrib V32    -0.6689053984532273
#>     Attrib V33    -0.5771416943547644
#>     Attrib V34    0.3565744221666467
#>     Attrib V35    -0.14317490304477262
#>     Attrib V36    0.8683659424469076
#>     Attrib V37    2.0919440805557894
#>     Attrib V38    0.4051279788776617
#>     Attrib V39    0.0700284605184339
#>     Attrib V4    0.5428513431377887
#>     Attrib V40    0.18687852918096917
#>     Attrib V41    -0.03756679085552656
#>     Attrib V42    -0.6118397997409861
#>     Attrib V43    -0.5763033593360049
#>     Attrib V44    -0.3667185920479807
#>     Attrib V45    -0.3891855657770285
#>     Attrib V46    -0.4940457349057561
#>     Attrib V47    -0.3871343170641888
#>     Attrib V48    -0.5727206188484283
#>     Attrib V49    -1.0091869852375055
#>     Attrib V5    0.768132164183025
#>     Attrib V50    0.5580685975975356
#>     Attrib V51    0.2119033623923935
#>     Attrib V52    -0.5667424301916301
#>     Attrib V53    -0.46405402538866863
#>     Attrib V54    -0.32223998394274717
#>     Attrib V55    0.06332872203288684
#>     Attrib V56    0.07130836155370354
#>     Attrib V57    -0.09099734785867306
#>     Attrib V58    -0.43315589150284073
#>     Attrib V59    -0.39764355925005973
#>     Attrib V6    0.33733322506396446
#>     Attrib V60    -0.5529562801899348
#>     Attrib V7    -0.1176822887979214
#>     Attrib V8    0.10771658561582158
#>     Attrib V9    -0.4327533928685052
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.01921444219816636
#>     Attrib V1    0.42947775391002396
#>     Attrib V10    -0.1963827117626901
#>     Attrib V11    -0.27396862481391404
#>     Attrib V12    -0.12413641796791225
#>     Attrib V13    -0.27196424477250236
#>     Attrib V14    -0.13331579865360857
#>     Attrib V15    0.11403965666070337
#>     Attrib V16    0.28977008617289174
#>     Attrib V17    0.1370666132814642
#>     Attrib V18    0.138228223308613
#>     Attrib V19    0.33138685174734966
#>     Attrib V2    0.1345430545578065
#>     Attrib V20    0.22969996117957397
#>     Attrib V21    0.038240549539201925
#>     Attrib V22    -0.003113699465870768
#>     Attrib V23    0.04058510524236195
#>     Attrib V24    0.3597297117192012
#>     Attrib V25    -0.14342173759545215
#>     Attrib V26    -1.0335027660151335
#>     Attrib V27    -0.9290168552200174
#>     Attrib V28    -0.4357404423295667
#>     Attrib V29    -0.2788823721592478
#>     Attrib V3    -0.19048627613734256
#>     Attrib V30    -0.21944865510714054
#>     Attrib V31    -0.6670616110879246
#>     Attrib V32    0.3286634904320792
#>     Attrib V33    0.40877769029356953
#>     Attrib V34    -0.03785123088774982
#>     Attrib V35    0.2178487269142894
#>     Attrib V36    -0.34975982418175267
#>     Attrib V37    -0.9550434666474048
#>     Attrib V38    -0.1494068031063702
#>     Attrib V39    -0.11297346728004129
#>     Attrib V4    -0.2541774908582289
#>     Attrib V40    -0.13551824348253902
#>     Attrib V41    -0.12269788136569962
#>     Attrib V42    0.15072107743315746
#>     Attrib V43    0.2275204233584452
#>     Attrib V44    0.11043128166535253
#>     Attrib V45    0.1902667109339491
#>     Attrib V46    0.26403517366496154
#>     Attrib V47    0.009483854293207096
#>     Attrib V48    0.2803143772272338
#>     Attrib V49    0.40312468113713046
#>     Attrib V5    -0.48439199636205266
#>     Attrib V50    -0.31605690408189696
#>     Attrib V51    -0.2805576949904518
#>     Attrib V52    0.0951470843025694
#>     Attrib V53    0.21297913501842197
#>     Attrib V54    0.48460054062523744
#>     Attrib V55    0.023315627383882875
#>     Attrib V56    0.08705920839397642
#>     Attrib V57    0.23748221325570135
#>     Attrib V58    0.3225020701639805
#>     Attrib V59    0.45693769465909034
#>     Attrib V6    -0.23308051185891412
#>     Attrib V60    0.4955985984994466
#>     Attrib V7    0.0758030588094326
#>     Attrib V8    -0.15982251271217027
#>     Attrib V9    0.21881701973590242
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.08005835826231389
#>     Attrib V1    0.2711708107911298
#>     Attrib V10    -0.0957190855433053
#>     Attrib V11    -0.016773886438724416
#>     Attrib V12    0.4358113032285165
#>     Attrib V13    0.11271949175652779
#>     Attrib V14    -0.17460177339441912
#>     Attrib V15    0.043022807992058154
#>     Attrib V16    0.1122608919364878
#>     Attrib V17    0.3156633580000035
#>     Attrib V18    0.39234046510071646
#>     Attrib V19    0.7579495736920692
#>     Attrib V2    0.07670275782476164
#>     Attrib V20    -0.011732676105560728
#>     Attrib V21    -0.33056063870776375
#>     Attrib V22    0.17395162715269105
#>     Attrib V23    0.4772984365156065
#>     Attrib V24    0.7044967951763108
#>     Attrib V25    0.20971771237883977
#>     Attrib V26    -0.6457986961834121
#>     Attrib V27    -0.47468007080875385
#>     Attrib V28    0.08079755844928607
#>     Attrib V29    0.11920619121501742
#>     Attrib V3    -0.16909120702745714
#>     Attrib V30    0.0936071702672531
#>     Attrib V31    -0.6063352358465145
#>     Attrib V32    0.5953792247791968
#>     Attrib V33    0.37295829455174434
#>     Attrib V34    -0.2962655808133853
#>     Attrib V35    0.1395660112539568
#>     Attrib V36    -0.8257568698200088
#>     Attrib V37    -1.5064593528492196
#>     Attrib V38    -0.5160200327278731
#>     Attrib V39    -0.22003664746931717
#>     Attrib V4    -0.35600856127164715
#>     Attrib V40    -0.08013963679391183
#>     Attrib V41    0.24291606892735626
#>     Attrib V42    0.38872387431063876
#>     Attrib V43    0.3660122666449866
#>     Attrib V44    0.04606787726161157
#>     Attrib V45    0.18255264612648267
#>     Attrib V46    0.3347292387927263
#>     Attrib V47    0.2620185069393634
#>     Attrib V48    0.3550228174847692
#>     Attrib V49    0.6424507444440427
#>     Attrib V5    -0.3854339750228884
#>     Attrib V50    -0.6529062939565042
#>     Attrib V51    -0.15339483203373847
#>     Attrib V52    0.4501669146281475
#>     Attrib V53    0.49205327557360184
#>     Attrib V54    0.11034747681259309
#>     Attrib V55    -0.14562805122201822
#>     Attrib V56    -0.02782662056468916
#>     Attrib V57    0.04399534336685397
#>     Attrib V58    0.20779452485201616
#>     Attrib V59    0.4058146083382597
#>     Attrib V6    -0.1855137862011614
#>     Attrib V60    0.6049875029658948
#>     Attrib V7    -0.05442499215501554
#>     Attrib V8    -0.45570545402690704
#>     Attrib V9    0.335682411330533
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.14157299657873076
#>     Attrib V1    -0.036609324069196904
#>     Attrib V10    0.19465986898237375
#>     Attrib V11    0.1951267965245146
#>     Attrib V12    0.18160117875098908
#>     Attrib V13    0.16071783435021075
#>     Attrib V14    0.17413107336225236
#>     Attrib V15    0.18267028646440114
#>     Attrib V16    0.16657838024964086
#>     Attrib V17    0.2969017619098518
#>     Attrib V18    0.17535592264188238
#>     Attrib V19    0.041123668921023364
#>     Attrib V2    -0.016549276686629363
#>     Attrib V20    0.0560879257477616
#>     Attrib V21    0.10702860181894643
#>     Attrib V22    0.07717923545702912
#>     Attrib V23    0.02207587867574767
#>     Attrib V24    -0.20209370048436306
#>     Attrib V25    -0.059158743597973205
#>     Attrib V26    0.06574072208104356
#>     Attrib V27    -0.07723684556859646
#>     Attrib V28    -0.1482387566238252
#>     Attrib V29    -0.17186605367491423
#>     Attrib V3    0.13750227404708862
#>     Attrib V30    -0.05709877691249339
#>     Attrib V31    0.1426835846712824
#>     Attrib V32    -0.031117941176855145
#>     Attrib V33    -0.017001807885613163
#>     Attrib V34    0.13102902142303305
#>     Attrib V35    0.021987365807032023
#>     Attrib V36    0.19225204778876986
#>     Attrib V37    0.23699703105065106
#>     Attrib V38    0.041579393008248935
#>     Attrib V39    0.051163666116654
#>     Attrib V4    0.2701422675382869
#>     Attrib V40    0.2121031795680316
#>     Attrib V41    0.21725634729304005
#>     Attrib V42    0.07597231035699552
#>     Attrib V43    0.06761679089904023
#>     Attrib V44    -0.020121104274371374
#>     Attrib V45    -0.09802615240575983
#>     Attrib V46    -0.0021596417086062283
#>     Attrib V47    0.09635086651832475
#>     Attrib V48    -0.04989833064814151
#>     Attrib V49    -0.14228338017902048
#>     Attrib V5    0.30186296767929693
#>     Attrib V50    0.164290436970481
#>     Attrib V51    0.10280494357957132
#>     Attrib V52    0.015261795075150724
#>     Attrib V53    -0.11781462641053422
#>     Attrib V54    -0.13914713950365082
#>     Attrib V55    0.11287537073704551
#>     Attrib V56    0.1290571121565486
#>     Attrib V57    0.17521922252728162
#>     Attrib V58    0.03081525407554957
#>     Attrib V59    -0.030346710433966584
#>     Attrib V6    0.3327188527399564
#>     Attrib V60    -0.05715281538126096
#>     Attrib V7    0.20885166304914923
#>     Attrib V8    0.27678706364880423
#>     Attrib V9    0.15207868368697092
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.4645517221277025
#>     Attrib V1    0.6636615651012517
#>     Attrib V10    1.1114953870949216
#>     Attrib V11    1.207917551067488
#>     Attrib V12    1.5936513219022534
#>     Attrib V13    0.6773884997814013
#>     Attrib V14    -0.32970307582308983
#>     Attrib V15    -0.43200256608143595
#>     Attrib V16    -0.5021374743468677
#>     Attrib V17    -0.2608276573406033
#>     Attrib V18    -0.4473825146152848
#>     Attrib V19    0.04729459750626859
#>     Attrib V2    0.5155708782026374
#>     Attrib V20    -0.665863972609897
#>     Attrib V21    -0.3458501490248266
#>     Attrib V22    0.3747213695221321
#>     Attrib V23    0.7350576350702571
#>     Attrib V24    1.1063387945001268
#>     Attrib V25    0.8125394397981499
#>     Attrib V26    1.533808231106353
#>     Attrib V27    2.284567871601851
#>     Attrib V28    2.199857525153112
#>     Attrib V29    1.331958289205697
#>     Attrib V3    0.1433424550538674
#>     Attrib V30    0.27450159872190494
#>     Attrib V31    -0.9637646091507825
#>     Attrib V32    0.26049125336095763
#>     Attrib V33    -0.5997990446691125
#>     Attrib V34    -0.632706807514379
#>     Attrib V35    0.35795098731228986
#>     Attrib V36    -0.6298844791772594
#>     Attrib V37    0.0324698806021331
#>     Attrib V38    -0.20374094071628676
#>     Attrib V39    0.6663932070261592
#>     Attrib V4    0.6631833259429469
#>     Attrib V40    0.8304642718352824
#>     Attrib V41    1.2687049985059764
#>     Attrib V42    -0.2935345884303917
#>     Attrib V43    0.14918344636382083
#>     Attrib V44    0.17542044105954044
#>     Attrib V45    0.4587777649082157
#>     Attrib V46    0.6871545095529344
#>     Attrib V47    0.3067288021406337
#>     Attrib V48    0.7606005505199421
#>     Attrib V49    1.1830970067422915
#>     Attrib V5    1.588833726582156
#>     Attrib V50    -0.8596867239463498
#>     Attrib V51    1.338155647200683
#>     Attrib V52    0.9738046490696718
#>     Attrib V53    1.010581297666207
#>     Attrib V54    -0.07310285225801239
#>     Attrib V55    -0.6150331355787685
#>     Attrib V56    -0.6701476668276929
#>     Attrib V57    -0.07619855050945777
#>     Attrib V58    -0.5304514359871226
#>     Attrib V59    0.4686089324688741
#>     Attrib V6    0.3080328837298515
#>     Attrib V60    1.2682377136864578
#>     Attrib V7    -0.8967129675372432
#>     Attrib V8    -1.7299746604082005
#>     Attrib V9    0.9886417351361307
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.2032925624605633
#>     Attrib V1    -0.062036208764787514
#>     Attrib V10    0.15244075102829532
#>     Attrib V11    0.11289492666226077
#>     Attrib V12    0.13756978975658463
#>     Attrib V13    0.14613471014076096
#>     Attrib V14    0.21694383613548068
#>     Attrib V15    0.11610637658017874
#>     Attrib V16    0.14895554283909718
#>     Attrib V17    0.24433711060188823
#>     Attrib V18    0.13382003230864384
#>     Attrib V19    0.026925045484138693
#>     Attrib V2    0.0029540427021873287
#>     Attrib V20    0.018234127738916184
#>     Attrib V21    0.1126446257737966
#>     Attrib V22    0.0870997368071726
#>     Attrib V23    -0.025852560688503792
#>     Attrib V24    -0.18883713898952376
#>     Attrib V25    -0.003772462095249477
#>     Attrib V26    0.0524707702669882
#>     Attrib V27    -0.006250164472885132
#>     Attrib V28    -0.13913609809769015
#>     Attrib V29    -0.13025171156137108
#>     Attrib V3    0.12023518545798344
#>     Attrib V30    -0.03455406444085096
#>     Attrib V31    0.19752320457229383
#>     Attrib V32    -0.09199267446543127
#>     Attrib V33    0.06039755105265031
#>     Attrib V34    0.1257815590437237
#>     Attrib V35    0.04580845550816801
#>     Attrib V36    0.21342997554058138
#>     Attrib V37    0.3466109875845812
#>     Attrib V38    0.023330639979374117
#>     Attrib V39    0.061699612769197325
#>     Attrib V4    0.23043681942907965
#>     Attrib V40    0.18147361054526837
#>     Attrib V41    0.17890487924826506
#>     Attrib V42    0.1506846294995877
#>     Attrib V43    0.029512503038403148
#>     Attrib V44    -0.013403083278568314
#>     Attrib V45    -0.09150928267974251
#>     Attrib V46    -0.07005261737032538
#>     Attrib V47    0.017592449874761475
#>     Attrib V48    -0.046658336360535534
#>     Attrib V49    -0.18879338791065867
#>     Attrib V5    0.2543453615389861
#>     Attrib V50    0.15713933694945573
#>     Attrib V51    0.02332026896809145
#>     Attrib V52    -0.1352469817882501
#>     Attrib V53    -0.13279595027203553
#>     Attrib V54    -0.12960674585133203
#>     Attrib V55    0.10222453592032016
#>     Attrib V56    0.14657666012151505
#>     Attrib V57    0.1594043669229382
#>     Attrib V58    0.019300482554900713
#>     Attrib V59    -0.031133254758229548
#>     Attrib V6    0.328038782469507
#>     Attrib V60    0.0037348035617760056
#>     Attrib V7    0.21898727672723248
#>     Attrib V8    0.2961656065856593
#>     Attrib V9    0.03299582269433469
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.47983128269824993
#>     Attrib V1    0.9203471379716799
#>     Attrib V10    0.9364037748593236
#>     Attrib V11    0.9327810530355886
#>     Attrib V12    0.8618539495523962
#>     Attrib V13    0.23445647356958815
#>     Attrib V14    -0.35442297615561774
#>     Attrib V15    -0.16706106091842582
#>     Attrib V16    -0.24892562257725662
#>     Attrib V17    -0.5928508784603759
#>     Attrib V18    -0.8113946442449675
#>     Attrib V19    -0.5779631971986975
#>     Attrib V2    0.58186660241262
#>     Attrib V20    -0.44528108015206175
#>     Attrib V21    -0.08314570976441524
#>     Attrib V22    -0.2077887453034341
#>     Attrib V23    -0.36216241330645327
#>     Attrib V24    0.1875273072931052
#>     Attrib V25    0.027512450656881994
#>     Attrib V26    0.5740553964696463
#>     Attrib V27    1.0746065397730606
#>     Attrib V28    1.2023251231008207
#>     Attrib V29    0.7080525643603356
#>     Attrib V3    -0.09639449620765421
#>     Attrib V30    0.3395346005721108
#>     Attrib V31    -0.597516003684615
#>     Attrib V32    0.24894159664073173
#>     Attrib V33    -0.170228249717008
#>     Attrib V34    -0.19654247987674425
#>     Attrib V35    0.5413730994014858
#>     Attrib V36    -0.16071430372681422
#>     Attrib V37    -0.01713460752943141
#>     Attrib V38    0.06933210031729545
#>     Attrib V39    0.283362964334961
#>     Attrib V4    0.43906511713710755
#>     Attrib V40    -0.01633583606370096
#>     Attrib V41    0.009123881152271874
#>     Attrib V42    -0.6616067680327287
#>     Attrib V43    -0.06055058360464865
#>     Attrib V44    0.13483943912024865
#>     Attrib V45    0.6282462685074668
#>     Attrib V46    0.5577419348757369
#>     Attrib V47    0.0698748855136399
#>     Attrib V48    0.48896984553027617
#>     Attrib V49    0.6504575979182741
#>     Attrib V5    0.3563084371350418
#>     Attrib V50    -0.5284045969147416
#>     Attrib V51    0.5099612363918535
#>     Attrib V52    0.15290835729756622
#>     Attrib V53    0.18261746493234424
#>     Attrib V54    0.41620584291324
#>     Attrib V55    -0.006712751087908197
#>     Attrib V56    -0.5001609516578346
#>     Attrib V57    0.12038462292859084
#>     Attrib V58    -0.1795186772081298
#>     Attrib V59    0.36167801142723427
#>     Attrib V6    -0.176830255525051
#>     Attrib V60    0.5581994875190938
#>     Attrib V7    -0.7732404936439407
#>     Attrib V8    -0.5480190523596418
#>     Attrib V9    0.9851303656447634
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.15455196414605663
#>     Attrib V1    -0.8700213578902163
#>     Attrib V10    -1.7521945494793452
#>     Attrib V11    -1.250226647270653
#>     Attrib V12    -0.9883752791601221
#>     Attrib V13    -0.13756353505598234
#>     Attrib V14    0.7468519925141653
#>     Attrib V15    0.8085217981991892
#>     Attrib V16    0.6204298676038987
#>     Attrib V17    0.0640113502281916
#>     Attrib V18    -0.3128192252507405
#>     Attrib V19    -1.1683623897766209
#>     Attrib V2    0.13116084298011113
#>     Attrib V20    -1.3052882915581505
#>     Attrib V21    -0.933230544669394
#>     Attrib V22    -1.008160659246519
#>     Attrib V23    -1.3037016802289016
#>     Attrib V24    -1.1511463802212913
#>     Attrib V25    -0.6180063271129934
#>     Attrib V26    0.6279422053191233
#>     Attrib V27    0.760279633105364
#>     Attrib V28    -0.45778945353147776
#>     Attrib V29    -0.32063539891509774
#>     Attrib V3    0.7289675669181079
#>     Attrib V30    -0.008499221351407725
#>     Attrib V31    2.2553484094132794
#>     Attrib V32    0.025374936553401277
#>     Attrib V33    -0.3034528546341272
#>     Attrib V34    0.48557528525819177
#>     Attrib V35    -0.8443508166077588
#>     Attrib V36    -0.2850701109826273
#>     Attrib V37    1.0265483603470824
#>     Attrib V38    -0.6847829110762889
#>     Attrib V39    -0.9403852737608102
#>     Attrib V4    -0.5534796381349514
#>     Attrib V40    0.0011932921413637734
#>     Attrib V41    0.18687327939078566
#>     Attrib V42    0.07801819593539334
#>     Attrib V43    -0.5999867916207644
#>     Attrib V44    -1.0318645481290574
#>     Attrib V45    -0.605592691637573
#>     Attrib V46    -0.5111258318696741
#>     Attrib V47    0.04157004609010928
#>     Attrib V48    0.3230129728944231
#>     Attrib V49    -0.8584663409853495
#>     Attrib V5    -0.2709789870636773
#>     Attrib V50    0.702978450564958
#>     Attrib V51    0.2934643208165048
#>     Attrib V52    -0.08102374814805144
#>     Attrib V53    -0.11307105990118207
#>     Attrib V54    -0.32334950263538287
#>     Attrib V55    1.0538508709559462
#>     Attrib V56    0.8794779066539408
#>     Attrib V57    0.9387638235596307
#>     Attrib V58    0.32753153962607345
#>     Attrib V59    0.033628960960798294
#>     Attrib V6    -0.32467208541164266
#>     Attrib V60    -0.15602688515072
#>     Attrib V7    -1.1618497946545814
#>     Attrib V8    -0.26070665435622853
#>     Attrib V9    -1.6700243679980988
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.019596789355888076
#>     Attrib V1    0.267554255015933
#>     Attrib V10    -0.13351620939776374
#>     Attrib V11    -0.026299644218687218
#>     Attrib V12    0.10442376063425746
#>     Attrib V13    -0.11062082493855734
#>     Attrib V14    -0.058850937573740054
#>     Attrib V15    0.07045838482791757
#>     Attrib V16    0.08653867969472821
#>     Attrib V17    0.03176932015745917
#>     Attrib V18    0.04484320133906127
#>     Attrib V19    0.19108581582137626
#>     Attrib V2    0.09749453937542055
#>     Attrib V20    0.126753320487783
#>     Attrib V21    -0.019230870573820488
#>     Attrib V22    -0.00879747419805542
#>     Attrib V23    0.015277946907956799
#>     Attrib V24    0.3551347756082951
#>     Attrib V25    0.12912331083511674
#>     Attrib V26    -0.49263434831170677
#>     Attrib V27    -0.5090089702604041
#>     Attrib V28    -0.28660333241798425
#>     Attrib V29    -0.22520763853538428
#>     Attrib V3    -0.07196907665282844
#>     Attrib V30    -0.21784661388948934
#>     Attrib V31    -0.4734082362819258
#>     Attrib V32    0.23967723209271868
#>     Attrib V33    0.2986257247109502
#>     Attrib V34    0.015213107893961018
#>     Attrib V35    0.20480418770866737
#>     Attrib V36    -0.25910802528012644
#>     Attrib V37    -0.6717623189131058
#>     Attrib V38    -0.12336396281776961
#>     Attrib V39    -0.01839101901479535
#>     Attrib V4    -0.26046821811921944
#>     Attrib V40    -0.06557629502025403
#>     Attrib V41    -0.029503884198830935
#>     Attrib V42    0.0689389232215118
#>     Attrib V43    0.19180608465917798
#>     Attrib V44    0.026532322718856874
#>     Attrib V45    0.20215768458429584
#>     Attrib V46    0.17392484667362634
#>     Attrib V47    0.05975796820944384
#>     Attrib V48    0.1868857635103519
#>     Attrib V49    0.2966331936326801
#>     Attrib V5    -0.35745220168531044
#>     Attrib V50    -0.19650511800380388
#>     Attrib V51    -0.11908457766636373
#>     Attrib V52    0.13915236671815256
#>     Attrib V53    0.24383885928423915
#>     Attrib V54    0.3338810100374606
#>     Attrib V55    0.12467816358839004
#>     Attrib V56    0.06447616992653467
#>     Attrib V57    0.2142421863098977
#>     Attrib V58    0.19147410702388368
#>     Attrib V59    0.3175539429593637
#>     Attrib V6    -0.16685294014406682
#>     Attrib V60    0.35797217599097614
#>     Attrib V7    -0.03068322670320727
#>     Attrib V8    -0.08703313368415075
#>     Attrib V9    0.17811667103044848
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.13083461592704917
#>     Attrib V1    0.25275199840121226
#>     Attrib V10    0.045966108333743275
#>     Attrib V11    0.04112717835760253
#>     Attrib V12    0.0987354931870826
#>     Attrib V13    0.025511750620429086
#>     Attrib V14    0.01103943890017166
#>     Attrib V15    0.05713685289914592
#>     Attrib V16    0.02639166349448491
#>     Attrib V17    -0.005290460863413745
#>     Attrib V18    -0.09963926185140697
#>     Attrib V19    -0.085098132744843
#>     Attrib V2    0.13724751981213604
#>     Attrib V20    -0.10501304351948323
#>     Attrib V21    -0.11191493235093401
#>     Attrib V22    -0.16464936297442603
#>     Attrib V23    -0.0992998550129731
#>     Attrib V24    0.016966625507505714
#>     Attrib V25    0.03580204494516296
#>     Attrib V26    -0.05894863135479856
#>     Attrib V27    -0.08446457089389175
#>     Attrib V28    -0.01887941589120921
#>     Attrib V29    -0.09811275898220073
#>     Attrib V3    0.003893948694120527
#>     Attrib V30    -0.03868229942883498
#>     Attrib V31    -0.14576665641955883
#>     Attrib V32    0.040631501961322126
#>     Attrib V33    0.05849564312658316
#>     Attrib V34    -0.012165540210210598
#>     Attrib V35    0.10856523642499487
#>     Attrib V36    -0.08285502316623079
#>     Attrib V37    -0.16117178234053936
#>     Attrib V38    -0.055679845654011864
#>     Attrib V39    0.062401179956868176
#>     Attrib V4    0.00660823891180104
#>     Attrib V40    -0.0025624063394024572
#>     Attrib V41    -0.00649943521221365
#>     Attrib V42    0.05298146728547258
#>     Attrib V43    0.04007164422046079
#>     Attrib V44    0.02958156216141682
#>     Attrib V45    0.12892565721021507
#>     Attrib V46    0.10197014585035415
#>     Attrib V47    0.0014585309190290193
#>     Attrib V48    0.1476637669215196
#>     Attrib V49    0.15220805365214946
#>     Attrib V5    -0.11885505856814677
#>     Attrib V50    -0.037085792143428734
#>     Attrib V51    -0.05620759290574747
#>     Attrib V52    0.06410928134805846
#>     Attrib V53    0.173618084850184
#>     Attrib V54    0.22872747872938518
#>     Attrib V55    0.10253899918775282
#>     Attrib V56    0.12523596560720646
#>     Attrib V57    0.14884586299607996
#>     Attrib V58    0.18601795072933308
#>     Attrib V59    0.27186859323556645
#>     Attrib V6    -0.04835301165423609
#>     Attrib V60    0.250109651500872
#>     Attrib V7    -0.07206338338800247
#>     Attrib V8    -0.043727139149110965
#>     Attrib V9    0.08888467164194869
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.06310429927881553
#>     Attrib V1    0.3831527160932729
#>     Attrib V10    -0.21932402987267732
#>     Attrib V11    -0.24298436000709095
#>     Attrib V12    -0.13523812706710625
#>     Attrib V13    -0.24185986048012423
#>     Attrib V14    -0.17887865754232296
#>     Attrib V15    0.11270554230162626
#>     Attrib V16    0.21796592776632068
#>     Attrib V17    0.139461451538237
#>     Attrib V18    0.19298417009392563
#>     Attrib V19    0.4678253156939486
#>     Attrib V2    0.1147432999543651
#>     Attrib V20    0.31358917055845015
#>     Attrib V21    -0.020760680596522436
#>     Attrib V22    0.05899427540737237
#>     Attrib V23    0.19598838218901743
#>     Attrib V24    0.47892718820330016
#>     Attrib V25    -0.0717273674296726
#>     Attrib V26    -1.0648694632135076
#>     Attrib V27    -1.1284182283483444
#>     Attrib V28    -0.5823134174431405
#>     Attrib V29    -0.5219524619752424
#>     Attrib V3    -0.2461601474193313
#>     Attrib V30    -0.3299354170946279
#>     Attrib V31    -0.765313605224233
#>     Attrib V32    0.3887554232991597
#>     Attrib V33    0.5841999489727798
#>     Attrib V34    0.0743196084884592
#>     Attrib V35    0.354771823343224
#>     Attrib V36    -0.3605244669982286
#>     Attrib V37    -1.157058999368211
#>     Attrib V38    -0.13274794119747138
#>     Attrib V39    -0.14651418397673516
#>     Attrib V4    -0.4168480114641868
#>     Attrib V40    -0.20162431152773783
#>     Attrib V41    -0.16084474856227507
#>     Attrib V42    0.19696131337846642
#>     Attrib V43    0.2641597725917465
#>     Attrib V44    0.16317939223945915
#>     Attrib V45    0.21112565731635505
#>     Attrib V46    0.24096285804910172
#>     Attrib V47    0.07309153519313773
#>     Attrib V48    0.2838790886021381
#>     Attrib V49    0.4636079081580426
#>     Attrib V5    -0.678734954751581
#>     Attrib V50    -0.32243453974963854
#>     Attrib V51    -0.3046616352892422
#>     Attrib V52    0.12627440405257284
#>     Attrib V53    0.3226968352965248
#>     Attrib V54    0.5712357491011438
#>     Attrib V55    0.09561108163987234
#>     Attrib V56    0.06792417475879664
#>     Attrib V57    0.23238449010815168
#>     Attrib V58    0.3209213899355387
#>     Attrib V59    0.47927922641219417
#>     Attrib V6    -0.27873335022759055
#>     Attrib V60    0.528704604597667
#>     Attrib V7    0.14689261310468266
#>     Attrib V8    0.010978935365126133
#>     Attrib V9    0.3198781416688102
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.1227232829564559
#>     Attrib V1    0.27591351528280395
#>     Attrib V10    -0.1337718101882028
#>     Attrib V11    -0.039865917069608625
#>     Attrib V12    0.0024768350666059696
#>     Attrib V13    -0.09200654921709904
#>     Attrib V14    0.06547841136724417
#>     Attrib V15    0.12527274966952653
#>     Attrib V16    0.12403957547440358
#>     Attrib V17    -0.017156836627929863
#>     Attrib V18    0.01553870335156998
#>     Attrib V19    -0.03397792861010617
#>     Attrib V2    0.11619198081481852
#>     Attrib V20    -0.01747975370429234
#>     Attrib V21    -0.07743530466280889
#>     Attrib V22    -0.15999441242224166
#>     Attrib V23    -0.09746680205731707
#>     Attrib V24    0.044454446989027965
#>     Attrib V25    -0.07806782817849599
#>     Attrib V26    -0.26983080047818236
#>     Attrib V27    -0.2299053669931294
#>     Attrib V28    -0.07867161433563923
#>     Attrib V29    -0.07800325911250715
#>     Attrib V3    0.03328108638326427
#>     Attrib V30    -0.05227735528654458
#>     Attrib V31    -0.33303865902218444
#>     Attrib V32    0.033258617415008136
#>     Attrib V33    0.1275896549488751
#>     Attrib V34    -0.014376717642726598
#>     Attrib V35    0.09844630572590997
#>     Attrib V36    -0.05306946806263008
#>     Attrib V37    -0.2813979085033254
#>     Attrib V38    -0.05945359320650104
#>     Attrib V39    0.011473828088110068
#>     Attrib V4    -0.100957620159651
#>     Attrib V40    -0.07168407521358662
#>     Attrib V41    -0.06628395160927314
#>     Attrib V42    0.0730144511010882
#>     Attrib V43    0.037417545863054374
#>     Attrib V44    0.10083575673939776
#>     Attrib V45    0.1902246248828249
#>     Attrib V46    0.13268089704774239
#>     Attrib V47    0.017231014898663258
#>     Attrib V48    0.09217456618070614
#>     Attrib V49    0.22278302858079974
#>     Attrib V5    -0.14463105856418032
#>     Attrib V50    -0.08765329696740602
#>     Attrib V51    -0.09969505595309479
#>     Attrib V52    0.05799934275878273
#>     Attrib V53    0.20299481409535
#>     Attrib V54    0.25285464424664844
#>     Attrib V55    0.12810946460602668
#>     Attrib V56    0.09387893671309439
#>     Attrib V57    0.21403080414417194
#>     Attrib V58    0.24846366686299504
#>     Attrib V59    0.2751987493275851
#>     Attrib V6    -0.0712876445514813
#>     Attrib V60    0.2598371110418237
#>     Attrib V7    -0.018221898642087106
#>     Attrib V8    8.11370241753183E-5
#>     Attrib V9    0.11145320661082214
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
