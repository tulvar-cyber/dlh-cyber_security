#!/bin/bash
# XOR Decoder for WebSphere Hashes
# Usage: ./1-xor_decoder.sh "{xor}KzosKw=="
# Output: test

# El argumento $1 es el hash completo con el prefijo {xor}
# Se pasa a Python para su procesamiento
python3 -c "
from base64 import b64decode

# Recibir el hash como argumento
hash_input = '$1'

# Eliminar el prefijo '{xor}' del hash
hash_clean = hash_input.replace('{xor}', '')

# Decodificar de Base64 a bytes
decoded_bytes = b64decode(hash_clean)

# Aplicar XOR con 0x5f ('_') a cada byte
# La clave '_' es 95 en decimal o 0x5f en hexadecimal
xor_bytes = bytes(byte ^ 0x5f for byte in decoded_bytes)

# Convertir los bytes a texto UTF-8
result = xor_bytes.decode('utf-8')

# Imprimir el resultado
print(result)
"
