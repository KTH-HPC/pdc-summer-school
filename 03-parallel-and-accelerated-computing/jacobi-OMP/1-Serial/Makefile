

ifeq ($(CC), clang)
   FLAGS ?= -Ofast -fopenmp -fno-inline -pg
   #-pg -fno-inline
else ifeq ($(CC), amdclang)
   FLAGS ?= -Ofast -fopenmp -fno-inline -lm -pg
else ifeq ($(CC), gcc)
   FLAGS ?= -Ofast -fopenmp -fno-inline -lm -pg
else ifeq ($(CC), nvc)
   FLAGS ?= -O3 
endif

jacobi-serial: jacobi.c
	$(CC) $(FLAGS) -o jacobi-serial jacobi.c

clean:
	rm -f jacobi-serial

