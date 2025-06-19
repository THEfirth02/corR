#' Impute numeric variables for analysis
#'
#' @param dta A data frame that contains numeric variables for imputation.
#'
#' @returns  The same data frame with numeric variables numeric
#'     variables imputed.
#' @export
#'
var_impute = function(dta) {
  means = dta |>
    dplyr::select(dplyr::where(~ is.numeric(.x) & any(is.na(.x)))) |>
    dplyr::mutate(dplyr::across(dplyr::everything(), ~ mean(.x, na.rm=TRUE))) |>
    dplyr::slice_head()

  dta |> tidyr::replace_na(replace = as.list(means))
}
