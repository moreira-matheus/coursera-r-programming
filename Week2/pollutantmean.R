pollutantmean <- function(directory, pollutant, id = 1:332) {
  files <- list.files(path = directory, pattern = "*.csv", full.names = T)
  df <- do.call(rbind, lapply(files[id], read.csv))
  mean(df[[pollutant]], na.rm = TRUE)
}