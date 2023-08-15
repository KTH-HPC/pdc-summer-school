#!/bin/bash

module load rocm/5.3.3

FILE=jacobi-serial

make CC=amdclang ${FILE}
./${FILE}

gprof ./${FILE}

#Nsys system
#nsys profile --gpu-metrics-device=all -o prof-${FILE}-nvc ./${FILE}

#Nsys compute
#srun --ntasks-per-node 4 dcgmi profile --pause
#ncu -o prof-${FILE}-nvc ./${FILE}
#srun --ntasks-per-node 4 dcgmi profile --resume

