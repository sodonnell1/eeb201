##B.13.3 More than one response variable
> trees.sort<- trees[order(trees$Girth, trees$Height),]
> matplot(trees.sort$Girth, trees.sort[, 2:3], type = "b")
> text(18, 40, "Volume", col = "darkred")
> text(10, 58, "Height")
> quartz(, 4, 4)
> par(mar = c(5, 4, 2, 4))
> plot(Girth, Volume, main = "My Trees")
> par(new= TRUE)
> plot(Girth, Height, axes = FALSE, bty = "n", xlab = "", ylab= "", pch = 3)
> axis(4)
> mtext("Height", side = 4, line = 3)
> par(mar= c(5, 4, 2, 4))
> plot(Girth, Volume, main= "My Trees")
> par(new= TRUE)
> plot(Girth, Height, axes = FALSE, bty = "n", xlab= "", ylab="", pch=3)
> axis(4)
> mtext("Height", side = 4, line = 3)