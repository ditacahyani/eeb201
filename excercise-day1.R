# Excercise 1
xx <- 1
while(xx < 10) {
        xx <- xx+1
        if (xx == 10) {
                cat(" * ", "\n")}
        else
        {cat(' ', "\n")
        }
}

# Excercise 2
xx <- 1
while(xx < 11) {
        xx <- xx+1
        if (xx == 10) {
                cat(" *& ", "\n")}
        else
        {cat(' *& ', "\n")
        }
}

# Excercise 3
dogs <- 10;
for (i in 1:5){
        dogs <- dogs + 1;
        cat(dogs, sep = '\n')
}
### 15

meatloaf <- 0;
for (i in 5:9){
        meatloaf <- meatloaf - i + 1;
        cat(meatloaf)
}
### -4-9-15-22-30

bubbles <- 12;
for (i in -1:-4){
        bubbles <- i;
}
### -4

# excercise 4
### you can use the if statement with the modulus operator to conditionally perform operations
years <- c(2015, 2016, 2018, 2020, 2021)
for(ii in 1:length(years)){
        if(years[ii] %% 2 == 0){
                cat(years[ii], 'Hooray, congressional elections!', sep='\t', fill=T)
        }
}

# editted1
years <- c(2015, 2016, 2018, 2020, 2021)
for(ii in 1:length(years)){
        if(years[ii] %% 4 == 0){
                cat(years[ii], 'Hooray, presidential elections!', sep='\t', fill=T)
        }
        else if(years[ii] %% 2 == 0)
                cat(years[ii], 'Hooray, congressional elections!', sep='\t', fill=T)
}

# editted2
years <- c(2015, 2016, 2018, 2020, 2021)
for(ii in 1:length(years)){
        if(years[ii] %% 4 == 0){
                cat(years[ii], 'Hooray, presidential elections!', sep='\t', fill=T)
        }
        else if(years[ii] == 2018)
                cat(years[ii], 'Hooray, congressional elections!', sep='\t', fill=T)
}

# excercise 5 (questions??)
bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5);
interestRate <- 0.0125;
# compounded <- 1:6
for (i in 1:length(bankAccounts)){
        compounded[i] <- interestRate * bankAccounts[i] + bankAccounts[i];
        
}
compounded





bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5);


interestRate <- 0.0125;
for (i in 1:length(bankAccounts)) {
        compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }








# excercise 6
bankAccounts <- c(10, 9.2, 5.6); # define bank accounts here
interestRate <- 0.0525;
house <- c(4.8, 3.8, 5.7); # deduct
food <- c(3.5, 4.3, 5.0); # deduct
fun <- c(7.8, 2.1, 10.5); # deduct
# and incomes (through TAships) of
income <- c(21, 21, 21); # add this

for (j in 1:5){
        for (i in 1:length(bankAccounts)){
                # step 1 modify bankAccounts so that amounts reflect income and expenses
                bankAccounts[i] <-  bankAccounts[i]-house[i]-food[i]-fun[i]+income[i]
                
                # step 2 get calculate interest and add to accounts from step 1
                # compounded[i] <- income[i]-house[i]-food[i]-fun[i]+bankAccounts[i]
                bankAccounts[i] <- interestRate * bankAccounts[i] + bankAccounts[i];
                print(paste("the year is", j, "and the person is", i, "money is", bankAccounts[i]))
                
                # you can actualy use the line you have already written if you
                # modify amounts in bankAccounts directly in step 1
        }
}

# excercise 7
house <- c(4.8, 3.8, 5.7);
food <- c(3.5, 4.3, 5.0);
fun <- c(7.8, 2.1, 10.5);
# and incomes (through TAships) of
income <- c(21, 21, 21);
yy <- c(2015, 2016, 2017, 2018, 2019, 2020);
for (j in 1:length(yy)){
        for (i in 1:length(bankAccounts)){
                if(yy[j] %% 2 ==1 && i %% 2 ==1){
                        bankAccounts[i] <- bankAccounts[i]-house[i]-food[i]-fun[i]+income[i]+5000
                        bankAccounts[i] <- interestRate * bankAccounts[i] + bankAccounts[i];  
                }
                else{
                        bankAccounts[i] <- bankAccounts[i]-house[i]-food[i]-fun[i]+income[i]
                        bankAccounts[i] <- interestRate * bankAccounts[i] + bankAccounts[i];  
                }
                print(paste("the year is", j, "and the person is", i, "money is", bankAccounts[i]))
                       }
}

# excercise 8
# use a while loop to sum all numbers from 1:17. 
# You will need to use a counter variable (like index seen in class)

xx <- 0
yy <- 0
while(xx <= 16){
        xx <- xx+1;
        (yy = yy+xx);
      
}
print(yy)

# excercise 9
# write a function takes a number, and prints ‘small’ if number less than or equal to -1; 
# ‘medium’ if between -1 and + 1’big’ if greater than or equal to + 1

number <- function(a){
        if(a <= -1){cat("small")}
        if(a >= 1){cat("big")}
        if(a < 1 && a > -1){cat("medium")}
} 

# not an excercise, just note
number <- function(a){
        if(a >= 10){cat("small")}
        if(a > 7){cat("big")}
        
} 

number <- function(a){
        if(a >= 10){cat("small")}
        else if(a > 7){cat("big")}
        
} 

