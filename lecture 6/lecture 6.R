# example test of hypotheses chapter three hoteling test 
# π―π: null hypothesis VS π―π: alternative hypothesis
# Test for a population mean ΞΌ , π―π: ΞΌ = ΞΌπ VS π―π: ΞΌ β  ΞΌπ
# We Reject π―π if F > π­πΆ,π,πβπ
# where F = (n-p)T2 /(n-1)p
# π»π = n(πΏΜ β ΞΌπ)β² πΊβπ (πΏΜ β ΞΌπ)
# example Let the data matrix for a random sample of size n = 3 from a bivariate normal population be
# X = [6 9 , 10 6 , 8 3]
# Test the hypothesis π»0: ΞΌβ²= [9 5] VS π»π: ΞΌβ²β  [9 5] at level of significant Ξ± = 0.1.
# π―π: ΞΌβ²= [π π] VS π―π: ΞΌβ²β  [9 5 ]
# We Reject π―π if F > π­πΆ,π,πβπ
# At Ξ± = 0.1 π­πΆ,π,πβπ = π­π.π,π,π = 49.5
# perform hoteling test in 95% 

X = matrix(c(6,9,10,6,8,3),nrow=3,byrow=T)
print("X")
X
xbar = colMeans(X)
print("xbar")
xbar
n = 3
p = 2
f = 49.5 
xbart <- t(xbar)
print("xbar transpose")
xbart
s=cov(X)
print("s")
s 
muo = matrix(c(9,5),nrow=2,byrow=T)
print("muo")
muo
S <- solve(s)
print("S")
S
xbarmuo <- xbar-muo 
print("xbar-muo")
xbarmuo
xbarmuot <- t(xbar-muo)
print("xbar-mou transpose")
xbarmuot
T = n* xbarmuot %*% S %*% xbarmuo
print("T2 value ")
T
F = ((n-p)*T)/((n-1)*p)
print("F value ")
F
print("Decision")
if(F > f)
{
  print("we reject π―π" )
} else
{
  print("we don't reject π―π")
}