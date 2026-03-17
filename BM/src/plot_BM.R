################################################################################
#
# Plot estimates of the Brownian motion model
#
# authors: Michael R. May
#
################################################################################

setwd("/mnt/c/Users/oschwery/Documents/Teaching/RevBayesIntro_UI_WSU/BM")  # Linux, MacOS
setwd("C:/Users/omsc232/Documents/Teaching/RevBayesIntro_UI_WSU/BM/")       # Windows

library(RevGadgets)
library(coda)

# read the posterior output, burnin set to 0, because we ran that separately in RevBayes
simple_BM_posterior <- readTrace("output/simple_BM_primates.log", burnin=0)[[1]]

# format the trace as an mcmc object
simple_BM_posterior_MCMC <- as.mcmc(simple_BM_posterior)
ESS <- effectiveSize(simple_BM_posterior_MCMC)  # check effective sample size
# plot the trace to see if it looks stationary (i.e., if you get the 'hairy caterpillar')
traceplot(simple_BM_posterior_MCMC[, 3])  # trace for the third variable (i.e., )
traceplot(simple_BM_posterior_MCMC[, "sigma2"])  # trace for the target variable sigma square

# plot the posterior from the trace
plot <- plotTrace(list(simple_BM_posterior), vars=c("sigma2"))
plot


# If you ran the analysis under the prior, you can load that posterior too
simple_BM_prior     <- readTrace("output/simple_BM_primates_prior.log")[[1]] 

# combine the samples into one data frame
simple_BM_posterior$sigma2_prior <- simple_BM_prior$sigma2
# plot the prior vs the posterior
plot <- plotTrace(list(simple_BM_posterior), vars=c("sigma2", "sigma2_prior"))
plot
