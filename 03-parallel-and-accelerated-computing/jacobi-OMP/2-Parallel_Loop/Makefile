

ifeq ($(CC), clang)
   FLAGS ?= -Ofast -fopenmp --offload-arch=native -g -Rpass=openmp-opt -Rpass-missed=openmp-opt -Rpass-analysis=openmp-opt
   #FLAGS ?= -Ofast -fopenmp -fopenmp-targets=amdgcn-amd-amdhsa -Xopenmp-target=amdgcn-amd-amdhsa -march=gfx90a -g -Rpass=openmp-opt -Rpass-missed=openmp-opt -Rpass-analysis=openmp-opt
else ifeq ($(CC), amdclang)
   FLAGS ?= -Ofast -fopenmp -g --offload-arch=gfx90a
else ifeq ($(CC), gcc)
   FLAGS ?= -Ofast -fopenmp -lm -g
else ifeq ($(CC), nvc)
   FLAGS ?= -fast -mp=gpu -Minfo=all
endif

jacobi-omp-rocm-loop: jacobi.c
	$(CC) $(FLAGS) -o jacobi-omp-rocm-loop jacobi.c

jacobi-omp-llvm-loop: jacobi.c
	$(CC) $(FLAGS) -o jacobi-omp-llvm-loop jacobi.c

jacobi-omp-nvc-loop: jacobi.c
	$(CC) $(FLAGS) -o jacobi-omp-nvc-loop jacobi.c

clean:
	rm -f jacobi-omp-llvm-loop jacobi-omp-nvc-loop jacobi-omp-rocm-loop

