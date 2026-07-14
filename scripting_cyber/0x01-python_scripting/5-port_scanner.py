#!/usr/bin/env python3

import socket

def check_port(host, port):

    try:
        # Crear socket TCP - AF_INET:IPv4 - SOCK_STREAM: TCP
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

        # Establecer timeout
        sock.settimeout(2)

        # Intentar conectar
        result = sock.connect_ex((host, port))

        # Cerrar socket
        sock.close()

        # Si result == 0, la conexión fue exitosa
        return result == 0
    
    except socket.error:
        # Error en el socket (host no encontrado, etc.)
        return False
