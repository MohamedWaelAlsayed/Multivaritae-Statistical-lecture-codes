# sheet 4 question 4
sigma = matrix( 
  c(25,-2,4,-2,4,1,4,1,9), # the data elements 
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
z = sqrt(var_cov)
x = (diag(y))
x = diag(y)**-1

diag(y) <- x
# calc p by multipli the inverse square root of variance_covariance matrix with segma with inverse square root of variance_covariance matrix
p = y%*%sigma%*%y
p

#Multiply your matrices to check the relation V1/2 ?? V1/2 = ??
# z is the sqrt of var_cov matrix
calc_sigma=z%*%p%*%z
calc_sigma
