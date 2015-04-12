pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  #    directory<-"specdata"
  #   id<-1:10
  
  #   
  w<-numeric()
  #   pollutant<-"sulfate"
  #   mydata<-sapply(dict,read.csv)
  for (i in id) {
    d<-read.csv(paste(directory,"/",formatC(i,width=3,flag="0"),".csv",sep=""))
    w<-c(w,d[[pollutant]])
  }
  round(mean(w,na.rm=TRUE),digits=3)
  #   formatC(mean(w,na.rm=T),digits=3,format="f")
}
