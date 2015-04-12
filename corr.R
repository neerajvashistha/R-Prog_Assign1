corr <- function(directory, threshold = 0) {
   dataF <- complete(directory)
  id1 <- dataF[dataF["nobs"] > threshold, ]$id
  opCor <- numeric()
  for (i in id1) {
    
    y <- read.csv(paste(directory, "/", formatC(i, width = 3, flag = "0"), ".csv", sep = ""))
    dataF1 <- y[complete.cases(y), ]
    opCor <- c(opCor, cor(dataF1$sulfate, dataF1$nitrate))
  }
  return(opCor)
}