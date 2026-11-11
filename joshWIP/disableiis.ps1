# Disable and stop IIS
$iisService = Get-Service -Name 'W3SVC' -ErrorAction SilentlyContinue
if ($null -ne $iisService) {
	Set-Service -Name 'W3SVC' -StartupType Disabled
	if ($iisService.Status -ne 'Stopped') {
		Stop-Service -Name 'W3SVC' -Force
	}
	Write-Host 'IIS naur'
}
else {
	Write-Host 'whadaheck, no IIS service found'
}

# Disable and stop the HTTP service
$httpService = Get-Service -Name 'HTTP' -ErrorAction SilentlyContinue
if ($null -ne $httpService) {
	Set-Service -Name 'HTTP' -StartupType Disabled
	if ($httpService.Status -ne 'Stopped') {
		Stop-Service -Name 'HTTP' -Force
	}
	Write-Host 'HTTP service disabled and stopped'
}
else {
	Write-Host 'HTTP service not found'
}