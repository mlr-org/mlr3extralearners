#' @title Fine-Gray Competing Risks Regression Learner
#'
#' @name mlr_learners_cmprsk.crr
#'
#' @description
#' A learner for Fine-Gray competing risks regression to estimate cumulative incidence functions (CIFs)
#' for multiple mutually exclusive events. Calls [cmprsk::crr()] from \CRANpkg{cmprsk} package for training and [cmprsk::predict.crr()]
#' for prediction. Supports fixed and time-varying covariates.
#'
#' @template learner
#' @templateVar id cmprsk.crr
#'
#'
#' @section Parameters:
#'
#' * `maxiter`: `integer(1)` Maximum number of iterations for convergence.
#' * `gtol`: `numeric(1)` Convergence tolerance for gradient
#' * `na.action`: `function` a function specifying the action to take for any cases missing (for details, see [cmprsk::crr()] documentation).
#' * `variance` : `logical` If `FALSE`, then suppresses computation of the variance estimate, residuals, and prevents from calculating predictions.
#' * `subset`: `logical` this argument is not supported by this learner. Use `task$filter()` method instead.
#
#' @section Custom mlr3 parameters:
#'
#' 1. `cov2_info`: `list()` Optional list with configuration for time-varying covariates, enabling the learner to
#' model covariate effects that change over time (by default is `NULL`, i.e no time-varying features).
#'
#' This list must contain:
#'   * `feat2`: `character()` A character vector of feature names from the task's feature set that are
#'     treated as time-varying.
#'   * `tf`: `function(uft)` A user-defined function specifying how the features in `feat2` vary
#'     over time. It takes one argument: `uft` (a numeric vector of unique
#'     failure times from the training data). The function's behavior is
#'     described in the [cmprsk::crr()] documentation and must return a matrix with:
#'     - Number of rows equal to `length(uft)` (matching the number of unique failure times).\cr
#'     - Number of columns equal to the number of columns in the `cov2` matrix (derived using features specified in
#'       `feat2` vector via binding columnwise `model.matrix` for every feature), where each column corresponds to a
#'       time-varying effect for each column in `cov2` matrix.
#'
#'     Example: `function(uft) log(uft)` applies a logarithmic transformation
#'     to the time points.
#'   * `feat2only`: `character()` or `NULL` 
#'     An optional vector of feature names that are used solely to build the
#'     time-varying covariate `cov2` matrix and are excluded from the fixed
#'     covariate matrix (`cov1`). Must be a subset of `feat2`. If `NULL`
#'     (default), all features in the task contribute to `cov1`, and `feat2` is used
#'     to define `cov2` matrix.
#'
#' 2. `init_list`: List with initial regression parameters per cause (default: `NULL` for zeros).
#' 3. `cengroup_name`: Column name extracted from `task$backend` defining groups with different
#'     censoring distributions (by default is `NULL`).
#'
#' @references
#' `r format_bib("finegray1999crr")`
#'
#' @template seealso_learner
#' @examplesIf learner_is_runnable("cmprsk.crr")
#' library(mlr3)
#' library(mlr3proba)
#'
#' # Define a task
#' task = tsk("pbc")
#' task$select(c("age", "bili", "sex"))
#' task$set_col_roles(cols = "status", add_to = "stratum")
#'
#' # Create train and test sets
#' set.seed(123)
#' ids = partition(task, ratio =0.95)

#'
#' # Define the learner
#' learner = lrn("cmprsk.crr")
#' learner
#'
#' # Train the learner
#' learner$train(task, row_ids = ids$train)
#'
#' # Print model
#' learner$model
#'
#' # Make predictions
#'   predictions = learner$predict(task, ids$test)
#'   predictions
#'
#' # Score the predictions
#'   predictions$score()
#' @export
LearnerCompRisksFineGrayCRR = R6::R6Class("LearnerCompRisksFineGrayCRR",
  inherit = mlr3proba::LearnerCompRisks,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        maxiter = p_int(lower = 1L, upper = 1000L, default = 10L, tags = "train"),
        gtol = p_dbl(lower = 1e-9, upper = 1e-3, default = 1e-6, tags = "train"),
        variance = p_lgl(default = TRUE, tags = "train"),
        na.action = p_uty(default = stats::na.omit, tags = "train"),
        cov2_info = p_uty(default = NULL, tags = c("train", "predict")),
        init_list = p_uty(default = NULL, tags = "train"),
        cengroup_name = p_uty(default = NULL, tags = "train")
      )

      super$initialize(
        id = "cmprsk.crr",
        predict_types = "cif",
        feature_types = c("logical", "integer", "numeric", "factor"),
        packages = c("mlr3extralearners", "cmprsk"),
        param_set = param_set,
        properties = character(0),
        man = "mlr3extralearners::mlr_learners_cmprsk.crr",
        label = "Competing Risks Regression: Fine-Gray model"
      )
    }
   ),  # end of public list
  
  private = list(
  
.cmtx_fun = function(data, cx) {
        #  @description
        #  Creates design matrix (wout intercept) for selected feature
        #  @param `data` data frame 
        #  @param `cx` string with the name of selected feature 
        #  @return  model matrix (wout intercept) for selected feature.
        cff = paste0("~", cx)
        ff = as.formula(cff)
        m = stats::model.matrix(ff, data = data)[, -1]
        if (is.vector(m, mode = "numeric")) {
          m = matrix(m, ncol = 1)
          xvar = data[[cx]]
          cxname = cx
          if (is.factor(xvar)) cxname = paste0(cx, ".", colnames(stats::contrasts(xvar)))
          if (is.logical(xvar)) cxname = paste0(cx, ".T")
          colnames(m) = cxname
        }
        m
      },
    
      .create_cov = function(data, feat) {
        # @description
        # Combines by columns matrices generated by `.cmtx_fun`
        # @param `data`data frame 
        # @param `feat` character vector with the names of selected feature 
        # @return  design matrix obtained by combining matrices generated by `private$.cmtx_fun`.
      
        logger = lgr::get_logger("mlr3")
        func = "[cmprsk.crr] private$.create_cov "
        logger$debug("%s STARTS. ", func)
        res = NULL
        assertDataFrame(data, min.rows = 1, min.cols = 1)
        assertCharacter(feat, any.missing = FALSE)
        assertSubset(unique(feat), colnames(data))

        if (length(feat)) {
          cmtx_list = lapply(feat, function(cx) private$.cmtx_fun(data, cx))
          # Bind matrices by columns
          res = do.call(cbind, cmtx_list)
        }
        logger$debug("%s ENDS. ", func)
        res
      },

      .check_cov2_info = function(cov2_info, feature_names) {
        # @description
        # Checks validity of `cov2_info` parameter
        # @param `cov2_info` learner parameter
        # @param `feature_names` feature names extracted from the task
        # @return logical TRUE or FALSE. Indicates whether errors were detected.
      
        logger = lgr::get_logger("mlr3")
        func = "[cmprsk:crr] private$.check_cov2_info"
        
        # Auxiliary function
        chk_err = function(chk) {
        if (is.character(chk)) {
          err = sprintf("%s %s", func, chk)
          logger$error(err)
          stop(err)
        }
        return()
        }

        # Check if cov2_info is NULL (valid for fixed covariates)
        if (is.null(cov2_info)) {
          return(TRUE)
        }
        
        # Additional checks go here
        if (!typeof(cov2_info) == "list") {
          logger$error("%s cov2_info is not a list", func)
          stop("ERROR: cov2_info is not a list")
        }

        t2 = c("feat2", "tf")
        nms = names(cov2_info)
        tt = intersect(t2, nms)
        if (!identical(tt, t2)) {
          err = sprintf("%s cov2_info should contain at least two components: feat2, and tf", func)
          logger$error(err)
          stop(err)
        }
      
        chk = check_subset(unique(cov2_info$feat2), feature_names, empty.ok = FALSE)
        chk_err(chk)
 
        chk = check_function(cov2_info$tf, nargs = 1)
        chk_err(chk)
      
        chk = check_subset(unique(cov2_info$cov2only), unique(cov2_info$feat2), empty.ok = TRUE)
        chk_err(chk) 
        return(TRUE)
      },

      .create_xcov = function(task, cov2_info) {
        # @description
        # Creates a named list with `cov1` and `covv2` matrices used by `cmprsk::crr` and `cmprsk::predict.crr` functions
        # @param `task` task 
        # @param `cov2_info` learner custom parameter
        # @return named list with two components: `cov1` and `cov2`
        logger = lgr::get_logger("mlr3")
        func = "[cmprsk.crr] private$.create_xcov: "
        logger$debug("%s STARTS", func)

        # Get data and feature names
        data = task$data()
        feature_names = task$feature_names
        uft = task$unique_event_times()

        # Check `cov2_info` validity
        check_cov2_info = private$.check_cov2_info(cov2_info, feature_names)
        if (!check_cov2_info) {
          err = sprintf("%s Invalid cov2_info parameter", func)
          logger$error(err)
          stop(err)
        }

        # Determine feat1 and feat2
        if (!is.null(cov2_info)) {
          feat2 = cov2_info$feat2
          cov2only = cov2_info$cov2only
          feat1 = setdiff(unique(c(feature_names, feat2)), unique(cov2only))
        } else {
          feat1 = feature_names
          feat2 = NULL
        }

      # Create cov1 and cov2 matrices
      xcov_list = vector("list", length = 2)
      names(xcov_list) = c("cov1", "cov2")

      xcov_list$cov1 = if (!is.null(feat1)) private$.create_cov(data, feat1) else NULL
      xcov_list$cov2 = if (!is.null(feat2)) private$.create_cov(data, feat2) else NULL
      logger$debug("%s ENDS", func)

      return(xcov_list)
    },
       
     .coalesce = function(lhs, rhs) {
       if (!missing(lhs) && !is.null(lhs)) {
         lhs
       } else {
         rhs
       }
     },
   
   
     .train = function(task) {
       logger = lgr::get_logger("mlr3")
       func = "[cmprsk.crr] private$.train: "

       logger$debug("%s STARTS", func)
       # Parameter Extraction

       pv = self$param_set$get_values(tags = "train")
       pv$variance = private$.coalesce(pv$variance, TRUE) 
       pv$na.action = private$.coalesce(pv$na.action, stats::na.omit) 
  
       target_names = task$target_names
       target_df = task$data(cols = target_names)
       args0 = list(
         ftime = target_df[[1]],
      	 fstatus = target_df[[2]],
      	 cencode = 0L,
      	 na.action = pv$na.action,
      	 maxiter = private$.coalesce(pv$maxiter, 10L),
      	 gtol = private$.coalesce(pv$gtol, 1e-6),
      	 variance = pv$variance
       )
      
       args1 = list()
       cov2_info = pv$cov2_info

       # Create list with cov1 and cov2 matrices
 
       xcov_list = private$.create_xcov(task, cov2_info)
       cov1 = xcov_list$cov1
       
       if (!is.null(cov1)) args1$cov1 = cov1
      
       cov2 = xcov_list$cov2
       if (!is.null(cov2)) args1$cov2 = cov2

       tf = cov2_info$tf
       if (!is.null(tf)) args1$tf = tf

       if (!is.null(pv$cengroup_name)) {
         logger$debug("%s cengroup_name name in backend data is %s", func, pv$cengroup_name)
         cengroup = task$backend$data(rows = task$row_ids, cols = pv$cengroup_name)[[1]]
       } else {
         cengroup = NULL
       }
      
       if (!is.null(cengroup)) args1$cengroup = cengroup

       # subset  = NULL # argument  not supported ignored (use task$filter() method instead)
 
       .args = append(args0, args1)
       unique_events = task$unique_events()
     
       model_list = lapply(seq_along(unique_events), function(i){
         uei = unique_events[i]
         logger$debug("%s Training for cause = %s", func, uei)
         init = if (!is.null(pv$init_list)) pv$init_list[[uei]] else NULL
         .argsi = list(failcode = uei)
         if (!is.null(init)) .argsi$init = init
       
         .argsi = append(.args, .argsi)
         #fit = rlang::exec(cmprsk::crr, !!!.argsi)
         fit = mlr3misc::invoke(cmprsk::crr, .args = .argsi)
         fit
      })
       
       names(model_list) = unique_events
        logger$debug("%s Training completed, model has %d components", func, length(model_list))
       return(model_list)
    },
   
    .expand_cif = function(cif, uft, uftime) {
      #Expands CIF matrix rowwise using time failures in the training for all causes as a template
      # Input validation
      if (!is.matrix(cif)) stop("cif must be a matrix")
      if (!is.vector(uft) || !is.vector(uftime)) stop("uft and uftime must be vectors")
      if (ncol(cif) != length(uft)) stop("Number of columns in cif must match length of uft")
      if (!all(uft %in% uftime)) stop("All elements of uft must be in uftime")
      
      # Initialize output matrix with `nrow(cif)` rows and `length(uftime)` columns
      expanded_cif = matrix(NA, nrow = nrow(cif), ncol = length(uftime))
      
      # Match uft positions in uftime
      uft_indices = match(uft, uftime)
      
      # Fill the expanded matrix using LOCF
      for (i in 1:nrow(cif)) {
        # Get CIF values for the subject
        cif_row = cif[i, ]
        
        # Fill known values at uft time points
        expanded_cif[i, uft_indices] = cif_row
        
        # Apply LOCF for remaining time points
        for (j in 2:length(uftime)) {
          if (is.na(expanded_cif[i, j])) {
            expanded_cif[i, j] = expanded_cif[i, j-1]
          }
        }
        
        # Fill initial NAs (before first uft time point) with 0
        if (any(is.na(expanded_cif[i, ]))) {
          first_non_na = min(which(!is.na(expanded_cif[i, ])))
          expanded_cif[i, 1:(first_non_na-1)] = 0 
        }
      }  
      return(expanded_cif)
    },
    
    .predict = function(task) {
      logger = lgr::get_logger("mlr3")
      func = "[cmprsk.crr] predict$.predict "
      logger$debug("%s Starts ", func)
      pv = self$param_set$get_values(tags = "predict")
      cmp_events = task$cmp_events
      cov2_info = pv$cov2_info
      .args = list()
      
      xcov_list = private$.create_xcov(task, cov2_info)
      
      cov1 = xcov_list$cov1
      if (!is.null(cov1)) .args$cov1 = cov1

      cov2 = xcov_list$cov2
      if (!is.null(cov2)) .args$cov2 = cov2
      
      model_list =   self$model 
      uftimes_list = lapply(seq_along(cmp_events), function(cmp_event) model_list[[cmp_event]]$uftime)    
      uftimes =  sort(unique(unlist(uftimes_list)))
      
      cif_list = lapply(
        seq_along(cmp_events), function(cmp_event) {
          logger$debug("%s -- cmp_event/cause = %d", func, cmp_event)
          fit = model_list[[cmp_event]]
   
          obj = list(object = fit)
          uft = fit$uftime
          .argsi = append(obj, .args)
          # pred = mlr3misc::invoke(cmprsk::predict.crr, .argsi) # During prediction throws an error in cmprsk::predict.crr(.argsi): predict requires variance=TRUE in crr
          pred = rlang::exec(cmprsk::predict.crr, object = fit, !!!.args) #  Throws the same error, but later than mlr3misc::invoke. Speciically during resampling
          cif = t(pred[, -1])
          cif_expanded = private$.expand_cif(cif, uft, uftimes)
          colnames(cif_expanded) = as.character(uftimes)
          cif_expanded
        }
      )
      names(cif_list) = cmp_events       
      return(list(cif = cif_list))
    }
  ) # end of private list
) # end Rclass definition

.extralrns_dict$add("cmprsk.crr", LearnerCompRisksFineGrayCRR)
