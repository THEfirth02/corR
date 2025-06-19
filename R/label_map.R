#' Extract labels from a dataset and place them into a data frame.
#'
#' @param dta A data frame. The label attributes, if they exist, will be extracted into a data frame.
#'
#' @returns A data frame with 2 columns, the variable name and its label, if it exists.
#'  Missing labels are filled with the variable name.
#' @export
#'
label_map = function(dta) {

    old_label = dta |> labelled::var_label(unlist=T, null_action="fill")
    return(data.frame("col_name" = names(old_label), "label"= old_label))

}
