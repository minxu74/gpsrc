
reset
set term postscript portrait enhanced

set output 'rs.ps'


set multiplot layout 3, 1 #title "PFT: Broadleaf evergreen tropical tree"
set xdata time
set timefmt "%Y %m"
set format x "%Y"


set key on
set lmargin 3.2
set rmargin 1.2
set tmargin 1
set bmargin 1

set xrange ["1995 1":"2020 12"]

set format x ""

set ylabel 'RSSHA (s/m)
plot 'rssha_monthly.txt' using 1:8 w l ti 'BET'


set ylabel 'RSSHA (s/m)
plot 'rssha_monthly.txt' using 1:8 w l ti 'BDT'


set format x "%Y"
#set xtics "1995 1 1",189216000,"2020 12 31"
set xtics "1995 1 1",157680000,"2020 12 31"
set xrange ["1995 1":"2020 12"]
set xlabel "Time"
set ylabel 'RSSHA (s/m)'
plot 'rssha_monthly.txt' using 1:19 w l ti 'CRP'
