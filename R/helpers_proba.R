setcollapse = function(x) {
  paste0("{", paste0(x, collapse = ", "), "}")
}

keras_optimizers = c("adadelta", "adagrad", "adamax", "adam", "nadam", "rmsprop", "sgd")

#' @title Get Keras Optimizer
#' @description Utility function to construct optimiser from \CRANpkg{keras}, primarily for
#' internal use.
#' @param optimizer `(character(1))` \cr Optimizer to construct, see details for those available.
#' Default is `"adam"`.
#' @param lr `(numeric(1))` \cr Passed to all optimizers except `adadelta` and `adagrad`.
#' @param beta_1,beta_2,epsilon `(numeric(1))` \cr Passed to `adamax`, `adam`, and `nadam`.
#' @param decay `(numeric(1))` \cr Passed to `adamax`, `adam`, and `sgd`.
#' @param clipnorm,clipvalue `(numeric(1))` \cr Passed to `adamax`, `adam`, `nadam`, and `sgd`.
#' @param schedule_decay `(numeric(1))` \cr Passed to `nadam`.
#' @param momentum `(numeric(1))` \cr Passed to `sgd`.
#' @param nesterov `(logical(1))` \cr Passed to `sgd`.
#' @details Implemented optimizers are
#'
#' * `"adadelta"` \cr [keras::optimizer_adadelta]
#' * `"adagrad"` \cr [keras::optimizer_adagrad]
#' * `"adamax"` \cr [keras::optimizer_adamax]
#' * `"adam"` \cr [keras::optimizer_adam]
#' * `"nadam"` \cr [keras::optimizer_nadam]
#' * `"rmsprop"` \cr [keras::optimizer_rmsprop]
#' * `"sgd"` \cr [keras::optimizer_sgd]
#'
#' @export
get_keras_optimizer = function(optimizer = "adam", lr = 0.02, beta_1 = 0.9, beta_2 = 0.999,
  epsilon = NULL, decay = 0, clipnorm = NULL, clipvalue = NULL,
  schedule_decay = 0.004, momentum = 0, nesterov = FALSE) {
  switch(optimizer,
    adadelta = keras::optimizer_adadelta(),
    adagrad = keras::optimizer_adagrad(),
    adamax = keras::optimizer_adamax(lr, beta_1, beta_2, epsilon, decay, clipnorm, clipvalue),
    adam = keras::optimizer_adam(lr, beta_1, beta_2, epsilon, decay, clipnorm, clipvalue),
    nadam = keras::optimizer_nadam(
      lr, beta_1, beta_2, epsilon, schedule_decay, clipnorm,
      clipvalue),
    rmsprop = keras::optimizer_rmsprop(lr),
    sgd = keras::optimizer_sgd(lr, momentum, decay, nesterov, clipnorm, clipvalue)
  )
}

#' @title Build a Keras Multilayer Perceptron
#' @description Utility function to build a Keras MLP.
#' @details This function is a helper for R users with less Python experience. Currently it is
#' limited to simple MLPs and with identical layers.
#' More advanced networks will require manual creation with \CRANpkg{keras}.
#' @param n_in `(integer(1))`\cr Number of input features.
#' @param n_out `(integer(1))`\cr Number of targets.
#' @param nodes `(numeric())`\cr Hidden nodes in network, each element in vector represents number
#' of hidden nodes in respective layer.
#' @param layer_pars `(list())`\cr Arguments passed to [keras::layer_dense].
#' @param activation `(character(1))`\cr Activation function passed to [keras::layer_activation].
#' Default is linear.
#' @param act_pars `(list())`\cr Parameters for activation function, see
#' [keras::layer_activation].
#' @param dropout `(numeric(1))`\cr Optional dropout layer, if `NULL` then no dropout layer added
#' otherwise either same dropout will be added to all layers.
#' @param batch_norm `(logical(1))`\cr If `TRUE` (default) then batch normalisation is applied
#' to all layers.
#' @param batch_pars `(list())`\cr Parameters for batch normalisation, see
#' [keras::layer_batch_normalization].
#'
#' @examples
#' build_keras_net(10, 1)
#'
#' build_keras_net(n_in = 10, n_out = 1, nodes = c(4, 4, 4), activation = "elu")
#' @export
build_keras_net = function(n_in, n_out, nodes = c(32, 32), layer_pars = list(),
                           activation = "linear", act_pars = list(),
                           dropout = 0.1, batch_norm = TRUE,
                           batch_pars = list()) {

  add_module = function(net, num_in, num_out) {
    mlr3misc::invoke(
      keras::layer_dense,
      object = net,
      units = num_out,
      input_shape = num_in,
      .args = layer_pars
    )

    mlr3misc::invoke(
      keras::layer_activation,
      object = net,
      activation = activation,
      .args = act_pars
    )

    if (batch_norm) {
      mlr3misc::invoke(
        keras::layer_batch_normalization,
        object = net,
        .args = batch_pars
      )
    }

    if (!is.null(dropout)) {
      keras::layer_dropout(net, dropout)
    }
  }

  net = keras::keras_model_sequential()

  # input layer
  add_module(net, n_in, nodes[1])

  # hidden layers
  for (i in seq_along(nodes)) {
    if (i < length(nodes)) {
      add_module(net, nodes[i], nodes[i + 1])
    } else {
      # output layer
      add_module(net, nodes[i], n_out)
    }
  }

  return(net)
}

#' @title Install Keras and Tensorflow
#' @description Stripped back version of [keras::install_keras].
#' @param method,conda,version,tensorflow,extra_packages,... See [keras::install_keras].
#' @export
install_keras = function(method = "auto", conda = "auto", pip = FALSE,
                          install_tensorflow = FALSE) {
  pkg = "keras"
  if (install_tensorflow) {
    pkg = c("tensorflow", pkg)
  }
  reticulate::py_install(pkg, method = method, conda = conda, pip = pip)
}

# Code originally from https://github.com/lilizhaoUM/DNNSurv with minor edits.
# t - Survival time
# d - Censoring indicator
# qt - Vector of time points for dividing time interval
# Returns subject ids, time-points, and pseudo conditional probabilities
get_pseudo_conditional = function(t, d, qt) {

  s = c(0, qt)
  n = length(t)
  ns = length(s) - 1 # the number of intervals
  D = do.call(cbind, lapply(seq_len(ns), function(j) (s[j] < t) * (t <= s[j + 1]) * (d == 1)))
  R = do.call(cbind, lapply(seq_len(ns), function(j) ifelse(s[j] < t, 1, 0)))
  Delta = do.call(cbind, lapply(seq_len(ns), function(j) pmin(t, s[j + 1]) - s[j]))

  # long format
  dd_tmp = cbind.data.frame(id = rep(seq_len(n), ns),
                            s = rep(c(0, qt[-length(qt)]), each = n),
                            y = c(R * Delta),
                            d = c(D))

  dd = dd_tmp[dd_tmp$y > 0, ]
  pseudost = rep(NA, nrow(dd))
  for (j in seq_len(ns)) {
    index = (dd$s == s[j])
    dds = dd[index, ]
    if (all(dds$d) || !any(dds$d)) {
      pseudost[index] = sum(index)
    } else {
      pseudost[index] = pseudo::pseudosurv(time = dds$y, event = dds$d,
                                           tmax = s[j + 1] - s[j])$pseudo
    }
  }
  dd$pseudost = pseudost

  return(dd[, c(1, 2, 5)])
}
