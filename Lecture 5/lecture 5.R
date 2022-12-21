# find conditional distribution 
# col(x1, x4), given x2 = x3 = 5

# mu vector
mu <- c(5,5,10,10)

# summation vector
sig <- matrix(c(
  10,4,4,2,
  4,20,10,10,
  4,10,20,20,
  2,10,8,20), nrow = 4,byrow = T)

# givens
x.2=x.3=5

# sigma1.2 = sigma1.1 - sigma1.2 * sigma2.2 ^-1 * sigma2.1
(sig.11 <- sig[c(1,4),c(1,4)])

(sig.12 <- sig[c(1,4),c(2,3)])

sig.21 <- t(sig.12)

(sig.22 <- sig[c(2,3),c(2,3)])

cond.sig <- sig.11 - sig.12%*%solve(sig.22)%*%sig.21

cond.sig


(mu.1 <- mu[c(1,3)])

(mu.2 <- mu[c(2,4)])


# mu1.2 = mu1 + sigma1.2 * sigma2.2 ^-1 (x1- mu2)
(mu.1.2 <- mu.1 +sig.12%*%solve(sig.22)%*%(x.2-mu.2))


#f=N(mu.1.2,cond.sig)
