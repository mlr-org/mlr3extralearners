#' @title Regression Fuzzy Rule-based System Learner
#' @author awinterstetter
#' @name mlr_learners_regr.frbs
#'
#' @description
#' Fuzzy rule-based regression learner supporting multiple inference engines such as WM, HYFIS,
#' ANFIS, DENFIS, SBC, and several genetic fuzzy systems.
#' Calls [frbs::frbs.learn()] from \CRANpkg{frbs}.
#'
#' @templateVar id regr.frbs
#' @template learner
#'
#' @references
#' `r format_bib("riza2015frbs")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrFrbs = R6Class("LearnerRegrFrbs",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      # nolint start
      param_set = ps(
        alpha.heuristic       = p_dbl(default = 1, lower = .Machine$double.eps, tags = "train", depends = quote(method.type == "FS.HGD")),
        d                     = p_dbl(default = 2, tags = "train", depends = quote(method.type == "DENFIS")),
        Dthr                  = p_dbl(default = 0.1, lower = 0, upper = 1, tags = "train", depends = quote(method.type == "DENFIS")),
        eps.high              = p_dbl(default = 0.5, lower = .Machine$double.eps, tags = "train", depends = quote(method.type == "SBC")),
        eps.low               = p_dbl(default = 0.15, lower = .Machine$double.eps, tags = "train", depends = quote(method.type == "SBC")),
        epsilon               = p_dbl(default = 0.9, lower = 0, upper = 1, tags = "train", depends = quote(method.type == "GFS.FR.MOGUL")),
        max.gen               = p_int(default = 10L, lower = 1L, tags = "train", depends = quote(method.type %in% c("GFS.FR.MOGUL", "GFS.THRIFT", "GFS.LT.RS"))),
        max.iter              = p_int(default = 10L, lower = 1L, tags = "train", depends = quote(method.type %in% c("HYFIS", "ANFIS", "FS.HGD", "FIR.DM", "GFS.FR.MOGUL"))),
        max.tune              = p_int(default = 10L, lower = 1L, tags = "train", depends = quote(method.type == "GFS.FR.MOGUL")),
        method.type           = p_fct(default = "WM", levels = c("WM", "SBC", "HYFIS", "ANFIS", "DENFIS", "FS.HGD", "FIR.DM", "GFS.FR.MOGUL", "GFS.THRIFT", "GFS.LT.RS"), tags = "train"),
        mode.tuning           = p_fct(default = "GLOBAL", levels = c("GLOBAL", "LOCAL"), tags = "train", depends = quote(method.type == "GFS.LT.RS")),
        num.labels            = p_int(default = 7L, lower = 1L, tags = "train", depends = quote(method.type %in% c("WM", "HYFIS", "ANFIS", "FS.HGD", "FIR.DM", "GFS.LT.RS"))),
        persen_cross          = p_dbl(default = 1, lower = 0, upper = 1, tags = "train", depends = quote(method.type %in% c("GFS.FR.MOGUL", "GFS.THRIFT"))),
        persen_mutant         = p_dbl(default = 1, lower = 0, upper = 1, tags = "train", depends = quote(method.type %in% c("GFS.FR.MOGUL", "GFS.THRIFT", "GFS.LT.RS"))),
        popu.size             = p_int(default = 10L, lower = 1L, tags = "train", depends = quote(method.type %in% c("GFS.THRIFT", "GFS.LT.RS"))),
        r.a                   = p_dbl(default = 0.5, lower = .Machine$double.eps, tags = "train", depends = quote(method.type == "SBC")),
        range.data            = p_uty(default = NULL, tags = "train"),
        rule.selection        = p_lgl(default = FALSE, tags = "train", depends = quote(method.type == "GFS.LT.RS")),
        step.size             = p_dbl(default = 0.01, lower = 0, upper = 1, tags = "train", depends = quote(method.type %in% c("HYFIS", "ANFIS", "FIR.DM", "FS.HGD", "DENFIS"))),
        type.defuz            = p_fct(default = "WAM", levels = c("WAM", "FIRST.MAX", "LAST.MAX", "MEAN.MAX", "COG"), tags = "train", depends = quote(method.type %in% c("WM", "HYFIS", "GFS.THRIFT", "GFS.LT.RS"))),
        type.implication.func = p_fct(default = "ZADEH", levels = c("DIENES_RESHER", "LUKASIEWICZ", "ZADEH", "GOGUEN", "GODEL", "SHARP", "MIZUMOTO", "DUBOIS_PRADE", "MIN"), tags = "train", depends = quote(method.type %in% c("WM", "HYFIS", "ANFIS", "FS.HGD", "GFS.THRIFT", "GFS.LT.RS"))),
        type.mf               = p_fct(default = "GAUSSIAN", levels = c("TRIANGLE", "TRAPEZOID", "GAUSSIAN", "SIGMOID", "BELL"), tags = "train", depends = quote(method.type == "WM")),
        type.snorm            = p_fct(default = "MAX", levels = c("MAX", "HAMACHER", "YAGER", "PRODUCT", "BOUNDED"), tags = "train", depends = quote(method.type %in% c("WM", "HYFIS", "ANFIS", "FS.HGD", "FIR.DM", "GFS.THRIFT", "GFS.LT.RS"))),
        type.tnorm            = p_fct(default = "MIN", levels = c("MIN", "HAMACHER", "YAGER", "PRODUCT", "BOUNDED"), tags = "train", depends = quote(method.type %in% c("WM", "HYFIS", "ANFIS", "FS.HGD", "FIR.DM", "GFS.THRIFT", "GFS.LT.RS")))
      )
      # nolint end
      super$initialize(
        id = "regr.frbs",
        packages = c("mlr3extralearners", "frbs"),
        feature_types = c("integer", "numeric"),
        predict_types = "response",
        param_set = param_set,
        man = "mlr3extralearners::mlr_learners_regr.frbs",
        label = "Fuzzy Rule-based System"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pv = self$param_set$get_values(tags = "train")
      # frbs needs the target in the last column
      data_train = as.matrix(task$data(cols = c(task$feature_names, task$target_names) ))

      # remove null arguments to keep defaults
      args = discard(list(
        data.train = data_train,
        method.type = pv$method.type,
        range.data = pv$range.data,
        control = pv[names(pv) %nin% c("method.type", "range.data")]
      ), is.null)

      invoke(frbs::frbs.learn, .args = args)
    },

    .predict = function(task) {
      newdata = as.matrix(ordered_features(task, self), drop = FALSE)
      pred = mlr3misc::invoke(predict, object = self$model, newdata = newdata)

      if (is.matrix(pred) || is.data.frame(pred)) {
        pred = pred[, 1L]
      }

      list(response = pred)
    }
  )
)

.extralrns_dict$add("regr.frbs", LearnerRegrFrbs)
