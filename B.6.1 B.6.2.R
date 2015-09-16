###B.6 Iterated Actions
> m<- matrix(1:10, nrow = 2)
> m
[,1] [,2] [,3] [,4] [,5]
[1,]    1    3    5    7    9
[2,]    2    4    6    8   10
> apply( m, MARGIN = 1, mean)
[1] 5 6
> apply(m, MARGIN = 2, sum)
[1]  3  7 11 15 19
> sapply(1:10, function(i) mean(rnorm(5)))
[1] -0.206944275 -0.344657931  0.128287121 -0.259080364
[5]  0.000918138  0.487736950 -0.749359940  0.372024814
[9]  0.497783710  0.475130027
> ##B.6.2 Dependent iterations
  > gens<- 10
  > output<- numeric(gens=1)
  Error in numeric(gens = 1) : unused argument (gens = 1)
  > output<- numeric(gens+1)
  > output[1]<-25
  > for(t in 1:gens) output[t=1]<- output[t]+ round(rnorm(n = 1, mean=0, sd = 2), 0)
  > output
  [1] 1 0 0 0 0 0 0 0 0 0 0