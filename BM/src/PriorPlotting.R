# Prior Plotting
# Orlando Schwery, 13. Mar. 2026

# To get a better sense of what a specific prior means, it can be a good idea to visualize it.

# We can generate random draws of the distribution in question to get a distribution of values to plot.

### Introduction
# E.g., for our gamma prior M in the intro lesson:
M <- rgamma(10000, shape=4, rate =2)  # draw 10000 random values from a gamma distribution with shape 4 and rate 2
plot(M)  # plotting it like this just shows them in the order they were drawn in...
# two good ways to plot them are as histograms or densities:
hist(M)  # simple counts per value, but be mindful whether the way the values are binned might obscure some patterns
plot(density(M))  # smooth curve, but smoothing settings can also obscure patterns (also a problem with distributions that have set limits, seel below)

# we can generate those distributions for the remaining nodes, i.e. sigma, and the combined values in mu:
sigma <- rexp(1000, rate = 1)
windows()
plot(density(sigma))

mu = log(M) - ((sigma^2)/2)
windows()
plot(density(mu))



### BM

# Lets plot two candidate priors for the rate of trait evolution sigma2 in the BM model:
library(KScorrect)  # package that has the log-uniform distribution

# lets draw from loguniform as we did in the tutorial:
logunif <- rlunif(10000, min=0.001, max=1, base = exp(1))
plot(density(logunif)) # we can plot it as a nice density curve, but...
abline(v=c(min(logunif), max(logunif)), col="blue")  #... if we ad lines for the min and max values, we can see that the density function smoothes over the distributions boundaries, which is a bit misleading...
hist(logunif)  # so perhaps a histogram is better for this purpose
abline(v=c(min(logunif), max(logunif)), col="blue")  #... nice and contained...

# the main property of the loguniform distribution is that the log of its values is uniformly distributed
plot(density(log(logunif)))  #... same issues with smoothing again
hist(log(logunif))  # ... better (but note the low bin at -7: a lot of that bin is empty because the minimal value here is -6.91)
min(log(logunif))

# Let's compare this to teh regular uniform distribution within the same bounds:
unif <- runif(10000, min=0.001, max=1)

# plot them together
par(mfrow=c(2,2))
hist(logunif)
hist(log(logunif))
hist(unif)
hist(log(unif))

# You can see how the uniform distribution assumes equal probabilities for each actual value, but therefore higher probabilities for values at a higher order of magnitude.
# Meanwhile, the log-uniform distribution assumes equal probabilities for values at each order of magnitude, and as a result much higher probabilities for values closer to 0.

# Chosing the right prior can help avoid bias in either direction, depending on ones' case. But ideally, if there is enough information in the data, the posterior should converge on the correct value with either prior (though it could affect runtime). 
