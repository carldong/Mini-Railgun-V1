set title "* simulation de rc2"
set xlabel "s"
set ylabel "V"
set grid
unset logscale x 
set xrange [0.000000e+00:1.000000e-05]
unset logscale y 
set yrange [-3.748940e-02:6.714878e-01]
#set xtics 1
#set x2tics 1
#set ytics 1
#set y2tics 1
set format y "%g"
set format x "%g"
plot 'graph.data' using 1:2 with lines lw 1 title "n1" 
set terminal push
set terminal postscript eps color
set out 'graph.eps'
replot
set term pop
replot
