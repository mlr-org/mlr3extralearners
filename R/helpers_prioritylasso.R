# This function computes an adaptive block order based on the importance of each
# block as determined by fitting a glmnet model to each block separately.
# The importance is measured by the mean absolute coefficient (MAC) of the fitted
# model for each block, and the penalty factor is set to be inversely proportional
# to this importance. Blocks with higher importance (lower penalty factor) will be
# ordered first in the priority lasso model.
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
