#' Generate Waves
#'
#' This function generates a generative art ggplot object
#' from sine and cosine waves.
#'
#' @param a sine wave parameter. Default 23.
#' @param b Cosine wave parameter. Default 6.
#' @param s Seed value. Default 2021.
#' @return A ggplot object.
#' @export


generate_waves <- function(a = 23,
                  b = 6,
                  s = 2021) {
  set.seed(s)
  x <- seq(0, 50 * pi, 0.01)
  y <- sample(1:8, size = 1) * sin(a * x) + sample(1:8, size = 1) * cos(b * x)
  df <- data.frame(x = x,
                   y = y)
  df <- tibble::as_tibble(df)
  return(df)
}
