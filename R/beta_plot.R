#' Draw values from a beta distribution and plot the probability density
#' function
#'
#' @param n number of observations to draw
#' @param a non-negative alpha parameter of the beta distribution
#' @param b non-negative beta parameter of the beta distribution
#'
#' @details The Beta distribution with parameters \eqn{a} and \eqn{b} has
#' density:
#'
#' \deqn{
#'     \Gamma(a+b)/(\Gamma(a)\Gamma(b))x^(a-1)(1-x)^(b-1)
#' }
#'
#' for \eqn{a > 0}, \eqn{b > 0} and \eqn{0 \le x \le 1}.
#'
#' @seealso \code{\link{rbeta}}, \code{\link{geom_density}}
#'
#' @import ggplot2
#' @export

beta_plot <- function(n = 10000, a = 1, b = 3) {
  # draw distributions
  sims <- rbeta(n = n, shape1 = a, shape2 = b)

  # convert to data frame for ggplot2 compatability
  sims <- data.frame(x = sims)

  # plot probability density function
  ggplot(sims, aes(x)) +
    geom_density() +
    xlab("") + ylab("Probability Density Function") +
    theme_bw()
}
