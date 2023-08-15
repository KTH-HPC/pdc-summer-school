
ifeq ($(CC), clang)
   FLAGS ?= -Ofast -g -fopenmp --target=x86_64-pc-linux-gnu
   #-fopenmp-targets=x86_64-pc-linux-gnu -Xopenmp-target=x86_64-pc-linux-gnu -march=znver4
   #--target=x86_64-pc-linux-gnu
   #-pg -fno-inline
else ifeq ($(CC), amdclang)
   FLAGS ?= -Ofast -g -fopenmp --target=x86_64-pc-linux-gnu
else ifeq ($(CC), gcc)
   FLAGS ?= -Ofast -fopenmp -lm -g
else ifeq ($(CC), nvc)
   FLAGS ?= -fast -mp=multicore -Minfo=all
endif

jacobi-omp-rocm-host: jacobi.c
	$(CC) $(FLAGS) -o jacobi-omp-rocm-host jacobi.c

jacobi-omp-llvm-host: jacobi.c
	$(CC) $(FLAGS) -o jacobi-omp-llvm-host jacobi.c

jacobi-omp-nvc-host: jacobi.c
	$(CC) $(FLAGS) -o jacobi-omp-nvc-host jacobi.c

clean:
	rm -f jacobi-omp-llvm-host jacobi-omp-nvc-host jacobi-omp-rocm-host

