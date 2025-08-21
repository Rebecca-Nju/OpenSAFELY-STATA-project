* Load the dataset
import delimited output/dataset.csv.gz, clear

* Summarize age
summarize age

* Tabulate sex
tabulate sex

* Export summary stats
quietly summarize age
matrix stats = r(N), r(mean), r(sd), r(min), r(max)
matrix colnames stats = N mean sd min max
svmat stats, names(col)
outsheet using output/processed/stata_summary.csv, replace

tabulate sex, matcell(freq)
svmat freq, names(col)
outsheet using output/processed/stata_counts.csv, replace
