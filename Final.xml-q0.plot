set terminal epscairo
set output '.\Final.xml-q0.eps'
set title 'Simulations (1)'
set key outside center right enhanced Left reverse samplen 1
set grid xtics ytics lc rgb '#808080'
set xlabel 'time'
set ylabel 'value'
set style data points
set datafile separator ','
plot '.\Final.xml-q0-e0.csv' with lines lc rgb '#ff0000' title 'task.delayTask',\
	'.\Final.xml-q0-e1.csv' with lines lc rgb '#ffff00' title 'human.delayHuman',\
	'.\Final.xml-q0-e2.csv' with lines lc rgb '#00ff00' title 'queue.discarded',\
	'.\Final.xml-q0-e3.csv' with lines lc rgb '#00ffff' title 'BOT[0].botPosition[0]',\
	'.\Final.xml-q0-e4.csv' with lines lc rgb '#0000ff' title 'BOT[0].botPosition[1]',\
	'.\Final.xml-q0-e5.csv' with lines lc rgb '#ff00ff' title 'nTask'
