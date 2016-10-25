set "batPath=%cd%"
set "projectPath=C:\\coolyProject\\DatabaseRunner"
set "targetName=DatabaseRunner.jar"
set "targetPath=%projectPath%\\target\\%targetName%"
set "pack_env=pro"
set "sampeFileName=mq.properties"
set "sampeFile=%projectPath%\\target\\classes\\props\\%sampeFileName%"
cd %projectPath%
echo target file is :%targetPath%
del %batPath%\%targetName%
del %batPath%\%sampeFileName%

call mvn clean package -P%pack_env%
echo maven over...

copy %targetPath% %batPath%\%targetName% /Y

if defined sampeFile copy %sampeFile% %batPath% /Y




