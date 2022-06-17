#!/bin/bash

cd infra

mkcert -install
mkcert -cert-file=certs/tls.crt -key-file=certs/tls.key example.com "*.example.com"
