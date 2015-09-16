##B.3.3 Extraction and missing values
> Y[1]
[1] 8.3
> Y[1:3]
[1]  8.3  8.6 10.7
> Y> mean(Y)
[1] FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
[10]  TRUE
> Y[Y> mean(Y)]
[1] 10.7 10.8 11.0 11.0 11.1 11.2 11.3 11.4
> a<- c(5, 3, 6, NA)
> #is.na will reveal all values that are NA
  > is.na(a)
[1] FALSE FALSE FALSE  TRUE
> !is.na(a)
[1]  TRUE  TRUE  TRUE FALSE
> # !is.na will reveal all values that are NOT NA
  > a[!is.na(a)]
[1] 5 3 6
> # shows all values in the vector that are not NA
  > na.exclude(a)
[1] 5 3 6
attr(,"na.action")
[1] 4
attr(,"class")
[1] "exclude"
> # na.exclude will exclude the na values and attempt to offer values that fit
  > mean(a)
[1] NA
> mean(a, na.rm = TRUE)
[1] 4.666667
> d<-na.exclude(a)
> mean(d)
[1] 4.666667
> #d<- na.exclude(a) caused the system to ignore the NA values when using another function meaning it selected all values in "a" which were not NA values
  ##B.3.4 Matrices
  > matrix(letters [1:4], ncol=2)
[,1] [,2]
[1,] "a"  "c" 
[2,] "b"  "d" 
> #Creates a simple 2x2 matrix using the letters valued 1-4
  > M<- matrix(1:4, nrow=2)
> M
[,1] [,2]
[1,]    1    3
[2,]    2    4
> M2 <- matrix(1:4, nrow=2, byrow=TRUE)
> M2
[,1] [,2]
[1,]    1    2
[2,]    3    4
> I <-diag(1, nrow=2)
> I
[,1] [,2]
[1,]    1    0
[2,]    0    1
> Minv<- solve(M)
> M%*% Minv
[,1] [,2]
[1,]    1    0
[2,]    0    1
> M[1, 2]
[1] 3
> M[1, 1:2]
[1] 1 3
> M[, 2]
[1] 3 4
> M[,]
[,1] [,2]
[1,]    1    3
[2,]    2    4
> ##B.3.5 Data Frames
  > dat<- data.frame(species = c("S.altissima", "S.rugosa", "E.graminifolia", "A.pilosus"), treatment = factor(c("Control", "Water", "Control", "Water")), height= c(1.1, 0.8, 0.9, 1), width = c(1, 1.7, 0.6, 0.2))
> dat
species treatment height width
1    S.altissima   Control    1.1   1.0
2       S.rugosa     Water    0.8   1.7
3 E.graminifolia   Control    0.9   0.6
4      A.pilosus     Water    1.0   0.2
> dat[2, ]
species treatment height width
2 S.rugosa     Water    0.8   1.7
> [dat[, 2] == "Water"]
Error: unexpected '[' in "["
> dat[dat[, 2] == "Water",]
species treatment height width
2  S.rugosa     Water    0.8   1.7
4 A.pilosus     Water    1.0   0.2
> subset(dat, treatment == "Water")
species treatment height width
2  S.rugosa     Water    0.8   1.7
4 A.pilosus     Water    1.0   0.2
> #subset function works in the same way as pulling up the "TRUE" entries using the dat[dat[]=="x"] function
  > c("Control", "Medium", "High")
[1] "Control" "Medium"  "High"   
> rep(c("Control", "Medium", "High"), each=3)
[1] "Control" "Control" "Control" "Medium"  "Medium" 
[6] "Medium"  "High"    "High"    "High"   
> Treatment <- factor(rep(c("Control", "Medium", "High"), each= 3))
> Treatment
[1] Control Control Control Medium  Medium  Medium  High   
[8] High    High   
Levels: Control High Medium
> # R will always arrange factors alphabetically unless otherwise specified
  > levels(Treatment)
[1] "Control" "High"    "Medium" 
> stripchart(1:9 ~ Treatment)
> #stripchart(x:x ~ "Factors") allows you to rearrange the order of the levels
  > Treatment <- factor(rep(c("Control", "Medium", "High"), each = 3), levels= c("Control", "Medium", "High"))
> levels(Treatment)
[1] "Control" "Medium"  "High"   
> stripchart(1:9 ~ Treatment)
> #relevel will also give the same functionality
   