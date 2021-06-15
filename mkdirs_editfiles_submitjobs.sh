#!/bin/sh
#----------------------------------------
# Copyright © Megan Hoover
# 1/8/2020
# PhD student at Clemson University
# This script was created with the help of @author Nick Lee <devpanda33@gmail.com>
# This script makes directories, copies initial files into those directories, edits those copied files, and submits the job. Specific for VASP initial files.
#----------------------------------------

# Loop to create directories
for (( m=330; m<=360; m+=1 )); do
  n=$(bc <<<"scale=2; $m/100")
  DIR="${n}_Dudarev_nc"

  (mkdir "$DIR" && cp ./files/* "$DIR" && cd "$DIR" && changename "$DIR" && sed -i "s/4\.51/$(echo ${n//./\\.})/" INCAR_GO && sed -i "s/4\.51/$(echo ${n//./\\.})/" INCAR_SPE && sed -i "s/jobname/$DIR/" vasp-GO_SPE.pbs && qsub vasp-GO_SPE.pbs) || {
    echo -e "ERROR: failure running in $DIR"
  }

  LDIR="${n}_Liech_nc"

  (mkdir "$LDIR" && cp ./files/* "$LDIR" && cd "$LDIR" && changename "$LDIR" && sed -i "39s/2/1/" INCAR_GO && sed -i "39s/2/1/" INCAR_SPE && sed -i "s/4\.51/$(echo ${n//./\\.})/" INCAR_GO && sed -i "s/4\.51/$(echo ${n//./\\.})/" INCAR_SPE && sed -i "s/jobname/$LDIR/" vasp-GO_SPE.pbs && qsub vasp-GO_SPE.pbs) || {
    echo -e "ERROR: failure running in $LDIR"
  }

done


