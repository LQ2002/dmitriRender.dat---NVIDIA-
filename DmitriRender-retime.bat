@echo off
chcp 936

echo 整理原理：
echo 1、删除注册表中HKEY_CURRENT_USER\Software\DmitriRender
echo 2、删除%UserProfile%\Documents\desktop.ini文件中的IconIndex=-235下面的代码部分
echo 3、打开应用重新启用试用
echo 按任意键继续！不需要可以关闭。

pause
reg delete HKEY_CURRENT_USER\Software\DmitriRender /f
echo 已执行步骤1（删除注册表）

echo 正在执行步骤2，需要手动删除【IconIndex=-235】下面的代码（不包含IconIndex=-235）的所有内容并保存，关闭记事本后继续下一步

start /w notepad "%UserProfile%\Documents\desktop.ini"

echo 正在执行步骤3，旋转-授权管理-勾选[激活或转移激活产品]-点下一步，点测试。
start /w /d "%AppData%\DmitriRender\x64\" pcnsl.exe

echo 如果以上操作顺利，已经重新试用成功，按任意键退出。
