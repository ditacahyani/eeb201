# Geometric Growth

N0 <- 25 # initial population number in time zero
RR <- 1.05 # rate
ttMax <- 100 # total number of timesteps to calculate

NN <- matrix(NA, nrow = 1, ncol = ttMax + 1)
NN[1] <- N0

for(tt in 1:ttMax){
        NN[tt+1] <- RR*NN[tt]
}
plot(1:(ttMax+1), NN, xlab = "time", ylab = "N", col="blue")

# 3.2.1 Mini excercise
# to make the population declaine:

N0 <- 25 # initial population number in time zero
RR <- 0.5 # rate
ttMax <- 100 # total number of timesteps to calculate

NN <- matrix(NA, nrow = 1, ncol = ttMax + 1)
NN[1] <- N0

for(tt in 1:ttMax){
        NN[tt+1] <- RR*NN[tt]
}
plot(1:(ttMax+1), NN, xlab = "time", ylab = "N", col="blue")

# 3.2.2. Excercise

ttMax <- 100;
GeometricGrowthFun <- function(N0, RR){
        NN <- matrix(NA, nrow = 1, ncol = ttMax + 1)
        NN[1] <- N0
        
        for(tt in 1:ttMax)
                NN[tt+1] <- RR*NN[tt]
        plot(1:(ttMax+1), NN, xlab = "time", ylab = "N", col="blue")
}

## Logistic growth in discrete time

# 3.3.1 Mini Excercise

discreteLogisticFun <- function(N0, rr, KK){
        NN <- matrix(NA, nrow = 1, ncol = ttMax+1)
        NN[1] <- 10
      
        for(tt in 1:10)
                NN[tt+1] <- NN[tt]*(1 + rr * (1-NN[tt]/KK))
        plot(1:(ttMax+1), NN, xlab = "time", ylab = "N", col="red")
}
discreteLogisticFun(10, 0.5, 100)

# 3.3.2 Mini excercise
rdVec <- c(-0.3, 0.3, 1.3, 1.9, 2.2, 2.7);
discreteLogisticFun <- function(rdVec){
NN <- matrix(NA, nrow = 1, ncol = ttMax+1);
NN[1] <- 10;
KK <- 100;
ttMax <- 100;
par(mfrow = c(2,3));
for(pp in 1:length(rdVec)){
        rd.val = rdVec[pp]
for(tt in 1:ttMax){
        NN[tt+1] <- NN[tt]*(1 + rd.val * (1-NN[tt]/KK))
}
        plot(1:(ttMax+1), NN, xlab = "time", ylab = "N", col="blue")
}}
discreteLogisticFun(rdVec = rdVec)

# 4. Differential equation

# install deSolve
library(deSolve)

# output <- lsoda(init, tse, ODEfunction, pars)

# 4.1.1 Mini excercise
init <- 1
tseq <- seq(0, 100, by=0.02)
pars <- c(rr=0.1)
expGrowthODE <- function(tt, yy, pars){
        derivs <- pars['rr'] * yy
        return(list(derivs))
}
expGrowthOutput <- lsoda( init, tseq, expGrowthODE, pars)
head(expGrowthOutput)
plot(expGrowthOutput[,1], expGrowthOutput[,2], col='blue', type='l')

# 4.2.1 Need more study on this
# 4.2.2 Need more study on this
# 5.2 Need more study on this

