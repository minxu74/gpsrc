set term postscript portrait color enhanced solid
set output 'iav_tsa_region.ps'

set macros


dir="'/scratch1/scratchdirs/minxu/enso_analytics/data/sen/temp/"

#vnm="_GPP_ts.txt'"
#vnm="_PRCP_ts.txt'"
vnm="_TSA_ts.txt'"
#vlb="GPP anomalies (gC/m^2/day)"
vlb="'TSA anomalies (K)'"
fact="1"

re0="gloabl"
re1="tropic"
re2="amazon"
re3="westaf"
re4="eastaf"
re5="indone"


lc1="lw 1 lc rgb 'blue'"
lc2="lw 1 lc rgb 'yellow'"
lc3="lw 2 lc rgb 'red'"
lc4="lw 2 lc rgb 'grey'"
lc5="lw 2 lc rgb 'black'"



set xdata time
set timefmt "%Y%m"


set format x "%Y"

set bmargin 0
set tmargin 0

set xrange["199601":"201612"]

set multiplot


set size 1.,0.2


set key off
unset xtics

set yrange [-1.6:1.6]
set ytics -1.5,0.5,1.5

#set label 2 "Precipitation anomalies (mm/day)" center rotate by 90 at screen 0,0.45
set label 2 @vlb center rotate by 90 at screen 0,0.45
#-set origin 0.0, 0.8
#-set label 1 "Tropics" at "201301",2.7
#-plot  \
#-       @dir@re1@vnm using 1:($7 *@fact) w l @lc1 ti 'CLMATL', \
#-       @dir@re1@vnm using 1:($8 *@fact) w l @lc2 ti 'CLMIND', \
#-       @dir@re1@vnm using 1:($9 *@fact) w l @lc3 ti 'CLMPAC', \
#-       @dir@re1@vnm using 1:($10*@fact) w l @lc4 ti 'CLMSST', \
#-       @dir@re1@vnm using 1:($11*@fact) w l @lc5 ti 'CONTRL', 0 w l lc rgb 'black' noti
#-

set origin 0.0, 0.6
set label 1 "Amazon" at "201301",-1.
plot  \
       @dir@re2@vnm using 1:($7 *@fact) w l @lc1 ti 'CLMATL', \
       @dir@re2@vnm using 1:($8 *@fact) w l @lc2 ti 'CLMIND', \
       @dir@re2@vnm using 1:($9 *@fact) w l @lc3 ti 'CLMPAC', \
       @dir@re2@vnm using 1:($10*@fact) w l @lc4 ti 'CLMSST', \
       @dir@re2@vnm using 1:($11*@fact) w l @lc5 ti 'CONTRL', 0 w l lc rgb 'black' noti


set origin 0.0, 0.4
set label 1 "West Africa" at "201301",-1.
plot \
       @dir@re3@vnm using 1:($7 *@fact) w l @lc1 ti 'CLMATL', \
       @dir@re3@vnm using 1:($8 *@fact) w l @lc2 ti 'CLMIND', \
       @dir@re3@vnm using 1:($9 *@fact) w l @lc3 ti 'CLMPAC', \
       @dir@re3@vnm using 1:($10*@fact) w l @lc4 ti 'CLMSST', \
       @dir@re3@vnm using 1:($11*@fact) w l @lc5 ti 'CONTRL', 0 w l lc rgb 'black' noti


set origin 0.0, 0.2
set label 1 "East Africa" at "201301",-1.
plot  \
       @dir@re4@vnm using 1:($7 *@fact) w l @lc1 ti 'CLMATL', \
       @dir@re4@vnm using 1:($8 *@fact) w l @lc2 ti 'CLMIND', \
       @dir@re4@vnm using 1:($9 *@fact) w l @lc3 ti 'CLMPAC', \
       @dir@re4@vnm using 1:($10*@fact) w l @lc4 ti 'CLMSST', \
       @dir@re4@vnm using 1:($11*@fact) w l @lc5 ti 'CONTRL', 0 w l lc rgb 'black' noti


set key on center bottom samplen 0.5 spacing 0.5 font "Times, 8" maxcols 2
set xtics
set origin 0.0, 0.0
set label 1 "Indonesia" at "201301",-1.
plot  \
       @dir@re5@vnm using 1:($7 *@fact) w l @lc1 ti 'CLMATL', \
       @dir@re5@vnm using 1:($8 *@fact) w l @lc2 ti 'CLMIND', \
       @dir@re5@vnm using 1:($9 *@fact) w l @lc3 ti 'CLMPAC', \
       @dir@re5@vnm using 1:($10*@fact) w l @lc4 ti 'CLMSST', \
       @dir@re5@vnm using 1:($11*@fact) w l @lc5 ti 'CONTRL', 0 w l lc rgb 'black' noti

unset multiplot
