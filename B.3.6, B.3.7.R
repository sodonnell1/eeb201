##B.3.6 Lists
my.list <- list(My.Y = Y, b=b, names, Weed.data=dat, My.matrix = M2, my.no=4)
> my.list
$My.Y
[1]  8.3  8.6 10.7 10.8 11.0 11.0 11.1 11.2 11.3 11.4

$b
[1] 4 5 6

[[3]]
[1] "Sarah"   "Yunluan"

$Weed.data
species treatment height width
1    S.altissima   Control    1.1   1.0
2       S.rugosa     Water    0.8   1.7
3 E.graminifolia   Control    0.9   0.6
4      A.pilosus     Water    1.0   0.2

$My.matrix
[,1] [,2]
[1,]    1    2
[2,]    3    4

$my.no
[1] 4
my.list[["b"]]
[1] 4 5 6
> my.list[[2]]
[1] 4 5 6
> my.list$b
[1] 4 5 6
> #same as my.list[["b"]]
  > my.list[1:2]
$My.Y
[1]  8.3  8.6 10.7 10.8 11.0 11.0 11.1 11.2 11.3 11.4

$b
[1] 4 5 6

> my.list[["b"]] [1]
[1] 4
> #will extract specific components from the list
  > ##B.3.7 Data frames are also lists
  > mean(dat$height)
[1] 0.95