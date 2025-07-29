#' @title Train RWeka learner
#'
#' @description
#' Given tasks's data and formula, parameters, weka learner and optional nested parameters,
#' preprocess mlr3 parameters to RWeka format and call train.
#'
#' @param data ([data.table::data.table()])
#' @param formula ([stats::formula])
#' @param pars (named `list()`)
#' @param weka_learner (`R_Weka_classifier_interface`)
#' @param nested_pars (named `list()`)
#'   Parameters with dependencies, e.g., `SMO`'s `L_poly` can only be set when `K` is PolyKernel.
#'   Nested params is a named list where names are parent params (e.g., `K`) and values are suffix
#'   appended to RWeka's actual param name like 'poly' from `L_poly`.
#'   For example, list(K = "_poly").
#'
#' @return (named `list()`) with RWeka model.
#' @noRd
rweka_train = function(data, formula, pars, weka_learner, nested_pars = NULL) {
  ctrl_arg_names = weka_control_args(weka_learner)
  arg_names = setdiff(names(pars), ctrl_arg_names)
  ctrl = pars[which(names(pars) %in% ctrl_arg_names)]
  pars_extra = pars[which(names(pars) %nin% ctrl_arg_names)]

  # reformat nested pars to RWeka style
  for (par in names(nested_pars)) {
    suffix = nested_pars[[par]]
    ind = grepl(suffix, arg_names)
    if (any(ind)) {
      arg_names_extra = arg_names[ind]
      ctrl[[par]] = c(list(ctrl[[par]]), pars_extra[which(names(pars_extra) %in% arg_names_extra)])
      names(ctrl[[par]]) = c("", gsub(suffix, replacement = "", x = arg_names_extra))
    }
  }
  # add I or F params to control if there is weight param in IBk
  if (grepl("IBk", capture.output(weka_learner)[1])) {
    if (length(pars_extra) > 0 && grepl("weight", names(pars_extra))) {
      ctrl[[pars$weight]] = TRUE
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

#' @export
marshal_model.Weka_classifier = function(model, inplace = FALSE, ...) {
  rJava::.jcache(model$classifier)
  structure(list( marshaled = model, packages = c("mlr3", "mlr3extralearners")),
    class = c("Weka_classifier_marshaled", "marshaled")
  )
}

#' @export
unmarshal_model.Weka_classifier_marshaled = function(model, inplace = FALSE, ...) {
  model$marshaled
}
