set nowtime=%time:~,8%
set nowdate=%date:~0,10%
set nowdate=%nowdate:/=-%
set nowtime=%nowtime::=.%

set filename=%filename:~0,10%
set filename="%nowdate% %nowtime%.json"
echo %filename%
type NUL > %filename%