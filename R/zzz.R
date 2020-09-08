## usethis namespace: start
#' @importFrom Rcpp sourceCpp
#' @useDynLib mlr3extralearners, .registration = TRUE
## usethis namespace: end
NULL

#' @import data.table
#' @import paradox
#' @import mlr3misc
#' @import survival
#' @importFrom R6 R6Class
#' @importFrom mlr3 mlr_learners LearnerClassif LearnerRegr PredictionClassif PredictionRegr
#' @importFrom mlr3proba LearnerSurv LearnerDens PredictionSurv PredictionDens
"_PACKAGE"

register_learners = function() {
  mlr3::mlr_learners$add("classif.AdaBoostM1", LearnerClassifAdaBoostM1)
  mlr3::mlr_learners$add("classif.C50", LearnerClassifC50)
  mlr3::mlr_learners$add("classif.IBk", LearnerClassifIBk)
  mlr3::mlr_learners$add("classif.J48", LearnerClassifJ48)
  mlr3::mlr_learners$add("classif.JRip", LearnerClassifJRip)
  mlr3::mlr_learners$add("classif.LMT", LearnerClassifLMT)
  mlr3::mlr_learners$add("classif.OneR", LearnerClassifOneR)
  mlr3::mlr_learners$add("classif.PART", LearnerClassifPART)
  mlr3::mlr_learners$add("classif.cforest", LearnerClassifCForest)
  mlr3::mlr_learners$add("classif.ctree", LearnerClassifCTree)
  mlr3::mlr_learners$add("classif.extratrees", LearnerClassifExtraTrees)
  mlr3::mlr_learners$add("classif.fnn", LearnerClassifFNN)
  mlr3::mlr_learners$add("classif.gamboost", LearnerClassifGAMBoost)
  mlr3::mlr_learners$add("classif.gbm", LearnerClassifGBM)
  mlr3::mlr_learners$add("classif.glmboost", LearnerClassifGLMBoost)
  mlr3::mlr_learners$add("classif.ksvm", LearnerClassifKSVM)
  mlr3::mlr_learners$add("classif.liblinearl1l2svc", LearnerClassifLiblineaRL1L2SVC)
  mlr3::mlr_learners$add("classif.liblinearl1logreg", LearnerClassifLiblineaRL1LogReg)
  mlr3::mlr_learners$add("classif.liblinearl2l1svc", LearnerClassifLiblineaRL2L1SVC)
  mlr3::mlr_learners$add("classif.liblinearl2l2svc", LearnerClassifLiblineaRL2L2SVC)
  mlr3::mlr_learners$add("classif.liblinearl2logreg", LearnerClassifLiblineaRL2LogReg)
  mlr3::mlr_learners$add("classif.liblinearmulticlasssvc", LearnerClassifLiblineaRMultiClassSVC)
  mlr3::mlr_learners$add("classif.mob", LearnerClassifMob)
  mlr3::mlr_learners$add("classif.randomForest", LearnerClassifRandomForest)
  mlr3::mlr_learners$add("classif.rfsrc", LearnerClassifRandomForestSRC)
  mlr3::mlr_learners$add("dens.kde_kd", LearnerDensKDEkd)
  mlr3::mlr_learners$add("dens.kde_ks", LearnerDensKDEks)
  mlr3::mlr_learners$add("dens.locfit", LearnerDensLocfit)
  mlr3::mlr_learners$add("dens.logspline", LearnerDensLogspline)
  mlr3::mlr_learners$add("dens.mixed", LearnerDensMixed)
  mlr3::mlr_learners$add("dens.nonpar", LearnerDensNonparametric)
  mlr3::mlr_learners$add("dens.pen", LearnerDensPenalized)
  mlr3::mlr_learners$add("dens.plug", LearnerDensPlugin)
  mlr3::mlr_learners$add("dens.spline", LearnerDensSpline)
  mlr3::mlr_learners$add("regr.IBk", LearnerRegrIBk)
  mlr3::mlr_learners$add("regr.M5Rules", LearnerRegrM5Rules)
  mlr3::mlr_learners$add("regr.cforest", LearnerRegrCForest)
  mlr3::mlr_learners$add("regr.ctree", LearnerRegrCTree)
  mlr3::mlr_learners$add("regr.extratrees", LearnerRegrExtraTrees)
  mlr3::mlr_learners$add("regr.fnn", LearnerRegrFNN)
  mlr3::mlr_learners$add("regr.gamboost", LearnerRegrGAMBoost)
  mlr3::mlr_learners$add("regr.gbm", LearnerRegrGBM)
  mlr3::mlr_learners$add("regr.glmboost", LearnerRegrGLMBoost)
  mlr3::mlr_learners$add("regr.ksvm", LearnerRegrKSVM)
  mlr3::mlr_learners$add("regr.liblinearl2l1svr", LearnerRegrLiblineaRL2L1SVR)
  mlr3::mlr_learners$add("regr.liblinearl2l2svr", LearnerRegrLiblineaRL2L2SVR)
  mlr3::mlr_learners$add("regr.mob", LearnerRegrMob)
  mlr3::mlr_learners$add("regr.randomForest", LearnerRegrRandomForest)
  mlr3::mlr_learners$add("regr.rfsrc", LearnerRegrRandomForestSRC)
  mlr3::mlr_learners$add("surv.akritas", LearnerSurvAkritas)
  mlr3::mlr_learners$add("surv.blackboost", LearnerSurvBlackBoost)
  mlr3::mlr_learners$add("surv.cforest", LearnerSurvCForest)
  mlr3::mlr_learners$add("surv.coxboost", LearnerSurvCoxboost)
  mlr3::mlr_learners$add("surv.coxtime", LearnerSurvCoxtime)
  mlr3::mlr_learners$add("surv.ctree", LearnerSurvCTree)
  mlr3::mlr_learners$add("surv.cv_coxboost", LearnerSurvCVCoxboost)
  mlr3::mlr_learners$add("surv.deephit", LearnerSurvDeephit)
  mlr3::mlr_learners$add("surv.deepsurv", LearnerSurvDeepsurv)
  mlr3::mlr_learners$add("surv.dnn", LearnerSurvDNNSurv)
  mlr3::mlr_learners$add("surv.flexible", LearnerSurvFlexible)
  mlr3::mlr_learners$add("surv.gamboost", LearnerSurvGAMBoost)
  mlr3::mlr_learners$add("surv.gbm", LearnerSurvGBM)
  mlr3::mlr_learners$add("surv.glmboost", LearnerSurvGLMBoost)
  mlr3::mlr_learners$add("surv.loghaz", LearnerSurvLogisticHazard)
  mlr3::mlr_learners$add("surv.mboost", LearnerSurvMBoost)
  mlr3::mlr_learners$add("surv.nelson", LearnerSurvNelson)
  mlr3::mlr_learners$add("surv.obliqueRSF", LearnerSurvObliqueRSF)
  mlr3::mlr_learners$add("surv.obliqueRSF", LearnerSurvObliqueRSF)
  mlr3::mlr_learners$add("surv.parametric", LearnerSurvParametric)
  mlr3::mlr_learners$add("surv.pchazard", LearnerSurvPCHazard)
  mlr3::mlr_learners$add("surv.penalized", LearnerSurvPenalized)
  mlr3::mlr_learners$add("surv.rfsrc", LearnerSurvRandomForestSRC)
  mlr3::mlr_learners$add("surv.svm", LearnerSurvSVM)
}

utils::globalVariables(c("name", "id", "mlr3_package", "required_package"))
.onLoad = function(libname, pkgname) { # nolint
  register_learners()
  setHook(packageEvent("mlr3", "onLoad"), function(...) register_learners(),
    action = "append")
}

.onUnload = function(libpath) { # nolint
  event = packageEvent("mlr3", "onLoad")
  hooks = getHook(event)
  pkgname = vapply(hooks, function(x) environment(x)$pkgname, NA_character_)
  setHook(event, hooks[pkgname != "mlr3extralearners"],
    action = "replace")
}
# nocov end
