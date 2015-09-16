
# excercise to make pop decrease

tt <- 100 # population size in yy=0
rr <- 0.5 # Factor
yy <- 10 # year/times

GeoFun <- function(tt=100, rr=0.5, yy=10)
        mm <- matrix(NA, nrow=1, ncol=yy+1)
mm[1] <- 100
for(tt in 1:10){
        mm[tt+1] <- mm[tt]*rr
}


plot(1:(yy+1), mm)
plot(1:(yy+1), mm, xlab = "time", ylab = "N", col="red")


GeometricGrowthFun <- function(tt, rr,yy){
        mm <- matrix(NA, nrow=1, ncol=yy+1)
        mm[1] <- 100
        for(tt in 1:10)
                mm[tt+1] <- mm[tt]*rr
        plot(1:(yy+1), mm, xlab = "time", ylab = "N", col="red")
        
}


# Discrete logistic

GeometricGrowthFun <- function(N0, rr, KK){
        mm <- matrix(NA, nrow=1, ncol=yy+1)
        mm[1] <- 10 
        rr <- 0.5 # don't assign this value, 
        KK = 100 # don't assign this value
        for(tt in 1:10)
                mm[tt+1] <- mm[tt]*(1 + rr * (1-mm[tt]/KK))
        plot(1:(yy+1), mm, xlab = "time", ylab = "N", col="red")
}

# new function
GeometricGrowthFun <- function(N0, rr, KK){
        mm <- matrix(NA, nrow=1, ncol=yy+1)
        mm[1] <- 10 
        for(tt in 1:10)
                mm[tt+1] <- mm[tt]*(1 + rr * (1-mm[tt]/KK))
        plot(1:(yy+1), mm, xlab = "time", ylab = "N", col="red")
}


GeometricGrowthFun <- function(N0, rr, KK, tt){
        mm <- matrix(NA, nrow=1, ncol=yy+1)
        mm[1] <- 10 
        for(tt in 1:10)
                mm[tt+1] <- mm[tt]*(1 + rr * (1-mm[tt]/KK))
        plot(1:(yy+1), mm, xlab = "time", ylab = "N", col="red")
}
