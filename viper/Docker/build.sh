#!/data/data/com.termux/files/usr/bin/bash
cd /data/data/com.termux/files/home/viper/
mv ./Docker/CONFIG_docker.py CONFIG.py
chmod 755 viper.py
chmod 755 ./Tools/dns_server
find . -type f -exec dos2unix {} \;

# clean viper
rm -rf /data/data/com.termux/files/home/viper/*.lock
rm -rf /data/data/com.termux/files/home/viper/*.pid
rm -rf /data/data/com.termux/files/home/viper/*.sock
chmod 777 -R /data/data/com.termux/files/home/viper/Docker/db/

# format msf file
cd /data/data/com.termux/files/home/metasploit-framework
find . -name *.py -exec dos2unix {} \;
find . -name *.py -exec chmod 755 {} \;

# clean install cache
rm -rf /data/data/com.termux/files/home/.cache/*
rm -rf /data/data/com.termux/files/home/.bundle/cache
rm -rf /data/data/com.termux/files/home/.gem/specs
rm -rf /data/data/com.termux/files/usr/lib/ruby/gems/3.1.0/doc/*
rm -rf /data/data/com.termux/files/usr/lib/ruby/gems/3.1.0/cache/*

# mkdir
mkdir -p /data/data/com.termux/files/home/viper/Docker/module
mkdir -p /data/data/com.termux/files/home/viper/Docker/log
mkdir -p /data/data/com.termux/files/home/viper/Docker/db
mkdir -p /data/data/com.termux/files/home/viper/Docker/nginxconfig
mkdir -p /data/data/com.termux/files/home/viper/STATICFILES/TMP

# history
history -c
echo > /data/data/com.termux/files/home/.bash_history
