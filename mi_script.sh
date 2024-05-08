#!/bin/bash

# Asignar el primer argumento a una variable
mi_argumento="$1"

# Función para mostrar información del sistema
mostrar_informacion() {
    echo "Información del sistema:"
    uname -a
    whoami
    cat /etc/os-release
    cat /proc/cpuinfo
    cat /proc/meminfo
    df -h
    du -h
    who
    date
    ps aux
}

# Función para mostrar el contenido del directorio actual
mostrar_contenido_directorio() {
    echo "Contenido del directorio actual:"
    ls -l
}

# Estructura de condición para elegir entre las dos funciones
if [ "$mi_argumento" = "informacion" ]; then
    # Bucle while dentro del if
    while true; do
        mostrar_informacion
        sleep 1
    done
elif [ "$mi_argumento" = "contenido" ]; then
    mostrar_contenido_directorio
else
    echo "Uso: ./mi_script.sh [informacion|contenido]"
fi
