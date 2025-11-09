# Instructions for Creating GitHub Release v0.2.0

## Summary of Changes

All packaging improvements have been completed and pushed to the `claude/improve-filter-mashmap-packaging-011CUxpbs48R336x3gWLKb33` branch.

### Files Created/Modified

**New Files:**
- `pyproject.toml` - Modern Python packaging configuration
- `conda/meta.yaml` - Conda recipe for bioconda submission
- `conda/build.sh` - Conda build script
- `MANIFEST.in` - File inclusion manifest
- `.gitignore` - Git ignore patterns
- `src/ProcessCuration/__init__.py` - Package initialization
- `CONDA_PACKAGING.md` - Conda packaging guide
- `RELEASE_NOTES_v0.2.0.md` - Release notes

**Modified Files:**
- `setup.py` - Simplified to use pyproject.toml
- `CHANGES.md` - Updated with v0.2.0 changes
- `bin/curation_2.0_pipe.sh` - Made executable

### Build Artifacts

The following distribution files have been created in `dist/`:
- `processcuration-0.2.0.tar.gz` (15KB) - Source distribution
- `processcuration-0.2.0-py3-none-any.whl` (9.6KB) - Python wheel

## Steps to Create GitHub Release

### Option 1: Via GitHub Web Interface

1. Go to https://github.com/Delphine-L/vgl-curation/releases
2. Click "Draft a new release"
3. Fill in the release form:
   - **Tag version**: `v0.2.0`
   - **Target**: `claude/improve-filter-mashmap-packaging-011CUxpbs48R336x3gWLKb33` (or merge to main first)
   - **Release title**: `ProcessCuration v0.2.0 - Improved Conda Packaging`
   - **Description**: Copy content from `RELEASE_NOTES_v0.2.0.md`
4. Upload the distribution files:
   - `dist/processcuration-0.2.0.tar.gz`
   - `dist/processcuration-0.2.0-py3-none-any.whl`
5. Check "Set as the latest release"
6. Click "Publish release"

### Option 2: Via GitHub CLI (if available)

```bash
gh release create v0.2.0 \
  --title "ProcessCuration v0.2.0 - Improved Conda Packaging" \
  --notes-file RELEASE_NOTES_v0.2.0.md \
  dist/processcuration-0.2.0.tar.gz \
  dist/processcuration-0.2.0-py3-none-any.whl
```

## Post-Release Steps

### 1. Merge to Main Branch
After creating the release, merge the changes to the main branch:
```bash
git checkout main
git merge claude/improve-filter-mashmap-packaging-011CUxpbs48R336x3gWLKb33
git push origin main
```

### 2. Update filter_mashmap Branch (if needed)
If you want to update the original filter_mashmap branch:
```bash
git checkout filter_mashmap
git merge claude/improve-filter-mashmap-packaging-011CUxpbs48R336x3gWLKb33
git push origin filter_mashmap
```

### 3. Submit to Bioconda (Recommended)

To make the package easily installable via conda:

1. Fork https://github.com/bioconda/bioconda-recipes
2. Create a new branch
3. Copy the conda recipe:
   ```bash
   mkdir -p recipes/processcuration
   cp conda/meta.yaml recipes/processcuration/
   cp conda/build.sh recipes/processcuration/
   ```
4. Update the recipe source to point to the GitHub release:
   ```yaml
   source:
     url: https://github.com/Delphine-L/vgl-curation/archive/refs/tags/v0.2.0.tar.gz
     sha256: <calculate sha256 of the release tarball>
   ```
5. Submit a pull request to bioconda
6. Wait for automated tests to pass
7. Address any reviewer comments

### 4. Submit to PyPI (Optional)

To make the package installable via `pip install ProcessCuration`:

```bash
pip install twine
twine upload dist/*
```

You'll need PyPI credentials. If you don't have an account, create one at https://pypi.org/

## Verification

After creating the release, verify it works:

### Test Installation from Release
```bash
pip install https://github.com/Delphine-L/vgl-curation/releases/download/v0.2.0/processcuration-0.2.0-py3-none-any.whl
```

### Test Commands
```bash
split_agp --help
chromosome_assignment --help
sak_generation --help
```

## Package Features

The improved packaging provides:

✅ Modern pyproject.toml configuration
✅ Conda recipe ready for bioconda
✅ All dependencies properly specified
✅ Shell scripts included in package
✅ Executable console scripts
✅ Clean installation via pip or conda
✅ Comprehensive documentation

## Support

For issues or questions:
- GitHub Issues: https://github.com/Delphine-L/vgl-curation/issues
- Documentation: See README.md and CONDA_PACKAGING.md
