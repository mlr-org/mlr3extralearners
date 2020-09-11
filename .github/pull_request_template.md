**Select template and delete others as applicable.**

# New Learner

This pull request adds **Learner[Type][Name]** with the unique key **[type].[key]** from package **{[package]}**.

I have...

* [ ] Created a learner with the create_learner template or created one manually and it follows the identical layout.
* [ ] Added `.train` and `.predict` private methods
* [ ] Added `ParamSet` and if applicable `param_vals`
* [ ] Changed learner parameter defaults and clearly documented the reason for this - !!!Delete if not applicable!!!
* [ ] Added `importance` public method and completed the documentation for this - !!!Delete if not applicable!!!
* [ ] Added `oob_error` public method and completed the documentation for this - !!!Delete if not applicable!!!
* [ ] Added references and not left the tag blank - !!!Delete if not applicable!!!
* [ ] Removed all 'FIXME's

# Dependencies

I have...

* [ ] Added more than one dependency to suggests - If ticked, explain why below.
* [ ] Added no dependencies to imports.
* [ ] Added dependencies to remotes - If ticked, explain why below.

#### More than one dependency


#### Remote dependency

# Tests

I have...

* [ ] Created a testthat file and it passes locally.
* [ ] Created a paramtest file with tests for all calls in both my `.train` and `.predict` methods and it passes locally.
* [ ] Run `rcmdcheck::rcmdcheck` and there are no new NOTEs, WARNINGs, or ERRORs.

# Cleaning

I have run...

* [ ] `devtools::document(roclets = c('rd', 'collate', 'namespace'))`
* [ ] `styler::style_pkg(style = styler::mlr_style)` - If needed install with `remotes::install_github('pat-s/styler@mlr-style')`
* [ ] `usethis::use_tidy_description()`
* [ ] `lintr::lint_package()`

# Reviewer

Tick as appropriate:

* [ ] This is a regression or classification learner, I have assigned pat-s to review this.
* [ ] This is a survival or density learner, I have assigned RaphaelS1 to review this.

# Comments

-------

# Updated Learner

This pull request updates Learner[Type][Name].

## Reason for update

# Dependencies

I have...

* [ ] Added more than one dependency to suggests - If ticked, explain why below.
* [ ] Added no dependencies to imports.
* [ ] Added dependencies to remotes - If ticked, explain why below.

#### More than one dependency

#### Remote dependency

# Tests

* [ ] Learner autotest is passing locally.
* [ ] Paramtest is passing locally.
* [ ] I have run `rcmdcheck::rcmdcheck` and there are no new NOTEs, WARNINGs, or ERRORs.

# Cleaning

I have run...

* [ ] `devtools::document(roclets = c('rd', 'collate', 'namespace'))`
* [ ] `styler::style_pkg(style = styler::mlr_style)` - If needed install with `remotes::install_github('pat-s/styler@mlr-style')`
* [ ] `usethis::use_tidy_description()`
* [ ] `lintr::lint_package()`

# Reviewer

Delete as appropriate:

* [ ] This is a regression or classification learner, I have assigned pat-s to review this.
* [ ] This is a survival or density learner, I have assigned RaphaelS1 to review this.

# Comments

----

# Other

