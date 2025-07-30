dire=/xdisk/hutchinsone/Data/Projects/EV_Ferret_Tauopathy/Cohort_dc/sub-C01F01/ses-1/dwi
input_dwi=$dire/sub-C01F01_ses-1_RL_dwi_combined.nii

/xdisk/hutchinsone/Programming/TORTOISE_V4/bin/CreateDummyJson -i $input_dwi -p i+ --big_delta --small_delta 5 --big_delta 20

