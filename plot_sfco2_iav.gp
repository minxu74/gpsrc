set term postscript enhanced color

set output 'iav.ps'


set xlabel "Latitude"

set multiplot

set size 1, 0.5


set xdata time
set format x "%y"
set timefmt "%Y %m"

set ylabel "CO_2 flux (gCO2/m2/yr)"
set origin 0, 0
plot ["1982 01":"2017 12"] []\
           '~/scratch1/enso_results/2556-2592/co2_latbnd_iav.dat' using 1:6 noti w l lt -1 lw 3 lc rgb 'red'


set origin 0, 0.5
plot ["1982 01":"2017 12"] []\
           '~/scratch1/enso_results/2556-2592/co2_latbnd_iav.dat' using 1:7 noti w l lt -1 lw 3 lc rgb 'red'
