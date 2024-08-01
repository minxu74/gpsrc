set term postscript enhanced color

set output 'co2gr_iav.ps'


set xlabel "Year"

set multiplot

set size 1, 0.5



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


set ylabel "CO_2 growth rate (ppm/month)"
set origin 0, 0.0
set label 1 'Tropics/Southern Hemisphere' at graph 0.95, graph 0.9 right

plot ["1982 01":"2017 12"] []\
           '~/scratch1/enso_results/2556-2592/CO2_LND_latbnd_grow-12mo.dat' using (timecolumn(1)+15552000):6 noti w l lt -1 lw 2 lc rgb 'red', \
           '/global/cscratch1/sd/minxu/data/monthly_co2_growth_rate_latbnd.dat' using (timecolumn(2)+15552000):($7!=-99)?$7:1/0  noti w l lt -1 lw 1 lc rgb 'blue'


set origin 0, 0.5
set label 1 'Tropics/Northern Hemisphere' at graph 0.95, graph 0.9 right
plot ["1982 01":"2017 12"] []\
           '~/scratch1/enso_results/2556-2592/CO2_LND_latbnd_grow-12mo.dat' using (timecolumn(1)+15552000):7 noti w l lt -1 lw 2 lc rgb 'red', \
           '/global/cscratch1/sd/minxu/data/monthly_co2_growth_rate_latbnd.dat' using (timecolumn(2)+15552000):($8!=-99)?$8:1/0  noti w l lt -1 lw 1 lc rgb 'blue'
