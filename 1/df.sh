#!/bin/bash

NOMBRE="Reporte"

cat inicial.txt >$NOMBRE.html

df | tail -n +2 | awk {'print "['\''"$1"'\'',"$3"],"'} >>$NOMBRE.html

cat final.txt >>$NOMBRE.html
