


APUS11A72610 <- APUS11A72610[-c(1,2,3,4,5,6,7,8,9,10),] #removing non-observations

colnames(APUS11A72610) = c("Month", "per kWh price") # renaming the columns

APUS11A72610$newMonth = anytime::anydate(as.Date(APUS11A72610$Month))

files <- list.dirs(path = "/Users/User/Documents/electricity")
files


myfiles <- lapply(files, read_xls)




for (file in files) {
  file <- read_xls(paste("/Users/User/Documents/electricity/", val, sep = ""))
  
}
getwd()
file_paths <- fs::dir_ls("electricity")

file_contents<- list()

for (i in seq_along(file_paths)) {
  file_contents[[i]] <- read_excel(file_paths[[i]])
}

file_contents <- set_names(file_contents, file_paths)
file_contents$`electricity/APUS11A72610.xls`$`FRED Graph Observations`
