set "batPath=%cd%"
set "projectPath=C:\\company_workspaces\\hotelcool_newinterface"
set "targetName=hotelcool_newinterface.war"
set "targetPath=%projectPath%\\target\\%targetName%"
set "pack_env=pro"
set "sampeFileName=application.properties"
set "sampeFile=%projectPath%\\target\\classes\\%sampeFileName%"
cd %projectPath%
echo target file is :%targetPath%
del %batPath%\%targetName%
del %batPath%\%sampeFileName%

call mvn clean package -P%pack_env%
echo maven over...

copy %targetPath% %batPath%\%targetName% /Y

if defined sampeFile copy %sampeFile% %batPath% /Y




