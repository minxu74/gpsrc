
set term postscript color enhanced font "Times, 16"
set output 'ts_nee_aio_1988-2176.v0.ps'


set xlabel "Year"
set ylabel "NEE (PgC/yr)"

plot \
'nee_yearly_1988-2176.v0.dat' using 1:3 w l ti "Global", '' using 1:4 w l ti "Tropicl", \
'nee_yearly_1988-2086.v0.dat' using 1:3 w l ti "Global", '' using 1:4 w l ti "Tropicl", \
'nee_10yrly_1988-2176.v0.dat' using 1:4 w l ti "10yr average" , '' using 1:5 w l ti "absolute 10yr average
