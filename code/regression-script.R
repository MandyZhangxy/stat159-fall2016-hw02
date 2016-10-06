setwd(file.path(getwd()))
eda = read.csv("../data/Advertising.csv", header = TRUE)
eda = eda[,-1]

pdf(file = "../images/scatterplot-tv-sales.pdf")

plot(eda$TV, eda$Sales, pch = 20, col = "deeppink3", ylab = "Sales", xlab = "TV", cex = 1.2, main = "Simple Linear Regression")
apply(cbind(eda$TV,eda$TV,eda$Sales, fitted(lm(eda$Sales~eda$TV))), 1, function(coords){
  lines(coords[1:2], coords[3:4], col = "darkgrey")})
abline(lm(eda$Sales~eda$TV), col = "dark blue", lwd = 2)

dev.off()

png(file = "../images/scatterplot-tv-sales.png",width=8,height=6,units="in",res=100)

plot(eda$TV, eda$Sales, pch = 20, col = "deeppink3", ylab = "Sales", xlab = "TV", cex = 1.2)
apply(cbind(eda$TV,eda$TV,eda$Sales, fitted(lm(eda$Sales~eda$TV))), 1, function(coords){
  lines(coords[1:2], coords[3:4], col = "darkgrey")})
abline(lm(eda$Sales~eda$TV), col = "dark blue", lwd = 2)
title("Simple Linear Regression", sub = "Figure 1: scatter plot with fitted regression line",
      cex.main = 2,   font.main= 4,
      cex.sub = 1, font.sub = 3)

dev.off()

reg = lm(eda$Sales~eda$TV)
save(reg, file = "../data/regression.RData")



