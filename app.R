#01 : source libraries before app starts ----
library(shiny)
library(DT)
library(osrm)
library(leaflet)
library(sf)

#02 : Placeholder, read in the database ----

#03 : Source ui and server components ----
source("ui/map_ui.R")
source("server/map_server.R")

#04 : Finally, run the application, sourcing the map_ui and map_server files ----
shinyApp(map_ui, map_server) #can further modularise this if nessesary, e.g. call multiple xxx_ui and xxx_server functions, into a singular ui and server function which is then passed to runApp() 