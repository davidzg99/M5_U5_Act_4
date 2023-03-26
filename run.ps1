# Definimos el nombre del archivo YAML de Docker Compose
$dockerComposeFile = "docker-compose.yml"

# Comando para levantar los servicios de Docker Compose
$composeUpCommand = "docker-compose up --detach --scale frontend=2 --scale backend=2"

# Comando para parar los servicios de Docker Compose
$composeDownCommand = "docker-compose down"

# Comando para mostrar los logs de Docker Compose
$composeLogsCommand = "docker-compose logs -f"

# Levantamos los servicios de Docker Compose
Write-Host "Levantando servicios de Docker Compose..."
Invoke-Expression "docker-compose -f $dockerComposeFile up -d --scale frontend=2 --scale backend=2"

# Mostramos los logs de Docker Compose
Write-Host "Mostrando logs de Docker Compose..."
Invoke-Expression $composeLogsCommand

# Paramos los servicios de Docker Compose
Write-Host "Parando servicios de Docker Compose..."
Invoke-Expression $composeDownCommand
