# Dataextraction trough API in R
Extraction of taxi drive data of the new york city open data platform API

### **What?** <br>
REQUEST 
> - define url to tackle Socrata REST API in order to retrieve data from the new york open data platform
> - define path to extract json data about taxi drives incl. filtering
> - execute API get-call to download the data

RESPONSE
> - check status code of http response
> - parse json file to a more readable dataframe 
> - store dataframe as csv file

### **Libraries:**
> - httr: enables working with web APIs organised by HTTP verbs
> - jsonlite: json parser and generator
