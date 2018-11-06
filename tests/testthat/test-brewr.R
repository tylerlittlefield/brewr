context("test-brewr")

test_that("brewr works", {
  # Test that a request is valid json, samples 21 analytics end points
  expect_true(jsonlite::validate(brewr(sample(analytics[["analytics"]], 1))))
  # Test that leading slash warning appears
  expect_warning(brewr("formula/sqlite"))
})
