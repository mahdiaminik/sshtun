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

## Proxy for docker pull

### Make docker proxy conf file
```bash
sudo mkdir -p /etc/systemd/system/docker.service.d
sudo nano /etc/systemd/system/docker.service.d/http-proxy.conf
```

### Add localhost proxy to docker conf file
Add these lines to http-proxy.conf file
```bash
[Service]
Environment="HTTP_PROXY=socks5://127.0.0.1:1080/"
```
And reload daemon
```bash
sudo systemctl daemon-reload
sudo systemctl restart docker
```

### Check it
```bash
sudo docker pull hello-world
```
