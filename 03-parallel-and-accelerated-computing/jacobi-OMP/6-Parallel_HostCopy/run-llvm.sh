#!/bin/bash

module load llvm/nightly

FILE=jacobi-omp-llvm-host

make clean

make CC=clang ${FILE}
OMP_NUM_THREADS=128 ./${FILE} 16384 16384

#OMP_TARGET_OFFLOAD=disabled ./${FILE}
#LIBOMPTARGET_PROFILE=prof-${FILE}.json ./${FILE}


#Nsys system
#nsys profile --gpu-metrics-device=all -o prof-${FILE} ./${FILE}

#Nsys compute
#srun --ntasks-per-node 4 dcgmi profile --pause
#ncu -o prof-${FILE} ./${FILE}
#srun --ntasks-per-node 4 dcgmi profile --resume

