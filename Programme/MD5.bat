@echo off
echo Activation du chiffrement SHA-256 et désactivation de MD5...

REM Activer SHA-256 pour le Client
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Hashes\SHA256" /v Enabled /t REG_DWORD /d 1 /f

REM Activer SHA-256 pour le Serveur
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Hashes\SHA256" /v Enabled /t REG_DWORD /d 1 /f

#Désactiver MD5
REM Désactiver MD5 pour le Client
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Hashes\MD5" /v Enabled /t REG_DWORD /d 0 /f

REM Désactiver MD5 pour le Serveur
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Hashes\MD5" /v Enabled /t REG_DWORD /d 0 /f

echo Redémarrage du service pour appliquer les changements...
net stop "Cryptographic Services"
net start "Cryptographic Services"

echo Configuration appliquee avec succes. Veuillez redemarrer le systeme pour finaliser les modifications.

