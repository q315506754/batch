set "batPath=%cd%"
set "projectPath=C:\\CompanyIdea2\\CallCenter"
set "targetName=CallCenter.war"
set "targetPath=%projectPath%\\target\\%targetName%"
set "pack_env=test"
set "sampeFileName=dubbo.properties"
set "sampeFile=%projectPath%\\target\\classes\\props\\%sampeFileName%"
cd %projectPath%
echo target file is :%targetPath%
del %batPath%\%targetName%
del %batPath%\%sampeFileName%

call mvn clean package -P%pack_env%
echo maven over...

copy %targetPath% %batPath%\%targetName% /Y

if defined sampeFile copy %sampeFile% %batPath% /Y


cd %batPath%




