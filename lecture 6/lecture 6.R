# example test of hypotheses chapter three hoteling test 
# 𝑯𝟎: null hypothesis VS 𝑯𝒂: alternative hypothesis
# Test for a population mean μ , 𝑯𝟎: μ = μ𝟎 VS 𝑯𝒂: μ ≠ μ𝟎
# We Reject 𝑯𝟎 if F > 𝑭𝜶,𝒑,𝒏−𝒑
# where F = (n-p)T2 /(n-1)p
# 𝑻𝟐 = n(𝑿̅ − μ𝟎)′ 𝑺−𝟏 (𝑿̅ − μ𝟎)
# example Let the data matrix for a random sample of size n = 3 from a bivariate normal population be
# X = [6 9 , 10 6 , 8 3]
# Test the hypothesis 𝐻0: μ′= [9 5] VS 𝐻𝑎: μ′≠ [9 5] at level of significant α = 0.1.
# 𝑯𝟎: μ′= [𝟗 𝟓] VS 𝑯𝒂: μ′≠ [9 5 ]
# We Reject 𝑯𝟎 if F > 𝑭𝜶,𝒑,𝒏−𝒑
# At α = 0.1 𝑭𝜶,𝒑,𝒏−𝒑 = 𝑭𝟎.𝟏,𝟐,𝟏 = 49.5
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
  print("we reject 𝑯𝟎" )
} else
{
  print("we don't reject 𝑯𝟎")
}