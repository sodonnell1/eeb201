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
    NN[t+1]<- R*NN[t]}
  plot(1:(ttMax+1), NN, lty=2, type='l', xlab='time', ylab='N', col='red')
}
geometricGrowthFun(0.95, 10, 10)
geometricGrowthFun(1.05, 10, 10)
