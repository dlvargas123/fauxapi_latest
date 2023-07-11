#!/bin/sh

# Punto de control 1: Verificar la descarga del archivo desde el repositorio de GitHub
fetch -o /usr/local/www/fauxapi_dlvargas.sh https://raw.githubusercontent.com/dlvargas123/fauxapi_latest/main/fauxapi_latest.sh
if [ $? -ne 0 ]; then
    echo "Error: Fallo al descargar el archivo desde GitHub"
    exit 1
fi

# Punto de control 2: Verificar la asignación de permisos al archivo descargado
chmod +x /usr/local/www/fauxapi_dlvargas.sh
if [ $? -ne 0 ]; then
    echo "Error: Fallo al asignar permisos al archivo descargado"
    exit 1
fi

# Punto de control 3: Verificar la ejecución de fauxapi_dlvargas.sh
sh /usr/local/www/fauxapi_dlvargas.sh
if [ $? -ne 0 ]; then
    echo "Error: Fallo al ejecutar fauxapi_dlvargas.sh"
    exit 1
fi

# Punto de control 4: Verificar la instalación de FauxAPI
if [ ! -f "/usr/local/www/fauxapi.php" ]; then
    echo "Error: FauxAPI no se instaló correctamente"
    exit 1
fi

# Punto de control final: Todo se ejecutó correctamente
echo "El script se ejecutó correctamente"
exit 0

