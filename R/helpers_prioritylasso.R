#' Compute adaptive block order and penalty factors for priority lasso
adaptive_block_order = function(data, target, pv) {
  blocks = pv$blocks
  if (length(blocks) < 2L || !isTRUE(pv$adaptive.order)) {
    return(list(blocks = blocks, penalty.factors = NULL, order = seq_along(blocks)))
  }

  # Decide on the arguments for cv.glmnet()
  fit_args = list(
    y = target,
    family = pv$family,
    alpha = 0,
    standardize = pv$standardize %??% TRUE,
    nfolds = pv$nfolds %??% 10L
  )

  # extract additional arguments if they are not NULL
  if (!is.null(pv$type.measure)) {
    fit_args$type.measure = pv$type.measure
  }
  if (!is.null(pv$cox.ties)) {
    fit_args$cox.ties = pv$cox.ties
  }

  # Compute each block penalty
  penalty_factors = vapply(
    blocks,
    function(block) {
      fit = invoke(
        glmnet::cv.glmnet,
        x = data[, block, drop = FALSE],
        .args = fit_args
      )
      #browser()

      coef_mat = coef(fit, s = "lambda.min")
      # -1 to remove the intercept
      coefs = as.vector(coef_mat[-1, , drop = FALSE])
      #coefs = as.matrix(coef(fit, s = "lambda.min"))
      #coefs = coefs[rownames(coefs) != "(Intercept)", , drop = FALSE]
      macs = mean(abs(coefs))
      if (is.na(macs) || macs < 1e-8) Inf else 1 / macs
    },
    numeric(1L)
  )

  # Order by increasing importance (lower penalty means more important block)
  block_order = order(penalty_factors, na.last = TRUE, decreasing = FALSE)

  list(
    blocks = blocks[block_order],
    penalty.factors = penalty_factors[block_order],
    order = block_order
  )
}
