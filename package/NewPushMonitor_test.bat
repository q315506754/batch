set "batPath=%cd%"
set "projectPath=C:\\NewPushProject"
set "targetName=NewPushMonitor.war"
set "targetPath=%projectPath%\\NewPushMonitor\\target\\%targetName%"
set "pack_env=test"
set "sampeFileName=redis.properties"
set "sampeFile=%projectPath%\\NewPushMonitor\\target\\classes\\props\\%sampeFileName%"
cd %projectPath%
echo target file is :%targetPath%
del %batPath%\%targetName%
del %batPath%\%sampeFileName%

call mvn clean package -P%pack_env%
echo maven over...

copy %targetPath% %batPath%\%targetName% /Y

if defined sampeFile copy %sampeFile% %batPath% /Y

cd %batPath%




