# help-us
"How you can help us?" page

# Localhost

Clone the config.py

make sure the host is 0.0.0.0 and not 127.0.0.1

Override docker in local host to expose port

Create a `docker-compose.override.yml` file with the content:

```
version: '2.2'
services:
  web:
    ports:
      - "9000:9000"
```
