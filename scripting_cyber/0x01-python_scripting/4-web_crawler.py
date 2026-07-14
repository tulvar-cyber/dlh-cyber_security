#!/usr/bin/env python3

import requests  ## library that allos de crawl
from bs4 import BeautifulSoup  ## allows parse HTML
from urllib.parse import urljoin, urlparse ## urljoin relative links - absolutes / urlparse - extract domain of url

## Define function
def crawl_website(start_url, max_depth=2): ## variables send by main
    visited = set() ## Empty set for urls
    domain = urlparse(start_url).netloc  ## Extract domain
    if not domain:
        return visited

    _crawl(start_url, domain, max_depth, 0, visited)
    return visited

def _crawl(url, domain, max_depth, current_depth, visited):
    ## Performs the recursive crawling
    if url in visited or current_depth > max_depth:
        return
 
    if urlparse(url).netloc != domain:
        return
 
    try:
        response = requests.get(url, timeout=10)
        response.raise_for_status()
    except requests.exceptions.ConnectionError:
        print(f"Connection error: could not reach {url}")
        return
    except requests.exceptions.Timeout:
        print(f"Timeout while requesting {url}")
        return
    except requests.exceptions.InvalidURL:
        print(f"Invalid URL: {url}")
        return
    except requests.exceptions.RequestException as e:
        print(f"Error fetching {url}: {e}")
        return
 
    visited.add(url)
    ## print(f"Crawling: {url}")
 
    if current_depth == max_depth:
        return
 
    try:
        soup = BeautifulSoup(response.text, "html.parser")
    except Exception as e:
        print(f"Error parsing HTML for {url}: {e}")
        return
 
    for tag in soup.find_all("a", href=True):
        href = tag["href"]
 
        try:
            absolute_url = urljoin(url, href)
        except ValueError:
            continue
 
        parsed = urlparse(absolute_url)
 
        if parsed.scheme not in ("http", "https"):
            continue
 
        if parsed.netloc != domain:
            continue
 
        normalized_url = parsed._replace(fragment="").geturl()
 
        if normalized_url in visited:
            continue

        _crawl(normalized_url, domain, max_depth, current_depth + 1, visited) 
