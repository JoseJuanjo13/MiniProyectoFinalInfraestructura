#!/bin/bash

NOMBRE="Reporte"

cat inicial.txt >$NOMBRE.html

free --mega | head -2 | tail -1 | cut -d" " -f1,21 | awk {'print "['\''"$1"'\'',"$2"],"'} >>$NOMBRE.html
top -n 2 | head -3 | tail -1 | cut -d" " -f1,3 | awk {'print "['\''"$1"'\'',"$2"],"'} >>$NOMBRE.html
speedtest | tail -1 | cut -d" " -f1,2 | awk {'print "['\''"$1"'\'',"$2"],"'} >>$NOMBRE.html

cat final.txt >>$NOMBRE.html
