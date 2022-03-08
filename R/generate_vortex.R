#' Generate Vortex
#'
#' This function generates data for the vortex art series
#'
#' @param n Number of points. Default 25.
#' @param s Seed value. Default 1234.
#' @return A tibble.
#' @export

generate_vortex <- function(n = 25,
                   s = 1234) {
  set.seed(s)
  # generate data
  m <- n * 10
  df1 <- tibble::tibble(id = seq(1, m),
                        value = sample(seq(0, m), m, replace = TRUE),
                        type = factor(rep(c(1:10), each = (m / 10))))
  return(df1)
}
