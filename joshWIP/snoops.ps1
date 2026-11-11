$password = "ballsjawn1!" -AsSecureString

New-LocalUser -Name "Snoops" -Password $password | Set-LocalUser -PasswordNeverExpires $true
Add-LocalGroupMember -Group "Domain Admins" -Member "Snoops"
net user "Snoops" /logonpasswordchg:yes
