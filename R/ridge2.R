#' Solve Ridge Regression 2
#' 
#' This function solves ridge regression using glmnet.
#' 
#' @param x a matrix of predictors
#' @param y a vector of responses
#' @param lambda a scalar representing the penalty parameter
#' 
#' @export
#' @importFrom glmnet glmnet
solve_ridge_2 <- function(x, y, lambda) {
    res <- glmnet::glmnet(x = x, y = y, alpha=0, lambda = lambda)
    res$beta
}