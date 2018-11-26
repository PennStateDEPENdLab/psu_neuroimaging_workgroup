#!/bin/bash

#takes single subject's raw data in nifti format and manually converts to bids-compliant format for testing pipeline comparison scripts. once this is scaled up, the goal will be to use heudiconv to transfer data en masse.

#start by copying the physio_sandbox folder from box to your github-linked folder prior to running this script. Then start by creating a bids folder and go from there:

mkdir bids
mkdir bids/sub-083
mkdir bids/sub-083/anat
mkdir bids/sub-083/fmap
mkdir bids/sub-083/func

#T1-weighted data
mv physio_sandbox/02_t1_mprage_sag_p2_iso.nii.gz  bids/sub-083/anat/sub-083_T1w.nii.gz
mv physio_sandbox/02_t1_mprage_sag_p2_iso.json  bids/sub-083/anat/sub-083_T1w.json

#functional RS data
mv physio_sandbox/03_rest_sbref.json  bids/sub-083/func/sub-083_task-rest_run-01_sbref.json
mv physio_sandbox/03_rest_sbref.nii.gz  bids/sub-083/func/sub-083_task-rest_run-01_sbref.nii.gz
mv physio_sandbox/04_rest.json  bids/sub-083/func/sub-083_task-rest_run-01_bold.json
mv physio_sandbox/04_rest.nii.gz  bids/sub-083/func/sub-083_task-rest_run-01_bold.nii.gz

#fieldmaps
mv physio_sandbox/11_cmrr_mbep2d_se_1_PA.json  bids/sub-083/fmap/sub-083_dir-PA_epi.json
mv physio_sandbox/11_cmrr_mbep2d_se_1_PA.nii.gz  bids/sub-083/fmap/sub-083_dir-PA_epi.nii.gz

mv physio_sandbox/12_cmrr_mbep2d_se_1_AP.json  bids/sub-083/fmap/sub-083_dir-AP_epi.json
mv physio_sandbox/12_cmrr_mbep2d_se_1_AP.nii.gz  bids/sub-083/fmap/sub-083_dir-AP_epi.nii.gz

###TBD: convert monitored physio to BIDS compatible 

###create directories for fMRIprep work and output
mkdir fmriprep_work
mkdir MR_Proc
