% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/normalise.R
\name{n_dist2targ}
\alias{n_dist2targ}
\title{Normalise as distance to target}
\usage{
n_dist2targ(x, targ, direction = 1, cap_max = FALSE)
}
\arguments{
\item{x}{A numeric vector}

\item{targ}{An target value}

\item{direction}{Either 1 (default) or -1. In the former case, the indicator is assumed to be "positive" so that the target is at the higher
end of the range. In the latter, the indicator is "negative" so that the target is typically at the low end of the range.}

\item{cap_max}{If \code{TRUE}, any value of \code{x} that exceeds \code{targ} will be assigned a score of 1, otherwise
will have a score greater than 1.}
}
\value{
Numeric vector
}
\description{
A measure of the distance of each value of \code{x} to a specified target which can be a high or low target depending on \code{direction}. See details below.
}
\details{
If \code{direction = 1}, the formula is:

\deqn{ \frac{x - x_{min}}{x_{targ} - x_{min}} }

else if \code{direction = -1}:

\deqn{ \frac{x_{max} - x}{x_{max} - x_{targ}} }

Values surpassing \code{x_targ} in either case can be optionally capped at 1 if \code{cap_max = TRUE}.
}
\examples{
x <- runif(20)
n_dist2targ(x, 0.8, cap_max = TRUE)

}
