#!/usr/bin/env python3

import requests
from bs4 import BeautifulSoup

## Defin function
def download_page(url):
    
    try:
        ## Extract url
        result=requests.get(url,timeout=10)
        ## Format with BS4
        soup =  BeautifulSoup(result.text, 'html.parser')
        ## Readable format
        return soup.prettify()
    except requests.exceptions.RequestException: 
        return "Error: Failed to download page"
    
           
