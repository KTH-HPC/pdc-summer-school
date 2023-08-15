#!/bin/bash

module load llvm/nightly

FILE=jacobi-serial

make CC=clang ${FILE}
./${FILE}

gprof ./${FILE}

#Nsys system
#nsys profile --gpu-metrics-device=all -o prof-${FILE}-nvc ./${FILE}

#Nsys compute
#srun --ntasks-per-node 4 dcgmi profile --pause
#ncu -o prof-${FILE}-nvc ./${FILE}
#srun --ntasks-per-node 4 dcgmi profile --resume

