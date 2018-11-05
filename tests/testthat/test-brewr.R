context("test-brewr")

test_that("brewr works", {
  # Test that a request is valid json, samples 21 analytics end points
  expect_true(jsonlite::validate(brewr(sample(analytics[["analytics"]], 1))))
})
