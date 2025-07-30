
brkraw bids_convert F_IV_Cohort.csv -o Cohort -j F_IV_Cohort.json --ignore-rescale

#--ignore-rescale required for dwi images.
#must re-run without this to also get mge properly read in (cbd pending effects from this)
