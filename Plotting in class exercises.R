pdf(file="New_Barplot.pdf", width=6, heigh pdf(file="New_Barplot.pdf", width=6, height=6)
    > 
      > par(mfrow=c(1,1), mar=c(4,4,3,2))
    > barplot(rbind(counts_s1, counts_s3), col=c(2,4), beside=T, names.arg=seq(-10, 9.5, by=1), xlab="Value", ylab="Count")
    > legend(6, 350, c(expression(paste(sigma,"=3")), expression(paste(sigma, "=6"))), col=c(2,4), lwd=4)
    > dev.off()

par(mfrow=c(1,1), mar=c(4,4,3,2))



S1<-rnorm(1000, mean=0, sd=1)
head(S1)
s1<-rnorm(1000, mean=0, sd=1)
head(s1)
s3<- rnorm(1000, mean=0, sd=3)
head(s3)
bins<-seq(-10,10, by=1)
hist(s1,breaks=bins)$breaks
hist(s3,breaks=bins)$breaks
counts_s1<- hist(s1, breaks=bins)$counts
counts_s3<- hist(s3, breaks=bins)$counts


barplot(rbind(counts_s1, counts_s3), col=c(2,4), beside=T, names.arg=seq(-10, 9.5, by=1), xlab="Value", ylab="Count")
### Will bind two barplots to the same figure using rbind

legend(6, 350, c(expression(paste(sigma,"=3")), expression(paste(sigma, "=6"))), col=c(2,4), lwd=4)
dev.off()
