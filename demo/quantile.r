### SHELL> mpiexec -np 4 Rscript --vanilla [...].r

### Initial MPI.
library(pbdDEMO, quiet = TRUE)
init()

### Generate balanced fake data.
comm.set.seed(1234, diff = TRUE)
N <- 100                  # Pretend N is large.
x.spmd <- rnorm(N)        # Distributed data.

### Run.
ret.spmd <- demo.quantile(x.spmd)

### Output.
comm.print(ret.spmd)
finalize()
