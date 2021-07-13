# Minimal POC for use of FSDAM

Use FSDAM with:

  - R from modules
  - rsem (installed in $HOME)
  - reticulate (installed via rsem)
  -

## Prepare

Load the desired R module:

```
ml R/4.0.4-foss-2020b
```

Install `renv` if it hasn't been installed already- start an interactive R session and run `install.packages('renv')`

Clone this repo and make it your working directory.  run `renv::init()`:

```
cd fsdam-example
R --slave -e 'renv::init()'
```

This will initialize an renv project in this directory.  Then run `fsdam-test.sh`.

Note that this script will not run successfully as we do not pass in all necessary arguments.  You should see output like this:

```
(base) rhino03[~/fsdam-example](main): ./fsdam-test.sh

The following have been reloaded with a version change:
  1) FFTW/3.3.8-gompi-2020b => FFTW/3.3.8-gompic-2020b
  2) OpenMPI/4.0.5-GCC-10.2.0 => OpenMPI/4.0.5-gcccuda-2020b
  3) ScaLAPACK/2.1.0-gompi-2020b => ScaLAPACK/2.1.0-gompic-2020b
  4) UCX/1.9.0-GCCcore-10.2.0 => UCX/1.9.0-GCCcore-10.2.0-CUDA-11.1.1

Error in ae$fsdam$main(dat, as.integer(opt_numCode), as.integer(opt_seed),  :
  argument "dat" is missing, with no default
Calls: <Anonymous> -> <Anonymous> -> py_resolve_dots
Execution halted
```

The key statement is `argument "dat" is missing` which indicates that FSDAM is at least loading successfully
