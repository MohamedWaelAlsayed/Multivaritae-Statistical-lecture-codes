# Bonferroni Confidence intervals
x_bar = c(3.2, 3.8)
S = matrix(c(0.678, -0.109, -0.109, 0.645), nrow = 2)
# number of features P
p = length(x_bar)
# sample size
n = 10
# Confidence level
c_level = 0.95 
# Significance level
alpha = 1- c_level
# show xbar  vector and S matrix
x_bar
S

# M1 intervals
x_bar1.lower = x_bar[1] - qt(p = alpha/(2*p), df = n-1,lower.tail = F)*sqrt(S[1,1]/n)
x_bar1.lower
x_bar1.upper = x_bar[1] + qt(p = alpha/(2*p), df = n-1,lower.tail = F)*sqrt(S[1,1]/n)
x_bar1.upper
# M2 intervals
x_bar2.lower = x_bar[2] - qt(p = alpha/(2*p), df = n-1,lower.tail = F)*sqrt(S[2,2]/n)
x_bar2.lower
x_bar2.upper = x_bar[2] + qt(p = alpha/(2*p), df = n-1,lower.tail = F)*sqrt(S[2,2]/n)
x_bar2.upper