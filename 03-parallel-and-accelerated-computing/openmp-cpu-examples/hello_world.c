#include <stdio.h>
#include <omp.h>
 
int main ()  
{
    #pragma omp parallel
    {
       int id = omp_get_thread_num();
 
       printf("Hello World from thread = %d", id);
       printf(" with a total of %d threads\n",omp_get_num_threads());
    }  
    return 0;
}
