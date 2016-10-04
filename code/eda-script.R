setwd("~/Desktop/stat_159/hw02/data/")
eda = read.csv("Advertising.csv", header = TRUE)
eda = eda[,-1]
summary(eda$TV)
summary(eda$Sales)

png(file = "/Users/MandyZhang/Desktop/stat_159/hw02/images/histogram-tv.png")
hist(eda$TV, main = "Histogram of TV")
dev.off()

png(file = "/Users/MandyZhang/Desktop/stat_159/hw02/images/histogram-sales.png")
hist(eda$Sales, main = "Histogram of Sales")
dev.off()

pdf(file = "/Users/MandyZhang/Desktop/stat_159/hw02/images/histogram-tv.pdf")
hist(eda$TV, main = "Histogram of TV")
dev.off()

pdf(file = "/Users/MandyZhang/Desktop/stat_159/hw02/images/histogram-sales.pdf")
hist(eda$Sales, main = "Histogram of Sales")
dev.off()


