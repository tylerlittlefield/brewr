#' Pull data from Homebrew JSON API
#' @param x Endpoints.
#' @param ... Ignored.
#' @importFrom jsonlite fromJSON
#' @export
brewr <- function(x, ...) {
  request <- parse_request(x)
  from_json <- fromJSON(request)
  print_response(from_json)
}