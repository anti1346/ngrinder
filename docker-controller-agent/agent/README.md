# ngrinder agent

##### ngrinder-agent download
```
bash ngrinder-agent-start.sh
```
##### ngrinder agent 실행
```
docker compose up -d
```

<details>
<summary>접기/펼치기</summary>

###### ngrinder agent 파일 복사
```
wget http://{ngrinder-controller-ip}:8888/agent/download -O ngrinder-agent.tar
tar xvf ngrinder-agent.tar
```
##### controller server ip change
```
vim docker-ngrinder-agent/ngrinder-agent/.ngrinder-agent/agent.conf
common.start_mode=agent
agent.controller_host=172.31.42.90
agent.controller_port=16001
agent.region=NONE
```
</details>