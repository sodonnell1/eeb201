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


barplot(rbind(counts_s1, counts_s3), col=c(2,4), beside=T, names.arg=seq(-10, 9.5, by=1), xlab="Value", ylab="Count", ylim=c(0,500))
### Will bind two barplots to the same figure using rbind

legend(6, 350, c(expression(paste(sigma,"=3")), expression(paste(sigma, "=6"))), col=c(2,4), lwd=4)
dev.off()
###pch=n will change the shape/appearance of symbols



snpsDataFrame=read.table('hapmap_CEU_r23a_chr2_ld-1.txt', header=TRUE)
###convert dataframes to a matrix
nsps=as.matrix(snpsDataFrame)
nsps
snps=as.matrix(snpsDataFrame)
##to find specific values
testSNP=snps["rs218206_G",]
## to show results
table(testSNP)
testSNP
#shows all results at that locus for each individual


##to simplify using matrix values and perform a task on them
het=sum(testSNP==1)/length(testSNP)
##length is the number of individuals in the matrix
het
testSNP=snps["rs6717613_A",]
###to deal with missing data or NA values
het=sum(testSNP==1, na.rm=TRUE)/sum(!is.na(testSNP))


###to find frequency within data
calc_freq=function(x){
  return(sum(testSNP, na.rm=TRUE))/(2.0*sum(!is.na(x)))
}



calc_het=function(x){
  return(sum(testSNP, na.rm=TRUE))/(2.0*sum(!is.na(x)))
}

freq=apply(snps,1,calc_freq)
het=apply(snps,1,calc_het)
#now make a scatter plot
plot(freq,het,xlab="Frequency", ylab="Heterozygosity")



### Applying a Chi Square Test

compute_chisquare=function(x) [
  freq=sum(x, na.rm=TRUE)/(2.0*sum(!is.na(x)))
  cnt0 = sum(x==0, na.rm=TRUE)
  cnt1 = sum(x==1, na.rm=TRUE)
  cnt2 = sum(x==2, na.rm=TRUE)
  obscnts = c(cnt0, cnt1,cnt2)
  #print(obscnts)
  n=sum(obscnts)
  ##
]