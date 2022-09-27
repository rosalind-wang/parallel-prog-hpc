#! /usr/bin/env bash
#
#SBATCH --job-name=no_hello
#SBATCH --output=res.txt
#
#SBATCH --ntasks=1
#SBATCH --time=05:00
#SBATCH --mem-per-cpu=200

# move to the directory where the script/data are
cd paralProg 
if [[ -e hello.txt ]]
then 
  rm hello.txt
fi
