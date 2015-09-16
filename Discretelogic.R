discreteLogisticFun<- function(r, NO, ttMax){
   NN<-matrix(NA, nrow=1, ncol=ttMax+1)
   NN[1]<-NO
   for(t in 1:ttMax){
      NN[t+1]<- R*NN[t]}
      plot(1:(ttMax+1), NN, lty=2, type='l', xlab='time', ylab='N', col='red')
}