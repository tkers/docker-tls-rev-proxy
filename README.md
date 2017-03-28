# TLS Reverse Proxy

## Build

```bash
./build.sh
```

## Run

```bash
docker run --volume ~/ssl/certs:/etc/nginx/certs --link myapp:backend tlsrevproxy
```

The mounted volume (`~/ssl/certs`) should contain both a `selfsigned.crt` and `selfsigned.key` file.
This proxies all HTTPS requests to your `myapp` container (as HTTP requests). Port `80` should be exposed on `myapp`.
