#!/bin/sh
#----------------------------------------
# Copyright © Megan Hoover
# 2/15/2020
# PhD student at Clemson University 
# This script makes directories, copies initial files into those directories, edits those copied files, and submits the job.
#----------------------------------------

DIR="Sr_S1"

(mkdir "$DIR" && cp ./files/* "$DIR" && cd "$DIR" && changename "$DIR" && mv POSCAR_surface POSCAR && sed -i '19d' INCAR_GO && sed -i "19i \ MAGMOM = 0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.58 -0.58 0.58   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.58 -0.58 0.58   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0" INCAR_GO && sed -n '19p' INCAR_GO | sed -i -e '19r /dev/stdin' -e '19d' INCAR_SPE && cp INCAR_GO INCAR && sed -i "s/jobname/$DIR/" vasp_go.pbs && sed -i "s/jobname/$DIR/" vasp_spe.pbs && qsub vasp_go.pbs) || {
    echo -e "ERROR: failure running in $LDIR"
  }

DIR="Sr_S2"

(mkdir "$DIR" && cp ./files/* "$DIR" && cd "$DIR" && changename "$DIR" && mv POSCAR_surface POSCAR && sed -i '19d' INCAR_GO && sed -i "19i \ MAGMOM = 0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.58 -0.58 -0.58   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.58 -0.58 0.58   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0" INCAR_GO && sed -n '19p' INCAR_GO | sed -i -e '19r /dev/stdin' -e '19d' INCAR_SPE && cp INCAR_GO INCAR && sed -i "s/jobname/$DIR/" vasp_go.pbs && sed -i "s/jobname/$DIR/" vasp_spe.pbs && qsub vasp_go.pbs) || {
    echo -e "ERROR: failure running in $LDIR"
  }

DIR="Sr_SSub1"

(mkdir "$DIR" && cp ./files/* "$DIR" && cd "$DIR" && changename "$DIR" && mv POSCAR_surface POSCAR && sed -i '19d' INCAR_GO && sed -i "19i \ MAGMOM = 0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.58 0.58 0.58   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.58 -0.58 0.58   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0" INCAR_GO && sed -n '19p' INCAR_GO | sed -i -e '19r /dev/stdin' -e '19d' INCAR_SPE && cp INCAR_GO INCAR && sed -i "s/jobname/$DIR/" vasp_go.pbs && sed -i "s/jobname/$DIR/" vasp_spe.pbs && qsub vasp_go.pbs) || {
    echo -e "ERROR: failure running in $LDIR"
  }

DIR="Sr_SSub2"

(mkdir "$DIR" && cp ./files/* "$DIR" && cd "$DIR" && changename "$DIR" && mv POSCAR_surface POSCAR && sed -i '19d' INCAR_GO && sed -i "19i \ MAGMOM = 0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.58 -0.58 0.58   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.58 0.58 -0.58   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0" INCAR_GO && sed -n '19p' INCAR_GO | sed -i -e '19r /dev/stdin' -e '19d' INCAR_SPE && cp INCAR_GO INCAR && sed -i "s/jobname/$DIR/" vasp_go.pbs && sed -i "s/jobname/$DIR/" vasp_spe.pbs && qsub vasp_go.pbs) || {
    echo -e "ERROR: failure running in $LDIR"
  }

DIR="Sr_SSub3"

(mkdir "$DIR" && cp ./files/* "$DIR" && cd "$DIR" && changename "$DIR" && mv POSCAR_surface POSCAR && sed -i '19d' INCAR_GO && sed -i "19i \ MAGMOM = 0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.58 0.58 0.58   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.58 -0.58 -0.58   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0" INCAR_GO && sed -n '19p' INCAR_GO | sed -i -e '19r /dev/stdin' -e '19d' INCAR_SPE && cp INCAR_GO INCAR && sed -i "s/jobname/$DIR/" vasp_go.pbs && sed -i "s/jobname/$DIR/" vasp_spe.pbs && qsub vasp_go.pbs) || {
    echo -e "ERROR: failure running in $LDIR"
  }

DIR="Sr_Sub1"

(mkdir "$DIR" && cp ./files/* "$DIR" && cd "$DIR" && changename "$DIR" && mv POSCAR_subsurface POSCAR && sed -i '19d' INCAR_GO && sed -i "19i \ MAGMOM = 0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.58 0.58 -0.58   0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.58 0.58 -0.58   0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0" INCAR_GO && sed -n '19p' INCAR_GO | sed -i -e '19r /dev/stdin' -e '19d' INCAR_SPE && cp INCAR_GO INCAR && sed -i "s/jobname/$DIR/" vasp_go.pbs && sed -i "s/jobname/$DIR/" vasp_spe.pbs && qsub vasp_go.pbs) || {
    echo -e "ERROR: failure running in $LDIR"
  }

DIR="Sr_Sub2"

(mkdir "$DIR" && cp ./files/* "$DIR" && cd "$DIR" && changename "$DIR" && mv POSCAR_subsurface POSCAR && sed -i '19d' INCAR_GO && sed -i "19i \ MAGMOM = 0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.58 0.58 0.58   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.58 0.58 -0.58   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0" INCAR_GO && sed -n '19p' INCAR_GO | sed -i -e '19r /dev/stdin' -e '19d' INCAR_SPE && cp INCAR_GO INCAR && sed -i "s/jobname/$DIR/" vasp_go.pbs && sed -i "s/jobname/$DIR/" vasp_spe.pbs && qsub vasp_go.pbs) || {
    echo -e "ERROR: failure running in $LDIR"
  }

DIR="Sr_SubS1"

(mkdir "$DIR" && cp ./files/* "$DIR" && cd "$DIR" && changename "$DIR" && mv POSCAR_subsurface POSCAR && sed -i '19d' INCAR_GO && sed -i "19i \ MAGMOM = 0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.58 -0.58 -0.58   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.58 0.58 -0.58   0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79  -0.79 0.79 -0.79  0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0 " INCAR_GO && sed -n '19p' INCAR_GO | sed -i -e '19r /dev/stdin' -e '19d' INCAR_SPE && cp INCAR_GO INCAR && sed -i "s/jobname/$DIR/" vasp_go.pbs && sed -i "s/jobname/$DIR/" vasp_spe.pbs && qsub vasp_go.pbs) || {
    echo -e "ERROR: failure running in $LDIR"
  }

DIR="Sr_SubS2"

(mkdir "$DIR" && cp ./files/* "$DIR" && cd "$DIR" && changename "$DIR" && mv POSCAR_subsurface POSCAR && sed -i '19d' INCAR_GO && sed -i "19i \ MAGMOM = 0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.58 -0.58 0.58   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.58 0.58 -0.58   0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79  -0.79 0.79 -0.79   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0" INCAR_GO && sed -n '19p' INCAR_GO | sed -i -e '19r /dev/stdin' -e '19d' INCAR_SPE && cp INCAR_GO INCAR && sed -i "s/jobname/$DIR/" vasp_go.pbs && sed -i "s/jobname/$DIR/" vasp_spe.pbs && qsub vasp_go.pbs) || {
    echo -e "ERROR: failure running in $LDIR"
  }

DIR="Sr_SubS3"

(mkdir "$DIR" && cp ./files/* "$DIR" && cd "$DIR" && changename "$DIR" && mv POSCAR_subsurface POSCAR && sed -i '19d' INCAR_GO && sed -i "19i \ MAGMOM = 0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.79 -0.79 -0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79   0.79 0.79 0.79   0.79 0.79 0.79   0.58 0.58 0.58   0.79 -0.79 -0.79   0.79 -0.79 -0.79   0.58 -0.58 -0.58   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 -0.79 0.79   -0.79 0.79 -0.79   -0.79 0.79 -0.79  -0.79 0.79 -0.79   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0   0 0 0" INCAR_GO && sed -n '19p' INCAR_GO | sed -i -e '19r /dev/stdin' -e '19d' INCAR_SPE && cp INCAR_GO INCAR && sed -i "s/jobname/$DIR/" vasp_go.pbs && sed -i "s/jobname/$DIR/" vasp_spe.pbs && qsub vasp_go.pbs) || {
    echo -e "ERROR: failure running in $LDIR"
  }