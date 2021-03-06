complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
#   directory<-"specdata"
#   id<-30:25
  nobs<-numeric()
  for (i in id) {
    d<-read.csv(paste(directory,"/",formatC(i,width=3,flag="0"),".csv",sep=""))
    nobs<-c(nobs,sum(as.integer(complete.cases(d))))
  }
  data.frame(id, nobs)
}
