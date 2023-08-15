
ifeq ($(CC), clang)
   FLAGS ?= -Ofast -fopenmp --offload-arch=native -g
   #-pg -fno-inline
else ifeq ($(CC), amdclang)
   FLAGS ?= -Ofast -fopenmp --offload-arch=gfx90a -g
else ifeq ($(CC), gcc)
   FLAGS ?= -Ofast -fopenmp -lm -g
else ifeq ($(CC), nvc)
   FLAGS ?= -fast -mp=gpu -Minfo=all
endif

jacobi-omp-rocm-copy: jacobi.c
	$(CC) $(FLAGS) -o jacobi-omp-rocm-copy jacobi.c

jacobi-omp-llvm-copy: jacobi.c
	$(CC) $(FLAGS) -o jacobi-omp-llvm-copy jacobi.c

jacobi-omp-nvc-copy: jacobi.c
	$(CC) $(FLAGS) -o jacobi-omp-nvc-copy jacobi.c

clean:
	rm -f jacobi-omp-llvm-copy jacobi-omp-nvc-copy jacobi-omp-rocm-copy

