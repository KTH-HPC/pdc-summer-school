CC = nvc
FLAGS = -fast -acc=gpu -Minfo=all

jacobi-acc-loop: jacobi.c
	$(CC) $(FLAGS) -o jacobi-acc-loop jacobi.c

clean:
	rm -f jacobi-acc-loop

