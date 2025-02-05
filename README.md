# nGrinder
Install nGrinder manually

### nGrinder controller, agent 실행
##### github clone
```
git clone https://github.com/anti1346/ngrinder.git
```
##### docker-compose.yml 파일의 모든 서비스 실행
```
docker compose up -d
```

### nGrinder controller, agent x 2 실행
##### docker-compose.yml 파일의 모든 서비스 실행
```
docker compose -f docker-compose-c1a2.yml up -d
```

#### ngrinder 웹 페이지 접속
```
http://serverip:8888
ID/PW : admin / admin
```
