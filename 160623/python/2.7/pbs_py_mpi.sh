#!/bin/tcsh

#PBS -q SINGLE
#PBS -N python
#PBS -l select=1
#PBS -j oe

cd $PBS_O_WORKDIR

setenv PATH ${PBS_O_PATH}

mpirun -np 10 python hello_mpi.py
