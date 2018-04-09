# docker-octo

A docker container that contains octo.exe

Based off of microsoft/powershell

## Building

```bash
docker-machine start
eval $(docker-machine env)
docker build -t <yourname>/octo .
```

Upload to docker hub
```bash
docker login
docker push <yourname>/octo
docker tag <yourname>/octo:latest <yourname>/octo:$(date +%Y%m%d)
dccker push <yourname>/octo:$(date +%Y%m%d)
```
