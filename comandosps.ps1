#COMANDO PARA ABRIR POWERSHELL
powershell
#Comando para ver version NTFS
fsutil fsinfo ntfsinfo c:
#Comando para ver interfaz de red
Get-NetIPConfiguration
#Para obtener el adaptador de red
Get-NetAdapter
#Para configurar la direccion IP
New-NetIPAddress -InterfaceIndex 1 -IPAddress 192.168.1.202 -PrefixLength 24 -DefaultGateway 192.168.1.201
#Para configurar el DNS
Set-DnsClientServerAddress -InterfaceIndex 1 -ServerAddresses 192.168.1.201
#Cambiar el nombre del equipo
Rename-Computer -NewName master-upv-es-r

#Comando para cambiar el servidor horario
w32tm / config / syncfromflags: manual /manualpeerlist:ogether0.us.pool.ntp.org 1.us.pool.ntp.org / update
#Parar el servicio
Stop-Service w32time
#Empezar el servicio
Start-Service w32time
