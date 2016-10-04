setwd("~/Desktop/stat_159/hw02/data/")
eda = read.csv("Advertising.csv", header = TRUE)
eda = eda[,-1]

pdf(file = "/Users/MandyZhang/Desktop/stat_159/hw02/images/scatterplot-tv-sales.pdf")
plot(eda$TV, eda$Sales, pch = 20, col = "dark red", ylab = "Sales", xlab = "TV")
abline(lm(eda$Sales~eda$TV), col = "dark blue", cex = 100)
dev.off()

png(file = "/Users/MandyZhang/Desktop/stat_159/hw02/images/scatterplot-tv-sales.png")
plot(eda$TV, eda$Sales, pch = 20, col = "dark red", ylab = "Sales", xlab = "TV")
abline(lm(eda$Sales~eda$TV), col = "dark blue", cex = 100)
dev.off()

summary(lm(eda$Sales~eda$TV))
aa = lm(eda$Sales~eda$TV)

library(knitr)
kable(summary(aa)$coef, digits=c(4,4,2,4), caption = "JWIEOT")
xtable(summary(aa)$coef, digits = c(4,4,2,4), caption = "chart 1")






