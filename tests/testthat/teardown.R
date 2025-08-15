lg = lgr::get_logger("mlr3")
lg$set_threshold(old_threshold)

mirai::daemons(0, .compute = "mlr3_encapsulation")
