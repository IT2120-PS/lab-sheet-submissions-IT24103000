
setwd("C:\Users\it24103000\Desktop\IT24103000")  

Delivery.Times <- read.table("Exercise - Lab 05.txt", header = TRUE)


names(Delivery.Times) <- "DeliveryTime"


head(Delivery.Times)


breaks_seq <- seq(20, 70, length.out = 10)


hist(
  Delivery.Times$DeliveryTime,
  breaks = breaks_seq,
  right = FALSE,  
  main = "Histogram of Delivery Times",
  xlab = "Delivery Time (minutes)",
  ylab = "Frequency",
  col = "skyblue",
  border = "white"
)


hist_data <- hist(
  Delivery.Times$DeliveryTime,
  breaks = breaks_seq,
  right = FALSE,
  plot = FALSE
)

freq_table <- data.frame(
  Interval = paste(head(breaks_seq, -1), tail(breaks_seq, -1), sep = "–"),
  Frequency = hist_data$counts,
  Cumulative_Frequency = cumsum(hist_data$counts)
)

print(freq_table)


plot(
  tail(breaks_seq, -1),  
  freq_table$Cumulative_Frequency,
  type = "o",
  main = "Cumulative Frequency Polygon (Ogive)",
  xlab = "Delivery Time (minutes)",
  ylab = "Cumulative Frequency",
  col = "red",
  pch = 16
)

