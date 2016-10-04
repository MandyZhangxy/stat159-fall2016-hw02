.PHONY:  data clean

data: 
	cd data; curl --remote-name http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv; cd ..


clean:
	rm data/Advertising.csv
