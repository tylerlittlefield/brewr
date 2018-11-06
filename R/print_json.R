print_json <- function(x, ...) {
  jsonlite::toJSON(x, pretty = TRUE, auto_unbox = TRUE)
}
