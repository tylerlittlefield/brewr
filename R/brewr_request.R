# Main API URL
default_api_url <- "https://formulae.brew.sh/api"

# Parse API URL
parse_request <- function(x, ...) {
  glue::glue(default_api_url, x, ".json")
}
