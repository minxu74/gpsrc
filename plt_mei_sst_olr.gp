reset
set term postscript landscape enhanced

set output 'mei_sst_olr_160E-160W.ps'


set multiplot layout 3, 1
set xdata time
set timefmt "%Y %m"
set format x "%Y"


set lmargin 8.2
set rmargin 8.2
set tmargin 0
set bmargin 1.5

set format x ""
set xrange ["1995 1":"2020 12"]
set ylabel 'MEI'
plot 'mei.gnu' using 1:($3>0?$3:1/0) with filledcurve y1=0 noti lc rgb 'red', '' using 1:($3<0?$3:1/0) with filledcurve y1=0 noti lc rgb 'blue'

set timefmt "%Y %m %d"

set ytics nomirror
set y2tics
set format y ""
set format y2 "%.0f"
set xrange ["1995 1 1":"2020 12 31"]
set y2label 'SST anomaly (^oC)'
set ylabel ''

set key on center top horizontal
plot [][-4:4] \
                         "<(sed -n '1,2708p'     ../ensoidx/oisst_nino3.4_anom.txt)" using 1:4 ti 'OISST' axes x1y2 w l lt -1lw 2, \
                         "<(sed -n '2709,4018p'  ../ensoidx/oisst_nino3.4_anom.txt)" using 1:4 noti axes x1y2 w l lt -1 lw 2 lc rgb 'gray', \
                         "<(sed -n '4019,8966p'  ../ensoidx/oisst_nino3.4_anom.txt)" using 1:4 noti axes x1y2 w l lt -1 lw 2, \
                         "<(sed -n '8967,9247p'  ../ensoidx/oisst_nino3.4_anom.txt)" using 1:4 ti 'CFS 9-mo forecast' axes x1y2 w l lt 2 lw 4 lc rgb 'red', \
                         "<(sed -n '9248,10593p' ../ensoidx/oisst_nino3.4_anom.txt)" using 1:4 ti 'Reconstructed' axes x1y2 w l lt 2 lw 4 lc rgb 'gray', \
                            0 w l lw 3 lc rgb 'black' axes x1y2 noti
                         #'' using (($1 < "2017 04 25" && $1 > "2016 07 18")?$1:1/0):4 w l lw 6, \

set timefmt "%Y %m"
set format x "%Y"
set format y "%.0f"
set format y2 ""
set y2tic
set xtics "1995 1 1",157680000,"2020 12 31" 
set xrange ["1995 1":"2020 12"]
set xlabel 'Year'
set y2label ''
set ylabel 'OLR (W m^{-2})
#plot '/global/cscratch1/sd/minxu/myoutput/olr_anom.txt' using 1:3  w l lt -1 lw 2 lc rgb "blue" noti
plot '/global/cscratch1/sd/minxu/myoutput/olr_anom_160E-160W.txt' using 1:3  w l lt -1 lw 2 lc rgb "blue" noti

unset multiplot
