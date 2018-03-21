#----------------------------#
# Install and load R Packages
#----------------------------#
install.packages(c("httr", "jsonlite"))
library(httr)
library(jsonlite)


#----------------------------#
# Request
#----------------------------#

#define url to website
url  <- "https://data.cityofnewyork.us"

#define path to API incl. filtering data
path <- "/resource/2yzn-sicd.json?$limit=50000&payment_type=1" 

#Execute an API call with GET 
raw_result <- GET(url = url, path = path)


#----------------------------#
# Response
#----------------------------#

#check if API call worked
class(raw_result)
names(raw_result)
raw_result$status_code 

#inspect result
head(raw_result$content)

#translate unicode into text (contains JSON file)
raw_content <- rawToChar(raw_result$content) 

#check raw_content
nchar(raw_content) 
substr(raw_content, 1, 1000)

#parse JSON file into dataframe
data <- fromJSON(raw_content) 

#safe dataframe local as csv file
write.csv(data, "taxi2015.csv")

#source: https://www.r-bloggers.com/accessing-apis-from-r-and-a-little-r-programming/