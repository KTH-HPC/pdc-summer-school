
# Source Code

- Hello, World: Serial C and Fortran ([hello_mpi.c](hello_mpi.c) and [hello_mpi.f90](hello_mpi.f90)) 

# Exercise 1: Run "Hello, World"

[Compile](https://www.pdc.kth.se/support/documents/software_development/development.html) 
and run the "Hello, World" program found in the lecture. Make sure you understand how each processors prints its rank as well as the total number of processors in the communicator MPI_COMM_WORLD.

# Commands to run
Try first to run on, say 24 processes on the shared partition, for this you set -n 24 when using salloc.

Try varying the number of tasks, perhaps start by allocating a full node on the main partition with 128 ranks.

