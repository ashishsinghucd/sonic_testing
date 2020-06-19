#!/bin/bash -l
#SBATCH -N 1
#SBATCH -t 10:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ashish.singh@ucdconnect.ie
#SBATCH --job-name=gpu_testing_sonic

#SBATCH -o /home/people/19205522/scratch/slurm_logs/%x-%N-%j.out    # Output file
#SBATCH -e /home/people/19205522/scratch/slurm_logs/%x-%N-%j.err   # Error file

#SBATCH --partition=csgpu
#SBATCH --gres=gpu:1
#SBATCH --ntasks-per-node=2

# Command to submit the job sbatch --partition=csgpu submit_dl_sonic.sh
# srun --nodes=1 --ntasks=14 --partition=csgpu  --gres=gpu:1 --time=24:00:00 --mem=28GB --pty /bin/bash -l

nvidia-smi

export SLURM_SUBMIT_DIR=/home/people/19205522/Research/Codes/sonic_testing
export PYTHONPATH=$PYTHONPATH:$SLURM_SUBMIT_DIR

cd $SLURM_SUBMIT_DIR/
module load cuda/10.0
module load python/3.7.4

#module load anaconda/3.2019.3
#conda activate /home/people/19205522/.conda/envs/ml_gpu/
python3.7 -c 'import tensorflow as tf; print(tf.__version__)'
python3.7 -c 'import keras; print(keras.__version__)'
time python3.7 testing_gpu.py

date;
 