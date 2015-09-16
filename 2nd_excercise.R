# trying in class excercises

cat("hello world")
2+2
2-2
2*3
?lm() # help == help(lm)
?mean # help

tips <- c("learn R", "Love R"); tips 

source("/Users/ditacahyani/Google Drive/GitHub/eeb201")
source("source.example.R")
all.I.know.about.life.I.learned.in.grad.school()

library(ape)
tt <- read.tree("tree.tre"); tt
str(tt) # to see the structure of tt file
tt$tip.label # to see the tip label

inpath = "data.txt"
dd <- read.table(inpath, header=T, sep='\t', as.is = T); dd
dd <- read.table("data.txt", header=T, sep='\t', as.is = T); dd
# as.is 

# make random size data
dd <- read.table("data.txt", header=T, sep='\t', as.is = T); dd
dim(dd)
dim(dd)[1]
dflength <- dim(dd)[1]; dflength
size <- runif(dflength); size

# combining
newdd <- cbind(dd, size); newdd
head(dd)

dd$mode =="MPF" # the result is true or false
dd[which(dd$mode =="MPF"),] # hanya mengambil semua mode yg MPF di semua column

dd[1:10, 2] # rows 1:10, column 2

mpfs <- which(newdd$mode == 'MPF')
mpf_swimmers <- newdd[mpfs,]
head(mpf_swimmers)


for(ii in 1:5){cat("\nte number is", ii)}
# te number is 1
# te number is 2
# te number is 3
# te number is 4
# te number is 5

for(ii in 1:5){cat("\nthe number is", ii)}
# the number is 1
# the number is 2
# the number is 3
# the number is 4
# the number is 5

notfish <- c("bat", "dolphin", "toad", "soldier")
for(animal in notfish){cat(animal,"fish\n", sep="")}
# batfish
# dolphinfish
# toadfish
# soldierfish

notfish <- c("bat", "dolphin", "toad", "soldier")
for(animal in notfish){cat(animal,"\nfish", sep="")}
# bat
# fishdolphin
# fishtoad
# fishsoldier
# fish

for(animal in notfish){cat(animal,"fish","are tasty\n", sep="")}
# batfishare tasty
# dolphinfishare tasty
# toadfishare tasty
# soldierfishare tasty

for(animal in notfish){cat(animal,"fish","are tasty\n")}
# bat fish are tasty
# dolphin fish are tasty
# toad fish are tasty
# soldier fish are tasty


# while example
xx <- 1
xx <- 1
while(xx < 5) {
        xx <- xx+1; 
        if (xx == 3) {
                break; }
}
print(xx)

# more complex examples
xx <- 1
while(xx < 10) {
        cat("value of xx", xx, "\n")
        xx <- xx+1
        if (xx == 7) {
                cat(" lucky number ", xx, "\n")}
        else
        {cat('not excited about the number', xx, "\n")
        }
}
print(xx)


xx <- 1
while(xx < 10) {
        cat("value of xx", xx, "\n")
        xx <- xx+1
        if (xx == 7) {
                cat(" lucky number ", xx, "\n")}
        else if (xx==2){
                cat('not excited about the number', xx, "\n")}
}


xx <- 1
while(xx < 10) {
        # cat("value of xx", xx, "\n")
        xx <- xx+1
        if (xx == 7) {
                cat(" lucky number ", xx, "\n")}
        else if (xx==2){
                cat('not excited about the number', xx, "\n")}
}


xx <- 1
while(xx < 10) {
        cat("value of xx", xx, "\n")

        if (xx == 7) {
                cat(" lucky number ", xx, "\n")}
        else if (xx==2){
                cat('not excited about the number', xx, "\n")}
        xx <- xx+1
}

sum(1:10)


tt <- 100 # population size in yy=0
rr <- 1.05 # Factor
yy <- 10 # year/times 
mm <- matrix(NA, nrow=1, ncol=yy+1)
mm[1] <- 100
for(tt in 1:10){
        mm[tt+1] <- mm[tt]*rr
}
mm

plot(1:(yy+1), mm)

plot(1:(yy+1), mm, xlab="time", ylab="N", col="blue")


# function
tt <- 100 # population size in yy=0
rr <- 1.05 # Factor
yy <- 10 # year/times

GeoFun <- function(tt=100, rr=1.05, yy=10)
mm <- matrix(NA, nrow=1, ncol=yy+1)
mm[1] <- 100
for(tt in 1:10){
        mm[tt+1] <- mm[tt]*rr
}

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


