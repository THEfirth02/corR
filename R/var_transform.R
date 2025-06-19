#' Common transformations of numeric variables for analysis.
#'
#' @param dta A data frame that contains numeric variables for transformation.
#'
#' @returns  The same data frame with additional transformations for each
#'           numeric variables.
#' @export
#'
#' @examples
#' iris_new = var_transform(iris)
var_transform = function(dta) {
    dplyr::mutate(dta,
      dplyr::across(
        dplyr::where(is.numeric),
                    list(
                    sq= ~(.x)^2,
                    ln= ~log(.x),
                    inv= ~1/(.x)
                  )
    ))
}
