#' @title Classification Conditional Inference Tree Learner
#' @author sumny
#' @name mlr_learners_classif.ctree
#'
#' @description
#' Classification Partition Tree where a significance test is used to determine the univariate
#' splits. Calls [partykit::ctree()] from \CRANpkg{partykit}.
#'
#'
#' @template learner
#' @templateVar id classif.ctree
#'
#' @references
#' `r format_bib("hothorn_2015", "hothorn_2006")`
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerClassifCTree = R6Class("LearnerClassifCTree",
  inherit = LearnerClassif,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        teststat = p_fct(default = "quadratic",
          levels = c("quadratic", "maximum"), tags = "train"),
        splitstat = p_fct(default = "quadratic",
          levels = c("quadratic", "maximum"), tags = "train"),
        splittest = p_lgl(default = FALSE, tags = "train"),
        testtype = p_fct(default = "Bonferroni",
          levels = c("Bonferroni", "MonteCarlo", "Univariate", "Teststatistic"),
          tags = "train"),
        nmax = p_uty(tags = "train"),
        alpha = p_dbl(default = 0.05, lower = 0, upper = 1,
          tags = "train"),
        mincriterion = p_dbl(default = 0.95, lower = 0, upper = 1,
          tags = "train"),
        logmincriterion = p_dbl(tags = "train"),
        minsplit = p_int(lower = 1L, default = 20L, tags = "train"),
        minbucket = p_int(lower = 1L, default = 7L, tags = "train"),
        minprob = p_dbl(default = 0.01, lower = 0, upper = 1, tags = "train"),
        stump = p_lgl(default = FALSE, tags = "train"),
        lookahead = p_lgl(default = FALSE, tags = "train"),
        MIA = p_lgl(default = FALSE, tags = "train"),
        nresample = p_int(default = 9999L, lower = 1L, tags = "train"),
        tol = p_dbl(lower = 0, tags = "train"),
        maxsurrogate = p_int(default = 0L, lower = 0L, tags = "train"),
        numsurrogate = p_lgl(default = FALSE, tags = "train"),
        mtry = p_int(lower = 0L, special_vals = list(Inf),
          default = Inf, tags = "train"),
        maxdepth = p_int(default = Inf, lower = 0L,
          special_vals = list(Inf), tags = "train"),
        multiway = p_lgl(default = FALSE, tags = "train"),
        splittry = p_int(default = 2L, lower = 0L, tags = "train"),
        intersplit = p_lgl(default = FALSE, tags = "train"),
        majority = p_lgl(default = FALSE, tags = "train"),
        caseweights = p_lgl(default = FALSE, tags = "train"),
        maxvar = p_int(lower = 1L, tags = "train"),
        applyfun = p_uty(tags = "train"),
        cores = p_int(special_vals = list(NULL), default = NULL,
          tags = c("train", "threads")),
        saveinfo = p_lgl(default = TRUE, tags = "train"),
        update = p_lgl(default = FALSE, tags = "train"),
        splitflavour = p_fct(default = "ctree", # goes into control
          levels = c("ctree", "exhaustive"), tags = "train"),
        offset = p_uty(tags = "train"),
        cluster = p_uty(tags = "train"),
        scores = p_uty(tags = "train"),
        doFit = p_lgl(default = TRUE, tags = "train"),
        maxpts = p_int(default = 25000L, tags = "train"),
        abseps = p_dbl(default = 0.001, lower = 0, tags = "train"),
        releps = p_dbl(default = 0, lower = 0, tags = "train")
      )
      ps$add_dep("nresample", "testtype", CondEqual$new("MonteCarlo"))

      super$initialize(
        id = "classif.ctree",
        packages = c("mlr3extralearners", "partykit", "sandwich", "coin"),
        feature_types = c("integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("weights", "twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.ctree",
        label = "Conditional Inference Tree"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      pars_pargs = pars[names(pars) %in% formalArgs(mvtnorm::GenzBretz)]
      pars = pars[names(pars) %nin% formalArgs(mvtnorm::GenzBretz)]

      if ("weights" %in% task$properties) {
        pars$weights = task$weights$weight
      }

      pars$pargs = invoke(mvtnorm::GenzBretz, pars_pargs)

      invoke(partykit::ctree, formula = task$formula(),
        data = task$data(), .args = pars)
    },

    .predict = function(task) {
      newdata = ordered_features(task, self)
      pars = self$param_set$get_values(tags = "predict")

      prediction = invoke(predict, self$model, newdata = newdata, type = self$predict_type,
        .args = pars
      )

      if (self$predict_type == "response") {
        return(list(response = unname(prediction)))
      }
      return(list(prob = prediction))
    }
  )
)

.extralrns_dict$add("classif.ctree", LearnerClassifCTree)
