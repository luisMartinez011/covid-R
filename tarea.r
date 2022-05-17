install.packages("jsonlite")
library(jsonlite)

### fromJSON takes JSON strings
db <- fromJSON("data.json")
muertes <- db$MEX$data$new_deaths_smoothed_per_million
dias <- as.Date(db$MEX$data$date)
vacunaciones <- db$MEX$data$new_vaccinations_smoothed_per_million

plot(muertes, xaxt = "n", type = "l", col="red");
# plot(vacunaciones, xaxt = "n", type = "l", col="red");