@echo off
chcp 936

echo ����ԭ��
echo 1��ɾ��ע�����HKEY_CURRENT_USER\Software\DmitriRender
echo 2��ɾ��%UserProfile%\Documents\desktop.ini�ļ��е�IconIndex=-235����Ĵ��벿��
echo 3����Ӧ��������������
echo �����������������Ҫ���Թرա�

pause
reg delete HKEY_CURRENT_USER\Software\DmitriRender /f
echo ��ִ�в���1��ɾ��ע���

echo ����ִ�в���2����Ҫ�ֶ�ɾ����IconIndex=-235������Ĵ��루������IconIndex=-235�����������ݲ����棬�رռ��±��������һ��

start /w notepad "%UserProfile%\Documents\desktop.ini"

echo ����ִ�в���3����ת-��Ȩ����-��ѡ[�����ת�Ƽ����Ʒ]-����һ��������ԡ�
start /w /d "%AppData%\DmitriRender\x64\" pcnsl.exe

echo ������ϲ���˳�����Ѿ��������óɹ�����������˳���
