
sigma = matrix( 
  c(4,1,2,1,9,-3,2,-3,25), # the sigma data elements 
  nrow=3,              # number of rows 
  ncol=3,              # number of columns 
  byrow = TRUE) 
sigma
var_cov <-sigma
#get the variance_covariance matrix
var_cov[lower.tri(var_cov)]<-0
var_cov[upper.tri(var_cov)]<-0
var_cov
#get the inverse square root of variance_covariance matrix
y = sqrt(var_cov)
y
x = (diag(y))
x = diag(y)**-1
diag(y) <- x
# calc p by multipli the inverse square root of variance_covariance matrix with segma with inverse square root of variance_covariance matrix
p = y%*%sigma%*%y
p

A = matrix(
  c(-2,-3,1,-2,-2,1), # the data elements 
  nrow=2,              # number of rows 
  ncol=3,              # number of columns 
  byrow = TRUE) 
M = matrix(
  c(2,-3,1), # the mean data elements 
  nrow=3,              # number of rows 
  ncol=1,              # number of columns 
  byrow = TRUE) 
var_x = matrix(
  c(-2,-1,0,-1,9,3,0,3,4), # the variance of x elements 
  nrow=3,              # number of rows 
  ncol=,              # number of columns 
  byrow = TRUE) 
M
A
# E(y) = AM 
EXP_Y = A %*% M
EXP_Y
# var(y) = A*M*A_transpose
var_Y = A %*% var_x %*% t(A)
var_Y
