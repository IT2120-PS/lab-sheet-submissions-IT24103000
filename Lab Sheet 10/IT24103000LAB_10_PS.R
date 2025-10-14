setwd("C:\\Users\\it24103000\\Desktop\\IT24103000")
snack_data <- read.csv("Data.csv")

observed <- c(A = 120, B = 95, C = 85, D = 100)

prob <- rep(1/4, 4)

chisq.test(observed, p = prob)
