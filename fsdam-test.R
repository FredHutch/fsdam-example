#!/usr/bin/env Rscript

library('renv')
library('reticulate')

renv::restore()
library('FSDAM')
FSDAM::fsdam()

