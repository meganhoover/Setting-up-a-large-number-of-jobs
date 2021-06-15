#!/bin/sh
#----------------------------------------
# Copyright © Megan Hoover
# 1/8/2020
# PhD student at Clemson University
# This script was created with the help of @author Nick Lee <devpanda33@gmail.com>
# This script makes directories, copies initial files into those directories, edits those copied files, and submits the job. Specific for VASP initial files.
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
