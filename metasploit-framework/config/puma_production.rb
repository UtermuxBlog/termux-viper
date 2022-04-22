application_path = "/data/data/com.termux/files/home/metasploit-framework"
LOGDIR = "/data/data/com.termux/files/home/viper/Docker/log"
msgrpc_port = 60005
directory application_path
environment 'production'
pidfile "#{application_path}/puma.pid"
stdout_redirect "#{LOGDIR}/puma.log","#{LOGDIR}/puma.log"
rackup '/data/data/com.termux/files/home/metasploit-framework/msf-json-rpc.ru'
quiet
threads 0, 64
bind "tcp://127.0.0.1:#{msgrpc_port}"
preload_app!
