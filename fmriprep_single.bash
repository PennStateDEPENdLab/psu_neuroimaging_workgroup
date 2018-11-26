#!/usr/bin/env sh

#PBS -N fmriprep_test
#PBS -A mnh5174_a_g_hc_default
#PBS -l nodes=1:ppn=8
#PBS -l walltime=30:00:00
#PBS -j oe
#PBS -M nth7@psu.edu
#PBS -m abe
#PBS -W group_list=mnh5174_collab

#env
cd $PBS_O_WORKDIR

#NI setup
source /gpfs/group/mnh5174/default/lab_resources/ni_path.bash

module use /gpfs/group/mnh5174/default/sw/modules

export PATH

fmriprep_wrapper -w fmriprep_work --n_cpus 8 --verbose --output-space template --write-graph --participant_label 083 --use-aroma  --template-resampling-grid native bids MR_Proc participant
