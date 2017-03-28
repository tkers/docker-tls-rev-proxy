#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Illegal number of parameters"
    echo "Usage: $0 [path/to/certs] [backend_container] [port]"
    exit 1
fi

docker run --rm --volume $1:/etc/nginx/certs --link $2:backend -p $3:443 tlsrevproxy
