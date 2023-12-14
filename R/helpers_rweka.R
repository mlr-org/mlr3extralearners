rweka_train = function(data, formula, pars, weka_learner, nested_pars = NULL) {
  ctrl_arg_names = weka_control_args(weka_learner)
  arg_names = setdiff(names(pars), ctrl_arg_names)
  ctrl = pars[which(names(pars) %in% ctrl_arg_names)]
  pars = pars[which(names(pars) %nin% ctrl_arg_names)]
  for (par in names(nested_pars)) {
    suffix = nested_pars[[par]]
    if (any(grepl(suffix, arg_names))) {
      arg_names_extra = arg_names[grepl(suffix, arg_names)]
      ctrl[[par]] = c(ctrl[[par]], pars[which(names(pars) %in% arg_names_extra)])
      names(ctrl[[par]]) = c("", gsub(suffix, replacement = "", x = arg_names_extra))
    }
  }
  if (length(ctrl) > 0L) {
    names(ctrl) = gsub("_", replacement = "-", x = names(ctrl))
    ctrl = invoke(RWeka::Weka_control, .args = ctrl)
  }

  invoke(weka_learner, formula = formula, data = data, control = ctrl)
}

rweka_predict = function(newdata, pars, predict_type, model) {
  retval = list()
  if (predict_type == "response") {
    p = invoke(predict, model, newdata = newdata, .args = pars)
  } else {
    p = invoke(predict, model, newdata = newdata, type = "prob", .args = pars)
  }
  retval[[predict_type]] = p
  return(retval)
}
