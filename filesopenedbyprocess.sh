#dtrace -n 'syscall::read*:entry /execname =="Fokus"/ {printf("%s %s", execname, copyinstr(arg0)); }'&

#DTRACE_PID=$!
open /Applications/Fokus.app
PID=$!
sleep 2;
while true
do 
	kill -INT $PID
#	pkill dtrace
	pkill Fokus
done
