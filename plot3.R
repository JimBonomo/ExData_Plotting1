tst <- read.csv("household_power_consumption.txt", sep = ";")
tst$Date <- as.Date(tst$Date,"%d/%m/%Y")
ss1 <- subset(tst,tst[,1]=="2007-02-01")
ss2 <- subset(tst,tst[,1]=="2007-02-02")
ss<- merge(ss1,ss2,all = TRUE)
png(file = "plot3.png")
plot(as.numeric(as.character(ss$Sub_metering_1)), 
     main = "",
     ylab = "Energy sub metering", 
     type = "l",
     xaxt = "n",
     xlab = ""
)
lines(as.numeric(as.character(ss$Sub_metering_2)), 
     col = "red"
)
lines(ss$Sub_metering_3,
     col = "blue"
)
axis.Date(1,
          x = ss$Date,
          format = "%a"
)
legend(x ="topright",
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black","red","blue"), 
       lty = 1
       )
dev.off()
