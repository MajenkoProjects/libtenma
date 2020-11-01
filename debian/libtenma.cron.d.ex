#
# Regular cron jobs for the libtenma package
#
0 4	* * *	root	[ -x /usr/bin/libtenma_maintenance ] && /usr/bin/libtenma_maintenance
