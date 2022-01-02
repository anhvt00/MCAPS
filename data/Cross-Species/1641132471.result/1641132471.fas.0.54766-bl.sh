#!/bin/sh
#PBS -v PATH
#$ -v PATH


para=$1
cd /data5/data/webcomp/web-session/1641132471
./1641132471.fas.0.54766-bl.pl 0 $para &
./1641132471.fas.0.54766-bl.pl 1 $para &
./1641132471.fas.0.54766-bl.pl 2 $para &
./1641132471.fas.0.54766-bl.pl 3 $para &
wait

