#' Optionally match an expression.
#'
#' @details This function is slighly different than \code{start_of_line()}
#' because it has the additional argument \code{.data} which allows the user to
#' pass a value to to it. This is meant to allow \code{dplyr} chains to
#' function properly as \code{.data} defaults to \code{NULL} and will pull
#' the data from the previous step in the chain.
#'
#' @param .data Expression to append, typically pulled from the pipe \code{ \%>\% }
#' @param value Expression to optionally match
#'
#' @examples
#' maybe(value = "abc")
#'
#' # create expression
#' x <- start_of_line() %>%
#'   maybe("abc") %>%
#'   end_of_line(enable = FALSE)
#'
#' grepl(x, "xyz") # should be true
#' @export
maybe <- function(.data = NULL, value) {
  paste0(.data, "(?:", sanitize(value), ")?")
}