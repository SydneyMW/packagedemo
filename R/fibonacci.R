#' Return a list of the first n numbers of the Fibonacci sequence.
#'
#' @param n The number of Fibonacci numbers to return.
#' @param first The first number in the sequence.
#' @param second The second number in the sequence.
#' @return A list of the first n numbers of the Fibonacci sequence.
#' @examples
#' fibonacci(10)
#' fibonacci(10, 0, 0)
#' fibonacci(10, 1, 2)

fibonacci <- function(n, first=0, second=1) {
  if (n == 1) return (first)
  if (n == 2) return (c(first, second))
  result <- c(first, second)
  for (i in 3:n) {
    next_term <- first + second
    result <- c(result, next_term)
    first <- second
    second <- next_term
  }
  return (result)
}

# Run in the console
# library(roxygen2); # Read in the roxygen2 R package
# roxygenise();      # Builds the help files
