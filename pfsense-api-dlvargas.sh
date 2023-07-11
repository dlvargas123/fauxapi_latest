#!/bin/sh

# Paso 1: Descargar el archivo desde el repositorio de GitHub
fetch -o /usr/local/www/fauxapi_dlvargas.sh https://raw.githubusercontent.com/dlvargas123/fauxapi_latest/main/fauxapi_latest.sh

# Paso 2: Asignar permisos al archivo descargado
chmod +x /usr/local/www/fauxapi_dlvargas.sh

# Paso 3: Ejecutar fauxapi_latest.sh
echo "Y" | ./fauxapi_latest.sh

