# Conda Packaging Guide

This document describes how to build and install ProcessCuration using conda.

## Building a conda package

### Prerequisites
- conda or mamba installed
- conda-build installed (`conda install conda-build`)

### Build the package

From the repository root:

```bash
conda build conda/
```

This will create a conda package in your conda-bld directory.

### Install the local package

After building, you can install the package:

```bash
conda install --use-local processcuration
```

## Installing from source with conda dependencies

If you want to install from source but use conda for dependencies:

```bash
# Create a new conda environment
conda create -n processcuration python=3.9

# Activate the environment
conda activate processcuration

# Install dependencies
conda install -c bioconda gfastats mashmap
conda install -c conda-forge biopython pandas natsort

# Install ProcessCuration
pip install .
```

## Publishing to conda (for maintainers)

To publish to conda-forge or bioconda:

1. Fork the appropriate feedstock repository
2. Update the recipe with the new version
3. Submit a pull request
4. Wait for CI tests to pass
5. Merge the PR

### For bioconda submission

ProcessCuration should be submitted to bioconda since it's a bioinformatics tool:

1. Fork https://github.com/bioconda/bioconda-recipes
2. Create a new branch
3. Copy `conda/meta.yaml` to `recipes/processcuration/meta.yaml`
4. Adjust the recipe as needed for bioconda standards
5. Submit a pull request

## Testing the package

After installation, verify that all commands are available:

```bash
split_agp --help
chromosome_assignment --help
sak_generation --help
curation_2.0_pipe.sh -h
```

## Package Contents

The conda package includes:
- Python scripts: `split_agp`, `chromosome_assignment`, `sak_generation`
- Shell script: `curation_2.0_pipe.sh`
- ProcessCuration Python module
- Documentation and examples
- All dependencies (gfastats, mashmap, biopython, pandas, natsort)
