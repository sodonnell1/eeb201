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