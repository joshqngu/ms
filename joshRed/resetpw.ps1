

param(
	[string]$Password
)

if ([string]::IsNullOrWhiteSpace($Password)) {
	throw "Supply a password with -Password."
}

$securePassword = ConvertTo-SecureString $Password -AsPlainText -Force
Set-LocalUser -Name "charliebrown" -Password $securePassword
Set-LocalUser -Name "lucyvanpelt" -Password $securePassword
Set-LocalUser -Name "linusvanpelt" -Password $securePassword
Set-LocalUser -Name "snoopy" -Password $securePassword
Set-LocalUser -Name "woodstock" -Password $securePassword
Set-LocalUser -Name "peppermintpatty" -Password $securePassword
Set-LocalUser -Name "marcie" -Password $securePassword
Set-LocalUser -Name "schroeder" -Password $securePassword
Set-LocalUser -Name "pigpen" -Password $securePassword
Set-LocalUser -Name "sallybrown" -Password $securePassword
Set-LocalUser -Name "charlie" -Password $securePassword
Set-LocalUser -Name "lucy" -Password $securePassword
Set-LocalUser -Name "linus" -Password $securePassword
Set-LocalUser -Name "snoopydog" -Password $securePassword
Set-LocalUser -Name "woodstockbird" -Password $securePassword
Set-LocalUser -Name "peppermint" -Password $securePassword
Set-LocalUser -Name "marciebrown" -Password $securePassword
Set-LocalUser -Name "schroederpiano" -Password $securePassword
Set-LocalUser -Name "pigpenmud" -Password $securePassword
Set-LocalUser -Name "sally" -Password $securePassword

