% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/binom-scaling.R
\name{snp_MAF}
\alias{snp_MAF}
\title{MAF}
\usage{
snp_MAF(G, ind.row = rows_along(G), ind.col = cols_along(G),
  nploidy = getOption("bigsnpr.nploidy"))
}
\arguments{
\item{G}{A \link[=FBM.code256-class]{FBM.code256}
(typically \code{<bigSNP>$genotypes}).\cr
\strong{You shouldn't have missing values in your data or SNPs with 0 MAF.}}

\item{ind.row}{An optional vector of the row indices (individuals) that
are used. If not specified, all rows are used.\cr
\strong{Don't use negative indices.}}

\item{ind.col}{An optional vector of the column indices (SNPs) that are used.
If not specified, all columns are used.\cr
\strong{Don't use negative indices.}}

\item{nploidy}{Number of trials, parameter of the binomial distribution.
Default is \code{2}, which corresponds to diploidy, such as for the human genome.}
}
\value{
A vector of MAFs, corresponding to \code{ind.col}.
}
\description{
Minor Allele Frequency.
}
\examples{
obj.bigsnp <- snp_attachExtdata()
str(maf <- snp_MAF(obj.bigsnp$genotypes))

}
