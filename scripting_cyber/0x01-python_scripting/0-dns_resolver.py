#!/usr/bin/env python3

import socket

def resolve_domain_to_ipv4(domain_name):

    try:
        # Resolver un dominio a su dirección IPv4
        ip = socket.gethostbyname(domain_name)
        return ip
    except socket.gaierror:
        return None
    except Exception as er:
        return f"Error: {er}" 
