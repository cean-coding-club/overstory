map_server <- function(input, output) {
   
  df <- data.frame(com = c("A", "B"),
                   lon = c(115.892352, 115.894492),
                   lat = c(-32.010956, -32.004509)
                   )
  df <- st_as_sf(df, coords = c(2:3), crs = st_crs(4326))
  
  trips <- osrmTrip(df, osrm.profile = "foot", returnclass="sf")
  trip <- trips[[1]]$trip
  
  output$nav_map <- renderLeaflet({
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
  })
}