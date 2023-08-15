#!/bin/bash

module load rocm/5.3.3

FILE=jacobi-omp-rocm-copy

make clean

make CC=amdclang ${FILE}
#./${FILE}

#export LIBOMPTARGET_PROFILE=prof-${FILE}.json 
#export export LIBOMPTARGET_KERNEL_TRACE=1
export export LIBOMPTARGET_INFO=33
srun -n 1 ./${FILE}


#Nsys system
#nsys nvprof --openacc-profiling off -o prof-${FILE} ./${FILE}

#Nsys compute
#srun --ntasks-per-node 4 dcgmi profile --pause
#ncu -o prof-${FILE} ./${FILE}
#srun --ntasks-per-node 4 dcgmi profile --resume

