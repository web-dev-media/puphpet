
	CPUTIME=$(ps -eo pcpu | awk ‘NR>1’ | awk ‘{tot=tot+$1} END {print tot}’)
	CPUCORES=$(cat /proc/cpuinfo | grep -c processor)
	UP=$(echo `uptime` | awk ‘{ print $3 ” ” $4 }’)
	
	echo ”
	
                                            ______              _____ 
___      _________   ____________  ____________  /________________  /_
__ | /| / ___  __ \  ___  __ _  / / ___  __ __  __ ___  __ _  _ _  __/
__ |/ |/ /__  /_/ /  __  /_/ / /_/ /__  /_/ _  / / __  /_/ /  __/ /_  
____/|__/ _  .___/   _  .___/\__,_/ _  .___//_/ /_/_  .___/\___/\__/  
          /_/        /_/            /_/            /_/   
	
	System Status
	Updated: `date`
	
	– Server Name               = `hostname`
	– Public IP                 = `dig +short myip.opendns.com @resolver1.opendns.com`
	– OS Version                = `cat /etc/redhat-release`
	– Load Averages             = `cat /proc/loadavg`
	– System Uptime             = `echo $UP`
	– Platform Data             = `uname -orpi`
	– CPU Usage (average)       = `echo $CPUTIME / $CPUCORES | bc`%
	– Memory free (real)        = `free -m | head -n 2 | tail -n 1 | awk {‘print $4’}` Mb
	– Memory free (cache)       = `free -m | head -n 3 | tail -n 1 | awk {‘print $3’}` Mb
	– Swap in use               = `free -m | tail -n 1 | awk {‘print $3’}` Mb
	– Disk Space Used           = `df / | awk ‘{ a = $4 } END { print a }’`
	" > /etc/motd