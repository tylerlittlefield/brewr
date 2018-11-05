context("test-parse_request")

test_that("parse_request works", {
  # Test that requests are parsed properly
  expect_equal(parse_request("/formula"), "https://formulae.brew.sh/api/formula.json")
  expect_equal(parse_request("/formula/sqlite"), "https://formulae.brew.sh/api/formula/sqlite.json")
  expect_equal(parse_request("/analytics/install/30d"), "https://formulae.brew.sh/api/analytics/install/30d.json")
})
