#!/bin/bash

ml R/4.0.4-foss-2020b
ml PyTorch/1.7.1-fosscuda-2020b

# renv environment variables here

./fsdam-test.R
