library(tidyverse)
library(retriever)
library(dplyr)
library(nycflights13)
library(tidyr)


retrieve_answer<-c(1,2,3,4,5,6)

print ("Introcucir un numero de 1 a 6")

numero_inicial <- function(x)
  
  if(x==retrieve_answer){
    print("5.2.4 : items 1, and 2")
    vuelos <- filter(flights, arr_delay >=120)
    vuelos
    viajeHou <- filter(flights, dest == "IAH" | dest == "HOU")
    viajeHou
    operadospor <- filter(flights, carrier == "AA" | carrier == "UA" | carrier  =="DL")
    operadospor
    vuelos_en_verano <- filter(flights,   month == 7 | month == 8 | month == 9)
    vuelos_en_verano
    vuelos_llego_tarde <- filter(flights, dep_delay <= 0, arr_delay >= 120)
    vuelos_llego_tarde
    vuelos_retrasados <- filter(flights, dep_delay - arr_delay > 30, dep_delay >= 60)
    vuelos_retrasados
    salida_vuelos <- filter(flights, dep_time== 2400 | dep_time <= 600)
    salida_vuelos
    print("5.3.1 : all items")
    valores_faltantes <- arrange(flights, desc(dep_delay)) 
    valores_faltantes
    valores_faltantes <- arrange(flights, desc(dep_delay)) 
    valores_faltantes
    print("5.4.1 : items 2, 3, and 4")
    seleccion <- select(flights, salida = dep_time,  llegada = arr_time, retrasos_salida = dep_delay,
                        retraso_llegada = arr_delay)
    seleccion
    prueba <- select(flights, dest, dest, dest)
    prueba
    print("5.5.2 Exercises: items 1, and 2")
    cant_minutos <- mutate(flights, salida = (dep_time %/% 100*60 + dep_time %/% 100)%%1400,
                           sal_programada = (sched_dep_time %/% 100 * 60 + sched_dep_time %% 100) %% 1400)
    
    select(cant_minutos, sched_dep_time, sal_programada, dep_time, salida)
    print(" 5.7.1 Exercises: item 2 ")
    
  }else{
    
    print("error, introduzca un numero de 1 a 6")
    
  }