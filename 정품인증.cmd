@echo off
chcp 65001
@echo 한국어로 터미널 언어를 변경합니다!
@echo 1.윈도우 10 홈 정품인증
@echo.
@echo 2.윈도우 10 프로 정품인증
@echo.
@echo 3.기타 정품키로 정품인증
:INPUT
set /p opt=3개중 골라주세요:

if %opt% ==1 (
echo 윈도우 홈 정품인증을 시작합니다.

slmgr //b /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
) else if %opt% == 2 (
echo 윈도우 프로 정품인증을 시작합니다.
slmgr //b /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
) else if %opt% == 3 (
echo 정품키를 입력해주세요
:INPUT
set /p num == 입력:
slmgr /ipk %num%
)
slmgr //b /skms kms.0won.org
slmgr /ato
@echo 완료되었습니다! 부팅시마다 자동으로 인증되게 하시겠습니까?(Y/N)
:INPUT
set /p ins=대문자 Y/N:
if %ins% == Y (
echo Set WshShell = WScript.CreateObject("WScript.Shell") >> start.vbs

echo return = WshShell.Run ("cmd /c slmgr //b /ato" ,0 ,true) >> start.vbs
move start.vbs "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
) else if (
pause
)
