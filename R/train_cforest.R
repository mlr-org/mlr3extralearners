train_cforest = function(self, task) {
  # explanation for the argument assignment
  # the cforest function has control = ctree_control(teststat = "quad", ...)
  # as default argument, if we simply pass all arguments to ... (including teststat),
  # ctree_control gets potentially multiple arguments for teststat which leads to an error.
  # Because of that the ... have to be manually passed via ctree_control.
  # However the control-args "mtry", "applyfun" and "cores" are explicitly mentioned as
  # arguments of cforest and can therefore not be set
  pars = self$param_set$get_values(tags = "train")
  pars = convert_ratio(pars, "mtry", "mtryratio", length(task$feature_names))
  pars_control = pars[which(names(pars) %in%
    setdiff(formalArgs(partykit::ctree_control),
      c("mtry", "applyfun", "cores")
    ))] # see ctree_control
  pars = pars[names(pars) %nin%
    c("replace", "fraction", names(pars_control))]
  control = invoke(partykit::ctree_control, .args = pars_control)
  perturb = list(
    replace = self$param_set$values$replace %??% FALSE,
    fraction = self$param_set$values$fraction %??% 0.632
  )

  invoke(partykit::cforest,
    formula = task$formula(),
    data = task$data(),
    weights = task$weights$weight, # weights are handled here
    # FIXME: strata handling
    control = control,
    perturb = perturb,
    .args = pars
  )

}
