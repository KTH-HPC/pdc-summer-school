Hello world with OpenMP on Dardel

Compile the code with  `cc -fopenmp hello_world.c`
Allocate 16 cores (but you may change the number, what happens if you go above 128?) for 30 minutes on the shared partition of Dardel. `salloc --nodes=1 --cores=16 --ntasks-per-node=1 --cpus-per-task=16 -t 0:30:00 -A edu23.summer -p shared` 
Run the hello world example `srun ./a.out`
Try changing the number of openmp tasks by exporting the enivornment variable `export OMP_NUM_TASKS=8`, what happens?
Experiment with different number of cores and tasks and look into the code hello_world.c

Remember to always use srun on a cluster like Dardel, otherwise you run on the login node which is not good as it is shared among several users.
