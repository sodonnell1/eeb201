###B.4 Functions
> help("mean")
> mean(1:4)
[1] 2.5
> mean(1:4 trim=0)
Error: unexpected symbol in "mean(1:4 trim"
> mean(1:4, trim=0)
[1] 2.5
> class(1:10)
[1] "integer"
> #defines what classification of data you are working with
  > class(warpbreaks)
[1] "data.frame"
> summary(1:10)
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
1.00    3.25    5.50    5.50    7.75   10.00 
> summary(warpbreaks)
breaks      wool   tension
Min.   :10.00   A:27   L:18   
1st Qu.:18.25   B:27   M:18   
Median :26.00          H:18   
Mean   :28.15                 
3rd Qu.:34.00                 
Max.   :70.00                 
> summary(lm(breaks ~ wool, data = warpbreaks))

Call:
  lm(formula = breaks ~ wool, data = warpbreaks)

Residuals:
  Min      1Q  Median      3Q     Max 
-21.037  -9.259  -3.648   4.713  38.963 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)   31.037      2.501  12.410   <2e-16 ***
  woolB         -5.778      3.537  -1.634    0.108    
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 13 on 52 degrees of freedom
Multiple R-squared:  0.04881,	Adjusted R-squared:  0.03052 
F-statistic: 2.668 on 1 and 52 DF,  p-value: 0.1084
MyBogusMean <- function(x, cheat = 0.05)
  + SumofX<-sum(x)
> MyBogusMean<-function(x, cheat = 0.05) {
  + SumOfX<-sum(x)
  + n<-length(x)
  + trueMean<- SumOfX/n
  + (1+cheat)*trueMean
  + }
> RealSales<-c(100, 200, 300)
> MyBogusMean(RealSales)
[1] 210
> MyBogusMean(RealSales, cheat = 0.1)
[1] 220
> MyBogusMean(RealSales, cheat=0)
[1] 200