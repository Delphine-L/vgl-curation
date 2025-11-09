# ProcessCuration v0.2.0 Release Notes

## Overview

This release significantly improves the packaging infrastructure for ProcessCuration, making it much easier to install via conda and pip. The package is now fully compatible with modern Python packaging standards and ready for submission to bioconda.

## What's New

### Packaging Improvements

- **Modern pyproject.toml**: Added PEP 517/518 compliant configuration
- **Conda Recipe**: Created complete conda recipe in `conda/` directory
- **Improved Installation**: Package now properly installs all scripts and dependencies
- **Better Documentation**: Added CONDA_PACKAGING.md with detailed build instructions
- **Clean Repository**: Added .gitignore for cleaner git management

### Technical Improvements

- **Parallel Processing**: Added parallel commands in pipeline for faster execution
- **Better Error Handling**: Improved error messages for missing scaffolds in mashmap
- **Orientation Detection**: Now uses alignment sizes for more accurate orientation detection
- **Unloc Renaming**: Fixed issues with unloc sequence renaming
- **Auto-detection**: Removed manual sex chromosome parameter (now auto-detected)

### Bug Fixes

- Fixed issues with heterogametic assemblies
- Fixed missing unloc renaming
- Added support for hap1 style suffix
- Consolidated functions into main scripts for better maintainability

## Installation

### Via pip (from source)

```bash
pip install processcuration-0.2.0.tar.gz
```

### Via conda (from recipe)

```bash
conda build conda/
conda install --use-local processcuration
```

### For development

```bash
git clone https://github.com/Delphine-L/vgl-curation.git
cd vgl-curation
pip install -e .
```

## Package Contents

The package includes:

- **Python Scripts**: `split_agp`, `chromosome_assignment`, `sak_generation`
- **Shell Pipeline**: `curation_2.0_pipe.sh`
- **ProcessCuration Module**: Python package with helper functions
- **Documentation**: README, CHANGES, CONDA_PACKAGING guide

## Dependencies

### Python Dependencies (auto-installed)
- biopython >= 1.85
- pandas >= 2.0
- natsort >= 8.4.0

### External Dependencies (install separately)
- gfastats >= 1.3.10
- mashmap

## Conda Recipe

The conda recipe is ready for submission to bioconda. It includes:

- Complete dependency specification
- Automated tests
- Proper metadata
- Build scripts for cross-platform compatibility

## Upgrade Notes

If upgrading from v1.0:

1. The installation process is now simpler and more standard
2. All scripts are automatically added to PATH
3. The shell script is now executable by default
4. Package structure has been reorganized (but command-line tools remain the same)

## Next Steps

### For Users
- Install using pip or conda
- Report any issues on GitHub

### For Maintainers
- Submit to bioconda for wider distribution
- Consider submitting to PyPI for easier pip installation

## Credits

Thanks to all contributors and users who provided feedback on the packaging and installation process.

## Links

- GitHub Repository: https://github.com/Delphine-L/vgl-curation
- Issue Tracker: https://github.com/Delphine-L/vgl-curation/issues
- Documentation: See README.md and CONDA_PACKAGING.md

---

**Full Changelog**: See CHANGES.md for complete details
