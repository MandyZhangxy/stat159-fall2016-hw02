setwd(file.path(getwd()))
eda = read.csv("data/Advertising.csv", header = TRUE)
eda = eda[,-1]
summary(eda$TV)
summary(eda$Sales)

png(file = "images/histogram-tv.png")
hist(eda$TV, main = "Histogram of TV")
dev.off()

png(file = "images/histogram-sales.png")
hist(eda$Sales, main = "Histogram of Sales")
dev.off()

pdf(file = "images/histogram-tv.pdf")
hist(eda$TV, main = "Histogram of TV")
dev.off()

pdf(file = "images/histogram-sales.pdf")
hist(eda$Sales, main = "Histogram of Sales")
dev.off()

sink(file = "data/eda-output.txt")
cat("TV summary statistics\n\n")
summary(eda$TV)
cat("Sales summary statistics\n\n")
summary(eda$Sales)
sink()
