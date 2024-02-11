@ECHO ON
IF "%1"=="start" (
    ECHO start MyWebApp
    start "MyWebApp" mvnw spring-boot:run
) ELSE IF "%1"=="stop" (
    ECHO stop MyWebApp
    #TASKKILL /FI "WINDOWTITLE eq MyWebApp"
    TASKKILL /FI "WINDOWTITLE eq mvnw"
) ELSE (
    ECHO please, use "run.bat start" or "run.bat stop"
)
#pause