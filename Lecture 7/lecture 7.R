#Ex7:
# you have matrix x = [6 9, 10 6, 8 3] and µ [9, 5]
# Perform Hotelling test 95%

library(ICSNP)

x = matrix(c(6,9,10,6,8,3), 3, 2, byrow= TRUE)
x

mu = matrix(c(9,5),2,1)
mu

#xbar = matrix(c(mean(x[,1]),mean(x[,2])),2 ,1)
#xbar

#cov= 1/2*(t(x)%*%x-3*xbar%*%t(xbar))
#cov

test=HotellingsT2(x,mu=mu,test="f")
test