########## Exercises
### exercise 1
signifthres<- 0.05
sum(pvals<signifthres)/sum(length(pvals))
## 0.0459218
signifthres<- 0.01
sum(pvals<signifthres)/sum(length(pvals))
## 0.01021425
signifthres<- 0.001
sum(pvals<signifthres)
## 0.01021425
num_pval<- sum(length(pvals))
## 4014
######
##Vector of expected P-values
exp_pvals<- seq(from=(1/num_pval), to=1, by=(1/num_pval))

###sorting the vector
pvaluesorta<- sort(pvals, decreasing=FALSE)
pvaluesort<- sort(exp_pvals, decreasing=FALSE)


####### QQ plot and log versions of pvals
-log10(pvals)
-log10(exp_pvals)
log_sort_pvals<- -log10(pvaluesorta)
log_exp_pvals<- -log10(pvaluesort)
plot(log_exp_pvals, log_sort_pvals, col=1, pch=9)
lines(0:5, 0:5, col=2, lwd=3 )
pdf("exercise_g_plot.pdf", width=4, height=7)
plot(log_exp_pvals, log_sort_pvals, col=1, pch=9)
lines(0:5, 0:5, col=2, lwd=3 )
dev.off()


##### Exercise 2


zz=read.table('pheno.sim.2014-1.txt', header=TRUE)


firstvalue<- quantile(zz[, 2], 0.25)
controls<-which(quantile(zz[, 2], 0.25))
print(controls)

maxvalue<- quantile(zz[,3], 0.75)
cases<- which(zz[,2]>maxvalue)
print(cases)

quantile(zz[, 2], 0.75)
## 7.354975


cases<- zz[desiredrows, ]
pdf("Glucose_levels_plot.pdf", width=6, height=6)
plot(density(zz[,2]), col=4, lwd=3, xlab="Individuals", ylab="Glucose Levels", xlim=c(3,9))
abline(v=quantile(zz[, 2], 0.75), col=3, lwd=3, lty=2)
abline(v=quantile(zz[, 2], 0.25), col=8, lwd=3, lty=2)
dev.off()


#####Extractions

case_genotypes<- snpsDataFrame['rs7584086_T', cases]
case_genotypes

control_genotypes<- snpsDataFrame['rs7584086_T', controls]
control_genotypes


table(as.numeric(control_genotypes))
table(as.numeric(case_genotypes))
