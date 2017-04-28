context("We can get a list")
test_that("Basic functionality tests", {
    x <- stuff()
    expect_is(x, "character")
    y <- get_list(x[[1]])
    expect_is(y, "list")
    expect_null(get_list("foo"))
})
