cd ../../
xcopy /Y build\cgame_mp_x86.dll etrun\
xcopy /Y build\ui_mp_x86.dll etrun\
del /Q etrun.pk3
cd etrun
..\test\win32\zip.exe -r ..\etrun.pk3 *
del /Q *.dll
cd ..\
xcopy /Y etrun.pk3 C:\GameDev\ETtest\etrun\
xcopy /Y etrun.pk3 "C:\Program Files (x86)\ET\etrun\"
del /Q etrun.pk3
xcopy /Y build\qagame_mp_x86.dll C:\GameDev\ETtest\etrun\
xcopy /Y build\timeruns.mod C:\GameDev\ETtest\etrun\

xcopy /Y etrun\custommapscripts\* "C:\GameDev\ETtest\etrun\custommapscripts\"
xcopy /Y libs\geoip\GeoIP.dat "C:\GameDev\ETtest\etrun\"

echo Press ENTER to start game...
pause
cd ..\
C:\GameDev\ETtest\ET.exe +set fs_basepath "C:\GameDev\ETtest\" +set fs_game etrun +set dedicated 0 +set com_hunkMegs 128
