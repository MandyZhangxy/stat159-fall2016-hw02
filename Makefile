.PHONY: all clean data

all: data eda-output.txt regression.RData report.pdf

eda-output.txt: code/eda-script.R
	cd code/; Rscript  code/eda-script.R

report.pdf: report/report.rmd data/regression.RData
	Rscript -e "library(rmarkdown); render(report/report.rmd)" 

regression.RData: code/regression-script.R
	Rscript code/regression-script.R


data: 
	cd data; curl --remote-name http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv; cd ..


clean:
	rm data/Advertising.csv

