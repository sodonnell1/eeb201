##B.3.1 Vectors
> Y= c(8.3, 8.6, 10.7, 10.8, 11, 11, 11.1, 11.2, 11.3, 11.4)
> #equivalent to Y<- c(x)
  > y
Error: object 'y' not found
> Y
[1]  8.3  8.6 10.7 10.8 11.0 11.0 11.1 11.2 11.3 11.4
> 1:4
[1] 1 2 3 4
> 4:1
[1] 4 3 2 1
> -1:3
[1] -1  0  1  2  3
> -(1:3)
[1] -1 -2 -3
> seq(from =1, to = 3, by 0.2)
Error: unexpected numeric constant in "seq(from =1, to = 3, by 0.2"
> seq(from = 1, to = 3, by = 0.2)
[1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
> #equivalent to seq(1, 3, by = 0.2)
  > seq(1, 3, by = 0.2)
[1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
> #also equivalent to seq(1, 3, length = x)
  > seq(1, 3, lenght = 7)
[1] 1 2 3
Warning message:
  In seq.default(1, 3, lenght = 7) :
  extra argument ‘lenght’ will be disregarded
> seq(1,3, length = 7)
[1] 1.000000 1.333333 1.666667 2.000000 2.333333 2.666667
[7] 3.000000
> rep(1,3)
[1] 1 1 1
> #repeats specified first integer "x" number of times
  > rep(1:3, each = 2)
[1] 1 1 2 2 3 3
> ##B.3.2 Getting information about vectors
  > sum(Y)
[1] 105.4
> mean(Y)
[1] 10.54
> max(Y)
[1] 11.4
> length(Y)
[1] 10
> summary(Y)
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
8.30   10.72   11.00   10.54   11.18   11.40 
> names<-c("Sarah", "Yunluan")
> names
[1] "Sarah"   "Yunluan"
> b <-c(TRUE, FALSE)
> B
Error: object 'B' not found
> b
[1]  TRUE FALSE
> class(Y)
[1] "numeric"
> class(b)
[1] "logical"
> Y>10
[1] FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
[10]  TRUE
> Y != 11
[1]  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE
[10]  TRUE
> a<-1:3
> b<- 4:6
> a+b
[1] 5 7 9
> a*b
[1]  4 10 18
> a/b
[1] 0.25 0.40 0.50
> a+1
[1] 2 3 4
> a*2
[1] 2 4 6
> 1/a
[1] 1.0000000 0.5000000 0.3333333
> a*1:2
[1] 1 4 3
Warning message:
  In a * 1:2 :
  longer object length is not a multiple of shorter object length
> a* c(1, 2, 1)
[1] 1 4 3
> 1:4 * 1:2
[1] 1 4 3 8