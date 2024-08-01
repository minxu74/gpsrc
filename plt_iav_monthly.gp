set term postscript portrait color enhanced solid
set output 'iav_gpp.ps'

set macros


dir="'/scratch1/scratchdirs/minxu/enso_analytics/data/sen/temp/"

vnm="_GPP_ts.txt'"

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


fact="86400"

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

set yrange [-0.35:0.35]
set ytics -0.3,0.1,0.3

set label 2 "GPP anomalies (gC/m^2/day)" center rotate by 90 at screen 0,0.5
set origin 0.0, 0.8
set label 1 "Tropics" at "201301",0.28
plot  \
       @dir@re1@vnm using 1:($7 *@fact) w l @lc1 ti 'CLMATL', \
       @dir@re1@vnm using 1:($8 *@fact) w l @lc2 ti 'CLMIND', \
       @dir@re1@vnm using 1:($9 *@fact) w l @lc3 ti 'CLMPAC', \
       @dir@re1@vnm using 1:($10*@fact) w l @lc4 ti 'CLMSST', \
       @dir@re1@vnm using 1:($11*@fact) w l @lc5 ti 'CONTRL', 0 w l lc rgb 'black' noti


set origin 0.0, 0.6
set label 1 "Amazon" at "201301",0.28
plot  \
       @dir@re2@vnm using 1:($7 *@fact) w l @lc1 ti 'CLMATL', \
       @dir@re2@vnm using 1:($8 *@fact) w l @lc2 ti 'CLMIND', \
       @dir@re2@vnm using 1:($9 *@fact) w l @lc3 ti 'CLMPAC', \
       @dir@re2@vnm using 1:($10*@fact) w l @lc4 ti 'CLMSST', \
       @dir@re2@vnm using 1:($11*@fact) w l @lc5 ti 'CONTRL', 0 w l lc rgb 'black' noti


set origin 0.0, 0.4
set label 1 "West Africa" at "201301",0.28
plot \
       @dir@re3@vnm using 1:($7 *@fact) w l @lc1 ti 'CLMATL', \
       @dir@re3@vnm using 1:($8 *@fact) w l @lc2 ti 'CLMIND', \
       @dir@re3@vnm using 1:($9 *@fact) w l @lc3 ti 'CLMPAC', \
       @dir@re3@vnm using 1:($10*@fact) w l @lc4 ti 'CLMSST', \
       @dir@re3@vnm using 1:($11*@fact) w l @lc5 ti 'CONTRL', 0 w l lc rgb 'black' noti


set origin 0.0, 0.2
set label 1 "East Africa" at "201301",0.28
plot  \
       @dir@re4@vnm using 1:($7 *@fact) w l @lc1 ti 'CLMATL', \
       @dir@re4@vnm using 1:($8 *@fact) w l @lc2 ti 'CLMIND', \
       @dir@re4@vnm using 1:($9 *@fact) w l @lc3 ti 'CLMPAC', \
       @dir@re4@vnm using 1:($10*@fact) w l @lc4 ti 'CLMSST', \
       @dir@re4@vnm using 1:($11*@fact) w l @lc5 ti 'CONTRL', 0 w l lc rgb 'black' noti


set key on center bottom samplen 0.5 spacing 0.5 font "Times, 8" maxcols 2
set xtics
set origin 0.0, 0.0
set label 1 "Indonesia" at "201301",0.28
plot  \
       @dir@re5@vnm using 1:($7 *@fact) w l @lc1 ti 'CLMATL', \
       @dir@re5@vnm using 1:($8 *@fact) w l @lc2 ti 'CLMIND', \
       @dir@re5@vnm using 1:($9 *@fact) w l @lc3 ti 'CLMPAC', \
       @dir@re5@vnm using 1:($10*@fact) w l @lc4 ti 'CLMSST', \
       @dir@re5@vnm using 1:($11*@fact) w l @lc5 ti 'CONTRL', 0 w l lc rgb 'black' noti

unset multiplot
