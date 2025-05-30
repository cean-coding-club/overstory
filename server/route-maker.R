library(osrm)
library(leaflet)
library(sf)

df <- data.frame(com = c("A", "B", "C"),
                lon = c(31.043515, 31.029080, 31.002896),
                lat = c(-29.778562, -29.795506, -29.836168),
                time = as.POSIXct(c("2020-03-18 07:56:59","2020-03-18 12:28:58","2020-03-18 18:24:52")))
df <- st_as_sf(df, coords = c(2:3), crs = st_crs(4326))

trips <- osrmTrip(df, returnclass="sf")
trip <- trips[[1]]$trip

leaflet(trip) %>% 
  addTiles() %>% 
  addPolylines() %>%
  addCircleMarkers(lat = st_coordinates(df)[,"Y"],
                   lng = st_coordinates(df)[,"X"],
                   popup = paste(df$com,"-",format(df$time,"%H:%M:%S")),
                   color = "red",
                   stroke = FALSE,
                   radius = 8,
                   fillOpacity = 0.8)
