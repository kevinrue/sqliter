% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rsqlite.R
\name{sqliteReadTable}
\alias{sqliteReadTable}
\title{Fetch a full table from an SQLite database}
\usage{
sqliteReadTable(table, file)
}
\arguments{
\item{table}{Name of the database table to fetch.}

\item{file}{Path to the SQLite database file}
}
\value{
The table as a data.frame.
}
\description{
Fetch a full table from an SQLite database
}
\examples{
# Setup ----

library(RSQLite)

database_file <- tempfile()
conn <- dbConnect(SQLite(), dbname = database_file)
dbWriteTable(conn, "mtcars", mtcars[1:5, ])
dbWriteTable(conn, "USArrests", USArrests[1:5, ])
dbDisconnect(conn)

# Example ----

sqliteReadTable("mtcars", database_file)
}
