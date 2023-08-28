#
# Simplified simulation of high-energy particle storms
#
# Parallel computing (Degree in Computer Engineering)
# 2017/2018
#
# EduHPC 2018: Peachy assignment
#
# (c) 2018 Arturo Gonzalez-Escribano, Eduardo Rodriguez-Gutiez
# Grupo Trasgo, Universidad de Valladolid (Spain)
#
# This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
# https://creativecommons.org/licenses/by-sa/4.0/
#
#
# The current Parallel Computing course includes contests using:
# OpenMP, MPI, and CUDA.
#

# Compilers
# Make sure you use the correct wrappers
#CC=gcc
#Correct CC and MPICC for Dardel
CC=cc
MPICC=cc
CUDACC=nvcc
HIPCC=hipcc
OMPFLAG= -fopenmp

# Flags for optimization and libs
FLAGS=-O3
LIBS=-lm

# Targets to build
# change energy_storms_cuda to energy_storms_hip in order to build for hip instead
OBJS=energy_storms_seq energy_storms_omp energy_storms_mpi energy_storms_hip

# Rules. By default show help
help:
	@echo
	@echo "Simplified simulation of high-energy particle storms"
	@echo
	@echo "Group Trasgo, Universidad de Valladolid (Spain)"
	@echo "EduHPC 2018: Peachy assignment"
	@echo
	@echo "make energy_storms_seq	Build only the sequential version"
	@echo "make energy_storms_omp	Build only the OpenMP version"
	@echo "make energy_storms_mpi	Build only the MPI version"
	@echo "make energy_storms_cuda	Build only the CUDA version"
	@echo
	@echo "make all	Build all versions (Sequential, OpenMP, MPI, CUDA)"
	@echo "make debug	Build all version with demo output for small arrays (size<=35)"
	@echo "make clean	Remove targets"
	@echo

all: $(OBJS)

energy_storms_seq: energy_storms.c
	$(CC) $(DEBUG) $(FLAGS) $< $(LIBS) -o $@

energy_storms_omp: energy_storms_omp.c
	$(CC) $(DEBUG) $(OMPFLAG) $(FLAGS) $< $(LIBS) -o $@

energy_storms_mpi: energy_storms_mpi.c
	$(MPICC) $(DEBUG) $(FLAGS) $< $(LIBS) -o $@

energy_storms_cuda: energy_storms_cuda.cu
	$(CUDACC) $(DEBUG) $(FLAGS) $< $(LIBS) -o $@

energy_storms_hip: energy_storms_hip.hip
	$(HIPCC) $(DEBUG) $(FLAGS) $< $(LIBS) -o $@

# Remove the target files
clean:
	rm -rf $(OBJS)

# Compile in debug mode
debug:
	make DEBUG="-DDEBUG -g" FLAGS= all
