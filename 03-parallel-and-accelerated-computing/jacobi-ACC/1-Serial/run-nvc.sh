#!/bin/bash

module load nvhpc/22.7

FILE=jacobi-serial

make clean

make CC=nvc ${FILE}
./${FILE}

#Nsys system
#nsys profile --gpu-metrics-device=all -o prof-${FILE}-nvc ./${FILE}

#Nsys compute
#srun --ntasks-per-node 4 dcgmi profile --pause
#ncu -o prof-${FILE}-nvc ./${FILE}
#srun --ntasks-per-node 4 dcgmi profile --resume

