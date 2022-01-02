#!/bin/sh
#PBS -v PATH
#$ -v PATH


para=$1
cd /data5/data/webcomp/web-session/1641132169
./1641132169.fas.0.42288-bl.pl 0 $para &
./1641132169.fas.0.42288-bl.pl 1 $para &
./1641132169.fas.0.42288-bl.pl 2 $para &
./1641132169.fas.0.42288-bl.pl 3 $para &
wait

