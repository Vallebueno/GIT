#!/usr/bin/bash
## SLURM directives
#SBATCH --job-name=SeeD_Tar
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --output=SeeD_Tar_%a.log
#SBATCH --time=08:00:00
#SBATCH --qos=short  
#SBATCH --array=1-17

# End SLURM directives
###########################################
# Load modules


##########################################
# Main
cd ${SLURM_SUBMIT_DIR}

tar=`ls *.tar | head -n ${SLURM_ARRAY_TASK_ID} | tail -n 1`

tar -xf $tar -C /scratch-cbe/users/miguel.vallebueno/splited



echo "job finished!!..."

