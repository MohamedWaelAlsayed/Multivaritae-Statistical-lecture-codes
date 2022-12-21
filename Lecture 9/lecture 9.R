# Lec3 Example
library(matlib)
# Given
n <- 40
x_bar = c(46.1, 57.3, 50.3)
S <- matrix(
  c(101.3, 63.0, 71.0,
    63.0, 80.2, 55.6, 
    71.0, 55.6, 97.4),
  nrow = 3, 
  ncol = 3,
  byrow = T
)
alpha <- 0.05

# Solution
# Test the difference between means
# H0: u1 - u2 = 0 vs Ha: u1 - u2 != 0

# A matrix
A <- matrix(
  c(1, -1, 0,
    1, 0, -1),
  nrow = 2, 
  ncol = 3,
  byrow = T
)

# Calculate T0^2
# T0^2 = n(Ax_bar).T * (ASA.T)^-1 * (Ax_bar)
T0 <- n * t(A %*% x_bar) %*% inv(A %*% S %*% t(A)) %*% (A %*% x_bar)
# T0 = 90.55744
T0

# Calculate Tc
# Tc = C* = (n-1)(q-1)/(n-q+1) * F_alpha(q-1, n-q+1)
# n: size of the sample = 40
n

# q: number of RVs = 3
q <- length(x_bar)

# F: critical F value = 3.244818
F_alpha <- qf(alpha, q-1, n-q+1, lower.tail = F)

Tc <- (n-1) * (q-1) / (n-q+1) * F_alpha
# Tc = 6.660417
Tc
if (T0 > Tc){
  print("Reject H0")
}else{
  print("Do not reject H0")
}

