test_that("FAILURE TEST: don't accept a, b, n values <= 0", {
  expect_error(beta_plot(a = 0))
  expect_error(beta_plot(b = -1))
  expect_error(beta_plot(n = -3))
})
