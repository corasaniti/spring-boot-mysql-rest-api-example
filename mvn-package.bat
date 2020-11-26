@echo off  
FOR /F "tokens=1,2 delims==" %%G IN (build.properties) DO (set %%G=%%H) 

set PATH=%PATH%;%M2_HOME%\bin
set PATH=%PATH%;%JAVA_HOME%\bin


mvn package -Dmaven.test.skip=true