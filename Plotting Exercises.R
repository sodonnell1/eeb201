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
