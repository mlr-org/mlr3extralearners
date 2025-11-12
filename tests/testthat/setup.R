old_opts = options(
  # avoid 'RGL: unable to open X11 display' warning for `classif.adabag` learner
  rgl.useNULL = TRUE
)

old_opts = lapply(old_opts, function(x) if (is.null(x)) FALSE else x)

lg = lgr::get_logger("mlr3")
old_threshold = lg$threshold
lg$set_threshold("warn")

mirai::daemons(0, .compute = "mlr3_encapsulation")
mirai::daemons(1, .compute = "mlr3_encapsulation")
