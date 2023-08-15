#!/bin/bash

module load llvm/nightly

FILE=jacobi-omp-llvm-copy-collapse

make clean

make CC=clang ${FILE}
./${FILE} 16384 16384

#LIBOMPTARGET_PROFILE=prof-${FILE}.json ./${FILE}


#Nsys system
#nsys nvprof --openacc-profiling off -o prof-${FILE} ./${FILE}

#Nsys compute
#srun --ntasks-per-node 4 dcgmi profile --pause
#ncu -o prof-${FILE} ./${FILE}
#srun --ntasks-per-node 4 dcgmi profile --resume

