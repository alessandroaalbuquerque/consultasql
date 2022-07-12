#Importar módulo para o powershell
Import-Module "PATH" = "HOST\CLUSTER,PORTA"; 

#Varíavel para conexão com o DB
$db = "DB,PORT"; 

#Variável para a query
$query = "QUERY"; 

#Variáveis para a autenticação
$User = "USER"; 
$Pass = "PASS"; 

#Código para realizar a consulta via powershell
Invoke-Sqlcmd -ServerInstance $SQLServer -Database $db -Query $query -Username $User -Password $Pass | Select -ExpandProperty Column1
