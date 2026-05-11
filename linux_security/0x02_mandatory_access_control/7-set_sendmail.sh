#!/bin/bash
semanage boolean -m --on httpd_can_sendmail 2>/dev/null
