% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geneOntologyEnrichment.R
\name{geneOntologyEnrichment}
\alias{geneOntologyEnrichment}
\title{geneOntologyEnrichment obtains the information about what Gene Ontology terms are related to the DEGs.}
\usage{
geneOntologyEnrichment(
  geneList,
  geneType = "ENTREZ_GENE_ID",
  ontologies = c("BP", "CC", "MF"),
  pvalCutOff = 1
)
}
\arguments{
\item{geneList}{A list that contains entrez gene id of the DEGs. Entrez gene id can be obtained using getAnnotationFromEnsembl function.}

\item{geneType}{A string indicating the type of genes in geneList, it must be one of indicated in DAVIDs API documentation.}

\item{ontologies}{A list that contains ontologies to be searchs. Values must be contained in the following three: BP, CC, MF.}

\item{pvalCutOff}{The maximum p-value to considers that a genes is related with a GO term.}
}
\value{
A list that contains a matrix for each of the possible ontologies and a matrix with the GOs for the three ontologies together.
}
\description{
The function obtains the information about GO terms from the three differents ontologies that are related to the DEGs. The function also returns the description about each GO and a list of genes that are inside of each GO.
}
\examples{
\dontrun{GOsList <- geneOntologyEnrichment(data$entrezgene_id,geneType='ENTREZ_GENE_ID',pvalCutOff=0.1)}
}
