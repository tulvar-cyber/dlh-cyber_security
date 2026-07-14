#!/usr/bin/env python3

import requests

## Define function
def get_http_headers(url):
    
    try:
        ## Extract url
        result=requests.get(url,timeout=10)
        return { 
            'status_code': result.status_code,
            'headers': dict(result.headers)
        }
    except requests.exceptions.RequestException: 
        return None
