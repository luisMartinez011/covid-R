install.packages("jsonlite");
library(jsonlite);


db <- fromJSON("data.json")
Muertes <- db$MEX$data$new_deaths_smoothed
Fechas <- as.Date(db$MEX$data$date)
Vacunaciones <- db$MEX$data$total_vaccinations

plot(Fechas[!is.na(Vacunaciones)],Vacunaciones[!is.na(Vacunaciones)],
type="l", col="blue", xlab="Años", ylab="Vacunaciones",
 main="Vacunas aplicadas");

#plot(Fechas, Muertes,  type = "l", col="green", xlab="Años", main="Muertes diarias por covid en Mexico");

