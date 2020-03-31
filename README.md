# index-checker

# Author
Andrew Buultjens

# Synopsis
Checks if the indexes are the same in the feature matrix and target file. The feature matrix must be in the long format (columns are observations and rows are features).

# Usage
```
% sh index-checker.sh [FEATURE_MATRIX.csv] [TARGET.csv]
```
# Example
``
$ sh index-checker.sh 126_kounta_k-11_minfreq-10_SCALE.csv target_126_ACID.csv
INDEXES ARE THE SAME
``
