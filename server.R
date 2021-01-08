


shinyServer(function(input, output) {
    
    
    output$map <- renderLeaflet({
        leaflet(comunidades) %>% addPolygons(color = "#444444", weight = 1, smoothFactor = 0.5,
                                             opacity = 1.0, fillOpacity = 1.0, fillColor = ~pal(`% sobre entregadas`),
                                             popup = ~paste(
                                                 "<b>","Administradas sobre entregadas:", "</b>",`% sobre entregadas`," %", "<br>",
                                                 "<b>","Administradas:","</b>",prettyNum(`Dosis administradas (2)`, big.mark = ","), "<br>",
                                                 "<b>","Recibidas:","</b>",prettyNum(`Dosis entregadas (1)`, big.mark = ","), "<br>",
                                                 "<b>","Fecha actualización:","</b>",`Fecha de la última vacuna registrada (2)`, "<br>")) %>%
            addTiles()
        
    })

})
