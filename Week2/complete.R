complete <- function(directory, id = 1:332) {
  files <- list.files(path = directory, pattern = "*.csv", full.names = T)
  df <- data.frame(id=numeric(), obs=numeric())
  for(row in id) {
    obs <- sum(complete.cases(read.csv(files[row])))
    df[nrow(df)+1,] <- c(row, obs)
  }
  df
}