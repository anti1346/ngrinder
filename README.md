# ngrinder
Install Ngrinder manually

### nGrinder 컨트롤러
```
git clone https://github.com/anti1346/ngrinder.git
```
```
cd ngrinder/ngrinder-controller
```
```
wget https://github.com/naver/ngrinder/releases/download/ngrinder-3.5.8-20221230/ngrinder-controller-3.5.8.war
```
```
chmod +x ngrinder-controller.sh
```
```
./ngrinder-controller.sh start
```
```
./ngrinder-controller.sh status
```
```
./ngrinder-controller.sh stop
```
### nGrinder 에이전트
```
git clone https://github.com/anti1346/ngrinder.git
```
```
chmod +x ngrinder-agent-install.sh
```
```
sed -i 's/NGRINDER-SERVER-IP/192.168.0.51/g' ngrinder-agent-install.sh
```
```
bash ngrinder-agent-install.sh
```
```
cd ngrinder-agent/
```
