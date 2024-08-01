#set term png medium font "Times 16"
#set output 'nee.png'

set term postscript  color enhanced font "Times, 16"
set output 'nee.ps'


samples(x) = $0 > 4 ? 5 : ($0+1)
shift5(x) = (back5 = back4, back4 = back3, back3 = back2, back2 = back1, back1 = x)
avg5(x) = (shift5(x), (back1+back2+back3+back4+back5)/samples($0))

#
# Initialize a running sum
#
init(x) = (back1 = back2 = back3 = back4 = back5 = sum = 0)



set xlabel 'Year' font "arial, 16"
set ylabel 'NEE (PgC/y)' font "arial, 16"

set title "Net Ecosystem Exchange"

plot [0:26] \
     'nee.dat' using 0:2 ti 'Global'  w l lw 2 lc 0, \
     'nee.dat' using 0:(avg($2)) noti w l lw 2 lc 0, \
     'nee.dat' using 0:3 ti 'Tropical'w l lw 2 lc 1, \
      0 noti w l lw 3 lt 0 lc 0

