# install.packages("matlib", dependencies = T)
library(matlib)
library(ICSNP)


# Dependent Samples 
sample_before = matrix(c(1.21, 0.61, 0.70, 0.92, 0.43, 0.71, 0.80, 0.35, 0.71, 0.85,
                         0.48, 0.68, 0.98, 0.42, 0.71, 1.15, 0.52, 0.72, 1.10,
                         0.50, 0.75, 1.02, 0.53, 0.70, 1.18, 0.45, 0.7, 1.09, 0.40, 0.69), ncol = 3, byrow = T)
sample_after = matrix(c(1.26, 0.50, 0.81, 1.07, 0.39, 0.69, 1.33, 0.24, 0.70, 1.39, 0.37,
                        0.72, 1.38, 0.42, 0.71, 0.98, 0.49, 0.70, 1.41, 0.41, 0.70, 1.30, 0.47,
                        0.67, 1.22, 0.29, 0.68, 1.00, 0.30, 0.70), ncol = 3, byrow = T)
# substract two samples
difference = sample_before -  sample_after
difference
# sample size
(n = length(difference[, 1]))
# number of features
(p = length(difference[1, ]))
d_bar = colMeans(difference)
d_bar
S = cov(difference)
S
# Calculate test statstic
# T0^2 = n(Ax_bar).T * (ASA.T)^-1 * (Ax_bar)
(T2 = mahalanobis(d_bar, c(0,0,0), S/n))
# Calculate critical value
# Tc = C* = (n-1)(q-1)/(n-q+1) * F_alpha(q-1, n-q+1)
(c_star = ((n-1)*p/(n-p)) * qf(alpha, p, n-p, lower.tail = F))
if (T2 > c_star){ print("reject H0")
}else{
  print("fail to reject H0")
}
# Using Hotelling function 
H = HotellingsT2(difference, test="f")
H
if (H$p.value < alpha){ print("reject H0")
}else{
  print("fail to reject H0")
}
# Simulatineous Confidence intervel
# Md1
(d_bar1.lower = d_bar[1] - sqrt(c_star*S[1,1]/n)) 
(d_bar1.upper = d_bar[1] + sqrt(c_star*S[1,1]/n)) 
# Md2
(d_bar2.lower = d_bar[2] - sqrt(c_star*S[2,2]/n)) 
(d_bar2.upper = d_bar[2] + sqrt(c_star*S[2,2]/n)) 
# Md3
(d_bar3.lower = d_bar[3] - sqrt(c_star*S[3,3]/n)) 
(d_bar3.upper = d_bar[3] + sqrt(c_star*S[3,3]/n))