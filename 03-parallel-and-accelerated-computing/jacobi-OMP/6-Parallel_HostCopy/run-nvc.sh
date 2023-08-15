#!/bin/bash

module load nvhpc/22.7

FILE=jacobi-omp-nvc-host

make clean

make CC=nvc ${FILE}
OMP_NUM_THREADS=128 ./${FILE} 16384 16384

#Nsys system
#nsys profile --gpu-metrics-device=all -o prof-${FILE}-nvc ./${FILE}

#Nsys compute
#srun --ntasks-per-node 4 dcgmi profile --pause
#ncu -o prof-${FILE}-nvc ./${FILE}
#srun --ntasks-per-node 4 dcgmi profile --resume

