test_that("ridge works for lambda=0", {
    set.seed(124)
    x <- matrix(rnorm(30), ncol=3, nrow=10)
    y = 2*x[,1]+1.5*x[,3]
    
    res <- solve_ridge(x, y, lambda=0)
    res2 <- solve_ridge_2(x, y, lambda=0)
    
    # first function
    expect_equal(round(res[1,1], 3), 2)
    expect_equal(round(res[2,1], 3), 0)
    expect_equal(round(res[3,1], 3), 1.5)
    
    # second function
    expect_equal(round(res2[1,1], 3), 2)
    expect_equal(round(res2[2,1], 3), 0)
    expect_equal(round(res2[3,1], 3), 1.5)
    
})

test_that("the two functions lead to the same results", {
    ## fails!
})