#Q1
setwd("C:\\Users\\HP\\OneDrive\\Desktop\\IT24102225")
Delivery_Times<- read.table("Exercise - Lab 05.txt", header = TRUE, sep =",")
head(Delivery_Times)

#Q2
histogram <- hist(Delivery_Times$Delivery_Time_.minutes.,main = "X2",xlab = "Delivery Time",ylab = "Frequency",breaks = seq(20, 70, by = 5),right = FALSE)

#Q4
freq <- histogram$counts 
breaks <- histogram$breaks
cum.freq <- cumsum(freq)
new<- c()
for(i in 1: length(breaks)){
  if(i==1){
    new[i]=0
  }else{
    new[i]= cum.freq[i-1]
  }
}
plot(breaks, new, type='l', main="Cumulative Frequency Polygon", xlab= "", ylab="Cumulative Frequency", ylim=c(0,max(cum.freq)))
cbind(Upper=breaks[-1], CumFreq=new[-1])
