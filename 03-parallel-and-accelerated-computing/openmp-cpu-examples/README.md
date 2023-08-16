Hello world with OpenMP on Dardel

Compile the code with  `cc -fopenmp hello_world.c`

Allocate 16 cores (but you may change the number, what happens if you go above 128?) for 30 minutes on the shared partition of Dardel. `salloc --nodes=1 --cores=16 --ntasks-per-node=1 --cpus-per-task=32 -t 0:30:00 -A edu23.summer -p shared` 


Note that we allocate only 16 physical cores but use 32 cpus per task, this is becaseu we have 16 cores with 2 threads each, meaning 32 total threads.

Run the hello world example `srun ./a.out`

If we instead only want to run one task per physical core we can export the environment variable `export OMP_NUM_TASKS=16`, what happens?

Experiment with allocating different number of cores and tasks and look into the code hello_world.c

Remember to always use srun on a cluster like Dardel, otherwise you run on the login node which is not good as it is shared among several users.
