  ####################
  ##Exercise 1-For loop
  
  for(YY in 1:9){
    cat("", "", "", "\n")
    if(YY==9){
    cat("", "*", "", "\n")
    }
  }
  #################
  ##Exercise 2
  for(YY in 1:9){
    cat("", "*" , "&" )
    if(YY==9) {
      cat("", "", "*" )}
  }
  
  
  
  ######Exercise 4
  
  
  
  years <- c( 2015, 2016, 2018, 2020, 2021)
     for(ii in 1:length(years)){
         if(years[ii] %% 2 == 0){
             cat(years[ii], 'Hooray, congressional elections!', sep = '\t', fill = T)
           }
         if(years[ii] %% 4 == 0){
             cat(years[ii], 'Hooray, Presidential elections!', sep = '\t', fill=T)
           }
     }
  
  
  
  
  #####Exercise 5
  
  bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5)
  interestRate <- 0.0125
  compoundedmatrix<- matrix(NA, nrow=1, ncol=length(bankAccounts))
  for (i in 1:length(bankAccounts)) {
    compoundedmatrix[1, i] <- interestRate*bankAccounts[i] + bankAccounts[i]
    }
print(compoundedmatrix)

#######Exercise 6


bankAccounts <- c(10, 9.2, 5.6)
interestRate <- 0.0525   
house <- c(4.8, 3.8, 5.7)
food<- c(3.5, 4.3, 5.0);    
fun <- c(7.8, 2.1, 10.5)
income <- c(21, 21, 21)

totalincome<- matrix(NA, nrow=1, ncol=length(bankAccounts))
for (j in 1:5) {
     for (i in 1:length(bankAccounts)) {
         actualincome<- bankAccounts - house - food - fun + income
         totalincome[1, i] <- interestRate*actualincome[i] + actualincome[i]}
}
actualincome
totalincome



######Exercise 7

years<- c(2015, 2016, 2017, 2018, 2019, 2020)
for (j in 1:5) {
    for (i in 1:length(bankAccounts)) {
         actualincome<- bankAccounts - house - food - fun + income
         totalincome[1, i] <- interestRate*actualincome[i] + actualincome[i]
    }
  if(j %% 2 == 1){
    totalincome[1,1]= totalincome[1,1]+5.0
    totalincome[1,3]= totalincome[1,3]+5.0}
  }
totalincome


######Exercise 8
count<- 1
x<-0
while(count<17){x=x+count
count=count+1
print(x)
}



######
x
