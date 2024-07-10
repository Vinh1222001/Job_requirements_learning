#!/bin/bash

case $1 in
start)
echo $(seq 1 5)
;;
stop)
echo stopping
;;
*)
echo dont\'t know
esac