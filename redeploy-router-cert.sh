#!/bin/bash
# See https://blog.openshift.com/lets-encrypt-acme-v2-api/
cat ~/.acme.sh/x00.sh/x00.sh.cer ~/.acme.sh/x00.sh/x00.sh.key ~/.acme.sh/x00.sh/ca.cer > /tmp/x00.sh.router.pem
oc secrets new router-certs tls.crt=/tmp/x00.sh.router.pem tls.key=~/.acme.sh/x00.sh/x00.sh.key -o json --type='kubernetes.io/tls' --confirm | oc replace -f -
