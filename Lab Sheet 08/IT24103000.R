setwd("C:\\Users\\it24103000\\Desktop\\IT24103000")

data <- read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data)
attach(data)

#Que_1
#p_mean
pop_mean <- mean(Weight.kg.)
#SD
pop_sd <- sd(Weight.kg.) * sqrt((length(Weight.kg.)-1)/length(Weight.kg.))

#Que_2
sample_means <- numeric(25)
sample_sds <- numeric(25)
for (i in 1:25) {
  sample_i <- sample(Weight.kg., size=6, replace=TRUE)
  sample_means[i] <- mean(sample_i)
  sample_sds[i] <- sd(sample_i)
}



#Que3
mean_of_means <- mean(sample_means)

#sd
sd_of_means <- sd(sample_means)
