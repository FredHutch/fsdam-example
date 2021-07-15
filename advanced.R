#!/usr/bin/env Rscript
library('reticulate')
library('FSDAM')

py_config()
py_module_available('torch')
py_module_available('numpy')
py_module_available('pandas')

python_path <- system.file("python", package = "FSDAM")
ae <- import_from_path("autoencoders.fsdam", path = python_path)

