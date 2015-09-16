all.I.know.about.life.I.learned.in.grad.school <- 
  function()
{
	aa <- "Don't turn away free food."
	bb <- "Why would I want to go to med school when I can have all this stress with less career certainty?"
	cc <- "I want to thank the reviewer for their 15 pages of single spaced helpful comments on my submission."
	dd <- "Papers aren't written, they are rewritten."
	ee <- "Time to push back the frontiers of knowledge."
	ff <- "Need...more...coffee...."
	bromides <- c(aa,bb,cc,dd,ee, ff)
	cat(sample(bromides, size = 1))
  }
all.I.know.about.life.I.learned.in.grad.school<-"short"
library(ape)
###read in tree
tt<- read.tree("read.tree")
tt<- read.tree("tree.tre")
###read in text
dd<- read.table("data.txt", header=T, as.is= T, sep= "\t")
dd
##attributes will show all characteristics of data frame
attributes(dd)
##dim() will show number of rows
##rnif will determine how many random variables will be drawn
##dflength is the size of the table
size<- runif(dflength)
size
##will assign random values for each member of the data frame = 92 for this example
head(cbind(dd, size))
##cbind will bind the values to the data frame
head(dd)
newdd<- cbind(dd, size)
##new data frame will have three columns now
head(newdd)
size<- runif(dflength)
size
head(dd$species)
head(dd$size)
dd[1:10, ]
head(newdd$size)
which(dd$mode == 'MPF')
##two "="make a boulion comparison-> compares two values and gives true or false depending on the comparison
dd$mode=="MDF"
### will show which columns/rows are true for "MDF"
just_mpf
head(just_mpf)
length(tt$tip.label)
notfish<- c("bat", "dolphin", "toad", "solider")
##for function will help create loops
for(animal in notfish){
  cat(animal, "fish\n", sep=" ")}
for(animal in notfish){
  cat(animal, "fish\n")}
for(animal in notfish){
  cat(animal, "fish", " are tasty\n", sep ="")}
## While if and else examples
xx<-1
while(xx < 10) {
  xx<- xx+1;
  if(xx ==7){
    cat("lucky number ", xx, "\n") }
  else if (xx == 2){
     cat(" the number ", xx, "\n")}
  else{
     cat(" not excited about the number ", xx, "\n")
   }
}
##calculate the sum of all numbers from 1:20
#use sum function
#ratio includes all numbers
sum(1:20)
#set variables for N, R, t
NO<- 100
R<- 1.05
ttMax<-10
#population growth = N(t+1)= Rx N(t)
#initialize a vector to hold all values of N through time
NN<-matrix(NA, nrow=1, ncol=ttMax+1)
NN[1]<-NO
  #set up for loop for the number of years == 1:10
  # each year= N+1, repeat loop for each year
  #update the population size by multiplying N*R
  #multiply N(t) by R to get N+1 for each year from 1:10
#show final value for N
NN
#Plot the N vector against time
plot(1:11, NN)
########################
#***Mini Exercise 3.2.1
R<- 0.95
for(t in 1:ttMax){
  NN[t+1]<- R*NN[t]
 }
NN
NO<-400
R<-0.99
geometricGrowthFun<- function(R, NO, ttMax){
  NN<-matrix(NA, nrow=1, ncol=ttMax+1)
  NN[1]<-NO
  for(t in 1:ttMax){
    NN[t+1]<- R*NN[t]}
    plot(1:(ttMax+1), NN, lty=2, type='l', xlab='time', ylab='N', col='red')
}
geometricGrowthFun(0.95, 10, 10)
geometricGrowthFun(1.05, 10, 10)
