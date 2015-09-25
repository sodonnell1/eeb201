########################
#***Mini Exercise 3.2.1
R<- 0.95
for(t in 1:ttMax){
  NN[t+1]<- R*NN[t]
}
NN
NO<-400
R<-0.99
############################
##Exercise 3.2.2
geometricGrowthFun<- function(R, NO, ttMax){
  NN<-matrix(NA, nrow=1, ncol=ttMax+1)
  NN[1]<-NO
  for(t in 1:ttMax){
    NN[t+1]<-R*NN[t] }
  plot(1:(ttMax+1), NN, lty=2, type='l', xlab='time', ylab='N', col='red')
}
geometricGrowthFun(0.95, 10, 10)
geometricGrowthFun(1.05, 10, 10)


######Exercise 3.3.1

DiscreteLogisticFun<- function(rr, NO, ttMax, KK){
     NN<-matrix(NA, nrow=1, ncol=ttMax+1)
     NN[1]<-NO
     for(t in 1:ttMax){
         NN[t+1]<- NN[t]*(1+rr*(1-NN[t]/KK))}
     plot(1:(ttMax+1), NN, lty=2, type='l', xlab='time', ylab='N', col='red')
   }

DiscreteLogisticFun(NO=10, rr=0.5, ttMax= 10, KK=100 )


######Exercise 3.3.2


rvector<- c(-0.3, 0.3, 1.3, 1.9, 2.2, 2.7)
par(mfrow= c(2, 3))
for(rr in rvector){
  DiscreteLogisticFun(NO=10, rr=rr, ttMax= 10, KK=100 )
}



#####Exercise 4.1.1




install.packages("deSolve")
library("deSolve")

init <- 1
tseq <- seq(0, 20, by=0.01)
pars <- c(rr = 0.1)
pars <- 0.1



expGrowthODE  <- function(tt, yy, pars) {
  derivs <- pars* yy
  return(list(derivs))
}


expGrowthOutput <- lsoda( init, tseq, expGrowthODE, pars)
expGrowthODE(init, tseq,pars)
expGrowthOutput <- lsoda( init, tseq, expGrowthODE, pars)
plot(expGrowthOutput[,1], expGrowthOutput[,2], col=4, type="l")



######4.2.1


Growth<-  function(tt, NN, KK, pars){
  output<- (rr*NN)*(1-NN/KK)
  return(list(output))
}
wholegrowth<- lsoda(init, tseq, Growth, pars)
plot(wholegrowth[,1], wholegrowth[,2], col=4, type="l")
pars<- 0.2
NN<- 100
KK<- 0.5
rr<- 1.2
