% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R, R/nmfExperiment-class_lite.R,
%   R/integrativeNMF-class.R, R/joinNMF-class.R
\docType{methods}
\name{HMatrix}
\alias{HMatrix}
\alias{HMatrix,nmfExperiment_lite-method}
\alias{HMatrix,ANY-method}
\alias{HMatrix,integrative_NMF-method}
\alias{HMatrix,join_NMF-method}
\title{H-Matrix (H-Matrix with smallest frobError)}
\usage{
HMatrix(x, k = NULL, ...)

\S4method{HMatrix}{nmfExperiment_lite}(x, k = NULL, ...)

\S4method{HMatrix}{integrative_NMF}(x, k = NULL, view_id = NULL, type,
  ...)

\S4method{HMatrix}{join_NMF}(x, k = NULL, ...)
}
\arguments{
\item{x}{an R object of type nmfExperiment, nmfExperiment_lite, join_NMF or
integrative_NMF.}

\item{k}{numeric - factorization rank.}

\item{view_id}{for integrative NMF; character vector with views
from which to extract H matrices}

\item{type}{for integrative NMF; type of H matrix to extract, could be:
\itemize{
\item shared - shared H matrix
\item viewspec - view specific H matrix
\item total - sum of shared H matrix and view specific H matrix.
\item all - shared H matrix and view specific H matrices.
}}
}
\value{
list of H-Matrices or an H-Matrix for the indicaded rank.
}
\description{
Return a list of H-Matrices or an H-Matrix for the indicaded rank
}
\examples{
HMatrix(nmf_exp)
HMatrix(nmf_exp, k = 2)
HMatrix(nmf_exp)
HMatrix(nmf_exp, k = 2)
# For integrative_NMF objects:
# extract H matrices for all factorization ranks
HMatrix(inmf_exp, type = "shared")
HMatrix(inmf_exp, type = "viewspec")
HMatrix(inmf_exp, type = "total")
HMatrix(inmf_exp, type = "all")
# extract H matrices only for selected rank
HMatrix(inmf_exp, k = 2, type = "shared")
HMatrix(inmf_exp, k = 2, type = "viewspec")
HMatrix(inmf_exp, k = 2, type = "total")
HMatrix(inmf_exp, k = 2, type = "all")
# extract H matrices only for selected view and rank
HMatrix(inmf_exp, k = 2, view_id = "atac", type = "viewspec")
HMatrix(inmf_exp, k = 2, view_id = "atac", type = "total")

# For join_NMF objects:
HMatrix(jnmf_exp)
HMatrix(jnmf_exp, k = 2)
lapply(HMatrix(jnmf_exp, k = 2), head)
HMatrix(jnmf_exp, k = 2, view_id = "atac")
}
