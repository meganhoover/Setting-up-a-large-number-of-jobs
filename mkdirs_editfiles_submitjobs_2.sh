#!/bin/sh
#----------------------------------------
# Copyright © Megan Hoover
# 1/8/2020
# PhD student at Clemson University
# This script makes directories, copies initial files from 'files directory' into each directory, edits the copied files, and submits the job.
#----------------------------------------

LDIR="NBANDS_126"

(mkdir "$LDIR" && cp ./files/* "$LDIR" && cd "$LDIR" && changename "$LDIR" && sed -i "s/jobname/$LDIR/" vasp.pbs && qsub vasp.pbs) || {
    echo -e "ERROR: failure running in $LDIR"
  }

LDIR="NBANDS_130"

(mkdir "$LDIR" && cp ./files/* "$LDIR" && cd "$LDIR" && changename "$LDIR" && sed -i "11s/126/130/g" INCAR && sed -i "s/jobname/$LDIR/" vasp.pbs && qsub vasp.pbs) || {
    echo -e "ERROR: failure running in $LDIR"
  }

LDIR="NBANDS_134"

(mkdir "$LDIR" && cp ./files/* "$LDIR" && cd "$LDIR" && changename "$LDIR" && sed -i "11s/126/134/g" INCAR && sed -i "s/jobname/$LDIR/" vasp.pbs && qsub vasp.pbs) || {
    echo -e "ERROR: failure running in $LDIR"
  }

LDIR="NBANDS_138"

(mkdir "$LDIR" && cp ./files/* "$LDIR" && cd "$LDIR" && changename "$LDIR" && sed -i "11s/126/138/g" INCAR && sed -i "s/jobname/$LDIR/" vasp.pbs && qsub vasp.pbs) || {
    echo -e "ERROR: failure running in $LDIR"
  }

LDIR="NBANDS_142"

(mkdir "$LDIR" && cp ./files/* "$LDIR" && cd "$LDIR" && changename "$LDIR" && sed -i "11s/126/142/g" INCAR && sed -i "s/jobname/$LDIR/" vasp.pbs && qsub vasp.pbs) || {
    echo -e "ERROR: failure running in $LDIR"
  }

LDIR="NBANDS_146"

(mkdir "$LDIR" && cp ./files/* "$LDIR" && cd "$LDIR" && changename "$LDIR" && sed -i "11s/126/146/g" INCAR && sed -i "s/jobname/$LDIR/" vasp.pbs && qsub vasp.pbs) || {
    echo -e "ERROR: failure running in $LDIR"
  }

LDIR="NBANDS_150"

(mkdir "$LDIR" && cp ./files/* "$LDIR" && cd "$LDIR" && changename "$LDIR" && sed -i "11s/126/150/g" INCAR && sed -i "s/jobname/$LDIR/" vasp.pbs && qsub vasp.pbs) || {
    echo -e "ERROR: failure running in $LDIR"
  }

