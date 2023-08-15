#!/bin/bash

module load rocm/5.3.3

FILE=jacobi-omp-rocm-copy-collapse

make clean

make CC=amdclang ${FILE}
#./${FILE} 
#./${FILE} 16384 16384

#export LIBOMPTARGET_PROFILE=prof-${FILE}.json 
#export LIBOMPTARGET_KERNEL_TRACE=1
export LIBOMPTARGET_INFO=33
srun -n 1 ./${FILE}


#srun -n 1 omniperf profile -n jacobi1iter -- ./${FILE} 4096 4096 1


#Nsys system
#nsys nvprof --openacc-profiling off -o prof-${FILE} ./${FILE}

#Nsys compute
#srun --ntasks-per-node 4 dcgmi profile --pause
#ncu -o prof-${FILE} ./${FILE}
#srun --ntasks-per-node 4 dcgmi profile --resume

