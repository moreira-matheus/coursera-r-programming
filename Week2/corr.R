corr <- function(directory, threshold = 0) {
  files <- list.files(path = directory, pattern = "*.csv", full.names = T)
  corrs <- c()
  for(file in files) {
    df <- read.csv(file)
    if(sum(complete.cases(df)) > threshold) {
      correlation <- cor(df[complete.cases(df),"sulfate"],
                         df[complete.cases(df),"nitrate"])
      corrs <- c(corrs, correlation)
    }
  }
  corrs
}