# Cygwin Setup Guide

### File line endings
Install `dos2unix`

```
dos2unix *                              # Run on all files within a directory
find . -type f -exec dos2unix {} \;     # Run on all files recursively
```

### Terminal theme

Copy either `minttyrc_light` or `minttyrc_dark` to `~/.minttyrc`
