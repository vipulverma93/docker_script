#!/bin/bash
docker stats --no-stream | awk '{ print $n }' | sed '1d'|sort | tail -1

where n 

n=1 CONTAINER ID
n=2 CPU%
n=3 MEM USAGE
n=6 MEM LIMIT
n=8 MEM%
n=9 NET INBOUND
n=12 NET OUTBOUND
n=14 Block I
n=17 Block O
n=19 PID


 --no-stream :          Disable streaming stats and only pull the first result
 awk '{ print $n }' :   will print variable from docker stats
 sed '1d' :             will delete first entry that is %
 sort :                 it will sort the result
 tail -1 :              it will give last entry that is highest. 
