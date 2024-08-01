#set term png medium font "Times 16"
#set output 'nee.png'

set term postscript color enhanced font "Times, 16"
set output 'ts_nee_5yr_runningavg.ps'


samples(x) = $0 > 4 ? 5 : ($0+1)
avg5(x) = (shift5(x), (back1+back2+back3+back4+back5)/samples($0))
shift5(x) = (back5 = back4, back4 = back3, back3 = back2, back2 = back1, back1 = x)

#
# Initialize a running sum
#
init(x) = (back1 = back2 = back3 = back4 = back5 = sum = 0)



set xlabel 'Year' font "Times, 16"
set ylabel 'NEE (PgC/y)' font "Times, 16"

set title "Net Ecosystem Exchange"

plot [0:26] sum=init(0), \
     'nee.dat' using 0:2 ti 'Global'  w l lw 2 lc 0, \
     'nee.dat' using 0:(avg5($2)) noti w l lw 6 lt 0 lc 0, \
     'nee.dat' using 0:3 ti 'Tropical'w l lw 2 lc rgb 'red', \
     'nee.dat' using 0:(avg5($3)) noti w l lw 6 lt 0 lc rgb 'red', \
      0 noti w l lw 5 lt 0 lc rgb 'blue'

