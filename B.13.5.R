##B.13.5 Creating a Graphics file
> getwd()
[1] "/Users/scottodonnell/GitHub/Rbootcamp"
> quartz(, 4, 4)
> plot(Height, Volume, main = "Tree Data")
> dev.print(pdf, "MyTree.pdf")
RStudioGD 
2 