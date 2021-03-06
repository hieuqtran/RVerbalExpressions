% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/anything_but.R
\name{anything_but}
\alias{anything_but}
\title{Match any character(s) except these any (including zero) number of times.}
\usage{
anything_but(.data = NULL, value)
}
\arguments{
\item{.data}{Expression to append, typically pulled from the pipe \code{ \%>\% }}

\item{value}{Characters to not match}
}
\description{
This expression will match everything except whatever characters
the user specifies in the \code{value} parameter. It does this by adding a
caret symbol \code{^} at the beginning of a character set \code{[]}. Typing
a caret after the opening square bracket negates the character class. The
result is that the character class matches any character that is not in the
character class. Unlike the dot, negated character classes also match
(invisible) line break characters. If you don't want a negated character
class to match line breaks, you need to include the line break characters in
the class.
}
\examples{
anything_but(value = "abc")

}
\references{
Character Class: \url{https://www.regular-expressions.info/charclass.html}
}
