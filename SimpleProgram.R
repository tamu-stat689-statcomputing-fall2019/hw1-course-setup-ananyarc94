# Generate data from linear regression model and calculate the least squares vector of coefficients
#####################################################################################################

# Model parameters
n = 100 # sample size
p = 10 # number of covariates
sigma = 2 # noise standard deviation
beta = rep(2,p) # true vector of coefficients
X = matrix(rnorm(n*p), n, p) # n by p matrix of predictors

# Function to generate Y

Y = generateY(X,beta,sigma,seed=5832652)

# Function to calculate beta_LS

beta_LS = calculateBeta(X,Y)

# Function to calculate MSE to assess the estimation error

MSE = calculateMSE(beta,beta_LS)
