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


compute_chisquare=function(x){
  freq=sum(x,na.rm=TRUE)/(2.0*sum(!is.na(x)))
  cnt0=sum(x==0,na.rm=TRUE)
  cnt1=sum(x==1,na.rm=TRUE)
  cnt2=sum(x==2,na.rm=TRUE)
  obscnts=c(cnt0,cnt1,cnt2)
  #print(obscnts)
  n=sum(obscnts)
  expcnts=c((1-freq)^2,2*freq*(1-freq),freq^2)*n
  chisq=sum((obscnts-expcnts)^2/expcnts)
  return(chisq)
}


compute_chisquare_2=function(x){
  freq=sum(x,na.rm=TRUE)/(2.0*sum(!is.na(x)))
  cnt0=sum(x==0,na.rm=TRUE)
  cnt1=sum(x==1,na.rm=TRUE)
  cnt2=sum(x==2,na.rm=TRUE)
  obscnts=c(cnt0,cnt1,cnt2)
  #print(obscnts)
  n=sum(obscnts)
  #here we use the built-in function for the chi-sq distribution:
  exp_probs=c((1-freq)^2,2*freq*(1-freq),freq^2) #note, here we don't multiply by n
  chisq<-chisq.test(obscnts,p=exp_probs, correct = FALSE)$statistic
  return(chisq)
}




chisqs=apply(snps,1,compute_chisquare)
chisqs2=apply(snps,1,compute_chisquare_2)
#check to see that the chisquare statistcs are the same:
#first do this by computing Pearson's correlation coefficient:
chisqs2=apply(snps,1,compute_chisquare_2)
#create scatterplot
plot(chisqs, chisqs2)
# Compute p-values for each chi-square value using the pchisq 

pvals=pchisq(chisqs,1,lower.tail=FALSE)
chisqs2=apply(snps,1,compute_chisquare_2)
###save in a vector
signifthres<- 0.05
sum(pvals<signifthres)
exp_pvals<- seq(from=(1/num_pval), to=1, by=(1/num_pval))
exp_pvals
