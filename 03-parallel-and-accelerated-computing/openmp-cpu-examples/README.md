# Hello world with OpenMP on Dardel

Compile the code with  `cc -fopenmp hello_world.c`

Allocate 16 cores (but you may change the number, what happens if you go above 128?) for 30 minutes on the shared partition of Dardel. `salloc --nodes=1 --ntasks-per-node=1 --cpus-per-task=32 -t 0:30:00 -A edu23.summer -p shared` 


Note that we allocate only 16 physical cores but  32 cpus per task, this is because we have 16 cores with 2 threads each, meaning 32 total threads.

Run the hello world example `srun ./a.out`

If we instead only want to run one task per physical core we can export the environment variable `export OMP_NUM_THREADS=16`, what happens?

Experiment with allocating different number of cores and tasks and look into the code hello_world.c

Remember to always use srun on a cluster like Dardel, otherwise you run on the login node which is not good as it is shared among several users.

# STREAM Triad
Small test to test the bandwidth.

Two versions are available, both the stream_triad_seq.c and stream_triad_omp.c

Compiles similarly to the hello world example. `cc -fopenmp stream_triad_VERSION.c`

First try the sequential version.

Then, try running the openmp version with different number of threads, what do you observe? Does the bandwidth change, why? If you increase the number of threads does it always increase?

# Allocating a whole node
It is also possible to allocate an entire node on the main partition. `salloc --nodes=1 --ntasks-per-node=1 --cpus-per-task=32 -t 0:30:00 -A edu23.summer -p main`

You can see all partitions with the `sinfo` command and see different jobs with `squeue`. If you want to see everyone who is running on our allocation you can do `squeue -A edu23.summer` or if you have jobs in the queue you can check them with `squeue --me` to see how they are doing. There are towns of options for these commands so you can filter different jobs.


