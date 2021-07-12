#!/usr/bin/env Rscript

library('renv')

renv::restore()

library('reticulate')
library('FSDAM')

FSDAM::fsdam()
