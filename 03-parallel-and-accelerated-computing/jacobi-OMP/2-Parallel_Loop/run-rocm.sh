#!/bin/bash

module load craype-accel-amd-gfx90a
module load rocm/5.3.3

FILE=jacobi-omp-rocm-loop

make clean

make CC=amdclang ${FILE}
#./${FILE}

#export LIBOMPTARGET_PROFILE=prof-${FILE}.json 
export LIBOMPTARGET_KERNEL_TRACE=1
srun -n 1 ./${FILE}


#Nsys system
#nsys nvprof --openacc-profiling off -o prof-${FILE} ./${FILE}

#Nsys compute
#srun --ntasks-per-node 4 dcgmi profile --pause
#ncu -o prof-${FILE} ./${FILE}
#srun --ntasks-per-node 4 dcgmi profile --resume

