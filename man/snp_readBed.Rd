% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/readplink.R
\name{snp_readBed}
\alias{snp_readBed}
\title{Read PLINK files into a "bigSNP"}
\usage{
snp_readBed(bedfile, backingfile = sub("\\\\.bed$", "", bedfile))
}
\arguments{
\item{bedfile}{Path to file with extension ".bed" to read.
You need the corresponding ".bim" and ".fam" in the same directory.}

\item{backingfile}{The path (without extension) for the backing files
for the cache of the \link[=bigSNP-class]{bigSNP} object. Default takes the bedfile
without the ".bed" extension.}
}
\value{
The path to the RDS file that stores the \code{bigSNP} object.
Note that this function creates one other file which stores the values of
the Filebacked Big Matrix.\cr
\strong{You shouldn't read from PLINK files more than once.} Instead, use
\link{snp_attach} to load the "bigSNP" object in any R session from backing files.
}
\description{
Function to read bed/bim/fam files into a \link[=bigSNP-class]{bigSNP}.
}
\details{
For more information on these formats, please visit
\href{https://www.cog-genomics.org/plink/1.9/formats#bed}{PLINK webpage}.
For other formats, please use PLINK to convert them in bedfiles,
which require minimal space to store and are faster to read. For example,
to convert from a VCF file, use the \code{--vcf} option. See \link{snp_plinkQC}.
}
\examples{
(bedfile <- system.file("extdata", "example.bed", package = "bigsnpr"))

# Reading the bedfile and storing the data in temporary directory
rds <- snp_readBed(bedfile, backingfile = tempfile())

# Loading the data from backing files
test <- snp_attach(rds)

str(test)
dim(G <- test$genotypes)
G[1:8, 1:8]
}
