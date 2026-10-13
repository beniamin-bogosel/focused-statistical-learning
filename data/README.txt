Bundled datasets for FocusedContent lectures 1–4

Copied unchanged on 13 October 2026 from the existing course checkout:
StatisticalLearning/An-Introduction-to-Statistical-Learning-Python-main/data/
(in the original local course checkout, outside this standalone repository). The original dataset files were not modified.

Carseats.csv: 400 rows, 11 columns, no exported index; 164 rows have Sales > 8.
OJ.csv: 1,070 rows, 18 columns; Purchase counts CH=653, MM=417.
USArrests.csv: 50 states, 4 numeric features; the first CSV column is the state identifier.
The original three copies have no missing values and match their source files byte-for-byte.

Source references retained by the course notebooks:
OJ: https://intro-stat-learning.github.io/ISLP/datasets/OJ.html
Previous OJ download: https://raw.githubusercontent.com/intro-stat-learning/ISLP/main/ISLP/data/OJ.csv
USArrests: https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/USArrests.html
Previous USArrests download: https://vincentarelbundock.github.io/Rdatasets/csv/datasets/USArrests.csv
Carseats was already a local course dependency; its prior loader required the larger textbook checkout.
The bundled copies retain the existing course data and make lectures 1–4 usable offline.

Usage: keep this data/ folder alongside the notebooks. For Colab, upload the needed
CSV to /content/data or /content. No other dataset is required for lectures 1–4.

SHA-256:
2a61b637efc96c17463a78425336736e2a01da7f2bca5e8073f5e6e7de9f9f5f  Carseats.csv
b146419798ecae8b598fc8daab3edec66db7a8c88ad9fa7095527cc23b492e48  OJ.csv
6b264567821d4f884f55de18810f557146f367406e28927d2a345dbd74321dc4  USArrests.csv

Advertising.csv was bundled for the GitHub package on 13 October 2026.
It has 200 rows and 4 named columns (TV, radio, newspaper, sales), plus row identifiers.
Copied unchanged from the same original course data directory; no missing values.
Original notebook download source: https://www.statlearning.com/s/Advertising.csv
SHA-256: 5d88819733db0d929716e9c8fa87f20fe1ec12a9ba2feb43ed7e69e585ace3ad  Advertising.csv
All four CSVs are teaching datasets, not newly collected course observations.
