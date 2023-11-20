# dysta/playitgg
Docker image to simply run the latest version of playit.gg tunnel service

## docker cli
```docker
docker run --name playitgg --restart unless-stopped -v ./secrets:/secrets dysta/playitgg
```

## docker compose
```yaml
version: "3"

services:
    playitgg:
        container_name: playitgg
        image: dysta/playitgg
        restart: unless-stopped
        volumes:
            - ./secrets:/secrets
```

### don't forget to check the logs to go to the claim url !!
