#' @title Fine-Gray Competing Risks Model with Cox Proportional Hazards
#' @description
#' A learner for fitting a Fine-Gray competing risks model using Cox proportional hazards.
#' Estimates subdistribution hazard for a specified event type with competing events, supporting weights.
#' @section Usage:
#' ```
#' learner <- LearnerSurvFineGrayCoxPH$new()
#' ```
#' @section Parameters:
#' - `ties`: Character, method for handling ties ("efron" (default), "breslow", "exact").
#' - `iter.max`: Integer, max iterations for Cox fit (default: 20, range: 1-1000).
#' - `eps`: Numeric, convergence threshold (default: 1e-9, range: 1e-12 to 1e-4).
#' - `robust`: Logical, compute robust variance (default: FALSE).
#' - `target_event`: Event type to model (default: second level if NULL).
#' - `singular.ok`: Logical, allow singular predictors (default: TRUE).
#' @section Predict Types:
#' - `crank`: Continuous ranking (linear predictor).
#' - `lp`: Linear predictor.
#' - `distr`: Survival probabilities (matrix with times as colnames).
#' @section Properties:
#' - Supports observation weights via the task's weights role (set via `weights` argument or `$set_col_roles()`).
#' @return For `predict()`, a list with `crank` (numeric), `lp` (numeric), and `distr`
#' (matrix of survival probabilities with times as colnames).
#' @section Methods:
#' - `new()`: Alias for `initialize()`, creates a new instance of the learner with default parameters.
#' - `train(task)`: Train the model on a survival task.
#' - `predict(task)`: Predict on new data from a trained model.
#' @importFrom R6 R6Class
#' @importFrom mlr3proba LearnerSurv TaskSurv
#' @importFrom paradox ps p_fct p_int p_dbl p_lgl p_uty
#' @importFrom survival finegray coxph basehaz coxph.control
#' @export
LearnerSurvFineGrayCoxPH <- R6::R6Class("LearnerSurvFineGrayCoxPH",
  inherit = mlr3proba::LearnerSurv,
  public = list(
    #' @method initialize LearnerSurvFineGrayCoxPH
    #' @description
    #' Initialize a new Fine-Gray Cox PH learner with its default hyperparameter settings.
    #' No arguments are required; hyperparameters are defined and set via the `paradox` parameter set.
    initialize = function() {
      ps <- paradox::ps(
        ties = p_fct(default = "efron", levels = c("efron", "breslow", "exact"), tags = "train"),
        iter.max = p_int(default = 20L, lower = 1L, upper = 1000L, tags = "train"),
        eps = p_dbl(default = 1e-9, lower = 1e-12, upper = 1e-4, tags = "train"),
        robust = p_lgl(default = FALSE, tags = "train"),
        target_event = p_uty(default = NULL, tags = "train",
                             custom_check = function(x) {
                              if (is.null(x)) return(TRUE)
                              if (is.character(x) || is.numeric(x)) return(TRUE)
                              "target_event must be NULL, a character, or a numeric index"
                            }),
        singular.ok = p_lgl(default = TRUE, tags = "train")
      )
      ps$values <- list(
        ties = "efron",
        iter.max = 20L,
        eps = 1e-9,
        robust = FALSE,
        target_event = NULL,
        singular.ok = TRUE
      )
      super$initialize(
        id = "surv.finegray_coxph",
        param_set = ps,
        feature_types = c("logical", "integer", "numeric", "factor"),
        predict_types = c("crank", "lp", "distr"),
        properties = "weights",
        packages = "survival",
        label = "Fine-Gray Competing Risks Model with CoxPH",
        man = "mlr3SurvUtils::LearnerSurvFineGrayCoxPH"
      )
    }
  ),
  private = list(
    basehaz = NULL,
    .train = function(task) {
      #print("ParamSet in self:")
      #print(self$param_set)  # Check if param_set exists
      pv <- self$param_set$get_values(tags = "train")
      #print("pv contents:")
      #print(pv)  # Debug: Check what pv contains
      if (is.null(pv$iter.max) || !is.integer(pv$iter.max) || pv$iter.max < 1) {
        stop("Invalid iter.max: ", pv$iter.max)
      }
      row_ids <- task$row_ids
      full_data <- as.data.frame(task$backend$data(rows = row_ids,
                                                   cols = c(task$target_names, task$feature_names)))
      features <- task$feature_names
      if (length(features) == 0) stop("No features provided!")
      time_col <- task$target_names[1]
      event_col <- task$target_names[2]
      event_levels <- task$levels()[[event_col]]
      full_data$id <- seq_len(nrow(full_data))
      weights <- NULL
      if ("weights" %in% task$properties) {
        weights_data <- task$weights
        if (is.null(weights_data) || !"weight" %in% names(weights_data)) {
          stop("No weights defined in task")
        }
        all_weights <- weights_data$weight
        all_row_ids <- weights_data$row_id
        weight_map <- setNames(all_weights, all_row_ids)
        weights <- weight_map[as.character(row_ids)]
        if (any(is.na(weights))) stop("Missing weights for some row_ids")
      }
      form <- as.formula(paste("Surv(", time_col, ",", event_col, ") ~",
                               paste(c(features, "id"), collapse = " + ")))
      if (length(event_levels) < 3) {
        stop("Event status must have at least 3 levels (censored, main event, competing risk)")
      }
      target_event <- if (is.null(pv$target_event)) {
        event_levels[2]
        } else {
          if (is.numeric(pv$target_event)){
            event_levels[pv$target_event]
        } else {
          pv$target_event
        }
      }
      if (!target_event %in% event_levels) stop("target_event not in event levels")
      fg_data <- survival::finegray(form, data = full_data, etype = target_event, weights = weights)
      if ("weights" %in% task$properties) {
        matched_indices <- match(fg_data$id, as.integer(names(weight_map)))
        fg_data$fgwt <- weights[matched_indices]
      }
      cox_formula <- as.formula(paste("Surv(fgstart, fgstop, fgstatus) ~",
                                      paste(features, collapse = " + ")))
      model <- survival::coxph(
        cox_formula, data = fg_data, weights = fg_data$fgwt,
        control = coxph.control(eps = pv$eps, iter.max = pv$iter.max),
        robust = pv$robust, singular.ok = pv$singular.ok, ties = pv$ties
      )
      basehaz <- survival::basehaz(model, centered = FALSE)
      private$basehaz <- list(time = basehaz$time, cumhaz = basehaz$hazard)
      model
    },
    .predict = function(task) {
      newdata <- as.data.frame(task$data(rows = task$row_ids, cols = task$feature_names))
      lp <- predict(self$model, newdata = newdata, type = "lp")
      cumhaz <- private$basehaz$cumhaz
      time_order <- order(private$basehaz$time)
      surv <- exp(-outer(exp(lp), cumhaz, "*"))
      surv <- surv[, time_order, drop = FALSE]
      colnames(surv) <- private$basehaz$time[time_order]
      list(crank = lp, lp = lp, distr = surv)
    }
  )
)

