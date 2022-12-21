# find y1 and y2 distribution
# y1 = x1 + x2
# y2 = 2*x2 - x3
A<-cbind(c(1,0),c(1,2),c(0,-1))
A
# mu vector 
m<-cbind(c(1,1,2))
m
# S matrix
sig<-cbind(c(1,1,1),c(1,3,2),c(1,2,2))
sig
A%*%m
# E(y) = A*mu vector
exp<-A%*%m
A_T <- t(A)
print("Matrix A")
print(A)
print("Transpose of A")
print(A_T)
print(A%*%sig%*%A_T)
# v(y) = A * S ^-1* A ^T
var<-(A%*%sig%*%A_T)
# show distribution
sprintf("y1~N(%d,%d)",exp[1,1],var[1,1])
sprintf("y2~N(%d,%d)",exp[2,1],var[2,2])