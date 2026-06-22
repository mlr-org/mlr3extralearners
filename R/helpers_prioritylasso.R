#' @title Compute adaptive block order and penalty factors for priority lasso
#'
#' @description
#' This function determines an adaptive ordering of blocks for the priority lasso
#' algorithm by assessing each block's predictive signal. It fits a Ridge
#' (`alpha = 0`) `glmnet` model to each block individually using cross-validation,
#' and computes the **mean absolute coefficient (MAC)** at the `lambda.min`
#' value. The penalty factor for each block is set to the inverse of its MAC,
#' so that blocks with stronger signals (higher MAC) receive smaller penalty
#' factors and are placed earlier in the priority order.
#'
#' This is useful when no prior knowledge about block importance is available.
#' The function returns a modified parameter list (`pv`) with reordered `blocks`
#' and (if present) `max.coef`, along with the computed penalty factors.
#'
#' @param data A numeric matrix of features (rows = observations, columns = features).
#' @param target A vector of response values (binary for classification, numeric for
#'   regression) used as the outcome in each block-wise `cv.glmnet` fit.
#' @param pv A list of parameters passed to `prioritylasso::prioritylasso()`. It
#'   must contain at least `blocks` (a list of feature vector indices) and `family`.
#'   Other relevant elements (`standardize`, `nfolds`, `type.measure`, etc.)
#'   are extracted and forwarded to `cv.glmnet`.
#'
#' @return A list with two components:
#'  - `pv`: The modified parameter list, with `blocks` reordered by increasing
#'     penalty factor and `max.coef` (if present) reordered accordingly. The
#'     `adaptive.order` element is removed.
#'  - `penalty.factors`: A named numeric vector of penalty factors for the
#'     reordered blocks, with names taken from the block names.
#' @noRd
#' @keywords internal
adaptive_block_order = function(data, target, pv) {
  blocks = pv$blocks

  # decide on the parameters to pass to cv.glmnet
  fit.args = list(
    y = target,
    family = pv$family,
    alpha = 0, # Ridge penalty
    standardize = pv$standardize %??% TRUE,
    nfolds = pv$nfolds %??% 10L
  )

  # extract additional arguments if they are not NULL
  if (!is.null(pv$type.measure)) {
    fit.args$type.measure = pv$type.measure
  }
  if (!is.null(pv$cox.ties)) {
    fit.args$cox.ties = pv$cox.ties
  }

  penalty.factors = vapply(
    seq_along(blocks),
    function(i) {
      block = blocks[[i]]
      fit = tryCatch(
        invoke(
          glmnet::cv.glmnet,
          x = data[, block, drop = FALSE],
          .args = fit.args
        ),
        error = function(e) NULL
      )

      # If the model fitting fails, assign an infinite penalty factor to the block to ensure it is penalized the most.
      if (is.null(fit)) {
        return(Inf)
      }

      coef.mat = as.matrix(stats::coef(fit, s = "lambda.min"))
      if ("(Intercept)" %in% rownames(coef.mat)) {
        coef.mat = coef.mat[rownames(coef.mat) != "(Intercept)", , drop = FALSE]
      }

      macs = mean(abs(as.vector(coef.mat)))
      if (is.na(macs) || macs <= 1e-12) Inf else 1 / macs
    },
    numeric(1L)
  )

  # Order by increasing importance (lower penalty means more important block)
  block.order = order(penalty.factors, na.last = TRUE, decreasing = FALSE)
  pv$blocks = blocks[block.order]

  if (!is.null(pv$max.coef) && length(pv$max.coef) == length(block.order)) {
    pv$max.coef = pv$max.coef[block.order]
  }

  # we don't need to pass this to prioritylasso::prioritylasso()
  pv$adaptive.order = NULL
  pf = penalty.factors[block.order]
  names(pf) = names(pv$blocks)

  list(
    pv = pv,
    penalty.factors = pf
  )
}

#' @title Extract class names from a fitted prioritylasso model
#'
#' @description
#' Determines the class labels (in the order: negative, positive) from a
#' `prioritylasso` model object.
#' It checks the following sources in sequence:
#' 1. `glmnet.fit` slots (standard penalized fits).
#' 2. The task object as a fallback.
#'
#' @param model A fitted prioritylasso model (from `prioritylasso::prioritylasso()`).
#' @param task The mlr3 binary classification task (`TaskClassif`) used for prediction.
#' Must have `negative` and `positive` fields.
#'
#' @return A character vector of length 2, first element is the negative class, second is the positive class.
#'
#' @noRd
#' @keywords internal
get_prioritylasso_classnames = function(model, task) {
  classnames = NULL

  # Try glmnet.fit slots
  fits = model$glmnet.fit
  if (!is.null(fits) && length(fits) >= 1L) {
    for (i in seq_along(fits)) {
      if (!is.null(fits[[i]]$classnames)) {
        classnames = fits[[i]]$classnames
        break
      }
    }
  }

  # If not found, use task directly (case where 1 block has been fit, and it is
  # unpenalized, so a glm model if fit instead of glmnet)
  if (is.null(classnames) || length(classnames) != 2L) {
    classnames = c(task$negative, task$positive)
  }

  classnames
}
