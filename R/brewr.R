#' Pull data from Homebrew JSON API
#' @param x Endpoint.
#' @param ... Ignored.
#' @importFrom jsonlite fromJSON
#' @importFrom glue glue
#' @export
brewr <- function(x, ...) {
  # If user doesn't give leading slash, warn and resolve it for them
  if(!startsWith(x, "/")) {
    x <- glue("/", x)
    w_message <- glue("Please include leading slash next time, i.e. {x}")
    warning(w_message, call. = FALSE)
  }
  
  # Else, parse the request, convert to JSON and print response
  request <- parse_request(x)
  response <- fromJSON(request)
  print_json(response)
}