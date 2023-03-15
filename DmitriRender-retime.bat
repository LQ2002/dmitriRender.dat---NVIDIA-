@echo off
chcp 936

echo 重新试用原理：
echo 1、删除注册表HKEY_CURRENT_USER\SOFTWARE\DmitriRender
echo 2、删除%UserProfile%\Documents\desktop.ini文件夹中IconIndex=-235下面部分
echo 3、自动启动程序重新试用
echo 按任意键继续！不需要可以直接关闭。

pause
reg delete HKEY_CURRENT_USER\SOFTWARE\DmitriRender /f
echo 已执行步骤1（删除注册表）。

echo 正在执行步骤2，手动删除【IconIndex=-235】下面（不包含IconIndex=-235）的所有内容并保存，关闭记事本后将继续下一步。

start /w notepad "%UserProfile%\Documents\desktop.ini"

echo 正在执行步骤3，选择【启用】点下一步，点测试。
start /w /d "%AppData%\DmitriRender\x64\" pcnsl.exe

echo 如果以上操作顺利，已经重新试用成功，按任意键退出。
pause
