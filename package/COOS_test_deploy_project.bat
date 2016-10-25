set "batPath=%cd%"
set "projectPath=C:\\coolyProject\\\coos"
set "targetPath=%projectPath%\\target\\%targetName%"
set "pack_env=test"
set "sampeFileName=dubbo.properties"
set "sampeFile=%projectPath%\\target\\classes\\props\\%sampeFileName%"
copy %targetPath% %batPath%\%targetName% /Y

set "targetName=coos.war"
scp %targetName% user@172.16.0.46:/home/user/apache-tomcat-7.0.63/webapps/%targetName%