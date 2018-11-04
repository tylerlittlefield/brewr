#' Pull data from Homebrew JSON API
#' @param x Endpoints.
#' @param ... Ignored.
#' @export
brewr <- function(x, ...) {
  request <- parse_request(x)
  from_json <- jsonlite::fromJSON(request)
  print_response(from_json)
}