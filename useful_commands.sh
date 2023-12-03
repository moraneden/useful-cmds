# https://bobcares.com/blog/docker-high-cpu-usage/

docker stats --all --format "table {{.ID}}\t{{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}"

sudo du -h --max-depth=1 / | sort -h
sudo truncate -s 0 /var/log/*log
sudo journalctl --vacuum-time=3d
sudo apt-get remove --purge $(dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d')
sudo rm -rf /usr/share/man/?? 
sudo rm -rf /usr/share/man/??_*
sudo apt-get autoremove && sudo apt-get autoclean

#clean all docker logs 
sudo ls -lh $(docker inspect -f '{{.LogPath}}' $(docker ps -a -q))
sudo truncate -s 0 $(docker inspect -f '{{.LogPath}}' $(docker ps -a -q))

sudo sh -c 'truncate -s 0 /var/lib/docker/containers/*/*-json.log'


	#THIS SECTION FORWARDS THE HTTP TO HTTPS

	server {
		listen 80 default_server;
		server_name _;
		return 301 https://$host$request_uri;
	}
	
docker system prune -f -a --volumes
Docker image prune -a -f



-- new LInux server

echo vm.max_map_count=262144 | sudo tee -a /etc/sysctl.conf
sudo sysctl -w vm.max_map_count=262144

grep vm.max_map_count /etc/sysctl.conf

sudo sysctl -w fs.file-max="9999999"
sudo sysctl -w fs.nr_open="9999999"

cat > /etc/security/limits.d/95-nofile.conf <<EOF
kostyrev soft nofile 102400
kostyrev hard nofile 102400
EOF

https://gist.github.com/luckydev/b2a6ebe793aeacf50ff15331fb3b519d

sudo timedatectl set-timezone Asia/Jerusalem
sudo timedatectl set-timezone EST

sudo date -s "$(wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8)Z"



# for proxy 
git config --global http.proxy http://<my_proxy>:<my_port>
git config --global https.proxy https://<my_proxy>:<my_port>

# Replace CRLF with LF
powershell.exe -noninteractive -NoProfile -ExecutionPolicy Bypass -Command "& {[IO.File]::WriteAllText('run.sh', ([IO.File]::ReadAllText('run.sh') -replace \"`r`n\", \"`n\"))};"

sudo git reset --hard origin/master
sudo git pull --all

docker-compose up

sudo apt-get install cifs-utils -y
sudo apt install nfs-common -y 
sudo apt install cifs-utils -y 

#sudo mount -t cifs //srvcompile4/versions /mnt -o username=jenkins,password=1q2w3e4r5t6y7u8i9o0p

#ubuntu Fe ports open

sudo ufw allow http
sudo ufw allow https



CustomLog "| C:/Apache24/bin/rotatelogs.exe ${SRVROOT}/logs/LabOS.ssl_request.log 10M" \
          "[%{%d/%b/%Y %T}t.%{msec_frac}t:%{%z}t] %h %{SSL_PROTOCOL}x %{SSL_CIPHER}x \"%r\" %b \"%{BALANCER_WORKER_NAME}e\" %{ms}T"
		  
CustomLog "| C:/Apache24/bin/rotatelogs.exe ${SRVROOT}/logs/LabOS.ssl_request.log 10M" \
          "[%{%d/%b/%Y %T}t.%{msec_frac}t:%{%z}t] %h %{SSL_PROTOCOL}x %{SSL_CIPHER}x \"%r\" %b %{ms}T"
		  

choco uninstall docker-desktop --pre 

Install-WindowsFeature containers
# Install Docker on Win Server 
https://forums.docker.com/t/linux-container-on-windows-server-2016/26715

Install-Module -Name DockerMsftProvider -Force
Install-Package -Name docker -ProviderName DockerMsftProvider -Force
Restart-Computer -Force

[Environment]::SetEnvironmentVariable("LCOW_SUPPORTED", "1", "Machine")
Restart-Service docker

# Linux Docker 
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -k -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt-cache policy docker-ce
sudo apt install docker-ce -y
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# sudo wget "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose
sudo usermod -aG docker ${USER}

sudo systemctl status docker


net user /add devuser j,ukhrue1212
net localgroup administrators devuser /add
WMIC USERACCOUNT WHERE Name='devuser' SET PasswordExpires=FALSE

tzutil /s "Israel Standard Time"
NetSh Advfirewall set allprofiles state off

net user /add impuser j,ukhrue1212
net localgroup administrators impuser /add
WMIC USERACCOUNT WHERE Name='impuser' SET PasswordExpires=FALSE

net user /add ansible Softov14
net localgroup administrators ansible /add



net user /add setupuser j,ukhrue1212
net localgroup administrators setupuser /add
tzutil /s "Pacific Standard Time"

tzutil /s "Eastern Standard Time"


powershell Rename-Computer -NewName qdbe01

Set-MpPreference -DisableRealtimeMonitoring $true


powershell c:\temp\enableRPM.ps1

FOR /D %p IN ("C:\tools\consul\data\*.*") DO rmdir "%p" /s /q

# Group by processes 
powershell "get-process | Group-Object -Property ProcessName | Sort-Object Count -Descending"

Set-ItemProperty 'HKLM:\System\CurrentControlSet\Control\FileSystem' -Name 'LongPathsEnabled' -value 1


pkgmgr /iu:"TelnetClient"
dism /online /Enable-Feature /FeatureName:TelnetClient

curl http://10.0.50.223:9999/LaaSServer/status?[1-5000]
curl -s -o /dev/null -w "%{http_code} - %{time_total}\n" https://labos.wolfson.health.gov.il//api/lab/status?[1-500]


Get-EventLog -LogName System -Message *consul* -after ([datetime]::Today).AddDays(-7) | select -ExpandProperty message


SC failure Consul reset= 0 actions= restart/60000/restart/60000/restart/60000
SC failure Nomad reset= 0 actions= restart/60000/restart/60000/restart/60000

chrome --args --user-data-dir=c:\tmp\temporary-chrome-profile-dir --disable-web-security --disable-site-isolation-trials


powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath "c:\Programdata\docker"


https://linuxize.com/post/how-to-mount-an-nfs-share-in-linux/
sudo mount sbnetapp55:/Labs_Log /mnt/Labs_Log

nc -zw3 192.168.200.6 5986 && echo "opened" || echo "closed"
