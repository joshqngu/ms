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