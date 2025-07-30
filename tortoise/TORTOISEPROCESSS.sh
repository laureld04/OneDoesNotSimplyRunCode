dire=/xdisk/hutchinsone/Data/Projects/EV_Ferret_Tauopathy/Cohort_dc/sub-C01F08/ses-1/dwi
u=$dire/sub-C01F08_ses-1_RL_dwi_combined.nii
d=$dire/sub-C01F08_ses-1_LR_dwi_combined.nii
s=/xdisk/hutchinsone/Data/Projects/EV_Ferret_Tauopathy/Cohort_dc/sub-C01F08/ses-1/t2/sub-C01F08_ses-1_echo-1_MESE.nii.gz
ub=$dire/sub-C01F08_ses-1_RL_dwi_combined.bvals
uv=$dire/sub-C01F08_ses-1_RL_dwi_combined.bvecs
db=$dire/sub-C01F08_ses-1_LR_dwi_combined.bvals
dv=$dire/sub-C01F08_ses-1_LR_dwi_combined.bvecs
up_json=$dire/sub-C01F08_ses-1_RL_dwi_combined.json
mask=/xdisk/hutchinsone/Data/Projects/EV_Ferret_Tauopathy/Cohort_dc/sub-C01F08/ses-1/t2/sub-C01F08_T2_mask.nii
o=$dire/sub-C01F08_ses-1_dwi_combined_final_test_no_bmtxt_n_w_mask.nii
/xdisk/hutchinsone/Programming/TORTOISE_V4/bin/TORTOISEProcess -u $u --up_json $up_json -d $d -s $s --ub $ub --uv $uv --db $db --dv $dv --is_human_brain 0 -c motion -o $o --b0_mask_img $mask

