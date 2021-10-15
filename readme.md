# Make a file executable
chmod +x filename.run.
# wait for one command to finish 

command1 && command2
command2 is executed if, and only if, command1 returns an exit status of zero.

## TIMING
echo "Wait 3 s"
nohup sleep 3 &
echo "Done"
echo "Wait 10 s"
nohup sleep 10 &

echo "This will wait until both are done"
date
wait
date
echo "Done"
## when a file is made execuable 
The sudo works without asking for pasword