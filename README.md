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

This will initialize an renv project in this directory.

Run `./fsdam-test.sh`.  The FSDAM calculation should run successfully (takes about 40-50 seconds) and should output several data frames
