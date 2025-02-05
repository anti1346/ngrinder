# docker ngrinder
## docker controller 실행
#### docker-ngrinder 다운로드(git clone)
```
cd docker/controller
```

```
docker compose up -d ngrinder-controller
```

```
docker-compose up -d
```
#### ngrinder 웹 페이지 접속
```
http://serverip:8888
ID/PW : admin / admin
```
## docker agent 실행
```
bash ngrinder-agent-start.sh
```

```
docker compose up -d
```

```
cd docker/agent
```
```
bash ngrinder-agent-start.sh
```
```
docker-compose up -d
```

#### Docker Hub(ngrinder)
```
ngrinder : https://hub.docker.com/u/ngrinder
controller : https://hub.docker.com/r/ngrinder/controller
agent : https://hub.docker.com/r/ngrinder/agent
```
