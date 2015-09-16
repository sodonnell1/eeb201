####B.13 Graphics
> ##B.13.1 Plot
  > data(trees)
> attach(trees)
> plot(Girth, Height)
> par(mar = c(5, 4, 3, 2))
> plot(Girth, Volume, type = "n", main= "My Trees")
> points(Girth, Volume, type = "h", col= "lightgrey", pch = 19)
> hts <- (Height - min(Height))/max(Height- min(Height))
> my.colors<- hcl(h= 30 + 270 * hts, alpha = 0.9)
> text(Girth, Volume, Height, col= my.colors, cex = 0.5 + hts)
