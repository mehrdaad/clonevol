% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clonevol.r
\name{plot.tree}
\alias{plot.tree}
\title{Plot clonal evolution tree}
\usage{
\method{plot}{tree}(v, node.shape = "circle", display = "tree",
  node.size = 50, node.colors = NULL, color.node.by.sample.group = FALSE,
  color.border.by.sample.group = TRUE, show.legend = TRUE,
  tree.node.text.size = 1, cell.frac.ci = TRUE, node.prefix.to.add = NULL,
  title = "", node.annotation = "clone",
  node.label.split.character = NULL, node.num.samples.per.line = NULL,
  out.prefix = NULL, graphml.out = FALSE, out.format = "graphml")
}
\arguments{
\item{v:}{clonal structure data frame as the output of enumerate.clones}

\item{display:}{tree or graph}

\item{show.sample:}{show sample names in node}

\item{node.annotation:}{c('clone', 'sample.with.cell.frac.ci',
'sample.with.nonzero.cell.frac.ci', 'sample.with.cell.frac.ci',
'sample.with.cell.frac.ci.founding.and.subclone')
Labeling mode for tree node. 'sample.with.cell.frac.ci' = all samples where clone's signature
mutations detected togeter with cell.frac.ci if cell.frac.ci=T; 'sample.nonzero.cell.frac'
= samples where clones detected with nonzero cell fraction determined by subclonal.test
'sample.with.cell.frac.ci.founding.and.subclone': show all execpt samples where cell frac is
zero and not subclone
if cell.frac is diff from zero; default = 'clone' = only clone label is shown
'sample.term.clone' = samples where clones are terminal clones (ie. clones that do not
have subclones in that sample)}

\item{node.label.split.character:}{replace this character by "\\n" to allow multi
line labeling for node; esp. helpful with multi samples sharing a
node being plotted.}

\item{node.colors:}{named vector of colors to plot for nodes, names = clone/cluster
labels; if NULL (default), then use v$color}

\item{color.node.by.sample.group:}{if TRUE, and if column sample.group and
sample.group.color exists, then color node by these; also add legend}

\item{color.border.by.sample.group:}{if TRUE, color border of clones in tree
or bell plot based on sample grouping}

\item{show.legend:}{show sample group legends, etc.}
}
\description{
Plot a tree representing the clonal structure of a sample
Return the graph object (with node name prefixed with node.prefix.to.add)
}
