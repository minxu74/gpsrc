
set terminal postscript enhanced color solid

set output 'oni_amo_dmi.ps'


set xdata time
set format x "%Y"


set bmargin 0
set tmargin 0



set multiplot


set size 1, 0.33

set timefmt "%Y%m%d"
set style rect fc rgb 'red' fs solid 0.15 noborder
set obj rect from "19820316", graph 0. to "19830516", graph 1 fc rgb 'red'
set obj rect from "19860916", graph 0. to "19880116", graph 1 fc rgb 'red'
set obj rect from "19910516", graph 0. to "19920616", graph 1 fc rgb 'red'
set obj rect from "19940916", graph 0. to "19950216", graph 1 fc rgb 'red'
set obj rect from "19970416", graph 0. to "19980416", graph 1 fc rgb 'red'
set obj rect from "20141016", graph 0. to "20160616", graph 1 fc rgb 'red'

set style rect fc rgb 'blue' fs solid 0.15 noborder
set obj rect from "19880516", graph 0. to "19890516", graph 1
set obj rect from "19950716", graph 0. to "19960416", graph 1
set obj rect from "19980616", graph 0. to "20010116", graph 1
set obj rect from "20070616", graph 0. to "20080516", graph 1
set obj rect from "20100616", graph 0. to "20120216", graph 1


unset xtics 
set xrange["19820116":"20161216"]
set origin 0., 0.66
set ytics -2.5,0.5,2.5
plot [][-3:3]\
     '/global/project/projectdirs/m2467/prj_minxu/OISST/ensoidx2/oni_1982-2020.txt' using 1:2 w l lw 2 lc rgb "black" ti "NINO3.4", 0 w l lw 1 lc rgb "blue" noti

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

set xrange["1982 01":"2016 12"]
set origin 0., 0.33
set ytics -0.4,0.1,0.4
plot [][-0.4:0.4]\
     '/global/project/projectdirs/m2467/prj_minxu/OISST/ne30/amo_dmi_1982-2016.txt' using 1:3 w imp ti "AMO", 0 w l lw 1 lc rgb "blue" noti, \
     '' using 1:4 w l lw 2 lc rgb 'black' ti "3-month runningmean"

set xtics 
set origin 0., 0.0
set ytics -1.5,0.4,1.5
plot [][-1.5:1.5]\
     '/global/project/projectdirs/m2467/prj_minxu/OISST/ne30/amo_dmi_1982-2016.txt' using 1:5 w imp ti "DMI", 0 w l lw 1 lc rgb "blue" noti, \
     '' using 1:6 w l lw 2 lc rgb 'black' ti "3-month runningmean"


unset multiplot
