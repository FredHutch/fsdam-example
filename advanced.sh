#!/bin/bash

ml R/4.0.4-foss-2020b
ml Python/3.8.6-GCCcore-10.2.0

. /home/mrg/.virtualenvs/pytorch/bin/activate

./advanced.R
