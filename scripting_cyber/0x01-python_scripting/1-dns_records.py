#!/usr/bin/env python3

import dns.resolver

## Define function
def query_dns_records(domain_name):
    ## vector of parameters
    record_types = ['A', 'AAAA', 'MX', 'NS', 'TXT', 'SOA']
    ## Dictionary results {}
    results = {}


    for record_type in record_types: # start loop
        ## Try ... except to manage errors
        try:
            # Extract DNS register from a domain 
            answers = dns.resolver.resolve(domain_name, record_type)
            results[record_type] = answers
        except dns.resolver.NoAnswer:
            pass
        except dns.resolver.NXDOMAIN:
            return {} 
        except dns.rsolver.NoNamservers:
            return {} 

    return results # end loop
