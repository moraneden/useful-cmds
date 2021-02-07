sudo awk '{print $1}' /var/log/nginx/access.log | sort | uniq -c | sort -nr
sudo cat /var/log/nginx/access.log | grep 190.104.220.x