setwd(file.path(getwd()))
eda = read.csv("data/Advertising.csv", header = TRUE)
eda = eda[,-1]

pdf(file = "images/scatterplot-tv-sales.pdf", height = 4.5, width = 7)

plot(eda$TV, eda$Sales, pch = 20, col = "deeppink3", ylab = "Sales", xlab = "TV", cex = 1.2)
apply(cbind(eda$TV,eda$TV,eda$Sales, fitted(lm(eda$Sales~eda$TV))), 1, function(coords){
  lines(coords[1:2], coords[3:4], col = "darkgrey")})
abline(lm(eda$Sales~eda$TV), col = "dark blue", lwd = 2)

dev.off()

png(file = "images/scatterplot-tv-sales.png")

plot(eda$TV, eda$Sales, pch = 20, col = "deeppink3", ylab = "Sales", xlab = "TV", cex = 1.2)
apply(cbind(eda$TV,eda$TV,eda$Sales, fitted(lm(eda$Sales~eda$TV))), 1, function(coords){
  lines(coords[1:2], coords[3:4], col = "darkgrey")})
abline(lm(eda$Sales~eda$TV), col = "dark blue", lwd = 2)

dev.off()

reg = lm(eda$Sales~eda$TV)
save(reg, file = "data/regression.RData")



