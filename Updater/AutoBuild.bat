cd Updater
rmdir /s /q "ServerBuild"
mkdir ServerBuild
java -jar Builder.jar --output-dir ./ServerBuild
for /f "delims=" %%F in ('dir .\ServerBuild /b /o-n') do set file=%%F
echo I detected %file% as the build, changing name and moving...
rename .\ServerBuild\%file% Server.jar
echo Process completed successfully!