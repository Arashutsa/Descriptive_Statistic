
# Read the CSV file
file.cars=read.csv("CARS.csv") 


# Make new MPG_Combo variable
MPG_Combo <- 0.6*file.cars$MPG_City +0.4*file.cars$MPG_Highway

#Add MPG_Combo variable to the end of tabale
file.cars.mpg_combo <- cbind(file.cars,MPG_Combo)



#Draw Box plot for the MPG_Combo variable and trim box plot
boxplot(file.cars.mpg_combo$MPG_Combo,main="Combined MPG (60% in City and 40% in Highway)",xlab="Combo",ylab="MPG",col = "aquamarine3",border ="aquamarine4")

#Point the mean value with a blue asterisk sign
points(mean(file.cars.mpg_combo$MPG_Combo,na.rm = TRUE),col="blue",pch=8)

