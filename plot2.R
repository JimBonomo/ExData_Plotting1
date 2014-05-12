tst <- read.csv("household_power_consumption.txt", sep = ";")
tst$Date <- as.Date(tst$Date,"%d/%m/%Y")
ss1 <- subset(tst,tst[,1]=="2007-02-01")
ss2 <- subset(tst,tst[,1]=="2007-02-02")
ss<- merge(ss1,ss2,all = TRUE)
png(file = "plot2.png")
plot(as.numeric(as.character(ss$Global_active_power)), 
     main = "",
     ylab = "Global Active Power (kilowatts)", 
     type = "l",
     xaxt = "n",
     xlab = ""
)
axis.Date(1,
          x = ss$Date,
          format = "%a"
)
dev.off()
