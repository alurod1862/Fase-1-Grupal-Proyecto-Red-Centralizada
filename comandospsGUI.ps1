#Comandopara cambiar el servidor horario
w32tm /config /syncfromflags:manual /manualpeerlist:"0.us.pool.ntp.org time.google.com" / update
#Parar el servicio
Stop-Service w32time
#Empezar el servicio
Start-Service w32time
#Saber SID
whoaim /user
