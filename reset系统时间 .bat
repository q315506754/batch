set now=%date%
Set /p key=< _rec_date.txt
Echo resetTo %key%
date %key%
::ping -n 600 127.1>nul
::date %now%
pause