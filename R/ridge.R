#' Solve Ridge Regression
#' 
#' This function solves ridge regression.
#' 
#' @param x a matrix of predictors
#' @param y a vector of responses
#' @param lambda a scalar representing the penalty parameter
#' 
#' @details Note that this function assumes that the X is standardized.
#' 
#' @export
solve_ridge <- function(x, y, lambda) {
 
    betahat <- solve(crossprod(x) + lambda * diag(ncol(x))) %*% crossprod(x, y)
    return(betahat)

}
