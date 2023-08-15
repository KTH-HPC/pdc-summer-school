#!/bin/bash

module load rocm/5.3.3

FILE=jacobi-omp-rocm-host

make clean

make CC=amdclang ${FILE}
export OMP_NUM_THREADS=128 
srun -n 1 ./${FILE}

#OMP_TARGET_OFFLOAD=disabled ./${FILE}
#LIBOMPTARGET_PROFILE=prof-${FILE}.json ./${FILE}


#Nsys system
#nsys profile --gpu-metrics-device=all -o prof-${FILE} ./${FILE}

#Nsys compute
#srun --ntasks-per-node 4 dcgmi profile --pause
#ncu -o prof-${FILE} ./${FILE}
#srun --ntasks-per-node 4 dcgmi profile --resume

