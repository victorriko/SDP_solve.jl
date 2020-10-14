# SDP_solve.jl

## Required packages
* LinearAlgebra
* Printf
* DelimitedFiles
* JuMP
* Mosek
* MosekTools


## Data
### Decompositions
* Blocks files
* Clique tree files

### OPF instances
Each instance contains the number of nodes in the power network in his name. For example, the instance `case14` represents a network with 14 nodes. We are interested in finding good decompositions for instances of more than 1000 nodes.

There are two files per instance:
* one file "mat" with all quadratic terms (and possibly a constant for the objective function)
* one file "ctr" that indicates the type of each constraint along with its lhs and rhs

NB : OPF problems with thermal limits in current, linear objective function and aggregation of generators associated to the same bus

## Functions
* Function `solve_sdp` solves a given instance with a given decomposition (files in `DATA_PATH`) and returns Mosek resolution time and the number of iterations. Mosek log file is saved in `Mosek_runs`. The file `test.jl` allows to test this function.
* File `solve_all_OPFinstances.jl` launches the function `solve_sdp` for a list of instances and a list of decompositions and create a .csv file with all resolution time and numbers of iterations.
* The file `SDP_functions.jl` contains all auxiliary functions
