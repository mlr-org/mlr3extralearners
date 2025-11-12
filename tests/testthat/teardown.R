options(old_opts)
lg = lgr::get_logger("mlr3")
lg$set_threshold(old_threshold)
unlink(list.files(tempdir(), full.names = TRUE), recursive = TRUE, force = TRUE)

mirai::daemons(0, .compute = "mlr3_encapsulation")
