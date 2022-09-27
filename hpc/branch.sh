#! /usr/bin/env bash
#
#SBATCH --job-name=ngon
#SBATCH --output=ngon_%A-%a_out.txt
#SBATCH --error=ngon_%A-%a_err.txt
#
#SBATCH --ntasks=1
#SBATCH --time=00:05
#SBATCH --mem-per-cpu=1G
#SBATCH --array=1-6

# load modules
module load python/3.8.5

# move to the directory where the script/data are
#cd 

data_file='input_data.txt'

# read the i-th line of the data file (where i is the array number)
# and stor it as "n"
n=$(sed -n ${SLURM_ARRAY_TASK_ID}p ${data_file})

echo "I'm array job number ${SLURM_ARRAY_TASK_ID}"
echo "My n-gon number is ${n}"

python3 paralProg/area_of_ngon.py --out ${n}-gon.txt ${n}

