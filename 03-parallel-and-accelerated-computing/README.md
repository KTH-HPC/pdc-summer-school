# Running on Dardel GPUs

In order to run the Jacobi OpenMP examples on Dardel, you can use the AMD Clang compiler. The shell scripts `run-rocm.sh` provide the according compilation and execution commands.

Before running the the code, make sure that you have actually allocated a GPU node on Dardel. You can allocate a GPU node as follows:

`salloc -N 1 -t 0:10:00 -A edu23.summer -p gpu`

There are several versions of the Jacobi OpenMP code, try the different versions and check out how they differ.

All the Jacobi examples use openmp offload, if you have time, try parallelizing it for multicore CPUs instead!
