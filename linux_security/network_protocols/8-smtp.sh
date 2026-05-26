#!/bin/bash
grep -E 'smtpd_tls_security_level\s*=\s*(may|encrypt)' /etc/postfix/main.cf 2>/dev/null || echo "STARTTLS not configured"
