# clearly this should be a Dictionary but there's a weird bug that leads to objects
# being handled wrong and not cloned properly when loaded from dictionary in `lrn`
.extralrns_dict = R6Class(".extralrns_dict",
  public = list(
    lrns = list(),
    add = function(key, learn) {
      assert_string(key)
      assert_class(learn, "R6ClassGenerator")
      if (key %in% names(self$lrns)) {
        stopf("Learner id '%s' is already registered.", key)
      }
      classnames = map_chr(self$lrns, "classname")
      if (learn$classname %in% classnames) {
        stopf("Learner class '%s' is already registered with id '%s'.",
          learn$classname, names(classnames)[classnames == learn$classname])
      }
      lst = list(key = learn)
      names(lst) = key
      self$lrns = insert_named(self$lrns, lst)
    }
  )
)$new()
