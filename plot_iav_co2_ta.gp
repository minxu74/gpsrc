set term postscript enhanced color

set output 'iav_co2_tsa.ps'

stats 'CO2_TSA_IAV.dat' using 6:16 name 'rainsh'
stats 'CO2_TSA_IAV.dat' using 7:17 name 'rainnh'

set xlabel "Year"

set multiplot

set size 1, 0.5


#enso events
set xdata time
set format x "%y"
set timefmt "%Y %m"

set style rect fc rgb 'red' fs solid 0.15 noborder
set obj rect from "1982 03", graph 0. to "1983 05", graph 1 fc rgb 'red'
set obj rect from "1986 09", graph 0. to "1988 01", graph 1 fc rgb 'red'
set obj rect from "1991 05", graph 0. to "1992 06", graph 1 fc rgb 'red'
set obj rect from "1994 09", graph 0. to "1995 02", graph 1 fc rgb 'red'
set obj rect from "1997 04", graph 0. to "1998 04", graph 1 fc rgb 'red'
set obj rect from "2014 10", graph 0. to "2016 06", graph 1 fc rgb 'red'

set style rect fc rgb 'blue' fs solid 0.15 noborder
set obj rect from "1988 05", graph 0. to "1989 05", graph 1
set obj rect from "1995 07", graph 0. to "1996 04", graph 1
set obj rect from "1998 06", graph 0. to "2001 01", graph 1
set obj rect from "2007 06", graph 0. to "2008 05", graph 1
set obj rect from "2010 06", graph 0. to "2012 02", graph 1




set ytics nomirror
set y2tics nomirror
set y2label "Temperature (K)"
set ylabel "[CO_2] anomaly (ppm)"
set origin 0, 0
set label 1 'Tropics/Southern Hemisphere' at graph 0.95, graph 0.9 right
set label 2 sprintf("r = %4.2f",rainsh_correlation) at graph 0.95, graph 0.05 right
plot ["1982 01":"2017 12"] []\
           '~/scratch1/enso_results/2556-2592/CO2_LND_latbnd_iav.dat' using 1:6 noti w l lt -1 lw 3 lc rgb 'red', \
           '~/scratch1/enso_results/2556-2592/TSA_latbnd_iav.dat' using 1:6 axes x1y2 noti w l lt -1 lw 1 lc rgb 'black'
           #'~/scratch1/enso_results/2556-2592/co2dir/co2_latbnd_iav.dat' using 1:6 noti w l lt -1 lw 3 lc rgb 'red'
           #'~/scratch1/enso_results/2192-2230-bf-fix/co2_latbnd_iav.dat' using 1:6 noti w l lt -1 lw 3 lc rgb 'red'


set origin 0, 0.5
set label 1 'Tropics/Northern Hemisphere' at graph 0.95, graph 0.9 right
set label 2 sprintf("r = %4.2f",rainnh_correlation) at graph 0.95, graph 0.05 right
plot ["1982 01":"2017 12"] []\
           '~/scratch1/enso_results/2556-2592/CO2_LND_latbnd_iav.dat' using 1:7 noti w l lt -1 lw 3 lc rgb 'red', \
           '~/scratch1/enso_results/2556-2592/TSA_latbnd_iav.dat' using 1:7 axes x1y2 noti w l lt -1 lw 1 lc rgb 'black'
           #'~/scratch1/enso_results/2556-2592/co2dir/co2_latbnd_iav.dat' using 1:7 noti w l lt -1 lw 3 lc rgb 'red'
           #'~/scratch1/enso_results/2192-2230-bf-fix/co2_latbnd_iav.dat' using 1:7 noti w l lt -1 lw 3 lc rgb 'red'
