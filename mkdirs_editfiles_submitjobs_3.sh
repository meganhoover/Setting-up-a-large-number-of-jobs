#!/bin/sh
#----------------------------------------
# Copyright © Megan Hoover
# 1/8/2020
# PhD student at Clemson University
# This script makes directories, copies initial files into those directories, edits those copied files, and submits the job.
#----------------------------------------

LDIR="211_spin1_T2"

(cp ./files/* "$LDIR" && cd "$LDIR" && changename "$LDIR" && sed -i '35d' INCAR_GO && sed -i "35i \ MAGMOM = 128*0 32*0 16*-2 16*2" INCAR_GO && sed -n '35p' INCAR_GO | sed -i -e '35r /dev/stdin' -e '35d' INCAR_SPE && cp INCAR_GO INCAR && sed -i "s/jobname/$LDIR/" vasp_go.pbs && sed -i "s/jobname/$LDIR/" vasp_spe.pbs) || {
    echo -e "ERROR: failure running in $LDIR"
  }

LDIR="211_spin2_T2"

(cp ./files/* "$LDIR" && cd "$LDIR" && changename "$LDIR" && sed -i '35d' INCAR_GO && sed -i "35i \ MAGMOM = 128*0 32*0 2 -2 2 -2 2 -2 3*2 -2 2 -2 2 -2 4*2 -2 2 -2 2 -2 3*2 -2 2 -2 2 -2 2" INCAR_GO && sed -n '35p' INCAR_GO | sed -i -e '35r /dev/stdin' -e '35d' INCAR_SPE && cp INCAR_GO INCAR && sed -i "s/jobname/$LDIR/" vasp_go.pbs && sed -i "s/jobname/$LDIR/" vasp_spe.pbs) || {
    echo -e "ERROR: failure running in $LDIR"
  }

LDIR="211_spin3_T2"

(cp ./files/* "$LDIR" && cd "$LDIR" && changename "$LDIR" && sed -i '35d' INCAR_GO && sed -i "35i \ MAGMOM = 128*0 32*0 -2 2 -2 2 -2 2 3*-2 2 -2 2 -2 2 2*-2 2*2 -2 2 -2 2 -2 3*2 -2 2 -2 2 -2 2" INCAR_GO && sed -n '35p' INCAR_GO | sed -i -e '35r /dev/stdin' -e '35d' INCAR_SPE && cp INCAR_GO INCAR && sed -i "s/jobname/$LDIR/" vasp_go.pbs && sed -i "s/jobname/$LDIR/" vasp_spe.pbs) || {
    echo -e "ERROR: failure running in $LDIR"
  }
