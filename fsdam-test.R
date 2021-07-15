#!/usr/bin/env Rscript

library('reticulate')
library('FSDAM')

py_config()

res <- FSDAM::fsdam(
             dat=hvtn505tier1[,-1],
             opt_numCode=2,
             opt_seed=1,
             opt_model="n",
             opt_gpu=0,
             opt_k=100,
             opt_nEpochs=500,
             opt_constr="newpenalization",
             opt_tuneParam=10,
             opt_penfun="mean",
             opt_ortho=1,
             opt_earlystop="no"
             )

res$history
