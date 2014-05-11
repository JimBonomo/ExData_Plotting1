tst <- read.csv("household_power_consumption.txt", sep = ";")
tst$Date <- as.Date(tst$Date,"%d/%m/%Y")
ss1 <- subset(tst,tst[,1]=="2007-02-01")
ss2 <- subset(tst,tst[,1]=="2007-02-02")
ss<- merge(ss1,ss2,all = TRUE)
png(file = "plot1.png")
hist(as.numeric(as.character(ss$Global_active_power)), 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     col = "red")
dev.off()