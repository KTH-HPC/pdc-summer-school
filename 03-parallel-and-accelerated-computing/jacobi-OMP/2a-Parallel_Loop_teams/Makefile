
ifeq ($(CC), clang)
   FLAGS ?= -Ofast -fopenmp --offload-arch=native -g -Rpass=openmp-opt -Rpass-missed=openmp-opt -Rpass-analysis=openmp-opt
   #-pg -fno-inline
else ifeq ($(CC), amdclang)
   FLAGS ?= -Ofast -fopenmp -g --offload-arch=gfx90a
else ifeq ($(CC), gcc)
   FLAGS ?= -Ofast -fopenmp -lm -g
else ifeq ($(CC), nvc)
   FLAGS ?= -fast -mp=gpu -Minfo=all
endif

jacobi-omp-rocm-loop-teams: jacobi.c
	$(CC) $(FLAGS) -o jacobi-omp-rocm-loop-teams jacobi.c

jacobi-omp-llvm-loop-teams: jacobi.c
	$(CC) $(FLAGS) -o jacobi-omp-llvm-loop-teams jacobi.c

jacobi-omp-nvc-loop-teams: jacobi.c
	$(CC) $(FLAGS) -o jacobi-omp-nvc-loop-teams jacobi.c

clean:
	rm -f jacobi-omp-llvm-loop-teams jacobi-omp-nvc-loop-teams jacobi-omp-rocm-loop-teams

