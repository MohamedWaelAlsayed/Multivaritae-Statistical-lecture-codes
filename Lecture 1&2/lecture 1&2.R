A <- matrix(c(1, 2, 2, -2), nrow = 2)
shape_A= dim(A) # the shape of the matrix
transpose_A= t(A) # transpose the matrix
detrmenit_A= det(A) # find the determinet of a matrix
Eigen_A=eigen(A) # return the eigen values
A_inverse = solve(A) # find inverse of a matrix
detrmenit_A
A_inverse
Eigen_A
shape_A
#this cell is used to make the var-cov matrix and Mu
x1 <- c(41,57,49,46,37) #sample 1
x2 <- c(3,5,5,4,3)     #sample 2 

X_vector = matrix(data = c(x1,x2) , nrow = 5) #store sample1,sample2 in a matrix form

X1_bar = 1/length(x1)*(sum(x1)) # find the mean of x1
X2_bar = 1/length(x2)*(sum(x2)) # find the mean of x2

X_BAR = matrix(data = c(X1_bar,X2_bar),nrow = 2) #store x1_mean and x2_mean in matrix form X_Bar

n=length(x1) # here store the length of the sample in variable n


n_1= 1/(n-1)

x_transpose = t(X_vector)
x_bar_transpose = t(X_BAR)

sigma_matrix = n_1*((x_transpose%*%X_vector)-(n*(X_BAR%*%x_bar_transpose)))


Varianc_matrix = diag(diag(sigma_matrix),nrow = 2)
# here define Variance-Covariance matrix
X_vector
X_BAR
sigma_matrix
Varianc_matrix