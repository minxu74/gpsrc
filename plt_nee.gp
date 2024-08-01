#set term png medium font "Times 16"
#set output 'nee.png'

set macros

set term postscript color enhanced font "Times, 16"
#set output 'ts_nee_10yr_1982-2523.v1.ps'
set output 'ts_nee_10yr_1982-2616.v1.ps'

#set output 'ts_nee_10yr_1982-2523.v0.ps'

#-samples(x) = $0 > 4 ? 5 : (2523)
#-avg5(x) = (shift5(x), (back1+back2+back3+back4+back5)/samples($0))
#-shift5(x) = (back5 = back4, back4 = back3, back3 = back2, back2 = back1, back1 = x)
#-
#-#
#-# Initialize a running sum
#-#
#-init(x) = (back1 = back2 = back3 = back4 = back5 = sum = 0)



set xlabel 'Year' font "Times, 16"
set ylabel 'NEE (PgC/y)' font "Times, 16"
#-set y2label 'Absolute NEE (PgC/y)' font "Times, 16" tc rgb 'red'

set title "Net Ecosystem Exchange"

#plot [0:26] sum=init(0), \
#     'nee.dat' using 0:2 ti 'Global'  w l lw 2 lc 0, \
#     'nee.dat' using 0:(avg5($2)) noti w l lw 6 lt 0 lc 0, \
#     'nee.dat' using 0:3 ti 'Tropical'w l lw 2 lc rgb 'red', \
#     'nee.dat' using 0:(avg5($3)) noti w l lw 6 lt 0 lc rgb 'red', \
#      0 noti w l lw 5 lt 0 lc rgb 'blue'

set arrow 3 from 2611, 0 to 2611,4 nohead ls -1 lc 2 lw 2
set label 3 "3^{rd} run/w\nCO_2cycle" at 2611, 4 left offset 1,1
set arrow 31 from 2611, 3.5 to 2691,3.5 head ls -1 lc 0 lw 1

set arrow 4 from 2393, 0 to 2393,6 nohead ls -1 lc 2 lw 2
set label 4 "spin-up/w\nCO_2cycle" at 2393, 6 left offset 1,1
set arrow 41 from 2393, 5.5 to 2473,5.5 head ls -1 lc 0 lw 1

set arrow 2 from 2171, 0 to 2171,8 nohead ls -1 lc 2 lw 2
set label 2 "2^{nd} run" at 2171, 8 left offset 1, 0
set arrow 21 from 2171, 7.5 to 2251,7.5 head ls -1 lc 0 lw 1


set arrow 1 from 2149, 0 to 2149,10 nohead ls -1 lc 2 lw 2
set label 1 "1^{st} run" at 2149, 10 left offset 1, 0 
set arrow 11 from 2149, 9.5 to 2229,9.5 head ls -1 lc 0 lw 1


set xtics nomirror
set ytics nomirror

#-set y2tics tc rgb 'red'

plot [1982:2710][-5:12]\
      'nee_yearly_1982-2616.v0.dat' using 1:3             noti w l lw 2 lc 0,\
      'nee_10yrly_1982-2616.v0.dat' using (0.5*($1+$2)):4 noti w l lw 4 lc 0,\
      'nee_10yrly_1982-2616.v0.dat' using (0.5*($1+$2)):5 noti w l lw 2 lt 1 lc rgb 'red' axes x1y1,\
      0 noti w l lw 3 lt 1 lc rgb 'black'

#-      'nee_10yrly_1982-2616.v0.dat' using (0.5*($1+$2)):5 noti w l lw 2 lt 1 lc rgb 'red' axes x1y2,\
#plot [2000:2516]\
#      'nee_yearly_1982-2523.v1.dat' using 1:3             noti w l lw 2 lc 0,\
#      'nee_10yrly_1982-2523.v1.dat' using (0.5*($1+$2)):4 noti w l lw 4 lc 0,\
#      'nee_10yrly_1982-2523.v1.dat' using (0.5*($1+$2)):5 noti w l lw 2 lt 1 lc rgb 'red' axes x1y2,\
#      0 noti w l lw 3 lt 1 lc rgb 'black'
