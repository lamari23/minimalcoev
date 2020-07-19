#!/bin/bash
# The interpreter used to execute the script

#“#SBATCH” directives that convey submission options:

#SBATCH --job-name=la_job
#SBATCH --mail-user=lamari@umich.edu
#SBATCH --mail-type=BEGIN,END
#SBATCH --cpus-per-task=1
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=1000m 
#SBATCH --time=2:00:00
#SBATCH --account=lsa1
#SBATCH --partition=standard
#SBATCH --output=/home/%u/MinimalCoevolution/%x-%j.log
#SBATCH --array=1-5

# The application(s) to execute along with its input arguments and options:
cd /home/lamari/MinimalCoevolution/
./avida -s $SLURM_ARRAY_TASK_ID  -set DATA_DIR /home/lamari/MinimalCoevolution/data/data_$SLURM_ARRAY_TASK_ID

