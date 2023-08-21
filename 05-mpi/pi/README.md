
# Source Codes

- Calculation of &pi;: Serial C and Fortran ([pi_serial.c](pi_serial.c) and [pi_serial.f90](pi_serial.f90))

# Exercise 1: Calculate &pi; Using Collectives

Calculates &pi; using a "dartboard" algorithm. If you're unfamiliar with this algorithm, checkout the Wikipedia page on 
[Monte Carlo Integration](http://en.wikipedia.org/wiki/Monte_Carlo_Integration) or 
*Fox et al.(1988) Solving Problems on Concurrent Processors, vol. 1, page 207.* 

Take the serial version of the program and modify it to run in parallel.

First familiarize yourself with the way the serial program works. How does it calculate &pi;?

Hint: look at the program comments. How does the precision of the calculation depend on DARTS and ROUNDS, the number of approximation steps?

Hint: edit DARTS to have various input values from 10 to 10000. What do you think will happen to the precision with which we calculate &pi; when we split up the work among the nodes?

Now parallelize the serial program. Use only the six basic MPI calls.

Hint: As the number of darts and rounds is hard coded then all workers already know it, but each worker should calculate how many are in its share of the DARTS so it does its share of the work. When done, each worker sends its partial sum back to the master, which receives them and calculates the final sum.


