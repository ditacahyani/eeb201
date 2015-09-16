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


