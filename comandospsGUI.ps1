#Comandopara cambiar el servidor horario
w32tm / config / syncfromflags: manual /manualpeerlist:ogether0.us.pool.ntp.org 1.us.pool.ntp.org / update
#Parar el servicio
Stop-Service w32time
#Empezar el servicio
Start-Service w32time
