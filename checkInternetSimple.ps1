Write-Host "                                              " -ForegroundColor White -BackgroundColor Blue
Write-Host "  Anton's simple internet connection checker  " -ForegroundColor White -BackgroundColor Blue
Write-Host "                                              " -ForegroundColor White -BackgroundColor Blue
Write-Host ""
Write-Host " Started at" (get-date).ToString('T')
Write-Host ""

$attempt = 1
do {
  Write-Host "`r Pinging google.com... attempt " -NoNewLine -ForegroundColor Yellow
  Write-Host "[ " $attempt " ]" -NoNewLine -ForegroundColor Black -BackgroundColor Yellow
  $ping = test-connection -comp www.google.com -Quiet
  $attempt++
} until ($ping)

(new-object -ComObject wscript.shell).Popup("You have established a connection to the internet", 0, "Connection established")

