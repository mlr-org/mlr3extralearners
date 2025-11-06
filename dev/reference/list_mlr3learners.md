# List Learners in mlr3verse

Lists all learners, properties, and associated packages in a table that
can be filtered and queried.

## Usage

``` r
list_mlr3learners(select = NULL, filter = NULL)
```

## Arguments

- select:

  [`character()`](https://rdrr.io/r/base/character.html)  
  Passed to
  [data.table::subset](https://rdatatable.gitlab.io/data.table/reference/subset.data.table.html).

- filter:

  [`list()`](https://rdrr.io/r/base/list.html)  
  Named list of conditions to filter on, names correspond to column
  names in table.
