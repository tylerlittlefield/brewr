#' Print the result of a GitHub API call
#'
#' @param x The result object.
#' @param ... Ignored.
#' @return The JSON result.
#'
#' @importFrom jsonlite prettify toJSON
print_response <- function(x, ...) {
  toJSON(x, pretty = TRUE, auto_unbox = TRUE)
}
