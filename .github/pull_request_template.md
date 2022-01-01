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

## Dependencies

I have...

* [ ] Added more than one dependency to suggests - If ticked, explain why below.
* [ ] Added no dependencies to imports.
* [ ] Added dependencies to remotes - If ticked, explain why below.

#### More than one dependency


#### Remote dependency

## Tests

I have...

* [ ] Created a testthat file and it passes locally.
* [ ] Created a paramtest file with tests for all calls in both my `.train` and `.predict` methods and it passes locally.

## Cleaning

I have run...

* [ ] `devtools::document(roclets = c('rd', 'collate', 'namespace'))`
* [ ] `lintr::lint_package()`

And

* [ ] Updated NEWS.md

## Maintenance and Contributions

This PR will only be merged if the following is filled in and ticked:

* [ ] <github_name> agrees to maintain this learner going forward and agrees that this learner will be removed from `mlr3extralearners` if: i) the build remains broken for more than one month with no effort to fix it; or ii) is broken for more than three months.

The maintainer of the learner can be changed at any time by editing the '@author' tag and creating a pull request.

Finally make sure you get credit and add yourself to the DESCRIPTION file (optionally add a note to say which learner(s) you implemented):

* [ ] I have added myself (and anyone else who contributed) to the end of the "Authors" field in the DESCRIPTION file with role "ctb"

## Comments

-------

# Updated Learner

This pull request updates Learner[Type][Name].

### Reason for update

## Dependencies

I have...

* [ ] Added more than one dependency to suggests - If ticked, explain why below.
* [ ] Added no dependencies to imports.
* [ ] Added dependencies to remotes - If ticked, explain why below.

#### More than one dependency

#### Remote dependency

## Tests

* [ ] Learner autotest is passing locally.
* [ ] Paramtest is passing locally.
* [ ] I have run `rcmdcheck::rcmdcheck` and there are no new NOTEs, WARNINGs, or ERRORs.

## Cleaning

I have run...

* [ ] `devtools::document(roclets = c('rd', 'collate', 'namespace'))`

If you've also made changes other than a small patch (i.e. changes that could affect code style) then please also confirm:

I have run...

* [ ] `styler.mlr::style_pkg()` - If needed install with `remotes::install_github('mlr-org/styler.mlr')`
* [ ] `lintr::lint_package()`

And

* [ ] Updated NEWS.md
* [ ] Updated the package version (For patches (bug fixing, small added feature): add 1 to the 3rd number. For minor updates (new learner, new features): add 1 to the 2nd number).

## Comments

----

# Other

