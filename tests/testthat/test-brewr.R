context("test-brewr")

test_that("brewr works", {
  # Test that a request is valid json
  expect_true(jsonlite::validate(brewr("/formula/sqlite")))
})
