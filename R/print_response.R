#' Print the result of a GitHub API call
#'
#' @param x The result object.
#' @param ... Ignored.
#' @return The JSON result.
#'
#' @importFrom jsonlite prettify toJSON fromJSON
print_response <- function(x, ...) {
    print(jsonlite::toJSON(x, pretty = TRUE, auto_unbox = TRUE))
}
