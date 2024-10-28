.PHONY: assignment1-data
assignment1-data: assignment1/Traces_B.dat assignment1/Traces_A.dat

assignment1/data.zip:
	wget -O assignment1/data.zip https://hessenbox.tu-darmstadt.de/dl/fiBeGAdKbjpCZwy2EWVUTQGB/Data.zip

assignment1/Traces_%.dat: assignment1/data.zip
	cd assignment1 ; unzip -o -DD data.zip