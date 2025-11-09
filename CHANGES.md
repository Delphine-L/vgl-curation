# CHANGELOG

## v0.2.0 - 2025-11-09

### Packaging Improvements
- Added modern `pyproject.toml` for PEP 517/518 compliance
- Created conda recipe (`conda/meta.yaml`) for easy conda packaging
- Added `MANIFEST.in` to properly include non-Python files
- Simplified `setup.py` to use pyproject.toml configuration
- Added `.gitignore` for cleaner repository management
- Made shell script executable by default
- Added `__init__.py` to ProcessCuration package with version info

### Documentation
- Improved README with better installation instructions

### Bug Fixes & Improvements
- Fixed orientation detection to use alignment sizes
- Added parallel commands for faster processing
- Improved error handling for missing scaffolds in mashmap
- Fixed unloc renaming issues
- Removed sex chromosome parameter (auto-detected)
- Fixed issues with heterogametic assemblies
- Added support for hap1 style suffix
- Consolidated functions into main scripts

##  v1.0 - 2025-08-06

- Initial Release



