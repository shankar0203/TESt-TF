$Input = New-Object -ComObject wscript.shell
while (1) {
$Input.sendkeys('+{F15}')
Start-Sleep -Seconds 59
}