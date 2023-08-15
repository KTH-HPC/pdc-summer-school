#!/bin/bash
#SBATCH -A m4093_g
#SBATCH -C gpu
#SBATCH -q regular
#SBATCH -t 0:30:00
#SBATCH -N 1
#SBATCH --ntasks-per-node=4
#SBATCH -c 32
#SBATCH --gpus-per-task=1
#SBATCH -J SMIjacobi
#SBATCH -o %x-%j.out

OUTPUT_FILE="nvidia-smi-output.txt"

run_nvidia_smi() {
    while true; do
        nvidia-smi >> "$OUTPUT_FILE"
        sleep 2
    done
}

run_nvidia_smi &

nvidia_smi_pid=$!

./jacobi-acc-copy 16384 16384 &

executable_pid=$!

while true; do
    # Check if the executable job has ended
    if ! ps -p "$executable_pid" > /dev/null; then
        break
    fi
    sleep 1
done

