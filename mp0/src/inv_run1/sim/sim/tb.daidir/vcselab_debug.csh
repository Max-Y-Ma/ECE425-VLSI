#!/bin/csh -f

cd /home/maxma2/Documents/Coursework/ece425/mp0/src/inv_run1/sim/sim

#This ENV is used to avoid overriding current script in next vcselab run 
setenv SNPS_VCSELAB_SCRIPT_NO_OVERRIDE  1

/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/bin/vcselab $* \
    -o \
    tb \
    -nobanner \

cd -

