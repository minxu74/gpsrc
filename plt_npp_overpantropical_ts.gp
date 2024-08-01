
reset
set term postscript portrait enhanced

set output 'agnpp_bgnpp_ratio_BET.ps'


set multiplot layout 4, 1 title "PFT: Broadleaf evergreen tropical tree"
#set multiplot layout 4, 1 title "PFT: Broadleaf deciduous tropical tree"
#set multiplot layout 4, 1 title "PFT: Crop"
set xdata time
set timefmt "%Y %m"
set format x "%Y"


set key off
set lmargin 3.2
set rmargin 1.2
set tmargin 1
set bmargin 1

set xrange ["1995 1":"2020 12"]

set format x ""
set ylabel 'NPP (gC/m^2/day)
plot 'npp_monthly.txt' using 1:8 w l 

set ylabel 'AGNPP (gC/m^2/day)
plot 'agnpp_monthly.txt' using 1:8 w l 


set ylabel 'BGNPP (gC/m^2/day)
plot 'bgnpp_monthly.txt' using 1:($8*86400) w l 


set format x "%Y"
#set xtics "1995 1 1",189216000,"2020 12 31"
set xtics "1995 1 1",157680000,"2020 12 31"
set xrange ["1995 1":"2020 12"]
set xlabel "Time"
set ylabel 'Ratio - BGNPP/AGNPP' offset 1.5,0
plot 'rabnpp_monthly.txt' using 1:8 w l 
