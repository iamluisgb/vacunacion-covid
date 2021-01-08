# Cargar librerias####
library(rgdal)
library(sf)
library(leaflet)
library(shiny)
library(dplyr)
library(readxl)

# Cargar datos####

comunidades<- st_read("comunidades.gpkg")
datos_vacunacion <- read_excel("Informe_Comunicacion.xlsx")

# Procesar datos


  comunidades$Codigo <- as.numeric(comunidades$Codigo)
  comunidades <- left_join(comunidades, datos_vacunacion)
  comunidades$`% sobre entregadas` <- round(comunidades$`% sobre entregadas`, 4) * 100

  pal <- colorNumeric("Blues", domain = comunidades$`% sobre entregadas`) #paleta de colores para el mapa