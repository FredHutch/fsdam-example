# Minimal POC for use of FSDAM

Use FSDAM with:

  - Pre-existing basic R and Python (using Lmod at the Hutch)
  - rsem (installed in $HOME)

## Prepare

### Python

Load the Python module:

```
ml Python/3.8.6...
```

Create the virtual environment "pytorch"

```
virtualenv pytorch
```

This should create a "pytorch" directory with the virtual environment inside.  Activate this environment and use the requirements.txt file to install python libraries:

```
. pytorch/bin/activate
pip install -r requirements.txt
```

### R

Load the desired R module:

```
ml R/4.0.4-foss-2020b
```

Install `renv`- start an interactive R session and run `install.packages('renv')`. Once installed, initialize the project:

```
R --slave -e 'renv::init()'
```

### Run the Test

Run `./fsdam-test.sh`.  The FSDAM calculation should run successfully (takes about 40-50 seconds).  The only result returned is `res$history` as there's lots of output otherwise.  It should look something like:

```
$ ./fsdam-test.sh
python:         ..../fsdam-example/pytorch/bin/python3
libpython:      /app/software/Python/3.8.6-GCCcore-10.2.0/lib/libpython3.8.so
pythonhome:     ..../fsdam-example/pytorch:..../fsdam-example/pytorch
virtualenv:     ..../fsdam-example/pytorch/bin/activate_this.py
version:        3.8.6 (default, Dec 16 2020, 13:45:25)  [GCC 10.2.0]
numpy:          ..../fsdam-example/pytorch/lib/python3.8/site-packages/numpy
numpy_version:  1.21.0

python versions found:
 ..../fsdam-example/pytorch/bin/python3
 /usr/bin/python3
 /usr/bin/python
     component 1 component 2
[1,]   3.7426012   2.4608109
[2,]   1.6523124   0.9259490
[3,]   1.0354393   0.7439249
[4,]   0.9385211   0.6408913
[5,]   0.7257231   0.5852478
```
