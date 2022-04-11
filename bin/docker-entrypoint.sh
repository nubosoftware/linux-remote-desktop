#!/bin/bash

# entry point for nubo docker add all needed commands here

ARGS=()
ROOTPATH=/opt/nubo
while [[ $# -gt 0 ]]; do
  case $1 in
    -p|--path)
      ROOTPATH="$2"
      ARGS+=("$1")
      ARGS+=("$2")
      shift # past argument
      shift # past value
      ;;
    *)
      ARGS+=("$1") # save arg
      shift # past argument
      ;;
  esac
done

set -- "${ARGS[@]}" # restore parameters

rsync -a --progress --ignore-existing /opt/nubo-bootstrap/ $ROOTPATH/
chown -R 1000:1000 $ROOTPATH/log

cd /opt/nubo-conf
exec "$@"
