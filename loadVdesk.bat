start /i /w vdesk create:3
ping -n 2 127.0.0.1 > nul
start /i /w vdesk on:1 run:slack
ping -n 2 127.0.0.1 > nul
start /i /w vdesk on:2 run:devenv2015
start /i /w vdesk noswitch:true on:3 run:sublime_text
exit