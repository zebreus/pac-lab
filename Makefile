.PHONY: assignment1-data assignment2-data
assignment1-data: assignment1/Traces_B.dat assignment1/Traces_A.dat

assignment1/data.zip:
	wget -O assignment1/data.zip https://hessenbox.tu-darmstadt.de/dl/fiBeGAdKbjpCZwy2EWVUTQGB/Data.zip

assignment1/Traces_%.dat: assignment1/data.zip
	cd assignment1 ; unzip -o -DD data.zip

assignment2-data: assignment2/Timing_Noisy.csv

assignment2/data.zip:
	wget -O assignment2/data.zip https://hessenbox.tu-darmstadt.de/dl/fi7hkaB3Scih2XK9wuDBbEmD/Data.zip

assignment2/Timing_Noisy.csv: assignment2/data.zip
	cd assignment2 ; unzip -o -DD -j data.zip
