#!/bin/bash
set -ex

#export PESTICA_DIR=/Users/mnh5174/Data_Analysis/psu_neuroimaging_workgroup/pestica4
export PESTICA_DIR=/gpfs/group/mnh5174/default/Nate/psu_neuroimaging_workgroup/pestica4
source $PESTICA_DIR/setup_pestica.sh

run_pestica.sh -d physio_sandbox/rest1
slicemoco_newalgorithm.sh -d rest1 -r
