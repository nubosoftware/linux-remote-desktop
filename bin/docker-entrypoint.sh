#!/bin/bash

# entry point for nubo docker add all needed commands here


cp -TR /opt/nubo-bootstrap/ /opt/nubo/
cd /opt/nubo-conf
exec "$@"
