% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/windows.R
\name{GetSubsetOfWindows}
\alias{GetSubsetOfWindows}
\title{Select only windows where a specified column matches a specified value}
\usage{
GetSubsetOfWindows(
  list.of.windows,
  name.of.column.to.look.at.in.window,
  value.to.match.to
)
}
\arguments{
\item{list.of.windows}{A list of windows (dataframes) and each window can only have a single unique value for the name.of.column.to.look.at.in.window column.}

\item{name.of.column.to.look.at.in.window}{String that specifies which column to look at.}

\item{value.to.match.to}{String that specifies what value to look for in name.of.column.to.look.at.in.window.}
}
\value{
List containing only selected windows (windows that have value.to.match.to value in the name.of.column.to.look.at.in.window column).
}
\description{
Looks at all the windows (dataframes) in a list of homogeneous windows. And
only selects the windows where the column value contains a specified value.
}
\details{
Takes a List of windows (dataframes) where each window is a homogeneous window,
which means in each window, there is only one unique value in the specified
column. This function looks through the homogeneous windows in the List, selects
the windows that have a specified column value in the specified column, then
puts these windows into a new List and outputs the new List of windows.
}
\examples{

#Example using a dataframe with 3 windows.

#Windows 20 and 30 are homogeneous if looking at col.two and col.three values.
window.name.column <- c(10, 10, 10, 20, 20, 20, 30, 30, 30, 30)
col.two <- c("a", "a", "a", "a", "a", "a", "a", "a", "a", "a")
col.three <- c(1, 1, 0, 1, 1, 1, 2, 2, 2, 2)

multi.window.data <- data.frame(window.name.column, col.two, col.three)

list.of.homogeneous.windows <- GetHomogeneousWindows(multi.window.data,
"window.name.column", c("col.two", "col.three"))

#Get a subset of windows where col.three has a value of 2
subset.list.of.homogeneous.windows <- GetSubsetOfWindows(list.of.homogeneous.windows,
"col.three", "2")

str(subset.list.of.homogeneous.windows)

subset.list.of.homogeneous.windows[[1]]

}
