# docker ngrinder
## controller 실행
##### controller 디렉토리로 이동
```
cd docker/controller
```
##### ngrinder-controller 서비스 시작
```
docker compose up -d ngrinder-controller
```
##### ngrinder 웹 페이지 접속
```
http://serverip:8888
ID/PW : admin / admin
```
##### 스크립트 실행(agent 파일 다운로드)
```
bash ngrinder-agent-start.sh
```
##### ngrinder-agentr 서비스 시작(docker-compose.yml 파일의 모든 서비스 실행)
```
docker compose up -d
```
## agent 실행
##### agent 디렉토리로 이동
```
cd docker/agent
```
##### 스크립트 실행(docker-compose.yml 파일 생성 및 agent 파일 다운로드)
```
bash ngrinder-agent-start.sh
```
##### ngrinder-agentr 서비스 시작(docker-compose.yml 파일의 모든 서비스 실행)
```
docker-compose up -d
```
#### Docker Hub(ngrinder)
```
ngrinder : https://hub.docker.com/u/ngrinder
controller : https://hub.docker.com/r/ngrinder/controller
agent : https://hub.docker.com/r/ngrinder/agent
```
