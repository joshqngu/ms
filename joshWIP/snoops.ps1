New-LocalUser -Name "Snoops" -Password "snoops1!" | Set-LocalUser -PasswordNeverExpires $true
Add-LocalGroupMember -Group "Domain Admins" -Member "Snoops"
net user "Snoops" /logonpasswordchg:yes
