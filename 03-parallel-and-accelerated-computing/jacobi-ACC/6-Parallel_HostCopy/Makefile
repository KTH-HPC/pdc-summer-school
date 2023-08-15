CC = nvc
FLAGS = -fast -acc=multicore -Minfo=all

jacobi-acc-hcopy: jacobi.c
	$(CC) $(FLAGS) -o jacobi-acc-hcopy jacobi.c

clean:
	rm -f jacobi-acc-hcopy

