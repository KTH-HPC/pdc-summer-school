CC = nvc
FLAGS = -fast -acc=gpu -Minfo=all

jacobi-acc-copy: jacobi.c
	$(CC) $(FLAGS) -o jacobi-acc-copy jacobi.c

clean:
	rm -f jacobi-acc-copy

