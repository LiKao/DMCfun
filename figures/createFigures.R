# Create figures within ./figures directory used in README.md file
library(DMCfun)

setwd("./figures/")

# figure 1
dmc <- dmcSim(fullData = TRUE)
png("figure1.png", width = 800, height = 600)
plot(dmc)
dev.off()

# figure 2
dmc <- dmcSim(fullData = TRUE, tau = 150)
png("figure2.png", width = 800, height = 600)
plot(dmc)
dev.off()

# figure 3
params <- list(tau = seq(20, 170, 10))
dmc <- dmcSims(params)
png("figure3.png", width = 800, height = 600)
plot(dmc, ncol = 2, col = c("red", "green"), cex = 2.0)
dev.off()

# figure 4
params <- list(tau = seq(20, 170, 10))
dmc <- dmcSims(params)
png("figure4.png", width = 800, height = 600)
plot(dmc, ncol = 2, col = c("red", "green"), cex = 2.0)
dev.off()

# figure 5
fit <- dmcFitAgg(flankerData1, fitInitialGridN = 30) # flanker data from Ulrich et al. (2015)
png("figure5.png", width = 800, height = 600)
plot(fit, flankerData1)
dev.off()

# figure 6
fit <- dmcFitAgg(simonData1) # simon data from Ulrich et al. (2015)
png("figure6.png", width = 800, height = 600)
plot(fit, simonData1)
dev.off()