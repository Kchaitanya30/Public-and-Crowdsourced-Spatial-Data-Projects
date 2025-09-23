

#install.packages("DBI")
#install.packages("sf")
#install.packages("RPostgres")
#install.packages("dplyr")
#install.packages("stringr")
#install.packages("lubridate")
library(DBI) # Database Interface package
library(sf) # spatial data operation
library(arcgislayers) # interface with feature service
library(RPostgres) # PostgreSQL driver for R
library(dplyr) # Data manipulation grammar
library(stringr) # String manipulation 
library(lubridate)


# Disable S2 spherical geometry an R package for geometric operations on S2 geometries for spatial indexing and operations, 
# because some of the geometries cross the prime meridian (in Guam).
sf::sf_use_s2(FALSE)

url1<- "https://services1.arcgis.com/UWYHeuuJISiGmgXx/arcgis/rest/services/311_Customer_Service_Requests_2024/FeatureServer/0"

lyr<- arc_open(url1)

df<- lyr |> arc_select(fields = c( "SRType", "CreatedDate", "CloseDate", "Longitude", "Latitude"))

df1<- df |> mutate(
  CreatedDate = ymd_hms(CreatedDate, tz="UTC"),
  CloseDate = ymd_hms(CloseDate, tz="UTC"),
  
  timetoclose= round(as.numeric(difftime(CloseDate, CreatedDate, units = "secs")))
)

df1 |> filter(timetoclose==0)|> nrow() #25012
df1 |> filter(timetoclose <= -1)|> nrow() #10008

df1<- df1|> mutate(
  timetoclose_days = round(timetoclose/86400, 1
))