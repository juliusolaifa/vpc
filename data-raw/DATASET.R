# Code to prepare `paramNBmat` dataset goes here

# Parameters for Negative Binomial
b0 <- c(3, 5)
b1 <- c(5, 7)
sig11 <- 2
sig12 <- 1
sig22 <- 2
theta <- c(0.02, 0.09, 0.18,
           0.39, 0.64, 0.95,
           1.33, 1.81, 2.44,
           3.30, 4.61, 5.59,
           6.72)

# Create a parameter matrix
paramNBmat <- expand.grid(b0 = b0, b1 = b1,
                          sig11 = sig11, sig12 = sig12,
                          sig22 = sig22, theta = theta)

# Save the dataset
usethis::use_data(paramNBmat, overwrite = TRUE)

# Example for generating 'X' (ensure this function is defined)
ns <- c(5, 3, 2)
X <- rgen01(ns)  # Make sure this function is defined in your package

# Generate batch data using the parameter matrix and X
glmmDataMatrixNB <- batchGLMMDataUsingMatrix(paramMat = paramNBmat, ns = ns, X = X,
                                       family = "negative_binomial", link = "log")

# Save the batch data
usethis::use_data(glmmDataMatrixNB, overwrite = TRUE)
