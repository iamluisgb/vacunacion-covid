
shinyUI(fluidPage(

    # Título
    titlePanel("Vacunación contra la covid en España"),
       
        tags$style(type = "text/css", "#map {height: calc(100vh - 80px) !important;}"), # mapa a tamaño completo
        leafletOutput("map"),
         helpText(   a("Datos disponibles aquí",target="_blank", href="https://www.mscbs.gob.es/profesionales/saludPublica/ccayes/alertasActual/nCov/vacunaCovid19.htm"))
    )
)
