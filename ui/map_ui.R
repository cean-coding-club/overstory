map_ui <- fluidPage(
  titlePanel("Overstory"),
  sidebarLayout(
    sidebarPanel(
      div(
        # you can add input selectors here as needed
      )
    ),
    mainPanel(
      tabsetPanel(
        id = "tabs",
        type = "tabs",
        
        tabPanel(
          title = "Summary",
          wellPanel(
            h2("Overstory: Tree Survey Dataset (placeholder info)"),
            tags$p("This dataset contains tree survey data collected from forest plots in 2023. We will be gradually adding to this Shiny app and visualizing different parts of the dataset."),
            
            fluidRow(
              column(8,
                     tags$p("The dataset includes the following information:"),
                     tags$ul(
                       tags$li("Tree species and identification"),
                       tags$li("Diameter at breast height (DBH) measurements"),
                       tags$li("Tree height"),
                       tags$li("Canopy cover estimates"),
                       tags$li("Plot locations and environmental metadata")
                     ),
                     
                     h3("About the Survey"),
                     tags$p("This tree survey was conducted in temperate forest plots to assess biodiversity, forest structure, and carbon storage potential. The plots were surveyed using standard forestry measurement protocols."),
                     tags$p("Tree species were identified in the field and verified where necessary using herbarium specimens."),
                     tags$p("In addition to tree-level data, environmental parameters such as soil type, moisture level, and canopy light penetration were recorded."),
                     tags$p("The survey contributes to ongoing monitoring of forest dynamics and responses to climate change.")
              ),
              
              column(4,
                     div(
                       tags$img(src = "over_STORY_logo.png", width = "100%"),
                       tags$caption(
                         "Overstory logo"
                       ),
                       tags$img(src = "https://www.alltreesperth.com.au/sites/default/files/media/jacaranda%20tree.jpg", width = "100%"),
                       tags$caption(
                         "Jacaranda tree in Perth, Western Australia",
                         tags$br(),
                         "(",
                         tags$a(href = "https://www.alltreesperth.com.au/", target = "_blank", "alltreesperth.com.au"),
                         ")"
                       )
                     ),
                     tags$br(),
                     tags$br()
              )
            )
          )
        ),
        
        tabPanel(
          title = "Table",
          wellPanel(
            "This is the table tab — table of underlying tree data will be displayed here."
          )
        ),
        
        tabPanel(
          title = "Map",
          wellPanel(
            "This is the map tab — tree plot locations will be displayed here."
          )
        )
      )
    )
  )
)
