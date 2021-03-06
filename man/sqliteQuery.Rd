% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rsqlite.R
\name{sqliteQuery}
\alias{sqliteQuery}
\title{Fetch the result of a specific query from an SQLite database}
\usage{
sqliteQuery(query, file)
}
\arguments{
\item{query}{The SQL query to submit}

\item{file}{Path to the SQLite database file}
}
\value{
The result of the query as a data.frame.
}
\description{
Fetch the result of a specific query from an SQLite database
}
\examples{
# Setup ----

library(RSQLite)

database_file <- tempfile()
conn <- dbConnect(SQLite(), dbname = database_file)
dbWriteTable(conn, "mtcars", mtcars[1:5, ])
dbDisconnect(conn)

# Example ----

sqliteQuery("select * from mtcars", database_file)
}
\author{
Kevin Rue-Albrecht and Stephen Sansom
}
