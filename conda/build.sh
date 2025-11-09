#!/bin/bash

# Install the Python package
$PYTHON -m pip install . -vv

# Install the shell script
mkdir -p $PREFIX/bin
cp bin/curation_2.0_pipe.sh $PREFIX/bin/
chmod +x $PREFIX/bin/curation_2.0_pipe.sh
