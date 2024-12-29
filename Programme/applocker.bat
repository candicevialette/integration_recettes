# Démarrer le service Application Identity
Start-Service -Name AppIDSvc

# Configurer le démarrage automatique
Set-Service -Name AppIDSvc -StartupType Automatic
