.PHONY: all clean data

all: data eda-output.txt regression.RData report.pdf

eda-output.txt: code/eda-script.R data
	Rscript  code/eda-script.R

report.pdf: report/report.rmd data/regression.RData report/
	R -e 'library("rmarkdown");library("knitr");rmarkdown::render("report/report.Rmd")'

regression.RData: code/regression-script.R data/
	Rscript code/regression-script.R


data: 
	cd data; curl --remote-name http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv; cd ..


clean:
	rm -rf report/report.pdf

