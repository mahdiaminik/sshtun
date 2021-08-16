# SSH TUNNEL SOCKS5 PROXY

For those who have a remote ssh access and want to have a socks5 proxy 

## Dependencies

1- docker
2- docker-compose
3- git

You can install latest version from https://docs.docker.com/get-docker/ or simply run :

```bash
sudo apt-get update
sudo apt-get install git docker.io docker-compose -y
```

## Usage

### Pull it first
```bash
git clone https://github.com/mahdiaminik/sshtun.git
cd sshtun
```

### ***(Just for Iran)***
```bash
sudo docker load < ./alpine3_x64_dockerimage
```

### Change .env file 
```bash
mv .env.sample .env
nano .env #and put your access ip,user,pass
```

### RRRRRRRRRRRRRRRRun
```bash
sudo docker-compose up -d
```
