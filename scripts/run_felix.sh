#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=myjob
#SBATCH --output=myjob%j.out
#SBATCH --error=myjob%j.err

mpirun -np 1 ~/felix
