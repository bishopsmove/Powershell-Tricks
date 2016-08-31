Restart-NetAdapter -Name "Wireless Network Connection 2"

Restart-NetAdapter -Name "Local Area Connection"

Enable-NetAdapter -Name "Local Area Connection"

Get-NetAdapter -Name "Local Area Connection"

Get-NetAdapter -Name "Wireless Network Connection 2"


Get-NetAdapter | ? { ($_.Name -notcontains "Local") -or ($_.Name -notcontains "Wireless")} | %{ Disable-NetAdapter -Name $_.Name }
 