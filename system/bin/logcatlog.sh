umask 022

LOGDIR=/data/local/log

LOGFILE=$LOGDIR"/logcatlog"

/system/bin/logcat -r 8096 -n 64 -v threadtime -f $LOGFILE
