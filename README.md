# TLS Reverse Proxy

## Build

```bash
docker build -t tlsrevproxy .
```

## Run

```bash
docker run -v ~/ssl/certs:/etc/nginx/certs tlsrevproxy
```

